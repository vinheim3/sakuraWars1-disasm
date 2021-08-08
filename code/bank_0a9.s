; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a9", ROMX[$4000], BANK[$a9]

	ld   de, $5345                                   ; $4000: $11 $45 $53
	ld   b, a                                        ; $4003: $47
	xor  a                                           ; $4004: $af
	rst  $38                                         ; $4005: $ff
	or   $11                                         ; $4006: $f6 $11
	dec  d                                           ; $4008: $15
	xor  a                                           ; $4009: $af
	cp   $b5                                         ; $400a: $fe $b5
	ld   [hl-], a                                    ; $400c: $32
	ld   b, l                                        ; $400d: $45
	ld   h, l                                        ; $400e: $65
	inc  [hl]                                        ; $400f: $34
	ld   a, e                                        ; $4010: $7b
	rst  $38                                         ; $4011: $ff
	ei                                               ; $4012: $fb
	ld   h, e                                        ; $4013: $63
	inc  h                                           ; $4014: $24
	ld   a, e                                        ; $4015: $7b
	call Call_0a9_75d8                               ; $4016: $cd $d8 $75
	ld   b, [hl]                                     ; $4019: $46
	ld   h, a                                        ; $401a: $67
	ld   d, e                                        ; $401b: $53
	ld   b, l                                        ; $401c: $45
	sbc  l                                           ; $401d: $9d
	cp   $d6                                         ; $401e: $fe $d6
	inc  [hl]                                        ; $4020: $34
	ld   c, c                                        ; $4021: $49
	cp   e                                           ; $4022: $bb
	res  2, a                                        ; $4023: $cb $97
	ld   h, h                                        ; $4025: $64
	ld   d, [hl]                                     ; $4026: $56
	ld   d, a                                        ; $4027: $57
	ld   h, h                                        ; $4028: $64
	ld   h, [hl]                                     ; $4029: $66
	sbc  h                                           ; $402a: $9c
	call c, Call_0a9_45a6                            ; $402b: $dc $a6 $45
	ld   a, d                                        ; $402e: $7a
	call c, $77cb                                    ; $402f: $dc $cb $77
	ld   h, [hl]                                     ; $4032: $66
	ld   h, [hl]                                     ; $4033: $66
	ld   h, [hl]                                     ; $4034: $66
	halt                                             ; $4035: $76
	ld   l, b                                        ; $4036: $68
	ld   a, c                                        ; $4037: $79
	xor  c                                           ; $4038: $a9
	xor  b                                           ; $4039: $a8
	ld   a, b                                        ; $403a: $78
	adc  c                                           ; $403b: $89
	xor  e                                           ; $403c: $ab
	cp   e                                           ; $403d: $bb
	sbc  b                                           ; $403e: $98
	ld   h, l                                        ; $403f: $65
	ld   h, [hl]                                     ; $4040: $66
	ld   a, b                                        ; $4041: $78
	adc  c                                           ; $4042: $89
	ld   [hl], l                                     ; $4043: $75
	ld   d, [hl]                                     ; $4044: $56
	ld   a, c                                        ; $4045: $79
	cp   d                                           ; $4046: $ba
	xor  b                                           ; $4047: $a8
	sbc  c                                           ; $4048: $99
	xor  d                                           ; $4049: $aa
	xor  b                                           ; $404a: $a8
	ld   [hl], a                                     ; $404b: $77
	ld   a, b                                        ; $404c: $78
	adc  d                                           ; $404d: $8a
	sbc  c                                           ; $404e: $99
	sub  a                                           ; $404f: $97
	ld   h, [hl]                                     ; $4050: $66
	ld   d, l                                        ; $4051: $55
	ld   h, [hl]                                     ; $4052: $66
	ld   a, c                                        ; $4053: $79
	cp   e                                           ; $4054: $bb
	jp   z, $6697                                    ; $4055: $ca $97 $66

	ld   a, b                                        ; $4058: $78
	sbc  d                                           ; $4059: $9a
	sbc  d                                           ; $405a: $9a
	sbc  c                                           ; $405b: $99
	sub  [hl]                                        ; $405c: $96
	ld   h, [hl]                                     ; $405d: $66
	ld   d, [hl]                                     ; $405e: $56
	ld   [hl], a                                     ; $405f: $77
	adc  d                                           ; $4060: $8a
	sbc  d                                           ; $4061: $9a
	sbc  b                                           ; $4062: $98
	ld   [hl], a                                     ; $4063: $77
	ld   h, a                                        ; $4064: $67
	adc  c                                           ; $4065: $89
	adc  c                                           ; $4066: $89
	xor  d                                           ; $4067: $aa
	xor  d                                           ; $4068: $aa
	sub  a                                           ; $4069: $97
	ld   d, l                                        ; $406a: $55
	ld   d, [hl]                                     ; $406b: $56
	adc  c                                           ; $406c: $89
	xor  d                                           ; $406d: $aa
	sbc  b                                           ; $406e: $98
	halt                                             ; $406f: $76
	ld   h, [hl]                                     ; $4070: $66
	ld   a, b                                        ; $4071: $78
	adc  b                                           ; $4072: $88
	sbc  c                                           ; $4073: $99
	sbc  c                                           ; $4074: $99
	sbc  b                                           ; $4075: $98
	ld   [hl], a                                     ; $4076: $77
	ld   h, a                                        ; $4077: $67
	adc  b                                           ; $4078: $88
	xor  d                                           ; $4079: $aa
	xor  b                                           ; $407a: $a8
	ld   [hl], a                                     ; $407b: $77
	ld   [hl], a                                     ; $407c: $77
	add  a                                           ; $407d: $87
	ld   [hl], a                                     ; $407e: $77
	ld   [hl], a                                     ; $407f: $77
	adc  c                                           ; $4080: $89
	adc  c                                           ; $4081: $89
	add  a                                           ; $4082: $87
	ld   [hl], a                                     ; $4083: $77
	ld   a, c                                        ; $4084: $79
	xor  c                                           ; $4085: $a9
	sbc  c                                           ; $4086: $99
	adc  b                                           ; $4087: $88
	ld   [hl], a                                     ; $4088: $77
	sbc  c                                           ; $4089: $99
	adc  b                                           ; $408a: $88
	add  a                                           ; $408b: $87
	ld   [hl], a                                     ; $408c: $77
	ld   a, b                                        ; $408d: $78
	ld   [hl], a                                     ; $408e: $77
	add  a                                           ; $408f: $87
	adc  b                                           ; $4090: $88
	adc  c                                           ; $4091: $89
	adc  b                                           ; $4092: $88
	sbc  b                                           ; $4093: $98
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	sbc  c                                           ; $4097: $99
	sbc  b                                           ; $4098: $98
	ld   [hl], a                                     ; $4099: $77
	ld   h, [hl]                                     ; $409a: $66
	ld   a, b                                        ; $409b: $78
	sbc  b                                           ; $409c: $98
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  c                                           ; $409f: $89
	add  a                                           ; $40a0: $87
	ld   [hl], a                                     ; $40a1: $77
	ld   [hl], a                                     ; $40a2: $77
	sbc  c                                           ; $40a3: $99
	xor  d                                           ; $40a4: $aa
	sbc  b                                           ; $40a5: $98
	add  [hl]                                        ; $40a6: $86
	ld   h, [hl]                                     ; $40a7: $66
	ld   a, b                                        ; $40a8: $78
	sbc  c                                           ; $40a9: $99
	sbc  c                                           ; $40aa: $99
	add  a                                           ; $40ab: $87
	ld   [hl], a                                     ; $40ac: $77
	ld   a, b                                        ; $40ad: $78
	adc  c                                           ; $40ae: $89
	sbc  b                                           ; $40af: $98
	adc  b                                           ; $40b0: $88
	ld   a, b                                        ; $40b1: $78
	adc  c                                           ; $40b2: $89
	sbc  c                                           ; $40b3: $99
	add  a                                           ; $40b4: $87
	ld   [hl], a                                     ; $40b5: $77
	adc  c                                           ; $40b6: $89
	sbc  c                                           ; $40b7: $99
	sbc  b                                           ; $40b8: $98
	ld   [hl], a                                     ; $40b9: $77
	ld   a, b                                        ; $40ba: $78
	adc  c                                           ; $40bb: $89
	sbc  c                                           ; $40bc: $99
	add  a                                           ; $40bd: $87
	ld   [hl], a                                     ; $40be: $77
	ld   a, b                                        ; $40bf: $78
	sbc  c                                           ; $40c0: $99
	sbc  c                                           ; $40c1: $99
	adc  b                                           ; $40c2: $88
	adc  b                                           ; $40c3: $88
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  b                                           ; $40c6: $88
	adc  c                                           ; $40c7: $89
	adc  b                                           ; $40c8: $88
	adc  b                                           ; $40c9: $88
	adc  b                                           ; $40ca: $88
	adc  b                                           ; $40cb: $88
	adc  b                                           ; $40cc: $88
	adc  b                                           ; $40cd: $88
	sbc  c                                           ; $40ce: $99
	adc  b                                           ; $40cf: $88
	adc  b                                           ; $40d0: $88
	add  a                                           ; $40d1: $87
	ld   [hl], a                                     ; $40d2: $77
	ld   a, b                                        ; $40d3: $78
	sbc  c                                           ; $40d4: $99
	sbc  b                                           ; $40d5: $98
	adc  b                                           ; $40d6: $88
	adc  b                                           ; $40d7: $88
	adc  b                                           ; $40d8: $88
	adc  b                                           ; $40d9: $88
	adc  b                                           ; $40da: $88
	adc  c                                           ; $40db: $89
	sbc  c                                           ; $40dc: $99
	sbc  b                                           ; $40dd: $98
	adc  b                                           ; $40de: $88
	ld   [hl], a                                     ; $40df: $77
	adc  b                                           ; $40e0: $88
	adc  b                                           ; $40e1: $88
	adc  b                                           ; $40e2: $88
	adc  b                                           ; $40e3: $88
	adc  b                                           ; $40e4: $88
	adc  b                                           ; $40e5: $88
	adc  b                                           ; $40e6: $88
	adc  b                                           ; $40e7: $88
	adc  b                                           ; $40e8: $88
	adc  c                                           ; $40e9: $89
	adc  b                                           ; $40ea: $88
	adc  b                                           ; $40eb: $88
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	adc  b                                           ; $40ef: $88
	adc  b                                           ; $40f0: $88
	sbc  c                                           ; $40f1: $99
	sbc  b                                           ; $40f2: $98
	adc  b                                           ; $40f3: $88
	ld   [hl], a                                     ; $40f4: $77
	adc  b                                           ; $40f5: $88
	adc  b                                           ; $40f6: $88
	sbc  c                                           ; $40f7: $99
	sbc  c                                           ; $40f8: $99
	sbc  c                                           ; $40f9: $99
	adc  b                                           ; $40fa: $88
	ld   [hl], a                                     ; $40fb: $77
	ld   a, b                                        ; $40fc: $78
	adc  b                                           ; $40fd: $88
	sbc  b                                           ; $40fe: $98
	sbc  b                                           ; $40ff: $98
	adc  b                                           ; $4100: $88
	ld   [hl], a                                     ; $4101: $77
	ld   [hl], a                                     ; $4102: $77
	adc  b                                           ; $4103: $88
	adc  c                                           ; $4104: $89
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	add  a                                           ; $4107: $87
	ld   [hl], a                                     ; $4108: $77
	adc  b                                           ; $4109: $88
	sbc  c                                           ; $410a: $99
	sbc  c                                           ; $410b: $99
	adc  b                                           ; $410c: $88
	adc  b                                           ; $410d: $88
	adc  b                                           ; $410e: $88
	ld   [hl], a                                     ; $410f: $77
	adc  b                                           ; $4110: $88
	sbc  b                                           ; $4111: $98
	adc  b                                           ; $4112: $88
	adc  b                                           ; $4113: $88
	ld   [hl], a                                     ; $4114: $77
	ld   a, b                                        ; $4115: $78
	adc  c                                           ; $4116: $89
	sbc  c                                           ; $4117: $99
	adc  b                                           ; $4118: $88
	adc  b                                           ; $4119: $88
	adc  b                                           ; $411a: $88
	adc  b                                           ; $411b: $88
	adc  b                                           ; $411c: $88
	adc  b                                           ; $411d: $88
	sbc  c                                           ; $411e: $99
	sbc  b                                           ; $411f: $98
	add  a                                           ; $4120: $87
	ld   a, b                                        ; $4121: $78
	adc  c                                           ; $4122: $89
	sbc  c                                           ; $4123: $99
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
	sbc  c                                           ; $412f: $99
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
	sbc  c                                           ; $413b: $99
	sbc  b                                           ; $413c: $98
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

Jump_0a9_4176:
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

Call_0a9_4294:
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

Call_0a9_42a7:
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
	adc  c                                           ; $4328: $89
	sbc  b                                           ; $4329: $98
	sbc  b                                           ; $432a: $98
	halt                                             ; $432b: $76
	ld   b, h                                        ; $432c: $44
	ld   [hl+], a                                    ; $432d: $22
	ld   l, c                                        ; $432e: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432f: $cf
	rst  $38                                         ; $4330: $ff
	and  [hl]                                        ; $4331: $a6
	ld   [hl-], a                                    ; $4332: $32
	dec  [hl]                                        ; $4333: $35
	adc  c                                           ; $4334: $89
	sbc  c                                           ; $4335: $99
	sbc  d                                           ; $4336: $9a
	cp   h                                           ; $4337: $bc
	call c, Call_0a9_42a7                            ; $4338: $dc $a7 $42
	inc  h                                           ; $433b: $24
	ld   a, d                                        ; $433c: $7a
	cp   e                                           ; $433d: $bb
	xor  c                                           ; $433e: $a9
	adc  c                                           ; $433f: $89
	adc  d                                           ; $4340: $8a
	sbc  b                                           ; $4341: $98
	ld   h, l                                        ; $4342: $65
	ld   b, l                                        ; $4343: $45
	ld   a, c                                        ; $4344: $79
	cp   e                                           ; $4345: $bb
	cp   d                                           ; $4346: $ba
	sub  a                                           ; $4347: $97
	ld   [hl], a                                     ; $4348: $77
	ld   [hl], a                                     ; $4349: $77
	ld   h, [hl]                                     ; $434a: $66
	ld   d, l                                        ; $434b: $55
	ld   d, l                                        ; $434c: $55
	ld   d, [hl]                                     ; $434d: $56
	adc  d                                           ; $434e: $8a
	xor  $db                                         ; $434f: $ee $db
	ld   [hl], h                                     ; $4351: $74
	ld   [hl-], a                                    ; $4352: $32
	ld   d, a                                        ; $4353: $57
	xor  d                                           ; $4354: $aa
	cp   d                                           ; $4355: $ba
	xor  e                                           ; $4356: $ab
	cp   h                                           ; $4357: $bc
	res  2, l                                        ; $4358: $cb $95
	ld   [hl-], a                                    ; $435a: $32
	ld   [hl], $9a                                   ; $435b: $36 $9a
	cp   h                                           ; $435d: $bc
	xor  c                                           ; $435e: $a9
	ld   [hl], l                                     ; $435f: $75
	ld   sp, $5c03                                   ; $4360: $31 $03 $5c
	rst  $38                                         ; $4363: $ff
	db   $fc                                         ; $4364: $fc
	ld   [hl], h                                     ; $4365: $74
	inc  de                                          ; $4366: $13
	ld   l, c                                        ; $4367: $69
	cp   e                                           ; $4368: $bb
	xor  c                                           ; $4369: $a9
	sbc  d                                           ; $436a: $9a
	call z, $74ca                                    ; $436b: $cc $ca $74
	inc  sp                                          ; $436e: $33
	ld   b, l                                        ; $436f: $45
	ld   b, c                                        ; $4370: $41
	inc  d                                           ; $4371: $14
	ld   l, a                                        ; $4372: $6f
	rst  $38                                         ; $4373: $ff
	ei                                               ; $4374: $fb
	ld   de, $7a11                                   ; $4375: $11 $11 $7a
	rst  $38                                         ; $4378: $ff
	cp   c                                           ; $4379: $b9
	ld   a, e                                        ; $437a: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437b: $cf
	ei                                               ; $437c: $fb
	add  c                                           ; $437d: $81
	ld   de, $dd18                                   ; $437e: $11 $18 $dd
	rst  ToBoot                                         ; $4381: $c7
	ld   hl, $cf14                                   ; $4382: $21 $14 $cf
	rst  $38                                         ; $4385: $ff
	and  h                                           ; $4386: $a4
	ld   de, $bc37                                   ; $4387: $11 $37 $bc
	xor  b                                           ; $438a: $a8
	ld   h, a                                        ; $438b: $67
	xor  [hl]                                        ; $438c: $ae
	rst  $38                                         ; $438d: $ff
	ld   hl, sp+$31                                  ; $438e: $f8 $31
	ld   de, $8358                                   ; $4390: $11 $58 $83
	ld   de, $ff4b                                   ; $4393: $11 $4b $ff
	rst  $38                                         ; $4396: $ff
	ld   hl, $1b11                                   ; $4397: $21 $11 $1b
	rst  $38                                         ; $439a: $ff
	ld   a, [$df98]                                  ; $439b: $fa $98 $df
	rst  $38                                         ; $439e: $ff
	add  c                                           ; $439f: $81
	ld   de, $8612                                   ; $43a0: $11 $12 $86
	inc  [hl]                                        ; $43a3: $34
	ld   a, h                                        ; $43a4: $7c
	rst  $38                                         ; $43a5: $ff
	rst  $38                                         ; $43a6: $ff
	ld   sp, $1911                                   ; $43a7: $31 $11 $19
	rst  $28                                         ; $43aa: $ef
	cp   $a9                                         ; $43ab: $fe $a9
	cp   a                                           ; $43ad: $bf
	cp   $93                                         ; $43ae: $fe $93
	ld   de, $3211                                   ; $43b0: $11 $11 $32
	ld   c, d                                        ; $43b3: $4a
	rst  $28                                         ; $43b4: $ef
	rst  $38                                         ; $43b5: $ff
	db   $fc                                         ; $43b6: $fc
	ld   de, $4a11                                   ; $43b7: $11 $11 $4a
	rst  $38                                         ; $43ba: $ff
	cp   $de                                         ; $43bb: $fe $de
	rst  $38                                         ; $43bd: $ff
	ld   a, [$1151]                                  ; $43be: $fa $51 $11
	ld   de, $af11                                   ; $43c1: $11 $11 $af
	rst  $38                                         ; $43c4: $ff
	rst  $38                                         ; $43c5: $ff
	or   c                                           ; $43c6: $b1
	ld   de, $bf16                                   ; $43c7: $11 $16 $bf
	db   $fd                                         ; $43ca: $fd
	db   $dd                                         ; $43cb: $dd
	rst  $28                                         ; $43cc: $ef
	rst  $38                                         ; $43cd: $ff
	sub  c                                           ; $43ce: $91
	ld   de, $1111                                   ; $43cf: $11 $11 $11
	dec  de                                          ; $43d2: $1b
	rst  $38                                         ; $43d3: $ff
	rst  $38                                         ; $43d4: $ff
	di                                               ; $43d5: $f3
	ld   de, $9d11                                   ; $43d6: $11 $11 $9d
	rst  $38                                         ; $43d9: $ff
	adc  $cf                                         ; $43da: $ce $cf
	rst  $38                                         ; $43dc: $ff
	add  sp, $11                                     ; $43dd: $e8 $11
	ld   de, $1811                                   ; $43df: $11 $11 $18
	rst  $38                                         ; $43e2: $ff
	rst  $38                                         ; $43e3: $ff
	db   $fd                                         ; $43e4: $fd
	ld   de, $6b11                                   ; $43e5: $11 $11 $6b
	rst  $38                                         ; $43e8: $ff
	sbc  $ff                                         ; $43e9: $de $ff
	rst  $38                                         ; $43eb: $ff
	and  $11                                         ; $43ec: $e6 $11
	ld   de, $1511                                   ; $43ee: $11 $11 $15
	rst  $28                                         ; $43f1: $ef
	rst  $38                                         ; $43f2: $ff
	cp   $11                                         ; $43f3: $fe $11
	ld   de, $ff8b                                   ; $43f5: $11 $8b $ff
	db   $dd                                         ; $43f8: $dd
	db   $fc                                         ; $43f9: $fc
	rst  $38                                         ; $43fa: $ff
	and  [hl]                                        ; $43fb: $a6
	ld   sp, $1111                                   ; $43fc: $31 $11 $11
	dec  d                                           ; $43ff: $15
	rst  $38                                         ; $4400: $ff
	rst  $38                                         ; $4401: $ff
	db   $f4                                         ; $4402: $f4
	ld   de, $ed11                                   ; $4403: $11 $11 $ed
	rst  $38                                         ; $4406: $ff
	xor  [hl]                                        ; $4407: $ae
	db   $db                                         ; $4408: $db
	cp   $66                                         ; $4409: $fe $66
	ld   sp, $1111                                   ; $440b: $31 $11 $11
	add  hl, de                                      ; $440e: $19
	rst  $38                                         ; $440f: $ff
	rst  $38                                         ; $4410: $ff
	pop  hl                                          ; $4411: $e1
	ld   de, $ff1e                                   ; $4412: $11 $1e $ff
	cp   $be                                         ; $4415: $fe $be
	ld   a, d                                        ; $4417: $7a
	and  $47                                         ; $4418: $e6 $47
	ld   de, $1411                                   ; $441a: $11 $11 $14
	ld   a, a                                        ; $441d: $7f
	rst  $38                                         ; $441e: $ff
	db   $fc                                         ; $441f: $fc
	ld   de, rAUD1LEN                                   ; $4420: $11 $11 $ff
	rst  $38                                         ; $4423: $ff
	ld   a, [$3871]                                  ; $4424: $fa $71 $38
	adc  d                                           ; $4427: $8a
	db   $e4                                         ; $4428: $e4
	ld   de, $5f11                                   ; $4429: $11 $11 $5f
	rst  $38                                         ; $442c: $ff
	rst  $38                                         ; $442d: $ff
	ld   de, $1f11                                   ; $442e: $11 $11 $1f
	rst  $38                                         ; $4431: $ff
	ld   hl, sp+$41                                  ; $4432: $f8 $41
	dec  d                                           ; $4434: $15
	cp   l                                           ; $4435: $bd
	db   $fc                                         ; $4436: $fc
	ld   de, $4f11                                   ; $4437: $11 $11 $4f
	rst  $38                                         ; $443a: $ff
	rst  $38                                         ; $443b: $ff
	ld   de, $1f11                                   ; $443c: $11 $11 $1f
	rst  $38                                         ; $443f: $ff
	or   $11                                         ; $4440: $f6 $11
	ld   d, $ef                                      ; $4442: $16 $ef
	db   $fc                                         ; $4444: $fc
	ld   de, $4f11                                   ; $4445: $11 $11 $4f
	rst  $38                                         ; $4448: $ff
	rst  $38                                         ; $4449: $ff
	ld   de, $9f11                                   ; $444a: $11 $11 $9f
	rst  $38                                         ; $444d: $ff
	pop  af                                          ; $444e: $f1
	ld   de, $ff1c                                   ; $444f: $11 $1c $ff
	push af                                          ; $4452: $f5
	ld   de, $df11                                   ; $4453: $11 $11 $df
	rst  $38                                         ; $4456: $ff
	push af                                          ; $4457: $f5
	ld   de, rAUD1LEN                                   ; $4458: $11 $11 $ff
	rst  $38                                         ; $445b: $ff
	ld   d, c                                        ; $445c: $51
	ld   de, $fe6f                                   ; $445d: $11 $6f $fe
	and  c                                           ; $4460: $a1
	ld   de, $ff1b                                   ; $4461: $11 $1b $ff
	rst  $38                                         ; $4464: $ff
	add  c                                           ; $4465: $81
	ld   de, $ff1f                                   ; $4466: $11 $1f $ff
	rst  $30                                         ; $4469: $f7
	ld   de, $de13                                   ; $446a: $11 $13 $de
	jp   hl                                          ; $446d: $e9


	ld   de, rAUD1LEN                                   ; $446e: $11 $11 $ff
	rst  $38                                         ; $4471: $ff
	pop  af                                          ; $4472: $f1
	ld   de, $ff1c                                   ; $4473: $11 $1c $ff
	cp   $11                                         ; $4476: $fe $11
	ld   de, $db8d                                   ; $4478: $11 $8d $db
	ld   de, rAUD1ENV                                   ; $447b: $11 $12 $ff
	rst  $38                                         ; $447e: $ff
	pop  de                                          ; $447f: $d1
	ld   de, $ff1c                                   ; $4480: $11 $1c $ff
	db   $fd                                         ; $4483: $fd
	ld   de, $6a11                                   ; $4484: $11 $11 $6a
	sub  l                                           ; $4487: $95
	ld   de, $ff5f                                   ; $4488: $11 $5f $ff
	db   $fc                                         ; $448b: $fc
	ld   de, $9f11                                   ; $448c: $11 $11 $9f
	rst  $38                                         ; $448f: $ff
	push hl                                          ; $4490: $e5
	ld   de, $7813                                   ; $4491: $11 $13 $78
	ld   h, [hl]                                     ; $4494: $66
	ld   l, c                                        ; $4495: $69
	rst  $38                                         ; $4496: $ff
	rst  $38                                         ; $4497: $ff
	ld   [hl], c                                     ; $4498: $71
	ld   de, $ff2b                                   ; $4499: $11 $2b $ff
	ei                                               ; $449c: $fb
	ld   sp, $4811                                   ; $449d: $31 $11 $48
	sbc  b                                           ; $44a0: $98
	ld   [hl], a                                     ; $44a1: $77
	cp   [hl]                                        ; $44a2: $be
	rst  $38                                         ; $44a3: $ff
	rst  $20                                         ; $44a4: $e7
	ld   hl, $cf15                                   ; $44a5: $21 $15 $cf
	rst  $38                                         ; $44a8: $ff
	ld   [hl], c                                     ; $44a9: $71
	ld   de, $8826                                   ; $44aa: $11 $26 $88
	add  a                                           ; $44ad: $87
	ld   a, h                                        ; $44ae: $7c
	rst  $28                                         ; $44af: $ef
	ld   sp, hl                                      ; $44b0: $f9
	ld   d, c                                        ; $44b1: $51
	dec  d                                           ; $44b2: $15
	sbc  a                                           ; $44b3: $9f
	rst  $38                                         ; $44b4: $ff
	push bc                                          ; $44b5: $c5
	ld   de, $7913                                   ; $44b6: $11 $13 $79
	ld   a, b                                        ; $44b9: $78
	ld   a, b                                        ; $44ba: $78
	sbc  $fe                                         ; $44bb: $de $fe
	sub  h                                           ; $44bd: $94
	ld   de, $ef5a                                   ; $44be: $11 $5a $ef
	ei                                               ; $44c1: $fb
	ld   [hl], d                                     ; $44c2: $72
	ld   [de], a                                     ; $44c3: $12
	ld   b, a                                        ; $44c4: $47
	add  [hl]                                        ; $44c5: $86
	ld   h, l                                        ; $44c6: $65
	ld   l, e                                        ; $44c7: $6b
	rst  $28                                         ; $44c8: $ef
	ei                                               ; $44c9: $fb
	ld   h, e                                        ; $44ca: $63
	inc  d                                           ; $44cb: $14
	adc  e                                           ; $44cc: $8b
	rst  $38                                         ; $44cd: $ff
	ret  z                                           ; $44ce: $c8

	ld   d, e                                        ; $44cf: $53
	dec  [hl]                                        ; $44d0: $35
	ld   a, b                                        ; $44d1: $78
	halt                                             ; $44d2: $76
	ld   d, l                                        ; $44d3: $55
	ld   a, e                                        ; $44d4: $7b
	rst  $28                                         ; $44d5: $ef
	ret  z                                           ; $44d6: $c8

	ld   d, e                                        ; $44d7: $53
	ld   b, a                                        ; $44d8: $47
	xor  l                                           ; $44d9: $ad
	db   $eb                                         ; $44da: $eb
	sub  l                                           ; $44db: $95
	ld   b, h                                        ; $44dc: $44
	ld   d, a                                        ; $44dd: $57
	sbc  b                                           ; $44de: $98
	ld   [hl], l                                     ; $44df: $75
	ld   b, [hl]                                     ; $44e0: $46
	adc  d                                           ; $44e1: $8a
	db   $dd                                         ; $44e2: $dd
	and  a                                           ; $44e3: $a7
	ld   d, h                                        ; $44e4: $54
	ld   l, b                                        ; $44e5: $68
	cp   l                                           ; $44e6: $bd
	jp   z, Jump_0a9_5585                            ; $44e7: $ca $85 $55

	ld   a, c                                        ; $44ea: $79
	adc  b                                           ; $44eb: $88
	ld   [hl], l                                     ; $44ec: $75
	ld   d, l                                        ; $44ed: $55
	ld   a, c                                        ; $44ee: $79
	cp   h                                           ; $44ef: $bc
	cp   c                                           ; $44f0: $b9
	ld   h, l                                        ; $44f1: $65
	ld   d, a                                        ; $44f2: $57
	xor  e                                           ; $44f3: $ab
	cp   d                                           ; $44f4: $ba
	add  a                                           ; $44f5: $87
	ld   h, [hl]                                     ; $44f6: $66
	ld   a, c                                        ; $44f7: $79
	sbc  d                                           ; $44f8: $9a
	add  a                                           ; $44f9: $87
	ld   h, l                                        ; $44fa: $65
	ld   h, a                                        ; $44fb: $67
	adc  d                                           ; $44fc: $8a
	xor  d                                           ; $44fd: $aa
	sbc  b                                           ; $44fe: $98
	ld   [hl], a                                     ; $44ff: $77
	ld   a, b                                        ; $4500: $78
	adc  b                                           ; $4501: $88
	sbc  c                                           ; $4502: $99
	adc  b                                           ; $4503: $88
	adc  b                                           ; $4504: $88
	sbc  c                                           ; $4505: $99
	add  a                                           ; $4506: $87
	halt                                             ; $4507: $76
	ld   h, a                                        ; $4508: $67
	ld   a, b                                        ; $4509: $78
	sbc  c                                           ; $450a: $99
	xor  d                                           ; $450b: $aa
	add  a                                           ; $450c: $87
	halt                                             ; $450d: $76
	ld   a, c                                        ; $450e: $79
	ld   a, b                                        ; $450f: $78
	sub  a                                           ; $4510: $97
	xor  c                                           ; $4511: $a9
	adc  c                                           ; $4512: $89
	ld   [hl], a                                     ; $4513: $77
	add  [hl]                                        ; $4514: $86
	ld   [hl], a                                     ; $4515: $77
	ld   a, b                                        ; $4516: $78
	sbc  c                                           ; $4517: $99
	xor  b                                           ; $4518: $a8
	sbc  b                                           ; $4519: $98
	ld   [hl], a                                     ; $451a: $77
	add  a                                           ; $451b: $87
	adc  c                                           ; $451c: $89
	adc  c                                           ; $451d: $89
	add  a                                           ; $451e: $87
	add  a                                           ; $451f: $87
	ld   a, b                                        ; $4520: $78
	ld   a, c                                        ; $4521: $79
	sbc  c                                           ; $4522: $99
	sbc  c                                           ; $4523: $99
	sbc  b                                           ; $4524: $98
	add  a                                           ; $4525: $87
	add  a                                           ; $4526: $87
	ld   a, c                                        ; $4527: $79
	ld   a, b                                        ; $4528: $78
	sbc  b                                           ; $4529: $98
	sbc  c                                           ; $452a: $99
	adc  b                                           ; $452b: $88
	ld   [hl], a                                     ; $452c: $77
	ld   [hl], a                                     ; $452d: $77
	sbc  c                                           ; $452e: $99
	sbc  c                                           ; $452f: $99
	sbc  b                                           ; $4530: $98
	add  a                                           ; $4531: $87
	ld   [hl], a                                     ; $4532: $77
	adc  b                                           ; $4533: $88
	adc  b                                           ; $4534: $88
	adc  c                                           ; $4535: $89
	adc  b                                           ; $4536: $88
	adc  b                                           ; $4537: $88
	add  a                                           ; $4538: $87
	ld   h, [hl]                                     ; $4539: $66
	ld   a, b                                        ; $453a: $78
	sbc  d                                           ; $453b: $9a
	xor  d                                           ; $453c: $aa
	add  a                                           ; $453d: $87
	ld   [hl], a                                     ; $453e: $77
	ld   a, b                                        ; $453f: $78
	adc  b                                           ; $4540: $88
	sbc  b                                           ; $4541: $98
	sbc  b                                           ; $4542: $98
	adc  c                                           ; $4543: $89
	add  a                                           ; $4544: $87
	add  a                                           ; $4545: $87
	ld   a, b                                        ; $4546: $78
	ld   a, c                                        ; $4547: $79
	sbc  c                                           ; $4548: $99
	adc  b                                           ; $4549: $88
	ld   a, b                                        ; $454a: $78
	ld   a, b                                        ; $454b: $78
	sbc  b                                           ; $454c: $98
	sbc  b                                           ; $454d: $98
	adc  c                                           ; $454e: $89
	adc  b                                           ; $454f: $88
	adc  b                                           ; $4550: $88
	ld   [hl], a                                     ; $4551: $77
	ld   [hl], a                                     ; $4552: $77
	adc  b                                           ; $4553: $88
	sbc  c                                           ; $4554: $99
	sbc  b                                           ; $4555: $98
	add  a                                           ; $4556: $87
	ld   [hl], a                                     ; $4557: $77
	adc  c                                           ; $4558: $89
	sbc  b                                           ; $4559: $98
	sbc  b                                           ; $455a: $98
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	add  a                                           ; $455d: $87
	ld   [hl], a                                     ; $455e: $77
	ld   a, b                                        ; $455f: $78
	sbc  c                                           ; $4560: $99
	sbc  c                                           ; $4561: $99
	add  a                                           ; $4562: $87
	ld   [hl], a                                     ; $4563: $77
	ld   a, b                                        ; $4564: $78
	adc  c                                           ; $4565: $89
	sbc  c                                           ; $4566: $99
	add  a                                           ; $4567: $87
	ld   [hl], a                                     ; $4568: $77
	adc  c                                           ; $4569: $89
	sbc  b                                           ; $456a: $98
	add  a                                           ; $456b: $87
	ld   [hl], a                                     ; $456c: $77
	ld   a, b                                        ; $456d: $78
	sbc  c                                           ; $456e: $99
	adc  b                                           ; $456f: $88
	add  a                                           ; $4570: $87
	ld   [hl], a                                     ; $4571: $77
	adc  b                                           ; $4572: $88
	adc  c                                           ; $4573: $89
	sbc  b                                           ; $4574: $98
	ld   [hl], a                                     ; $4575: $77
	ld   [hl], a                                     ; $4576: $77
	adc  b                                           ; $4577: $88
	sbc  c                                           ; $4578: $99
	adc  b                                           ; $4579: $88
	add  a                                           ; $457a: $87
	ld   a, b                                        ; $457b: $78
	adc  b                                           ; $457c: $88
	sbc  b                                           ; $457d: $98
	sbc  b                                           ; $457e: $98
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
	ld   a, b                                        ; $458b: $78
	adc  b                                           ; $458c: $88
	adc  c                                           ; $458d: $89
	sbc  b                                           ; $458e: $98
	adc  b                                           ; $458f: $88
	ld   [hl], a                                     ; $4590: $77
	ld   a, b                                        ; $4591: $78
	adc  c                                           ; $4592: $89
	sbc  b                                           ; $4593: $98
	add  a                                           ; $4594: $87
	ld   a, b                                        ; $4595: $78
	adc  b                                           ; $4596: $88
	adc  b                                           ; $4597: $88
	sbc  b                                           ; $4598: $98
	ld   [hl], a                                     ; $4599: $77
	ld   [hl], a                                     ; $459a: $77
	adc  c                                           ; $459b: $89
	adc  c                                           ; $459c: $89
	sbc  b                                           ; $459d: $98
	add  a                                           ; $459e: $87
	ld   a, b                                        ; $459f: $78
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	sbc  c                                           ; $45a4: $99
	sbc  c                                           ; $45a5: $99

Call_0a9_45a6:
	adc  b                                           ; $45a6: $88
	ld   [hl], a                                     ; $45a7: $77
	ld   [hl], a                                     ; $45a8: $77
	adc  c                                           ; $45a9: $89
	sbc  b                                           ; $45aa: $98
	sbc  b                                           ; $45ab: $98
	adc  b                                           ; $45ac: $88
	ld   a, b                                        ; $45ad: $78
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	ld   [hl], a                                     ; $45b5: $77
	adc  b                                           ; $45b6: $88
	adc  c                                           ; $45b7: $89
	sbc  c                                           ; $45b8: $99
	sbc  b                                           ; $45b9: $98
	adc  b                                           ; $45ba: $88
	ld   a, b                                        ; $45bb: $78
	adc  b                                           ; $45bc: $88
	adc  b                                           ; $45bd: $88
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	adc  b                                           ; $45c0: $88
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	add  a                                           ; $45c3: $87
	ld   a, b                                        ; $45c4: $78
	adc  b                                           ; $45c5: $88
	sbc  c                                           ; $45c6: $99
	sbc  c                                           ; $45c7: $99
	adc  b                                           ; $45c8: $88
	ld   [hl], a                                     ; $45c9: $77
	ld   a, b                                        ; $45ca: $78
	adc  b                                           ; $45cb: $88
	sbc  c                                           ; $45cc: $99
	sbc  b                                           ; $45cd: $98
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

Jump_0a9_4685:
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
	adc  c                                           ; $47d0: $89
	adc  b                                           ; $47d1: $88
	add  a                                           ; $47d2: $87
	ld   [hl], a                                     ; $47d3: $77
	ld   a, b                                        ; $47d4: $78
	adc  c                                           ; $47d5: $89
	adc  c                                           ; $47d6: $89
	adc  b                                           ; $47d7: $88
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	sbc  c                                           ; $47da: $99
	sbc  c                                           ; $47db: $99
	adc  b                                           ; $47dc: $88
	halt                                             ; $47dd: $76
	ld   h, [hl]                                     ; $47de: $66
	ld   d, [hl]                                     ; $47df: $56
	ld   h, a                                        ; $47e0: $67
	adc  b                                           ; $47e1: $88
	sbc  d                                           ; $47e2: $9a
	xor  e                                           ; $47e3: $ab
	cp   c                                           ; $47e4: $b9
	sub  a                                           ; $47e5: $97
	ld   h, l                                        ; $47e6: $65
	ld   d, a                                        ; $47e7: $57
	sbc  e                                           ; $47e8: $9b
	call $97da                                       ; $47e9: $cd $da $97
	ld   d, l                                        ; $47ec: $55
	ld   d, l                                        ; $47ed: $55
	ld   b, e                                        ; $47ee: $43
	ld   de, $ef37                                   ; $47ef: $11 $37 $ef
	rst  $38                                         ; $47f2: $ff
	push hl                                          ; $47f3: $e5
	ld   de, $6b12                                   ; $47f4: $11 $12 $6b
	db   $ed                                         ; $47f7: $ed
	ret  z                                           ; $47f8: $c8

	adc  b                                           ; $47f9: $88
	xor  h                                           ; $47fa: $ac
	bit  6, e                                        ; $47fb: $cb $73
	ld   hl, $df48                                   ; $47fd: $21 $48 $df
	db   $fd                                         ; $4800: $fd
	sub  l                                           ; $4801: $95
	ld   b, e                                        ; $4802: $43
	ld   e, b                                        ; $4803: $58
	xor  d                                           ; $4804: $aa
	add  a                                           ; $4805: $87
	ld   h, [hl]                                     ; $4806: $66
	ld   a, d                                        ; $4807: $7a
	call z, Call_0a9_64b9                            ; $4808: $cc $b9 $64
	ld   b, h                                        ; $480b: $44
	ld   l, c                                        ; $480c: $69
	xor  d                                           ; $480d: $aa
	xor  c                                           ; $480e: $a9
	adc  b                                           ; $480f: $88
	ld   a, b                                        ; $4810: $78
	adc  b                                           ; $4811: $88
	halt                                             ; $4812: $76
	ld   d, l                                        ; $4813: $55
	ld   d, l                                        ; $4814: $55
	ld   d, l                                        ; $4815: $55
	ld   d, [hl]                                     ; $4816: $56
	adc  e                                           ; $4817: $8b
	call $96ec                                       ; $4818: $cd $ec $96
	ld   b, h                                        ; $481b: $44
	ld   l, b                                        ; $481c: $68
	cp   h                                           ; $481d: $bc
	cp   e                                           ; $481e: $bb
	adc  b                                           ; $481f: $88
	ld   a, b                                        ; $4820: $78
	sbc  c                                           ; $4821: $99
	sub  [hl]                                        ; $4822: $96
	ld   hl, $3c11                                   ; $4823: $21 $11 $3c
	rst  $38                                         ; $4826: $ff
	rst  $38                                         ; $4827: $ff
	sub  c                                           ; $4828: $91
	ld   de, $be16                                   ; $4829: $11 $16 $be
	reti                                             ; $482c: $d9


	halt                                             ; $482d: $76
	sbc  l                                           ; $482e: $9d
	rst  $38                                         ; $482f: $ff
	ei                                               ; $4830: $fb
	ld   sp, $3911                                   ; $4831: $31 $11 $39
	rst  JumpTable                                         ; $4834: $df
	db   $ec                                         ; $4835: $ec
	add  [hl]                                        ; $4836: $86
	ld   d, [hl]                                     ; $4837: $56
	ld   h, l                                        ; $4838: $65
	ld   b, d                                        ; $4839: $42
	dec  [hl]                                        ; $483a: $35
	adc  [hl]                                        ; $483b: $8e
	rst  $38                                         ; $483c: $ff
	ei                                               ; $483d: $fb
	ld   [hl], h                                     ; $483e: $74
	inc  d                                           ; $483f: $14
	ld   l, c                                        ; $4840: $69
	call z, Call_0a9_77a8                            ; $4841: $cc $a8 $77
	adc  d                                           ; $4844: $8a
	xor  d                                           ; $4845: $aa
	add  d                                           ; $4846: $82
	ld   de, $9f11                                   ; $4847: $11 $11 $9f
	rst  $38                                         ; $484a: $ff
	push af                                          ; $484b: $f5
	ld   de, $6a11                                   ; $484c: $11 $11 $6a
	rst  $38                                         ; $484f: $ff
	db   $ec                                         ; $4850: $ec
	ld   l, l                                        ; $4851: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4852: $cf
	ld   a, [$1181]                                  ; $4853: $fa $81 $11
	ld   de, $8811                                   ; $4856: $11 $11 $88
	rst  $38                                         ; $4859: $ff
	rst  $38                                         ; $485a: $ff
	pop  de                                          ; $485b: $d1
	ld   de, $4d12                                   ; $485c: $11 $12 $4d
	cp   $fd                                         ; $485f: $fe $fd
	xor  [hl]                                        ; $4861: $ae
	adc  $c9                                         ; $4862: $ce $c9
	ld   b, c                                        ; $4864: $41
	ld   de, $2613                                   ; $4865: $11 $13 $26
	ld   a, c                                        ; $4868: $79
	rst  JumpTable                                         ; $4869: $df
	rst  $38                                         ; $486a: $ff
	ld   sp, hl                                      ; $486b: $f9
	ld   b, c                                        ; $486c: $41
	ld   de, $ee27                                   ; $486d: $11 $27 $ee
	rst  $38                                         ; $4870: $ff
	call $c9cb                                       ; $4871: $cd $cb $c9
	ld   h, e                                        ; $4874: $63
	ld   de, $1111                                   ; $4875: $11 $11 $11
	ld   b, a                                        ; $4878: $47
	rst  JumpTable                                         ; $4879: $df
	rst  $38                                         ; $487a: $ff
	ld   sp, hl                                      ; $487b: $f9
	ld   hl, $1711                                   ; $487c: $21 $11 $17
	rst  $28                                         ; $487f: $ef
	rst  $38                                         ; $4880: $ff
	sbc  $ed                                         ; $4881: $de $ed
	reti                                             ; $4883: $d9


	ld   d, d                                        ; $4884: $52
	ld   de, $1111                                   ; $4885: $11 $11 $11
	ld   e, e                                        ; $4888: $5b
	rst  $38                                         ; $4889: $ff
	rst  $38                                         ; $488a: $ff
	pop  af                                          ; $488b: $f1
	ld   de, $6f11                                   ; $488c: $11 $11 $6f
	rst  $38                                         ; $488f: $ff
	rst  $38                                         ; $4890: $ff
	adc  $ed                                         ; $4891: $ce $ed
	or   [hl]                                        ; $4893: $b6
	ld   sp, $1111                                   ; $4894: $31 $11 $11
	ld   a, [de]                                     ; $4897: $1a
	rst  $38                                         ; $4898: $ff
	rst  $38                                         ; $4899: $ff
	db   $f4                                         ; $489a: $f4
	ld   de, $6811                                   ; $489b: $11 $11 $68
	rst  $38                                         ; $489e: $ff
	rst  $38                                         ; $489f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a0: $cf
	db   $ec                                         ; $48a1: $ec
	rst  ToBoot                                         ; $48a2: $c7
	ld   b, c                                        ; $48a3: $41
	ld   de, $1511                                   ; $48a4: $11 $11 $15
	rst  $38                                         ; $48a7: $ff
	rst  $38                                         ; $48a8: $ff
	rst  $30                                         ; $48a9: $f7
	ld   de, $6711                                   ; $48aa: $11 $11 $67
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	cp   e                                           ; $48af: $bb
	ret                                              ; $48b0: $c9


	cp   b                                           ; $48b1: $b8
	ld   h, e                                        ; $48b2: $63
	ld   de, $1411                                   ; $48b3: $11 $11 $14
	rst  $38                                         ; $48b6: $ff
	rst  $38                                         ; $48b7: $ff
	pop  af                                          ; $48b8: $f1
	ld   de, $8d11                                   ; $48b9: $11 $11 $8d
	rst  $38                                         ; $48bc: $ff
	rst  $38                                         ; $48bd: $ff
	ld   e, b                                        ; $48be: $58
	halt                                             ; $48bf: $76
	cp   d                                           ; $48c0: $ba
	and  l                                           ; $48c1: $a5
	ld   de, $1b11                                   ; $48c2: $11 $11 $1b
	rst  $38                                         ; $48c5: $ff
	rst  $38                                         ; $48c6: $ff
	ld   b, c                                        ; $48c7: $41
	ld   de, $df1b                                   ; $48c8: $11 $1b $df
	rst  $38                                         ; $48cb: $ff
	db   $f4                                         ; $48cc: $f4
	inc  de                                          ; $48cd: $13
	daa                                              ; $48ce: $27
	cp   $93                                         ; $48cf: $fe $93
	ld   de, $ef11                                   ; $48d1: $11 $11 $ef
	rst  $38                                         ; $48d4: $ff
	pop  af                                          ; $48d5: $f1
	ld   de, $ef14                                   ; $48d6: $11 $14 $ef
	rst  $38                                         ; $48d9: $ff
	ei                                               ; $48da: $fb
	ld   de, $af12                                   ; $48db: $11 $12 $af
	ld   sp, hl                                      ; $48de: $f9
	ld   de, $3f11                                   ; $48df: $11 $11 $3f
	rst  $38                                         ; $48e2: $ff
	push af                                          ; $48e3: $f5
	ld   de, $ef11                                   ; $48e4: $11 $11 $ef
	rst  $38                                         ; $48e7: $ff
	ld   a, [$1111]                                  ; $48e8: $fa $11 $11
	cp   a                                           ; $48eb: $bf
	ei                                               ; $48ec: $fb
	ld   de, $5f11                                   ; $48ed: $11 $11 $5f
	rst  $38                                         ; $48f0: $ff
	push af                                          ; $48f1: $f5
	ld   de, rAUD1LEN                                   ; $48f2: $11 $11 $ff
	rst  $38                                         ; $48f5: $ff
	push af                                          ; $48f6: $f5
	ld   de, $ef13                                   ; $48f7: $11 $13 $ef
	or   $11                                         ; $48fa: $f6 $11
	ld   de, $ffff                                   ; $48fc: $11 $ff $ff
	pop  af                                          ; $48ff: $f1
	ld   de, $ff1a                                   ; $4900: $11 $1a $ff
	rst  $38                                         ; $4903: $ff
	sub  c                                           ; $4904: $91
	ld   de, $ff1d                                   ; $4905: $11 $1d $ff
	add  c                                           ; $4908: $81
	ld   de, $ff1f                                   ; $4909: $11 $1f $ff
	cp   $11                                         ; $490c: $fe $11
	ld   de, $ffaf                                   ; $490e: $11 $af $ff
	push af                                          ; $4911: $f5
	ld   de, $cf13                                   ; $4912: $11 $13 $cf
	and  h                                           ; $4915: $a4
	ld   de, $ff4f                                   ; $4916: $11 $4f $ff
	ei                                               ; $4919: $fb
	ld   b, c                                        ; $491a: $41
	ld   de, $ff4f                                   ; $491b: $11 $4f $ff
	rst  $30                                         ; $491e: $f7
	ld   de, $2e11                                   ; $491f: $11 $11 $2e
	rst  $38                                         ; $4922: $ff
	cp   $9a                                         ; $4923: $fe $9a
	ld   b, [hl]                                     ; $4925: $46
	sub  l                                           ; $4926: $95
	adc  c                                           ; $4927: $89
	ld   l, c                                        ; $4928: $69
	cp   c                                           ; $4929: $b9
	xor  c                                           ; $492a: $a9
	ld   b, h                                        ; $492b: $44
	ld   hl, $6d11                                   ; $492c: $21 $11 $6d
	rst  $38                                         ; $492f: $ff
	rst  $38                                         ; $4930: $ff
	add  c                                           ; $4931: $81
	ld   de, $df3b                                   ; $4932: $11 $3b $df
	ld   sp, hl                                      ; $4935: $f9
	ld   h, c                                        ; $4936: $61
	ld   de, $4634                                   ; $4937: $11 $34 $46
	ld   a, c                                        ; $493a: $79
	rst  $28                                         ; $493b: $ef
	rst  $38                                         ; $493c: $ff
	sub  $41                                         ; $493d: $d6 $41
	ld   d, $ae                                      ; $493f: $16 $ae
	rst  $38                                         ; $4941: $ff
	and  h                                           ; $4942: $a4
	ld   de, $1711                                   ; $4943: $11 $11 $17
	rst  JumpTable                                         ; $4946: $df
	rst  $38                                         ; $4947: $ff
	cp   $72                                         ; $4948: $fe $72
	ld   hl, $cf4a                                   ; $494a: $21 $4a $cf
	db   $fd                                         ; $494d: $fd
	add  d                                           ; $494e: $82
	ld   de, $3a11                                   ; $494f: $11 $11 $3a
	rst  JumpTable                                         ; $4952: $df
	rst  $38                                         ; $4953: $ff
	db   $eb                                         ; $4954: $eb
	ld   d, h                                        ; $4955: $54
	ld   [hl+], a                                    ; $4956: $22
	ld   a, c                                        ; $4957: $79
	rst  JumpTable                                         ; $4958: $df
	db   $ec                                         ; $4959: $ec
	ld   [hl], d                                     ; $495a: $72
	ld   de, $5911                                   ; $495b: $11 $11 $59
	rst  JumpTable                                         ; $495e: $df
	rst  $38                                         ; $495f: $ff
	jp   hl                                          ; $4960: $e9


	ld   h, h                                        ; $4961: $64
	dec  [hl]                                        ; $4962: $35
	adc  e                                           ; $4963: $8b
	db   $ed                                         ; $4964: $ed
	cp   c                                           ; $4965: $b9
	ld   b, c                                        ; $4966: $41
	ld   de, $7a35                                   ; $4967: $11 $35 $7a
	adc  $fd                                         ; $496a: $ce $fd
	ret  z                                           ; $496c: $c8

	ld   d, h                                        ; $496d: $54
	ld   b, [hl]                                     ; $496e: $46
	xor  h                                           ; $496f: $ac
	db   $ed                                         ; $4970: $ed
	rst  ToBoot                                         ; $4971: $c7
	ld   b, c                                        ; $4972: $41
	ld   de, $7a45                                   ; $4973: $11 $45 $7a
	cp   h                                           ; $4976: $bc
	call c, Call_0a9_65ca                            ; $4977: $dc $ca $65
	ld   d, l                                        ; $497a: $55
	adc  e                                           ; $497b: $8b
	call z, $64c9                                    ; $497c: $cc $c9 $64
	inc  hl                                          ; $497f: $23
	ld   b, l                                        ; $4980: $45
	ld   a, b                                        ; $4981: $78
	sbc  c                                           ; $4982: $99
	cp   h                                           ; $4983: $bc
	cp   e                                           ; $4984: $bb
	sbc  b                                           ; $4985: $98
	ld   h, [hl]                                     ; $4986: $66
	ld   a, c                                        ; $4987: $79
	xor  h                                           ; $4988: $ac
	res  0, l                                        ; $4989: $cb $85
	ld   b, e                                        ; $498b: $43
	ld   b, [hl]                                     ; $498c: $46
	ld   a, b                                        ; $498d: $78
	adc  b                                           ; $498e: $88
	sbc  c                                           ; $498f: $99
	sbc  d                                           ; $4990: $9a
	xor  c                                           ; $4991: $a9
	sbc  b                                           ; $4992: $98
	ld   a, b                                        ; $4993: $78
	adc  c                                           ; $4994: $89
	sbc  d                                           ; $4995: $9a
	adc  b                                           ; $4996: $88
	halt                                             ; $4997: $76
	ld   [hl], a                                     ; $4998: $77
	ld   [hl], a                                     ; $4999: $77
	ld   h, l                                        ; $499a: $65
	ld   d, [hl]                                     ; $499b: $56
	ld   a, d                                        ; $499c: $7a
	call z, Call_0a9_77c9                            ; $499d: $cc $c9 $77
	ld   h, [hl]                                     ; $49a0: $66
	adc  c                                           ; $49a1: $89
	sbc  d                                           ; $49a2: $9a
	adc  b                                           ; $49a3: $88
	ld   [hl], a                                     ; $49a4: $77
	adc  b                                           ; $49a5: $88
	sbc  c                                           ; $49a6: $99
	ld   [hl], l                                     ; $49a7: $75
	ld   d, l                                        ; $49a8: $55
	ld   l, b                                        ; $49a9: $68
	xor  e                                           ; $49aa: $ab
	cp   d                                           ; $49ab: $ba
	sub  a                                           ; $49ac: $97
	ld   h, a                                        ; $49ad: $67
	ld   a, c                                        ; $49ae: $79
	sbc  c                                           ; $49af: $99
	xor  b                                           ; $49b0: $a8
	ld   a, c                                        ; $49b1: $79
	ld   a, b                                        ; $49b2: $78
	and  a                                           ; $49b3: $a7
	add  a                                           ; $49b4: $87
	ld   d, [hl]                                     ; $49b5: $56
	ld   h, a                                        ; $49b6: $67
	sbc  e                                           ; $49b7: $9b
	xor  d                                           ; $49b8: $aa
	add  [hl]                                        ; $49b9: $86
	ld   [hl], a                                     ; $49ba: $77
	ld   l, d                                        ; $49bb: $6a
	sbc  d                                           ; $49bc: $9a
	xor  b                                           ; $49bd: $a8
	add  a                                           ; $49be: $87
	ld   [hl], a                                     ; $49bf: $77
	ld   a, b                                        ; $49c0: $78
	adc  b                                           ; $49c1: $88
	add  a                                           ; $49c2: $87
	adc  b                                           ; $49c3: $88
	ld   a, b                                        ; $49c4: $78
	ld   [hl], a                                     ; $49c5: $77
	ld   [hl], a                                     ; $49c6: $77
	ld   a, b                                        ; $49c7: $78
	adc  d                                           ; $49c8: $8a
	xor  c                                           ; $49c9: $a9
	sbc  b                                           ; $49ca: $98
	ld   [hl], a                                     ; $49cb: $77
	halt                                             ; $49cc: $76
	adc  c                                           ; $49cd: $89
	adc  d                                           ; $49ce: $8a
	sbc  b                                           ; $49cf: $98
	sub  a                                           ; $49d0: $97
	ld   h, a                                        ; $49d1: $67
	ld   h, a                                        ; $49d2: $67
	add  a                                           ; $49d3: $87
	sbc  b                                           ; $49d4: $98
	adc  c                                           ; $49d5: $89
	sbc  c                                           ; $49d6: $99
	sbc  b                                           ; $49d7: $98
	ld   a, b                                        ; $49d8: $78
	ld   [hl], a                                     ; $49d9: $77
	adc  b                                           ; $49da: $88
	adc  c                                           ; $49db: $89
	adc  b                                           ; $49dc: $88
	add  [hl]                                        ; $49dd: $86
	ld   h, a                                        ; $49de: $67
	ld   l, b                                        ; $49df: $68
	adc  b                                           ; $49e0: $88
	sbc  c                                           ; $49e1: $99
	adc  b                                           ; $49e2: $88
	add  a                                           ; $49e3: $87
	adc  b                                           ; $49e4: $88
	ld   l, b                                        ; $49e5: $68
	add  a                                           ; $49e6: $87
	sbc  c                                           ; $49e7: $99
	sbc  d                                           ; $49e8: $9a
	halt                                             ; $49e9: $76
	halt                                             ; $49ea: $76
	ld   a, b                                        ; $49eb: $78
	sbc  c                                           ; $49ec: $99
	xor  c                                           ; $49ed: $a9
	adc  c                                           ; $49ee: $89
	ld   [hl], a                                     ; $49ef: $77
	add  a                                           ; $49f0: $87
	adc  b                                           ; $49f1: $88
	adc  c                                           ; $49f2: $89
	sbc  c                                           ; $49f3: $99
	sbc  b                                           ; $49f4: $98
	ld   [hl], a                                     ; $49f5: $77
	ld   [hl], a                                     ; $49f6: $77
	adc  b                                           ; $49f7: $88
	adc  c                                           ; $49f8: $89
	sbc  c                                           ; $49f9: $99
	sbc  b                                           ; $49fa: $98
	add  a                                           ; $49fb: $87
	ld   a, b                                        ; $49fc: $78
	ld   a, b                                        ; $49fd: $78
	adc  b                                           ; $49fe: $88
	sbc  b                                           ; $49ff: $98
	adc  c                                           ; $4a00: $89
	add  a                                           ; $4a01: $87
	ld   [hl], a                                     ; $4a02: $77
	ld   [hl], a                                     ; $4a03: $77
	adc  b                                           ; $4a04: $88
	sbc  c                                           ; $4a05: $99
	adc  c                                           ; $4a06: $89
	ld   [hl], a                                     ; $4a07: $77
	ld   [hl], a                                     ; $4a08: $77
	adc  b                                           ; $4a09: $88
	sbc  c                                           ; $4a0a: $99
	sbc  b                                           ; $4a0b: $98
	add  a                                           ; $4a0c: $87
	ld   [hl], a                                     ; $4a0d: $77
	ld   [hl], a                                     ; $4a0e: $77
	adc  c                                           ; $4a0f: $89
	adc  c                                           ; $4a10: $89
	sbc  b                                           ; $4a11: $98
	adc  b                                           ; $4a12: $88
	adc  b                                           ; $4a13: $88
	add  a                                           ; $4a14: $87
	adc  b                                           ; $4a15: $88
	adc  c                                           ; $4a16: $89
	adc  c                                           ; $4a17: $89
	add  a                                           ; $4a18: $87
	ld   [hl], a                                     ; $4a19: $77
	ld   [hl], a                                     ; $4a1a: $77
	adc  b                                           ; $4a1b: $88
	adc  b                                           ; $4a1c: $88
	adc  c                                           ; $4a1d: $89
	add  a                                           ; $4a1e: $87
	adc  b                                           ; $4a1f: $88
	ld   a, b                                        ; $4a20: $78
	adc  b                                           ; $4a21: $88
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	adc  b                                           ; $4a24: $88
	add  a                                           ; $4a25: $87
	ld   a, b                                        ; $4a26: $78
	ld   a, b                                        ; $4a27: $78
	sbc  b                                           ; $4a28: $98
	adc  b                                           ; $4a29: $88
	adc  b                                           ; $4a2a: $88
	add  a                                           ; $4a2b: $87
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	adc  b                                           ; $4a2e: $88
	adc  c                                           ; $4a2f: $89
	adc  b                                           ; $4a30: $88
	sub  a                                           ; $4a31: $97
	adc  b                                           ; $4a32: $88
	ld   a, c                                        ; $4a33: $79
	adc  b                                           ; $4a34: $88
	sbc  b                                           ; $4a35: $98
	adc  c                                           ; $4a36: $89
	adc  b                                           ; $4a37: $88
	adc  b                                           ; $4a38: $88
	ld   a, b                                        ; $4a39: $78
	adc  b                                           ; $4a3a: $88
	adc  b                                           ; $4a3b: $88
	adc  b                                           ; $4a3c: $88
	adc  c                                           ; $4a3d: $89
	adc  b                                           ; $4a3e: $88
	adc  b                                           ; $4a3f: $88
	adc  b                                           ; $4a40: $88
	adc  b                                           ; $4a41: $88
	add  a                                           ; $4a42: $87
	adc  b                                           ; $4a43: $88
	sbc  b                                           ; $4a44: $98
	sbc  b                                           ; $4a45: $98
	adc  b                                           ; $4a46: $88
	ld   a, b                                        ; $4a47: $78
	adc  b                                           ; $4a48: $88
	sbc  b                                           ; $4a49: $98
	adc  c                                           ; $4a4a: $89
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	adc  c                                           ; $4a4d: $89
	sbc  b                                           ; $4a4e: $98
	add  a                                           ; $4a4f: $87
	ld   a, b                                        ; $4a50: $78
	adc  b                                           ; $4a51: $88
	adc  c                                           ; $4a52: $89
	adc  b                                           ; $4a53: $88
	ld   a, b                                        ; $4a54: $78
	adc  b                                           ; $4a55: $88
	adc  c                                           ; $4a56: $89
	adc  b                                           ; $4a57: $88
	adc  b                                           ; $4a58: $88
	adc  b                                           ; $4a59: $88
	adc  c                                           ; $4a5a: $89
	sbc  c                                           ; $4a5b: $99
	adc  b                                           ; $4a5c: $88
	ld   [hl], a                                     ; $4a5d: $77
	ld   [hl], a                                     ; $4a5e: $77
	adc  b                                           ; $4a5f: $88
	adc  b                                           ; $4a60: $88
	adc  c                                           ; $4a61: $89
	adc  b                                           ; $4a62: $88
	ld   [hl], a                                     ; $4a63: $77
	ld   a, b                                        ; $4a64: $78
	adc  b                                           ; $4a65: $88
	sbc  c                                           ; $4a66: $99
	sbc  b                                           ; $4a67: $98
	adc  b                                           ; $4a68: $88
	adc  b                                           ; $4a69: $88
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	adc  b                                           ; $4a6c: $88
	sbc  c                                           ; $4a6d: $99
	sbc  c                                           ; $4a6e: $99
	adc  b                                           ; $4a6f: $88
	ld   [hl], a                                     ; $4a70: $77
	ld   a, b                                        ; $4a71: $78
	adc  b                                           ; $4a72: $88
	sbc  c                                           ; $4a73: $99
	sbc  b                                           ; $4a74: $98
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
	adc  c                                           ; $4a8a: $89
	sbc  b                                           ; $4a8b: $98
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  c                                           ; $4a90: $89
	sbc  b                                           ; $4a91: $98
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
	adc  c                                           ; $4caf: $89
	sbc  c                                           ; $4cb0: $99
	sbc  c                                           ; $4cb1: $99
	add  a                                           ; $4cb2: $87
	ld   h, l                                        ; $4cb3: $65
	ld   d, l                                        ; $4cb4: $55
	ld   d, a                                        ; $4cb5: $57
	adc  c                                           ; $4cb6: $89
	sbc  c                                           ; $4cb7: $99
	xor  c                                           ; $4cb8: $a9
	xor  c                                           ; $4cb9: $a9
	sbc  b                                           ; $4cba: $98
	halt                                             ; $4cbb: $76
	ld   a, b                                        ; $4cbc: $78
	xor  d                                           ; $4cbd: $aa
	res  5, c                                        ; $4cbe: $cb $a9
	halt                                             ; $4cc0: $76
	ld   h, l                                        ; $4cc1: $65
	ld   b, c                                        ; $4cc2: $41
	ld   de, $ff3a                                   ; $4cc3: $11 $3a $ff
	rst  $38                                         ; $4cc6: $ff
	sub  c                                           ; $4cc7: $91
	ld   de, $df2a                                   ; $4cc8: $11 $2a $df
	rst  ToBoot                                         ; $4ccb: $c7
	halt                                             ; $4ccc: $76
	xor  [hl]                                        ; $4ccd: $ae
	call z, $1262                                    ; $4cce: $cc $62 $12
	adc  h                                           ; $4cd1: $8c
	rst  $38                                         ; $4cd2: $ff
	and  a                                           ; $4cd3: $a7
	ld   hl, $bb57                                   ; $4cd4: $21 $57 $bb
	or   a                                           ; $4cd7: $b7
	ld   d, [hl]                                     ; $4cd8: $56
	ld   a, e                                        ; $4cd9: $7b
	res  4, [hl]                                     ; $4cda: $cb $a6
	ld   [hl-], a                                    ; $4cdc: $32
	ld   b, a                                        ; $4cdd: $47
	xor  h                                           ; $4cde: $ac
	cp   c                                           ; $4cdf: $b9
	halt                                             ; $4ce0: $76
	ld   l, b                                        ; $4ce1: $68
	xor  c                                           ; $4ce2: $a9
	sub  a                                           ; $4ce3: $97
	ld   d, h                                        ; $4ce4: $54
	ld   d, [hl]                                     ; $4ce5: $56
	adc  c                                           ; $4ce6: $89
	xor  b                                           ; $4ce7: $a8
	ld   h, l                                        ; $4ce8: $65
	ld   d, a                                        ; $4ce9: $57
	sbc  d                                           ; $4cea: $9a
	cp   e                                           ; $4ceb: $bb
	sbc  b                                           ; $4cec: $98
	ld   a, b                                        ; $4ced: $78
	adc  d                                           ; $4cee: $8a
	sbc  b                                           ; $4cef: $98
	halt                                             ; $4cf0: $76
	ld   d, l                                        ; $4cf1: $55
	ld   d, h                                        ; $4cf2: $54
	ld   de, $af13                                   ; $4cf3: $11 $13 $af
	rst  $38                                         ; $4cf6: $ff
	ld   hl, sp+$11                                  ; $4cf7: $f8 $11
	ld   de, $fcae                                   ; $4cf9: $11 $ae $fc
	xor  c                                           ; $4cfc: $a9
	cp   [hl]                                        ; $4cfd: $be
	rst  $38                                         ; $4cfe: $ff
	or   l                                           ; $4cff: $b5
	ld   de, $ae16                                   ; $4d00: $11 $16 $ae
	jp   c, $2462                                    ; $4d03: $da $62 $24

	ld   h, a                                        ; $4d06: $67
	ld   a, b                                        ; $4d07: $78
	adc  d                                           ; $4d08: $8a
	db   $dd                                         ; $4d09: $dd
	bit  6, h                                        ; $4d0a: $cb $74
	inc  [hl]                                        ; $4d0c: $34
	ld   a, h                                        ; $4d0d: $7c
	xor  $ea                                         ; $4d0e: $ee $ea
	ld   [hl], l                                     ; $4d10: $75
	ld   d, [hl]                                     ; $4d11: $56
	adc  b                                           ; $4d12: $88
	halt                                             ; $4d13: $76
	ld   sp, $4d11                                   ; $4d14: $31 $11 $4d
	rst  $38                                         ; $4d17: $ff
	db   $fd                                         ; $4d18: $fd
	ld   b, c                                        ; $4d19: $41
	ld   de, $ff4e                                   ; $4d1a: $11 $4e $ff
	ei                                               ; $4d1d: $fb
	ret                                              ; $4d1e: $c9


	cp   h                                           ; $4d1f: $bc
	add  [hl]                                        ; $4d20: $86
	ld   [hl-], a                                    ; $4d21: $32
	inc  hl                                          ; $4d22: $23
	ld   sp, $7f11                                   ; $4d23: $31 $11 $7f
	rst  $38                                         ; $4d26: $ff
	db   $fc                                         ; $4d27: $fc
	ld   de, $8f11                                   ; $4d28: $11 $11 $8f
	rst  $38                                         ; $4d2b: $ff
	ret                                              ; $4d2c: $c9


	xor  c                                           ; $4d2d: $a9
	db   $fd                                         ; $4d2e: $fd
	sub  a                                           ; $4d2f: $97
	ld   de, $6414                                   ; $4d30: $11 $14 $64
	ld   hl, $df27                                   ; $4d33: $21 $27 $df
	rst  $38                                         ; $4d36: $ff
	or   c                                           ; $4d37: $b1
	ld   de, $ff1b                                   ; $4d38: $11 $1b $ff
	cp   $c6                                         ; $4d3b: $fe $c6
	ld   h, a                                        ; $4d3d: $67
	ld   a, c                                        ; $4d3e: $79
	sbc  c                                           ; $4d3f: $99
	ld   h, e                                        ; $4d40: $63
	ld   de, $3c11                                   ; $4d41: $11 $11 $3c
	rst  $38                                         ; $4d44: $ff
	rst  $38                                         ; $4d45: $ff
	ld   d, c                                        ; $4d46: $51
	ld   de, $ff5e                                   ; $4d47: $11 $5e $ff
	db   $fc                                         ; $4d4a: $fc
	ld   [hl], l                                     ; $4d4b: $75
	ld   h, [hl]                                     ; $4d4c: $66
	sbc  e                                           ; $4d4d: $9b
	sbc  b                                           ; $4d4e: $98
	ld   sp, $1611                                   ; $4d4f: $31 $11 $16
	rst  $38                                         ; $4d52: $ff
	rst  $38                                         ; $4d53: $ff
	pop  de                                          ; $4d54: $d1
	ld   de, $ff1a                                   ; $4d55: $11 $1a $ff
	db   $fd                                         ; $4d58: $fd
	ld   b, e                                        ; $4d59: $43
	ld   d, $aa                                      ; $4d5a: $16 $aa
	ret  z                                           ; $4d5c: $c8

	ld   b, c                                        ; $4d5d: $41
	ld   de, $ff1a                                   ; $4d5e: $11 $1a $ff
	rst  $38                                         ; $4d61: $ff
	or   c                                           ; $4d62: $b1
	ld   de, $ff1e                                   ; $4d63: $11 $1e $ff
	ei                                               ; $4d66: $fb
	ld   sp, $9815                                   ; $4d67: $31 $15 $98
	ret                                              ; $4d6a: $c9


	ld   b, c                                        ; $4d6b: $41
	ld   de, $ff1f                                   ; $4d6c: $11 $1f $ff
	rst  $38                                         ; $4d6f: $ff
	ld   hl, $6f11                                   ; $4d70: $21 $11 $6f
	rst  $38                                         ; $4d73: $ff
	db   $f4                                         ; $4d74: $f4
	ld   hl, $8c19                                   ; $4d75: $21 $19 $8c
	or   l                                           ; $4d78: $b5
	ld   de, $bf11                                   ; $4d79: $11 $11 $bf
	rst  $38                                         ; $4d7c: $ff
	or   $11                                         ; $4d7d: $f6 $11
	ld   de, $ffff                                   ; $4d7f: $11 $ff $ff
	add  c                                           ; $4d82: $81
	ld   de, $ab68                                   ; $4d83: $11 $68 $ab
	ld   h, c                                        ; $4d86: $61
	ld   de, $ff1e                                   ; $4d87: $11 $1e $ff
	rst  $38                                         ; $4d8a: $ff
	ld   de, $8f11                                   ; $4d8b: $11 $11 $8f
	rst  $38                                         ; $4d8e: $ff
	push af                                          ; $4d8f: $f5
	ld   de, $9b17                                   ; $4d90: $11 $17 $9b
	or   h                                           ; $4d93: $b4
	ld   de, $ff16                                   ; $4d94: $11 $16 $ff
	rst  $38                                         ; $4d97: $ff
	or   c                                           ; $4d98: $b1
	ld   de, $ff1f                                   ; $4d99: $11 $1f $ff
	ld   a, [$1321]                                  ; $4d9c: $fa $21 $13
	ld   l, b                                        ; $4d9f: $68
	sub  h                                           ; $4da0: $94
	ld   de, $ff19                                   ; $4da1: $11 $19 $ff
	rst  $38                                         ; $4da4: $ff
	ld   [hl], c                                     ; $4da5: $71
	ld   de, $ff4f                                   ; $4da6: $11 $4f $ff
	ld   hl, sp+$11                                  ; $4da9: $f8 $11
	inc  de                                          ; $4dab: $13
	ld   a, d                                        ; $4dac: $7a
	ld   h, c                                        ; $4dad: $61
	ld   de, $ff6f                                   ; $4dae: $11 $6f $ff
	ei                                               ; $4db1: $fb
	ld   de, rAUD1LEN                                   ; $4db2: $11 $11 $ff
	rst  $38                                         ; $4db5: $ff
	and  c                                           ; $4db6: $a1
	ld   de, $6324                                   ; $4db7: $11 $24 $63
	ld   de, $ff5d                                   ; $4dba: $11 $5d $ff
	rst  $38                                         ; $4dbd: $ff
	ld   de, $af11                                   ; $4dbe: $11 $11 $af
	rst  $38                                         ; $4dc1: $ff
	call nc, $1211                                   ; $4dc2: $d4 $11 $12
	ld   h, l                                        ; $4dc5: $65
	inc  hl                                          ; $4dc6: $23
	ld   l, h                                        ; $4dc7: $6c
	rst  $38                                         ; $4dc8: $ff
	cp   $11                                         ; $4dc9: $fe $11
	ld   de, $ffbf                                   ; $4dcb: $11 $bf $ff
	call nc, $1111                                   ; $4dce: $d4 $11 $11
	inc  [hl]                                        ; $4dd1: $34
	ld   b, [hl]                                     ; $4dd2: $46
	cp   a                                           ; $4dd3: $bf
	rst  $38                                         ; $4dd4: $ff
	ld   sp, hl                                      ; $4dd5: $f9
	ld   de, rAUD1HIGH                                   ; $4dd6: $11 $14 $ff
	rst  $38                                         ; $4dd9: $ff
	and  d                                           ; $4dda: $a2
	ld   de, $4411                                   ; $4ddb: $11 $11 $44
	ld   e, c                                        ; $4dde: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ddf: $cf
	rst  $38                                         ; $4de0: $ff
	or   $11                                         ; $4de1: $f6 $11
	ld   d, $ff                                      ; $4de3: $16 $ff
	rst  $38                                         ; $4de5: $ff
	and  d                                           ; $4de6: $a2
	ld   de, $3412                                   ; $4de7: $11 $12 $34
	ld   a, d                                        ; $4dea: $7a
	rst  $28                                         ; $4deb: $ef
	rst  $38                                         ; $4dec: $ff
	or   h                                           ; $4ded: $b4
	ld   de, $ff4a                                   ; $4dee: $11 $4a $ff
	db   $fd                                         ; $4df1: $fd
	ld   h, c                                        ; $4df2: $61
	ld   de, $6715                                   ; $4df3: $11 $15 $67
	sbc  d                                           ; $4df6: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4df7: $cf
	db   $fd                                         ; $4df8: $fd
	sub  h                                           ; $4df9: $94
	inc  de                                          ; $4dfa: $13
	ld   a, e                                        ; $4dfb: $7b
	rst  $38                                         ; $4dfc: $ff
	jp   hl                                          ; $4dfd: $e9


	ld   b, c                                        ; $4dfe: $41
	ld   de, $6735                                   ; $4dff: $11 $35 $67
	sbc  e                                           ; $4e02: $9b
	rst  $28                                         ; $4e03: $ef
	ei                                               ; $4e04: $fb
	ld   [hl], e                                     ; $4e05: $73
	inc  d                                           ; $4e06: $14
	sbc  [hl]                                        ; $4e07: $9e
	rst  $38                                         ; $4e08: $ff
	jp   hl                                          ; $4e09: $e9


	ld   sp, $4711                                   ; $4e0a: $31 $11 $47
	ld   a, b                                        ; $4e0d: $78
	adc  b                                           ; $4e0e: $88
	cp   [hl]                                        ; $4e0f: $be
	db   $ec                                         ; $4e10: $ec
	add  h                                           ; $4e11: $84
	ld   b, h                                        ; $4e12: $44
	adc  l                                           ; $4e13: $8d
	rst  $28                                         ; $4e14: $ef
	reti                                             ; $4e15: $d9


	ld   h, e                                        ; $4e16: $63
	ld   [hl+], a                                    ; $4e17: $22
	dec  [hl]                                        ; $4e18: $35
	ld   d, [hl]                                     ; $4e19: $56
	adc  d                                           ; $4e1a: $8a
	xor  h                                           ; $4e1b: $ac
	db   $eb                                         ; $4e1c: $eb
	sub  [hl]                                        ; $4e1d: $96
	ld   d, l                                        ; $4e1e: $55
	ld   a, e                                        ; $4e1f: $7b
	call Call_0a9_75b8                               ; $4e20: $cd $b8 $75
	ld   b, l                                        ; $4e23: $45
	ld   d, [hl]                                     ; $4e24: $56
	ld   [hl], l                                     ; $4e25: $75
	ld   d, [hl]                                     ; $4e26: $56
	adc  c                                           ; $4e27: $89
	call Call_0a9_76b9                               ; $4e28: $cd $b9 $76
	adc  d                                           ; $4e2b: $8a
	jp   z, Jump_0a9_66a9                            ; $4e2c: $ca $a9 $66

	ld   d, [hl]                                     ; $4e2f: $56
	adc  b                                           ; $4e30: $88
	sub  a                                           ; $4e31: $97
	ld   d, h                                        ; $4e32: $54
	ld   d, a                                        ; $4e33: $57
	sbc  h                                           ; $4e34: $9c
	cp   d                                           ; $4e35: $ba
	and  a                                           ; $4e36: $a7
	ld   a, b                                        ; $4e37: $78
	adc  d                                           ; $4e38: $8a
	xor  c                                           ; $4e39: $a9
	adc  b                                           ; $4e3a: $88
	halt                                             ; $4e3b: $76
	ld   [hl], a                                     ; $4e3c: $77
	adc  c                                           ; $4e3d: $89
	ld   [hl], a                                     ; $4e3e: $77
	ld   d, h                                        ; $4e3f: $54
	ld   h, a                                        ; $4e40: $67
	sbc  e                                           ; $4e41: $9b
	xor  d                                           ; $4e42: $aa
	sbc  b                                           ; $4e43: $98
	ld   a, b                                        ; $4e44: $78
	adc  b                                           ; $4e45: $88
	xor  d                                           ; $4e46: $aa
	sbc  c                                           ; $4e47: $99
	ld   [hl], a                                     ; $4e48: $77
	ld   [hl], a                                     ; $4e49: $77
	adc  c                                           ; $4e4a: $89
	add  [hl]                                        ; $4e4b: $86
	ld   h, l                                        ; $4e4c: $65
	ld   h, a                                        ; $4e4d: $67
	sbc  d                                           ; $4e4e: $9a
	xor  c                                           ; $4e4f: $a9
	add  a                                           ; $4e50: $87
	ld   [hl], a                                     ; $4e51: $77
	adc  c                                           ; $4e52: $89
	sbc  d                                           ; $4e53: $9a
	sub  a                                           ; $4e54: $97
	sbc  b                                           ; $4e55: $98
	adc  d                                           ; $4e56: $8a
	add  a                                           ; $4e57: $87
	ld   h, [hl]                                     ; $4e58: $66
	ld   h, a                                        ; $4e59: $67
	ld   [hl], a                                     ; $4e5a: $77
	adc  c                                           ; $4e5b: $89
	adc  d                                           ; $4e5c: $8a
	sbc  b                                           ; $4e5d: $98
	sub  a                                           ; $4e5e: $97
	ld   a, c                                        ; $4e5f: $79
	adc  b                                           ; $4e60: $88
	cp   d                                           ; $4e61: $ba
	adc  d                                           ; $4e62: $8a
	halt                                             ; $4e63: $76
	add  a                                           ; $4e64: $87
	ld   a, c                                        ; $4e65: $79
	ld   [hl], a                                     ; $4e66: $77
	add  a                                           ; $4e67: $87
	ld   a, c                                        ; $4e68: $79
	sbc  c                                           ; $4e69: $99
	ld   [hl], a                                     ; $4e6a: $77
	halt                                             ; $4e6b: $76
	adc  d                                           ; $4e6c: $8a
	xor  e                                           ; $4e6d: $ab
	sbc  c                                           ; $4e6e: $99
	add  a                                           ; $4e6f: $87
	ld   [hl], a                                     ; $4e70: $77
	adc  b                                           ; $4e71: $88
	adc  c                                           ; $4e72: $89
	adc  b                                           ; $4e73: $88
	add  a                                           ; $4e74: $87
	ld   [hl], a                                     ; $4e75: $77
	halt                                             ; $4e76: $76
	ld   h, a                                        ; $4e77: $67
	ld   a, c                                        ; $4e78: $79
	xor  b                                           ; $4e79: $a8
	sbc  c                                           ; $4e7a: $99
	sbc  c                                           ; $4e7b: $99
	adc  c                                           ; $4e7c: $89
	ld   [hl], a                                     ; $4e7d: $77
	adc  c                                           ; $4e7e: $89
	sbc  c                                           ; $4e7f: $99
	adc  b                                           ; $4e80: $88
	ld   [hl], a                                     ; $4e81: $77
	ld   [hl], a                                     ; $4e82: $77
	add  a                                           ; $4e83: $87
	ld   a, c                                        ; $4e84: $79
	adc  b                                           ; $4e85: $88
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	adc  b                                           ; $4e8b: $88
	sbc  b                                           ; $4e8c: $98
	sub  a                                           ; $4e8d: $97
	halt                                             ; $4e8e: $76
	ld   h, a                                        ; $4e8f: $67
	adc  c                                           ; $4e90: $89
	sbc  c                                           ; $4e91: $99
	sbc  b                                           ; $4e92: $98
	add  a                                           ; $4e93: $87
	ld   a, b                                        ; $4e94: $78
	ld   a, b                                        ; $4e95: $78
	adc  c                                           ; $4e96: $89
	sbc  c                                           ; $4e97: $99
	adc  c                                           ; $4e98: $89
	add  a                                           ; $4e99: $87
	ld   [hl], a                                     ; $4e9a: $77
	ld   [hl], a                                     ; $4e9b: $77
	sbc  c                                           ; $4e9c: $99
	sbc  c                                           ; $4e9d: $99
	add  a                                           ; $4e9e: $87
	ld   a, b                                        ; $4e9f: $78
	adc  b                                           ; $4ea0: $88
	sub  a                                           ; $4ea1: $97
	ld   [hl], a                                     ; $4ea2: $77
	sbc  c                                           ; $4ea3: $99
	adc  c                                           ; $4ea4: $89
	add  a                                           ; $4ea5: $87
	add  a                                           ; $4ea6: $87
	ld   a, b                                        ; $4ea7: $78
	adc  c                                           ; $4ea8: $89
	sbc  c                                           ; $4ea9: $99
	adc  b                                           ; $4eaa: $88
	ld   [hl], a                                     ; $4eab: $77
	sbc  b                                           ; $4eac: $98
	ld   a, b                                        ; $4ead: $78
	ld   a, b                                        ; $4eae: $78
	sbc  b                                           ; $4eaf: $98
	adc  b                                           ; $4eb0: $88
	add  a                                           ; $4eb1: $87
	ld   [hl], a                                     ; $4eb2: $77
	ld   a, b                                        ; $4eb3: $78
	sbc  b                                           ; $4eb4: $98
	sbc  b                                           ; $4eb5: $98
	add  a                                           ; $4eb6: $87
	ld   [hl], a                                     ; $4eb7: $77
	adc  b                                           ; $4eb8: $88
	sbc  b                                           ; $4eb9: $98
	sbc  b                                           ; $4eba: $98
	ld   a, b                                        ; $4ebb: $78
	adc  b                                           ; $4ebc: $88
	sbc  b                                           ; $4ebd: $98
	add  a                                           ; $4ebe: $87
	add  a                                           ; $4ebf: $87
	ld   a, c                                        ; $4ec0: $79
	adc  c                                           ; $4ec1: $89
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	ld   [hl], a                                     ; $4ec4: $77
	ld   a, b                                        ; $4ec5: $78
	adc  b                                           ; $4ec6: $88
	sbc  b                                           ; $4ec7: $98
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	adc  c                                           ; $4ecb: $89
	sbc  c                                           ; $4ecc: $99
	sbc  b                                           ; $4ecd: $98
	add  a                                           ; $4ece: $87
	ld   a, b                                        ; $4ecf: $78
	adc  b                                           ; $4ed0: $88
	adc  c                                           ; $4ed1: $89
	sbc  b                                           ; $4ed2: $98
	adc  b                                           ; $4ed3: $88
	ld   a, b                                        ; $4ed4: $78
	adc  b                                           ; $4ed5: $88
	sbc  c                                           ; $4ed6: $99
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  c                                           ; $4ed9: $89
	sbc  b                                           ; $4eda: $98
	sbc  b                                           ; $4edb: $98
	ld   a, b                                        ; $4edc: $78
	add  a                                           ; $4edd: $87
	adc  c                                           ; $4ede: $89
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	adc  b                                           ; $4ee1: $88
	adc  b                                           ; $4ee2: $88
	adc  b                                           ; $4ee3: $88
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	sbc  b                                           ; $4ee8: $98
	adc  b                                           ; $4ee9: $88
	ld   a, b                                        ; $4eea: $78
	adc  b                                           ; $4eeb: $88
	adc  b                                           ; $4eec: $88
	adc  c                                           ; $4eed: $89
	adc  b                                           ; $4eee: $88
	adc  b                                           ; $4eef: $88
	ld   a, b                                        ; $4ef0: $78
	adc  b                                           ; $4ef1: $88
	sbc  b                                           ; $4ef2: $98
	sbc  c                                           ; $4ef3: $99
	adc  b                                           ; $4ef4: $88
	add  a                                           ; $4ef5: $87
	ld   a, b                                        ; $4ef6: $78
	ld   a, b                                        ; $4ef7: $78
	adc  b                                           ; $4ef8: $88
	sbc  b                                           ; $4ef9: $98
	sbc  b                                           ; $4efa: $98
	add  a                                           ; $4efb: $87
	ld   a, b                                        ; $4efc: $78
	adc  b                                           ; $4efd: $88
	adc  b                                           ; $4efe: $88
	adc  b                                           ; $4eff: $88
	adc  b                                           ; $4f00: $88
	adc  b                                           ; $4f01: $88
	adc  b                                           ; $4f02: $88
	add  a                                           ; $4f03: $87
	adc  b                                           ; $4f04: $88
	adc  c                                           ; $4f05: $89
	sbc  c                                           ; $4f06: $99
	adc  b                                           ; $4f07: $88
	add  a                                           ; $4f08: $87
	ld   a, b                                        ; $4f09: $78
	adc  b                                           ; $4f0a: $88
	sbc  b                                           ; $4f0b: $98
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	adc  b                                           ; $4f0e: $88
	adc  b                                           ; $4f0f: $88
	adc  b                                           ; $4f10: $88
	adc  c                                           ; $4f11: $89
	sbc  b                                           ; $4f12: $98
	adc  b                                           ; $4f13: $88
	ld   [hl], a                                     ; $4f14: $77
	ld   a, b                                        ; $4f15: $78
	adc  c                                           ; $4f16: $89
	sbc  c                                           ; $4f17: $99
	adc  b                                           ; $4f18: $88
	ld   [hl], a                                     ; $4f19: $77
	ld   a, b                                        ; $4f1a: $78
	adc  b                                           ; $4f1b: $88
	sbc  c                                           ; $4f1c: $99
	adc  b                                           ; $4f1d: $88
	adc  b                                           ; $4f1e: $88
	adc  b                                           ; $4f1f: $88
	adc  b                                           ; $4f20: $88
	adc  b                                           ; $4f21: $88
	adc  b                                           ; $4f22: $88
	adc  b                                           ; $4f23: $88
	adc  b                                           ; $4f24: $88
	adc  b                                           ; $4f25: $88
	adc  b                                           ; $4f26: $88
	adc  b                                           ; $4f27: $88
	adc  b                                           ; $4f28: $88
	adc  c                                           ; $4f29: $89
	adc  b                                           ; $4f2a: $88
	adc  b                                           ; $4f2b: $88
	adc  b                                           ; $4f2c: $88
	adc  b                                           ; $4f2d: $88
	adc  b                                           ; $4f2e: $88
	adc  b                                           ; $4f2f: $88
	adc  b                                           ; $4f30: $88
	adc  b                                           ; $4f31: $88
	adc  b                                           ; $4f32: $88
	adc  b                                           ; $4f33: $88
	adc  b                                           ; $4f34: $88
	adc  b                                           ; $4f35: $88
	adc  b                                           ; $4f36: $88
	adc  b                                           ; $4f37: $88
	adc  b                                           ; $4f38: $88
	adc  b                                           ; $4f39: $88
	adc  b                                           ; $4f3a: $88
	adc  b                                           ; $4f3b: $88
	adc  b                                           ; $4f3c: $88
	adc  b                                           ; $4f3d: $88
	adc  b                                           ; $4f3e: $88
	adc  b                                           ; $4f3f: $88
	adc  b                                           ; $4f40: $88
	adc  b                                           ; $4f41: $88
	adc  b                                           ; $4f42: $88
	adc  b                                           ; $4f43: $88
	adc  b                                           ; $4f44: $88
	adc  b                                           ; $4f45: $88
	adc  b                                           ; $4f46: $88
	adc  b                                           ; $4f47: $88
	adc  b                                           ; $4f48: $88
	adc  b                                           ; $4f49: $88
	adc  b                                           ; $4f4a: $88
	adc  b                                           ; $4f4b: $88
	adc  b                                           ; $4f4c: $88
	adc  b                                           ; $4f4d: $88
	adc  b                                           ; $4f4e: $88
	adc  b                                           ; $4f4f: $88
	adc  b                                           ; $4f50: $88
	adc  b                                           ; $4f51: $88
	adc  b                                           ; $4f52: $88
	adc  b                                           ; $4f53: $88
	adc  b                                           ; $4f54: $88
	adc  b                                           ; $4f55: $88
	adc  b                                           ; $4f56: $88
	adc  b                                           ; $4f57: $88
	adc  b                                           ; $4f58: $88
	adc  b                                           ; $4f59: $88
	adc  b                                           ; $4f5a: $88
	adc  b                                           ; $4f5b: $88
	adc  b                                           ; $4f5c: $88
	adc  b                                           ; $4f5d: $88
	adc  b                                           ; $4f5e: $88
	adc  b                                           ; $4f5f: $88
	adc  b                                           ; $4f60: $88
	adc  b                                           ; $4f61: $88
	adc  b                                           ; $4f62: $88
	adc  b                                           ; $4f63: $88
	adc  b                                           ; $4f64: $88
	adc  b                                           ; $4f65: $88
	adc  b                                           ; $4f66: $88
	adc  b                                           ; $4f67: $88
	adc  b                                           ; $4f68: $88
	adc  b                                           ; $4f69: $88
	adc  b                                           ; $4f6a: $88
	adc  b                                           ; $4f6b: $88
	adc  b                                           ; $4f6c: $88
	adc  b                                           ; $4f6d: $88
	adc  b                                           ; $4f6e: $88
	adc  b                                           ; $4f6f: $88
	adc  b                                           ; $4f70: $88
	adc  b                                           ; $4f71: $88
	adc  b                                           ; $4f72: $88
	adc  b                                           ; $4f73: $88
	adc  b                                           ; $4f74: $88
	adc  b                                           ; $4f75: $88
	adc  b                                           ; $4f76: $88
	adc  b                                           ; $4f77: $88
	adc  b                                           ; $4f78: $88
	adc  b                                           ; $4f79: $88
	adc  b                                           ; $4f7a: $88
	adc  b                                           ; $4f7b: $88
	adc  b                                           ; $4f7c: $88
	adc  b                                           ; $4f7d: $88
	adc  b                                           ; $4f7e: $88
	adc  b                                           ; $4f7f: $88
	adc  b                                           ; $4f80: $88
	adc  b                                           ; $4f81: $88
	adc  b                                           ; $4f82: $88
	adc  b                                           ; $4f83: $88
	adc  b                                           ; $4f84: $88
	adc  b                                           ; $4f85: $88
	adc  b                                           ; $4f86: $88
	adc  b                                           ; $4f87: $88
	adc  b                                           ; $4f88: $88
	adc  b                                           ; $4f89: $88
	adc  b                                           ; $4f8a: $88
	adc  b                                           ; $4f8b: $88
	adc  b                                           ; $4f8c: $88
	adc  b                                           ; $4f8d: $88
	adc  b                                           ; $4f8e: $88
	adc  b                                           ; $4f8f: $88
	adc  b                                           ; $4f90: $88
	adc  b                                           ; $4f91: $88
	adc  b                                           ; $4f92: $88
	adc  b                                           ; $4f93: $88
	adc  b                                           ; $4f94: $88
	adc  b                                           ; $4f95: $88
	adc  b                                           ; $4f96: $88
	adc  b                                           ; $4f97: $88
	adc  b                                           ; $4f98: $88
	adc  b                                           ; $4f99: $88
	adc  b                                           ; $4f9a: $88
	adc  b                                           ; $4f9b: $88
	adc  b                                           ; $4f9c: $88
	adc  b                                           ; $4f9d: $88
	adc  b                                           ; $4f9e: $88
	adc  b                                           ; $4f9f: $88
	adc  b                                           ; $4fa0: $88
	adc  b                                           ; $4fa1: $88
	adc  b                                           ; $4fa2: $88
	adc  b                                           ; $4fa3: $88
	adc  b                                           ; $4fa4: $88
	adc  b                                           ; $4fa5: $88
	adc  b                                           ; $4fa6: $88
	adc  b                                           ; $4fa7: $88
	adc  b                                           ; $4fa8: $88
	adc  b                                           ; $4fa9: $88
	adc  b                                           ; $4faa: $88
	adc  b                                           ; $4fab: $88
	adc  b                                           ; $4fac: $88
	adc  b                                           ; $4fad: $88
	adc  b                                           ; $4fae: $88
	adc  b                                           ; $4faf: $88
	adc  b                                           ; $4fb0: $88
	adc  b                                           ; $4fb1: $88
	adc  b                                           ; $4fb2: $88
	adc  b                                           ; $4fb3: $88
	adc  b                                           ; $4fb4: $88
	adc  b                                           ; $4fb5: $88
	adc  b                                           ; $4fb6: $88
	adc  b                                           ; $4fb7: $88
	adc  b                                           ; $4fb8: $88
	adc  b                                           ; $4fb9: $88
	adc  b                                           ; $4fba: $88
	adc  b                                           ; $4fbb: $88
	adc  b                                           ; $4fbc: $88
	adc  b                                           ; $4fbd: $88
	adc  b                                           ; $4fbe: $88
	adc  b                                           ; $4fbf: $88
	adc  b                                           ; $4fc0: $88
	adc  b                                           ; $4fc1: $88
	adc  b                                           ; $4fc2: $88
	adc  b                                           ; $4fc3: $88
	adc  b                                           ; $4fc4: $88
	adc  b                                           ; $4fc5: $88
	adc  b                                           ; $4fc6: $88
	adc  b                                           ; $4fc7: $88
	adc  b                                           ; $4fc8: $88
	adc  b                                           ; $4fc9: $88
	adc  b                                           ; $4fca: $88
	adc  b                                           ; $4fcb: $88
	adc  b                                           ; $4fcc: $88
	adc  b                                           ; $4fcd: $88
	adc  b                                           ; $4fce: $88
	adc  b                                           ; $4fcf: $88
	adc  b                                           ; $4fd0: $88
	adc  b                                           ; $4fd1: $88
	adc  b                                           ; $4fd2: $88
	adc  b                                           ; $4fd3: $88
	adc  b                                           ; $4fd4: $88
	adc  b                                           ; $4fd5: $88
	adc  b                                           ; $4fd6: $88
	adc  b                                           ; $4fd7: $88
	adc  b                                           ; $4fd8: $88
	adc  b                                           ; $4fd9: $88
	adc  b                                           ; $4fda: $88
	adc  b                                           ; $4fdb: $88
	adc  b                                           ; $4fdc: $88
	adc  b                                           ; $4fdd: $88
	adc  b                                           ; $4fde: $88
	adc  b                                           ; $4fdf: $88
	adc  b                                           ; $4fe0: $88
	adc  b                                           ; $4fe1: $88
	adc  b                                           ; $4fe2: $88
	adc  b                                           ; $4fe3: $88
	adc  b                                           ; $4fe4: $88
	adc  b                                           ; $4fe5: $88
	adc  b                                           ; $4fe6: $88
	adc  b                                           ; $4fe7: $88
	adc  b                                           ; $4fe8: $88
	adc  b                                           ; $4fe9: $88
	adc  b                                           ; $4fea: $88
	adc  b                                           ; $4feb: $88
	adc  b                                           ; $4fec: $88
	adc  b                                           ; $4fed: $88
	adc  b                                           ; $4fee: $88
	adc  b                                           ; $4fef: $88
	adc  b                                           ; $4ff0: $88
	adc  b                                           ; $4ff1: $88
	adc  b                                           ; $4ff2: $88
	adc  b                                           ; $4ff3: $88
	adc  b                                           ; $4ff4: $88
	adc  b                                           ; $4ff5: $88
	adc  b                                           ; $4ff6: $88
	adc  b                                           ; $4ff7: $88
	adc  b                                           ; $4ff8: $88
	adc  b                                           ; $4ff9: $88
	adc  b                                           ; $4ffa: $88
	adc  b                                           ; $4ffb: $88
	adc  b                                           ; $4ffc: $88
	adc  b                                           ; $4ffd: $88
	adc  b                                           ; $4ffe: $88
	adc  b                                           ; $4fff: $88
	adc  b                                           ; $5000: $88
	adc  b                                           ; $5001: $88
	adc  b                                           ; $5002: $88
	adc  b                                           ; $5003: $88
	adc  b                                           ; $5004: $88
	adc  b                                           ; $5005: $88
	adc  b                                           ; $5006: $88
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
	add  a                                           ; $516b: $87
	ld   [hl], a                                     ; $516c: $77
	ld   a, b                                        ; $516d: $78
	adc  b                                           ; $516e: $88
	adc  b                                           ; $516f: $88
	adc  b                                           ; $5170: $88
	adc  b                                           ; $5171: $88
	adc  b                                           ; $5172: $88
	adc  b                                           ; $5173: $88
	adc  b                                           ; $5174: $88
	adc  b                                           ; $5175: $88
	adc  c                                           ; $5176: $89
	adc  c                                           ; $5177: $89
	adc  b                                           ; $5178: $88
	halt                                             ; $5179: $76
	ld   h, l                                        ; $517a: $65
	ld   d, [hl]                                     ; $517b: $56
	ld   h, a                                        ; $517c: $67
	ld   a, b                                        ; $517d: $78
	adc  b                                           ; $517e: $88
	xor  e                                           ; $517f: $ab
	xor  d                                           ; $5180: $aa
	sbc  b                                           ; $5181: $98
	halt                                             ; $5182: $76
	ld   h, [hl]                                     ; $5183: $66
	adc  c                                           ; $5184: $89
	xor  h                                           ; $5185: $ac
	cp   d                                           ; $5186: $ba
	xor  c                                           ; $5187: $a9
	ld   [hl], a                                     ; $5188: $77
	ld   [hl], a                                     ; $5189: $77
	ld   [hl], a                                     ; $518a: $77
	ld   [hl], a                                     ; $518b: $77
	adc  b                                           ; $518c: $88
	sbc  c                                           ; $518d: $99
	xor  d                                           ; $518e: $aa
	sbc  b                                           ; $518f: $98
	ld   [hl], a                                     ; $5190: $77
	ld   h, [hl]                                     ; $5191: $66
	ld   [hl], a                                     ; $5192: $77
	sbc  c                                           ; $5193: $99
	sbc  c                                           ; $5194: $99
	sbc  c                                           ; $5195: $99
	adc  c                                           ; $5196: $89
	sbc  b                                           ; $5197: $98
	adc  b                                           ; $5198: $88
	add  a                                           ; $5199: $87
	halt                                             ; $519a: $76
	ld   d, h                                        ; $519b: $54
	ld   de, $9f15                                   ; $519c: $11 $15 $9f
	rst  $38                                         ; $519f: $ff
	ld   hl, sp+$21                                  ; $51a0: $f8 $21
	ld   [de], a                                     ; $51a2: $12
	ld   a, e                                        ; $51a3: $7b
	jp   z, Jump_0a9_5996                            ; $51a4: $ca $96 $59

	xor  a                                           ; $51a7: $af
	rst  $38                                         ; $51a8: $ff
	add  $31                                         ; $51a9: $c6 $31
	dec  d                                           ; $51ab: $15
	ld   a, h                                        ; $51ac: $7c
	res  5, b                                        ; $51ad: $cb $a8
	ld   [hl], a                                     ; $51af: $77
	adc  d                                           ; $51b0: $8a
	xor  d                                           ; $51b1: $aa
	add  l                                           ; $51b2: $85
	ld   d, h                                        ; $51b3: $54
	ld   e, c                                        ; $51b4: $59
	xor  h                                           ; $51b5: $ac
	cp   d                                           ; $51b6: $ba
	add  [hl]                                        ; $51b7: $86
	ld   d, h                                        ; $51b8: $54
	ld   h, a                                        ; $51b9: $67
	ld   a, b                                        ; $51ba: $78
	halt                                             ; $51bb: $76
	ld   h, [hl]                                     ; $51bc: $66
	ld   h, [hl]                                     ; $51bd: $66
	ld   [hl], a                                     ; $51be: $77
	adc  e                                           ; $51bf: $8b
	cp   h                                           ; $51c0: $bc
	jp   c, Jump_0a9_6797                            ; $51c1: $da $97 $67

	ld   a, c                                        ; $51c4: $79
	xor  d                                           ; $51c5: $aa
	xor  b                                           ; $51c6: $a8
	add  a                                           ; $51c7: $87

Call_0a9_51c8:
	ld   a, b                                        ; $51c8: $78
	sbc  c                                           ; $51c9: $99
	ld   [hl], h                                     ; $51ca: $74
	ld   de, $7f12                                   ; $51cb: $11 $12 $7f
	rst  $38                                         ; $51ce: $ff
	ld   sp, hl                                      ; $51cf: $f9
	ld   de, $7d11                                   ; $51d0: $11 $11 $7d
	ei                                               ; $51d3: $fb
	or   l                                           ; $51d4: $b5
	ld   c, e                                        ; $51d5: $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51d6: $cf
	rst  $38                                         ; $51d7: $ff
	jp   nz, $1511                                   ; $51d8: $c2 $11 $15

	adc  [hl]                                        ; $51db: $8e
	ld   a, [$13a4]                                  ; $51dc: $fa $a4 $13
	add  hl, sp                                      ; $51df: $39
	xor  h                                           ; $51e0: $ac
	ret  c                                           ; $51e1: $d8

	ld   [hl], h                                     ; $51e2: $74
	ld   b, a                                        ; $51e3: $47
	sbc  h                                           ; $51e4: $9c
	call c, Call_0a9_77a8                            ; $51e5: $dc $a8 $77
	sbc  d                                           ; $51e8: $9a
	cp   e                                           ; $51e9: $bb
	sub  a                                           ; $51ea: $97
	ld   h, l                                        ; $51eb: $65
	ld   d, [hl]                                     ; $51ec: $56
	ld   h, h                                        ; $51ed: $64
	ld   de, $bf14                                   ; $51ee: $11 $14 $bf
	rst  $38                                         ; $51f1: $ff
	or   $11                                         ; $51f2: $f6 $11
	ld   de, $ff8e                                   ; $51f4: $11 $8e $ff
	jp   c, $ae9b                                    ; $51f7: $da $9b $ae

	reti                                             ; $51fa: $d9


	ld   h, d                                        ; $51fb: $62
	ld   bc, $1123                                   ; $51fc: $01 $23 $11
	ld   [hl], $df                                   ; $51ff: $36 $df
	rst  $38                                         ; $5201: $ff
	or   $11                                         ; $5202: $f6 $11
	ld   de, $ff6d                                   ; $5204: $11 $6d $ff
	db   $fc                                         ; $5207: $fc
	cp   l                                           ; $5208: $bd
	cp   h                                           ; $5209: $bc
	rst  ToBoot                                         ; $520a: $c7
	ld   h, d                                        ; $520b: $62
	ld   de, $1111                                   ; $520c: $11 $11 $11
	ld   h, $ff                                      ; $520f: $26 $ff
	rst  $38                                         ; $5211: $ff
	push af                                          ; $5212: $f5
	ld   de, $7d11                                   ; $5213: $11 $11 $7d
	rst  $38                                         ; $5216: $ff
	db   $fc                                         ; $5217: $fc
	xor  h                                           ; $5218: $ac
	call Call_0a9_51c8                               ; $5219: $cd $c8 $51
	ld   de, $1111                                   ; $521c: $11 $11 $11
	sbc  l                                           ; $521f: $9d
	rst  $38                                         ; $5220: $ff
	rst  $38                                         ; $5221: $ff
	sub  c                                           ; $5222: $91
	ld   de, $bf14                                   ; $5223: $11 $14 $bf
	rst  $38                                         ; $5226: $ff
	db   $fc                                         ; $5227: $fc
	call c, Call_0a9_75bb                            ; $5228: $dc $bb $75
	ld   sp, $1111                                   ; $522b: $31 $11 $11
	rla                                              ; $522e: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $522f: $cf
	rst  $38                                         ; $5230: $ff
	ld   hl, sp+$11                                  ; $5231: $f8 $11
	ld   de, $ff5d                                   ; $5233: $11 $5d $ff
	rst  $38                                         ; $5236: $ff
	adc  d                                           ; $5237: $8a
	ld   a, b                                        ; $5238: $78
	jp   c, $11b7                                    ; $5239: $da $b7 $11

	ld   de, $cf11                                   ; $523c: $11 $11 $cf
	rst  $38                                         ; $523f: $ff
	rst  $38                                         ; $5240: $ff
	ld   de, $4a11                                   ; $5241: $11 $11 $4a
	rst  $38                                         ; $5244: $ff
	rst  $38                                         ; $5245: $ff
	ld   h, [hl]                                     ; $5246: $66
	add  a                                           ; $5247: $87
	xor  $b9                                         ; $5248: $ee $b9
	ld   hl, $1111                                   ; $524a: $21 $11 $11
	sbc  a                                           ; $524d: $9f
	rst  $38                                         ; $524e: $ff
	rst  $38                                         ; $524f: $ff
	ld   de, $2b11                                   ; $5250: $11 $11 $2b
	rst  $38                                         ; $5253: $ff
	db   $fd                                         ; $5254: $fd
	ld   d, d                                        ; $5255: $52
	halt                                             ; $5256: $76
	rst  $28                                         ; $5257: $ef
	db   $dd                                         ; $5258: $dd
	ld   sp, $1111                                   ; $5259: $31 $11 $11
	xor  a                                           ; $525c: $af
	rst  $38                                         ; $525d: $ff
	rst  $38                                         ; $525e: $ff
	ld   de, $6f11                                   ; $525f: $11 $11 $6f
	rst  $38                                         ; $5262: $ff
	rst  ToBoot                                         ; $5263: $c7
	ld   de, $ff67                                   ; $5264: $11 $67 $ff
	db   $fd                                         ; $5267: $fd
	ld   sp, $1111                                   ; $5268: $31 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $526b: $cf
	rst  $38                                         ; $526c: $ff
	ei                                               ; $526d: $fb
	ld   de, $cf11                                   ; $526e: $11 $11 $cf
	rst  $38                                         ; $5271: $ff
	add  e                                           ; $5272: $83
	ld   de, $ff59                                   ; $5273: $11 $59 $ff
	ld   a, [$1121]                                  ; $5276: $fa $21 $11
	rla                                              ; $5279: $17
	rst  $38                                         ; $527a: $ff
	rst  $38                                         ; $527b: $ff
	pop  de                                          ; $527c: $d1
	ld   de, $ff19                                   ; $527d: $11 $19 $ff
	db   $fc                                         ; $5280: $fc
	ld   b, c                                        ; $5281: $41
	ld   de, $ff6c                                   ; $5282: $11 $6c $ff
	push de                                          ; $5285: $d5
	ld   de, $8f11                                   ; $5286: $11 $11 $8f
	rst  $38                                         ; $5289: $ff
	ei                                               ; $528a: $fb
	ld   de, $cf12                                   ; $528b: $11 $12 $cf
	rst  $38                                         ; $528e: $ff
	jp   $1511                                       ; $528f: $c3 $11 $15


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5292: $cf
	ld   a, [$1121]                                  ; $5293: $fa $21 $11
	ld   c, a                                        ; $5296: $4f
	rst  $38                                         ; $5297: $ff
	cp   $21                                         ; $5298: $fe $21
	ld   de, $ff8f                                   ; $529a: $11 $8f $ff
	rst  $30                                         ; $529d: $f7
	ld   de, $8c12                                   ; $529e: $11 $12 $8c
	reti                                             ; $52a1: $d9


	ld   sp, $6f11                                   ; $52a2: $31 $11 $6f
	rst  $38                                         ; $52a5: $ff
	db   $fd                                         ; $52a6: $fd

Jump_0a9_52a7:
	ld   hl, $8f11                                   ; $52a7: $21 $11 $8f
	rst  $38                                         ; $52aa: $ff
	rst  $20                                         ; $52ab: $e7
	ld   hl, $8a14                                   ; $52ac: $21 $14 $8a
	and  a                                           ; $52af: $a7
	ld   de, $9f12                                   ; $52b0: $11 $12 $9f
	rst  $38                                         ; $52b3: $ff
	ld   a, [$1431]                                  ; $52b4: $fa $31 $14
	xor  [hl]                                        ; $52b7: $ae
	cp   $b6                                         ; $52b8: $fe $b6
	ld   [hl-], a                                    ; $52ba: $32
	ld   [hl], $89                                   ; $52bb: $36 $89
	sub  l                                           ; $52bd: $95
	ld   de, $cf15                                   ; $52be: $11 $15 $cf
	rst  $38                                         ; $52c1: $ff
	ret  c                                           ; $52c2: $d8

	ld   b, e                                        ; $52c3: $43
	ld   b, a                                        ; $52c4: $47
	call $85db                                       ; $52c5: $cd $db $85
	ld   b, h                                        ; $52c8: $44
	ld   l, c                                        ; $52c9: $69
	sbc  c                                           ; $52ca: $99
	ld   [hl], h                                     ; $52cb: $74
	ld   hl, $ae26                                   ; $52cc: $21 $26 $ae
	rst  $38                                         ; $52cf: $ff
	ret  c                                           ; $52d0: $d8

	ld   d, l                                        ; $52d1: $55
	ld   e, b                                        ; $52d2: $58
	xor  e                                           ; $52d3: $ab
	jp   z, Jump_0a9_5586                            ; $52d4: $ca $86 $55

	ld   h, a                                        ; $52d7: $67
	sbc  c                                           ; $52d8: $99
	sub  a                                           ; $52d9: $97
	ld   d, e                                        ; $52da: $53
	inc  [hl]                                        ; $52db: $34
	ld   l, c                                        ; $52dc: $69
	cp   l                                           ; $52dd: $bd
	res  0, a                                        ; $52de: $cb $87
	ld   h, [hl]                                     ; $52e0: $66
	adc  d                                           ; $52e1: $8a
	xor  e                                           ; $52e2: $ab
	xor  c                                           ; $52e3: $a9
	halt                                             ; $52e4: $76
	ld   h, [hl]                                     ; $52e5: $66
	adc  c                                           ; $52e6: $89
	xor  c                                           ; $52e7: $a9
	add  [hl]                                        ; $52e8: $86
	ld   d, h                                        ; $52e9: $54
	ld   d, [hl]                                     ; $52ea: $56
	ld   a, c                                        ; $52eb: $79
	cp   d                                           ; $52ec: $ba
	cp   d                                           ; $52ed: $ba
	sub  a                                           ; $52ee: $97
	ld   a, b                                        ; $52ef: $78
	adc  c                                           ; $52f0: $89
	xor  c                                           ; $52f1: $a9
	sbc  b                                           ; $52f2: $98
	ld   [hl], a                                     ; $52f3: $77
	ld   a, b                                        ; $52f4: $78
	sbc  c                                           ; $52f5: $99
	sbc  b                                           ; $52f6: $98
	add  a                                           ; $52f7: $87
	ld   h, [hl]                                     ; $52f8: $66
	ld   h, a                                        ; $52f9: $67
	ld   a, b                                        ; $52fa: $78
	sbc  c                                           ; $52fb: $99
	xor  c                                           ; $52fc: $a9
	sbc  b                                           ; $52fd: $98
	ld   a, b                                        ; $52fe: $78
	adc  c                                           ; $52ff: $89
	sbc  b                                           ; $5300: $98
	sbc  b                                           ; $5301: $98
	ld   [hl], a                                     ; $5302: $77
	ld   [hl], a                                     ; $5303: $77
	adc  b                                           ; $5304: $88
	sbc  b                                           ; $5305: $98
	adc  b                                           ; $5306: $88
	ld   a, b                                        ; $5307: $78
	ld   a, b                                        ; $5308: $78
	adc  b                                           ; $5309: $88
	sbc  b                                           ; $530a: $98
	adc  b                                           ; $530b: $88
	adc  b                                           ; $530c: $88
	adc  b                                           ; $530d: $88
	adc  c                                           ; $530e: $89
	sbc  c                                           ; $530f: $99
	sbc  b                                           ; $5310: $98
	adc  b                                           ; $5311: $88
	adc  b                                           ; $5312: $88
	adc  b                                           ; $5313: $88
	add  a                                           ; $5314: $87
	ld   [hl], a                                     ; $5315: $77
	adc  c                                           ; $5316: $89
	sbc  c                                           ; $5317: $99
	sbc  b                                           ; $5318: $98
	ld   [hl], a                                     ; $5319: $77
	ld   [hl], a                                     ; $531a: $77
	adc  c                                           ; $531b: $89
	adc  c                                           ; $531c: $89
	sbc  b                                           ; $531d: $98
	sbc  b                                           ; $531e: $98
	adc  b                                           ; $531f: $88
	adc  b                                           ; $5320: $88
	adc  b                                           ; $5321: $88
	add  a                                           ; $5322: $87
	adc  b                                           ; $5323: $88
	adc  b                                           ; $5324: $88
	sbc  c                                           ; $5325: $99
	adc  c                                           ; $5326: $89
	adc  b                                           ; $5327: $88
	ld   [hl], a                                     ; $5328: $77
	ld   [hl], a                                     ; $5329: $77
	adc  b                                           ; $532a: $88
	sbc  c                                           ; $532b: $99
	adc  b                                           ; $532c: $88
	add  a                                           ; $532d: $87
	ld   a, b                                        ; $532e: $78
	adc  c                                           ; $532f: $89
	adc  b                                           ; $5330: $88
	add  a                                           ; $5331: $87
	ld   a, b                                        ; $5332: $78
	adc  b                                           ; $5333: $88
	sbc  b                                           ; $5334: $98
	adc  b                                           ; $5335: $88
	adc  b                                           ; $5336: $88
	ld   [hl], a                                     ; $5337: $77
	adc  b                                           ; $5338: $88
	sbc  b                                           ; $5339: $98
	adc  c                                           ; $533a: $89
	add  a                                           ; $533b: $87
	ld   [hl], a                                     ; $533c: $77
	ld   a, b                                        ; $533d: $78
	adc  b                                           ; $533e: $88
	sbc  b                                           ; $533f: $98
	add  a                                           ; $5340: $87
	ld   [hl], a                                     ; $5341: $77
	adc  b                                           ; $5342: $88
	sbc  b                                           ; $5343: $98
	adc  c                                           ; $5344: $89
	sbc  b                                           ; $5345: $98
	adc  b                                           ; $5346: $88
	adc  b                                           ; $5347: $88
	sbc  b                                           ; $5348: $98
	adc  b                                           ; $5349: $88
	add  a                                           ; $534a: $87
	adc  b                                           ; $534b: $88
	adc  c                                           ; $534c: $89
	sbc  b                                           ; $534d: $98
	add  a                                           ; $534e: $87
	ld   [hl], a                                     ; $534f: $77
	adc  b                                           ; $5350: $88
	sbc  c                                           ; $5351: $99
	sbc  c                                           ; $5352: $99
	sbc  b                                           ; $5353: $98
	adc  b                                           ; $5354: $88
	adc  b                                           ; $5355: $88
	adc  b                                           ; $5356: $88
	adc  b                                           ; $5357: $88
	adc  b                                           ; $5358: $88
	adc  b                                           ; $5359: $88
	adc  b                                           ; $535a: $88
	sbc  c                                           ; $535b: $99
	adc  b                                           ; $535c: $88
	add  a                                           ; $535d: $87
	adc  b                                           ; $535e: $88
	adc  c                                           ; $535f: $89
	sbc  c                                           ; $5360: $99
	sbc  c                                           ; $5361: $99
	adc  b                                           ; $5362: $88
	adc  b                                           ; $5363: $88
	adc  b                                           ; $5364: $88
	adc  b                                           ; $5365: $88
	adc  b                                           ; $5366: $88
	adc  b                                           ; $5367: $88
	adc  b                                           ; $5368: $88
	adc  b                                           ; $5369: $88
	adc  b                                           ; $536a: $88
	adc  b                                           ; $536b: $88
	adc  b                                           ; $536c: $88
	adc  b                                           ; $536d: $88
	adc  b                                           ; $536e: $88
	adc  c                                           ; $536f: $89
	sbc  c                                           ; $5370: $99
	sbc  b                                           ; $5371: $98
	adc  b                                           ; $5372: $88
	ld   [hl], a                                     ; $5373: $77
	adc  b                                           ; $5374: $88
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	adc  b                                           ; $5377: $88
	adc  b                                           ; $5378: $88
	adc  b                                           ; $5379: $88
	adc  b                                           ; $537a: $88
	adc  b                                           ; $537b: $88
	adc  b                                           ; $537c: $88
	adc  b                                           ; $537d: $88
	sbc  c                                           ; $537e: $99
	sbc  b                                           ; $537f: $98
	adc  b                                           ; $5380: $88
	adc  b                                           ; $5381: $88
	adc  b                                           ; $5382: $88
	adc  b                                           ; $5383: $88
	adc  b                                           ; $5384: $88
	adc  b                                           ; $5385: $88
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	adc  b                                           ; $5389: $88
	adc  b                                           ; $538a: $88
	adc  b                                           ; $538b: $88
	adc  c                                           ; $538c: $89
	sbc  c                                           ; $538d: $99
	adc  b                                           ; $538e: $88
	adc  b                                           ; $538f: $88
	adc  b                                           ; $5390: $88
	adc  b                                           ; $5391: $88
	adc  b                                           ; $5392: $88
	adc  b                                           ; $5393: $88
	adc  b                                           ; $5394: $88
	adc  b                                           ; $5395: $88
	adc  b                                           ; $5396: $88
	adc  b                                           ; $5397: $88
	adc  b                                           ; $5398: $88
	adc  b                                           ; $5399: $88
	adc  b                                           ; $539a: $88
	sbc  c                                           ; $539b: $99
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
	adc  b                                           ; $53ef: $88
	adc  b                                           ; $53f0: $88
	adc  b                                           ; $53f1: $88
	adc  b                                           ; $53f2: $88
	adc  b                                           ; $53f3: $88
	adc  b                                           ; $53f4: $88
	adc  b                                           ; $53f5: $88
	adc  b                                           ; $53f6: $88
	adc  b                                           ; $53f7: $88
	adc  b                                           ; $53f8: $88
	adc  b                                           ; $53f9: $88
	adc  b                                           ; $53fa: $88
	adc  b                                           ; $53fb: $88
	adc  b                                           ; $53fc: $88
	adc  b                                           ; $53fd: $88
	adc  b                                           ; $53fe: $88
	adc  b                                           ; $53ff: $88
	adc  b                                           ; $5400: $88
	adc  b                                           ; $5401: $88
	adc  b                                           ; $5402: $88
	adc  b                                           ; $5403: $88
	adc  b                                           ; $5404: $88
	adc  b                                           ; $5405: $88
	adc  b                                           ; $5406: $88
	adc  b                                           ; $5407: $88
	adc  b                                           ; $5408: $88
	adc  b                                           ; $5409: $88
	adc  b                                           ; $540a: $88
	adc  b                                           ; $540b: $88
	adc  b                                           ; $540c: $88
	adc  b                                           ; $540d: $88
	adc  b                                           ; $540e: $88
	adc  b                                           ; $540f: $88
	adc  b                                           ; $5410: $88
	adc  b                                           ; $5411: $88
	adc  b                                           ; $5412: $88
	adc  b                                           ; $5413: $88
	adc  b                                           ; $5414: $88
	adc  b                                           ; $5415: $88
	adc  b                                           ; $5416: $88
	adc  b                                           ; $5417: $88
	adc  b                                           ; $5418: $88
	adc  b                                           ; $5419: $88
	adc  b                                           ; $541a: $88
	adc  b                                           ; $541b: $88
	adc  b                                           ; $541c: $88
	adc  b                                           ; $541d: $88
	adc  b                                           ; $541e: $88
	adc  b                                           ; $541f: $88
	adc  b                                           ; $5420: $88
	adc  b                                           ; $5421: $88
	adc  b                                           ; $5422: $88
	adc  b                                           ; $5423: $88
	adc  b                                           ; $5424: $88
	adc  b                                           ; $5425: $88
	adc  b                                           ; $5426: $88
	adc  b                                           ; $5427: $88
	adc  b                                           ; $5428: $88
	adc  b                                           ; $5429: $88
	adc  b                                           ; $542a: $88
	adc  b                                           ; $542b: $88
	adc  b                                           ; $542c: $88
	adc  b                                           ; $542d: $88
	adc  b                                           ; $542e: $88
	adc  b                                           ; $542f: $88
	adc  b                                           ; $5430: $88
	adc  b                                           ; $5431: $88
	adc  b                                           ; $5432: $88
	adc  b                                           ; $5433: $88
	adc  b                                           ; $5434: $88
	adc  b                                           ; $5435: $88
	adc  b                                           ; $5436: $88
	adc  b                                           ; $5437: $88
	adc  b                                           ; $5438: $88
	adc  b                                           ; $5439: $88
	adc  b                                           ; $543a: $88
	adc  b                                           ; $543b: $88
	adc  b                                           ; $543c: $88
	adc  b                                           ; $543d: $88
	adc  b                                           ; $543e: $88
	adc  b                                           ; $543f: $88
	adc  b                                           ; $5440: $88
	adc  b                                           ; $5441: $88
	adc  b                                           ; $5442: $88
	adc  b                                           ; $5443: $88
	adc  b                                           ; $5444: $88
	adc  b                                           ; $5445: $88
	adc  b                                           ; $5446: $88
	adc  b                                           ; $5447: $88
	adc  b                                           ; $5448: $88
	adc  b                                           ; $5449: $88
	adc  b                                           ; $544a: $88
	adc  b                                           ; $544b: $88
	adc  b                                           ; $544c: $88
	adc  b                                           ; $544d: $88
	adc  b                                           ; $544e: $88
	adc  b                                           ; $544f: $88
	adc  b                                           ; $5450: $88
	adc  b                                           ; $5451: $88
	adc  b                                           ; $5452: $88
	adc  b                                           ; $5453: $88
	adc  b                                           ; $5454: $88
	adc  b                                           ; $5455: $88
	adc  b                                           ; $5456: $88
	adc  b                                           ; $5457: $88
	adc  b                                           ; $5458: $88
	adc  b                                           ; $5459: $88
	adc  b                                           ; $545a: $88
	adc  b                                           ; $545b: $88
	adc  b                                           ; $545c: $88
	adc  b                                           ; $545d: $88
	adc  b                                           ; $545e: $88
	adc  b                                           ; $545f: $88
	adc  b                                           ; $5460: $88
	adc  b                                           ; $5461: $88
	adc  b                                           ; $5462: $88
	adc  b                                           ; $5463: $88
	adc  b                                           ; $5464: $88
	adc  b                                           ; $5465: $88
	adc  b                                           ; $5466: $88
	adc  b                                           ; $5467: $88
	adc  b                                           ; $5468: $88
	adc  b                                           ; $5469: $88
	adc  b                                           ; $546a: $88
	adc  b                                           ; $546b: $88
	adc  b                                           ; $546c: $88
	adc  b                                           ; $546d: $88
	adc  b                                           ; $546e: $88
	adc  b                                           ; $546f: $88
	adc  b                                           ; $5470: $88
	adc  b                                           ; $5471: $88
	adc  b                                           ; $5472: $88
	adc  b                                           ; $5473: $88
	adc  b                                           ; $5474: $88
	adc  b                                           ; $5475: $88
	adc  b                                           ; $5476: $88
	adc  b                                           ; $5477: $88
	adc  b                                           ; $5478: $88
	adc  b                                           ; $5479: $88
	adc  b                                           ; $547a: $88
	adc  b                                           ; $547b: $88
	adc  b                                           ; $547c: $88
	adc  b                                           ; $547d: $88
	adc  b                                           ; $547e: $88
	adc  b                                           ; $547f: $88
	adc  b                                           ; $5480: $88
	adc  b                                           ; $5481: $88
	adc  b                                           ; $5482: $88
	adc  b                                           ; $5483: $88
	adc  b                                           ; $5484: $88
	adc  b                                           ; $5485: $88
	adc  b                                           ; $5486: $88
	adc  b                                           ; $5487: $88
	adc  b                                           ; $5488: $88
	adc  b                                           ; $5489: $88
	adc  b                                           ; $548a: $88
	adc  b                                           ; $548b: $88
	adc  b                                           ; $548c: $88
	adc  b                                           ; $548d: $88
	adc  b                                           ; $548e: $88
	adc  b                                           ; $548f: $88
	adc  b                                           ; $5490: $88
	adc  b                                           ; $5491: $88
	adc  b                                           ; $5492: $88
	adc  b                                           ; $5493: $88
	adc  b                                           ; $5494: $88
	adc  b                                           ; $5495: $88
	adc  b                                           ; $5496: $88

Jump_0a9_5497:
	adc  b                                           ; $5497: $88
	adc  b                                           ; $5498: $88
	adc  b                                           ; $5499: $88
	adc  b                                           ; $549a: $88
	adc  b                                           ; $549b: $88
	adc  b                                           ; $549c: $88
	adc  b                                           ; $549d: $88
	adc  b                                           ; $549e: $88
	adc  b                                           ; $549f: $88
	adc  b                                           ; $54a0: $88
	adc  b                                           ; $54a1: $88
	adc  b                                           ; $54a2: $88
	adc  b                                           ; $54a3: $88
	adc  b                                           ; $54a4: $88
	adc  b                                           ; $54a5: $88

Call_0a9_54a6:
	adc  b                                           ; $54a6: $88
	adc  b                                           ; $54a7: $88
	adc  b                                           ; $54a8: $88
	adc  b                                           ; $54a9: $88
	adc  b                                           ; $54aa: $88
	adc  b                                           ; $54ab: $88
	adc  b                                           ; $54ac: $88
	adc  b                                           ; $54ad: $88
	adc  b                                           ; $54ae: $88
	adc  b                                           ; $54af: $88
	adc  b                                           ; $54b0: $88
	adc  b                                           ; $54b1: $88
	adc  b                                           ; $54b2: $88
	adc  b                                           ; $54b3: $88
	adc  b                                           ; $54b4: $88
	adc  b                                           ; $54b5: $88
	adc  b                                           ; $54b6: $88
	adc  b                                           ; $54b7: $88
	adc  b                                           ; $54b8: $88
	adc  b                                           ; $54b9: $88
	adc  b                                           ; $54ba: $88
	adc  b                                           ; $54bb: $88
	adc  b                                           ; $54bc: $88
	adc  b                                           ; $54bd: $88
	adc  b                                           ; $54be: $88
	adc  b                                           ; $54bf: $88
	adc  b                                           ; $54c0: $88
	adc  b                                           ; $54c1: $88
	adc  b                                           ; $54c2: $88
	adc  b                                           ; $54c3: $88
	adc  b                                           ; $54c4: $88
	adc  b                                           ; $54c5: $88
	adc  b                                           ; $54c6: $88
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	adc  b                                           ; $54c9: $88
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	adc  b                                           ; $54cd: $88
	adc  b                                           ; $54ce: $88
	adc  b                                           ; $54cf: $88
	adc  b                                           ; $54d0: $88
	adc  b                                           ; $54d1: $88
	adc  b                                           ; $54d2: $88
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	adc  b                                           ; $54d9: $88
	adc  b                                           ; $54da: $88
	adc  b                                           ; $54db: $88
	adc  b                                           ; $54dc: $88
	adc  b                                           ; $54dd: $88
	adc  b                                           ; $54de: $88
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	adc  b                                           ; $54e2: $88
	adc  b                                           ; $54e3: $88
	adc  b                                           ; $54e4: $88
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	adc  b                                           ; $54e7: $88
	adc  b                                           ; $54e8: $88
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
	adc  b                                           ; $54f5: $88
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

Jump_0a9_5585:
	adc  b                                           ; $5585: $88

Jump_0a9_5586:
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
	sbc  b                                           ; $5601: $98
	sbc  c                                           ; $5602: $99
	sbc  b                                           ; $5603: $98
	ld   h, [hl]                                     ; $5604: $66
	ld   h, [hl]                                     ; $5605: $66
	ld   h, [hl]                                     ; $5606: $66
	ld   a, b                                        ; $5607: $78
	adc  b                                           ; $5608: $88
	sbc  c                                           ; $5609: $99
	sbc  d                                           ; $560a: $9a
	sbc  c                                           ; $560b: $99
	sub  a                                           ; $560c: $97
	ld   [hl], a                                     ; $560d: $77
	ld   [hl], a                                     ; $560e: $77
	sbc  d                                           ; $560f: $9a
	xor  e                                           ; $5610: $ab
	xor  d                                           ; $5611: $aa
	sbc  c                                           ; $5612: $99
	adc  b                                           ; $5613: $88
	ld   [hl], a                                     ; $5614: $77
	ld   [hl], a                                     ; $5615: $77
	ld   [hl], a                                     ; $5616: $77
	ld   [hl], a                                     ; $5617: $77
	adc  b                                           ; $5618: $88
	sbc  c                                           ; $5619: $99
	adc  b                                           ; $561a: $88
	ld   [hl], l                                     ; $561b: $75
	ld   [hl-], a                                    ; $561c: $32
	inc  [hl]                                        ; $561d: $34
	adc  h                                           ; $561e: $8c
	rst  $28                                         ; $561f: $ef
	jp   c, Jump_0a9_4685                            ; $5620: $da $85 $46

	ld   l, b                                        ; $5623: $68
	sbc  c                                           ; $5624: $99
	sub  a                                           ; $5625: $97
	ld   [hl], a                                     ; $5626: $77
	sbc  e                                           ; $5627: $9b
	call z, $64a9                                    ; $5628: $cc $a9 $64
	ld   b, h                                        ; $562b: $44
	ld   l, b                                        ; $562c: $68
	sbc  d                                           ; $562d: $9a
	sbc  b                                           ; $562e: $98
	sub  a                                           ; $562f: $97
	sbc  c                                           ; $5630: $99
	sbc  d                                           ; $5631: $9a
	adc  b                                           ; $5632: $88
	ld   h, [hl]                                     ; $5633: $66
	ld   h, [hl]                                     ; $5634: $66
	ld   a, b                                        ; $5635: $78
	sbc  d                                           ; $5636: $9a
	sbc  b                                           ; $5637: $98
	add  a                                           ; $5638: $87
	ld   [hl], a                                     ; $5639: $77
	ld   [hl], a                                     ; $563a: $77
	ld   [hl], a                                     ; $563b: $77
	ld   h, [hl]                                     ; $563c: $66
	ld   h, a                                        ; $563d: $67
	ld   a, b                                        ; $563e: $78
	adc  c                                           ; $563f: $89
	sbc  c                                           ; $5640: $99
	sbc  c                                           ; $5641: $99
	xor  d                                           ; $5642: $aa
	xor  d                                           ; $5643: $aa
	sbc  c                                           ; $5644: $99
	sbc  b                                           ; $5645: $98
	adc  b                                           ; $5646: $88
	ld   [hl], a                                     ; $5647: $77
	ld   h, l                                        ; $5648: $65
	ld   sp, $2811                                   ; $5649: $31 $11 $28
	rst  $28                                         ; $564c: $ef
	rst  $38                                         ; $564d: $ff
	push af                                          ; $564e: $f5
	ld   de, $6b14                                   ; $564f: $11 $14 $6b
	cp   c                                           ; $5652: $b9
	add  h                                           ; $5653: $84
	ld   a, d                                        ; $5654: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5655: $cf
	rst  $38                                         ; $5656: $ff
	push hl                                          ; $5657: $e5
	ld   sp, $5b13                                   ; $5658: $31 $13 $5b
	xor  e                                           ; $565b: $ab
	and  a                                           ; $565c: $a7
	xor  c                                           ; $565d: $a9
	sbc  h                                           ; $565e: $9c
	cp   d                                           ; $565f: $ba
	add  l                                           ; $5660: $85
	ld   b, d                                        ; $5661: $42
	ld   d, [hl]                                     ; $5662: $56
	sbc  e                                           ; $5663: $9b
	cp   h                                           ; $5664: $bc
	sbc  b                                           ; $5665: $98
	halt                                             ; $5666: $76
	ld   [hl], a                                     ; $5667: $77
	ld   a, b                                        ; $5668: $78
	ld   h, [hl]                                     ; $5669: $66
	ld   d, l                                        ; $566a: $55
	ld   h, [hl]                                     ; $566b: $66
	halt                                             ; $566c: $76
	ld   b, h                                        ; $566d: $44
	ld   d, a                                        ; $566e: $57
	cp   [hl]                                        ; $566f: $be
	rst  $38                                         ; $5670: $ff
	ret  c                                           ; $5671: $d8

	ld   d, h                                        ; $5672: $54
	ld   [hl], $8a                                   ; $5673: $36 $8a
	cp   e                                           ; $5675: $bb
	xor  c                                           ; $5676: $a9
	adc  b                                           ; $5677: $88
	adc  d                                           ; $5678: $8a
	xor  c                                           ; $5679: $a9
	sub  l                                           ; $567a: $95
	ld   hl, $1711                                   ; $567b: $21 $11 $17
	rst  $38                                         ; $567e: $ff
	rst  $38                                         ; $567f: $ff
	di                                               ; $5680: $f3
	ld   de, $7b16                                   ; $5681: $11 $16 $7b
	ret                                              ; $5684: $c9


	and  [hl]                                        ; $5685: $a6
	xor  a                                           ; $5686: $af
	rst  $38                                         ; $5687: $ff

Call_0a9_5688:
	ei                                               ; $5688: $fb
	ld   [hl], c                                     ; $5689: $71
	ld   de, $5326                                   ; $568a: $11 $26 $53
	ld   de, rAUD1HIGH                                   ; $568d: $11 $14 $ff
	rst  $38                                         ; $5690: $ff
	ldh  [c], a                                      ; $5691: $e2
	ld   de, $8e11                                   ; $5692: $11 $11 $8e
	rst  $38                                         ; $5695: $ff
	cp   d                                           ; $5696: $ba
	cp   e                                           ; $5697: $bb
	rst  $38                                         ; $5698: $ff
	db   $fd                                         ; $5699: $fd
	ld   h, c                                        ; $569a: $61
	ld   de, $5312                                   ; $569b: $11 $12 $53
	inc  d                                           ; $569e: $14
	ld   l, e                                        ; $569f: $6b
	rst  $38                                         ; $56a0: $ff
	rst  $38                                         ; $56a1: $ff
	sub  c                                           ; $56a2: $91
	ld   de, $9f14                                   ; $56a3: $11 $14 $9f
	rst  $38                                         ; $56a6: $ff
	db   $fc                                         ; $56a7: $fc
	jp   z, $98bb                                    ; $56a8: $ca $bb $98

	ld   b, d                                        ; $56ab: $42
	ld   hl, $1111                                   ; $56ac: $21 $11 $11
	add  hl, sp                                      ; $56af: $39
	rst  $28                                         ; $56b0: $ef
	rst  $38                                         ; $56b1: $ff
	db   $f4                                         ; $56b2: $f4
	ld   de, $6a11                                   ; $56b3: $11 $11 $6a
	rst  $38                                         ; $56b6: $ff
	cp   $de                                         ; $56b7: $fe $de
	sbc  e                                           ; $56b9: $9b
	add  l                                           ; $56ba: $85
	ld   [hl], e                                     ; $56bb: $73
	inc  sp                                          ; $56bc: $33
	ld   de, $1611                                   ; $56bd: $11 $11 $16
	rst  $28                                         ; $56c0: $ef
	rst  $38                                         ; $56c1: $ff
	ld   sp, hl                                      ; $56c2: $f9
	ld   de, $7b11                                   ; $56c3: $11 $11 $7b
	rst  $38                                         ; $56c6: $ff
	cp   $8a                                         ; $56c7: $fe $8a
	adc  c                                           ; $56c9: $89
	cp   c                                           ; $56ca: $b9
	sub  l                                           ; $56cb: $95
	ld   [hl+], a                                    ; $56cc: $22
	ld   de, $2811                                   ; $56cd: $11 $11 $28
	rst  $38                                         ; $56d0: $ff
	rst  $38                                         ; $56d1: $ff
	db   $f4                                         ; $56d2: $f4
	ld   de, $be11                                   ; $56d3: $11 $11 $be
	rst  $38                                         ; $56d6: $ff
	ld   [$8c77], a                                  ; $56d7: $ea $77 $8c
	jp   c, $11a4                                    ; $56da: $da $a4 $11

	ld   de, $9f11                                   ; $56dd: $11 $11 $9f
	rst  $38                                         ; $56e0: $ff
	rst  $38                                         ; $56e1: $ff
	ld   d, c                                        ; $56e2: $51
	ld   de, $ef1a                                   ; $56e3: $11 $1a $ef
	db   $fd                                         ; $56e6: $fd
	add  [hl]                                        ; $56e7: $86
	ld   l, b                                        ; $56e8: $68
	xor  $cb                                         ; $56e9: $ee $cb
	ld   b, c                                        ; $56eb: $41
	ld   de, $1b11                                   ; $56ec: $11 $11 $1b
	rst  $38                                         ; $56ef: $ff
	rst  $38                                         ; $56f0: $ff
	ldh  a, [c]                                      ; $56f1: $f2
	ld   de, $bf11                                   ; $56f2: $11 $11 $bf
	rst  $38                                         ; $56f5: $ff
	or   [hl]                                        ; $56f6: $b6
	ld   b, l                                        ; $56f7: $45
	adc  [hl]                                        ; $56f8: $8e
	rst  $38                                         ; $56f9: $ff
	jp   $1111                                       ; $56fa: $c3 $11 $11


	dec  d                                           ; $56fd: $15
	rst  $38                                         ; $56fe: $ff
	rst  $38                                         ; $56ff: $ff
	db   $fc                                         ; $5700: $fc
	ld   de, $9d11                                   ; $5701: $11 $11 $9d
	rst  $38                                         ; $5704: $ff
	rst  ToBoot                                         ; $5705: $c7
	ld   b, l                                        ; $5706: $45
	ld   e, e                                        ; $5707: $5b
	db   $fd                                         ; $5708: $fd
	ld   hl, sp+$11                                  ; $5709: $f8 $11
	ld   de, $ef12                                   ; $570b: $11 $12 $ef
	rst  $38                                         ; $570e: $ff
	db   $fc                                         ; $570f: $fc
	ld   de, $9f11                                   ; $5710: $11 $11 $9f
	rst  $38                                         ; $5713: $ff
	or   l                                           ; $5714: $b5
	ld   [de], a                                     ; $5715: $12
	add  hl, sp                                      ; $5716: $39
	rst  $38                                         ; $5717: $ff
	ld   a, [$1111]                                  ; $5718: $fa $11 $11
	rla                                              ; $571b: $17
	rst  $38                                         ; $571c: $ff
	rst  $38                                         ; $571d: $ff
	di                                               ; $571e: $f3
	ld   de, $ff17                                   ; $571f: $11 $17 $ff
	db   $fc                                         ; $5722: $fc
	ld   h, c                                        ; $5723: $61
	ld   de, $ff5b                                   ; $5724: $11 $5b $ff
	push de                                          ; $5727: $d5
	ld   de, $5f11                                   ; $5728: $11 $11 $5f
	rst  $38                                         ; $572b: $ff
	rst  $38                                         ; $572c: $ff
	ld   sp, $9f11                                   ; $572d: $31 $11 $9f
	rst  $38                                         ; $5730: $ff
	and  $11                                         ; $5731: $e6 $11
	inc  d                                           ; $5733: $14
	xor  l                                           ; $5734: $ad
	db   $fc                                         ; $5735: $fc
	ld   b, c                                        ; $5736: $41
	ld   de, $ff19                                   ; $5737: $11 $19 $ff
	rst  $38                                         ; $573a: $ff
	add  c                                           ; $573b: $81
	ld   de, $ff5d                                   ; $573c: $11 $5d $ff
	ld   a, [$1141]                                  ; $573f: $fa $41 $11
	ld   e, d                                        ; $5742: $5a
	call z, $1171                                    ; $5743: $cc $71 $11
	ld   d, $ff                                      ; $5746: $16 $ff
	rst  $38                                         ; $5748: $ff
	call nc, $2811                                   ; $5749: $d4 $11 $28
	rst  $28                                         ; $574c: $ef
	cp   $83                                         ; $574d: $fe $83
	ld   de, $ab47                                   ; $574f: $11 $47 $ab
	add  h                                           ; $5752: $84
	ld   de, $cf14                                   ; $5753: $11 $14 $cf
	rst  $38                                         ; $5756: $ff
	ld   hl, sp+$31                                  ; $5757: $f8 $31
	ld   h, $be                                      ; $5759: $26 $be
	cp   $96                                         ; $575b: $fe $96
	ld   b, e                                        ; $575d: $43
	ld   b, a                                        ; $575e: $47
	adc  c                                           ; $575f: $89
	sub  [hl]                                        ; $5760: $96
	ld   sp, $6d12                                   ; $5761: $31 $12 $6d
	rst  $38                                         ; $5764: $ff
	db   $fc                                         ; $5765: $fc
	add  l                                           ; $5766: $85
	ld   b, l                                        ; $5767: $45
	adc  d                                           ; $5768: $8a
	cp   h                                           ; $5769: $bc
	cp   b                                           ; $576a: $b8
	ld   h, l                                        ; $576b: $65
	ld   d, [hl]                                     ; $576c: $56
	ld   a, b                                        ; $576d: $78
	sub  a                                           ; $576e: $97
	ld   h, e                                        ; $576f: $63
	inc  hl                                          ; $5770: $23
	ld   b, a                                        ; $5771: $47
	cp   [hl]                                        ; $5772: $be
	db   $ed                                         ; $5773: $ed
	xor  b                                           ; $5774: $a8
	ld   h, [hl]                                     ; $5775: $66
	ld   a, c                                        ; $5776: $79
	xor  d                                           ; $5777: $aa
	xor  c                                           ; $5778: $a9
	add  a                                           ; $5779: $87
	ld   h, [hl]                                     ; $577a: $66
	ld   a, b                                        ; $577b: $78
	adc  b                                           ; $577c: $88
	halt                                             ; $577d: $76
	ld   b, e                                        ; $577e: $43
	ld   b, l                                        ; $577f: $45
	ld   a, c                                        ; $5780: $79
	cp   h                                           ; $5781: $bc
	cp   d                                           ; $5782: $ba
	sub  a                                           ; $5783: $97
	ld   a, b                                        ; $5784: $78
	sbc  d                                           ; $5785: $9a
	sbc  d                                           ; $5786: $9a
	sbc  b                                           ; $5787: $98
	ld   [hl], a                                     ; $5788: $77
	ld   [hl], a                                     ; $5789: $77
	adc  b                                           ; $578a: $88
	sbc  b                                           ; $578b: $98
	ld   [hl], l                                     ; $578c: $75
	ld   d, h                                        ; $578d: $54
	ld   d, [hl]                                     ; $578e: $56
	ld   a, c                                        ; $578f: $79
	xor  d                                           ; $5790: $aa
	xor  c                                           ; $5791: $a9
	sbc  b                                           ; $5792: $98
	adc  b                                           ; $5793: $88
	adc  d                                           ; $5794: $8a
	xor  d                                           ; $5795: $aa
	add  a                                           ; $5796: $87
	ld   [hl], a                                     ; $5797: $77
	ld   a, b                                        ; $5798: $78
	adc  c                                           ; $5799: $89
	sbc  c                                           ; $579a: $99
	halt                                             ; $579b: $76
	ld   h, [hl]                                     ; $579c: $66
	ld   h, a                                        ; $579d: $67
	adc  c                                           ; $579e: $89
	adc  b                                           ; $579f: $88
	adc  b                                           ; $57a0: $88
	sbc  c                                           ; $57a1: $99
	sbc  c                                           ; $57a2: $99
	sbc  b                                           ; $57a3: $98
	sbc  c                                           ; $57a4: $99
	adc  c                                           ; $57a5: $89
	adc  b                                           ; $57a6: $88
	ld   [hl], a                                     ; $57a7: $77
	ld   [hl], a                                     ; $57a8: $77
	adc  c                                           ; $57a9: $89
	adc  c                                           ; $57aa: $89
	add  a                                           ; $57ab: $87
	add  a                                           ; $57ac: $87
	ld   [hl], a                                     ; $57ad: $77
	ld   h, a                                        ; $57ae: $67
	ld   a, b                                        ; $57af: $78
	adc  c                                           ; $57b0: $89
	sbc  c                                           ; $57b1: $99
	adc  c                                           ; $57b2: $89
	adc  b                                           ; $57b3: $88
	adc  b                                           ; $57b4: $88
	sbc  b                                           ; $57b5: $98
	add  a                                           ; $57b6: $87
	ld   [hl], a                                     ; $57b7: $77
	ld   a, b                                        ; $57b8: $78
	adc  c                                           ; $57b9: $89
	sbc  b                                           ; $57ba: $98
	add  a                                           ; $57bb: $87
	ld   [hl], a                                     ; $57bc: $77
	ld   [hl], a                                     ; $57bd: $77
	adc  b                                           ; $57be: $88
	adc  b                                           ; $57bf: $88
	sbc  c                                           ; $57c0: $99
	sbc  c                                           ; $57c1: $99
	adc  b                                           ; $57c2: $88
	adc  b                                           ; $57c3: $88
	adc  b                                           ; $57c4: $88
	adc  b                                           ; $57c5: $88
	adc  b                                           ; $57c6: $88
	adc  b                                           ; $57c7: $88
	adc  c                                           ; $57c8: $89
	sbc  b                                           ; $57c9: $98
	sbc  b                                           ; $57ca: $98
	add  a                                           ; $57cb: $87
	ld   a, b                                        ; $57cc: $78
	adc  b                                           ; $57cd: $88
	adc  b                                           ; $57ce: $88
	adc  b                                           ; $57cf: $88
	adc  b                                           ; $57d0: $88
	adc  b                                           ; $57d1: $88
	adc  b                                           ; $57d2: $88
	add  a                                           ; $57d3: $87
	ld   [hl], a                                     ; $57d4: $77
	adc  b                                           ; $57d5: $88
	adc  c                                           ; $57d6: $89
	adc  b                                           ; $57d7: $88
	adc  b                                           ; $57d8: $88
	add  a                                           ; $57d9: $87
	adc  b                                           ; $57da: $88
	adc  b                                           ; $57db: $88
	adc  c                                           ; $57dc: $89
	add  a                                           ; $57dd: $87
	ld   [hl], a                                     ; $57de: $77
	adc  b                                           ; $57df: $88
	adc  b                                           ; $57e0: $88
	sbc  b                                           ; $57e1: $98
	ld   [hl], a                                     ; $57e2: $77
	ld   [hl], a                                     ; $57e3: $77
	ld   a, b                                        ; $57e4: $78
	sbc  c                                           ; $57e5: $99
	sbc  b                                           ; $57e6: $98
	adc  b                                           ; $57e7: $88
	ld   [hl], a                                     ; $57e8: $77
	adc  c                                           ; $57e9: $89
	sbc  b                                           ; $57ea: $98
	sbc  b                                           ; $57eb: $98
	ld   [hl], a                                     ; $57ec: $77
	ld   a, b                                        ; $57ed: $78
	sbc  c                                           ; $57ee: $99
	adc  c                                           ; $57ef: $89
	add  a                                           ; $57f0: $87
	ld   [hl], a                                     ; $57f1: $77
	ld   a, b                                        ; $57f2: $78
	adc  c                                           ; $57f3: $89
	adc  c                                           ; $57f4: $89
	sbc  b                                           ; $57f5: $98
	adc  b                                           ; $57f6: $88
	adc  b                                           ; $57f7: $88
	adc  c                                           ; $57f8: $89
	sbc  b                                           ; $57f9: $98
	adc  b                                           ; $57fa: $88
	adc  b                                           ; $57fb: $88
	adc  b                                           ; $57fc: $88
	adc  b                                           ; $57fd: $88
	adc  b                                           ; $57fe: $88
	adc  b                                           ; $57ff: $88
	ld   [hl], a                                     ; $5800: $77
	adc  b                                           ; $5801: $88
	adc  b                                           ; $5802: $88
	sbc  c                                           ; $5803: $99
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
	adc  c                                           ; $581f: $89
	sbc  c                                           ; $5820: $99
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
	adc  c                                           ; $582e: $89
	sbc  c                                           ; $582f: $99
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
	sbc  b                                           ; $584c: $98
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
	adc  b                                           ; $5963: $88
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

Jump_0a9_5996:
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
	adc  c                                           ; $5b26: $89
	sbc  c                                           ; $5b27: $99
	adc  b                                           ; $5b28: $88
	sbc  b                                           ; $5b29: $98
	ld   [hl], a                                     ; $5b2a: $77
	halt                                             ; $5b2b: $76
	ld   [hl], a                                     ; $5b2c: $77
	ld   a, b                                        ; $5b2d: $78
	add  a                                           ; $5b2e: $87
	ld   [hl], a                                     ; $5b2f: $77
	adc  c                                           ; $5b30: $89
	sbc  c                                           ; $5b31: $99
	sbc  c                                           ; $5b32: $99
	adc  b                                           ; $5b33: $88
	adc  b                                           ; $5b34: $88
	adc  b                                           ; $5b35: $88
	sbc  c                                           ; $5b36: $99
	sbc  c                                           ; $5b37: $99
	sbc  c                                           ; $5b38: $99
	adc  b                                           ; $5b39: $88
	add  a                                           ; $5b3a: $87
	ld   [hl], a                                     ; $5b3b: $77
	ld   h, l                                        ; $5b3c: $65
	ld   d, h                                        ; $5b3d: $54
	inc  sp                                          ; $5b3e: $33
	ld   d, a                                        ; $5b3f: $57
	cp   [hl]                                        ; $5b40: $be
	rst  $38                                         ; $5b41: $ff
	ret  c                                           ; $5b42: $d8

	ld   [hl], l                                     ; $5b43: $75
	ld   b, [hl]                                     ; $5b44: $46
	ld   h, a                                        ; $5b45: $67
	add  a                                           ; $5b46: $87
	halt                                             ; $5b47: $76
	adc  c                                           ; $5b48: $89
	cp   l                                           ; $5b49: $bd
	db   $dd                                         ; $5b4a: $dd
	cp   c                                           ; $5b4b: $b9
	ld   h, h                                        ; $5b4c: $64
	ld   b, l                                        ; $5b4d: $45
	ld   h, a                                        ; $5b4e: $67
	adc  b                                           ; $5b4f: $88
	sbc  b                                           ; $5b50: $98
	sbc  d                                           ; $5b51: $9a
	xor  e                                           ; $5b52: $ab
	cp   d                                           ; $5b53: $ba
	sub  [hl]                                        ; $5b54: $96
	ld   d, h                                        ; $5b55: $54
	ld   d, [hl]                                     ; $5b56: $56
	ld   a, b                                        ; $5b57: $78
	sbc  c                                           ; $5b58: $99
	sbc  d                                           ; $5b59: $9a
	xor  c                                           ; $5b5a: $a9
	xor  c                                           ; $5b5b: $a9
	sbc  b                                           ; $5b5c: $98
	ld   [hl], a                                     ; $5b5d: $77
	ld   h, [hl]                                     ; $5b5e: $66
	ld   h, [hl]                                     ; $5b5f: $66
	ld   a, b                                        ; $5b60: $78
	sbc  c                                           ; $5b61: $99
	adc  b                                           ; $5b62: $88
	ld   [hl], a                                     ; $5b63: $77
	halt                                             ; $5b64: $76
	ld   h, [hl]                                     ; $5b65: $66
	ld   h, [hl]                                     ; $5b66: $66
	ld   a, b                                        ; $5b67: $78
	sbc  d                                           ; $5b68: $9a
	cp   h                                           ; $5b69: $bc
	res  5, d                                        ; $5b6a: $cb $aa
	sbc  b                                           ; $5b6c: $98
	adc  b                                           ; $5b6d: $88
	adc  b                                           ; $5b6e: $88
	add  a                                           ; $5b6f: $87
	halt                                             ; $5b70: $76
	ld   h, l                                        ; $5b71: $65
	ld   sp, $5911                                   ; $5b72: $31 $11 $59
	rst  $38                                         ; $5b75: $ff
	rst  $38                                         ; $5b76: $ff
	or   l                                           ; $5b77: $b5
	ld   b, d                                        ; $5b78: $42
	ld   c, b                                        ; $5b79: $48
	adc  c                                           ; $5b7a: $89
	ld   [hl], l                                     ; $5b7b: $75
	ld   d, h                                        ; $5b7c: $54
	sbc  h                                           ; $5b7d: $9c
	rst  $38                                         ; $5b7e: $ff
	rst  $38                                         ; $5b7f: $ff
	or   h                                           ; $5b80: $b4
	ld   hl, $6814                                   ; $5b81: $21 $14 $68
	adc  c                                           ; $5b84: $89
	ld   [hl], a                                     ; $5b85: $77
	xor  e                                           ; $5b86: $ab
	rst  $28                                         ; $5b87: $ef
	bit  4, e                                        ; $5b88: $cb $63
	ld   [de], a                                     ; $5b8a: $12
	dec  [hl]                                        ; $5b8b: $35
	sbc  d                                           ; $5b8c: $9a
	sbc  d                                           ; $5b8d: $9a
	xor  d                                           ; $5b8e: $aa
	xor  e                                           ; $5b8f: $ab
	jp   z, Jump_0a9_5497                            ; $5b90: $ca $97 $54

	inc  [hl]                                        ; $5b93: $34
	ld   d, a                                        ; $5b94: $57
	adc  b                                           ; $5b95: $88
	add  [hl]                                        ; $5b96: $86
	ld   d, e                                        ; $5b97: $53
	inc  h                                           ; $5b98: $24
	ld   l, d                                        ; $5b99: $6a
	xor  $db                                         ; $5b9a: $ee $db
	add  a                                           ; $5b9c: $87
	ld   [hl], a                                     ; $5b9d: $77
	sbc  e                                           ; $5b9e: $9b
	cp   e                                           ; $5b9f: $bb
	sub  a                                           ; $5ba0: $97
	ld   h, [hl]                                     ; $5ba1: $66
	ld   a, c                                        ; $5ba2: $79
	call z, $74cb                                    ; $5ba3: $cc $cb $74
	ld   hl, $1211                                   ; $5ba6: $21 $11 $12
	ld   l, d                                        ; $5ba9: $6a
	rst  $38                                         ; $5baa: $ff
	rst  $38                                         ; $5bab: $ff
	add  $62                                         ; $5bac: $c6 $62
	dec  [hl]                                        ; $5bae: $35
	ld   d, a                                        ; $5baf: $57
	ld   h, a                                        ; $5bb0: $67
	sbc  d                                           ; $5bb1: $9a
	rst  $28                                         ; $5bb2: $ef
	rst  $38                                         ; $5bb3: $ff
	ret                                              ; $5bb4: $c9


	ld   b, d                                        ; $5bb5: $42
	ld   [hl+], a                                    ; $5bb6: $22
	ld   b, l                                        ; $5bb7: $45
	ld   d, e                                        ; $5bb8: $53
	ld   de, $cf16                                   ; $5bb9: $11 $16 $cf
	rst  $38                                         ; $5bbc: $ff
	ld   sp, hl                                      ; $5bbd: $f9
	ld   de, $7a12                                   ; $5bbe: $11 $12 $7a
	call c, $9caa                                    ; $5bc1: $dc $aa $9c
	sbc  $ea                                         ; $5bc4: $de $ea
	sub  h                                           ; $5bc6: $94
	ld   de, $5514                                   ; $5bc7: $11 $14 $55
	ld   b, c                                        ; $5bca: $41
	inc  d                                           ; $5bcb: $14
	adc  [hl]                                        ; $5bcc: $8e
	rst  $38                                         ; $5bcd: $ff
	cp   $41                                         ; $5bce: $fe $41
	ld   de, $cd69                                   ; $5bd0: $11 $69 $cd
	jp   z, $ac88                                    ; $5bd3: $ca $88 $ac

	db   $ec                                         ; $5bd6: $ec
	and  a                                           ; $5bd7: $a7
	ld   [hl-], a                                    ; $5bd8: $32
	ld   [de], a                                     ; $5bd9: $12
	ld   b, e                                        ; $5bda: $43
	ld   de, $9f14                                   ; $5bdb: $11 $14 $9f
	rst  $38                                         ; $5bde: $ff
	db   $fc                                         ; $5bdf: $fc
	ld   sp, $6911                                   ; $5be0: $31 $11 $69
	call $79a7                                       ; $5be3: $cd $a7 $79
	xor  l                                           ; $5be6: $ad
	cp   $b6                                         ; $5be7: $fe $b6
	ld   hl, $1111                                   ; $5be9: $21 $11 $11
	ld   de, $ff7d                                   ; $5bec: $11 $7d $ff
	rst  $38                                         ; $5bef: $ff
	or   d                                           ; $5bf0: $b2
	ld   de, $9b16                                   ; $5bf1: $11 $16 $9b
	cp   d                                           ; $5bf4: $ba
	adc  b                                           ; $5bf5: $88
	cp   e                                           ; $5bf6: $bb
	rst  $28                                         ; $5bf7: $ef
	jp   z, $1151                                    ; $5bf8: $ca $51 $11

	ld   de, $5d11                                   ; $5bfb: $11 $11 $5d
	rst  $38                                         ; $5bfe: $ff
	rst  $38                                         ; $5bff: $ff
	db   $e4                                         ; $5c00: $e4
	ld   de, $8b15                                   ; $5c01: $11 $15 $8b
	cp   d                                           ; $5c04: $ba
	halt                                             ; $5c05: $76
	adc  e                                           ; $5c06: $8b
	rst  $28                                         ; $5c07: $ef
	db   $ec                                         ; $5c08: $ec
	ld   [hl], d                                     ; $5c09: $72
	ld   de, $1111                                   ; $5c0a: $11 $11 $11
	ld   l, l                                        ; $5c0d: $6d
	rst  $38                                         ; $5c0e: $ff
	rst  $38                                         ; $5c0f: $ff
	push af                                          ; $5c10: $f5
	ld   hl, $8a15                                   ; $5c11: $21 $15 $8a
	cp   c                                           ; $5c14: $b9
	halt                                             ; $5c15: $76
	adc  d                                           ; $5c16: $8a
	rst  $28                                         ; $5c17: $ef
	db   $ec                                         ; $5c18: $ec
	ld   [hl], d                                     ; $5c19: $72
	ld   de, $1411                                   ; $5c1a: $11 $11 $14
	xor  a                                           ; $5c1d: $af
	rst  $38                                         ; $5c1e: $ff
	rst  $38                                         ; $5c1f: $ff
	sub  h                                           ; $5c20: $94
	ld   [hl-], a                                    ; $5c21: $32
	ld   c, b                                        ; $5c22: $48
	sbc  d                                           ; $5c23: $9a
	sub  a                                           ; $5c24: $97
	ld   h, [hl]                                     ; $5c25: $66
	sbc  d                                           ; $5c26: $9a
	sbc  $c9                                         ; $5c27: $de $c9
	ld   d, c                                        ; $5c29: $51
	ld   de, $2911                                   ; $5c2a: $11 $11 $29
	rst  $28                                         ; $5c2d: $ef
	rst  $38                                         ; $5c2e: $ff
	ld   a, [$2553]                                  ; $5c2f: $fa $53 $25
	adc  e                                           ; $5c32: $8b
	cp   d                                           ; $5c33: $ba
	add  [hl]                                        ; $5c34: $86
	ld   d, [hl]                                     ; $5c35: $56
	adc  h                                           ; $5c36: $8c
	call c, $21b6                                    ; $5c37: $dc $b6 $21
	ld   de, $af14                                   ; $5c3a: $11 $14 $af
	rst  $38                                         ; $5c3d: $ff
	db   $fc                                         ; $5c3e: $fc
	add  l                                           ; $5c3f: $85
	ld   b, l                                        ; $5c40: $45
	ld   a, c                                        ; $5c41: $79
	xor  c                                           ; $5c42: $a9
	add  a                                           ; $5c43: $87
	ld   h, a                                        ; $5c44: $67
	adc  d                                           ; $5c45: $8a
	res  5, b                                        ; $5c46: $cb $a8
	ld   d, c                                        ; $5c48: $51
	ld   de, $7d12                                   ; $5c49: $11 $12 $7d
	rst  $38                                         ; $5c4c: $ff
	cp   $a7                                         ; $5c4d: $fe $a7
	ld   h, [hl]                                     ; $5c4f: $66
	ld   a, b                                        ; $5c50: $78
	sbc  c                                           ; $5c51: $99
	add  [hl]                                        ; $5c52: $86
	ld   h, [hl]                                     ; $5c53: $66
	ld   a, d                                        ; $5c54: $7a
	cp   e                                           ; $5c55: $bb
	cp   d                                           ; $5c56: $ba
	ld   h, e                                        ; $5c57: $63
	ld   de, $5a12                                   ; $5c58: $11 $12 $5a
	rst  JumpTable                                         ; $5c5b: $df
	cp   $b9                                         ; $5c5c: $fe $b9
	add  a                                           ; $5c5e: $87
	ld   a, b                                        ; $5c5f: $78
	sbc  c                                           ; $5c60: $99
	add  a                                           ; $5c61: $87
	ld   h, [hl]                                     ; $5c62: $66
	ld   a, b                                        ; $5c63: $78
	xor  e                                           ; $5c64: $ab
	cp   d                                           ; $5c65: $ba
	sub  [hl]                                        ; $5c66: $96
	ld   b, d                                        ; $5c67: $42
	ld   [de], a                                     ; $5c68: $12
	ld   b, [hl]                                     ; $5c69: $46
	sbc  e                                           ; $5c6a: $9b
	db   $dd                                         ; $5c6b: $dd
	res  3, c                                        ; $5c6c: $cb $99
	adc  b                                           ; $5c6e: $88
	sbc  b                                           ; $5c6f: $98
	adc  b                                           ; $5c70: $88
	ld   [hl], a                                     ; $5c71: $77
	ld   h, a                                        ; $5c72: $67
	adc  c                                           ; $5c73: $89
	xor  d                                           ; $5c74: $aa
	sbc  c                                           ; $5c75: $99
	ld   [hl], l                                     ; $5c76: $75
	inc  sp                                          ; $5c77: $33
	ld   b, l                                        ; $5c78: $45
	ld   a, c                                        ; $5c79: $79
	xor  e                                           ; $5c7a: $ab
	jp   z, $9899                                    ; $5c7b: $ca $99 $98

	sbc  c                                           ; $5c7e: $99
	sbc  c                                           ; $5c7f: $99
	add  a                                           ; $5c80: $87
	ld   [hl], a                                     ; $5c81: $77
	ld   a, b                                        ; $5c82: $78
	sbc  c                                           ; $5c83: $99
	xor  d                                           ; $5c84: $aa
	sub  a                                           ; $5c85: $97
	ld   h, l                                        ; $5c86: $65
	ld   b, l                                        ; $5c87: $45
	ld   d, a                                        ; $5c88: $57
	adc  d                                           ; $5c89: $8a
	xor  d                                           ; $5c8a: $aa
	xor  d                                           ; $5c8b: $aa
	sbc  c                                           ; $5c8c: $99
	adc  b                                           ; $5c8d: $88
	adc  b                                           ; $5c8e: $88
	adc  b                                           ; $5c8f: $88
	adc  b                                           ; $5c90: $88
	adc  b                                           ; $5c91: $88
	sbc  c                                           ; $5c92: $99
	sbc  d                                           ; $5c93: $9a
	sbc  b                                           ; $5c94: $98
	add  a                                           ; $5c95: $87
	ld   h, [hl]                                     ; $5c96: $66
	ld   d, [hl]                                     ; $5c97: $56
	ld   h, a                                        ; $5c98: $67
	adc  b                                           ; $5c99: $88
	sbc  d                                           ; $5c9a: $9a
	sbc  c                                           ; $5c9b: $99
	adc  b                                           ; $5c9c: $88
	adc  b                                           ; $5c9d: $88
	adc  c                                           ; $5c9e: $89
	sbc  b                                           ; $5c9f: $98
	add  a                                           ; $5ca0: $87
	adc  b                                           ; $5ca1: $88
	adc  c                                           ; $5ca2: $89
	sbc  d                                           ; $5ca3: $9a
	sbc  c                                           ; $5ca4: $99
	ld   [hl], a                                     ; $5ca5: $77
	ld   h, [hl]                                     ; $5ca6: $66
	ld   [hl], a                                     ; $5ca7: $77
	ld   [hl], a                                     ; $5ca8: $77
	adc  b                                           ; $5ca9: $88
	adc  c                                           ; $5caa: $89
	adc  b                                           ; $5cab: $88
	adc  b                                           ; $5cac: $88
	adc  b                                           ; $5cad: $88
	adc  b                                           ; $5cae: $88
	adc  c                                           ; $5caf: $89
	sbc  c                                           ; $5cb0: $99
	sbc  b                                           ; $5cb1: $98
	sbc  c                                           ; $5cb2: $99
	sbc  b                                           ; $5cb3: $98
	adc  b                                           ; $5cb4: $88
	sbc  b                                           ; $5cb5: $98
	ld   [hl], a                                     ; $5cb6: $77
	ld   [hl], a                                     ; $5cb7: $77
	ld   [hl], a                                     ; $5cb8: $77
	adc  b                                           ; $5cb9: $88
	adc  b                                           ; $5cba: $88
	adc  b                                           ; $5cbb: $88
	adc  b                                           ; $5cbc: $88
	adc  b                                           ; $5cbd: $88
	adc  b                                           ; $5cbe: $88
	sbc  c                                           ; $5cbf: $99
	sbc  c                                           ; $5cc0: $99
	sbc  c                                           ; $5cc1: $99
	adc  b                                           ; $5cc2: $88
	sbc  c                                           ; $5cc3: $99
	sbc  b                                           ; $5cc4: $98
	adc  b                                           ; $5cc5: $88
	ld   a, b                                        ; $5cc6: $78
	adc  b                                           ; $5cc7: $88
	add  a                                           ; $5cc8: $87
	ld   [hl], a                                     ; $5cc9: $77
	ld   a, b                                        ; $5cca: $78
	adc  b                                           ; $5ccb: $88
	adc  c                                           ; $5ccc: $89
	sbc  b                                           ; $5ccd: $98
	adc  b                                           ; $5cce: $88
	adc  b                                           ; $5ccf: $88
	adc  b                                           ; $5cd0: $88
	adc  c                                           ; $5cd1: $89
	sbc  b                                           ; $5cd2: $98
	adc  b                                           ; $5cd3: $88
	adc  b                                           ; $5cd4: $88
	adc  b                                           ; $5cd5: $88
	adc  b                                           ; $5cd6: $88
	adc  b                                           ; $5cd7: $88
	adc  b                                           ; $5cd8: $88
	ld   a, b                                        ; $5cd9: $78
	ld   [hl], a                                     ; $5cda: $77
	adc  b                                           ; $5cdb: $88
	adc  b                                           ; $5cdc: $88
	adc  b                                           ; $5cdd: $88
	adc  b                                           ; $5cde: $88
	adc  b                                           ; $5cdf: $88
	sbc  c                                           ; $5ce0: $99
	sbc  c                                           ; $5ce1: $99
	adc  b                                           ; $5ce2: $88
	ld   [hl], a                                     ; $5ce3: $77
	ld   a, b                                        ; $5ce4: $78
	adc  c                                           ; $5ce5: $89
	sbc  b                                           ; $5ce6: $98
	adc  b                                           ; $5ce7: $88
	adc  b                                           ; $5ce8: $88
	ld   a, b                                        ; $5ce9: $78
	adc  b                                           ; $5cea: $88
	adc  b                                           ; $5ceb: $88
	adc  b                                           ; $5cec: $88
	ld   a, b                                        ; $5ced: $78
	adc  b                                           ; $5cee: $88
	sbc  c                                           ; $5cef: $99
	adc  c                                           ; $5cf0: $89
	adc  b                                           ; $5cf1: $88
	ld   [hl], a                                     ; $5cf2: $77
	ld   [hl], a                                     ; $5cf3: $77
	adc  b                                           ; $5cf4: $88
	adc  b                                           ; $5cf5: $88
	adc  b                                           ; $5cf6: $88
	add  a                                           ; $5cf7: $87
	ld   [hl], a                                     ; $5cf8: $77
	adc  b                                           ; $5cf9: $88
	adc  c                                           ; $5cfa: $89
	adc  b                                           ; $5cfb: $88
	add  a                                           ; $5cfc: $87
	ld   [hl], a                                     ; $5cfd: $77
	adc  b                                           ; $5cfe: $88
	sbc  c                                           ; $5cff: $99
	sbc  b                                           ; $5d00: $98
	adc  b                                           ; $5d01: $88
	ld   [hl], a                                     ; $5d02: $77
	ld   a, b                                        ; $5d03: $78
	adc  b                                           ; $5d04: $88
	adc  b                                           ; $5d05: $88
	add  a                                           ; $5d06: $87
	ld   [hl], a                                     ; $5d07: $77
	adc  b                                           ; $5d08: $88
	adc  c                                           ; $5d09: $89
	adc  b                                           ; $5d0a: $88
	adc  b                                           ; $5d0b: $88
	adc  b                                           ; $5d0c: $88
	adc  b                                           ; $5d0d: $88
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	adc  b                                           ; $5d10: $88
	adc  b                                           ; $5d11: $88
	add  a                                           ; $5d12: $87
	adc  b                                           ; $5d13: $88
	adc  b                                           ; $5d14: $88
	adc  b                                           ; $5d15: $88
	adc  b                                           ; $5d16: $88
	ld   [hl], a                                     ; $5d17: $77
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
	add  a                                           ; $5d26: $87
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
	adc  c                                           ; $602b: $89
	sbc  c                                           ; $602c: $99
	adc  c                                           ; $602d: $89
	adc  b                                           ; $602e: $88
	sbc  b                                           ; $602f: $98
	ld   [hl], a                                     ; $6030: $77
	ld   [hl], a                                     ; $6031: $77
	ld   [hl], a                                     ; $6032: $77
	ld   [hl], a                                     ; $6033: $77
	ld   [hl], a                                     ; $6034: $77
	adc  b                                           ; $6035: $88
	sbc  d                                           ; $6036: $9a
	sbc  d                                           ; $6037: $9a
	sbc  c                                           ; $6038: $99
	sbc  b                                           ; $6039: $98
	adc  b                                           ; $603a: $88
	sbc  c                                           ; $603b: $99
	adc  b                                           ; $603c: $88
	adc  b                                           ; $603d: $88
	adc  b                                           ; $603e: $88
	adc  b                                           ; $603f: $88
	ld   [hl], a                                     ; $6040: $77
	ld   [hl], a                                     ; $6041: $77
	ld   h, [hl]                                     ; $6042: $66
	ld   h, [hl]                                     ; $6043: $66
	ld   h, [hl]                                     ; $6044: $66
	ld   h, [hl]                                     ; $6045: $66
	ld   a, b                                        ; $6046: $78
	sbc  h                                           ; $6047: $9c
	db   $dd                                         ; $6048: $dd
	cp   e                                           ; $6049: $bb
	sbc  b                                           ; $604a: $98
	adc  b                                           ; $604b: $88
	adc  c                                           ; $604c: $89
	adc  b                                           ; $604d: $88
	add  a                                           ; $604e: $87
	adc  c                                           ; $604f: $89
	adc  c                                           ; $6050: $89
	sbc  c                                           ; $6051: $99
	ld   [hl], l                                     ; $6052: $75
	ld   sp, $3711                                   ; $6053: $31 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6056: $cf
	rst  $38                                         ; $6057: $ff
	ret  z                                           ; $6058: $c8

	sub  a                                           ; $6059: $97
	adc  c                                           ; $605a: $89
	sbc  c                                           ; $605b: $99
	ld   [hl], h                                     ; $605c: $74
	ld   b, h                                        ; $605d: $44
	ld   a, c                                        ; $605e: $79
	sbc  $dd                                         ; $605f: $de $dd
	sub  [hl]                                        ; $6061: $96
	ld   d, h                                        ; $6062: $54
	ld   d, [hl]                                     ; $6063: $56
	ld   h, a                                        ; $6064: $67
	ld   h, [hl]                                     ; $6065: $66
	ld   d, [hl]                                     ; $6066: $56
	adc  d                                           ; $6067: $8a
	xor  e                                           ; $6068: $ab
	xor  b                                           ; $6069: $a8
	halt                                             ; $606a: $76
	ld   d, [hl]                                     ; $606b: $56
	ld   a, b                                        ; $606c: $78
	xor  d                                           ; $606d: $aa
	xor  d                                           ; $606e: $aa
	xor  d                                           ; $606f: $aa
	xor  e                                           ; $6070: $ab
	cp   d                                           ; $6071: $ba
	sub  a                                           ; $6072: $97
	ld   h, h                                        ; $6073: $64
	inc  sp                                          ; $6074: $33
	ld   [hl+], a                                    ; $6075: $22
	ld   de, $cf36                                   ; $6076: $11 $36 $cf
	rst  $38                                         ; $6079: $ff
	ld   a, [$4676]                                  ; $607a: $fa $76 $46
	adc  b                                           ; $607d: $88
	adc  b                                           ; $607e: $88
	halt                                             ; $607f: $76
	adc  d                                           ; $6080: $8a
	cp   a                                           ; $6081: $bf
	db   $ec                                         ; $6082: $ec
	or   a                                           ; $6083: $b7
	ld   b, e                                        ; $6084: $43
	inc  [hl]                                        ; $6085: $34
	ld   d, l                                        ; $6086: $55
	ld   d, h                                        ; $6087: $54
	ld   hl, $df58                                   ; $6088: $21 $58 $df
	rst  $38                                         ; $608b: $ff
	rst  $10                                         ; $608c: $d7
	ld   sp, $9b25                                   ; $608d: $31 $25 $9b
	cp   e                                           ; $6090: $bb
	add  [hl]                                        ; $6091: $86
	ld   a, c                                        ; $6092: $79
	cp   l                                           ; $6093: $bd
	db   $fd                                         ; $6094: $fd
	and  [hl]                                        ; $6095: $a6
	ld   hl, $1111                                   ; $6096: $21 $11 $11
	dec  d                                           ; $6099: $15
	sbc  [hl]                                        ; $609a: $9e
	rst  $38                                         ; $609b: $ff
	rst  $38                                         ; $609c: $ff
	xor  b                                           ; $609d: $a8
	ld   d, h                                        ; $609e: $54
	ld   d, [hl]                                     ; $609f: $56
	ld   [hl], a                                     ; $60a0: $77
	ld   [hl], a                                     ; $60a1: $77
	ld   l, b                                        ; $60a2: $68
	xor  h                                           ; $60a3: $ac
	cp   $d9                                         ; $60a4: $fe $d9
	ld   d, e                                        ; $60a6: $53
	ld   bc, $1111                                   ; $60a7: $01 $11 $11
	ld   a, l                                        ; $60aa: $7d
	rst  $38                                         ; $60ab: $ff
	rst  $38                                         ; $60ac: $ff
	ret                                              ; $60ad: $c9


	ld   h, e                                        ; $60ae: $63
	ld   d, [hl]                                     ; $60af: $56
	ld   h, a                                        ; $60b0: $67
	ld   d, l                                        ; $60b1: $55
	ld   d, a                                        ; $60b2: $57
	xor  l                                           ; $60b3: $ad
	rst  $38                                         ; $60b4: $ff
	ei                                               ; $60b5: $fb
	ld   h, e                                        ; $60b6: $63
	ld   de, $1111                                   ; $60b7: $11 $11 $11
	ld   e, e                                        ; $60ba: $5b
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	ld   [$4573], a                                  ; $60bd: $ea $73 $45
	ld   h, a                                        ; $60c0: $67
	ld   h, [hl]                                     ; $60c1: $66
	ld   d, [hl]                                     ; $60c2: $56
	sbc  e                                           ; $60c3: $9b
	rst  $38                                         ; $60c4: $ff
	db   $ed                                         ; $60c5: $ed
	ld   [hl], e                                     ; $60c6: $73
	ld   de, $1311                                   ; $60c7: $11 $11 $13
	adc  a                                           ; $60ca: $8f
	rst  $38                                         ; $60cb: $ff
	rst  $38                                         ; $60cc: $ff
	cp   c                                           ; $60cd: $b9
	ld   [hl], l                                     ; $60ce: $75
	halt                                             ; $60cf: $76
	ld   h, a                                        ; $60d0: $67
	ld   d, l                                        ; $60d1: $55
	ld   d, a                                        ; $60d2: $57
	xor  l                                           ; $60d3: $ad
	cp   $ea                                         ; $60d4: $fe $ea
	ld   d, d                                        ; $60d6: $52
	ld   de, $3811                                   ; $60d7: $11 $11 $38
	rst  $38                                         ; $60da: $ff
	rst  $38                                         ; $60db: $ff
	ld   a, [$6796]                                  ; $60dc: $fa $96 $67
	ld   [hl], a                                     ; $60df: $77
	halt                                             ; $60e0: $76
	ld   b, l                                        ; $60e1: $45
	ld   a, c                                        ; $60e2: $79
	sbc  $ed                                         ; $60e3: $de $ed
	sub  h                                           ; $60e5: $94
	ld   de, $1411                                   ; $60e6: $11 $11 $14
	xor  a                                           ; $60e9: $af
	rst  $38                                         ; $60ea: $ff
	db   $fd                                         ; $60eb: $fd
	sub  a                                           ; $60ec: $97
	ld   d, [hl]                                     ; $60ed: $56
	adc  b                                           ; $60ee: $88
	add  a                                           ; $60ef: $87
	ld   d, h                                        ; $60f0: $54
	ld   d, a                                        ; $60f1: $57
	sbc  l                                           ; $60f2: $9d
	cp   $c7                                         ; $60f3: $fe $c7
	ld   sp, $1111                                   ; $60f5: $31 $11 $11
	ld   a, [hl]                                     ; $60f8: $7e
	rst  $38                                         ; $60f9: $ff
	rst  $38                                         ; $60fa: $ff
	cp   d                                           ; $60fb: $ba
	halt                                             ; $60fc: $76
	ld   [hl], a                                     ; $60fd: $77
	ld   [hl], a                                     ; $60fe: $77
	ld   h, l                                        ; $60ff: $65
	ld   d, [hl]                                     ; $6100: $56
	adc  h                                           ; $6101: $8c
	xor  $d9                                         ; $6102: $ee $d9
	ld   d, c                                        ; $6104: $51
	ld   de, $5c11                                   ; $6105: $11 $11 $5c
	rst  $38                                         ; $6108: $ff
	rst  $38                                         ; $6109: $ff
	jp   z, $8987                                    ; $610a: $ca $87 $89

	sub  a                                           ; $610d: $97
	ld   h, h                                        ; $610e: $64
	ld   b, l                                        ; $610f: $45
	ld   a, e                                        ; $6110: $7b
	sbc  $da                                         ; $6111: $de $da
	ld   h, d                                        ; $6113: $62
	ld   de, $5b11                                   ; $6114: $11 $11 $5b
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	cp   c                                           ; $6119: $b9
	adc  b                                           ; $611a: $88
	sbc  d                                           ; $611b: $9a
	sbc  b                                           ; $611c: $98
	ld   h, h                                        ; $611d: $64
	ld   b, l                                        ; $611e: $45
	ld   l, c                                        ; $611f: $69
	call Call_0a9_62da                               ; $6120: $cd $da $62
	ld   de, $7c12                                   ; $6123: $11 $12 $7c
	rst  $38                                         ; $6126: $ff
	db   $fd                                         ; $6127: $fd
	sbc  b                                           ; $6128: $98
	adc  b                                           ; $6129: $88
	sbc  d                                           ; $612a: $9a
	xor  b                                           ; $612b: $a8
	ld   h, h                                        ; $612c: $64
	ld   b, l                                        ; $612d: $45
	ld   a, d                                        ; $612e: $7a
	res  5, b                                        ; $612f: $cb $a8
	ld   d, c                                        ; $6131: $51
	ld   de, $9d14                                   ; $6132: $11 $14 $9d
	rst  $28                                         ; $6135: $ef
	db   $ec                                         ; $6136: $ec
	sbc  c                                           ; $6137: $99
	sbc  d                                           ; $6138: $9a
	sbc  c                                           ; $6139: $99
	sub  a                                           ; $613a: $97
	ld   h, l                                        ; $613b: $65
	ld   h, [hl]                                     ; $613c: $66
	adc  d                                           ; $613d: $8a
	cp   e                                           ; $613e: $bb
	sub  a                                           ; $613f: $97
	ld   b, d                                        ; $6140: $42
	ld   de, $9c36                                   ; $6141: $11 $36 $9c
	db   $dd                                         ; $6144: $dd
	db   $db                                         ; $6145: $db
	xor  c                                           ; $6146: $a9
	sbc  d                                           ; $6147: $9a
	sbc  c                                           ; $6148: $99
	add  a                                           ; $6149: $87
	ld   h, [hl]                                     ; $614a: $66
	ld   h, a                                        ; $614b: $67
	sbc  d                                           ; $614c: $9a
	sbc  d                                           ; $614d: $9a
	add  [hl]                                        ; $614e: $86
	ld   b, d                                        ; $614f: $42
	inc  hl                                          ; $6150: $23
	ld   b, a                                        ; $6151: $47
	xor  e                                           ; $6152: $ab
	call c, $a9ba                                    ; $6153: $dc $ba $a9
	sbc  d                                           ; $6156: $9a
	sbc  b                                           ; $6157: $98
	add  a                                           ; $6158: $87
	ld   h, a                                        ; $6159: $67
	ld   a, b                                        ; $615a: $78
	sbc  c                                           ; $615b: $99
	sbc  b                                           ; $615c: $98
	halt                                             ; $615d: $76
	ld   b, e                                        ; $615e: $43
	inc  [hl]                                        ; $615f: $34
	ld   d, a                                        ; $6160: $57
	sbc  d                                           ; $6161: $9a
	call z, $99aa                                    ; $6162: $cc $aa $99
	sbc  c                                           ; $6165: $99
	adc  c                                           ; $6166: $89
	add  a                                           ; $6167: $87
	ld   [hl], a                                     ; $6168: $77
	ld   a, b                                        ; $6169: $78
	adc  c                                           ; $616a: $89
	sbc  b                                           ; $616b: $98
	halt                                             ; $616c: $76
	ld   d, h                                        ; $616d: $54
	ld   b, h                                        ; $616e: $44
	ld   d, a                                        ; $616f: $57
	sbc  c                                           ; $6170: $99
	xor  e                                           ; $6171: $ab
	cp   d                                           ; $6172: $ba
	sbc  c                                           ; $6173: $99
	sbc  b                                           ; $6174: $98
	adc  c                                           ; $6175: $89
	add  a                                           ; $6176: $87
	ld   [hl], a                                     ; $6177: $77
	ld   a, b                                        ; $6178: $78
	sbc  c                                           ; $6179: $99
	sbc  c                                           ; $617a: $99
	sub  a                                           ; $617b: $97
	ld   h, [hl]                                     ; $617c: $66
	ld   d, l                                        ; $617d: $55
	ld   d, [hl]                                     ; $617e: $56
	ld   a, b                                        ; $617f: $78
	sbc  c                                           ; $6180: $99
	xor  d                                           ; $6181: $aa
	sbc  d                                           ; $6182: $9a
	sbc  b                                           ; $6183: $98
	sbc  b                                           ; $6184: $98
	adc  b                                           ; $6185: $88
	ld   a, b                                        ; $6186: $78
	ld   a, b                                        ; $6187: $78
	adc  c                                           ; $6188: $89
	sbc  c                                           ; $6189: $99
	sbc  b                                           ; $618a: $98
	add  a                                           ; $618b: $87
	ld   h, [hl]                                     ; $618c: $66
	ld   d, [hl]                                     ; $618d: $56
	ld   h, a                                        ; $618e: $67
	adc  b                                           ; $618f: $88
	sbc  d                                           ; $6190: $9a
	sbc  c                                           ; $6191: $99
	sbc  b                                           ; $6192: $98
	sbc  b                                           ; $6193: $98
	adc  b                                           ; $6194: $88
	ld   a, b                                        ; $6195: $78
	adc  b                                           ; $6196: $88
	sbc  b                                           ; $6197: $98

Call_0a9_6198:
	sbc  c                                           ; $6198: $99
	sbc  b                                           ; $6199: $98
	adc  c                                           ; $619a: $89
	add  a                                           ; $619b: $87
	halt                                             ; $619c: $76
	ld   h, [hl]                                     ; $619d: $66
	ld   h, a                                        ; $619e: $67
	sbc  c                                           ; $619f: $99
	xor  c                                           ; $61a0: $a9
	sbc  b                                           ; $61a1: $98
	adc  b                                           ; $61a2: $88
	adc  b                                           ; $61a3: $88
	sbc  c                                           ; $61a4: $99
	adc  b                                           ; $61a5: $88
	add  a                                           ; $61a6: $87
	adc  c                                           ; $61a7: $89
	adc  c                                           ; $61a8: $89
	sbc  c                                           ; $61a9: $99
	sbc  b                                           ; $61aa: $98
	ld   [hl], a                                     ; $61ab: $77
	ld   [hl], a                                     ; $61ac: $77
	ld   [hl], a                                     ; $61ad: $77
	ld   [hl], a                                     ; $61ae: $77
	adc  c                                           ; $61af: $89
	sbc  c                                           ; $61b0: $99
	sbc  b                                           ; $61b1: $98
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  c                                           ; $61b4: $89
	sbc  c                                           ; $61b5: $99
	sbc  b                                           ; $61b6: $98
	adc  b                                           ; $61b7: $88
	sbc  b                                           ; $61b8: $98
	adc  c                                           ; $61b9: $89
	sbc  b                                           ; $61ba: $98
	add  a                                           ; $61bb: $87
	ld   [hl], a                                     ; $61bc: $77
	ld   [hl], a                                     ; $61bd: $77
	adc  b                                           ; $61be: $88
	adc  b                                           ; $61bf: $88
	adc  b                                           ; $61c0: $88
	adc  b                                           ; $61c1: $88
	adc  b                                           ; $61c2: $88
	adc  b                                           ; $61c3: $88
	adc  b                                           ; $61c4: $88
	adc  b                                           ; $61c5: $88
	adc  b                                           ; $61c6: $88
	adc  c                                           ; $61c7: $89
	sbc  b                                           ; $61c8: $98
	adc  c                                           ; $61c9: $89
	sbc  b                                           ; $61ca: $98
	adc  b                                           ; $61cb: $88
	ld   [hl], a                                     ; $61cc: $77
	ld   [hl], a                                     ; $61cd: $77
	ld   [hl], a                                     ; $61ce: $77
	ld   a, b                                        ; $61cf: $78
	adc  b                                           ; $61d0: $88
	adc  b                                           ; $61d1: $88
	adc  b                                           ; $61d2: $88
	adc  b                                           ; $61d3: $88
	adc  b                                           ; $61d4: $88
	adc  b                                           ; $61d5: $88
	adc  b                                           ; $61d6: $88
	adc  b                                           ; $61d7: $88
	sbc  c                                           ; $61d8: $99
	adc  b                                           ; $61d9: $88
	sbc  b                                           ; $61da: $98
	add  a                                           ; $61db: $87
	ld   [hl], a                                     ; $61dc: $77
	ld   [hl], a                                     ; $61dd: $77
	ld   a, b                                        ; $61de: $78
	adc  b                                           ; $61df: $88
	adc  b                                           ; $61e0: $88
	adc  b                                           ; $61e1: $88
	adc  b                                           ; $61e2: $88
	adc  c                                           ; $61e3: $89
	adc  b                                           ; $61e4: $88
	adc  b                                           ; $61e5: $88
	adc  b                                           ; $61e6: $88
	adc  b                                           ; $61e7: $88
	sbc  c                                           ; $61e8: $99
	sbc  c                                           ; $61e9: $99
	adc  b                                           ; $61ea: $88
	adc  b                                           ; $61eb: $88
	ld   a, b                                        ; $61ec: $78
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
	sbc  c                                           ; $61f8: $99
	sbc  b                                           ; $61f9: $98
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
	add  c                                           ; $6279: $81
	ld   de, $1111                                   ; $627a: $11 $11 $11
	ld   de, $1111                                   ; $627d: $11 $11 $11
	ld   de, $1111                                   ; $6280: $11 $11 $11
	ld   de, $1111                                   ; $6283: $11 $11 $11
	ld   de, $1111                                   ; $6286: $11 $11 $11
	ld   de, $1111                                   ; $6289: $11 $11 $11
	ld   de, $1111                                   ; $628c: $11 $11 $11
	ld   de, $1111                                   ; $628f: $11 $11 $11
	ld   de, $1111                                   ; $6292: $11 $11 $11
	ld   de, $4800                                   ; $6295: $11 $00 $48
	ld   de, $1111                                   ; $6298: $11 $11 $11
	ld   de, $1111                                   ; $629b: $11 $11 $11
	ld   de, $1111                                   ; $629e: $11 $11 $11
	ld   de, $5413                                   ; $62a1: $11 $13 $54
	ld   d, h                                        ; $62a4: $54
	ld   d, h                                        ; $62a5: $54
	ld   b, c                                        ; $62a6: $41
	rra                                              ; $62a7: $1f
	rst  $38                                         ; $62a8: $ff
	pop  af                                          ; $62a9: $f1
	ld   de, $1511                                   ; $62aa: $11 $11 $15
	ld   [hl], c                                     ; $62ad: $71
	ld   de, $dd1c                                   ; $62ae: $11 $1c $dd
	cp   h                                           ; $62b1: $bc
	db   $dd                                         ; $62b2: $dd
	pop  bc                                          ; $62b3: $c1
	ld   de, $1111                                   ; $62b4: $11 $11 $11
	ld   de, $1111                                   ; $62b7: $11 $11 $11
	ld   de, $1111                                   ; $62ba: $11 $11 $11
	ld   de, $1111                                   ; $62bd: $11 $11 $11
	ld   de, $5411                                   ; $62c0: $11 $11 $54
	ld   b, h                                        ; $62c3: $44
	ld   h, l                                        ; $62c4: $65
	ld   de, $5454                                   ; $62c5: $11 $54 $54
	ld   h, a                                        ; $62c8: $67
	ld   [hl], d                                     ; $62c9: $72
	ld   de, $1111                                   ; $62ca: $11 $11 $11
	ld   de, $1112                                   ; $62cd: $11 $12 $11
	ld   [de], a                                     ; $62d0: $12
	ld   de, $1111                                   ; $62d1: $11 $11 $11
	ld   h, [hl]                                     ; $62d4: $66
	halt                                             ; $62d5: $76
	ld   b, l                                        ; $62d6: $45
	ld   de, $8888                                   ; $62d7: $11 $88 $88

Call_0a9_62da:
	add  a                                           ; $62da: $87
	ld   [hl], a                                     ; $62db: $77
	ld   [hl], a                                     ; $62dc: $77
	ld   [hl], a                                     ; $62dd: $77
	ld   [hl], a                                     ; $62de: $77
	ld   [hl], a                                     ; $62df: $77
	ld   [hl], a                                     ; $62e0: $77
	ld   [hl], a                                     ; $62e1: $77
	ld   [hl], a                                     ; $62e2: $77
	ld   [hl], a                                     ; $62e3: $77
	ld   [hl], a                                     ; $62e4: $77
	ld   [hl], a                                     ; $62e5: $77
	ld   a, b                                        ; $62e6: $78
	adc  b                                           ; $62e7: $88
	adc  c                                           ; $62e8: $89
	adc  c                                           ; $62e9: $89
	sbc  c                                           ; $62ea: $99
	xor  c                                           ; $62eb: $a9
	sbc  d                                           ; $62ec: $9a
	xor  d                                           ; $62ed: $aa
	xor  d                                           ; $62ee: $aa
	xor  d                                           ; $62ef: $aa
	xor  d                                           ; $62f0: $aa
	sbc  c                                           ; $62f1: $99
	xor  c                                           ; $62f2: $a9
	sbc  b                                           ; $62f3: $98
	sbc  b                                           ; $62f4: $98
	add  a                                           ; $62f5: $87
	ld   [hl], a                                     ; $62f6: $77
	halt                                             ; $62f7: $76
	ld   h, [hl]                                     ; $62f8: $66
	ld   d, l                                        ; $62f9: $55
	ld   d, h                                        ; $62fa: $54
	ld   b, h                                        ; $62fb: $44
	inc  sp                                          ; $62fc: $33
	inc  sp                                          ; $62fd: $33
	inc  sp                                          ; $62fe: $33
	ld   b, h                                        ; $62ff: $44
	ld   d, l                                        ; $6300: $55
	ld   h, a                                        ; $6301: $67
	adc  b                                           ; $6302: $88
	sbc  c                                           ; $6303: $99
	xor  d                                           ; $6304: $aa
	cp   h                                           ; $6305: $bc
	cp   h                                           ; $6306: $bc
	call $fede                                       ; $6307: $cd $de $fe
	xor  $ef                                         ; $630a: $ee $ef
	db   $ed                                         ; $630c: $ed
	call z, $a9ca                                    ; $630d: $cc $ca $a9
	adc  b                                           ; $6310: $88
	halt                                             ; $6311: $76
	ld   d, l                                        ; $6312: $55
	ld   b, e                                        ; $6313: $43
	ld   [hl-], a                                    ; $6314: $32
	ld   hl, $1111                                   ; $6315: $21 $11 $11
	ld   de, $1211                                   ; $6318: $11 $11 $12
	dec  [hl]                                        ; $631b: $35
	ld   h, a                                        ; $631c: $67
	ld   a, b                                        ; $631d: $78
	sbc  d                                           ; $631e: $9a
	xor  e                                           ; $631f: $ab
	cp   h                                           ; $6320: $bc
	call z, $ddde                                    ; $6321: $cc $de $dd
	xor  $fe                                         ; $6324: $ee $fe
	cp   $ef                                         ; $6326: $fe $ef
	db   $ed                                         ; $6328: $ed
	call c, $99ca                                    ; $6329: $dc $ca $99
	add  a                                           ; $632c: $87
	ld   h, [hl]                                     ; $632d: $66
	ld   d, h                                        ; $632e: $54
	inc  sp                                          ; $632f: $33
	ld   [hl+], a                                    ; $6330: $22
	ld   de, $1111                                   ; $6331: $11 $11 $11
	ld   de, $1111                                   ; $6334: $11 $11 $11
	ld   b, [hl]                                     ; $6337: $46
	ld   d, [hl]                                     ; $6338: $56
	adc  c                                           ; $6339: $89
	sbc  c                                           ; $633a: $99
	cp   e                                           ; $633b: $bb
	call z, $eedd                                    ; $633c: $cc $dd $ee
	db   $dd                                         ; $633f: $dd
	xor  $ef                                         ; $6340: $ee $ef
	cp   $fe                                         ; $6342: $fe $fe
	db   $ed                                         ; $6344: $ed
	call c, $b9cb                                    ; $6345: $dc $cb $b9
	sbc  b                                           ; $6348: $98
	halt                                             ; $6349: $76
	ld   h, l                                        ; $634a: $65
	ld   b, h                                        ; $634b: $44
	ld   [hl-], a                                    ; $634c: $32
	ld   de, $1111                                   ; $634d: $11 $11 $11
	ld   de, $1111                                   ; $6350: $11 $11 $11
	inc  h                                           ; $6353: $24
	ld   d, [hl]                                     ; $6354: $56
	ld   [hl], a                                     ; $6355: $77
	sbc  d                                           ; $6356: $9a
	cp   e                                           ; $6357: $bb
	set  3, l                                        ; $6358: $cb $dd
	sbc  $ed                                         ; $635a: $de $ed
	xor  $ff                                         ; $635c: $ee $ff
	rst  $28                                         ; $635e: $ef
	rst  $38                                         ; $635f: $ff
	cp   $ee                                         ; $6360: $fe $ee
	db   $dd                                         ; $6362: $dd
	jp   z, $8799                                    ; $6363: $ca $99 $87

	ld   h, l                                        ; $6366: $65
	ld   b, h                                        ; $6367: $44
	ld   [hl-], a                                    ; $6368: $32
	ld   de, $1111                                   ; $6369: $11 $11 $11
	ld   de, $1111                                   ; $636c: $11 $11 $11
	inc  de                                          ; $636f: $13
	ld   [hl], $85                                   ; $6370: $36 $85
	ld   a, d                                        ; $6372: $7a
	xor  e                                           ; $6373: $ab
	cp   l                                           ; $6374: $bd
	call $ffde                                       ; $6375: $cd $de $ff
	rst  $38                                         ; $6378: $ff
	rst  $38                                         ; $6379: $ff
	rst  $38                                         ; $637a: $ff
	rst  $38                                         ; $637b: $ff
	rst  $38                                         ; $637c: $ff
	cp   $dd                                         ; $637d: $fe $dd
	cp   d                                           ; $637f: $ba
	sbc  c                                           ; $6380: $99
	add  a                                           ; $6381: $87
	ld   h, l                                        ; $6382: $65
	ld   b, e                                        ; $6383: $43
	ld   hl, $1111                                   ; $6384: $21 $11 $11
	ld   de, $1111                                   ; $6387: $11 $11 $11
	ld   de, $4512                                   ; $638a: $11 $12 $45
	ld   h, a                                        ; $638d: $67
	adc  d                                           ; $638e: $8a
	cp   h                                           ; $638f: $bc
	call $efde                                       ; $6390: $cd $de $ef
	rst  $38                                         ; $6393: $ff
	rst  $38                                         ; $6394: $ff
	rst  $38                                         ; $6395: $ff
	rst  $38                                         ; $6396: $ff
	rst  $38                                         ; $6397: $ff
	rst  $38                                         ; $6398: $ff
	rst  $38                                         ; $6399: $ff
	call z, $98ba                                    ; $639a: $cc $ba $98
	ld   [hl], l                                     ; $639d: $75
	ld   d, h                                        ; $639e: $54
	ld   [hl-], a                                    ; $639f: $32
	ld   hl, $1111                                   ; $63a0: $21 $11 $11
	ld   de, $1111                                   ; $63a3: $11 $11 $11
	ld   de, $aa27                                   ; $63a6: $11 $27 $aa
	cp   l                                           ; $63a9: $bd
	rst  $38                                         ; $63aa: $ff
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	rst  $38                                         ; $63ad: $ff
	rst  $38                                         ; $63ae: $ff
	rst  $38                                         ; $63af: $ff
	rst  $38                                         ; $63b0: $ff
	db   $fc                                         ; $63b1: $fc
	rst  JumpTable                                         ; $63b2: $df
	db   $fd                                         ; $63b3: $fd
	call z, $85ab                                    ; $63b4: $cc $ab $85
	ld   [hl+], a                                    ; $63b7: $22
	ld   sp, $1111                                   ; $63b8: $31 $11 $11
	ld   de, $1111                                   ; $63bb: $11 $11 $11
	ld   de, $6813                                   ; $63be: $11 $13 $68
	cp   a                                           ; $63c1: $bf
	rst  $38                                         ; $63c2: $ff
	rst  $38                                         ; $63c3: $ff
	rst  $38                                         ; $63c4: $ff
	rst  $38                                         ; $63c5: $ff
	rst  $38                                         ; $63c6: $ff
	rst  $38                                         ; $63c7: $ff
	sbc  c                                           ; $63c8: $99
	cp   e                                           ; $63c9: $bb
	cp   d                                           ; $63ca: $ba
	xor  c                                           ; $63cb: $a9
	rst  JumpTable                                         ; $63cc: $df
	db   $fd                                         ; $63cd: $fd
	rst  JumpTable                                         ; $63ce: $df
	ei                                               ; $63cf: $fb
	ld   h, c                                        ; $63d0: $61
	ld   de, $1111                                   ; $63d1: $11 $11 $11
	ld   de, $1111                                   ; $63d4: $11 $11 $11
	ld   d, $ce                                      ; $63d7: $16 $ce
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	ld   a, [$5187]                                  ; $63de: $fa $87 $51
	ld   de, $ab58                                   ; $63e1: $11 $58 $ab
	rst  $28                                         ; $63e4: $ef
	rst  $38                                         ; $63e5: $ff
	rst  $38                                         ; $63e6: $ff
	rst  $38                                         ; $63e7: $ff
	sub  c                                           ; $63e8: $91
	ld   de, $1111                                   ; $63e9: $11 $11 $11
	ld   de, $1111                                   ; $63ec: $11 $11 $11
	rst  JumpTable                                         ; $63ef: $df
	rst  $38                                         ; $63f0: $ff

jr_0a9_63f1:
	rst  $38                                         ; $63f1: $ff
	rst  $38                                         ; $63f2: $ff
	rst  $38                                         ; $63f3: $ff
	rst  $38                                         ; $63f4: $ff
	ld   sp, hl                                      ; $63f5: $f9
	ld   de, $1111                                   ; $63f6: $11 $11 $11
	inc  d                                           ; $63f9: $14
	sbc  $cf                                         ; $63fa: $de $cf
	rst  $38                                         ; $63fc: $ff
	rst  $38                                         ; $63fd: $ff
	rst  $38                                         ; $63fe: $ff
	or   $11                                         ; $63ff: $f6 $11
	ld   de, $1111                                   ; $6401: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6404: $11 $11 $ff
	rst  $38                                         ; $6407: $ff
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	rst  $38                                         ; $640a: $ff
	rst  $38                                         ; $640b: $ff
	pop  af                                          ; $640c: $f1
	ld   de, $1111                                   ; $640d: $11 $11 $11
	dec  e                                           ; $6410: $1d
	rst  $38                                         ; $6411: $ff
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff
	rst  $38                                         ; $6414: $ff
	rst  $38                                         ; $6415: $ff
	ld   h, c                                        ; $6416: $61
	ld   de, $1111                                   ; $6417: $11 $11 $11
	ld   de, $4f11                                   ; $641a: $11 $11 $4f
	rst  $38                                         ; $641d: $ff
	rst  $38                                         ; $641e: $ff
	rst  $38                                         ; $641f: $ff
	rst  $38                                         ; $6420: $ff
	rst  $38                                         ; $6421: $ff
	ldh  a, [c]                                      ; $6422: $f2
	ld   de, $1111                                   ; $6423: $11 $11 $11
	dec  de                                          ; $6426: $1b
	rst  $38                                         ; $6427: $ff
	rst  $38                                         ; $6428: $ff
	rst  $38                                         ; $6429: $ff
	rst  $38                                         ; $642a: $ff
	cp   $71                                         ; $642b: $fe $71
	ld   de, $1111                                   ; $642d: $11 $11 $11
	ld   de, $1f11                                   ; $6430: $11 $11 $1f
	rst  $38                                         ; $6433: $ff
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	db   $eb                                         ; $6437: $eb
	or   c                                           ; $6438: $b1
	ld   de, $1111                                   ; $6439: $11 $11 $11
	dec  e                                           ; $643c: $1d
	rst  $38                                         ; $643d: $ff
	rst  $38                                         ; $643e: $ff
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	db   $eb                                         ; $6441: $eb
	ld   d, c                                        ; $6442: $51
	ld   de, $1111                                   ; $6443: $11 $11 $11
	ld   de, $1c73                                   ; $6446: $11 $73 $1c
	rst  $38                                         ; $6449: $ff
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	rst  $38                                         ; $644c: $ff
	sub  c                                           ; $644d: $91
	ld   [de], a                                     ; $644e: $12
	ld   de, $1111                                   ; $644f: $11 $11 $11
	inc  e                                           ; $6452: $1c
	rst  $38                                         ; $6453: $ff
	rst  $38                                         ; $6454: $ff
	rst  $38                                         ; $6455: $ff
	rst  $38                                         ; $6456: $ff
	or   l                                           ; $6457: $b5
	ld   sp, $1111                                   ; $6458: $31 $11 $11
	ld   de, $1f11                                   ; $645b: $11 $11 $1f
	sub  c                                           ; $645e: $91
	rst  $38                                         ; $645f: $ff
	rst  $38                                         ; $6460: $ff
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	pop  af                                          ; $6463: $f1
	ld   de, $1111                                   ; $6464: $11 $11 $11
	jr   jr_0a9_63f1                                 ; $6467: $18 $88

	rst  $38                                         ; $6469: $ff
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	jp   nz, $1111                                   ; $646d: $c2 $11 $11

	ld   de, $1111                                   ; $6470: $11 $11 $11
	ld   de, $2ffc                                   ; $6473: $11 $fc $2f
	rst  $38                                         ; $6476: $ff
	rst  $38                                         ; $6477: $ff
	rst  $38                                         ; $6478: $ff
	db   $fc                                         ; $6479: $fc
	ld   de, $1111                                   ; $647a: $11 $11 $11
	ld   [de], a                                     ; $647d: $12
	cp   h                                           ; $647e: $bc
	rst  $28                                         ; $647f: $ef
	rst  $38                                         ; $6480: $ff
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	push af                                          ; $6483: $f5
	ld   de, $1111                                   ; $6484: $11 $11 $11
	ld   de, $1111                                   ; $6487: $11 $11 $11

jr_0a9_648a:
	ccf                                              ; $648a: $3f
	or   d                                           ; $648b: $b2
	rst  $38                                         ; $648c: $ff
	rst  $38                                         ; $648d: $ff
	rst  $38                                         ; $648e: $ff
	rst  $38                                         ; $648f: $ff
	sub  c                                           ; $6490: $91
	ld   de, $1111                                   ; $6491: $11 $11 $11
	ld   l, e                                        ; $6494: $6b
	rst  JumpTable                                         ; $6495: $df
	rst  $38                                         ; $6496: $ff
	rst  $38                                         ; $6497: $ff
	rst  $38                                         ; $6498: $ff
	db   $fd                                         ; $6499: $fd
	ld   b, c                                        ; $649a: $41
	ld   de, $1111                                   ; $649b: $11 $11 $11
	ld   de, $1211                                   ; $649e: $11 $11 $12
	ei                                               ; $64a1: $fb
	cpl                                              ; $64a2: $2f
	rst  $38                                         ; $64a3: $ff
	rst  $38                                         ; $64a4: $ff
	rst  $38                                         ; $64a5: $ff
	ld   sp, hl                                      ; $64a6: $f9
	ld   de, $1121                                   ; $64a7: $11 $21 $11
	jr   jr_0a9_648a                                 ; $64aa: $18 $de

	rst  $38                                         ; $64ac: $ff
	rst  $38                                         ; $64ad: $ff
	rst  $38                                         ; $64ae: $ff
	rst  $38                                         ; $64af: $ff
	and  d                                           ; $64b0: $a2
	ld   de, $1111                                   ; $64b1: $11 $11 $11
	ld   de, $1111                                   ; $64b4: $11 $11 $11
	rst  $38                                         ; $64b7: $ff
	dec  de                                          ; $64b8: $1b

Call_0a9_64b9:
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	rst  $38                                         ; $64bb: $ff
	rst  $38                                         ; $64bc: $ff
	ld   de, $1121                                   ; $64bd: $11 $21 $11
	inc  de                                          ; $64c0: $13
	xor  l                                           ; $64c1: $ad
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	rst  $38                                         ; $64c5: $ff
	push af                                          ; $64c6: $f5
	ld   de, $1111                                   ; $64c7: $11 $11 $11
	ld   de, $1111                                   ; $64ca: $11 $11 $11
	rra                                              ; $64cd: $1f
	push de                                          ; $64ce: $d5
	rst  $38                                         ; $64cf: $ff
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	rst  $38                                         ; $64d2: $ff
	and  c                                           ; $64d3: $a1
	ld   de, $1111                                   ; $64d4: $11 $11 $11
	ld   c, h                                        ; $64d7: $4c
	rst  $38                                         ; $64d8: $ff
	rst  $38                                         ; $64d9: $ff
	rst  $38                                         ; $64da: $ff
	rst  $38                                         ; $64db: $ff
	ei                                               ; $64dc: $fb
	ld   sp, $1111                                   ; $64dd: $31 $11 $11
	ld   de, $1111                                   ; $64e0: $11 $11 $11
	dec  e                                           ; $64e3: $1d
	or   $bf                                         ; $64e4: $f6 $bf
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	rst  $38                                         ; $64e8: $ff
	di                                               ; $64e9: $f3
	inc  de                                          ; $64ea: $13
	ld   de, $3a11                                   ; $64eb: $11 $11 $3a
	rst  $38                                         ; $64ee: $ff
	rst  $38                                         ; $64ef: $ff
	rst  $38                                         ; $64f0: $ff
	rst  $38                                         ; $64f1: $ff
	cp   $52                                         ; $64f2: $fe $52
	ld   de, $1111                                   ; $64f4: $11 $11 $11
	ld   de, $1111                                   ; $64f7: $11 $11 $11
	ld   a, [$ff7f]                                  ; $64fa: $fa $7f $ff
	rst  $38                                         ; $64fd: $ff
	rst  $38                                         ; $64fe: $ff
	ld   hl, sp+$34                                  ; $64ff: $f8 $34
	ld   de, $2611                                   ; $6501: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6504: $cf
	rst  $38                                         ; $6505: $ff
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	sub  e                                           ; $6509: $93
	ld   de, $1111                                   ; $650a: $11 $11 $11
	ld   de, $1111                                   ; $650d: $11 $11 $11
	rst  $38                                         ; $6510: $ff
	ld   l, a                                        ; $6511: $6f
	rst  $38                                         ; $6512: $ff
	rst  $38                                         ; $6513: $ff
	rst  $38                                         ; $6514: $ff
	db   $fc                                         ; $6515: $fc
	ld   b, h                                        ; $6516: $44
	ld   sp, $1311                                   ; $6517: $31 $11 $13
	sbc  a                                           ; $651a: $9f
	rst  $38                                         ; $651b: $ff
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	rst  $38                                         ; $651e: $ff
	push de                                          ; $651f: $d5
	ld   hl, $1111                                   ; $6520: $21 $11 $11
	ld   de, $1111                                   ; $6523: $11 $11 $11
	cp   [hl]                                        ; $6526: $be
	ld   e, a                                        ; $6527: $5f
	rst  $38                                         ; $6528: $ff
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	rst  $38                                         ; $652b: $ff
	ld   [hl], l                                     ; $652c: $75
	ld   b, c                                        ; $652d: $41
	ld   de, $4c11                                   ; $652e: $11 $11 $4c
	rst  $38                                         ; $6531: $ff
	rst  $38                                         ; $6532: $ff
	rst  $38                                         ; $6533: $ff
	rst  $38                                         ; $6534: $ff
	ld   hl, sp+$31                                  ; $6535: $f8 $31
	ld   de, $1111                                   ; $6537: $11 $11 $11
	ld   de, $0c11                                   ; $653a: $11 $11 $0c
	sbc  e                                           ; $653d: $9b
	rst  $38                                         ; $653e: $ff
	rst  $38                                         ; $653f: $ff
	rst  $38                                         ; $6540: $ff
	rst  $38                                         ; $6541: $ff
	rst  ToBoot                                         ; $6542: $c7
	ld   b, c                                        ; $6543: $41
	ld   de, $3a11                                   ; $6544: $11 $11 $3a
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	rst  $38                                         ; $654a: $ff
	ei                                               ; $654b: $fb
	ld   h, c                                        ; $654c: $61
	ld   de, $1111                                   ; $654d: $11 $11 $11
	ld   de, $1811                                   ; $6550: $11 $11 $18
	cp   c                                           ; $6553: $b9
	rst  $38                                         ; $6554: $ff
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	rst  $38                                         ; $6557: $ff
	ld   a, [$1171]                                  ; $6558: $fa $71 $11
	ld   de, $cf25                                   ; $655b: $11 $25 $cf
	rst  $38                                         ; $655e: $ff
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	sub  h                                           ; $6562: $94
	ld   de, $1111                                   ; $6563: $11 $11 $11
	ld   de, $1111                                   ; $6566: $11 $11 $11
	call c, $ffdf                                    ; $6569: $dc $df $ff
	rst  $38                                         ; $656c: $ff
	rst  $38                                         ; $656d: $ff
	db   $fd                                         ; $656e: $fd
	add  h                                           ; $656f: $84
	ld   de, $1311                                   ; $6570: $11 $11 $13
	sbc  a                                           ; $6573: $9f
	rst  $38                                         ; $6574: $ff
	rst  $38                                         ; $6575: $ff
	rst  $38                                         ; $6576: $ff
	rst  $38                                         ; $6577: $ff
	or   l                                           ; $6578: $b5
	ld   de, $1111                                   ; $6579: $11 $11 $11
	ld   de, $1111                                   ; $657c: $11 $11 $11
	sbc  e                                           ; $657f: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6580: $cf
	rst  $38                                         ; $6581: $ff
	rst  $38                                         ; $6582: $ff
	rst  $38                                         ; $6583: $ff
	db   $fd                                         ; $6584: $fd
	and  [hl]                                        ; $6585: $a6
	ld   de, $1211                                   ; $6586: $11 $11 $12
	ld   a, [hl]                                     ; $6589: $7e
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	rst  $38                                         ; $658d: $ff
	rst  $10                                         ; $658e: $d7
	ld   hl, $1111                                   ; $658f: $21 $11 $11
	ld   de, $1111                                   ; $6592: $11 $11 $11
	inc  e                                           ; $6595: $1c
	rst  $38                                         ; $6596: $ff
	rst  $38                                         ; $6597: $ff
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	rst  $38                                         ; $659a: $ff
	or   [hl]                                        ; $659b: $b6
	ld   de, $1111                                   ; $659c: $11 $11 $11
	adc  a                                           ; $659f: $8f
	rst  $38                                         ; $65a0: $ff
	rst  $38                                         ; $65a1: $ff
	rst  $38                                         ; $65a2: $ff
	rst  $38                                         ; $65a3: $ff
	rst  $30                                         ; $65a4: $f7
	ld   de, $1111                                   ; $65a5: $11 $11 $11
	ld   de, $1111                                   ; $65a8: $11 $11 $11
	add  hl, de                                      ; $65ab: $19
	rst  $38                                         ; $65ac: $ff
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	xor  c                                           ; $65b1: $a9
	ld   sp, $1111                                   ; $65b2: $31 $11 $11
	ld   e, l                                        ; $65b5: $5d
	rst  $38                                         ; $65b6: $ff
	rst  $38                                         ; $65b7: $ff
	rst  $38                                         ; $65b8: $ff
	rst  $38                                         ; $65b9: $ff
	ld   a, [$1131]                                  ; $65ba: $fa $31 $11
	ld   de, $1111                                   ; $65bd: $11 $11 $11
	ld   de, $ff19                                   ; $65c0: $11 $19 $ff
	rst  $38                                         ; $65c3: $ff
	rst  $38                                         ; $65c4: $ff
	rst  $38                                         ; $65c5: $ff
	rst  $38                                         ; $65c6: $ff
	ld   a, [$1131]                                  ; $65c7: $fa $31 $11

Call_0a9_65ca:
	ld   de, $ff6b                                   ; $65ca: $11 $6b $ff
	rst  $38                                         ; $65cd: $ff
	rst  $38                                         ; $65ce: $ff
	rst  $38                                         ; $65cf: $ff
	ld   a, [$1111]                                  ; $65d0: $fa $11 $11
	ld   de, $1111                                   ; $65d3: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $65d6: $11 $14 $ff
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	rst  $38                                         ; $65db: $ff
	rst  $38                                         ; $65dc: $ff
	ld   hl, sp+$11                                  ; $65dd: $f8 $11
	ld   de, $9f11                                   ; $65df: $11 $11 $9f
	rst  $38                                         ; $65e2: $ff
	rst  $38                                         ; $65e3: $ff
	rst  $38                                         ; $65e4: $ff
	rst  $38                                         ; $65e5: $ff
	ld   sp, hl                                      ; $65e6: $f9
	ld   de, $1111                                   ; $65e7: $11 $11 $11
	ld   de, $1111                                   ; $65ea: $11 $11 $11
	ld   [de], a                                     ; $65ed: $12
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	rst  $38                                         ; $65f0: $ff
	rst  $38                                         ; $65f1: $ff
	rst  $38                                         ; $65f2: $ff
	rst  $30                                         ; $65f3: $f7
	ld   hl, $1411                                   ; $65f4: $21 $11 $14
	cp   a                                           ; $65f7: $bf
	rst  $38                                         ; $65f8: $ff
	rst  $38                                         ; $65f9: $ff
	rst  $38                                         ; $65fa: $ff
	rst  $38                                         ; $65fb: $ff
	rst  $10                                         ; $65fc: $d7
	ld   de, $1111                                   ; $65fd: $11 $11 $11
	ld   de, $1111                                   ; $6600: $11 $11 $11
	ld   [de], a                                     ; $6603: $12
	rst  $38                                         ; $6604: $ff
	rst  $38                                         ; $6605: $ff
	rst  $38                                         ; $6606: $ff
	rst  $38                                         ; $6607: $ff
	rst  $38                                         ; $6608: $ff
	ld   sp, hl                                      ; $6609: $f9
	ld   [hl-], a                                    ; $660a: $32
	ld   [hl-], a                                    ; $660b: $32
	inc  d                                           ; $660c: $14
	rst  JumpTable                                         ; $660d: $df
	rst  $38                                         ; $660e: $ff
	rst  $38                                         ; $660f: $ff
	rst  $38                                         ; $6610: $ff
	rst  $38                                         ; $6611: $ff
	add  $11                                         ; $6612: $c6 $11
	ld   de, $1111                                   ; $6614: $11 $11 $11
	ld   de, $1211                                   ; $6617: $11 $11 $12
	sbc  a                                           ; $661a: $9f
	rst  $38                                         ; $661b: $ff
	rst  $38                                         ; $661c: $ff
	rst  $38                                         ; $661d: $ff
	rst  $38                                         ; $661e: $ff
	ei                                               ; $661f: $fb
	ld   b, e                                        ; $6620: $43
	ld   sp, $df38                                   ; $6621: $31 $38 $df
	rst  $38                                         ; $6624: $ff
	rst  $38                                         ; $6625: $ff
	rst  $38                                         ; $6626: $ff
	rst  $38                                         ; $6627: $ff
	and  a                                           ; $6628: $a7
	ld   de, $1111                                   ; $6629: $11 $11 $11
	ld   de, $1111                                   ; $662c: $11 $11 $11
	ld   de, $ffcf                                   ; $662f: $11 $cf $ff
	rst  $38                                         ; $6632: $ff
	rst  $38                                         ; $6633: $ff
	rst  $38                                         ; $6634: $ff
	ld   a, [$5444]                                  ; $6635: $fa $44 $54
	ld   l, e                                        ; $6638: $6b
	rst  $28                                         ; $6639: $ef
	rst  $38                                         ; $663a: $ff
	rst  $38                                         ; $663b: $ff
	rst  $38                                         ; $663c: $ff
	db   $fc                                         ; $663d: $fc
	ld   [hl], h                                     ; $663e: $74
	ld   de, $1111                                   ; $663f: $11 $11 $11
	ld   de, $1111                                   ; $6642: $11 $11 $11
	ld   [de], a                                     ; $6645: $12
	rst  $28                                         ; $6646: $ef
	rst  $38                                         ; $6647: $ff
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	rst  $38                                         ; $664a: $ff
	ld   a, [$6546]                                  ; $664b: $fa $46 $65
	adc  a                                           ; $664e: $8f
	rst  $38                                         ; $664f: $ff
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	rst  $38                                         ; $6652: $ff
	ld   sp, hl                                      ; $6653: $f9
	ld   b, c                                        ; $6654: $41
	ld   de, $1111                                   ; $6655: $11 $11 $11
	ld   de, $1111                                   ; $6658: $11 $11 $11
	dec  d                                           ; $665b: $15
	rst  $28                                         ; $665c: $ef
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	ld   sp, hl                                      ; $6661: $f9
	ld   e, b                                        ; $6662: $58
	add  a                                           ; $6663: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6664: $cf
	rst  $38                                         ; $6665: $ff
	rst  $38                                         ; $6666: $ff
	rst  $38                                         ; $6667: $ff
	rst  $38                                         ; $6668: $ff
	rst  $30                                         ; $6669: $f7
	ld   hl, $1111                                   ; $666a: $21 $11 $11
	ld   de, $1111                                   ; $666d: $11 $11 $11
	ld   de, $ef12                                   ; $6670: $11 $12 $ef
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	ld   hl, sp+$59                                  ; $6677: $f8 $59
	sbc  c                                           ; $6679: $99
	rst  $28                                         ; $667a: $ef
	rst  $38                                         ; $667b: $ff
	rst  $38                                         ; $667c: $ff
	rst  $38                                         ; $667d: $ff
	rst  $38                                         ; $667e: $ff
	or   e                                           ; $667f: $b3
	ld   de, $1111                                   ; $6680: $11 $11 $11
	ld   de, $1111                                   ; $6683: $11 $11 $11
	ld   de, $ff17                                   ; $6686: $11 $17 $ff
	rst  JumpTable                                         ; $6689: $df
	rst  $38                                         ; $668a: $ff
	rst  $38                                         ; $668b: $ff
	rst  $38                                         ; $668c: $ff
	ld   a, [$7a87]                                  ; $668d: $fa $87 $7a

jr_0a9_6690:
	rst  $38                                         ; $6690: $ff
	rst  $38                                         ; $6691: $ff
	rst  $38                                         ; $6692: $ff
	rst  $38                                         ; $6693: $ff
	db   $ed                                         ; $6694: $ed
	ld   h, c                                        ; $6695: $61
	ld   de, $1111                                   ; $6696: $11 $11 $11
	ld   de, $1111                                   ; $6699: $11 $11 $11
	ld   de, $df14                                   ; $669c: $11 $14 $df
	rst  $38                                         ; $669f: $ff
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	rst  $38                                         ; $66a2: $ff
	reti                                             ; $66a3: $d9


	xor  d                                           ; $66a4: $aa
	ld   l, c                                        ; $66a5: $69
	rst  $38                                         ; $66a6: $ff
	rst  $38                                         ; $66a7: $ff
	rst  $38                                         ; $66a8: $ff

Jump_0a9_66a9:
	cp   $c8                                         ; $66a9: $fe $c8
	ld   b, c                                        ; $66ab: $41
	ld   de, $1111                                   ; $66ac: $11 $11 $11
	ld   de, $1111                                   ; $66af: $11 $11 $11
	ld   de, $ff1b                                   ; $66b2: $11 $1b $ff
	rst  $38                                         ; $66b5: $ff
	rst  $38                                         ; $66b6: $ff
	rst  $38                                         ; $66b7: $ff
	ret                                              ; $66b8: $c9


	cp   e                                           ; $66b9: $bb
	sub  l                                           ; $66ba: $95
	ld   e, a                                        ; $66bb: $5f
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	db   $fc                                         ; $66bf: $fc
	ld   [hl], d                                     ; $66c0: $72
	ld   [bc], a                                     ; $66c1: $02
	ld   de, $1111                                   ; $66c2: $11 $11 $11
	ld   de, $1111                                   ; $66c5: $11 $11 $11
	ld   de, $ff17                                   ; $66c8: $11 $17 $ff
	rst  $38                                         ; $66cb: $ff
	rst  $38                                         ; $66cc: $ff
	rst  $38                                         ; $66cd: $ff
	or   a                                           ; $66ce: $b7
	ld   h, a                                        ; $66cf: $67
	ret  z                                           ; $66d0: $c8

	ld   e, a                                        ; $66d1: $5f
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	rst  $38                                         ; $66d4: $ff
	ld   sp, hl                                      ; $66d5: $f9
	ld   d, c                                        ; $66d6: $51
	ld   de, $1101                                   ; $66d7: $11 $01 $11
	ld   de, $1111                                   ; $66da: $11 $11 $11
	ld   de, $1811                                   ; $66dd: $11 $11 $18
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	rst  $38                                         ; $66e2: $ff
	db   $fd                                         ; $66e3: $fd
	and  d                                           ; $66e4: $a2
	jr   c, jr_0a9_6690                              ; $66e5: $38 $a9

	ld   l, a                                        ; $66e7: $6f
	rst  $38                                         ; $66e8: $ff
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	ld   a, [$1131]                                  ; $66eb: $fa $31 $11
	ld   sp, $1111                                   ; $66ee: $31 $11 $11
	ld   de, $1111                                   ; $66f1: $11 $11 $11
	ld   de, $ff15                                   ; $66f4: $11 $15 $ff
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	rst  $38                                         ; $66f9: $ff
	add  c                                           ; $66fa: $81
	rla                                              ; $66fb: $17
	db   $eb                                         ; $66fc: $eb
	cp   a                                           ; $66fd: $bf
	rst  $38                                         ; $66fe: $ff
	rst  $38                                         ; $66ff: $ff
	rst  $38                                         ; $6700: $ff
	rst  $10                                         ; $6701: $d7
	ld   de, $5511                                   ; $6702: $11 $11 $55
	ld   de, $1111                                   ; $6705: $11 $11 $11
	ld   de, $1111                                   ; $6708: $11 $11 $11
	ld   a, [de]                                     ; $670b: $1a
	rst  $38                                         ; $670c: $ff
	rst  $38                                         ; $670d: $ff
	rst  $38                                         ; $670e: $ff
	db   $fc                                         ; $670f: $fc
	ld   d, c                                        ; $6710: $51
	dec  de                                          ; $6711: $1b
	rst  $38                                         ; $6712: $ff
	rst  $38                                         ; $6713: $ff
	rst  $38                                         ; $6714: $ff
	rst  $38                                         ; $6715: $ff
	ei                                               ; $6716: $fb
	sub  [hl]                                        ; $6717: $96
	ld   hl, $6712                                   ; $6718: $21 $12 $67
	ld   de, $1111                                   ; $671b: $11 $11 $11
	ld   de, $1111                                   ; $671e: $11 $11 $11
	rra                                              ; $6721: $1f
	rst  $38                                         ; $6722: $ff
	rst  $38                                         ; $6723: $ff
	rst  $38                                         ; $6724: $ff
	or   l                                           ; $6725: $b5
	ld   hl, $ff4c                                   ; $6726: $21 $4c $ff
	rst  $38                                         ; $6729: $ff
	rst  $38                                         ; $672a: $ff
	rst  $38                                         ; $672b: $ff
	ld   [$1153], a                                  ; $672c: $ea $53 $11
	inc  de                                          ; $672f: $13
	halt                                             ; $6730: $76
	ld   hl, $1111                                   ; $6731: $21 $11 $11
	ld   de, $1111                                   ; $6734: $11 $11 $11
	ld   a, a                                        ; $6737: $7f
	rst  $38                                         ; $6738: $ff
	rst  $38                                         ; $6739: $ff
	rst  $38                                         ; $673a: $ff
	db   $e3                                         ; $673b: $e3
	ld   de, $ffbf                                   ; $673c: $11 $bf $ff
	rst  $38                                         ; $673f: $ff
	rst  $38                                         ; $6740: $ff
	ld   a, [$9656]                                  ; $6741: $fa $56 $96
	ld   hl, $d719                                   ; $6744: $21 $19 $d7
	ld   de, $1111                                   ; $6747: $11 $11 $11
	ld   de, $1411                                   ; $674a: $11 $11 $14
	rst  $38                                         ; $674d: $ff
	rst  $38                                         ; $674e: $ff
	rst  $38                                         ; $674f: $ff
	db   $fd                                         ; $6750: $fd
	ld   d, c                                        ; $6751: $51
	dec  d                                           ; $6752: $15
	rst  $38                                         ; $6753: $ff
	rst  $38                                         ; $6754: $ff
	rst  $38                                         ; $6755: $ff
	rst  $38                                         ; $6756: $ff
	ei                                               ; $6757: $fb
	ld   d, h                                        ; $6758: $54
	ld   h, h                                        ; $6759: $64
	ld   b, e                                        ; $675a: $43
	ld   d, a                                        ; $675b: $57
	ld   d, l                                        ; $675c: $55
	ld   de, $1111                                   ; $675d: $11 $11 $11
	ld   de, $7e11                                   ; $6760: $11 $11 $7e
	rst  $38                                         ; $6763: $ff
	rst  $38                                         ; $6764: $ff
	rst  $38                                         ; $6765: $ff
	rst  $30                                         ; $6766: $f7
	ld   de, $ff5f                                   ; $6767: $11 $5f $ff
	rst  $38                                         ; $676a: $ff
	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	ld   [hl], a                                     ; $676d: $77
	ld   a, e                                        ; $676e: $7b
	cp   b                                           ; $676f: $b8
	ld   [hl], l                                     ; $6770: $75
	ld   [hl], l                                     ; $6771: $75
	ld   sp, $1111                                   ; $6772: $31 $11 $11
	ld   de, $1411                                   ; $6775: $11 $11 $14
	adc  [hl]                                        ; $6778: $8e
	rst  $38                                         ; $6779: $ff
	rst  $38                                         ; $677a: $ff
	rst  $38                                         ; $677b: $ff
	rst  $30                                         ; $677c: $f7
	ld   d, [hl]                                     ; $677d: $56
	sbc  a                                           ; $677e: $9f
	rst  $38                                         ; $677f: $ff
	rst  $38                                         ; $6780: $ff
	rst  $38                                         ; $6781: $ff
	cp   $86                                         ; $6782: $fe $86
	cp   [hl]                                        ; $6784: $be
	xor  b                                           ; $6785: $a8
	inc  sp                                          ; $6786: $33
	ld   b, l                                        ; $6787: $45
	ld   sp, $1111                                   ; $6788: $31 $11 $11
	ld   de, $1511                                   ; $678b: $11 $11 $15
	adc  a                                           ; $678e: $8f
	rst  $38                                         ; $678f: $ff
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	or   a                                           ; $6792: $b7
	ld   d, a                                        ; $6793: $57
	rst  $38                                         ; $6794: $ff
	rst  $38                                         ; $6795: $ff
	rst  $38                                         ; $6796: $ff

Jump_0a9_6797:
	rst  $38                                         ; $6797: $ff
	ld   a, [$dd77]                                  ; $6798: $fa $77 $dd
	sub  d                                           ; $679b: $92
	rla                                              ; $679c: $17
	add  h                                           ; $679d: $84
	ld   de, $1111                                   ; $679e: $11 $11 $11
	ld   de, $3b11                                   ; $67a1: $11 $11 $3b
	rst  JumpTable                                         ; $67a4: $df
	rst  $38                                         ; $67a5: $ff
	rst  $38                                         ; $67a6: $ff
	db   $fc                                         ; $67a7: $fc
	ld   b, a                                        ; $67a8: $47
	xor  a                                           ; $67a9: $af
	rst  $38                                         ; $67aa: $ff
	rst  $38                                         ; $67ab: $ff
	rst  $38                                         ; $67ac: $ff
	rst  $38                                         ; $67ad: $ff
	ret  c                                           ; $67ae: $d8

	xor  e                                           ; $67af: $ab
	cp   b                                           ; $67b0: $b8
	ld   h, a                                        ; $67b1: $67
	sub  a                                           ; $67b2: $97
	ld   h, c                                        ; $67b3: $61
	ld   de, $1111                                   ; $67b4: $11 $11 $11
	ld   de, $6a15                                   ; $67b7: $11 $15 $6a
	rst  $38                                         ; $67ba: $ff
	ld   a, [$fdff]                                  ; $67bb: $fa $ff $fd
	halt                                             ; $67be: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67bf: $cf
	rst  $38                                         ; $67c0: $ff
	rst  $38                                         ; $67c1: $ff
	rst  $38                                         ; $67c2: $ff
	rst  $38                                         ; $67c3: $ff
	push af                                          ; $67c4: $f5
	ld   a, a                                        ; $67c5: $7f
	ei                                               ; $67c6: $fb
	ld   hl, $4166                                   ; $67c7: $21 $66 $41
	ld   de, $1111                                   ; $67ca: $11 $11 $11
	ld   de, $7f74                                   ; $67cd: $11 $74 $7f
	rst  $38                                         ; $67d0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d1: $cf
	call z, $ccd9                                    ; $67d2: $cc $d9 $cc
	rst  $38                                         ; $67d5: $ff
	rst  $38                                         ; $67d6: $ff
	rst  $38                                         ; $67d7: $ff
	rst  $38                                         ; $67d8: $ff
	db   $fd                                         ; $67d9: $fd
	call z, $77ff                                    ; $67da: $cc $ff $77
	ld   h, l                                        ; $67dd: $65
	ld   d, c                                        ; $67de: $51
	ld   de, $1111                                   ; $67df: $11 $11 $11
	ld   de, $4511                                   ; $67e2: $11 $11 $45
	rst  $38                                         ; $67e5: $ff
	ld   hl, sp-$51                                  ; $67e6: $f8 $af
	db   $fd                                         ; $67e8: $fd
	ld   [hl], l                                     ; $67e9: $75
	cp   a                                           ; $67ea: $bf
	rst  $38                                         ; $67eb: $ff
	rst  $38                                         ; $67ec: $ff
	rst  $38                                         ; $67ed: $ff
	rst  $38                                         ; $67ee: $ff
	ld   sp, hl                                      ; $67ef: $f9
	sbc  a                                           ; $67f0: $9f
	ld   a, [$5531]                                  ; $67f1: $fa $31 $55
	ld   d, c                                        ; $67f4: $51
	ld   de, $1111                                   ; $67f5: $11 $11 $11
	ld   de, $5f15                                   ; $67f8: $11 $15 $5f
	rst  $38                                         ; $67fb: $ff
	sbc  c                                           ; $67fc: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67fd: $cf
	db   $db                                         ; $67fe: $db
	add  a                                           ; $67ff: $87
	rst  $38                                         ; $6800: $ff
	rst  $38                                         ; $6801: $ff
	rst  $38                                         ; $6802: $ff
	rst  $38                                         ; $6803: $ff
	rst  $38                                         ; $6804: $ff
	xor  c                                           ; $6805: $a9
	rst  $38                                         ; $6806: $ff
	sub  $33                                         ; $6807: $d6 $33
	ld   d, a                                        ; $6809: $57
	ld   de, $1111                                   ; $680a: $11 $11 $11
	ld   de, $4711                                   ; $680d: $11 $11 $47
	rst  $38                                         ; $6810: $ff
	db   $fc                                         ; $6811: $fc
	rst  $28                                         ; $6812: $ef
	and  [hl]                                        ; $6813: $a6
	sbc  d                                           ; $6814: $9a
	rst  JumpTable                                         ; $6815: $df
	rst  $38                                         ; $6816: $ff
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	rst  $38                                         ; $6819: $ff
	cp   $ef                                         ; $681a: $fe $ef
	rst  $30                                         ; $681c: $f7
	ld   d, l                                        ; $681d: $55
	ld   d, a                                        ; $681e: $57
	ld   b, c                                        ; $681f: $41
	ld   de, $1111                                   ; $6820: $11 $11 $11
	ld   de, $6a1a                                   ; $6823: $11 $1a $6a
	rst  $38                                         ; $6826: $ff
	cp   $fd                                         ; $6827: $fe $fd
	ld   h, l                                        ; $6829: $65
	xor  [hl]                                        ; $682a: $ae
	rst  $38                                         ; $682b: $ff
	rst  $38                                         ; $682c: $ff
	rst  $38                                         ; $682d: $ff
	rst  $38                                         ; $682e: $ff
	rst  $38                                         ; $682f: $ff
	cp   e                                           ; $6830: $bb
	rst  $38                                         ; $6831: $ff
	jp   hl                                          ; $6832: $e9


	ld   b, d                                        ; $6833: $42
	inc  h                                           ; $6834: $24
	ld   hl, $1111                                   ; $6835: $21 $11 $11
	ld   de, $4111                                   ; $6838: $11 $11 $41
	adc  a                                           ; $683b: $8f
	rst  $38                                         ; $683c: $ff
	ld   a, l                                        ; $683d: $7d
	call c, $bff9                                    ; $683e: $dc $f9 $bf
	rst  $38                                         ; $6841: $ff
	rst  $38                                         ; $6842: $ff
	rst  $38                                         ; $6843: $ff
	rst  $38                                         ; $6844: $ff
	db   $fc                                         ; $6845: $fc
	ld   a, a                                        ; $6846: $7f
	rst  $38                                         ; $6847: $ff
	sub  d                                           ; $6848: $92
	ld   [hl+], a                                    ; $6849: $22
	add  [hl]                                        ; $684a: $86
	ld   de, $1111                                   ; $684b: $11 $11 $11
	ld   de, $3711                                   ; $684e: $11 $11 $37
	rst  $38                                         ; $6851: $ff
	sbc  $ff                                         ; $6852: $de $ff
	reti                                             ; $6854: $d9


	and  h                                           ; $6855: $a4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6856: $cf
	rst  $38                                         ; $6857: $ff
	rst  $38                                         ; $6858: $ff
	rst  $38                                         ; $6859: $ff
	rst  $38                                         ; $685a: $ff
	jp   z, $fcef                                    ; $685b: $ca $ef $fc

	ld   h, d                                        ; $685e: $62
	ld   b, l                                        ; $685f: $45
	ld   hl, $1111                                   ; $6860: $21 $11 $11
	ld   de, $1111                                   ; $6863: $11 $11 $11
	ld   e, a                                        ; $6866: $5f
	cp   $bf                                         ; $6867: $fe $bf
	rst  $38                                         ; $6869: $ff
	sub  a                                           ; $686a: $97
	ld   l, h                                        ; $686b: $6c
	rst  $38                                         ; $686c: $ff
	rst  $38                                         ; $686d: $ff
	rst  $38                                         ; $686e: $ff
	rst  $38                                         ; $686f: $ff
	cp   $bb                                         ; $6870: $fe $bb
	rst  $38                                         ; $6872: $ff
	rst  ToBoot                                         ; $6873: $c7
	inc  [hl]                                        ; $6874: $34
	ld   h, d                                        ; $6875: $62
	ld   de, $1111                                   ; $6876: $11 $11 $11
	ld   de, $b514                                   ; $6879: $11 $14 $b5
	adc  [hl]                                        ; $687c: $8e
	cp   $ff                                         ; $687d: $fe $ff
	or   h                                           ; $687f: $b4
	ld   a, e                                        ; $6880: $7b
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	db   $fc                                         ; $6886: $fc
	cp   $97                                         ; $6887: $fe $97
	ld   l, c                                        ; $6889: $69
	ld   b, d                                        ; $688a: $42
	ld   de, $1111                                   ; $688b: $11 $11 $11
	ld   de, $3111                                   ; $688e: $11 $11 $31
	rra                                              ; $6891: $1f
	rst  $38                                         ; $6892: $ff
	rst  JumpTable                                         ; $6893: $df
	ld   hl, sp+$7c                                  ; $6894: $f8 $7c
	xor  l                                           ; $6896: $ad
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	rst  $38                                         ; $6899: $ff
	rst  $38                                         ; $689a: $ff
	cp   $cf                                         ; $689b: $fe $cf
	ei                                               ; $689d: $fb
	ld   b, c                                        ; $689e: $41
	dec  [hl]                                        ; $689f: $35
	ld   d, c                                        ; $68a0: $51
	ld   de, $1111                                   ; $68a1: $11 $11 $11
	ld   de, $5b13                                   ; $68a4: $11 $13 $5b
	rst  $38                                         ; $68a7: $ff
	rst  $38                                         ; $68a8: $ff
	ld   a, [$8a45]                                  ; $68a9: $fa $45 $8a
	rst  $38                                         ; $68ac: $ff
	rst  $38                                         ; $68ad: $ff
	rst  $38                                         ; $68ae: $ff
	rst  $38                                         ; $68af: $ff
	rst  $38                                         ; $68b0: $ff
	db   $ed                                         ; $68b1: $ed
	db   $db                                         ; $68b2: $db
	sub  a                                           ; $68b3: $97
	ld   d, [hl]                                     ; $68b4: $56
	ld   b, c                                        ; $68b5: $41
	ld   de, $1111                                   ; $68b6: $11 $11 $11
	ld   de, $2911                                   ; $68b9: $11 $11 $29
	rst  $28                                         ; $68bc: $ef
	rst  $38                                         ; $68bd: $ff
	db   $fd                                         ; $68be: $fd
	ld   h, e                                        ; $68bf: $63
	ld   a, d                                        ; $68c0: $7a
	rst  $28                                         ; $68c1: $ef
	rst  $38                                         ; $68c2: $ff
	rst  $38                                         ; $68c3: $ff
	rst  $38                                         ; $68c4: $ff
	rst  $38                                         ; $68c5: $ff
	cp   $ff                                         ; $68c6: $fe $ff
	and  [hl]                                        ; $68c8: $a6
	ld   b, h                                        ; $68c9: $44
	ld   d, e                                        ; $68ca: $53
	ld   de, $1111                                   ; $68cb: $11 $11 $11
	ld   de, $1511                                   ; $68ce: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68d1: $cf
	rst  $38                                         ; $68d2: $ff
	rst  $38                                         ; $68d3: $ff
	add  $38                                         ; $68d4: $c6 $38
	adc  a                                           ; $68d6: $8f
	rst  $38                                         ; $68d7: $ff
	rst  $38                                         ; $68d8: $ff
	rst  $38                                         ; $68d9: $ff
	rst  $38                                         ; $68da: $ff
	rst  $38                                         ; $68db: $ff
	cp   $a5                                         ; $68dc: $fe $a5
	ld   l, b                                        ; $68de: $68
	ld   b, e                                        ; $68df: $43
	ld   de, $1111                                   ; $68e0: $11 $11 $11
	ld   de, $7211                                   ; $68e3: $11 $11 $72
	rra                                              ; $68e6: $1f
	rst  $38                                         ; $68e7: $ff
	rst  $38                                         ; $68e8: $ff
	jp   $cc5c                                       ; $68e9: $c3 $5c $cc


	rst  $38                                         ; $68ec: $ff
	rst  $38                                         ; $68ed: $ff
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	cp   $ef                                         ; $68f0: $fe $ef
	cp   b                                           ; $68f2: $b8
	ld   [hl], a                                     ; $68f3: $77
	ld   [hl-], a                                    ; $68f4: $32
	ld   sp, $1111                                   ; $68f5: $31 $11 $11
	ld   de, $1111                                   ; $68f8: $11 $11 $11
	dec  l                                           ; $68fb: $2d
	rst  $38                                         ; $68fc: $ff
	rst  $38                                         ; $68fd: $ff
	db   $fc                                         ; $68fe: $fc
	add  [hl]                                        ; $68ff: $86
	ld   a, d                                        ; $6900: $7a
	rst  $38                                         ; $6901: $ff
	rst  $38                                         ; $6902: $ff
	rst  $38                                         ; $6903: $ff
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	db   $fc                                         ; $6906: $fc
	xor  d                                           ; $6907: $aa
	add  l                                           ; $6908: $85
	inc  sp                                          ; $6909: $33
	ld   bc, $1111                                   ; $690a: $01 $11 $11
	ld   de, $1111                                   ; $690d: $11 $11 $11
	ld   e, $ff                                      ; $6910: $1e $ff
	rst  $38                                         ; $6912: $ff
	rst  $38                                         ; $6913: $ff
	push af                                          ; $6914: $f5
	inc  d                                           ; $6915: $14
	rst  $38                                         ; $6916: $ff
	rst  $38                                         ; $6917: $ff
	rst  $38                                         ; $6918: $ff
	rst  $38                                         ; $6919: $ff
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	jp   hl                                          ; $691c: $e9


	ld   d, l                                        ; $691d: $55
	ld   b, e                                        ; $691e: $43
	ld   de, $1111                                   ; $691f: $11 $11 $11
	ld   de, $1111                                   ; $6922: $11 $11 $11
	ld   de, $ffff                                   ; $6925: $11 $ff $ff
	rst  $38                                         ; $6928: $ff
	ld   a, [$af32]                                  ; $6929: $fa $32 $af
	rst  $38                                         ; $692c: $ff
	rst  $38                                         ; $692d: $ff
	rst  $38                                         ; $692e: $ff
	rst  $38                                         ; $692f: $ff
	rst  $38                                         ; $6930: $ff
	rst  $30                                         ; $6931: $f7
	ld   b, e                                        ; $6932: $43
	ld   hl, $1111                                   ; $6933: $21 $11 $11
	ld   de, $1111                                   ; $6936: $11 $11 $11
	ld   de, $9f11                                   ; $6939: $11 $11 $9f
	rst  $38                                         ; $693c: $ff
	rst  $38                                         ; $693d: $ff
	ei                                               ; $693e: $fb
	sbc  c                                           ; $693f: $99
	sbc  h                                           ; $6940: $9c
	rst  $38                                         ; $6941: $ff
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	rst  $38                                         ; $6944: $ff
	rst  $38                                         ; $6945: $ff
	db   $fc                                         ; $6946: $fc
	ld   h, l                                        ; $6947: $65
	ld   hl, $1111                                   ; $6948: $21 $11 $11
	ld   de, $1111                                   ; $694b: $11 $11 $11
	ld   de, $9b11                                   ; $694e: $11 $11 $9b
	rst  JumpTable                                         ; $6951: $df
	rst  $38                                         ; $6952: $ff
	rst  $38                                         ; $6953: $ff
	call $ffef                                       ; $6954: $cd $ef $ff
	rst  $38                                         ; $6957: $ff
	rst  $38                                         ; $6958: $ff
	rst  $38                                         ; $6959: $ff
	rst  $38                                         ; $695a: $ff
	rst  $38                                         ; $695b: $ff
	rst  $10                                         ; $695c: $d7
	ld   hl, $1111                                   ; $695d: $21 $11 $11
	ld   de, $1111                                   ; $6960: $11 $11 $11
	ld   de, $3511                                   ; $6963: $11 $11 $35
	rst  JumpTable                                         ; $6966: $df
	rst  $38                                         ; $6967: $ff
	rst  $38                                         ; $6968: $ff
	rst  $38                                         ; $6969: $ff
	rst  $28                                         ; $696a: $ef
	rst  $38                                         ; $696b: $ff
	rst  $38                                         ; $696c: $ff
	rst  $38                                         ; $696d: $ff
	rst  $38                                         ; $696e: $ff
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	ld   a, [$1172]                                  ; $6971: $fa $72 $11
	ld   de, $1111                                   ; $6974: $11 $11 $11
	ld   de, $1111                                   ; $6977: $11 $11 $11
	sbc  c                                           ; $697a: $99
	ld   a, a                                        ; $697b: $7f
	rst  $38                                         ; $697c: $ff
	rst  $38                                         ; $697d: $ff
	rst  $38                                         ; $697e: $ff
	rst  $38                                         ; $697f: $ff
	rst  $38                                         ; $6980: $ff
	rst  $38                                         ; $6981: $ff
	rst  $38                                         ; $6982: $ff
	rst  $38                                         ; $6983: $ff
	rst  $38                                         ; $6984: $ff
	rst  $38                                         ; $6985: $ff
	db   $fd                                         ; $6986: $fd
	halt                                             ; $6987: $76
	ld   de, $1111                                   ; $6988: $11 $11 $11
	ld   de, $1111                                   ; $698b: $11 $11 $11
	ld   de, $7f25                                   ; $698e: $11 $25 $7f
	rst  $38                                         ; $6991: $ff
	rst  $38                                         ; $6992: $ff
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	rst  $38                                         ; $6995: $ff
	rst  $38                                         ; $6996: $ff
	rst  $38                                         ; $6997: $ff
	rst  $38                                         ; $6998: $ff
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	rst  $38                                         ; $699b: $ff
	rst  ToBoot                                         ; $699c: $c7
	ld   sp, $1111                                   ; $699d: $31 $11 $11
	ld   de, $1111                                   ; $69a0: $11 $11 $11
	ld   de, $2f62                                   ; $69a3: $11 $62 $2f
	rst  $38                                         ; $69a6: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69a7: $cf
	rst  $38                                         ; $69a8: $ff
	rst  $38                                         ; $69a9: $ff
	rst  $38                                         ; $69aa: $ff
	rst  $38                                         ; $69ab: $ff
	rst  $38                                         ; $69ac: $ff
	rst  $38                                         ; $69ad: $ff
	rst  $38                                         ; $69ae: $ff
	rst  $38                                         ; $69af: $ff
	rst  $38                                         ; $69b0: $ff
	db   $fc                                         ; $69b1: $fc
	ld   d, d                                        ; $69b2: $52
	ld   de, $1111                                   ; $69b3: $11 $11 $11
	ld   de, $1111                                   ; $69b6: $11 $11 $11
	ld   de, $ff7f                                   ; $69b9: $11 $7f $ff
	rst  $38                                         ; $69bc: $ff
	rst  $38                                         ; $69bd: $ff
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	rst  $38                                         ; $69c0: $ff
	rst  $38                                         ; $69c1: $ff
	rst  $38                                         ; $69c2: $ff
	rst  $38                                         ; $69c3: $ff
	rst  $38                                         ; $69c4: $ff
	rst  $38                                         ; $69c5: $ff
	db   $fc                                         ; $69c6: $fc
	and  h                                           ; $69c7: $a4
	ld   de, $1111                                   ; $69c8: $11 $11 $11
	ld   de, $1111                                   ; $69cb: $11 $11 $11
	ld   de, $ff6e                                   ; $69ce: $11 $6e $ff
	rst  $38                                         ; $69d1: $ff
	rst  $38                                         ; $69d2: $ff
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	rst  $38                                         ; $69d5: $ff
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	rst  $38                                         ; $69d9: $ff
	rst  $38                                         ; $69da: $ff
	rst  $38                                         ; $69db: $ff
	add  $11                                         ; $69dc: $c6 $11
	ld   de, $1111                                   ; $69de: $11 $11 $11
	ld   de, $1111                                   ; $69e1: $11 $11 $11
	ld   e, $ff                                      ; $69e4: $1e $ff
	rst  $38                                         ; $69e6: $ff
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	rst  $38                                         ; $69e9: $ff
	rst  $38                                         ; $69ea: $ff
	rst  $38                                         ; $69eb: $ff
	rst  $38                                         ; $69ec: $ff
	rst  $38                                         ; $69ed: $ff
	rst  $38                                         ; $69ee: $ff
	rst  $38                                         ; $69ef: $ff
	rst  $38                                         ; $69f0: $ff
	ret  c                                           ; $69f1: $d8

	ld   sp, $1111                                   ; $69f2: $31 $11 $11
	ld   de, $1111                                   ; $69f5: $11 $11 $11
	ld   de, $9f3a                                   ; $69f8: $11 $3a $9f
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	rst  $38                                         ; $69fd: $ff
	rst  $38                                         ; $69fe: $ff
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	rst  $38                                         ; $6a01: $ff
	rst  $38                                         ; $6a02: $ff
	rst  $38                                         ; $6a03: $ff
	rst  $38                                         ; $6a04: $ff
	rst  $38                                         ; $6a05: $ff
	ret  c                                           ; $6a06: $d8

	ld   sp, $1111                                   ; $6a07: $31 $11 $11
	ld   de, $1111                                   ; $6a0a: $11 $11 $11
	ld   de, $8f13                                   ; $6a0d: $11 $13 $8f
	rst  $38                                         ; $6a10: $ff
	rst  $38                                         ; $6a11: $ff
	rst  $38                                         ; $6a12: $ff
	rst  $38                                         ; $6a13: $ff
	rst  $38                                         ; $6a14: $ff
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	rst  $38                                         ; $6a17: $ff
	rst  $38                                         ; $6a18: $ff
	rst  $38                                         ; $6a19: $ff
	cp   $c6                                         ; $6a1a: $fe $c6
	ld   hl, $1111                                   ; $6a1c: $21 $11 $11
	ld   de, $1111                                   ; $6a1f: $11 $11 $11
	ld   de, $5b13                                   ; $6a22: $11 $13 $5b
	rst  $38                                         ; $6a25: $ff
	rst  $38                                         ; $6a26: $ff
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	rst  $38                                         ; $6a29: $ff
	rst  $38                                         ; $6a2a: $ff
	rst  $38                                         ; $6a2b: $ff
	rst  $38                                         ; $6a2c: $ff
	rst  $38                                         ; $6a2d: $ff
	rst  $38                                         ; $6a2e: $ff
	xor  $95                                         ; $6a2f: $ee $95
	ld   sp, $1111                                   ; $6a31: $31 $11 $11
	ld   de, $1111                                   ; $6a34: $11 $11 $11
	ld   de, $3c11                                   ; $6a37: $11 $11 $3c
	rst  $38                                         ; $6a3a: $ff
	rst  $38                                         ; $6a3b: $ff
	rst  $38                                         ; $6a3c: $ff
	rst  $38                                         ; $6a3d: $ff
	rst  $38                                         ; $6a3e: $ff
	rst  $38                                         ; $6a3f: $ff
	rst  $38                                         ; $6a40: $ff
	rst  $38                                         ; $6a41: $ff
	rst  $38                                         ; $6a42: $ff
	rst  $38                                         ; $6a43: $ff
	db   $fc                                         ; $6a44: $fc
	sub  [hl]                                        ; $6a45: $96
	ld   sp, $1111                                   ; $6a46: $31 $11 $11
	ld   de, $1111                                   ; $6a49: $11 $11 $11
	ld   de, $4911                                   ; $6a4c: $11 $11 $49
	rst  JumpTable                                         ; $6a4f: $df
	rst  $38                                         ; $6a50: $ff
	rst  $38                                         ; $6a51: $ff
	rst  $38                                         ; $6a52: $ff
	rst  $38                                         ; $6a53: $ff
	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	rst  $38                                         ; $6a56: $ff
	rst  $38                                         ; $6a57: $ff
	rst  $38                                         ; $6a58: $ff
	db   $fc                                         ; $6a59: $fc
	add  [hl]                                        ; $6a5a: $86
	ld   sp, $1111                                   ; $6a5b: $31 $11 $11
	ld   de, $1111                                   ; $6a5e: $11 $11 $11
	ld   de, $1511                                   ; $6a61: $11 $11 $15
	sbc  [hl]                                        ; $6a64: $9e
	rst  $38                                         ; $6a65: $ff
	rst  $38                                         ; $6a66: $ff
	rst  $38                                         ; $6a67: $ff
	rst  $38                                         ; $6a68: $ff
	rst  $38                                         ; $6a69: $ff
	rst  $38                                         ; $6a6a: $ff
	rst  $38                                         ; $6a6b: $ff
	rst  $38                                         ; $6a6c: $ff
	rst  $38                                         ; $6a6d: $ff
	db   $fc                                         ; $6a6e: $fc
	add  a                                           ; $6a6f: $87
	ld   sp, $1111                                   ; $6a70: $31 $11 $11
	ld   de, $1111                                   ; $6a73: $11 $11 $11
	ld   de, $1111                                   ; $6a76: $11 $11 $11
	ld   l, c                                        ; $6a79: $69
	rst  $28                                         ; $6a7a: $ef
	rst  $38                                         ; $6a7b: $ff
	rst  $38                                         ; $6a7c: $ff
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	rst  $38                                         ; $6a7f: $ff
	rst  $38                                         ; $6a80: $ff
	rst  $38                                         ; $6a81: $ff
	rst  $38                                         ; $6a82: $ff
	db   $fd                                         ; $6a83: $fd
	sub  a                                           ; $6a84: $97
	ld   h, d                                        ; $6a85: $62
	ld   de, $1111                                   ; $6a86: $11 $11 $11
	ld   de, $1111                                   ; $6a89: $11 $11 $11
	ld   de, $1411                                   ; $6a8c: $11 $11 $14
	ld   l, d                                        ; $6a8f: $6a
	rst  $38                                         ; $6a90: $ff
	rst  $38                                         ; $6a91: $ff
	rst  $38                                         ; $6a92: $ff
	rst  $38                                         ; $6a93: $ff
	rst  $38                                         ; $6a94: $ff
	rst  $38                                         ; $6a95: $ff
	rst  $38                                         ; $6a96: $ff
	rst  $38                                         ; $6a97: $ff
	rst  $38                                         ; $6a98: $ff
	db   $ec                                         ; $6a99: $ec
	and  a                                           ; $6a9a: $a7
	ld   d, e                                        ; $6a9b: $53
	ld   de, $1111                                   ; $6a9c: $11 $11 $11
	ld   de, $1111                                   ; $6a9f: $11 $11 $11
	ld   de, $1311                                   ; $6aa2: $11 $11 $13
	ld   a, l                                        ; $6aa5: $7d
	rst  $38                                         ; $6aa6: $ff
	rst  $38                                         ; $6aa7: $ff
	rst  $38                                         ; $6aa8: $ff
	rst  $38                                         ; $6aa9: $ff
	rst  $38                                         ; $6aaa: $ff
	rst  $38                                         ; $6aab: $ff
	rst  $38                                         ; $6aac: $ff
	rst  $38                                         ; $6aad: $ff
	rst  $38                                         ; $6aae: $ff
	db   $ec                                         ; $6aaf: $ec
	xor  b                                           ; $6ab0: $a8
	ld   h, e                                        ; $6ab1: $63
	ld   de, $1111                                   ; $6ab2: $11 $11 $11
	ld   de, $1111                                   ; $6ab5: $11 $11 $11
	ld   de, $1411                                   ; $6ab8: $11 $11 $14
	sbc  l                                           ; $6abb: $9d
	rst  $28                                         ; $6abc: $ef
	rst  $38                                         ; $6abd: $ff
	rst  $38                                         ; $6abe: $ff
	rst  $38                                         ; $6abf: $ff
	rst  $38                                         ; $6ac0: $ff
	rst  $38                                         ; $6ac1: $ff
	rst  $38                                         ; $6ac2: $ff
	rst  $38                                         ; $6ac3: $ff
	rst  $38                                         ; $6ac4: $ff
	db   $fd                                         ; $6ac5: $fd
	cp   c                                           ; $6ac6: $b9
	ld   h, h                                        ; $6ac7: $64
	ld   hl, $1111                                   ; $6ac8: $21 $11 $11
	ld   de, $1111                                   ; $6acb: $11 $11 $11
	ld   de, $1311                                   ; $6ace: $11 $11 $13
	ld   a, h                                        ; $6ad1: $7c
	rst  $28                                         ; $6ad2: $ef
	rst  $38                                         ; $6ad3: $ff
	rst  $38                                         ; $6ad4: $ff
	rst  $38                                         ; $6ad5: $ff
	rst  $38                                         ; $6ad6: $ff
	rst  $38                                         ; $6ad7: $ff
	rst  $38                                         ; $6ad8: $ff
	rst  $38                                         ; $6ad9: $ff
	rst  $38                                         ; $6ada: $ff
	cp   $ba                                         ; $6adb: $fe $ba
	ld   [hl], h                                     ; $6add: $74
	ld   hl, $1111                                   ; $6ade: $21 $11 $11
	ld   de, $1111                                   ; $6ae1: $11 $11 $11
	ld   de, $1211                                   ; $6ae4: $11 $11 $12
	ld   l, e                                        ; $6ae7: $6b
	rst  JumpTable                                         ; $6ae8: $df
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	rst  $38                                         ; $6aeb: $ff
	rst  $38                                         ; $6aec: $ff
	rst  $38                                         ; $6aed: $ff
	rst  $38                                         ; $6aee: $ff
	rst  $38                                         ; $6aef: $ff
	rst  $38                                         ; $6af0: $ff
	cp   $ca                                         ; $6af1: $fe $ca
	ld   [hl], l                                     ; $6af3: $75
	ld   sp, $1111                                   ; $6af4: $31 $11 $11
	ld   de, $1111                                   ; $6af7: $11 $11 $11
	ld   de, $1211                                   ; $6afa: $11 $11 $12
	ld   l, e                                        ; $6afd: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6afe: $cf
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	rst  $38                                         ; $6b01: $ff
	rst  $38                                         ; $6b02: $ff
	rst  $38                                         ; $6b03: $ff
	rst  $38                                         ; $6b04: $ff
	rst  $38                                         ; $6b05: $ff
	rst  $38                                         ; $6b06: $ff
	cp   $ca                                         ; $6b07: $fe $ca
	add  l                                           ; $6b09: $85
	ld   sp, $1111                                   ; $6b0a: $31 $11 $11
	ld   de, $1111                                   ; $6b0d: $11 $11 $11
	ld   de, $1111                                   ; $6b10: $11 $11 $11
	ld   c, c                                        ; $6b13: $49
	rst  JumpTable                                         ; $6b14: $df
	rst  $38                                         ; $6b15: $ff
	rst  $38                                         ; $6b16: $ff
	rst  $38                                         ; $6b17: $ff
	rst  $38                                         ; $6b18: $ff
	rst  $38                                         ; $6b19: $ff
	rst  $38                                         ; $6b1a: $ff
	rst  $38                                         ; $6b1b: $ff
	rst  $38                                         ; $6b1c: $ff
	rst  $38                                         ; $6b1d: $ff
	jp   c, $3186                                    ; $6b1e: $da $86 $31

	ld   de, $1111                                   ; $6b21: $11 $11 $11
	ld   de, $1111                                   ; $6b24: $11 $11 $11
	ld   de, $3911                                   ; $6b27: $11 $11 $39
	adc  $ff                                         ; $6b2a: $ce $ff
	rst  $38                                         ; $6b2c: $ff
	rst  $38                                         ; $6b2d: $ff
	rst  $38                                         ; $6b2e: $ff
	rst  $38                                         ; $6b2f: $ff
	rst  $38                                         ; $6b30: $ff
	rst  $38                                         ; $6b31: $ff
	rst  $38                                         ; $6b32: $ff
	rst  $38                                         ; $6b33: $ff
	db   $db                                         ; $6b34: $db
	sub  a                                           ; $6b35: $97
	ld   b, c                                        ; $6b36: $41
	ld   de, $1111                                   ; $6b37: $11 $11 $11
	ld   de, $1111                                   ; $6b3a: $11 $11 $11
	ld   de, $3711                                   ; $6b3d: $11 $11 $37
	call $ffff                                       ; $6b40: $cd $ff $ff
	rst  $38                                         ; $6b43: $ff
	rst  $38                                         ; $6b44: $ff
	rst  $38                                         ; $6b45: $ff
	rst  $38                                         ; $6b46: $ff
	rst  $38                                         ; $6b47: $ff
	rst  $38                                         ; $6b48: $ff
	rst  $38                                         ; $6b49: $ff
	db   $ec                                         ; $6b4a: $ec
	sub  a                                           ; $6b4b: $97
	ld   d, d                                        ; $6b4c: $52
	ld   de, $1111                                   ; $6b4d: $11 $11 $11
	ld   de, $1111                                   ; $6b50: $11 $11 $11
	ld   de, $3611                                   ; $6b53: $11 $11 $36
	cp   [hl]                                        ; $6b56: $be
	rst  $38                                         ; $6b57: $ff
	rst  $38                                         ; $6b58: $ff
	rst  $38                                         ; $6b59: $ff
	rst  $38                                         ; $6b5a: $ff
	rst  $38                                         ; $6b5b: $ff
	rst  $38                                         ; $6b5c: $ff
	rst  $38                                         ; $6b5d: $ff
	rst  $38                                         ; $6b5e: $ff
	rst  $38                                         ; $6b5f: $ff
	ei                                               ; $6b60: $fb
	xor  c                                           ; $6b61: $a9
	ld   h, e                                        ; $6b62: $63
	ld   de, $1111                                   ; $6b63: $11 $11 $11
	ld   de, $1111                                   ; $6b66: $11 $11 $11
	ld   de, $3611                                   ; $6b69: $11 $11 $36
	xor  l                                           ; $6b6c: $ad
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	rst  $38                                         ; $6b6f: $ff
	rst  $38                                         ; $6b70: $ff
	rst  $38                                         ; $6b71: $ff
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	rst  $38                                         ; $6b74: $ff
	rst  $38                                         ; $6b75: $ff
	db   $fd                                         ; $6b76: $fd
	cp   c                                           ; $6b77: $b9
	ld   h, h                                        ; $6b78: $64
	ld   de, $1111                                   ; $6b79: $11 $11 $11
	ld   de, $1111                                   ; $6b7c: $11 $11 $11
	ld   de, $3411                                   ; $6b7f: $11 $11 $34
	xor  [hl]                                        ; $6b82: $ae
	rst  $38                                         ; $6b83: $ff
	rst  $38                                         ; $6b84: $ff
	rst  $38                                         ; $6b85: $ff
	rst  $38                                         ; $6b86: $ff
	rst  $38                                         ; $6b87: $ff
	rst  $38                                         ; $6b88: $ff
	rst  $38                                         ; $6b89: $ff
	rst  $38                                         ; $6b8a: $ff
	rst  $38                                         ; $6b8b: $ff
	db   $ec                                         ; $6b8c: $ec
	jp   z, Jump_0a9_4176                            ; $6b8d: $ca $76 $41

	ld   de, $1111                                   ; $6b90: $11 $11 $11
	ld   de, $1111                                   ; $6b93: $11 $11 $11
	ld   de, $7b36                                   ; $6b96: $11 $36 $7b
	rst  $38                                         ; $6b99: $ff
	rst  $38                                         ; $6b9a: $ff
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	rst  $38                                         ; $6b9d: $ff
	rst  $38                                         ; $6b9e: $ff
	rst  $38                                         ; $6b9f: $ff
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	db   $ed                                         ; $6ba2: $ed
	xor  e                                           ; $6ba3: $ab
	sub  [hl]                                        ; $6ba4: $96
	ld   b, d                                        ; $6ba5: $42
	ld   de, $1111                                   ; $6ba6: $11 $11 $11
	ld   de, $1111                                   ; $6ba9: $11 $11 $11
	ld   de, $ab17                                   ; $6bac: $11 $17 $ab
	rst  $38                                         ; $6baf: $ff
	rst  $38                                         ; $6bb0: $ff
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	rst  $38                                         ; $6bb3: $ff
	rst  $38                                         ; $6bb4: $ff
	rst  $38                                         ; $6bb5: $ff
	rst  $38                                         ; $6bb6: $ff
	rst  $38                                         ; $6bb7: $ff
	call c, $96b9                                    ; $6bb8: $dc $b9 $96
	ld   b, e                                        ; $6bbb: $43
	ld   de, $1111                                   ; $6bbc: $11 $11 $11
	ld   de, $1111                                   ; $6bbf: $11 $11 $11
	ld   [de], a                                     ; $6bc2: $12
	scf                                              ; $6bc3: $37
	rst  JumpTable                                         ; $6bc4: $df
	rst  $38                                         ; $6bc5: $ff
	rst  $38                                         ; $6bc6: $ff
	rst  $38                                         ; $6bc7: $ff
	rst  $38                                         ; $6bc8: $ff
	rst  $38                                         ; $6bc9: $ff
	rst  $38                                         ; $6bca: $ff
	rst  $38                                         ; $6bcb: $ff
	rst  $38                                         ; $6bcc: $ff
	rst  $38                                         ; $6bcd: $ff
	xor  $b8                                         ; $6bce: $ee $b8
	ld   [hl], l                                     ; $6bd0: $75
	ld   hl, $1111                                   ; $6bd1: $21 $11 $11
	ld   de, $1111                                   ; $6bd4: $11 $11 $11
	ld   de, $ad57                                   ; $6bd7: $11 $57 $ad
	rst  $38                                         ; $6bda: $ff
	rst  $38                                         ; $6bdb: $ff
	rst  $38                                         ; $6bdc: $ff
	rst  $38                                         ; $6bdd: $ff
	rst  $38                                         ; $6bde: $ff
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	rst  $38                                         ; $6be1: $ff
	rst  $38                                         ; $6be2: $ff
	rst  $38                                         ; $6be3: $ff
	db   $fd                                         ; $6be4: $fd
	or   [hl]                                        ; $6be5: $b6
	ld   b, c                                        ; $6be6: $41
	ld   de, $1111                                   ; $6be7: $11 $11 $11
	ld   de, $1111                                   ; $6bea: $11 $11 $11
	add  hl, hl                                      ; $6bed: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bee: $cf
	rst  $38                                         ; $6bef: $ff
	rst  $38                                         ; $6bf0: $ff
	rst  $38                                         ; $6bf1: $ff
	rst  $38                                         ; $6bf2: $ff
	rst  $38                                         ; $6bf3: $ff
	rst  $38                                         ; $6bf4: $ff
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	rst  $38                                         ; $6bf8: $ff
	rst  $38                                         ; $6bf9: $ff
	reti                                             ; $6bfa: $d9


	ld   sp, $1111                                   ; $6bfb: $31 $11 $11
	ld   de, $1111                                   ; $6bfe: $11 $11 $11
	ld   d, $6e                                      ; $6c01: $16 $6e
	rst  $38                                         ; $6c03: $ff
	rst  $38                                         ; $6c04: $ff
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	rst  $38                                         ; $6c07: $ff
	sbc  $ff                                         ; $6c08: $de $ff
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	rst  $38                                         ; $6c0c: $ff
	rst  $38                                         ; $6c0d: $ff
	rst  $38                                         ; $6c0e: $ff
	push bc                                          ; $6c0f: $c5
	ld   de, $1111                                   ; $6c10: $11 $11 $11
	ld   de, $1111                                   ; $6c13: $11 $11 $11
	ld   a, a                                        ; $6c16: $7f
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	rst  $38                                         ; $6c19: $ff
	ei                                               ; $6c1a: $fb
	cp   e                                           ; $6c1b: $bb
	xor  l                                           ; $6c1c: $ad
	sbc  $ff                                         ; $6c1d: $de $ff
	rst  $38                                         ; $6c1f: $ff
	rst  $38                                         ; $6c20: $ff
	rst  $38                                         ; $6c21: $ff
	rst  $38                                         ; $6c22: $ff
	ld   sp, hl                                      ; $6c23: $f9
	ld   d, c                                        ; $6c24: $51
	ld   de, $1111                                   ; $6c25: $11 $11 $11
	ld   de, $1511                                   ; $6c28: $11 $11 $15
	rst  $38                                         ; $6c2b: $ff
	rst  $38                                         ; $6c2c: $ff
	adc  c                                           ; $6c2d: $89
	xor  e                                           ; $6c2e: $ab
	ld   h, e                                        ; $6c2f: $63
	halt                                             ; $6c30: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c31: $cf
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	rst  $38                                         ; $6c34: $ff
	rst  $38                                         ; $6c35: $ff
	rst  $38                                         ; $6c36: $ff
	db   $fd                                         ; $6c37: $fd
	ld   [hl], l                                     ; $6c38: $75
	ld   de, $1111                                   ; $6c39: $11 $11 $11
	ld   de, $3111                                   ; $6c3c: $11 $11 $31
	ld   a, [de]                                     ; $6c3f: $1a
	rst  $38                                         ; $6c40: $ff
	ld   sp, hl                                      ; $6c41: $f9
	ld   [de], a                                     ; $6c42: $12
	ld   b, [hl]                                     ; $6c43: $46
	ld   [hl], $8c                                   ; $6c44: $36 $8c
	rst  $38                                         ; $6c46: $ff
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	rst  $38                                         ; $6c4a: $ff
	rst  $38                                         ; $6c4b: $ff
	jp   hl                                          ; $6c4c: $e9


	ld   [hl], e                                     ; $6c4d: $73
	ld   de, $1111                                   ; $6c4e: $11 $11 $11
	ld   de, $3117                                   ; $6c51: $11 $17 $31
	ld   l, a                                        ; $6c54: $6f
	rst  $38                                         ; $6c55: $ff
	pop  af                                          ; $6c56: $f1
	ld   de, $3a34                                   ; $6c57: $11 $34 $3a
	adc  a                                           ; $6c5a: $8f
	rst  $38                                         ; $6c5b: $ff
	rst  $38                                         ; $6c5c: $ff
	rst  $38                                         ; $6c5d: $ff
	rst  $38                                         ; $6c5e: $ff
	rst  $38                                         ; $6c5f: $ff
	rst  $38                                         ; $6c60: $ff
	xor  c                                           ; $6c61: $a9
	add  d                                           ; $6c62: $82
	ld   de, $1111                                   ; $6c63: $11 $11 $11
	ld   de, $684e                                   ; $6c66: $11 $4e $68
	rst  $28                                         ; $6c69: $ef
	rst  $38                                         ; $6c6a: $ff
	ld   d, c                                        ; $6c6b: $51
	ld   de, $be14                                   ; $6c6c: $11 $14 $be
	rst  $38                                         ; $6c6f: $ff
	rst  $38                                         ; $6c70: $ff
	rst  $38                                         ; $6c71: $ff
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	db   $db                                         ; $6c74: $db
	rst  $38                                         ; $6c75: $ff
	rst  $38                                         ; $6c76: $ff
	add  d                                           ; $6c77: $82
	ld   de, $1111                                   ; $6c78: $11 $11 $11
	ld   de, $aeff                                   ; $6c7b: $11 $ff $ae
	rst  $38                                         ; $6c7e: $ff
	rst  $38                                         ; $6c7f: $ff
	ld   de, $1611                                   ; $6c80: $11 $11 $16
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	rst  $38                                         ; $6c85: $ff
	rst  $38                                         ; $6c86: $ff
	or   a                                           ; $6c87: $b7
	rst  $38                                         ; $6c88: $ff
	xor  a                                           ; $6c89: $af
	cp   $ff                                         ; $6c8a: $fe $ff
	pop  hl                                          ; $6c8c: $e1
	ld   de, $1111                                   ; $6c8d: $11 $11 $11
	ld   de, $ffff                                   ; $6c90: $11 $ff $ff
	rst  $38                                         ; $6c93: $ff
	cp   $11                                         ; $6c94: $fe $11
	ld   de, $ff9f                                   ; $6c96: $11 $9f $ff
	rst  $38                                         ; $6c99: $ff
	rst  $38                                         ; $6c9a: $ff
	push af                                          ; $6c9b: $f5
	ld   de, $ffff                                   ; $6c9c: $11 $ff $ff
	rst  $38                                         ; $6c9f: $ff
	rst  $38                                         ; $6ca0: $ff
	pop  bc                                          ; $6ca1: $c1
	ld   de, $1111                                   ; $6ca2: $11 $11 $11
	ld   [de], a                                     ; $6ca5: $12
	rst  $38                                         ; $6ca6: $ff
	rst  $38                                         ; $6ca7: $ff
	db   $ec                                         ; $6ca8: $ec
	or   a                                           ; $6ca9: $b7
	ld   de, rAUD1LEN                                   ; $6caa: $11 $11 $ff
	rst  $38                                         ; $6cad: $ff
	rst  $38                                         ; $6cae: $ff
	rst  $38                                         ; $6caf: $ff
	or   c                                           ; $6cb0: $b1
	ld   de, $ffff                                   ; $6cb1: $11 $ff $ff
	rst  $38                                         ; $6cb4: $ff
	rst  $38                                         ; $6cb5: $ff
	ld   h, c                                        ; $6cb6: $61
	ld   de, $1111                                   ; $6cb7: $11 $11 $11
	rla                                              ; $6cba: $17
	rst  $38                                         ; $6cbb: $ff
	rst  $38                                         ; $6cbc: $ff
	add  h                                           ; $6cbd: $84
	inc  sp                                          ; $6cbe: $33
	ld   de, rAUD1LEN                                   ; $6cbf: $11 $11 $ff
	rst  $38                                         ; $6cc2: $ff
	rst  $38                                         ; $6cc3: $ff
	rst  $38                                         ; $6cc4: $ff
	ld   b, c                                        ; $6cc5: $41
	ld   de, $ffff                                   ; $6cc6: $11 $ff $ff
	rst  $38                                         ; $6cc9: $ff
	db   $ed                                         ; $6cca: $ed
	ld   d, c                                        ; $6ccb: $51
	ld   de, $1111                                   ; $6ccc: $11 $11 $11
	ld   de, $ffff                                   ; $6ccf: $11 $ff $ff
	ld   sp, $1111                                   ; $6cd2: $31 $11 $11
	ld   de, $ffff                                   ; $6cd5: $11 $ff $ff
	rst  $38                                         ; $6cd8: $ff
	ld   a, [$1131]                                  ; $6cd9: $fa $31 $11
	rst  $38                                         ; $6cdc: $ff
	rst  $38                                         ; $6cdd: $ff
	db   $fd                                         ; $6cde: $fd
	ld   b, a                                        ; $6cdf: $47
	ld   d, c                                        ; $6ce0: $51
	ld   de, $1111                                   ; $6ce1: $11 $11 $11
	ld   de, $ffff                                   ; $6ce4: $11 $ff $ff
	ld   d, c                                        ; $6ce7: $51
	ld   de, $1111                                   ; $6ce8: $11 $11 $11
	rst  $38                                         ; $6ceb: $ff
	rst  $38                                         ; $6cec: $ff
	rst  $38                                         ; $6ced: $ff
	jp   nz, $1161                                   ; $6cee: $c2 $61 $11

	ld   e, a                                        ; $6cf1: $5f
	rst  $38                                         ; $6cf2: $ff
	cp   $41                                         ; $6cf3: $fe $41
	ld   d, e                                        ; $6cf5: $53
	ld   de, $1111                                   ; $6cf6: $11 $11 $11
	ld   de, $ff1f                                   ; $6cf9: $11 $1f $ff
	pop  af                                          ; $6cfc: $f1
	ld   de, $1151                                   ; $6cfd: $11 $51 $11
	ccf                                              ; $6d00: $3f
	rst  $38                                         ; $6d01: $ff
	cp   $d7                                         ; $6d02: $fe $d7
	scf                                              ; $6d04: $37
	ld   de, $ff1f                                   ; $6d05: $11 $1f $ff
	rst  $38                                         ; $6d08: $ff
	ld   d, c                                        ; $6d09: $51
	jr   jr_0a9_6d1d                                 ; $6d0a: $18 $11

	ld   de, $1111                                   ; $6d0c: $11 $11 $11
	rra                                              ; $6d0f: $1f
	rst  $38                                         ; $6d10: $ff
	or   $11                                         ; $6d11: $f6 $11
	ld   d, $11                                      ; $6d13: $16 $11
	rra                                              ; $6d15: $1f
	rst  $38                                         ; $6d16: $ff
	rst  $38                                         ; $6d17: $ff
	ld   a, d                                        ; $6d18: $7a
	dec  h                                           ; $6d19: $25
	ld   h, c                                        ; $6d1a: $61
	inc  h                                           ; $6d1b: $24
	rst  $38                                         ; $6d1c: $ff

jr_0a9_6d1d:
	rst  $38                                         ; $6d1d: $ff
	pop  hl                                          ; $6d1e: $e1
	ld   [de], a                                     ; $6d1f: $12
	add  c                                           ; $6d20: $81
	ld   de, $1111                                   ; $6d21: $11 $11 $11
	ld   de, $ffff                                   ; $6d24: $11 $ff $ff
	ld   d, c                                        ; $6d27: $51
	ld   de, $1131                                   ; $6d28: $11 $31 $11
	rst  $38                                         ; $6d2b: $ff
	rst  $38                                         ; $6d2c: $ff
	ld   a, [$6693]                                  ; $6d2d: $fa $93 $66
	inc  de                                          ; $6d30: $13
	adc  a                                           ; $6d31: $8f
	rst  $38                                         ; $6d32: $ff
	db   $fc                                         ; $6d33: $fc
	ld   de, $113b                                   ; $6d34: $11 $3b $11
	ld   de, $1111                                   ; $6d37: $11 $11 $11
	rra                                              ; $6d3a: $1f
	rst  $38                                         ; $6d3b: $ff
	db   $f4                                         ; $6d3c: $f4
	ld   de, $1115                                   ; $6d3d: $11 $15 $11
	rra                                              ; $6d40: $1f
	rst  $38                                         ; $6d41: $ff
	rst  $38                                         ; $6d42: $ff
	and  l                                           ; $6d43: $a5
	ld   [hl], $51                                   ; $6d44: $36 $51
	rla                                              ; $6d46: $17
	rst  $38                                         ; $6d47: $ff
	rst  $38                                         ; $6d48: $ff
	pop  de                                          ; $6d49: $d1
	inc  de                                          ; $6d4a: $13
	and  e                                           ; $6d4b: $a3
	ld   de, $1111                                   ; $6d4c: $11 $11 $11
	ld   de, $ffaf                                   ; $6d4f: $11 $af $ff
	add  c                                           ; $6d52: $81
	ld   de, $1191                                   ; $6d53: $11 $91 $11
	cp   a                                           ; $6d56: $bf
	rst  $38                                         ; $6d57: $ff
	ld   sp, hl                                      ; $6d58: $f9
	ld   [hl], e                                     ; $6d59: $73
	ld   b, a                                        ; $6d5a: $47
	ld   [de], a                                     ; $6d5b: $12
	ld   e, a                                        ; $6d5c: $5f
	rst  $38                                         ; $6d5d: $ff
	rst  $38                                         ; $6d5e: $ff
	ld   de, $5129                                   ; $6d5f: $11 $29 $51
	ld   de, $1111                                   ; $6d62: $11 $11 $11
	ld   de, $ffff                                   ; $6d65: $11 $ff $ff
	ld   de, $1119                                   ; $6d68: $11 $19 $11
	ld   de, $ffff                                   ; $6d6b: $11 $ff $ff
	ld   hl, sp+$23                                  ; $6d6e: $f8 $23
	ld   h, h                                        ; $6d70: $64
	inc  d                                           ; $6d71: $14
	rst  JumpTable                                         ; $6d72: $df
	rst  $38                                         ; $6d73: $ff
	ld   hl, sp+$11                                  ; $6d74: $f8 $11
	ld   a, [hl+]                                    ; $6d76: $2a
	ld   sp, $1111                                   ; $6d77: $31 $11 $11
	ld   de, $ff18                                   ; $6d7a: $11 $18 $ff
	db   $f4                                         ; $6d7d: $f4
	ld   de, $111d                                   ; $6d7e: $11 $1d $11
	dec  de                                          ; $6d81: $1b
	rst  $38                                         ; $6d82: $ff
	rst  $38                                         ; $6d83: $ff
	ld   h, e                                        ; $6d84: $63
	ld   d, $72                                      ; $6d85: $16 $72
	scf                                              ; $6d87: $37
	rst  $38                                         ; $6d88: $ff
	rst  $38                                         ; $6d89: $ff
	ldh  a, [c]                                      ; $6d8a: $f2
	ld   [de], a                                     ; $6d8b: $12
	xor  b                                           ; $6d8c: $a8
	ld   de, $1111                                   ; $6d8d: $11 $11 $11
	ld   de, $ff1f                                   ; $6d90: $11 $1f $ff
	pop  af                                          ; $6d93: $f1
	ld   de, $114a                                   ; $6d94: $11 $4a $11
	rra                                              ; $6d97: $1f
	rst  $38                                         ; $6d98: $ff
	rst  $38                                         ; $6d99: $ff
	ld   d, h                                        ; $6d9a: $54
	ld   d, $72                                      ; $6d9b: $16 $72
	ld   a, [hl-]                                    ; $6d9d: $3a
	rst  $38                                         ; $6d9e: $ff
	rst  $38                                         ; $6d9f: $ff
	sub  c                                           ; $6da0: $91
	inc  d                                           ; $6da1: $14
	and  a                                           ; $6da2: $a7
	ld   de, $1111                                   ; $6da3: $11 $11 $11
	ld   de, $ff1f                                   ; $6da6: $11 $1f $ff
	pop  af                                          ; $6da9: $f1
	ld   de, $1163                                   ; $6daa: $11 $63 $11
	rra                                              ; $6dad: $1f
	rst  $38                                         ; $6dae: $ff
	cp   $11                                         ; $6daf: $fe $11
	daa                                              ; $6db1: $27
	ld   d, e                                        ; $6db2: $53
	dec  l                                           ; $6db3: $2d
	rst  $38                                         ; $6db4: $ff
	rst  $38                                         ; $6db5: $ff
	ld   sp, $b51a                                   ; $6db6: $31 $1a $b5
	ld   de, $1111                                   ; $6db9: $11 $11 $11
	ld   de, $ff1f                                   ; $6dbc: $11 $1f $ff
	pop  af                                          ; $6dbf: $f1
	ld   de, $11a1                                   ; $6dc0: $11 $a1 $11
	ccf                                              ; $6dc3: $3f
	rst  $38                                         ; $6dc4: $ff
	cp   $21                                         ; $6dc5: $fe $21
	inc  h                                           ; $6dc7: $24
	ld   h, c                                        ; $6dc8: $61
	adc  a                                           ; $6dc9: $8f
	rst  $38                                         ; $6dca: $ff
	rst  $38                                         ; $6dcb: $ff
	ld   b, c                                        ; $6dcc: $41
	daa                                              ; $6dcd: $27
	or   [hl]                                        ; $6dce: $b6
	ld   bc, $1111                                   ; $6dcf: $01 $11 $11
	ld   de, $ff1f                                   ; $6dd2: $11 $1f $ff
	pop  af                                          ; $6dd5: $f1
	ld   de, $11b1                                   ; $6dd6: $11 $b1 $11
	cpl                                              ; $6dd9: $2f
	rst  $38                                         ; $6dda: $ff
	ld   hl, sp+$11                                  ; $6ddb: $f8 $11
	ld   c, b                                        ; $6ddd: $48
	ld   h, h                                        ; $6dde: $64
	ld   e, a                                        ; $6ddf: $5f
	rst  $38                                         ; $6de0: $ff
	rst  $38                                         ; $6de1: $ff
	ld   de, $c42c                                   ; $6de2: $11 $2c $c4
	ld   de, $1111                                   ; $6de5: $11 $11 $11
	ld   de, $ff1f                                   ; $6de8: $11 $1f $ff
	pop  hl                                          ; $6deb: $e1
	ld   de, $11a1                                   ; $6dec: $11 $a1 $11
	ld   a, a                                        ; $6def: $7f
	rst  $38                                         ; $6df0: $ff
	pop  af                                          ; $6df1: $f1
	ld   de, $9368                                   ; $6df2: $11 $68 $93
	ld   l, a                                        ; $6df5: $6f
	rst  $38                                         ; $6df6: $ff
	ld   a, [$4d11]                                  ; $6df7: $fa $11 $4d
	or   e                                           ; $6dfa: $b3
	ld   de, $1111                                   ; $6dfb: $11 $11 $11
	ld   de, $ff1f                                   ; $6dfe: $11 $1f $ff
	or   c                                           ; $6e01: $b1
	ld   de, $11a1                                   ; $6e02: $11 $a1 $11
	cp   a                                           ; $6e05: $bf
	rst  $38                                         ; $6e06: $ff
	pop  af                                          ; $6e07: $f1
	ld   de, $a469                                   ; $6e08: $11 $69 $a4
	sbc  a                                           ; $6e0b: $9f
	rst  $38                                         ; $6e0c: $ff
	rst  $30                                         ; $6e0d: $f7
	ld   de, $b46d                                   ; $6e0e: $11 $6d $b4
	ld   de, $1111                                   ; $6e11: $11 $11 $11
	ld   de, $ff9f                                   ; $6e14: $11 $9f $ff
	ld   b, c                                        ; $6e17: $41
	ld   de, $11b1                                   ; $6e18: $11 $b1 $11
	rst  $38                                         ; $6e1b: $ff
	rst  $38                                         ; $6e1c: $ff
	pop  af                                          ; $6e1d: $f1
	ld   de, $a579                                   ; $6e1e: $11 $79 $a5
	cp   a                                           ; $6e21: $bf
	rst  $38                                         ; $6e22: $ff
	push af                                          ; $6e23: $f5
	ld   de, $a57d                                   ; $6e24: $11 $7d $a5
	ld   de, $1111                                   ; $6e27: $11 $11 $11
	ld   de, $ffff                                   ; $6e2a: $11 $ff $ff
	ld   de, $c111                                   ; $6e2d: $11 $11 $c1
	ld   de, $ffff                                   ; $6e30: $11 $ff $ff
	pop  bc                                          ; $6e33: $c1
	ld   [de], a                                     ; $6e34: $12
	sbc  d                                           ; $6e35: $9a
	add  l                                           ; $6e36: $85
	rst  $28                                         ; $6e37: $ef
	rst  $38                                         ; $6e38: $ff
	pop  de                                          ; $6e39: $d1
	ld   [de], a                                     ; $6e3a: $12
	cp   [hl]                                        ; $6e3b: $be
	ld   h, h                                        ; $6e3c: $64
	ld   de, $1111                                   ; $6e3d: $11 $11 $11
	ld   de, $ffff                                   ; $6e40: $11 $ff $ff
	ld   de, $5117                                   ; $6e43: $11 $17 $51
	ld   de, $ffff                                   ; $6e46: $11 $ff $ff
	ld   bc, $981a                                   ; $6e49: $01 $1a $98
	ld   d, [hl]                                     ; $6e4c: $56
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	ld   d, c                                        ; $6e4f: $51
	jr   c, @-$24                                    ; $6e50: $38 $da

	ld   d, d                                        ; $6e52: $52
	ld   [de], a                                     ; $6e53: $12
	ld   de, $1111                                   ; $6e54: $11 $11 $11
	rst  $38                                         ; $6e57: $ff
	rst  $38                                         ; $6e58: $ff
	ld   de, $1118                                   ; $6e59: $11 $18 $11
	rla                                              ; $6e5c: $17
	rst  $38                                         ; $6e5d: $ff
	rst  $38                                         ; $6e5e: $ff
	ld   de, $6918                                   ; $6e5f: $11 $18 $69
	ld   c, b                                        ; $6e62: $48
	rst  $38                                         ; $6e63: $ff
	rst  $38                                         ; $6e64: $ff
	ld   sp, $d81b                                   ; $6e65: $31 $1b $d8
	ld   d, d                                        ; $6e68: $52
	ld   de, $1111                                   ; $6e69: $11 $11 $11
	inc  d                                           ; $6e6c: $14
	rst  $38                                         ; $6e6d: $ff
	ld   sp, hl                                      ; $6e6e: $f9
	ld   de, $1116                                   ; $6e6f: $11 $16 $11
	rra                                              ; $6e72: $1f
	rst  $38                                         ; $6e73: $ff
	cp   $11                                         ; $6e74: $fe $11
	jr   c, jr_0a9_6eaf                              ; $6e76: $38 $37

	ld   c, a                                        ; $6e78: $4f
	rst  $38                                         ; $6e79: $ff
	ld   a, [$4a43]                                  ; $6e7a: $fa $43 $4a
	add  a                                           ; $6e7d: $87
	ld   [hl], l                                     ; $6e7e: $75
	ld   sp, $1111                                   ; $6e7f: $31 $11 $11
	add  hl, de                                      ; $6e82: $19
	rst  $38                                         ; $6e83: $ff
	ld   sp, hl                                      ; $6e84: $f9
	ld   de, $1114                                   ; $6e85: $11 $14 $11
	rra                                              ; $6e88: $1f
	rst  $38                                         ; $6e89: $ff
	db   $fd                                         ; $6e8a: $fd
	ld   de, $1555                                   ; $6e8b: $11 $55 $15
	ld   l, a                                        ; $6e8e: $6f
	rst  $38                                         ; $6e8f: $ff
	ld   a, [$4854]                                  ; $6e90: $fa $54 $48
	ld   h, l                                        ; $6e93: $65
	halt                                             ; $6e94: $76
	ld   de, $1111                                   ; $6e95: $11 $11 $11
	rra                                              ; $6e98: $1f
	rst  $38                                         ; $6e99: $ff
	push af                                          ; $6e9a: $f5
	ld   b, c                                        ; $6e9b: $41
	ld   d, c                                        ; $6e9c: $51
	ld   de, $ff1f                                   ; $6e9d: $11 $1f $ff
	ld   sp, hl                                      ; $6ea0: $f9
	ld   d, h                                        ; $6ea1: $54
	ld   h, c                                        ; $6ea2: $61
	inc  d                                           ; $6ea3: $14
	adc  a                                           ; $6ea4: $8f
	rst  $38                                         ; $6ea5: $ff
	ld   sp, hl                                      ; $6ea6: $f9
	sub  l                                           ; $6ea7: $95
	ld   b, l                                        ; $6ea8: $45
	ld   b, [hl]                                     ; $6ea9: $46
	sub  a                                           ; $6eaa: $97
	ld   de, $1111                                   ; $6eab: $11 $11 $11
	rra                                              ; $6eae: $1f

jr_0a9_6eaf:
	rst  $38                                         ; $6eaf: $ff
	push af                                          ; $6eb0: $f5
	ld   d, h                                        ; $6eb1: $54
	and  c                                           ; $6eb2: $a1
	ld   de, $ff6f                                   ; $6eb3: $11 $6f $ff
	ld   a, [$61a9]                                  ; $6eb6: $fa $a9 $61
	ld   de, $ffdf                                   ; $6eb9: $11 $df $ff
	db   $fc                                         ; $6ebc: $fc
	or   [hl]                                        ; $6ebd: $b6
	ld   [hl-], a                                    ; $6ebe: $32
	scf                                              ; $6ebf: $37
	add  e                                           ; $6ec0: $83
	ld   de, $1111                                   ; $6ec1: $11 $11 $11
	rra                                              ; $6ec4: $1f
	rst  $38                                         ; $6ec5: $ff
	ld   a, [$3166]                                  ; $6ec6: $fa $66 $31
	ld   de, $ffff                                   ; $6ec9: $11 $ff $ff
	cp   $ca                                         ; $6ecc: $fe $ca
	ld   de, rAUD1LEN                                   ; $6ece: $11 $11 $ff
	rst  $38                                         ; $6ed1: $ff
	rst  $38                                         ; $6ed2: $ff
	and  l                                           ; $6ed3: $a5
	ld   sp, $5137                                   ; $6ed4: $31 $37 $51
	ld   de, $1111                                   ; $6ed7: $11 $11 $11
	rst  $28                                         ; $6eda: $ef
	rst  $38                                         ; $6edb: $ff
	sbc  $d9                                         ; $6edc: $de $d9
	ld   de, rAUD1ENV                                   ; $6ede: $11 $12 $ff
	rst  $38                                         ; $6ee1: $ff
	rst  $38                                         ; $6ee2: $ff
	or   $11                                         ; $6ee3: $f6 $11
	rla                                              ; $6ee5: $17
	rst  $38                                         ; $6ee6: $ff
	rst  $38                                         ; $6ee7: $ff
	rst  $38                                         ; $6ee8: $ff
	or   [hl]                                        ; $6ee9: $b6
	ld   hl, $1144                                   ; $6eea: $21 $44 $11
	ld   de, $1111                                   ; $6eed: $11 $11 $11
	rst  $38                                         ; $6ef0: $ff
	rst  $38                                         ; $6ef1: $ff
	rst  JumpTable                                         ; $6ef2: $df
	ei                                               ; $6ef3: $fb
	ld   de, $ff16                                   ; $6ef4: $11 $16 $ff
	rst  $38                                         ; $6ef7: $ff
	rst  $38                                         ; $6ef8: $ff
	or   $11                                         ; $6ef9: $f6 $11
	dec  d                                           ; $6efb: $15
	rst  $28                                         ; $6efc: $ef
	rst  $38                                         ; $6efd: $ff
	rst  $38                                         ; $6efe: $ff
	ret  z                                           ; $6eff: $c8

	ld   b, d                                        ; $6f00: $42
	ld   hl, $1111                                   ; $6f01: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $6f04: $11 $11 $ff
	db   $fd                                         ; $6f07: $fd
	rst  $38                                         ; $6f08: $ff
	ld   hl, sp+$11                                  ; $6f09: $f8 $11
	dec  de                                          ; $6f0b: $1b
	rst  $38                                         ; $6f0c: $ff
	rst  $38                                         ; $6f0d: $ff
	rst  $38                                         ; $6f0e: $ff
	push af                                          ; $6f0f: $f5
	ld   de, $bd26                                   ; $6f10: $11 $26 $bd
	rst  JumpTable                                         ; $6f13: $df
	rst  $38                                         ; $6f14: $ff
	ei                                               ; $6f15: $fb
	add  [hl]                                        ; $6f16: $86
	ld   b, c                                        ; $6f17: $41
	ld   de, $1111                                   ; $6f18: $11 $11 $11
	ld   d, $ff                                      ; $6f1b: $16 $ff
	rst  $38                                         ; $6f1d: $ff
	rst  $38                                         ; $6f1e: $ff
	di                                               ; $6f1f: $f3
	ld   de, $ff18                                   ; $6f20: $11 $18 $ff
	rst  $38                                         ; $6f23: $ff
	rst  $38                                         ; $6f24: $ff
	ei                                               ; $6f25: $fb
	ld   [hl], d                                     ; $6f26: $72
	ld   b, h                                        ; $6f27: $44
	ld   d, d                                        ; $6f28: $52
	adc  a                                           ; $6f29: $8f
	rst  $38                                         ; $6f2a: $ff
	rst  $38                                         ; $6f2b: $ff
	xor  $71                                         ; $6f2c: $ee $71
	ld   de, $1111                                   ; $6f2e: $11 $11 $11
	inc  d                                           ; $6f31: $14
	rst  $38                                         ; $6f32: $ff
	rst  $38                                         ; $6f33: $ff
	rst  $38                                         ; $6f34: $ff
	ld   a, [$1511]                                  ; $6f35: $fa $11 $15
	ld   e, b                                        ; $6f38: $58
	ld   l, [hl]                                     ; $6f39: $6e
	rst  $38                                         ; $6f3a: $ff
	rst  $38                                         ; $6f3b: $ff
	cp   $da                                         ; $6f3c: $fe $da
	ld   b, c                                        ; $6f3e: $41
	daa                                              ; $6f3f: $27
	adc  e                                           ; $6f40: $8b
	adc  $ef                                         ; $6f41: $ce $ef
	push de                                          ; $6f43: $d5
	ld   hl, $1111                                   ; $6f44: $21 $11 $11
	ld   de, $6cb9                                   ; $6f47: $11 $b9 $6c
	rst  $38                                         ; $6f4a: $ff
	rst  $38                                         ; $6f4b: $ff
	ld   [hl], l                                     ; $6f4c: $75
	sbc  l                                           ; $6f4d: $9d
	ld   [hl], a                                     ; $6f4e: $77
	ld   de, $fdbf                                   ; $6f4f: $11 $bf $fd
	rst  $38                                         ; $6f52: $ff
	rst  $38                                         ; $6f53: $ff
	ld   a, [$987b]                                  ; $6f54: $fa $7b $98
	ld   h, [hl]                                     ; $6f57: $66
	ld   l, d                                        ; $6f58: $6a
	and  l                                           ; $6f59: $a5
	ld   b, d                                        ; $6f5a: $42
	ld   de, $1111                                   ; $6f5b: $11 $11 $11
	ld   de, $6b11                                   ; $6f5e: $11 $11 $6b
	rst  $38                                         ; $6f61: $ff
	db   $fd                                         ; $6f62: $fd
	rst  $38                                         ; $6f63: $ff
	rst  $38                                         ; $6f64: $ff
	or   l                                           ; $6f65: $b5
	sbc  h                                           ; $6f66: $9c
	sub  $76                                         ; $6f67: $d6 $76
	sbc  a                                           ; $6f69: $9f
	ei                                               ; $6f6a: $fb
	sbc  h                                           ; $6f6b: $9c
	sbc  $bb                                         ; $6f6c: $de $bb
	ld   a, d                                        ; $6f6e: $7a
	cp   c                                           ; $6f6f: $b9
	ld   d, d                                        ; $6f70: $52
	ld   sp, $1111                                   ; $6f71: $31 $11 $11
	ld   de, $1311                                   ; $6f74: $11 $11 $13
	cp   a                                           ; $6f77: $bf
	call c, $ffbf                                    ; $6f78: $dc $bf $ff
	db   $fd                                         ; $6f7b: $fd
	rst  JumpTable                                         ; $6f7c: $df
	cp   $87                                         ; $6f7d: $fe $87
	ld   a, d                                        ; $6f7f: $7a
	reti                                             ; $6f80: $d9


	ld   h, a                                        ; $6f81: $67
	cp   h                                           ; $6f82: $bc
	xor  e                                           ; $6f83: $ab
	sbc  c                                           ; $6f84: $99
	call c, Call_0a9_4294                            ; $6f85: $dc $94 $42
	ld   de, $1111                                   ; $6f88: $11 $11 $11
	ld   de, $6e12                                   ; $6f8b: $11 $12 $6e
	ret                                              ; $6f8e: $c9


	sbc  l                                           ; $6f8f: $9d
	rst  $38                                         ; $6f90: $ff
	rst  $38                                         ; $6f91: $ff
	rst  $38                                         ; $6f92: $ff
	rst  $38                                         ; $6f93: $ff
	jp   z, $db8b                                    ; $6f94: $ca $8b $db

	ld   h, [hl]                                     ; $6f97: $66
	sbc  e                                           ; $6f98: $9b
	xor  d                                           ; $6f99: $aa
	sbc  b                                           ; $6f9a: $98
	call Call_0a9_54a6                               ; $6f9b: $cd $a6 $54
	ld   de, $1111                                   ; $6f9e: $11 $11 $11
	ld   de, $4c11                                   ; $6fa1: $11 $11 $4c
	ei                                               ; $6fa4: $fb
	cp   l                                           ; $6fa5: $bd
	rst  $38                                         ; $6fa6: $ff
	rst  $38                                         ; $6fa7: $ff
	rst  JumpTable                                         ; $6fa8: $df
	rst  $38                                         ; $6fa9: $ff
	jp   z, $bb89                                    ; $6faa: $ca $89 $bb

	sub  h                                           ; $6fad: $94
	sbc  d                                           ; $6fae: $9a
	cp   e                                           ; $6faf: $bb
	xor  d                                           ; $6fb0: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fb1: $cf
	jp   z, $1155                                    ; $6fb2: $ca $55 $11

	ld   de, $1111                                   ; $6fb5: $11 $11 $11
	ld   de, $ff28                                   ; $6fb8: $11 $28 $ff
	rst  JumpTable                                         ; $6fbb: $df
	rst  $38                                         ; $6fbc: $ff
	rst  $38                                         ; $6fbd: $ff
	ei                                               ; $6fbe: $fb
	rst  $28                                         ; $6fbf: $ef
	push bc                                          ; $6fc0: $c5
	ld   b, a                                        ; $6fc1: $47
	adc  c                                           ; $6fc2: $89
	and  [hl]                                        ; $6fc3: $a6
	sbc  h                                           ; $6fc4: $9c
	cp   $bf                                         ; $6fc5: $fe $bf
	rst  JumpTable                                         ; $6fc7: $df
	ld   a, [$2164]                                  ; $6fc8: $fa $64 $21
	ld   de, $1111                                   ; $6fcb: $11 $11 $11
	ld   de, $ef17                                   ; $6fce: $11 $17 $ef
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	ei                                               ; $6fd4: $fb
	ld   a, [hl-]                                    ; $6fd5: $3a
	or   a                                           ; $6fd6: $b7
	ld   [de], a                                     ; $6fd7: $12
	adc  c                                           ; $6fd8: $89
	sbc  $be                                         ; $6fd9: $de $be
	rst  $38                                         ; $6fdb: $ff
	cp   $fe                                         ; $6fdc: $fe $fe
	jp   c, $1152                                    ; $6fde: $da $52 $11

	ld   de, $1111                                   ; $6fe1: $11 $11 $11
	ld   de, $ff16                                   ; $6fe4: $11 $16 $ff
	rst  $38                                         ; $6fe7: $ff
	rst  $38                                         ; $6fe8: $ff
	rst  $38                                         ; $6fe9: $ff
	db   $fd                                         ; $6fea: $fd
	ld   [hl], c                                     ; $6feb: $71
	ld   c, b                                        ; $6fec: $48
	ld   d, d                                        ; $6fed: $52
	ld   c, h                                        ; $6fee: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fef: $cf
	rst  $38                                         ; $6ff0: $ff
	rst  $38                                         ; $6ff1: $ff
	rst  $38                                         ; $6ff2: $ff
	call c, Call_0a9_7288                            ; $6ff3: $dc $88 $72
	ld   de, $1111                                   ; $6ff6: $11 $11 $11
	ld   de, $1112                                   ; $6ff9: $11 $12 $11
	sbc  a                                           ; $6ffc: $9f
	rst  $38                                         ; $6ffd: $ff
	rst  $38                                         ; $6ffe: $ff
	rst  $38                                         ; $6fff: $ff
	cp   $85                                         ; $7000: $fe $85
	ld   a, [hl+]                                    ; $7002: $2a
	add  c                                           ; $7003: $81
	ld   a, [hl+]                                    ; $7004: $2a
	db   $fd                                         ; $7005: $fd
	rst  $38                                         ; $7006: $ff
	rst  $38                                         ; $7007: $ff
	rst  $38                                         ; $7008: $ff
	rst  JumpTable                                         ; $7009: $df
	rst  ToBoot                                         ; $700a: $c7
	ld   h, l                                        ; $700b: $65
	ld   [hl+], a                                    ; $700c: $22
	ld   de, $1111                                   ; $700d: $11 $11 $11
	ld   de, $2611                                   ; $7010: $11 $11 $26
	rst  $38                                         ; $7013: $ff
	rst  $38                                         ; $7014: $ff
	rst  $38                                         ; $7015: $ff
	rst  $38                                         ; $7016: $ff
	ld   hl, sp+$63                                  ; $7017: $f8 $63
	and  [hl]                                        ; $7019: $a6
	inc  d                                           ; $701a: $14
	sbc  l                                           ; $701b: $9d
	rst  $28                                         ; $701c: $ef
	rst  $38                                         ; $701d: $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	db   $fc                                         ; $7020: $fc
	add  [hl]                                        ; $7021: $86
	ld   b, e                                        ; $7022: $43
	ld   b, c                                        ; $7023: $41
	ld   de, $1111                                   ; $7024: $11 $11 $11
	ld   de, $4f21                                   ; $7027: $11 $21 $4f
	rst  $38                                         ; $702a: $ff
	rst  $38                                         ; $702b: $ff
	rst  $38                                         ; $702c: $ff
	rst  $38                                         ; $702d: $ff
	xor  b                                           ; $702e: $a8
	ld   e, b                                        ; $702f: $58
	ld   d, c                                        ; $7030: $51
	add  hl, hl                                      ; $7031: $29
	db   $db                                         ; $7032: $db
	rst  $38                                         ; $7033: $ff
	rst  $38                                         ; $7034: $ff
	rst  $38                                         ; $7035: $ff
	rst  $38                                         ; $7036: $ff
	rst  $20                                         ; $7037: $e7
	ld   d, a                                        ; $7038: $57
	ld   b, e                                        ; $7039: $43
	ld   de, $1111                                   ; $703a: $11 $11 $11
	ld   de, $1112                                   ; $703d: $11 $12 $11
	ld   a, a                                        ; $7040: $7f
	rst  $38                                         ; $7041: $ff
	rst  $38                                         ; $7042: $ff
	rst  $38                                         ; $7043: $ff
	db   $fd                                         ; $7044: $fd
	xor  h                                           ; $7045: $ac
	ld   b, [hl]                                     ; $7046: $46
	ld   hl, $bb48                                   ; $7047: $21 $48 $bb
	rst  $38                                         ; $704a: $ff
	rst  $38                                         ; $704b: $ff
	rst  $38                                         ; $704c: $ff
	rst  $38                                         ; $704d: $ff
	add  $87                                         ; $704e: $c6 $87
	ld   sp, $1111                                   ; $7050: $31 $11 $11
	ld   de, $1111                                   ; $7053: $11 $11 $11
	ld   de, $ff8f                                   ; $7056: $11 $8f $ff
	rst  $38                                         ; $7059: $ff
	rst  $38                                         ; $705a: $ff
	rst  $38                                         ; $705b: $ff
	ret                                              ; $705c: $c9


	ld   [hl], $11                                   ; $705d: $36 $11
	ld   [hl], $bb                                   ; $705f: $36 $bb
	rst  $38                                         ; $7061: $ff
	rst  $38                                         ; $7062: $ff
	rst  $38                                         ; $7063: $ff
	rst  $38                                         ; $7064: $ff
	rst  $10                                         ; $7065: $d7
	ld   [hl], l                                     ; $7066: $75
	ld   sp, $1111                                   ; $7067: $31 $11 $11
	ld   de, $1111                                   ; $706a: $11 $11 $11
	ld   de, $ff6f                                   ; $706d: $11 $6f $ff
	rst  $38                                         ; $7070: $ff
	rst  $38                                         ; $7071: $ff
	rst  $38                                         ; $7072: $ff
	db   $fc                                         ; $7073: $fc
	ld   h, a                                        ; $7074: $67
	ld   [de], a                                     ; $7075: $12
	ld   [hl], $9a                                   ; $7076: $36 $9a
	rst  $38                                         ; $7078: $ff
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	ld   a, [$5297]                                  ; $707c: $fa $97 $52
	ld   de, $1111                                   ; $707f: $11 $11 $11
	ld   de, $1111                                   ; $7082: $11 $11 $11
	jr   @+$01                                       ; $7085: $18 $ff

	rst  $38                                         ; $7087: $ff
	rst  $38                                         ; $7088: $ff
	rst  $38                                         ; $7089: $ff
	rst  $38                                         ; $708a: $ff
	add  $41                                         ; $708b: $c6 $41
	inc  h                                           ; $708d: $24
	ld   b, a                                        ; $708e: $47
	xor  a                                           ; $708f: $af
	rst  $38                                         ; $7090: $ff
	rst  $38                                         ; $7091: $ff
	rst  $38                                         ; $7092: $ff
	cp   $cb                                         ; $7093: $fe $cb
	ld   [hl], l                                     ; $7095: $75
	ld   de, $1111                                   ; $7096: $11 $11 $11
	ld   de, $1111                                   ; $7099: $11 $11 $11
	ld   de, $ffbf                                   ; $709c: $11 $bf $ff
	rst  $38                                         ; $709f: $ff
	rst  $38                                         ; $70a0: $ff
	rst  $38                                         ; $70a1: $ff
	db   $fc                                         ; $70a2: $fc
	ld   h, h                                        ; $70a3: $64
	ld   d, c                                        ; $70a4: $51
	dec  h                                           ; $70a5: $25
	ld   l, c                                        ; $70a6: $69
	rst  JumpTable                                         ; $70a7: $df
	rst  $38                                         ; $70a8: $ff
	rst  $38                                         ; $70a9: $ff
	rst  $38                                         ; $70aa: $ff
	db   $fd                                         ; $70ab: $fd
	cp   d                                           ; $70ac: $ba
	ld   b, d                                        ; $70ad: $42
	ld   hl, $1111                                   ; $70ae: $21 $11 $11
	ld   de, $1111                                   ; $70b1: $11 $11 $11
	ld   [de], a                                     ; $70b4: $12
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	rst  $38                                         ; $70b7: $ff
	rst  $38                                         ; $70b8: $ff
	rst  $38                                         ; $70b9: $ff
	ld   hl, sp+$72                                  ; $70ba: $f8 $72
	ld   de, $6b28                                   ; $70bc: $11 $28 $6b
	rst  $38                                         ; $70bf: $ff
	rst  $38                                         ; $70c0: $ff
	rst  $38                                         ; $70c1: $ff
	rst  $38                                         ; $70c2: $ff
	db   $fd                                         ; $70c3: $fd
	xor  c                                           ; $70c4: $a9
	ld   b, d                                        ; $70c5: $42
	ld   de, $1111                                   ; $70c6: $11 $11 $11
	ld   de, $1111                                   ; $70c9: $11 $11 $11
	ld   d, $ff                                      ; $70cc: $16 $ff
	rst  $38                                         ; $70ce: $ff
	rst  $38                                         ; $70cf: $ff
	rst  $38                                         ; $70d0: $ff
	rst  $38                                         ; $70d1: $ff
	ei                                               ; $70d2: $fb
	inc  sp                                          ; $70d3: $33
	ld   sp, $7a46                                   ; $70d4: $31 $46 $7a
	rst  $38                                         ; $70d7: $ff
	rst  $38                                         ; $70d8: $ff
	rst  $38                                         ; $70d9: $ff
	rst  $38                                         ; $70da: $ff
	db   $fc                                         ; $70db: $fc
	jp   z, $1152                                    ; $70dc: $ca $52 $11

	ld   de, $1111                                   ; $70df: $11 $11 $11
	ld   de, $1411                                   ; $70e2: $11 $11 $14
	rst  $38                                         ; $70e5: $ff
	rst  $38                                         ; $70e6: $ff
	rst  $38                                         ; $70e7: $ff
	rst  $38                                         ; $70e8: $ff
	rst  $38                                         ; $70e9: $ff
	db   $fc                                         ; $70ea: $fc
	ld   [hl], c                                     ; $70eb: $71
	ld   hl, $4826                                   ; $70ec: $21 $26 $48
	rst  $38                                         ; $70ef: $ff
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	db   $db                                         ; $70f4: $db
	ld   [hl], d                                     ; $70f5: $72
	ld   de, $1111                                   ; $70f6: $11 $11 $11
	ld   de, $1111                                   ; $70f9: $11 $11 $11
	ld   de, $ffbf                                   ; $70fc: $11 $bf $ff
	rst  $38                                         ; $70ff: $ff
	rst  $38                                         ; $7100: $ff
	rst  $38                                         ; $7101: $ff
	rst  $38                                         ; $7102: $ff
	rst  ToBoot                                         ; $7103: $c7
	ld   sp, $5613                                   ; $7104: $31 $13 $56
	xor  a                                           ; $7107: $af
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	rst  $38                                         ; $710b: $ff
	db   $fc                                         ; $710c: $fc
	sub  a                                           ; $710d: $97
	ld   hl, $1111                                   ; $710e: $21 $11 $11
	ld   de, $1111                                   ; $7111: $11 $11 $11
	ld   de, $ff19                                   ; $7114: $11 $19 $ff
	rst  $38                                         ; $7117: $ff
	rst  $38                                         ; $7118: $ff
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	cp   $a7                                         ; $711b: $fe $a7
	ld   b, e                                        ; $711d: $43
	ld   b, l                                        ; $711e: $45
	adc  d                                           ; $711f: $8a
	xor  l                                           ; $7120: $ad
	rst  $28                                         ; $7121: $ef
	rst  $38                                         ; $7122: $ff
	rst  $38                                         ; $7123: $ff
	db   $fd                                         ; $7124: $fd
	cp   c                                           ; $7125: $b9
	halt                                             ; $7126: $76
	ld   b, e                                        ; $7127: $43
	ld   de, $1111                                   ; $7128: $11 $11 $11
	ld   de, $1111                                   ; $712b: $11 $11 $11
	ld   de, $6734                                   ; $712e: $11 $34 $67
	sbc  c                                           ; $7131: $99
	cp   l                                           ; $7132: $bd
	xor  $ee                                         ; $7133: $ee $ee
	sbc  $dc                                         ; $7135: $de $dc
	call z, $dddd                                    ; $7137: $cc $dd $dd
	call c, $bbcb                                    ; $713a: $dc $cb $bb
	xor  d                                           ; $713d: $aa
	cp   e                                           ; $713e: $bb
	xor  d                                           ; $713f: $aa
	xor  d                                           ; $7140: $aa
	sbc  c                                           ; $7141: $99
	sbc  b                                           ; $7142: $98
	add  a                                           ; $7143: $87
	ld   [hl], a                                     ; $7144: $77
	halt                                             ; $7145: $76
	ld   d, h                                        ; $7146: $54
	ld   b, e                                        ; $7147: $43
	ld   [hl-], a                                    ; $7148: $32
	ld   hl, $1111                                   ; $7149: $21 $11 $11
	ld   [de], a                                     ; $714c: $12
	inc  [hl]                                        ; $714d: $34
	ld   d, [hl]                                     ; $714e: $56
	ld   a, b                                        ; $714f: $78
	sbc  e                                           ; $7150: $9b
	call z, $ddcc                                    ; $7151: $cc $cc $dd
	db   $dd                                         ; $7154: $dd
	db   $dd                                         ; $7155: $dd
	call z, $cccc                                    ; $7156: $cc $cc $cc
	call z, $bccc                                    ; $7159: $cc $cc $bc
	cp   e                                           ; $715c: $bb
	xor  d                                           ; $715d: $aa
	xor  d                                           ; $715e: $aa
	sbc  c                                           ; $715f: $99
	add  a                                           ; $7160: $87
	ld   h, [hl]                                     ; $7161: $66
	ld   d, h                                        ; $7162: $54
	ld   b, e                                        ; $7163: $43
	ld   [hl-], a                                    ; $7164: $32
	ld   [hl+], a                                    ; $7165: $22
	ld   [hl+], a                                    ; $7166: $22
	ld   [hl+], a                                    ; $7167: $22
	inc  hl                                          ; $7168: $23
	inc  [hl]                                        ; $7169: $34
	ld   b, l                                        ; $716a: $45
	ld   d, [hl]                                     ; $716b: $56
	ld   h, a                                        ; $716c: $67
	ld   a, b                                        ; $716d: $78
	adc  c                                           ; $716e: $89
	xor  d                                           ; $716f: $aa
	xor  d                                           ; $7170: $aa
	cp   h                                           ; $7171: $bc
	call z, $ddcc                                    ; $7172: $cc $cc $dd
	db   $dd                                         ; $7175: $dd
	db   $dd                                         ; $7176: $dd
	call $cbcb                                       ; $7177: $cd $cb $cb
	xor  c                                           ; $717a: $a9
	xor  b                                           ; $717b: $a8
	sbc  b                                           ; $717c: $98
	ld   [hl], a                                     ; $717d: $77
	ld   [hl], a                                     ; $717e: $77
	halt                                             ; $717f: $76
	ld   h, [hl]                                     ; $7180: $66
	ld   h, [hl]                                     ; $7181: $66
	ld   d, l                                        ; $7182: $55
	ld   d, h                                        ; $7183: $54
	ld   b, h                                        ; $7184: $44
	ld   b, e                                        ; $7185: $43
	inc  sp                                          ; $7186: $33
	inc  sp                                          ; $7187: $33
	inc  sp                                          ; $7188: $33
	ld   b, h                                        ; $7189: $44
	ld   b, l                                        ; $718a: $45
	ld   h, [hl]                                     ; $718b: $66
	ld   [hl], a                                     ; $718c: $77
	sbc  c                                           ; $718d: $99
	xor  d                                           ; $718e: $aa
	xor  d                                           ; $718f: $aa
	cp   e                                           ; $7190: $bb
	call z, $ccbc                                    ; $7191: $cc $bc $cc
	call z, $bccb                                    ; $7194: $cc $cb $bc
	cp   h                                           ; $7197: $bc
	res  7, d                                        ; $7198: $cb $ba
	xor  c                                           ; $719a: $a9
	xor  c                                           ; $719b: $a9
	adc  b                                           ; $719c: $88
	ld   [hl], a                                     ; $719d: $77
	ld   h, [hl]                                     ; $719e: $66
	ld   h, l                                        ; $719f: $65
	ld   d, l                                        ; $71a0: $55
	ld   d, l                                        ; $71a1: $55
	ld   d, l                                        ; $71a2: $55
	ld   d, l                                        ; $71a3: $55
	ld   b, h                                        ; $71a4: $44
	ld   b, h                                        ; $71a5: $44
	ld   b, h                                        ; $71a6: $44
	ld   b, l                                        ; $71a7: $45
	ld   d, l                                        ; $71a8: $55
	ld   d, l                                        ; $71a9: $55
	ld   h, [hl]                                     ; $71aa: $66
	ld   h, a                                        ; $71ab: $67
	ld   a, b                                        ; $71ac: $78
	adc  c                                           ; $71ad: $89
	adc  c                                           ; $71ae: $89
	xor  c                                           ; $71af: $a9
	xor  d                                           ; $71b0: $aa
	cp   d                                           ; $71b1: $ba
	xor  e                                           ; $71b2: $ab
	cp   e                                           ; $71b3: $bb
	cp   e                                           ; $71b4: $bb
	cp   e                                           ; $71b5: $bb
	cp   e                                           ; $71b6: $bb
	xor  d                                           ; $71b7: $aa
	xor  d                                           ; $71b8: $aa
	xor  c                                           ; $71b9: $a9
	xor  c                                           ; $71ba: $a9
	sbc  c                                           ; $71bb: $99
	adc  c                                           ; $71bc: $89
	adc  b                                           ; $71bd: $88
	add  a                                           ; $71be: $87
	ld   [hl], a                                     ; $71bf: $77
	ld   [hl], a                                     ; $71c0: $77
	halt                                             ; $71c1: $76
	ld   h, [hl]                                     ; $71c2: $66
	ld   h, a                                        ; $71c3: $67
	ld   h, [hl]                                     ; $71c4: $66
	ld   h, [hl]                                     ; $71c5: $66
	ld   h, [hl]                                     ; $71c6: $66
	ld   h, l                                        ; $71c7: $65
	ld   d, [hl]                                     ; $71c8: $56
	ld   h, l                                        ; $71c9: $65
	ld   d, [hl]                                     ; $71ca: $56
	ld   h, l                                        ; $71cb: $65
	ld   d, [hl]                                     ; $71cc: $56
	ld   h, [hl]                                     ; $71cd: $66
	ld   [hl], a                                     ; $71ce: $77
	ld   [hl], a                                     ; $71cf: $77
	ld   a, c                                        ; $71d0: $79
	adc  b                                           ; $71d1: $88
	sbc  d                                           ; $71d2: $9a
	xor  d                                           ; $71d3: $aa
	xor  d                                           ; $71d4: $aa
	cp   e                                           ; $71d5: $bb
	xor  e                                           ; $71d6: $ab
	cp   c                                           ; $71d7: $b9
	xor  d                                           ; $71d8: $aa
	xor  d                                           ; $71d9: $aa
	sbc  d                                           ; $71da: $9a
	xor  c                                           ; $71db: $a9
	xor  d                                           ; $71dc: $aa
	xor  b                                           ; $71dd: $a8
	sbc  d                                           ; $71de: $9a
	sbc  d                                           ; $71df: $9a
	sbc  b                                           ; $71e0: $98
	adc  b                                           ; $71e1: $88
	sbc  b                                           ; $71e2: $98
	ld   [hl], a                                     ; $71e3: $77
	ld   [hl], a                                     ; $71e4: $77
	ld   h, [hl]                                     ; $71e5: $66
	ld   h, l                                        ; $71e6: $65
	ld   a, b                                        ; $71e7: $78
	sub  a                                           ; $71e8: $97
	ld   d, l                                        ; $71e9: $55
	ld   d, [hl]                                     ; $71ea: $56
	ld   [hl], a                                     ; $71eb: $77
	ld   b, h                                        ; $71ec: $44
	ld   h, [hl]                                     ; $71ed: $66
	ld   h, l                                        ; $71ee: $65
	ld   h, l                                        ; $71ef: $65
	ld   d, a                                        ; $71f0: $57
	sbc  c                                           ; $71f1: $99
	adc  c                                           ; $71f2: $89
	sbc  e                                           ; $71f3: $9b
	sbc  c                                           ; $71f4: $99
	xor  d                                           ; $71f5: $aa
	sbc  d                                           ; $71f6: $9a
	cp   c                                           ; $71f7: $b9
	xor  d                                           ; $71f8: $aa
	xor  d                                           ; $71f9: $aa
	xor  d                                           ; $71fa: $aa
	cp   e                                           ; $71fb: $bb
	cp   d                                           ; $71fc: $ba
	cp   e                                           ; $71fd: $bb
	cp   e                                           ; $71fe: $bb
	db   $eb                                         ; $71ff: $eb
	adc  c                                           ; $7200: $89
	sbc  d                                           ; $7201: $9a
	cp   b                                           ; $7202: $b8
	ld   [hl], a                                     ; $7203: $77
	adc  b                                           ; $7204: $88
	ld   h, l                                        ; $7205: $65
	ld   d, l                                        ; $7206: $55
	inc  sp                                          ; $7207: $33
	ld   [hl-], a                                    ; $7208: $32
	ld   hl, $1111                                   ; $7209: $21 $11 $11
	ld   de, $4424                                   ; $720c: $11 $24 $44
	ld   b, l                                        ; $720f: $45
	ld   a, c                                        ; $7210: $79
	xor  h                                           ; $7211: $ac
	call z, $eecd                                    ; $7212: $cc $cd $ee
	rst  $28                                         ; $7215: $ef
	db   $ed                                         ; $7216: $ed
	set  3, h                                        ; $7217: $cb $dc
	res  7, e                                        ; $7219: $cb $bb
	xor  e                                           ; $721b: $ab
	cp   e                                           ; $721c: $bb
	jp   z, $9aab                                    ; $721d: $ca $ab $9a

	sbc  c                                           ; $7220: $99
	ld   [hl], l                                     ; $7221: $75
	ld   sp, $1111                                   ; $7222: $31 $11 $11
	ld   de, $1111                                   ; $7225: $11 $11 $11
	ld   de, $7a12                                   ; $7228: $11 $12 $7a
	call $ffef                                       ; $722b: $cd $ef $ff
	rst  $38                                         ; $722e: $ff
	rst  $38                                         ; $722f: $ff
	db   $ec                                         ; $7230: $ec
	jp   z, $87a9                                    ; $7231: $ca $a9 $87

	adc  c                                           ; $7234: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7235: $cf
	rst  $38                                         ; $7236: $ff
	rst  $38                                         ; $7237: $ff
	db   $ed                                         ; $7238: $ed
	db   $ed                                         ; $7239: $ed
	cp   d                                           ; $723a: $ba
	sbc  b                                           ; $723b: $98
	add  a                                           ; $723c: $87
	ld   h, h                                        ; $723d: $64
	ld   de, $1111                                   ; $723e: $11 $11 $11
	ld   de, $1111                                   ; $7241: $11 $11 $11
	ld   de, $ff8d                                   ; $7244: $11 $8d $ff
	rst  $38                                         ; $7247: $ff
	rst  $38                                         ; $7248: $ff
	rst  $38                                         ; $7249: $ff
	db   $fd                                         ; $724a: $fd
	cp   d                                           ; $724b: $ba
	cp   b                                           ; $724c: $b8
	ld   [hl], l                                     ; $724d: $75
	ld   b, [hl]                                     ; $724e: $46
	ld   a, e                                        ; $724f: $7b
	rst  $38                                         ; $7250: $ff
	rst  $38                                         ; $7251: $ff
	rst  $38                                         ; $7252: $ff
	rst  $38                                         ; $7253: $ff
	db   $ec                                         ; $7254: $ec
	cp   c                                           ; $7255: $b9
	adc  c                                           ; $7256: $89
	sbc  b                                           ; $7257: $98
	ld   [hl], l                                     ; $7258: $75
	ld   hl, $1111                                   ; $7259: $21 $11 $11
	ld   de, $1111                                   ; $725c: $11 $11 $11
	ld   de, $ff8f                                   ; $725f: $11 $8f $ff
	rst  $38                                         ; $7262: $ff
	rst  $38                                         ; $7263: $ff
	rst  $38                                         ; $7264: $ff
	reti                                             ; $7265: $d9


	add  a                                           ; $7266: $87
	ld   h, a                                        ; $7267: $67
	ld   [hl], a                                     ; $7268: $77
	adc  b                                           ; $7269: $88
	xor  [hl]                                        ; $726a: $ae
	rst  $38                                         ; $726b: $ff
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	db   $fd                                         ; $726e: $fd
	res  4, a                                        ; $726f: $cb $a7
	sbc  d                                           ; $7271: $9a
	xor  l                                           ; $7272: $ad
	bit  6, d                                        ; $7273: $cb $72
	ld   de, $1111                                   ; $7275: $11 $11 $11
	ld   de, $1111                                   ; $7278: $11 $11 $11
	ld   a, a                                        ; $727b: $7f
	rst  $38                                         ; $727c: $ff
	rst  $38                                         ; $727d: $ff
	rst  $38                                         ; $727e: $ff
	rst  $38                                         ; $727f: $ff
	and  [hl]                                        ; $7280: $a6
	ld   d, h                                        ; $7281: $54
	ld   l, c                                        ; $7282: $69
	xor  e                                           ; $7283: $ab
	xor  l                                           ; $7284: $ad
	rst  $38                                         ; $7285: $ff
	rst  $38                                         ; $7286: $ff
	rst  $38                                         ; $7287: $ff

Call_0a9_7288:
	cp   $ca                                         ; $7288: $fe $ca
	sbc  d                                           ; $728a: $9a
	xor  e                                           ; $728b: $ab
	call $ffef                                       ; $728c: $cd $ef $ff
	or   l                                           ; $728f: $b5
	ld   de, $1111                                   ; $7290: $11 $11 $11
	ld   de, $1111                                   ; $7293: $11 $11 $11
	jr   @+$01                                       ; $7296: $18 $ff

	rst  $38                                         ; $7298: $ff
	rst  $38                                         ; $7299: $ff
	cp   $c7                                         ; $729a: $fe $c7
	ld   h, [hl]                                     ; $729c: $66
	ld   a, d                                        ; $729d: $7a
	xor  h                                           ; $729e: $ac
	db   $fd                                         ; $729f: $fd
	xor  $cd                                         ; $72a0: $ee $cd
	call $ecfd                                       ; $72a2: $cd $fd $ec
	cp   h                                           ; $72a5: $bc
	cp   l                                           ; $72a6: $bd
	sbc  $ef                                         ; $72a7: $de $ef
	rst  $38                                         ; $72a9: $ff
	ld   [$1151], a                                  ; $72aa: $ea $51 $11
	ld   de, $1111                                   ; $72ad: $11 $11 $11
	ld   de, $2c11                                   ; $72b0: $11 $11 $2c
	rst  $38                                         ; $72b3: $ff
	rst  $38                                         ; $72b4: $ff
	cp   $cc                                         ; $72b5: $fe $cc
	sub  $77                                         ; $72b7: $d6 $77
	adc  l                                           ; $72b9: $8d
	rst  JumpTable                                         ; $72ba: $df
	cp   $eb                                         ; $72bb: $fe $eb
	jp   z, $cdbe                                    ; $72bd: $ca $be $cd

	call $fedc                                       ; $72c0: $cd $dc $fe
	xor  $cf                                         ; $72c3: $ee $cf
	rst  $38                                         ; $72c5: $ff
	add  sp, $31                                     ; $72c6: $e8 $31
	ld   de, $1111                                   ; $72c8: $11 $11 $11
	ld   de, $1111                                   ; $72cb: $11 $11 $11
	ld   c, d                                        ; $72ce: $4a
	rst  $38                                         ; $72cf: $ff
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	db   $eb                                         ; $72d2: $eb
	sbc  c                                           ; $72d3: $99
	ld   l, c                                        ; $72d4: $69
	cp   h                                           ; $72d5: $bc
	db   $fc                                         ; $72d6: $fc
	call z, $dbcd                                    ; $72d7: $cc $cd $db
	set  3, [hl]                                     ; $72da: $cb $de
	call $eedd                                       ; $72dc: $cd $dd $ee
	rst  $28                                         ; $72df: $ef
	rst  $38                                         ; $72e0: $ff
	cp   $a7                                         ; $72e1: $fe $a7
	ld   sp, $1111                                   ; $72e3: $31 $11 $11
	ld   de, $1111                                   ; $72e6: $11 $11 $11
	ld   de, $ff19                                   ; $72e9: $11 $19 $ff
	rst  $38                                         ; $72ec: $ff
	db   $fc                                         ; $72ed: $fc
	xor  h                                           ; $72ee: $ac
	cp   c                                           ; $72ef: $b9
	sbc  c                                           ; $72f0: $99
	cp   h                                           ; $72f1: $bc
	rst  $28                                         ; $72f2: $ef
	cp   $cb                                         ; $72f3: $fe $cb
	cp   d                                           ; $72f5: $ba
	cp   [hl]                                        ; $72f6: $be
	db   $dd                                         ; $72f7: $dd
	cp   d                                           ; $72f8: $ba
	cp   e                                           ; $72f9: $bb
	rst  $28                                         ; $72fa: $ef
	rst  $38                                         ; $72fb: $ff
	rst  $38                                         ; $72fc: $ff
	db   $ed                                         ; $72fd: $ed
	add  $21                                         ; $72fe: $c6 $21
	ld   de, $1111                                   ; $7300: $11 $11 $11
	ld   de, $1111                                   ; $7303: $11 $11 $11
	inc  de                                          ; $7306: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7307: $cf
	rst  $38                                         ; $7308: $ff
	rst  $38                                         ; $7309: $ff
	call c, $aacb                                    ; $730a: $dc $cb $aa
	xor  h                                           ; $730d: $ac
	adc  $fe                                         ; $730e: $ce $fe
	call c, $bcdb                                    ; $7310: $dc $db $bc
	call $cbcc                                       ; $7313: $cd $cc $cb
	sbc  $ff                                         ; $7316: $de $ff
	rst  $38                                         ; $7318: $ff
	db   $dd                                         ; $7319: $dd
	ret                                              ; $731a: $c9


	ld   d, c                                        ; $731b: $51
	ld   de, $1111                                   ; $731c: $11 $11 $11
	ld   de, $1111                                   ; $731f: $11 $11 $11
	ld   de, $ff6f                                   ; $7322: $11 $6f $ff
	rst  $38                                         ; $7325: $ff
	db   $ed                                         ; $7326: $ed
	db   $ec                                         ; $7327: $ec
	res  3, e                                        ; $7328: $cb $9b
	call $dced                                       ; $732a: $cd $ed $dc
	set  1, l                                        ; $732d: $cb $cd
	db   $ed                                         ; $732f: $ed
	db   $ec                                         ; $7330: $ec
	cp   h                                           ; $7331: $bc
	adc  $ff                                         ; $7332: $ce $ff
	rst  $38                                         ; $7334: $ff
	sbc  $db                                         ; $7335: $de $db
	add  h                                           ; $7337: $84
	ld   de, $1111                                   ; $7338: $11 $11 $11
	ld   de, $1111                                   ; $733b: $11 $11 $11
	ld   de, $cf16                                   ; $733e: $11 $16 $cf
	rst  $38                                         ; $7341: $ff
	rst  $38                                         ; $7342: $ff
	db   $fd                                         ; $7343: $fd
	rst  $28                                         ; $7344: $ef
	xor  e                                           ; $7345: $ab
	cp   d                                           ; $7346: $ba
	set  5, [hl]                                     ; $7347: $cb $ee
	adc  $dd                                         ; $7349: $ce $dd
	call c, $bced                                    ; $734b: $dc $ed $bc
	cp   e                                           ; $734e: $bb
	call $ffff                                       ; $734f: $cd $ff $ff
	call c, $52a9                                    ; $7352: $dc $a9 $52
	ld   de, $1111                                   ; $7355: $11 $11 $11
	ld   de, $1111                                   ; $7358: $11 $11 $11
	ld   de, $ff6e                                   ; $735b: $11 $6e $ff
	rst  $38                                         ; $735e: $ff
	db   $fd                                         ; $735f: $fd
	rst  $28                                         ; $7360: $ef
	db   $ed                                         ; $7361: $ed
	cp   h                                           ; $7362: $bc
	call z, $ddde                                    ; $7363: $cc $de $dd
	call z, $cddc                                    ; $7366: $cc $dc $cd
	call z, $abbb                                    ; $7369: $cc $bb $ab
	rst  $28                                         ; $736c: $ef
	rst  $38                                         ; $736d: $ff
	call c, $86ba                                    ; $736e: $dc $ba $86
	ld   hl, $1111                                   ; $7371: $21 $11 $11
	ld   de, $1111                                   ; $7374: $11 $11 $11
	ld   de, $7f13                                   ; $7377: $11 $13 $7f
	rst  $38                                         ; $737a: $ff
	rst  $38                                         ; $737b: $ff
	rst  $38                                         ; $737c: $ff
	rst  $28                                         ; $737d: $ef
	db   $eb                                         ; $737e: $eb
	cp   h                                           ; $737f: $bc
	cp   d                                           ; $7380: $ba
	xor  h                                           ; $7381: $ac
	call z, $bddc                                    ; $7382: $cc $dc $bd
	call c, $bceb                                    ; $7385: $dc $eb $bc
	cp   l                                           ; $7388: $bd
	db   $ed                                         ; $7389: $ed
	db   $ed                                         ; $738a: $ed
	call c, $85a9                                    ; $738b: $dc $a9 $85
	ld   hl, $1111                                   ; $738e: $21 $11 $11
	ld   de, $1111                                   ; $7391: $11 $11 $11
	ld   de, $ef18                                   ; $7394: $11 $18 $ef
	rst  $38                                         ; $7397: $ff
	rst  $38                                         ; $7398: $ff
	rst  $38                                         ; $7399: $ff
	sbc  $db                                         ; $739a: $de $db
	res  5, e                                        ; $739c: $cb $ab
	cp   e                                           ; $739e: $bb
	call z, $cebc                                    ; $739f: $cc $bc $ce
	sbc  $dc                                         ; $73a2: $de $dc
	xor  d                                           ; $73a4: $aa
	call z, $deee                                    ; $73a5: $cc $ee $de
	jp   z, Jump_0a9_52a7                            ; $73a8: $ca $a7 $52

	ld   de, $1111                                   ; $73ab: $11 $11 $11
	ld   de, $1111                                   ; $73ae: $11 $11 $11
	ld   de, $ff6c                                   ; $73b1: $11 $6c $ff
	rst  $38                                         ; $73b4: $ff
	rst  $38                                         ; $73b5: $ff
	db   $fd                                         ; $73b6: $fd
	db   $ed                                         ; $73b7: $ed
	xor  l                                           ; $73b8: $ad
	sbc  c                                           ; $73b9: $99
	xor  b                                           ; $73ba: $a8
	xor  d                                           ; $73bb: $aa
	xor  h                                           ; $73bc: $ac
	cp   [hl]                                        ; $73bd: $be
	xor  $fd                                         ; $73be: $ee $fd
	db   $dd                                         ; $73c0: $dd
	cp   h                                           ; $73c1: $bc
	xor  e                                           ; $73c2: $ab
	cp   l                                           ; $73c3: $bd
	call c, $97dc                                    ; $73c4: $dc $dc $97
	ld   sp, $1111                                   ; $73c7: $31 $11 $11
	ld   de, $1111                                   ; $73ca: $11 $11 $11
	ld   de, $af13                                   ; $73cd: $11 $13 $af
	rst  $38                                         ; $73d0: $ff
	rst  $38                                         ; $73d1: $ff
	rst  $38                                         ; $73d2: $ff
	rst  $38                                         ; $73d3: $ff
	call c, $99cb                                    ; $73d4: $dc $cb $99
	adc  b                                           ; $73d7: $88
	xor  d                                           ; $73d8: $aa
	call z, $eece                                    ; $73d9: $cc $ce $ee
	cp   $ed                                         ; $73dc: $fe $ed
	cp   h                                           ; $73de: $bc
	cp   e                                           ; $73df: $bb
	call c, $aadc                                    ; $73e0: $dc $dc $aa
	ld   [hl], l                                     ; $73e3: $75
	ld   sp, $1111                                   ; $73e4: $31 $11 $11
	ld   de, $1111                                   ; $73e7: $11 $11 $11
	ld   de, $af15                                   ; $73ea: $11 $15 $af
	rst  $38                                         ; $73ed: $ff
	rst  $38                                         ; $73ee: $ff
	rst  $38                                         ; $73ef: $ff
	rst  $38                                         ; $73f0: $ff
	db   $ec                                         ; $73f1: $ec
	cp   c                                           ; $73f2: $b9
	add  a                                           ; $73f3: $87
	ld   a, b                                        ; $73f4: $78
	sbc  d                                           ; $73f5: $9a
	call z, $ffdf                                    ; $73f6: $cc $df $ff
	rst  $38                                         ; $73f9: $ff
	db   $db                                         ; $73fa: $db
	cp   h                                           ; $73fb: $bc
	call $ccdc                                       ; $73fc: $cd $dc $cc
	xor  c                                           ; $73ff: $a9
	add  [hl]                                        ; $7400: $86
	ld   d, d                                        ; $7401: $52
	ld   de, $1111                                   ; $7402: $11 $11 $11
	ld   de, $1111                                   ; $7405: $11 $11 $11
	inc  de                                          ; $7408: $13
	xor  [hl]                                        ; $7409: $ae
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	jp   c, Jump_0a9_7897                            ; $740f: $da $97 $78

	ld   a, b                                        ; $7412: $78
	sbc  c                                           ; $7413: $99
	call z, $ffff                                    ; $7414: $cc $ff $ff
	cp   $cb                                         ; $7417: $fe $cb
	call z, $cbbc                                    ; $7419: $cc $bc $cb
	xor  c                                           ; $741c: $a9
	add  [hl]                                        ; $741d: $86
	ld   b, d                                        ; $741e: $42
	ld   de, $1111                                   ; $741f: $11 $11 $11
	ld   de, $1111                                   ; $7422: $11 $11 $11
	inc  de                                          ; $7425: $13
	xor  a                                           ; $7426: $af
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	rst  $38                                         ; $7429: $ff
	rst  $38                                         ; $742a: $ff
	cp   $b9                                         ; $742b: $fe $b9
	add  [hl]                                        ; $742d: $86
	ld   [hl], a                                     ; $742e: $77
	ld   a, c                                        ; $742f: $79
	sbc  d                                           ; $7430: $9a
	sbc  $ff                                         ; $7431: $de $ff
	rst  $38                                         ; $7433: $ff
	db   $fd                                         ; $7434: $fd
	call c, $ccbc                                    ; $7435: $dc $bc $cc
	cp   d                                           ; $7438: $ba
	sbc  c                                           ; $7439: $99
	ld   [hl], l                                     ; $743a: $75
	ld   sp, $1111                                   ; $743b: $31 $11 $11
	ld   de, $1111                                   ; $743e: $11 $11 $11
	ld   de, $ff19                                   ; $7441: $11 $19 $ff
	rst  $38                                         ; $7444: $ff
	rst  $38                                         ; $7445: $ff
	rst  $38                                         ; $7446: $ff
	rst  $38                                         ; $7447: $ff
	db   $fc                                         ; $7448: $fc
	and  a                                           ; $7449: $a7
	ld   d, [hl]                                     ; $744a: $56
	ld   [hl], a                                     ; $744b: $77
	sbc  d                                           ; $744c: $9a
	xor  h                                           ; $744d: $ac
	rst  $28                                         ; $744e: $ef
	rst  $38                                         ; $744f: $ff
	rst  $38                                         ; $7450: $ff
	db   $dd                                         ; $7451: $dd
	call z, $cbcb                                    ; $7452: $cc $cb $cb
	xor  d                                           ; $7455: $aa
	and  a                                           ; $7456: $a7
	ld   h, e                                        ; $7457: $63
	ld   de, $1111                                   ; $7458: $11 $11 $11
	ld   de, $1111                                   ; $745b: $11 $11 $11
	inc  d                                           ; $745e: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $745f: $cf
	rst  $38                                         ; $7460: $ff
	rst  $38                                         ; $7461: $ff
	rst  $38                                         ; $7462: $ff
	rst  $38                                         ; $7463: $ff
	ld   [$67a9], a                                  ; $7464: $ea $a9 $67
	ld   a, b                                        ; $7467: $78
	sbc  c                                           ; $7468: $99
	call $ffdf                                       ; $7469: $cd $df $ff
	cp   $dc                                         ; $746c: $fe $dc
	cp   h                                           ; $746e: $bc
	call $dccd                                       ; $746f: $cd $cd $dc
	xor  d                                           ; $7472: $aa
	add  h                                           ; $7473: $84
	ld   de, $1111                                   ; $7474: $11 $11 $11
	ld   de, $1111                                   ; $7477: $11 $11 $11
	dec  d                                           ; $747a: $15
	rst  $28                                         ; $747b: $ef
	rst  $38                                         ; $747c: $ff
	rst  $38                                         ; $747d: $ff
	rst  $38                                         ; $747e: $ff
	db   $fc                                         ; $747f: $fc
	res  5, c                                        ; $7480: $cb $a9
	sbc  b                                           ; $7482: $98
	sbc  d                                           ; $7483: $9a
	cp   [hl]                                        ; $7484: $be
	db   $ed                                         ; $7485: $ed
	db   $ec                                         ; $7486: $ec
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7487: $cf
	call $dbcb                                       ; $7488: $cd $cb $db
	rst  JumpTable                                         ; $748b: $df
	rst  $38                                         ; $748c: $ff
	db   $ed                                         ; $748d: $ed
	ret  z                                           ; $748e: $c8

	ld   d, e                                        ; $748f: $53
	ld   de, $1111                                   ; $7490: $11 $11 $11
	ld   de, $1111                                   ; $7493: $11 $11 $11
	rla                                              ; $7496: $17
	rst  JumpTable                                         ; $7497: $df
	rst  $38                                         ; $7498: $ff
	rst  $38                                         ; $7499: $ff
	db   $ed                                         ; $749a: $ed
	cp   e                                           ; $749b: $bb
	reti                                             ; $749c: $d9


	xor  e                                           ; $749d: $ab
	sbc  d                                           ; $749e: $9a
	cp   [hl]                                        ; $749f: $be
	rst  $38                                         ; $74a0: $ff
	cp   $cb                                         ; $74a1: $fe $cb
	call $bbde                                       ; $74a3: $cd $de $bb
	cp   h                                           ; $74a6: $bc
	rst  $38                                         ; $74a7: $ff
	rst  $38                                         ; $74a8: $ff
	cp   e                                           ; $74a9: $bb
	sub  l                                           ; $74aa: $95
	ld   b, c                                        ; $74ab: $41
	ld   de, $1111                                   ; $74ac: $11 $11 $11
	ld   de, $1211                                   ; $74af: $11 $11 $12
	cp   a                                           ; $74b2: $bf
	rst  $38                                         ; $74b3: $ff
	rst  $38                                         ; $74b4: $ff
	ld   a, [$9aab]                                  ; $74b5: $fa $ab $9a
	sbc  c                                           ; $74b8: $99
	cp   d                                           ; $74b9: $ba
	rst  JumpTable                                         ; $74ba: $df
	rst  $38                                         ; $74bb: $ff
	rst  $38                                         ; $74bc: $ff
	res  7, h                                        ; $74bd: $cb $bc
	cp   e                                           ; $74bf: $bb
	cp   c                                           ; $74c0: $b9
	xor  [hl]                                        ; $74c1: $ae
	rst  $38                                         ; $74c2: $ff
	rst  $38                                         ; $74c3: $ff
	ei                                               ; $74c4: $fb
	add  [hl]                                        ; $74c5: $86
	ld   sp, $1111                                   ; $74c6: $31 $11 $11
	ld   de, $1111                                   ; $74c9: $11 $11 $11
	dec  d                                           ; $74cc: $15
	cp   a                                           ; $74cd: $bf
	rst  $38                                         ; $74ce: $ff
	rst  $38                                         ; $74cf: $ff
	add  sp, $69                                     ; $74d0: $e8 $69
	cp   l                                           ; $74d2: $bd
	db   $ed                                         ; $74d3: $ed
	call $ffdf                                       ; $74d4: $cd $df $ff
	db   $fc                                         ; $74d7: $fc
	cp   b                                           ; $74d8: $b8
	adc  c                                           ; $74d9: $89
	cp   l                                           ; $74da: $bd
	rst  $28                                         ; $74db: $ef
	rst  $28                                         ; $74dc: $ef
	rst  $38                                         ; $74dd: $ff
	rst  $38                                         ; $74de: $ff
	cp   c                                           ; $74df: $b9
	ld   d, h                                        ; $74e0: $54
	ld   sp, $1111                                   ; $74e1: $31 $11 $11
	ld   de, $1111                                   ; $74e4: $11 $11 $11
	dec  d                                           ; $74e7: $15
	xor  a                                           ; $74e8: $af
	rst  $38                                         ; $74e9: $ff
	rst  $38                                         ; $74ea: $ff
	ld   sp, hl                                      ; $74eb: $f9
	xor  c                                           ; $74ec: $a9
	adc  $bc                                         ; $74ed: $ce $bc
	call c, $ffef                                    ; $74ef: $dc $ef $ff
	db   $ec                                         ; $74f2: $ec
	xor  b                                           ; $74f3: $a8
	xor  l                                           ; $74f4: $ad
	rst  $38                                         ; $74f5: $ff
	cp   $ff                                         ; $74f6: $fe $ff
	rst  $38                                         ; $74f8: $ff
	ei                                               ; $74f9: $fb
	sub  a                                           ; $74fa: $97
	ld   h, h                                        ; $74fb: $64
	ld   de, $1111                                   ; $74fc: $11 $11 $11
	ld   de, $1211                                   ; $74ff: $11 $11 $12
	ld   a, b                                        ; $7502: $78
	rst  $38                                         ; $7503: $ff
	rst  $38                                         ; $7504: $ff
	db   $fc                                         ; $7505: $fc
	sub  a                                           ; $7506: $97
	xor  a                                           ; $7507: $af
	db   $db                                         ; $7508: $db
	set  3, a                                        ; $7509: $cb $df
	rst  $38                                         ; $750b: $ff
	db   $fd                                         ; $750c: $fd
	cp   b                                           ; $750d: $b8
	adc  d                                           ; $750e: $8a
	rst  $28                                         ; $750f: $ef
	rst  $38                                         ; $7510: $ff
	rst  $38                                         ; $7511: $ff
	rst  $38                                         ; $7512: $ff
	db   $fc                                         ; $7513: $fc
	xor  b                                           ; $7514: $a8
	ld   h, [hl]                                     ; $7515: $66
	ld   b, d                                        ; $7516: $42
	ld   de, $1111                                   ; $7517: $11 $11 $11
	ld   de, $2411                                   ; $751a: $11 $11 $24
	sbc  a                                           ; $751d: $9f
	rst  $38                                         ; $751e: $ff
	rst  $38                                         ; $751f: $ff
	jp   z, $fdce                                    ; $7520: $ca $ce $fd

	xor  c                                           ; $7523: $a9
	cp   l                                           ; $7524: $bd
	rst  $38                                         ; $7525: $ff
	rst  $38                                         ; $7526: $ff
	or   l                                           ; $7527: $b5
	ld   e, b                                        ; $7528: $58
	cp   a                                           ; $7529: $bf
	rst  $38                                         ; $752a: $ff
	rst  $28                                         ; $752b: $ef
	rst  $38                                         ; $752c: $ff
	ei                                               ; $752d: $fb
	ld   d, h                                        ; $752e: $54
	ld   b, a                                        ; $752f: $47
	ld   [hl], e                                     ; $7530: $73
	ld   de, $1111                                   ; $7531: $11 $11 $11
	ld   de, $4611                                   ; $7534: $11 $11 $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7537: $cf
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	jp   z, $dadf                                    ; $753a: $ca $df $da

	sbc  h                                           ; $753d: $9c
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	ei                                               ; $7540: $fb
	halt                                             ; $7541: $76
	ld   a, e                                        ; $7542: $7b
	rst  $38                                         ; $7543: $ff
	rst  $38                                         ; $7544: $ff
	rst  $38                                         ; $7545: $ff
	cp   $b9                                         ; $7546: $fe $b9
	ld   d, [hl]                                     ; $7548: $56
	ld   [hl], l                                     ; $7549: $75
	ld   d, d                                        ; $754a: $52
	ld   de, $1111                                   ; $754b: $11 $11 $11
	ld   de, $5612                                   ; $754e: $11 $12 $56
	rst  $38                                         ; $7551: $ff
	rst  $38                                         ; $7552: $ff
	rst  $28                                         ; $7553: $ef
	rst  $38                                         ; $7554: $ff
	db   $fd                                         ; $7555: $fd
	and  a                                           ; $7556: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7557: $cf
	rst  $38                                         ; $7558: $ff
	rst  $38                                         ; $7559: $ff
	and  l                                           ; $755a: $a5
	ld   a, c                                        ; $755b: $79
	adc  $ef                                         ; $755c: $ce $ef
	rst  $38                                         ; $755e: $ff
	rst  $38                                         ; $755f: $ff
	xor  b                                           ; $7560: $a8
	ld   h, a                                        ; $7561: $67
	add  a                                           ; $7562: $87
	ld   [hl], d                                     ; $7563: $72
	ld   de, $1111                                   ; $7564: $11 $11 $11
	ld   de, $3711                                   ; $7567: $11 $11 $37
	sbc  a                                           ; $756a: $9f
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	rst  $38                                         ; $756d: $ff
	ret  c                                           ; $756e: $d8

	ld   h, a                                        ; $756f: $67
	rst  $28                                         ; $7570: $ef
	rst  $38                                         ; $7571: $ff
	rst  $38                                         ; $7572: $ff
	db   $fc                                         ; $7573: $fc
	reti                                             ; $7574: $d9


	sbc  h                                           ; $7575: $9c
	xor  $ff                                         ; $7576: $ee $ff
	res  2, a                                        ; $7578: $cb $97
	and  a                                           ; $757a: $a7
	add  a                                           ; $757b: $87
	ld   sp, $1111                                   ; $757c: $31 $11 $11
	ld   de, $1111                                   ; $757f: $11 $11 $11
	ld   b, h                                        ; $7582: $44
	cp   c                                           ; $7583: $b9
	rst  $28                                         ; $7584: $ef
	rst  $38                                         ; $7585: $ff
	rst  $38                                         ; $7586: $ff
	pop  af                                          ; $7587: $f1
	ld   e, c                                        ; $7588: $59
	cp   a                                           ; $7589: $bf
	rst  $38                                         ; $758a: $ff
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	db   $db                                         ; $758d: $db
	xor  e                                           ; $758e: $ab
	xor  [hl]                                        ; $758f: $ae
	rst  $28                                         ; $7590: $ef
	ret  z                                           ; $7591: $c8

	add  e                                           ; $7592: $83
	ld   l, b                                        ; $7593: $68
	ld   d, [hl]                                     ; $7594: $56
	ld   de, $1111                                   ; $7595: $11 $11 $11
	ld   de, $1211                                   ; $7598: $11 $11 $12
	ld   a, b                                        ; $759b: $78
	ld   c, b                                        ; $759c: $48
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	ld   sp, $ff7a                                   ; $75a0: $31 $7a $ff
	rst  $38                                         ; $75a3: $ff
	rst  $38                                         ; $75a4: $ff
	cp   $ff                                         ; $75a5: $fe $ff
	xor  l                                           ; $75a7: $ad
	xor  a                                           ; $75a8: $af
	db   $fd                                         ; $75a9: $fd
	push bc                                          ; $75aa: $c5
	ld   sp, $3127                                   ; $75ab: $31 $27 $31
	ld   de, $1111                                   ; $75ae: $11 $11 $11
	ld   de, $1711                                   ; $75b1: $11 $11 $17
	cp   b                                           ; $75b4: $b8
	cp   [hl]                                        ; $75b5: $be
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff

Call_0a9_75b8:
	di                                               ; $75b8: $f3
	ld   [hl], $9f                                   ; $75b9: $36 $9f

Call_0a9_75bb:
	rst  $38                                         ; $75bb: $ff
	cp   $ff                                         ; $75bc: $fe $ff
	rst  $38                                         ; $75be: $ff
	db   $ed                                         ; $75bf: $ed
	db   $eb                                         ; $75c0: $eb
	db   $fd                                         ; $75c1: $fd
	sbc  d                                           ; $75c2: $9a
	ld   b, d                                        ; $75c3: $42
	inc  [hl]                                        ; $75c4: $34
	ld   d, e                                        ; $75c5: $53
	ld   de, $1111                                   ; $75c6: $11 $11 $11
	ld   de, $3111                                   ; $75c9: $11 $11 $31
	or   a                                           ; $75cc: $b7
	cp   a                                           ; $75cd: $bf
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	pop  af                                          ; $75d0: $f1
	ld   c, a                                        ; $75d1: $4f
	adc  a                                           ; $75d2: $8f
	rst  $38                                         ; $75d3: $ff
	rst  $38                                         ; $75d4: $ff
	rst  $38                                         ; $75d5: $ff
	rst  JumpTable                                         ; $75d6: $df
	ei                                               ; $75d7: $fb

Call_0a9_75d8:
	db   $fc                                         ; $75d8: $fc
	call Call_0a9_6198                               ; $75d9: $cd $98 $61
	dec  [hl]                                        ; $75dc: $35
	inc  h                                           ; $75dd: $24
	ld   de, $1111                                   ; $75de: $11 $11 $11
	ld   de, $2711                                   ; $75e1: $11 $11 $27
	cp   h                                           ; $75e4: $bc
	sbc  a                                           ; $75e5: $9f
	rst  $38                                         ; $75e6: $ff
	rst  $38                                         ; $75e7: $ff
	jp   $ef4d                                       ; $75e8: $c3 $4d $ef


	rst  $38                                         ; $75eb: $ff
	rst  $38                                         ; $75ec: $ff
	rst  $38                                         ; $75ed: $ff
	rst  $38                                         ; $75ee: $ff
	rst  $38                                         ; $75ef: $ff
	rst  JumpTable                                         ; $75f0: $df
	ld   a, [$1395]                                  ; $75f1: $fa $95 $13
	ld   b, e                                        ; $75f4: $43
	ld   sp, $1111                                   ; $75f5: $31 $11 $11
	ld   de, $1111                                   ; $75f8: $11 $11 $11
	ld   de, $ff64                                   ; $75fb: $11 $64 $ff
	rst  $38                                         ; $75fe: $ff
	rst  $38                                         ; $75ff: $ff
	or   l                                           ; $7600: $b5
	call z, $ffbf                                    ; $7601: $cc $bf $ff
	rst  $38                                         ; $7604: $ff
	rst  $38                                         ; $7605: $ff
	rst  $38                                         ; $7606: $ff
	rst  $38                                         ; $7607: $ff
	rst  $38                                         ; $7608: $ff
	ld   sp, hl                                      ; $7609: $f9
	ld   sp, $4113                                   ; $760a: $31 $13 $41
	ld   de, $1111                                   ; $760d: $11 $11 $11
	ld   de, $1111                                   ; $7610: $11 $11 $11
	ld   [de], a                                     ; $7613: $12
	jr   z, @+$01                                    ; $7614: $28 $ff

	rst  $38                                         ; $7616: $ff
	rst  $38                                         ; $7617: $ff
	jp   z, $deec                                    ; $7618: $ca $ec $de

	call z, $ffff                                    ; $761b: $cc $ff $ff
	rst  $38                                         ; $761e: $ff
	rst  $38                                         ; $761f: $ff
	rst  $38                                         ; $7620: $ff
	ret  z                                           ; $7621: $c8

	ld   b, h                                        ; $7622: $44
	ld   de, $1111                                   ; $7623: $11 $11 $11
	ld   de, $1111                                   ; $7626: $11 $11 $11
	ld   de, $1111                                   ; $7629: $11 $11 $11
	ccf                                              ; $762c: $3f
	rst  $38                                         ; $762d: $ff
	rst  $38                                         ; $762e: $ff
	rst  $38                                         ; $762f: $ff
	rst  $38                                         ; $7630: $ff
	call c, $fec9                                    ; $7631: $dc $c9 $fe
	rst  $38                                         ; $7634: $ff
	rst  $38                                         ; $7635: $ff
	rst  $38                                         ; $7636: $ff
	rst  $38                                         ; $7637: $ff
	cp   $b7                                         ; $7638: $fe $b7
	ld   h, d                                        ; $763a: $62
	ld   de, $1111                                   ; $763b: $11 $11 $11
	ld   de, $1111                                   ; $763e: $11 $11 $11
	ld   de, $1111                                   ; $7641: $11 $11 $11
	ld   l, $ff                                      ; $7644: $2e $ff
	rst  $38                                         ; $7646: $ff
	rst  $38                                         ; $7647: $ff
	rst  $38                                         ; $7648: $ff
	rst  $38                                         ; $7649: $ff
	call $cadc                                       ; $764a: $cd $dc $ca
	xor  e                                           ; $764d: $ab
	rst  JumpTable                                         ; $764e: $df
	rst  $38                                         ; $764f: $ff
	ld   [$75b8], a                                  ; $7650: $ea $b8 $75
	ld   hl, $1111                                   ; $7653: $21 $11 $11
	ld   de, $1111                                   ; $7656: $11 $11 $11
	ld   de, $1111                                   ; $7659: $11 $11 $11
	inc  [hl]                                        ; $765c: $34
	ld   [hl], a                                     ; $765d: $77
	cp   a                                           ; $765e: $bf
	rst  $38                                         ; $765f: $ff
	rst  $38                                         ; $7660: $ff
	rst  $38                                         ; $7661: $ff
	cp   $fc                                         ; $7662: $fe $fc
	db   $db                                         ; $7664: $db
	xor  h                                           ; $7665: $ac
	cp   l                                           ; $7666: $bd
	call $a9ba                                       ; $7667: $cd $ba $a9
	xor  d                                           ; $766a: $aa
	xor  c                                           ; $766b: $a9
	adc  c                                           ; $766c: $89
	xor  d                                           ; $766d: $aa
	sub  a                                           ; $766e: $97
	ld   h, a                                        ; $766f: $67
	adc  c                                           ; $7670: $89
	halt                                             ; $7671: $76
	ld   b, e                                        ; $7672: $43
	ld   d, l                                        ; $7673: $55
	ld   d, l                                        ; $7674: $55
	inc  sp                                          ; $7675: $33
	ld   b, l                                        ; $7676: $45
	halt                                             ; $7677: $76
	ld   d, h                                        ; $7678: $54
	ld   b, l                                        ; $7679: $45
	ld   h, a                                        ; $767a: $67
	adc  b                                           ; $767b: $88
	adc  b                                           ; $767c: $88
	adc  d                                           ; $767d: $8a
	call z, $cdcc                                    ; $767e: $cc $cc $cd
	call z, $bbdc                                    ; $7681: $cc $dc $bb
	cp   h                                           ; $7684: $bc
	call z, $99a9                                    ; $7685: $cc $a9 $99
	sbc  c                                           ; $7688: $99
	sub  a                                           ; $7689: $97
	halt                                             ; $768a: $76
	ld   h, a                                        ; $768b: $67
	ld   [hl], a                                     ; $768c: $77
	ld   [hl], a                                     ; $768d: $77
	ld   [hl], a                                     ; $768e: $77
	ld   [hl], a                                     ; $768f: $77
	halt                                             ; $7690: $76
	ld   h, [hl]                                     ; $7691: $66
	ld   h, [hl]                                     ; $7692: $66
	ld   [hl], a                                     ; $7693: $77
	ld   h, [hl]                                     ; $7694: $66
	ld   [hl], a                                     ; $7695: $77
	adc  c                                           ; $7696: $89
	adc  b                                           ; $7697: $88
	adc  b                                           ; $7698: $88
	sbc  b                                           ; $7699: $98
	sbc  b                                           ; $769a: $98
	adc  b                                           ; $769b: $88
	adc  c                                           ; $769c: $89
	adc  b                                           ; $769d: $88
	sbc  c                                           ; $769e: $99
	sbc  c                                           ; $769f: $99
	sbc  c                                           ; $76a0: $99
	adc  b                                           ; $76a1: $88
	adc  b                                           ; $76a2: $88
	adc  b                                           ; $76a3: $88
	adc  b                                           ; $76a4: $88
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	sbc  b                                           ; $76a7: $98

Call_0a9_76a8:
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  c                                           ; $76ac: $89
	adc  c                                           ; $76ad: $89
	sbc  d                                           ; $76ae: $9a
	xor  d                                           ; $76af: $aa
	sbc  d                                           ; $76b0: $9a
	sbc  d                                           ; $76b1: $9a
	sbc  b                                           ; $76b2: $98
	adc  c                                           ; $76b3: $89
	sbc  b                                           ; $76b4: $98
	add  a                                           ; $76b5: $87
	ld   [hl], a                                     ; $76b6: $77
	ld   [hl], a                                     ; $76b7: $77
	ld   [hl], a                                     ; $76b8: $77

Call_0a9_76b9:
	ld   [hl], a                                     ; $76b9: $77
	ld   [hl], a                                     ; $76ba: $77
	ld   [hl], a                                     ; $76bb: $77
	ld   [hl], a                                     ; $76bc: $77
	ld   [hl], a                                     ; $76bd: $77
	ld   [hl], a                                     ; $76be: $77
	ld   [hl], a                                     ; $76bf: $77
	ld   a, b                                        ; $76c0: $78
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	sbc  c                                           ; $76c4: $99
	sbc  b                                           ; $76c5: $98
	adc  c                                           ; $76c6: $89
	sbc  d                                           ; $76c7: $9a
	xor  c                                           ; $76c8: $a9
	sbc  b                                           ; $76c9: $98
	sbc  c                                           ; $76ca: $99
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	add  a                                           ; $76cd: $87
	ld   [hl], a                                     ; $76ce: $77
	ld   [hl], a                                     ; $76cf: $77
	ld   [hl], a                                     ; $76d0: $77
	ld   [hl], a                                     ; $76d1: $77
	ld   [hl], a                                     ; $76d2: $77
	ld   [hl], a                                     ; $76d3: $77
	ld   [hl], a                                     ; $76d4: $77
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	adc  b                                           ; $76d7: $88
	adc  c                                           ; $76d8: $89
	adc  c                                           ; $76d9: $89
	adc  b                                           ; $76da: $88
	adc  b                                           ; $76db: $88
	adc  b                                           ; $76dc: $88
	sbc  c                                           ; $76dd: $99
	adc  b                                           ; $76de: $88
	sbc  c                                           ; $76df: $99
	sbc  b                                           ; $76e0: $98
	adc  c                                           ; $76e1: $89
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	add  a                                           ; $76e4: $87
	ld   [hl], a                                     ; $76e5: $77
	ld   [hl], a                                     ; $76e6: $77
	ld   [hl], a                                     ; $76e7: $77
	ld   [hl], a                                     ; $76e8: $77
	ld   [hl], a                                     ; $76e9: $77
	ld   [hl], a                                     ; $76ea: $77
	ld   [hl], a                                     ; $76eb: $77
	ld   [hl], a                                     ; $76ec: $77
	ld   [hl], a                                     ; $76ed: $77
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	adc  b                                           ; $76f0: $88
	adc  b                                           ; $76f1: $88
	sbc  c                                           ; $76f2: $99
	sbc  c                                           ; $76f3: $99
	sbc  c                                           ; $76f4: $99
	sbc  c                                           ; $76f5: $99
	sbc  c                                           ; $76f6: $99
	sbc  b                                           ; $76f7: $98
	adc  c                                           ; $76f8: $89
	sbc  c                                           ; $76f9: $99
	adc  b                                           ; $76fa: $88
	adc  b                                           ; $76fb: $88
	adc  b                                           ; $76fc: $88
	adc  b                                           ; $76fd: $88
	add  a                                           ; $76fe: $87
	ld   [hl], a                                     ; $76ff: $77
	ld   a, b                                        ; $7700: $78
	adc  b                                           ; $7701: $88
	adc  b                                           ; $7702: $88
	adc  b                                           ; $7703: $88
	ld   [hl], a                                     ; $7704: $77
	ld   [hl], a                                     ; $7705: $77
	ld   [hl], a                                     ; $7706: $77
	ld   [hl], a                                     ; $7707: $77
	ld   [hl], a                                     ; $7708: $77
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
	ld   a, b                                        ; $7717: $78
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
	adc  c                                           ; $776e: $89
	add  a                                           ; $776f: $87
	ld   a, b                                        ; $7770: $78
	adc  b                                           ; $7771: $88
	add  a                                           ; $7772: $87
	ld   a, b                                        ; $7773: $78
	adc  b                                           ; $7774: $88
	adc  b                                           ; $7775: $88
	ld   a, b                                        ; $7776: $78
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
	sbc  c                                           ; $7782: $99
	ld   [hl], a                                     ; $7783: $77
	ld   a, b                                        ; $7784: $78
	sbc  b                                           ; $7785: $98
	add  a                                           ; $7786: $87
	ld   [hl], a                                     ; $7787: $77
	sbc  c                                           ; $7788: $99
	sbc  b                                           ; $7789: $98
	ld   [hl], a                                     ; $778a: $77
	adc  c                                           ; $778b: $89
	sbc  c                                           ; $778c: $99
	ld   [hl], a                                     ; $778d: $77
	sbc  c                                           ; $778e: $99
	sbc  b                                           ; $778f: $98
	ld   a, b                                        ; $7790: $78
	xor  b                                           ; $7791: $a8
	ld   [hl], a                                     ; $7792: $77
	ld   a, c                                        ; $7793: $79
	sbc  b                                           ; $7794: $98
	ld   [hl], a                                     ; $7795: $77
	xor  c                                           ; $7796: $a9
	sub  [hl]                                        ; $7797: $96
	ld   h, a                                        ; $7798: $67
	xor  e                                           ; $7799: $ab
	and  a                                           ; $779a: $a7
	ld   h, a                                        ; $779b: $67
	sbc  c                                           ; $779c: $99
	sbc  c                                           ; $779d: $99
	adc  c                                           ; $779e: $89
	ld   [hl], a                                     ; $779f: $77
	sbc  b                                           ; $77a0: $98
	adc  b                                           ; $77a1: $88
	adc  b                                           ; $77a2: $88
	ld   [hl], a                                     ; $77a3: $77
	ld   a, c                                        ; $77a4: $79
	sbc  d                                           ; $77a5: $9a
	sub  a                                           ; $77a6: $97
	ld   [hl], a                                     ; $77a7: $77

Call_0a9_77a8:
	adc  c                                           ; $77a8: $89
	sbc  d                                           ; $77a9: $9a
	sub  [hl]                                        ; $77aa: $96
	ld   d, a                                        ; $77ab: $57
	sbc  e                                           ; $77ac: $9b
	sub  [hl]                                        ; $77ad: $96
	ld   d, a                                        ; $77ae: $57
	xor  e                                           ; $77af: $ab
	xor  c                                           ; $77b0: $a9
	adc  c                                           ; $77b1: $89
	xor  l                                           ; $77b2: $ad
	db   $ec                                         ; $77b3: $ec
	and  h                                           ; $77b4: $a4
	ld   c, b                                        ; $77b5: $48
	xor  d                                           ; $77b6: $aa
	ld   h, l                                        ; $77b7: $65
	ld   b, [hl]                                     ; $77b8: $46

Call_0a9_77b9:
	sbc  c                                           ; $77b9: $99
	adc  b                                           ; $77ba: $88
	sbc  h                                           ; $77bb: $9c
	cp   $b5                                         ; $77bc: $fe $b5
	ld   c, b                                        ; $77be: $48
	cp   l                                           ; $77bf: $bd
	ld   h, d                                        ; $77c0: $62
	ld   a, [hl-]                                    ; $77c1: $3a
	ld   a, [$3d52]                                  ; $77c2: $fa $52 $3d
	or   [hl]                                        ; $77c5: $b6
	ld   de, $a52a                                   ; $77c6: $11 $2a $a5

Call_0a9_77c9:
	ld   sp, $bb49                                   ; $77c9: $31 $49 $bb
	ld   h, e                                        ; $77cc: $63
	scf                                              ; $77cd: $37
	adc  c                                           ; $77ce: $89
	ld   h, h                                        ; $77cf: $64
	ld   d, [hl]                                     ; $77d0: $56
	sbc  b                                           ; $77d1: $98
	ld   d, l                                        ; $77d2: $55
	ld   l, c                                        ; $77d3: $69
	cp   b                                           ; $77d4: $b8
	ld   h, [hl]                                     ; $77d5: $66
	ld   a, c                                        ; $77d6: $79
	sub  a                                           ; $77d7: $97
	ld   h, [hl]                                     ; $77d8: $66
	adc  c                                           ; $77d9: $89
	add  a                                           ; $77da: $87
	ld   l, b                                        ; $77db: $68
	sbc  b                                           ; $77dc: $98
	ld   h, [hl]                                     ; $77dd: $66
	ld   a, c                                        ; $77de: $79
	halt                                             ; $77df: $76
	ld   h, l                                        ; $77e0: $65
	xor  d                                           ; $77e1: $aa
	add  [hl]                                        ; $77e2: $86
	inc  [hl]                                        ; $77e3: $34
	ld   [hl], a                                     ; $77e4: $77
	ld   [hl], l                                     ; $77e5: $75
	ld   d, [hl]                                     ; $77e6: $56
	ld   h, [hl]                                     ; $77e7: $66
	halt                                             ; $77e8: $76
	ld   h, [hl]                                     ; $77e9: $66
	ld   d, [hl]                                     ; $77ea: $56
	ld   h, a                                        ; $77eb: $67
	ld   h, [hl]                                     ; $77ec: $66
	adc  d                                           ; $77ed: $8a
	cp   d                                           ; $77ee: $ba
	cp   l                                           ; $77ef: $bd
	db   $ed                                         ; $77f0: $ed
	call $edff                                       ; $77f1: $cd $ff $ed
	call z, $c9dd                                    ; $77f4: $cc $dd $c9
	sbc  e                                           ; $77f7: $9b
	xor  b                                           ; $77f8: $a8
	ld   b, h                                        ; $77f9: $44
	inc  [hl]                                        ; $77fa: $34
	ld   sp, $1111                                   ; $77fb: $31 $11 $11
	ld   de, $1511                                   ; $77fe: $11 $11 $15
	ld   d, h                                        ; $7801: $54
	ld   d, a                                        ; $7802: $57
	rst  JumpTable                                         ; $7803: $df
	rst  $38                                         ; $7804: $ff
	rst  $38                                         ; $7805: $ff
	rst  $38                                         ; $7806: $ff
	rst  $38                                         ; $7807: $ff
	rst  $38                                         ; $7808: $ff
	rst  $38                                         ; $7809: $ff
	db   $fd                                         ; $780a: $fd
	cp   l                                           ; $780b: $bd
	rst  $38                                         ; $780c: $ff
	db   $fd                                         ; $780d: $fd
	jp   z, $2195                                    ; $780e: $ca $95 $21

	ld   de, $1111                                   ; $7811: $11 $11 $11
	ld   de, $1211                                   ; $7814: $11 $11 $12
	ld   a, c                                        ; $7817: $79
	rst  $28                                         ; $7818: $ef
	rst  $38                                         ; $7819: $ff
	rst  $38                                         ; $781a: $ff
	rst  $38                                         ; $781b: $ff
	rst  $38                                         ; $781c: $ff
	db   $fc                                         ; $781d: $fc
	db   $dd                                         ; $781e: $dd
	rst  $38                                         ; $781f: $ff
	rst  $38                                         ; $7820: $ff
	rst  $38                                         ; $7821: $ff
	rst  $38                                         ; $7822: $ff
	db   $fc                                         ; $7823: $fc
	adc  c                                           ; $7824: $89
	ld   [hl], d                                     ; $7825: $72
	ld   de, $1111                                   ; $7826: $11 $11 $11
	ld   de, $1411                                   ; $7829: $11 $11 $14
	ld   l, d                                        ; $782c: $6a
	rst  $38                                         ; $782d: $ff
	rst  $38                                         ; $782e: $ff
	rst  $38                                         ; $782f: $ff
	rst  $38                                         ; $7830: $ff
	rst  $38                                         ; $7831: $ff
	cp   e                                           ; $7832: $bb
	xor  h                                           ; $7833: $ac
	rst  $38                                         ; $7834: $ff
	rst  $38                                         ; $7835: $ff
	rst  $38                                         ; $7836: $ff
	rst  $38                                         ; $7837: $ff
	db   $fc                                         ; $7838: $fc
	ld   d, h                                        ; $7839: $54
	ld   [hl+], a                                    ; $783a: $22
	ld   de, $1111                                   ; $783b: $11 $11 $11
	ld   de, $1211                                   ; $783e: $11 $11 $12
	sbc  h                                           ; $7841: $9c
	rst  JumpTable                                         ; $7842: $df
	rst  $38                                         ; $7843: $ff
	rst  $38                                         ; $7844: $ff
	ld   hl, sp-$61                                  ; $7845: $f8 $9f
	rst  $38                                         ; $7847: $ff
	jp   hl                                          ; $7848: $e9


	rst  $38                                         ; $7849: $ff
	rst  $38                                         ; $784a: $ff
	rst  $38                                         ; $784b: $ff
	rst  $38                                         ; $784c: $ff
	rst  $38                                         ; $784d: $ff
	add  c                                           ; $784e: $81
	ld   de, $1111                                   ; $784f: $11 $11 $11
	ld   de, $1111                                   ; $7852: $11 $11 $11
	ld   [de], a                                     ; $7855: $12
	cp   d                                           ; $7856: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7857: $cf
	rst  $38                                         ; $7858: $ff
	rst  $38                                         ; $7859: $ff
	reti                                             ; $785a: $d9


	sbc  a                                           ; $785b: $9f
	rst  $38                                         ; $785c: $ff
	db   $dd                                         ; $785d: $dd
	rst  $38                                         ; $785e: $ff
	rst  $38                                         ; $785f: $ff
	rst  $38                                         ; $7860: $ff
	rst  $38                                         ; $7861: $ff
	rst  $38                                         ; $7862: $ff
	sub  c                                           ; $7863: $91
	ld   de, $1111                                   ; $7864: $11 $11 $11
	ld   de, $1111                                   ; $7867: $11 $11 $11
	ld   [de], a                                     ; $786a: $12
	sub  l                                           ; $786b: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $786c: $cf
	rst  $38                                         ; $786d: $ff
	rst  $38                                         ; $786e: $ff
	ld   b, [hl]                                     ; $786f: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7870: $cf
	ei                                               ; $7871: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7872: $cf
	rst  $38                                         ; $7873: $ff
	rst  $38                                         ; $7874: $ff
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	ei                                               ; $7877: $fb
	ld   b, c                                        ; $7878: $41
	ld   [de], a                                     ; $7879: $12
	ld   d, c                                        ; $787a: $51
	ld   de, $1111                                   ; $787b: $11 $11 $11
	ld   de, $fc1a                                   ; $787e: $11 $1a $fc
	rst  $38                                         ; $7881: $ff
	rst  $38                                         ; $7882: $ff
	db   $fd                                         ; $7883: $fd
	ld   de, $ff6f                                   ; $7884: $11 $6f $ff
	rst  $38                                         ; $7887: $ff
	rst  $38                                         ; $7888: $ff
	rst  $38                                         ; $7889: $ff
	db   $fc                                         ; $788a: $fc
	rst  JumpTable                                         ; $788b: $df
	rst  $38                                         ; $788c: $ff
	ld   d, c                                        ; $788d: $51
	dec  d                                           ; $788e: $15
	ld   b, h                                        ; $788f: $44
	ld   de, $1111                                   ; $7890: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $7893: $11 $12 $ff
	rst  $38                                         ; $7896: $ff

Jump_0a9_7897:
	rst  $38                                         ; $7897: $ff
	ld   sp, hl                                      ; $7898: $f9
	ld   sp, $ff3f                                   ; $7899: $31 $3f $ff
	rst  $38                                         ; $789c: $ff
	rst  $38                                         ; $789d: $ff
	rst  $38                                         ; $789e: $ff
	rst  $30                                         ; $789f: $f7
	rst  JumpTable                                         ; $78a0: $df
	rst  $38                                         ; $78a1: $ff
	ld   [hl], c                                     ; $78a2: $71
	inc  de                                          ; $78a3: $13
	add  [hl]                                        ; $78a4: $86
	ld   de, $1111                                   ; $78a5: $11 $11 $11
	ld   de, $fd1e                                   ; $78a8: $11 $1e $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78ab: $cf
	rst  $38                                         ; $78ac: $ff
	rst  $30                                         ; $78ad: $f7
	ld   de, $fccf                                   ; $78ae: $11 $cf $fc
	rst  $28                                         ; $78b1: $ef
	rst  $38                                         ; $78b2: $ff
	rst  $38                                         ; $78b3: $ff
	and  a                                           ; $78b4: $a7
	rst  $28                                         ; $78b5: $ef
	ld   sp, hl                                      ; $78b6: $f9
	ld   h, e                                        ; $78b7: $63
	adc  h                                           ; $78b8: $8c
	ld   h, c                                        ; $78b9: $61
	ld   de, $1111                                   ; $78ba: $11 $11 $11
	ld   de, $fd5f                                   ; $78bd: $11 $5f $fd
	rst  $38                                         ; $78c0: $ff
	rst  $38                                         ; $78c1: $ff
	pop  af                                          ; $78c2: $f1
	ld   de, $fdff                                   ; $78c3: $11 $ff $fd
	rst  $38                                         ; $78c6: $ff
	rst  $38                                         ; $78c7: $ff
	db   $fd                                         ; $78c8: $fd
	ld   e, h                                        ; $78c9: $5c
	rst  $38                                         ; $78ca: $ff
	push af                                          ; $78cb: $f5
	ld   l, d                                        ; $78cc: $6a
	rst  $38                                         ; $78cd: $ff
	ld   b, c                                        ; $78ce: $41
	ld   de, $1111                                   ; $78cf: $11 $11 $11
	ld   de, $fd2f                                   ; $78d2: $11 $2f $fd
	rst  $28                                         ; $78d5: $ef
	rst  $38                                         ; $78d6: $ff
	pop  af                                          ; $78d7: $f1
	ld   de, $f9ef                                   ; $78d8: $11 $ef $f9
	rst  $28                                         ; $78db: $ef
	rst  $38                                         ; $78dc: $ff
	db   $fc                                         ; $78dd: $fc
	ld   c, d                                        ; $78de: $4a
	rst  $38                                         ; $78df: $ff
	or   a                                           ; $78e0: $b7
	ld   c, c                                        ; $78e1: $49
	rst  $38                                         ; $78e2: $ff
	sub  c                                           ; $78e3: $91
	ld   de, $1111                                   ; $78e4: $11 $11 $11
	ld   de, $f62f                                   ; $78e7: $11 $2f $f6
	rst  $38                                         ; $78ea: $ff
	rst  $38                                         ; $78eb: $ff
	pop  hl                                          ; $78ec: $e1
	ld   de, $75ef                                   ; $78ed: $11 $ef $75
	rst  $38                                         ; $78f0: $ff
	rst  $38                                         ; $78f1: $ff
	rst  $38                                         ; $78f2: $ff
	ld   a, a                                        ; $78f3: $7f
	rst  $38                                         ; $78f4: $ff
	ld   h, h                                        ; $78f5: $64
	cp   a                                           ; $78f6: $bf
	db   $fd                                         ; $78f7: $fd
	ld   d, c                                        ; $78f8: $51
	ld   de, $1111                                   ; $78f9: $11 $11 $11
	ld   de, $fc1f                                   ; $78fc: $11 $1f $fc
	rst  $38                                         ; $78ff: $ff
	rst  $38                                         ; $7900: $ff
	push af                                          ; $7901: $f5
	ld   de, $e34f                                   ; $7902: $11 $4f $e3
	cp   a                                           ; $7905: $bf
	rst  $38                                         ; $7906: $ff
	rst  $38                                         ; $7907: $ff
	call z, $b3ff                                    ; $7908: $cc $ff $b3
	ld   a, d                                        ; $790b: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $790c: $cf
	call nz, $1111                                   ; $790d: $c4 $11 $11
	ld   de, $1a11                                   ; $7910: $11 $11 $1a
	cp   $9f                                         ; $7913: $fe $9f
	rst  $38                                         ; $7915: $ff
	db   $fc                                         ; $7916: $fc
	ld   de, $b11c                                   ; $7917: $11 $1c $b1
	rra                                              ; $791a: $1f
	rst  $38                                         ; $791b: $ff
	rst  $38                                         ; $791c: $ff
	rst  $38                                         ; $791d: $ff
	rst  $38                                         ; $791e: $ff
	db   $d3                                         ; $791f: $d3
	ld   e, d                                        ; $7920: $5a
	sub  a                                           ; $7921: $97
	ld   [hl], h                                     ; $7922: $74
	ld   de, $1111                                   ; $7923: $11 $11 $11
	ld   de, $fb15                                   ; $7926: $11 $15 $fb
	ccf                                              ; $7929: $3f
	rst  $38                                         ; $792a: $ff
	cp   $11                                         ; $792b: $fe $11
	ld   a, a                                        ; $792d: $7f
	sub  c                                           ; $792e: $91
	inc  e                                           ; $792f: $1c
	rst  $38                                         ; $7930: $ff
	rst  $38                                         ; $7931: $ff
	rst  $38                                         ; $7932: $ff
	rst  $38                                         ; $7933: $ff
	ld   hl, sp-$63                                  ; $7934: $f8 $9d
	add  d                                           ; $7936: $82
	ld   de, $1111                                   ; $7937: $11 $11 $11
	ld   de, $1611                                   ; $793a: $11 $11 $16
	db   $f4                                         ; $793d: $f4
	rra                                              ; $793e: $1f
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	ld   b, l                                        ; $7941: $45
	rst  $28                                         ; $7942: $ef
	ld   h, c                                        ; $7943: $61
	ld   e, $ff                                      ; $7944: $1e $ff
	rst  $38                                         ; $7946: $ff
	rst  $38                                         ; $7947: $ff
	rst  $38                                         ; $7948: $ff
	rst  $38                                         ; $7949: $ff
	db   $fd                                         ; $794a: $fd
	ld   [hl], d                                     ; $794b: $72
	ld   bc, $1111                                   ; $794c: $01 $11 $11
	ld   de, $1c11                                   ; $794f: $11 $11 $1c
	di                                               ; $7952: $f3
	ccf                                              ; $7953: $3f
	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	ld   l, b                                        ; $7956: $68
	rst  $38                                         ; $7957: $ff
	ld   h, c                                        ; $7958: $61
	dec  c                                           ; $7959: $0d
	rst  $38                                         ; $795a: $ff
	rst  $38                                         ; $795b: $ff
	rst  $38                                         ; $795c: $ff
	rst  $38                                         ; $795d: $ff
	rst  $38                                         ; $795e: $ff
	rst  $38                                         ; $795f: $ff
	or   h                                           ; $7960: $b4
	ld   hl, $1111                                   ; $7961: $21 $11 $11
	ld   de, $1811                                   ; $7964: $11 $11 $18
	pop  af                                          ; $7967: $f1
	rra                                              ; $7968: $1f
	rst  $38                                         ; $7969: $ff
	rst  $38                                         ; $796a: $ff
	cp   a                                           ; $796b: $bf
	rst  $38                                         ; $796c: $ff
	and  d                                           ; $796d: $a2
	inc  a                                           ; $796e: $3c
	ld   a, [$ff6b]                                  ; $796f: $fa $6b $ff
	rst  $38                                         ; $7972: $ff
	rst  $38                                         ; $7973: $ff
	rst  $38                                         ; $7974: $ff
	ret  z                                           ; $7975: $c8

	add  [hl]                                        ; $7976: $86
	ld   de, $1111                                   ; $7977: $11 $11 $11
	ld   de, $8111                                   ; $797a: $11 $11 $81
	ld   de, $ffef                                   ; $797d: $11 $ef $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7980: $cf
	rst  $38                                         ; $7981: $ff
	rst  $38                                         ; $7982: $ff
	adc  $ff                                         ; $7983: $ce $ff
	ld   [hl], d                                     ; $7985: $72
	ld   e, e                                        ; $7986: $5b
	db   $dd                                         ; $7987: $dd
	sbc  $ff                                         ; $7988: $de $ff
	db   $fc                                         ; $798a: $fc
	xor  h                                           ; $798b: $ac
	sub  l                                           ; $798c: $95
	ld   de, $1111                                   ; $798d: $11 $11 $11
	ld   de, $1121                                   ; $7990: $11 $21 $11
	inc  de                                          ; $7993: $13
	xor  l                                           ; $7994: $ad
	sub  [hl]                                        ; $7995: $96
	rst  $38                                         ; $7996: $ff
	rst  $38                                         ; $7997: $ff
	rst  $38                                         ; $7998: $ff
	rst  $38                                         ; $7999: $ff
	ei                                               ; $799a: $fb
	ld   l, c                                        ; $799b: $69
	cp   d                                           ; $799c: $ba
	xor  c                                           ; $799d: $a9
	adc  e                                           ; $799e: $8b
	db   $fd                                         ; $799f: $fd
	sbc  c                                           ; $79a0: $99
	cp   c                                           ; $79a1: $b9
	ld   h, d                                        ; $79a2: $62
	ld   de, $1111                                   ; $79a3: $11 $11 $11
	ld   de, $1111                                   ; $79a6: $11 $11 $11
	ld   h, $84                                      ; $79a9: $26 $84
	ld   a, a                                        ; $79ab: $7f
	rst  $38                                         ; $79ac: $ff
	rst  $38                                         ; $79ad: $ff
	rst  $38                                         ; $79ae: $ff
	rst  $38                                         ; $79af: $ff
	jp   z, $a9cb                                    ; $79b0: $ca $cb $a9

	halt                                             ; $79b3: $76
	xor  [hl]                                        ; $79b4: $ae
	ret  c                                           ; $79b5: $d8

	sbc  d                                           ; $79b6: $9a
	sub  a                                           ; $79b7: $97
	ld   sp, $1111                                   ; $79b8: $31 $11 $11
	ld   de, $1111                                   ; $79bb: $11 $11 $11
	dec  d                                           ; $79be: $15
	sbc  d                                           ; $79bf: $9a
	ld   l, l                                        ; $79c0: $6d
	rst  $38                                         ; $79c1: $ff
	rst  $38                                         ; $79c2: $ff
	rst  $38                                         ; $79c3: $ff
	rst  $38                                         ; $79c4: $ff
	ld   sp, hl                                      ; $79c5: $f9
	adc  c                                           ; $79c6: $89
	add  l                                           ; $79c7: $85
	ld   d, a                                        ; $79c8: $57
	xor  l                                           ; $79c9: $ad
	db   $ed                                         ; $79ca: $ed
	adc  $e9                                         ; $79cb: $ce $e9
	ld   b, c                                        ; $79cd: $41
	ld   de, $1111                                   ; $79ce: $11 $11 $11
	ld   de, $1911                                   ; $79d1: $11 $11 $19
	rst  $38                                         ; $79d4: $ff
	rst  $38                                         ; $79d5: $ff
	rst  $38                                         ; $79d6: $ff
	rst  $38                                         ; $79d7: $ff
	rst  $38                                         ; $79d8: $ff
	rst  $38                                         ; $79d9: $ff
	or   c                                           ; $79da: $b1
	inc  d                                           ; $79db: $14
	inc  sp                                          ; $79dc: $33
	ld   e, c                                        ; $79dd: $59
	rst  $38                                         ; $79de: $ff
	rst  $38                                         ; $79df: $ff
	rst  $38                                         ; $79e0: $ff
	ei                                               ; $79e1: $fb
	ld   sp, $1111                                   ; $79e2: $31 $11 $11
	ld   de, $1111                                   ; $79e5: $11 $11 $11
	sbc  a                                           ; $79e8: $9f
	rst  $38                                         ; $79e9: $ff
	rst  $38                                         ; $79ea: $ff
	rst  $38                                         ; $79eb: $ff
	rst  $38                                         ; $79ec: $ff
	cp   $c4                                         ; $79ed: $fe $c4
	ld   de, $4714                                   ; $79ef: $11 $14 $47
	rst  JumpTable                                         ; $79f2: $df
	rst  $38                                         ; $79f3: $ff
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	pop  de                                          ; $79f6: $d1
	ld   de, $1111                                   ; $79f7: $11 $11 $11
	ld   de, $1f11                                   ; $79fa: $11 $11 $1f
	rst  $38                                         ; $79fd: $ff
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	rst  $38                                         ; $7a00: $ff
	push de                                          ; $7a01: $d5
	ld   b, h                                        ; $7a02: $44
	ld   de, $8c11                                   ; $7a03: $11 $11 $8c
	rst  $38                                         ; $7a06: $ff
	rst  $38                                         ; $7a07: $ff
	rst  $38                                         ; $7a08: $ff
	rst  $38                                         ; $7a09: $ff
	push af                                          ; $7a0a: $f5
	ld   de, $1111                                   ; $7a0b: $11 $11 $11
	ld   de, $1f11                                   ; $7a0e: $11 $11 $1f
	rst  $38                                         ; $7a11: $ff
	rst  $38                                         ; $7a12: $ff
	rst  $38                                         ; $7a13: $ff
	rst  $38                                         ; $7a14: $ff
	and  c                                           ; $7a15: $a1
	ld   de, $1111                                   ; $7a16: $11 $11 $11
	cp   l                                           ; $7a19: $bd
	rst  $38                                         ; $7a1a: $ff
	rst  $38                                         ; $7a1b: $ff
	rst  $38                                         ; $7a1c: $ff
	rst  $38                                         ; $7a1d: $ff
	or   $11                                         ; $7a1e: $f6 $11
	ld   de, $1111                                   ; $7a20: $11 $11 $11
	ld   de, $ff1c                                   ; $7a23: $11 $1c $ff
	rst  $38                                         ; $7a26: $ff
	rst  $38                                         ; $7a27: $ff
	rst  $38                                         ; $7a28: $ff
	add  c                                           ; $7a29: $81
	ld   de, $1111                                   ; $7a2a: $11 $11 $11
	cp   a                                           ; $7a2d: $bf
	rst  $38                                         ; $7a2e: $ff
	rst  $38                                         ; $7a2f: $ff
	rst  $38                                         ; $7a30: $ff
	rst  $38                                         ; $7a31: $ff
	or   $11                                         ; $7a32: $f6 $11
	ld   de, $1111                                   ; $7a34: $11 $11 $11
	inc  d                                           ; $7a37: $14
	add  hl, de                                      ; $7a38: $19
	rst  $38                                         ; $7a39: $ff
	rst  $38                                         ; $7a3a: $ff
	rst  $38                                         ; $7a3b: $ff
	rst  $38                                         ; $7a3c: $ff
	ld   d, c                                        ; $7a3d: $51
	ld   de, $1111                                   ; $7a3e: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a41: $cf
	rst  $38                                         ; $7a42: $ff
	rst  $38                                         ; $7a43: $ff
	rst  $38                                         ; $7a44: $ff
	rst  $38                                         ; $7a45: $ff
	push af                                          ; $7a46: $f5
	ld   de, $1111                                   ; $7a47: $11 $11 $11
	ld   de, $1716                                   ; $7a4a: $11 $16 $17
	rst  $38                                         ; $7a4d: $ff
	rst  $38                                         ; $7a4e: $ff
	rst  $38                                         ; $7a4f: $ff
	rst  $38                                         ; $7a50: $ff
	ld   de, $1111                                   ; $7a51: $11 $11 $11
	ld   de, $ffef                                   ; $7a54: $11 $ef $ff
	rst  $38                                         ; $7a57: $ff
	rst  $38                                         ; $7a58: $ff
	rst  $38                                         ; $7a59: $ff
	push af                                          ; $7a5a: $f5
	ld   de, $1111                                   ; $7a5b: $11 $11 $11
	ld   de, $371a                                   ; $7a5e: $11 $1a $37
	rst  $38                                         ; $7a61: $ff
	rst  $38                                         ; $7a62: $ff
	rst  $38                                         ; $7a63: $ff
	rst  $38                                         ; $7a64: $ff
	ld   de, $1111                                   ; $7a65: $11 $11 $11
	dec  d                                           ; $7a68: $15
	rst  $38                                         ; $7a69: $ff
	rst  $38                                         ; $7a6a: $ff
	rst  $38                                         ; $7a6b: $ff
	rst  $38                                         ; $7a6c: $ff
	rst  $38                                         ; $7a6d: $ff
	db   $f4                                         ; $7a6e: $f4
	ld   de, $1111                                   ; $7a6f: $11 $11 $11
	ld   de, $581b                                   ; $7a72: $11 $1b $58
	rst  $38                                         ; $7a75: $ff
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	ld   de, $1111                                   ; $7a79: $11 $11 $11
	add  hl, de                                      ; $7a7c: $19
	rst  $38                                         ; $7a7d: $ff
	rst  $38                                         ; $7a7e: $ff
	rst  $38                                         ; $7a7f: $ff
	rst  $38                                         ; $7a80: $ff
	rst  $38                                         ; $7a81: $ff
	jp   nz, $1111                                   ; $7a82: $c2 $11 $11

	ld   de, $1e11                                   ; $7a85: $11 $11 $1e
	adc  b                                           ; $7a88: $88
	rst  $38                                         ; $7a89: $ff
	rst  $38                                         ; $7a8a: $ff
	rst  $38                                         ; $7a8b: $ff
	cp   $11                                         ; $7a8c: $fe $11
	ld   de, $1b11                                   ; $7a8e: $11 $11 $1b
	rst  $38                                         ; $7a91: $ff
	rst  $38                                         ; $7a92: $ff
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	or   d                                           ; $7a96: $b2
	ld   de, $1111                                   ; $7a97: $11 $11 $11
	ld   de, $981d                                   ; $7a9a: $11 $1d $98
	rst  $38                                         ; $7a9d: $ff
	rst  $38                                         ; $7a9e: $ff
	rst  $38                                         ; $7a9f: $ff
	cp   $11                                         ; $7aa0: $fe $11
	ld   de, $4d11                                   ; $7aa2: $11 $11 $4d
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	and  e                                           ; $7aaa: $a3
	ld   de, $1111                                   ; $7aab: $11 $11 $11
	ld   de, $c61a                                   ; $7aae: $11 $1a $c6
	rst  $38                                         ; $7ab1: $ff
	rst  $38                                         ; $7ab2: $ff
	rst  $38                                         ; $7ab3: $ff
	db   $fd                                         ; $7ab4: $fd
	ld   hl, $1111                                   ; $7ab5: $21 $11 $11
	inc  e                                           ; $7ab8: $1c
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	rst  $38                                         ; $7abb: $ff
	rst  $38                                         ; $7abc: $ff
	rst  $38                                         ; $7abd: $ff
	db   $d3                                         ; $7abe: $d3
	ld   de, $1111                                   ; $7abf: $11 $11 $11
	ld   de, $c714                                   ; $7ac2: $11 $14 $c7
	rst  $28                                         ; $7ac5: $ef
	rst  $38                                         ; $7ac6: $ff
	rst  $38                                         ; $7ac7: $ff
	rst  $38                                         ; $7ac8: $ff
	ld   b, c                                        ; $7ac9: $41
	ld   de, $1911                                   ; $7aca: $11 $11 $19
	rst  $28                                         ; $7acd: $ef
	rst  $38                                         ; $7ace: $ff
	rst  $38                                         ; $7acf: $ff
	rst  $38                                         ; $7ad0: $ff
	rst  $38                                         ; $7ad1: $ff
	push de                                          ; $7ad2: $d5
	ld   de, $1111                                   ; $7ad3: $11 $11 $11
	ld   de, $e911                                   ; $7ad6: $11 $11 $e9
	xor  a                                           ; $7ad9: $af
	rst  $38                                         ; $7ada: $ff
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	sub  c                                           ; $7add: $91
	ld   de, $1711                                   ; $7ade: $11 $11 $17
	rst  $28                                         ; $7ae1: $ef
	rst  $38                                         ; $7ae2: $ff
	rst  $38                                         ; $7ae3: $ff
	rst  $38                                         ; $7ae4: $ff
	rst  $38                                         ; $7ae5: $ff
	ld   hl, sp+$11                                  ; $7ae6: $f8 $11
	ld   de, $1111                                   ; $7ae8: $11 $11 $11
	ld   de, $af99                                   ; $7aeb: $11 $99 $af
	rst  $38                                         ; $7aee: $ff
	rst  $38                                         ; $7aef: $ff
	rst  $38                                         ; $7af0: $ff
	pop  de                                          ; $7af1: $d1
	ld   de, $1411                                   ; $7af2: $11 $11 $14
	xor  a                                           ; $7af5: $af
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	rst  $38                                         ; $7af8: $ff
	rst  $38                                         ; $7af9: $ff
	ei                                               ; $7afa: $fb
	ld   d, c                                        ; $7afb: $51
	ld   de, $1111                                   ; $7afc: $11 $11 $11
	ld   de, $691d                                   ; $7aff: $11 $1d $69
	rst  $38                                         ; $7b02: $ff
	rst  $38                                         ; $7b03: $ff
	rst  $38                                         ; $7b04: $ff
	ld   sp, hl                                      ; $7b05: $f9
	ld   de, $1111                                   ; $7b06: $11 $11 $11
	ld   e, d                                        ; $7b09: $5a
	rst  $38                                         ; $7b0a: $ff
	rst  $38                                         ; $7b0b: $ff
	rst  $38                                         ; $7b0c: $ff
	rst  $38                                         ; $7b0d: $ff
	rst  $38                                         ; $7b0e: $ff
	or   d                                           ; $7b0f: $b2
	ld   de, $1111                                   ; $7b10: $11 $11 $11
	ld   de, $7216                                   ; $7b13: $11 $16 $72
	rst  $38                                         ; $7b16: $ff
	rst  $38                                         ; $7b17: $ff
	rst  $38                                         ; $7b18: $ff
	rst  $38                                         ; $7b19: $ff
	ld   d, c                                        ; $7b1a: $51
	ld   b, c                                        ; $7b1b: $41
	ld   de, $af17                                   ; $7b1c: $11 $17 $af
	rst  $38                                         ; $7b1f: $ff
	rst  $38                                         ; $7b20: $ff
	rst  $38                                         ; $7b21: $ff
	rst  $38                                         ; $7b22: $ff
	ld   sp, hl                                      ; $7b23: $f9
	ld   sp, $1111                                   ; $7b24: $31 $11 $11
	ld   de, $6611                                   ; $7b27: $11 $11 $66
	ld   e, $ff                                      ; $7b2a: $1e $ff
	rst  $38                                         ; $7b2c: $ff
	rst  $38                                         ; $7b2d: $ff
	rst  $30                                         ; $7b2e: $f7
	ld   b, [hl]                                     ; $7b2f: $46
	ld   de, $5911                                   ; $7b30: $11 $11 $59
	cp   $ff                                         ; $7b33: $fe $ff
	rst  $38                                         ; $7b35: $ff
	rst  $38                                         ; $7b36: $ff
	rst  $38                                         ; $7b37: $ff
	push bc                                          ; $7b38: $c5
	ld   de, $1111                                   ; $7b39: $11 $11 $11
	ld   de, $4111                                   ; $7b3c: $11 $11 $41
	ld   a, a                                        ; $7b3f: $7f
	rst  $38                                         ; $7b40: $ff
	rst  $38                                         ; $7b41: $ff
	rst  $38                                         ; $7b42: $ff
	db   $db                                         ; $7b43: $db
	and  c                                           ; $7b44: $a1
	ld   de, $2911                                   ; $7b45: $11 $11 $29
	xor  [hl]                                        ; $7b48: $ae
	rst  $38                                         ; $7b49: $ff
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	rst  $38                                         ; $7b4c: $ff
	or   h                                           ; $7b4d: $b4
	ld   de, $1111                                   ; $7b4e: $11 $11 $11
	ld   de, $1111                                   ; $7b51: $11 $11 $11
	rst  $38                                         ; $7b54: $ff
	rst  $38                                         ; $7b55: $ff
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	rst  $38                                         ; $7b58: $ff
	and  l                                           ; $7b59: $a5
	ld   de, $2311                                   ; $7b5a: $11 $11 $23
	ld   c, a                                        ; $7b5d: $4f
	rst  $38                                         ; $7b5e: $ff
	rst  $38                                         ; $7b5f: $ff
	rst  $38                                         ; $7b60: $ff
	rst  $38                                         ; $7b61: $ff
	ret  c                                           ; $7b62: $d8

	ld   de, $1111                                   ; $7b63: $11 $11 $11
	ld   de, $1411                                   ; $7b66: $11 $11 $14
	rst  $38                                         ; $7b69: $ff
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	db   $ec                                         ; $7b6e: $ec
	ld   [hl-], a                                    ; $7b6f: $32
	ld   de, $2911                                   ; $7b70: $11 $11 $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b73: $cf
	rst  $38                                         ; $7b74: $ff
	rst  $38                                         ; $7b75: $ff
	rst  $38                                         ; $7b76: $ff
	db   $fc                                         ; $7b77: $fc
	ld   hl, $1111                                   ; $7b78: $21 $11 $11
	ld   de, $1111                                   ; $7b7b: $11 $11 $11
	cp   $ff                                         ; $7b7e: $fe $ff
	rst  $38                                         ; $7b80: $ff
	rst  $38                                         ; $7b81: $ff
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	db   $db                                         ; $7b84: $db
	ld   de, $1111                                   ; $7b85: $11 $11 $11
	ld   b, a                                        ; $7b88: $47
	xor  a                                           ; $7b89: $af
	rst  $38                                         ; $7b8a: $ff
	rst  $38                                         ; $7b8b: $ff
	cp   $94                                         ; $7b8c: $fe $94
	ld   de, $1111                                   ; $7b8e: $11 $11 $11
	ld   de, $1111                                   ; $7b91: $11 $11 $11
	rst  JumpTable                                         ; $7b94: $df
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	rst  $38                                         ; $7b97: $ff
	rst  $38                                         ; $7b98: $ff
	rst  $38                                         ; $7b99: $ff
	rst  ToBoot                                         ; $7b9a: $c7
	ld   de, $1111                                   ; $7b9b: $11 $11 $11
	ld   l, e                                        ; $7b9e: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b9f: $cf
	rst  $38                                         ; $7ba0: $ff
	ld   sp, hl                                      ; $7ba1: $f9
	ld   h, c                                        ; $7ba2: $61
	ld   de, $1111                                   ; $7ba3: $11 $11 $11
	ld   de, $2613                                   ; $7ba6: $11 $13 $26
	rst  JumpTable                                         ; $7ba9: $df
	rst  $38                                         ; $7baa: $ff
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	rst  $38                                         ; $7bad: $ff
	cp   $e9                                         ; $7bae: $fe $e9
	ld   a, d                                        ; $7bb0: $7a
	cp   l                                           ; $7bb1: $bd
	sbc  $ff                                         ; $7bb2: $de $ff
	rst  $38                                         ; $7bb4: $ff
	xor  $a6                                         ; $7bb5: $ee $a6
	ld   hl, $1111                                   ; $7bb7: $21 $11 $11
	ld   de, $1111                                   ; $7bba: $11 $11 $11
	ld   b, c                                        ; $7bbd: $41
	ld   e, [hl]                                     ; $7bbe: $5e
	rst  $38                                         ; $7bbf: $ff
	rst  $38                                         ; $7bc0: $ff
	rst  $38                                         ; $7bc1: $ff
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	rst  $38                                         ; $7bc4: $ff
	set  3, [hl]                                     ; $7bc5: $cb $de
	cp   $ff                                         ; $7bc7: $fe $ff
	rst  $38                                         ; $7bc9: $ff
	db   $fd                                         ; $7bca: $fd
	cp   c                                           ; $7bcb: $b9
	ld   h, d                                        ; $7bcc: $62
	ld   de, $1111                                   ; $7bcd: $11 $11 $11
	ld   de, $1111                                   ; $7bd0: $11 $11 $11
	ld   de, $ff7c                                   ; $7bd3: $11 $7c $ff
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	rst  $38                                         ; $7bd8: $ff
	rst  $38                                         ; $7bd9: $ff
	rst  $38                                         ; $7bda: $ff
	rst  $38                                         ; $7bdb: $ff
	rst  $38                                         ; $7bdc: $ff
	rst  $38                                         ; $7bdd: $ff
	rst  $38                                         ; $7bde: $ff
	db   $ec                                         ; $7bdf: $ec
	cp   c                                           ; $7be0: $b9
	sub  a                                           ; $7be1: $97
	ld   b, d                                        ; $7be2: $42
	ld   bc, $1111                                   ; $7be3: $01 $11 $11
	ld   de, $1111                                   ; $7be6: $11 $11 $11
	ld   de, $8b15                                   ; $7be9: $11 $15 $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bec: $cf
	rst  $38                                         ; $7bed: $ff
	rst  $38                                         ; $7bee: $ff
	rst  $38                                         ; $7bef: $ff
	rst  $38                                         ; $7bf0: $ff
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	xor  $cb                                         ; $7bf4: $ee $cb
	xor  c                                           ; $7bf6: $a9
	add  a                                           ; $7bf7: $87
	halt                                             ; $7bf8: $76
	ld   d, h                                        ; $7bf9: $54
	ld   [hl+], a                                    ; $7bfa: $22
	ld   de, $1111                                   ; $7bfb: $11 $11 $11
	ld   de, $1111                                   ; $7bfe: $11 $11 $11
	inc  de                                          ; $7c01: $13
	ld   e, b                                        ; $7c02: $58
	adc  $ff                                         ; $7c03: $ce $ff
	rst  $38                                         ; $7c05: $ff
	rst  $38                                         ; $7c06: $ff
	rst  $38                                         ; $7c07: $ff
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	cp   $dd                                         ; $7c0a: $fe $dd
	res  5, c                                        ; $7c0c: $cb $a9
	sbc  d                                           ; $7c0e: $9a
	sbc  c                                           ; $7c0f: $99
	halt                                             ; $7c10: $76
	ld   b, e                                        ; $7c11: $43
	ld   de, $1111                                   ; $7c12: $11 $11 $11
	ld   de, $1111                                   ; $7c15: $11 $11 $11
	ld   de, $9b46                                   ; $7c18: $11 $46 $9b
	rst  $38                                         ; $7c1b: $ff
	rst  $38                                         ; $7c1c: $ff
	rst  $38                                         ; $7c1d: $ff
	rst  $38                                         ; $7c1e: $ff
	rst  $38                                         ; $7c1f: $ff
	rst  $38                                         ; $7c20: $ff
	rst  $38                                         ; $7c21: $ff
	rst  $38                                         ; $7c22: $ff
	db   $fd                                         ; $7c23: $fd
	call c, $b9ba                                    ; $7c24: $dc $ba $b9
	add  a                                           ; $7c27: $87
	ld   d, h                                        ; $7c28: $54
	ld   hl, $1111                                   ; $7c29: $21 $11 $11
	ld   de, $1111                                   ; $7c2c: $11 $11 $11
	ld   de, $5813                                   ; $7c2f: $11 $13 $58
	cp   l                                           ; $7c32: $bd
	rst  $38                                         ; $7c33: $ff
	rst  $38                                         ; $7c34: $ff
	rst  $38                                         ; $7c35: $ff
	rst  $38                                         ; $7c36: $ff
	rst  $38                                         ; $7c37: $ff
	rst  $38                                         ; $7c38: $ff
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	db   $fd                                         ; $7c3b: $fd
	db   $db                                         ; $7c3c: $db
	cp   d                                           ; $7c3d: $ba
	sbc  c                                           ; $7c3e: $99
	ld   [hl], l                                     ; $7c3f: $75
	ld   sp, $1111                                   ; $7c40: $31 $11 $11
	ld   de, $1111                                   ; $7c43: $11 $11 $11
	ld   de, $2411                                   ; $7c46: $11 $11 $24
	ld   a, d                                        ; $7c49: $7a
	rst  JumpTable                                         ; $7c4a: $df
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	rst  $38                                         ; $7c4d: $ff
	rst  $38                                         ; $7c4e: $ff
	rst  $38                                         ; $7c4f: $ff
	rst  $38                                         ; $7c50: $ff
	rst  $38                                         ; $7c51: $ff
	rst  $38                                         ; $7c52: $ff
	db   $dd                                         ; $7c53: $dd
	res  5, c                                        ; $7c54: $cb $a9
	add  [hl]                                        ; $7c56: $86
	ld   d, e                                        ; $7c57: $53
	ld   de, $1111                                   ; $7c58: $11 $11 $11
	ld   de, $1111                                   ; $7c5b: $11 $11 $11
	ld   de, $3611                                   ; $7c5e: $11 $11 $36
	xor  l                                           ; $7c61: $ad
	rst  $38                                         ; $7c62: $ff
	rst  $38                                         ; $7c63: $ff
	rst  $38                                         ; $7c64: $ff
	rst  $38                                         ; $7c65: $ff
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	rst  $38                                         ; $7c68: $ff
	rst  $38                                         ; $7c69: $ff
	cp   $db                                         ; $7c6a: $fe $db
	cp   e                                           ; $7c6c: $bb
	xor  c                                           ; $7c6d: $a9
	ld   [hl], l                                     ; $7c6e: $75
	ld   sp, $1111                                   ; $7c6f: $31 $11 $11
	ld   de, $1111                                   ; $7c72: $11 $11 $11
	ld   de, $1311                                   ; $7c75: $11 $11 $13
	ld   l, c                                        ; $7c78: $69
	rst  JumpTable                                         ; $7c79: $df
	rst  $38                                         ; $7c7a: $ff
	rst  $38                                         ; $7c7b: $ff
	rst  $38                                         ; $7c7c: $ff
	rst  $38                                         ; $7c7d: $ff
	rst  $38                                         ; $7c7e: $ff
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	rst  $38                                         ; $7c81: $ff
	xor  $cc                                         ; $7c82: $ee $cc
	cp   d                                           ; $7c84: $ba
	add  a                                           ; $7c85: $87
	ld   d, h                                        ; $7c86: $54
	ld   hl, $1111                                   ; $7c87: $21 $11 $11
	ld   de, $1111                                   ; $7c8a: $11 $11 $11
	ld   de, $2511                                   ; $7c8d: $11 $11 $25
	sbc  h                                           ; $7c90: $9c
	rst  $28                                         ; $7c91: $ef
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	rst  $38                                         ; $7c94: $ff
	rst  $38                                         ; $7c95: $ff
	rst  $38                                         ; $7c96: $ff
	rst  $38                                         ; $7c97: $ff
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	db   $ec                                         ; $7c9a: $ec
	cp   e                                           ; $7c9b: $bb
	xor  c                                           ; $7c9c: $a9
	add  a                                           ; $7c9d: $87
	ld   d, h                                        ; $7c9e: $54
	ld   hl, $1111                                   ; $7c9f: $21 $11 $11
	ld   de, $1111                                   ; $7ca2: $11 $11 $11
	ld   de, $3511                                   ; $7ca5: $11 $11 $35
	sbc  e                                           ; $7ca8: $9b
	rst  $38                                         ; $7ca9: $ff
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	rst  $38                                         ; $7caf: $ff
	rst  $38                                         ; $7cb0: $ff
	rst  $38                                         ; $7cb1: $ff
	db   $ec                                         ; $7cb2: $ec
	call z, $98aa                                    ; $7cb3: $cc $aa $98
	ld   [hl], l                                     ; $7cb6: $75
	ld   sp, $1111                                   ; $7cb7: $31 $11 $11
	ld   de, $1111                                   ; $7cba: $11 $11 $11
	ld   de, $3611                                   ; $7cbd: $11 $11 $36
	sbc  h                                           ; $7cc0: $9c
	rst  $38                                         ; $7cc1: $ff
	rst  $38                                         ; $7cc2: $ff
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	rst  $38                                         ; $7cc5: $ff
	rst  $38                                         ; $7cc6: $ff
	rst  $38                                         ; $7cc7: $ff
	rst  $38                                         ; $7cc8: $ff
	rst  $38                                         ; $7cc9: $ff
	db   $dd                                         ; $7cca: $dd
	cp   e                                           ; $7ccb: $bb
	cp   d                                           ; $7ccc: $ba
	sbc  c                                           ; $7ccd: $99
	ld   [hl], l                                     ; $7cce: $75
	ld   sp, $1111                                   ; $7ccf: $31 $11 $11
	ld   de, $1111                                   ; $7cd2: $11 $11 $11
	ld   de, $3611                                   ; $7cd5: $11 $11 $36
	sbc  e                                           ; $7cd8: $9b
	rst  $38                                         ; $7cd9: $ff
	rst  $38                                         ; $7cda: $ff
	rst  $38                                         ; $7cdb: $ff
	rst  $38                                         ; $7cdc: $ff
	rst  $38                                         ; $7cdd: $ff
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	cp   $cb                                         ; $7ce2: $fe $cb
	xor  d                                           ; $7ce4: $aa
	sbc  b                                           ; $7ce5: $98
	ld   [hl], l                                     ; $7ce6: $75
	ld   b, d                                        ; $7ce7: $42
	ld   de, $1111                                   ; $7ce8: $11 $11 $11
	ld   de, $1111                                   ; $7ceb: $11 $11 $11
	ld   de, $9b46                                   ; $7cee: $11 $46 $9b
	rst  $28                                         ; $7cf1: $ef
	rst  $38                                         ; $7cf2: $ff
	rst  $38                                         ; $7cf3: $ff
	rst  $38                                         ; $7cf4: $ff
	rst  $38                                         ; $7cf5: $ff
	rst  $38                                         ; $7cf6: $ff
	rst  $38                                         ; $7cf7: $ff
	rst  $38                                         ; $7cf8: $ff
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	db   $ec                                         ; $7cfb: $ec
	cp   e                                           ; $7cfc: $bb
	xor  c                                           ; $7cfd: $a9
	ld   [hl], l                                     ; $7cfe: $75
	ld   b, d                                        ; $7cff: $42
	ld   de, $1111                                   ; $7d00: $11 $11 $11
	ld   de, $1111                                   ; $7d03: $11 $11 $11
	ld   de, $9b25                                   ; $7d06: $11 $25 $9b
	xor  $ff                                         ; $7d09: $ee $ff
	rst  $38                                         ; $7d0b: $ff
	rst  $38                                         ; $7d0c: $ff
	rst  $38                                         ; $7d0d: $ff
	rst  $38                                         ; $7d0e: $ff
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	db   $fd                                         ; $7d13: $fd
	cp   d                                           ; $7d14: $ba
	sbc  c                                           ; $7d15: $99
	halt                                             ; $7d16: $76
	ld   d, e                                        ; $7d17: $53
	ld   hl, $1111                                   ; $7d18: $21 $11 $11
	ld   de, $1111                                   ; $7d1b: $11 $11 $11
	ld   de, $7914                                   ; $7d1e: $11 $14 $79
	rst  JumpTable                                         ; $7d21: $df
	rst  $38                                         ; $7d22: $ff
	rst  $38                                         ; $7d23: $ff
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	rst  $38                                         ; $7d26: $ff
	rst  $38                                         ; $7d27: $ff
	rst  $38                                         ; $7d28: $ff
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	rst  $38                                         ; $7d2b: $ff
	call c, Call_0a9_76a8                            ; $7d2c: $dc $a8 $76
	ld   h, h                                        ; $7d2f: $64
	ld   [hl-], a                                    ; $7d30: $32
	ld   de, $1111                                   ; $7d31: $11 $11 $11
	ld   de, $1111                                   ; $7d34: $11 $11 $11
	ld   de, $be48                                   ; $7d37: $11 $48 $be
	rst  $38                                         ; $7d3a: $ff
	rst  $38                                         ; $7d3b: $ff
	rst  $38                                         ; $7d3c: $ff
	rst  $38                                         ; $7d3d: $ff
	rst  $38                                         ; $7d3e: $ff
	rst  $38                                         ; $7d3f: $ff
	rst  $38                                         ; $7d40: $ff
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	cp   $b9                                         ; $7d44: $fe $b9
	ld   [hl], a                                     ; $7d46: $77
	halt                                             ; $7d47: $76
	ld   h, h                                        ; $7d48: $64
	ld   hl, $1111                                   ; $7d49: $21 $11 $11
	ld   de, $1111                                   ; $7d4c: $11 $11 $11
	ld   de, $ab15                                   ; $7d4f: $11 $15 $ab
	rst  $28                                         ; $7d52: $ef
	rst  $38                                         ; $7d53: $ff
	cp   $ff                                         ; $7d54: $fe $ff
	rst  $38                                         ; $7d56: $ff
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	rst  $38                                         ; $7d5c: $ff
	ld   [$7987], a                                  ; $7d5d: $ea $87 $79
	halt                                             ; $7d60: $76
	ld   b, d                                        ; $7d61: $42
	ld   hl, $1111                                   ; $7d62: $21 $11 $11
	ld   de, $1111                                   ; $7d65: $11 $11 $11
	ld   de, $fe9d                                   ; $7d68: $11 $9d $fe
	rst  $38                                         ; $7d6b: $ff
	rst  $38                                         ; $7d6c: $ff
	db   $ec                                         ; $7d6d: $ec
	xor  $ff                                         ; $7d6e: $ee $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	rst  $38                                         ; $7d72: $ff
	rst  $38                                         ; $7d73: $ff
	rst  $38                                         ; $7d74: $ff
	db   $dd                                         ; $7d75: $dd
	rst  ToBoot                                         ; $7d76: $c7
	add  a                                           ; $7d77: $87
	ld   a, d                                        ; $7d78: $7a
	add  a                                           ; $7d79: $87
	ld   sp, $1111                                   ; $7d7a: $31 $11 $11
	ld   de, $1111                                   ; $7d7d: $11 $11 $11
	ld   de, $df17                                   ; $7d80: $11 $17 $df
	db   $fd                                         ; $7d83: $fd
	sbc  $df                                         ; $7d84: $de $df
	cp   $ff                                         ; $7d86: $fe $ff
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	rst  $38                                         ; $7d8a: $ff
	rst  $38                                         ; $7d8b: $ff
	cp   $dd                                         ; $7d8c: $fe $dd
	call Call_0a9_77c9                               ; $7d8e: $cd $c9 $77
	adc  b                                           ; $7d91: $88
	ld   d, d                                        ; $7d92: $52
	ld   de, $1111                                   ; $7d93: $11 $11 $11
	ld   de, $1111                                   ; $7d96: $11 $11 $11
	ld   de, $ff5d                                   ; $7d99: $11 $5d $ff
	cp   l                                           ; $7d9c: $bd
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  JumpTable                                         ; $7d9f: $df
	rst  $38                                         ; $7da0: $ff
	rst  $38                                         ; $7da1: $ff
	rst  $38                                         ; $7da2: $ff
	rst  $38                                         ; $7da3: $ff
	rst  $38                                         ; $7da4: $ff
	db   $eb                                         ; $7da5: $eb
	sbc  $dc                                         ; $7da6: $de $dc
	halt                                             ; $7da8: $76
	ld   h, a                                        ; $7da9: $67
	add  [hl]                                        ; $7daa: $86
	ld   sp, $1111                                   ; $7dab: $31 $11 $11
	ld   de, $1111                                   ; $7dae: $11 $11 $11
	ld   de, $9d13                                   ; $7db1: $11 $13 $9d
	rst  JumpTable                                         ; $7db4: $df
	sbc  $fe                                         ; $7db5: $de $fe
	rst  $38                                         ; $7db7: $ff
	rst  $28                                         ; $7db8: $ef
	rst  $38                                         ; $7db9: $ff
	rst  $38                                         ; $7dba: $ff
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	rst  $38                                         ; $7dbd: $ff
	jp   c, $ddcc                                    ; $7dbe: $da $cc $dd

	add  a                                           ; $7dc1: $87
	ld   d, [hl]                                     ; $7dc2: $56
	ld   [hl], h                                     ; $7dc3: $74
	ld   de, $1111                                   ; $7dc4: $11 $11 $11
	ld   de, $1111                                   ; $7dc7: $11 $11 $11
	ld   de, $da24                                   ; $7dca: $11 $24 $da
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dcd: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dce: $cf
	db   $fc                                         ; $7dcf: $fc
	ei                                               ; $7dd0: $fb
	rst  $38                                         ; $7dd1: $ff
	rst  $38                                         ; $7dd2: $ff
	rst  $38                                         ; $7dd3: $ff
	rst  $38                                         ; $7dd4: $ff
	rst  $38                                         ; $7dd5: $ff
	call c, $fdbd                                    ; $7dd6: $dc $bd $fd
	xor  b                                           ; $7dd9: $a8
	ld   a, b                                        ; $7dda: $78
	sub  a                                           ; $7ddb: $97
	ld   d, d                                        ; $7ddc: $52
	ld   de, $1111                                   ; $7ddd: $11 $11 $11
	ld   de, $1111                                   ; $7de0: $11 $11 $11
	ld   de, $9f12                                   ; $7de3: $11 $12 $9f
	xor  $fd                                         ; $7de6: $ee $fd
	rst  $38                                         ; $7de8: $ff
	rst  $38                                         ; $7de9: $ff
	call $ffff                                       ; $7dea: $cd $ff $ff
	rst  $38                                         ; $7ded: $ff
	rst  $38                                         ; $7dee: $ff
	cp   $bc                                         ; $7def: $fe $bc
	call c, Call_0a9_77b9                            ; $7df1: $dc $b9 $77
	ld   [hl], a                                     ; $7df4: $77
	inc  [hl]                                        ; $7df5: $34
	ld   b, c                                        ; $7df6: $41
	ld   de, $1111                                   ; $7df7: $11 $11 $11
	ld   de, $1111                                   ; $7dfa: $11 $11 $11
	inc  d                                           ; $7dfd: $14
	sbc  [hl]                                        ; $7dfe: $9e
	cp   h                                           ; $7dff: $bc
	rst  $38                                         ; $7e00: $ff
	rst  $38                                         ; $7e01: $ff
	db   $ed                                         ; $7e02: $ed
	rst  $28                                         ; $7e03: $ef
	rst  $38                                         ; $7e04: $ff
	rst  $38                                         ; $7e05: $ff
	rst  $38                                         ; $7e06: $ff
	rst  $38                                         ; $7e07: $ff
	rst  $38                                         ; $7e08: $ff
	xor  h                                           ; $7e09: $ac
	cp   $b7                                         ; $7e0a: $fe $b7
	ld   l, b                                        ; $7e0c: $68
	ld   h, a                                        ; $7e0d: $67
	add  d                                           ; $7e0e: $82
	ld   de, $1111                                   ; $7e0f: $11 $11 $11
	ld   de, $1111                                   ; $7e12: $11 $11 $11
	ld   de, $6b13                                   ; $7e15: $11 $13 $6b
	cp   $ff                                         ; $7e18: $fe $ff
	rst  $38                                         ; $7e1a: $ff
	cp   $ee                                         ; $7e1b: $fe $ee
	rst  $38                                         ; $7e1d: $ff
	rst  $38                                         ; $7e1e: $ff
	rst  $38                                         ; $7e1f: $ff
	cp   $df                                         ; $7e20: $fe $df
	xor  $e9                                         ; $7e22: $ee $e9
	and  a                                           ; $7e24: $a7
	ld   l, b                                        ; $7e25: $68
	ld   h, [hl]                                     ; $7e26: $66
	add  e                                           ; $7e27: $83
	ld   de, $1111                                   ; $7e28: $11 $11 $11
	ld   de, $2114                                   ; $7e2b: $11 $14 $21
	ld   de, $3b11                                   ; $7e2e: $11 $11 $3b
	cp   $ff                                         ; $7e31: $fe $ff
	rst  $38                                         ; $7e33: $ff
	jp   z, $ffff                                    ; $7e34: $ca $ff $ff

	rst  $38                                         ; $7e37: $ff
	rst  $38                                         ; $7e38: $ff
	rst  $38                                         ; $7e39: $ff
	rst  $28                                         ; $7e3a: $ef
	ei                                               ; $7e3b: $fb
	call Call_0a9_5688                               ; $7e3c: $cd $88 $56
	sub  a                                           ; $7e3f: $97
	and  [hl]                                        ; $7e40: $a6
	ld   de, $1111                                   ; $7e41: $11 $11 $11
	ld   de, $1111                                   ; $7e44: $11 $11 $11
	ld   de, $5611                                   ; $7e47: $11 $11 $56
	rst  $38                                         ; $7e4a: $ff
	rst  $38                                         ; $7e4b: $ff
	ld   a, [$bfe9]                                  ; $7e4c: $fa $e9 $bf
	rst  $28                                         ; $7e4f: $ef
	rst  $38                                         ; $7e50: $ff
	rst  $38                                         ; $7e51: $ff
	rst  $28                                         ; $7e52: $ef
	db   $dd                                         ; $7e53: $dd
	reti                                             ; $7e54: $d9


	rst  $38                                         ; $7e55: $ff
	or   a                                           ; $7e56: $b7
	inc  sp                                          ; $7e57: $33
	cp   h                                           ; $7e58: $bc
	sub  l                                           ; $7e59: $95
	ld   de, $1131                                   ; $7e5a: $11 $31 $11
	ld   de, $2112                                   ; $7e5d: $11 $12 $21
	ld   de, $6811                                   ; $7e60: $11 $11 $68
	cp   h                                           ; $7e63: $bc
	rst  $38                                         ; $7e64: $ff
	rst  $38                                         ; $7e65: $ff
	cp   b                                           ; $7e66: $b8
	rst  JumpTable                                         ; $7e67: $df
	rst  $38                                         ; $7e68: $ff
	rst  $38                                         ; $7e69: $ff
	rst  $38                                         ; $7e6a: $ff
	rst  $38                                         ; $7e6b: $ff
	cp   $dd                                         ; $7e6c: $fe $dd
	db   $dd                                         ; $7e6e: $dd
	cp   c                                           ; $7e6f: $b9
	ld   [hl], h                                     ; $7e70: $74
	ld   a, c                                        ; $7e71: $79
	and  a                                           ; $7e72: $a7
	ld   de, $1111                                   ; $7e73: $11 $11 $11
	ld   de, $1113                                   ; $7e76: $11 $13 $11
	ld   de, $4b11                                   ; $7e79: $11 $11 $4b
	ei                                               ; $7e7c: $fb
	rst  $38                                         ; $7e7d: $ff
	rst  $38                                         ; $7e7e: $ff
	and  $dd                                         ; $7e7f: $e6 $dd
	rst  $38                                         ; $7e81: $ff
	rst  $38                                         ; $7e82: $ff
	rst  $38                                         ; $7e83: $ff
	rst  $38                                         ; $7e84: $ff
	rst  $38                                         ; $7e85: $ff
	reti                                             ; $7e86: $d9


	db   $fd                                         ; $7e87: $fd
	cp   h                                           ; $7e88: $bc
	ld   d, l                                        ; $7e89: $55
	sbc  e                                           ; $7e8a: $9b
	ld   [hl], l                                     ; $7e8b: $75
	ld   sp, $1111                                   ; $7e8c: $31 $11 $11
	ld   de, $1111                                   ; $7e8f: $11 $11 $11
	ld   de, $7411                                   ; $7e92: $11 $11 $74
	xor  h                                           ; $7e95: $ac
	rst  $38                                         ; $7e96: $ff
	rst  JumpTable                                         ; $7e97: $df
	rst  $30                                         ; $7e98: $f7
	xor  a                                           ; $7e99: $af
	rst  $38                                         ; $7e9a: $ff
	rst  $38                                         ; $7e9b: $ff
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	adc  $fe                                         ; $7e9e: $ce $fe
	db   $fd                                         ; $7ea0: $fd
	ld   [hl], a                                     ; $7ea1: $77
	adc  b                                           ; $7ea2: $88
	and  a                                           ; $7ea3: $a7
	ld   d, a                                        ; $7ea4: $57
	ld   d, e                                        ; $7ea5: $53
	ld   de, $1111                                   ; $7ea6: $11 $11 $11
	ld   de, $1111                                   ; $7ea9: $11 $11 $11
	ld   de, $fc19                                   ; $7eac: $11 $19 $fc
	rst  JumpTable                                         ; $7eaf: $df
	rst  $38                                         ; $7eb0: $ff
	db   $fd                                         ; $7eb1: $fd
	sbc  d                                           ; $7eb2: $9a
	rst  JumpTable                                         ; $7eb3: $df
	rst  $38                                         ; $7eb4: $ff
	rst  $38                                         ; $7eb5: $ff
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	db   $db                                         ; $7eb8: $db
	rst  JumpTable                                         ; $7eb9: $df
	rst  $10                                         ; $7eba: $d7
	ld   d, [hl]                                     ; $7ebb: $56
	adc  l                                           ; $7ebc: $8d
	jp   nz, $3111                                   ; $7ebd: $c2 $11 $31

	ld   de, $4111                                   ; $7ec0: $11 $11 $41
	ld   de, $1111                                   ; $7ec3: $11 $11 $11
	add  hl, sp                                      ; $7ec6: $39
	call $ffcf                                       ; $7ec7: $cd $cf $ff
	ld   sp, hl                                      ; $7eca: $f9
	ld   h, a                                        ; $7ecb: $67
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	db   $fc                                         ; $7ece: $fc
	rst  $38                                         ; $7ecf: $ff
	ei                                               ; $7ed0: $fb
	adc  d                                           ; $7ed1: $8a
	rst  $38                                         ; $7ed2: $ff
	and  a                                           ; $7ed3: $a7
	inc  [hl]                                        ; $7ed4: $34
	rst  JumpTable                                         ; $7ed5: $df
	or   h                                           ; $7ed6: $b4
	ld   de, $1161                                   ; $7ed7: $11 $61 $11
	ld   de, $1111                                   ; $7eda: $11 $11 $11
	ld   de, $4c11                                   ; $7edd: $11 $11 $4c
	rst  $38                                         ; $7ee0: $ff
	rst  $30                                         ; $7ee1: $f7
	rst  $38                                         ; $7ee2: $ff
	rst  $28                                         ; $7ee3: $ef
	ld   e, b                                        ; $7ee4: $58
	rst  $38                                         ; $7ee5: $ff
	rst  $38                                         ; $7ee6: $ff
	xor  h                                           ; $7ee7: $ac
	rst  $38                                         ; $7ee8: $ff
	db   $fd                                         ; $7ee9: $fd
	sbc  a                                           ; $7eea: $9f
	db   $ec                                         ; $7eeb: $ec
	jp   nz, $ce2a                                   ; $7eec: $c2 $2a $ce

	sub  c                                           ; $7eef: $91
	inc  bc                                          ; $7ef0: $03
	ld   de, $1111                                   ; $7ef1: $11 $11 $11
	ld   de, $1111                                   ; $7ef4: $11 $11 $11
	ld   [de], a                                     ; $7ef7: $12
	adc  e                                           ; $7ef8: $8b
	ret  z                                           ; $7ef9: $c8

	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	rst  $30                                         ; $7efc: $f7
	sbc  a                                           ; $7efd: $9f
	rst  $38                                         ; $7efe: $ff
	cp   $ff                                         ; $7eff: $fe $ff
	rst  $38                                         ; $7f01: $ff
	jp   c, $cddb                                    ; $7f02: $da $db $cd

	xor  c                                           ; $7f05: $a9
	ld   h, h                                        ; $7f06: $64
	cp   e                                           ; $7f07: $bb
	ld   d, h                                        ; $7f08: $54
	ld   de, $1111                                   ; $7f09: $11 $11 $11
	ld   de, $1112                                   ; $7f0c: $11 $12 $11
	ld   de, $b418                                   ; $7f0f: $11 $18 $b4
	jr   c, @+$01                                    ; $7f12: $38 $ff

	db   $fd                                         ; $7f14: $fd
	ld   d, $ff                                      ; $7f15: $16 $ff
	ei                                               ; $7f17: $fb
	ld   a, a                                        ; $7f18: $7f
	rst  $38                                         ; $7f19: $ff
	ld   hl, sp+$7f                                  ; $7f1a: $f8 $7f
	rst  $38                                         ; $7f1c: $ff
	and  d                                           ; $7f1d: $a2
	ld   l, h                                        ; $7f1e: $6c
	xor  c                                           ; $7f1f: $a9
	ld   h, l                                        ; $7f20: $65
	ld   b, d                                        ; $7f21: $42
	ld   hl, $1111                                   ; $7f22: $21 $11 $11
	ld   de, $1111                                   ; $7f25: $11 $11 $11
	ld   de, $7a4f                                   ; $7f28: $11 $4f $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2b: $cf
	rst  $38                                         ; $7f2c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2d: $cf
	adc  [hl]                                        ; $7f2e: $8e
	rst  $38                                         ; $7f2f: $ff
	rst  $38                                         ; $7f30: $ff
	cp   a                                           ; $7f31: $bf
	rst  $38                                         ; $7f32: $ff
	db   $fd                                         ; $7f33: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f34: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f35: $cf
	call nz, $bc69                                   ; $7f36: $c4 $69 $bc
	ld   b, c                                        ; $7f39: $41
	ld   sp, $1111                                   ; $7f3a: $31 $11 $11
	ld   de, $1111                                   ; $7f3d: $11 $11 $11
	ld   de, $fd19                                   ; $7f40: $11 $19 $fd
	ld   [hl-], a                                    ; $7f43: $32
	rst  $38                                         ; $7f44: $ff
	rst  $38                                         ; $7f45: $ff
	ld   d, e                                        ; $7f46: $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f47: $cf
	rst  $38                                         ; $7f48: $ff
	ld   l, l                                        ; $7f49: $6d
	rst  $38                                         ; $7f4a: $ff
	cp   $ad                                         ; $7f4b: $fe $ad
	rst  $38                                         ; $7f4d: $ff
	jp   nz, $cc69                                   ; $7f4e: $c2 $69 $cc

	ld   d, h                                        ; $7f51: $54
	inc  [hl]                                        ; $7f52: $34
	ld   h, c                                        ; $7f53: $61
	ld   de, $1111                                   ; $7f54: $11 $11 $11
	ld   de, $1111                                   ; $7f57: $11 $11 $11
	inc  d                                           ; $7f5a: $14
	rst  JumpTable                                         ; $7f5b: $df
	db   $ec                                         ; $7f5c: $ec
	rst  $38                                         ; $7f5d: $ff
	rst  $38                                         ; $7f5e: $ff
	ld   a, [hl]                                     ; $7f5f: $7e
	rst  $28                                         ; $7f60: $ef
	db   $fc                                         ; $7f61: $fc
	rst  $28                                         ; $7f62: $ef
	rst  $38                                         ; $7f63: $ff
	ei                                               ; $7f64: $fb
	db   $ec                                         ; $7f65: $ec
	cp   $68                                         ; $7f66: $fe $68
	sbc  d                                           ; $7f68: $9a
	push bc                                          ; $7f69: $c5
	inc  de                                          ; $7f6a: $13
	inc  hl                                          ; $7f6b: $23
	ld   de, $1111                                   ; $7f6c: $11 $11 $11
	ld   de, $1111                                   ; $7f6f: $11 $11 $11
	ld   de, $efae                                   ; $7f72: $11 $ae $ef
	rst  $38                                         ; $7f75: $ff
	rst  $38                                         ; $7f76: $ff
	db   $fc                                         ; $7f77: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f78: $cf
	rst  $38                                         ; $7f79: $ff
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	cp   $ef                                         ; $7f7c: $fe $ef
	db   $fd                                         ; $7f7e: $fd
	halt                                             ; $7f7f: $76
	xor  e                                           ; $7f80: $ab
	and  l                                           ; $7f81: $a5
	ld   de, $1153                                   ; $7f82: $11 $53 $11
	ld   de, $1111                                   ; $7f85: $11 $11 $11
	ld   de, $1b11                                   ; $7f88: $11 $11 $1b
	sub  e                                           ; $7f8b: $93
	rst  $38                                         ; $7f8c: $ff
	rst  $38                                         ; $7f8d: $ff
	set  7, a                                        ; $7f8e: $cb $ff
	rst  $38                                         ; $7f90: $ff
	rst  JumpTable                                         ; $7f91: $df
	rst  $38                                         ; $7f92: $ff
	rst  $38                                         ; $7f93: $ff
	rst  $28                                         ; $7f94: $ef
	rst  $38                                         ; $7f95: $ff
	jp   z, $96cc                                    ; $7f96: $ca $cc $96

	ld   b, [hl]                                     ; $7f99: $46
	add  l                                           ; $7f9a: $85
	ld   de, $1112                                   ; $7f9b: $11 $12 $11
	ld   de, $1111                                   ; $7f9e: $11 $11 $11
	ld   de, $a627                                   ; $7fa1: $11 $27 $a6
	ld   l, a                                        ; $7fa4: $6f
	rst  $38                                         ; $7fa5: $ff
	db   $fc                                         ; $7fa6: $fc
	rst  $28                                         ; $7fa7: $ef
	rst  $38                                         ; $7fa8: $ff
	db   $fc                                         ; $7fa9: $fc
	rst  JumpTable                                         ; $7faa: $df
	rst  $38                                         ; $7fab: $ff
	rst  $38                                         ; $7fac: $ff
	rst  $38                                         ; $7fad: $ff
	db   $fc                                         ; $7fae: $fc
	adc  c                                           ; $7faf: $89
	ret                                              ; $7fb0: $c9


	ld   b, h                                        ; $7fb1: $44
	ld   [hl-], a                                    ; $7fb2: $32
	ld   de, $1111                                   ; $7fb3: $11 $11 $11
	ld   de, $1111                                   ; $7fb6: $11 $11 $11
	ld   de, $427b                                   ; $7fb9: $11 $7b $42
	cp   a                                           ; $7fbc: $bf
	rst  $38                                         ; $7fbd: $ff
	db   $fd                                         ; $7fbe: $fd
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	xor  d                                           ; $7fc1: $aa
	rst  $28                                         ; $7fc2: $ef
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	jp   c, $b6ce                                    ; $7fc6: $da $ce $b6

	ld   [hl+], a                                    ; $7fc9: $22
	ld   b, d                                        ; $7fca: $42
	ld   de, $1111                                   ; $7fcb: $11 $11 $11
	ld   de, $1111                                   ; $7fce: $11 $11 $11
	ld   de, $1962                                   ; $7fd1: $11 $62 $19
	rst  $38                                         ; $7fd4: $ff
	rst  $38                                         ; $7fd5: $ff
	rst  $38                                         ; $7fd6: $ff
	rst  $38                                         ; $7fd7: $ff
	db   $eb                                         ; $7fd8: $eb
	rst  JumpTable                                         ; $7fd9: $df
	rst  $38                                         ; $7fda: $ff
	call $fcff                                       ; $7fdb: $cd $ff $fc
	call $75db                                       ; $7fde: $cd $db $75
	ld   b, e                                        ; $7fe1: $43
	ld   sp, $1111                                   ; $7fe2: $31 $11 $11
	ld   de, $1111                                   ; $7fe5: $11 $11 $11
	ld   de, $4214                                   ; $7fe8: $11 $14 $42
	dec  h                                           ; $7feb: $25
	rst  JumpTable                                         ; $7fec: $df
	cp   $df                                         ; $7fed: $fe $df
	rst  $38                                         ; $7fef: $ff
	db   $fc                                         ; $7ff0: $fc
	rst  JumpTable                                         ; $7ff1: $df
	rst  $38                                         ; $7ff2: $ff
	db   $db                                         ; $7ff3: $db
	adc  $db                                         ; $7ff4: $ce $db
	xor  d                                           ; $7ff6: $aa
	cp   h                                           ; $7ff7: $bc
	or   a                                           ; $7ff8: $b7
	adc  c                                           ; $7ff9: $89
	add  [hl]                                        ; $7ffa: $86
	ld   b, e                                        ; $7ffb: $43
	ld   b, [hl]                                     ; $7ffc: $46
	ld   hl, $1121                                   ; $7ffd: $21 $21 $11
