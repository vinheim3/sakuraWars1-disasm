; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ca", ROMX[$4000], BANK[$ca]

	sub  a                                           ; $4000: $97
	ld   d, [hl]                                     ; $4001: $56
	ld   b, h                                        ; $4002: $44
	ld   b, h                                        ; $4003: $44
	ld   b, [hl]                                     ; $4004: $46
	halt                                             ; $4005: $76
	sbc  e                                           ; $4006: $9b
	xor  l                                           ; $4007: $ad
	call z, $a8bb                                    ; $4008: $cc $bb $a8
	xor  b                                           ; $400b: $a8
	sbc  c                                           ; $400c: $99
	adc  c                                           ; $400d: $89
	halt                                             ; $400e: $76
	ld   d, h                                        ; $400f: $54
	ld   d, h                                        ; $4010: $54
	ld   b, l                                        ; $4011: $45
	ld   b, l                                        ; $4012: $45
	adc  b                                           ; $4013: $88
	cp   h                                           ; $4014: $bc
	cp   h                                           ; $4015: $bc
	call z, $a9a9                                    ; $4016: $cc $a9 $a9
	adc  c                                           ; $4019: $89
	adc  c                                           ; $401a: $89
	sbc  b                                           ; $401b: $98
	halt                                             ; $401c: $76
	ld   d, l                                        ; $401d: $55
	ld   d, e                                        ; $401e: $53
	dec  [hl]                                        ; $401f: $35
	ld   b, [hl]                                     ; $4020: $46
	adc  d                                           ; $4021: $8a
	sbc  e                                           ; $4022: $9b
	jp   c, $99cc                                    ; $4023: $da $cc $99

	xor  c                                           ; $4026: $a9
	adc  d                                           ; $4027: $8a
	sbc  b                                           ; $4028: $98
	adc  b                                           ; $4029: $88
	ld   h, l                                        ; $402a: $65
	ld   h, l                                        ; $402b: $65
	ld   b, h                                        ; $402c: $44
	ld   b, h                                        ; $402d: $44
	ld   d, a                                        ; $402e: $57
	ld   l, b                                        ; $402f: $68
	xor  h                                           ; $4030: $ac
	cp   l                                           ; $4031: $bd
	db   $db                                         ; $4032: $db
	xor  d                                           ; $4033: $aa
	sbc  b                                           ; $4034: $98
	sbc  d                                           ; $4035: $9a
	adc  b                                           ; $4036: $88
	add  a                                           ; $4037: $87
	ld   h, [hl]                                     ; $4038: $66
	ld   h, l                                        ; $4039: $65
	ld   d, h                                        ; $403a: $54
	ld   b, e                                        ; $403b: $43
	ld   b, a                                        ; $403c: $47
	add  a                                           ; $403d: $87
	xor  h                                           ; $403e: $ac
	xor  h                                           ; $403f: $ac
	res  5, d                                        ; $4040: $cb $aa
	xor  c                                           ; $4042: $a9
	sbc  c                                           ; $4043: $99
	ld   a, b                                        ; $4044: $78
	sub  a                                           ; $4045: $97
	add  a                                           ; $4046: $87
	ld   h, [hl]                                     ; $4047: $66
	ld   d, h                                        ; $4048: $54
	ld   b, h                                        ; $4049: $44
	ld   b, l                                        ; $404a: $45
	sbc  b                                           ; $404b: $98
	sbc  e                                           ; $404c: $9b
	cp   c                                           ; $404d: $b9
	res  5, e                                        ; $404e: $cb $ab
	sbc  c                                           ; $4050: $99
	sbc  c                                           ; $4051: $99
	adc  c                                           ; $4052: $89
	add  a                                           ; $4053: $87
	add  a                                           ; $4054: $87
	ld   h, [hl]                                     ; $4055: $66
	ld   h, l                                        ; $4056: $65
	ld   b, h                                        ; $4057: $44
	ld   b, h                                        ; $4058: $44
	ld   l, c                                        ; $4059: $69
	adc  c                                           ; $405a: $89
	xor  c                                           ; $405b: $a9
	xor  h                                           ; $405c: $ac
	cp   d                                           ; $405d: $ba
	jp   z, $989a                                    ; $405e: $ca $9a $98

	sbc  c                                           ; $4061: $99
	ld   a, b                                        ; $4062: $78
	add  a                                           ; $4063: $87
	ld   h, [hl]                                     ; $4064: $66
	ld   h, h                                        ; $4065: $64
	ld   b, h                                        ; $4066: $44
	ld   b, l                                        ; $4067: $45
	ld   [hl], a                                     ; $4068: $77
	adc  d                                           ; $4069: $8a
	xor  d                                           ; $406a: $aa
	call z, $a8ab                                    ; $406b: $cc $ab $a8
	adc  d                                           ; $406e: $8a
	sbc  c                                           ; $406f: $99
	sbc  b                                           ; $4070: $98
	adc  b                                           ; $4071: $88
	add  [hl]                                        ; $4072: $86
	ld   h, [hl]                                     ; $4073: $66
	ld   d, h                                        ; $4074: $54
	ld   d, h                                        ; $4075: $54
	ld   c, b                                        ; $4076: $48
	ld   h, a                                        ; $4077: $67
	cp   c                                           ; $4078: $b9
	sbc  e                                           ; $4079: $9b
	cp   e                                           ; $407a: $bb
	xor  d                                           ; $407b: $aa
	sbc  c                                           ; $407c: $99
	xor  c                                           ; $407d: $a9
	adc  c                                           ; $407e: $89
	sbc  c                                           ; $407f: $99
	sbc  c                                           ; $4080: $99
	ld   [hl], a                                     ; $4081: $77
	ld   h, l                                        ; $4082: $65
	ld   d, h                                        ; $4083: $54
	ld   d, l                                        ; $4084: $55
	ld   b, a                                        ; $4085: $47
	add  a                                           ; $4086: $87
	sbc  e                                           ; $4087: $9b
	xor  c                                           ; $4088: $a9
	cp   e                                           ; $4089: $bb
	sbc  d                                           ; $408a: $9a
	xor  c                                           ; $408b: $a9
	xor  c                                           ; $408c: $a9
	adc  b                                           ; $408d: $88
	sbc  b                                           ; $408e: $98
	sbc  b                                           ; $408f: $98
	ld   [hl], a                                     ; $4090: $77
	ld   h, l                                        ; $4091: $65
	ld   d, l                                        ; $4092: $55
	ld   d, h                                        ; $4093: $54
	ld   d, l                                        ; $4094: $55
	ld   a, b                                        ; $4095: $78
	ld   a, d                                        ; $4096: $7a
	cp   d                                           ; $4097: $ba
	call z, $a89a                                    ; $4098: $cc $9a $a8
	adc  c                                           ; $409b: $89
	xor  c                                           ; $409c: $a9
	sbc  d                                           ; $409d: $9a
	add  a                                           ; $409e: $87
	add  a                                           ; $409f: $87
	ld   h, [hl]                                     ; $40a0: $66
	ld   h, l                                        ; $40a1: $65
	ld   b, l                                        ; $40a2: $45
	ld   b, h                                        ; $40a3: $44
	ld   a, b                                        ; $40a4: $78
	ld   a, c                                        ; $40a5: $79
	cp   c                                           ; $40a6: $b9
	xor  h                                           ; $40a7: $ac
	adc  e                                           ; $40a8: $8b
	xor  c                                           ; $40a9: $a9
	xor  c                                           ; $40aa: $a9
	sbc  b                                           ; $40ab: $98
	sbc  b                                           ; $40ac: $98
	sbc  c                                           ; $40ad: $99
	sub  a                                           ; $40ae: $97
	ld   [hl], a                                     ; $40af: $77
	ld   d, [hl]                                     ; $40b0: $56
	ld   d, h                                        ; $40b1: $54
	ld   d, l                                        ; $40b2: $55
	ld   b, [hl]                                     ; $40b3: $46
	add  a                                           ; $40b4: $87
	sbc  e                                           ; $40b5: $9b
	xor  d                                           ; $40b6: $aa
	cp   d                                           ; $40b7: $ba
	adc  e                                           ; $40b8: $8b
	xor  b                                           ; $40b9: $a8
	sbc  d                                           ; $40ba: $9a
	adc  c                                           ; $40bb: $89
	sbc  c                                           ; $40bc: $99
	adc  b                                           ; $40bd: $88
	add  a                                           ; $40be: $87
	ld   h, [hl]                                     ; $40bf: $66
	ld   h, l                                        ; $40c0: $65
	ld   b, l                                        ; $40c1: $45
	ld   d, h                                        ; $40c2: $54
	ld   l, b                                        ; $40c3: $68
	ld   a, b                                        ; $40c4: $78
	xor  e                                           ; $40c5: $ab
	sbc  e                                           ; $40c6: $9b
	cp   c                                           ; $40c7: $b9
	xor  d                                           ; $40c8: $aa
	adc  b                                           ; $40c9: $88
	sbc  c                                           ; $40ca: $99
	adc  c                                           ; $40cb: $89
	sbc  b                                           ; $40cc: $98
	adc  c                                           ; $40cd: $89
	ld   [hl], a                                     ; $40ce: $77
	halt                                             ; $40cf: $76
	ld   d, l                                        ; $40d0: $55
	ld   d, h                                        ; $40d1: $54
	ld   d, a                                        ; $40d2: $57
	ld   l, b                                        ; $40d3: $68
	xor  c                                           ; $40d4: $a9
	xor  d                                           ; $40d5: $aa
	xor  c                                           ; $40d6: $a9
	cp   d                                           ; $40d7: $ba
	xor  c                                           ; $40d8: $a9
	xor  b                                           ; $40d9: $a8
	adc  c                                           ; $40da: $89
	adc  c                                           ; $40db: $89
	sbc  c                                           ; $40dc: $99
	sbc  b                                           ; $40dd: $98
	add  a                                           ; $40de: $87
	ld   h, [hl]                                     ; $40df: $66
	ld   b, h                                        ; $40e0: $44
	ld   d, h                                        ; $40e1: $54
	ld   d, [hl]                                     ; $40e2: $56
	ld   a, b                                        ; $40e3: $78
	sbc  d                                           ; $40e4: $9a
	xor  d                                           ; $40e5: $aa
	xor  e                                           ; $40e6: $ab
	xor  d                                           ; $40e7: $aa
	xor  c                                           ; $40e8: $a9
	adc  b                                           ; $40e9: $88
	adc  c                                           ; $40ea: $89
	sbc  d                                           ; $40eb: $9a
	sbc  c                                           ; $40ec: $99
	sbc  c                                           ; $40ed: $99
	ld   [hl], a                                     ; $40ee: $77
	halt                                             ; $40ef: $76
	ld   b, l                                        ; $40f0: $45
	ld   d, h                                        ; $40f1: $54
	ld   h, [hl]                                     ; $40f2: $66
	ld   l, b                                        ; $40f3: $68
	adc  c                                           ; $40f4: $89
	cp   e                                           ; $40f5: $bb
	xor  d                                           ; $40f6: $aa
	cp   c                                           ; $40f7: $b9
	sbc  c                                           ; $40f8: $99
	adc  b                                           ; $40f9: $88
	adc  c                                           ; $40fa: $89
	sbc  c                                           ; $40fb: $99
	xor  c                                           ; $40fc: $a9
	sbc  b                                           ; $40fd: $98
	halt                                             ; $40fe: $76
	ld   h, [hl]                                     ; $40ff: $66
	ld   h, l                                        ; $4100: $65
	ld   d, l                                        ; $4101: $55
	ld   d, l                                        ; $4102: $55
	ld   a, c                                        ; $4103: $79
	sbc  b                                           ; $4104: $98
	cp   e                                           ; $4105: $bb
	sbc  d                                           ; $4106: $9a
	xor  b                                           ; $4107: $a8
	sbc  d                                           ; $4108: $9a
	sbc  b                                           ; $4109: $98
	sbc  c                                           ; $410a: $99
	sbc  b                                           ; $410b: $98
	xor  b                                           ; $410c: $a8
	adc  b                                           ; $410d: $88
	add  [hl]                                        ; $410e: $86
	halt                                             ; $410f: $76
	ld   d, h                                        ; $4110: $54
	ld   b, h                                        ; $4111: $44
	ld   d, l                                        ; $4112: $55
	ld   a, c                                        ; $4113: $79
	sbc  d                                           ; $4114: $9a
	cp   d                                           ; $4115: $ba
	cp   d                                           ; $4116: $ba
	sbc  d                                           ; $4117: $9a
	xor  c                                           ; $4118: $a9
	sbc  c                                           ; $4119: $99
	adc  c                                           ; $411a: $89
	sbc  b                                           ; $411b: $98
	sbc  b                                           ; $411c: $98
	sbc  c                                           ; $411d: $99
	ld   [hl], a                                     ; $411e: $77
	ld   h, [hl]                                     ; $411f: $66
	ld   h, h                                        ; $4120: $64
	ld   b, l                                        ; $4121: $45
	ld   d, [hl]                                     ; $4122: $56
	ld   l, b                                        ; $4123: $68
	sbc  c                                           ; $4124: $99
	cp   d                                           ; $4125: $ba
	xor  d                                           ; $4126: $aa
	xor  c                                           ; $4127: $a9
	xor  b                                           ; $4128: $a8
	adc  c                                           ; $4129: $89
	adc  c                                           ; $412a: $89
	adc  c                                           ; $412b: $89
	sbc  b                                           ; $412c: $98
	sbc  b                                           ; $412d: $98
	add  a                                           ; $412e: $87
	ld   h, [hl]                                     ; $412f: $66
	ld   d, e                                        ; $4130: $53
	ld   b, l                                        ; $4131: $45
	ld   b, [hl]                                     ; $4132: $46
	ld   a, b                                        ; $4133: $78
	adc  d                                           ; $4134: $8a
	xor  d                                           ; $4135: $aa
	cp   c                                           ; $4136: $b9
	xor  d                                           ; $4137: $aa
	sbc  d                                           ; $4138: $9a
	sbc  c                                           ; $4139: $99
	sbc  c                                           ; $413a: $99
	sbc  c                                           ; $413b: $99
	xor  c                                           ; $413c: $a9
	sbc  b                                           ; $413d: $98
	add  a                                           ; $413e: $87
	halt                                             ; $413f: $76
	ld   d, h                                        ; $4140: $54
	ld   d, h                                        ; $4141: $54
	ld   d, [hl]                                     ; $4142: $56
	ld   h, a                                        ; $4143: $67
	adc  b                                           ; $4144: $88
	xor  d                                           ; $4145: $aa
	xor  d                                           ; $4146: $aa
	xor  c                                           ; $4147: $a9
	xor  c                                           ; $4148: $a9
	adc  c                                           ; $4149: $89
	sbc  b                                           ; $414a: $98
	sbc  b                                           ; $414b: $98
	sbc  c                                           ; $414c: $99
	sbc  c                                           ; $414d: $99
	sub  a                                           ; $414e: $97
	halt                                             ; $414f: $76
	ld   h, l                                        ; $4150: $65
	ld   b, l                                        ; $4151: $45
	ld   d, l                                        ; $4152: $55
	ld   d, a                                        ; $4153: $57
	sbc  c                                           ; $4154: $99
	sbc  h                                           ; $4155: $9c
	sbc  c                                           ; $4156: $99
	cp   c                                           ; $4157: $b9
	sbc  c                                           ; $4158: $99
	sbc  b                                           ; $4159: $98

Call_0ca_415a:
	adc  c                                           ; $415a: $89
	sbc  c                                           ; $415b: $99
	adc  c                                           ; $415c: $89
	sbc  c                                           ; $415d: $99
	adc  c                                           ; $415e: $89
	add  [hl]                                        ; $415f: $86
	ld   h, [hl]                                     ; $4160: $66
	ld   b, h                                        ; $4161: $44
	ld   b, [hl]                                     ; $4162: $46
	ld   h, [hl]                                     ; $4163: $66
	sbc  b                                           ; $4164: $98
	sbc  d                                           ; $4165: $9a
	xor  e                                           ; $4166: $ab
	cp   c                                           ; $4167: $b9
	sbc  d                                           ; $4168: $9a
	sbc  c                                           ; $4169: $99
	sbc  b                                           ; $416a: $98
	adc  b                                           ; $416b: $88
	sbc  c                                           ; $416c: $99
	sbc  c                                           ; $416d: $99
	adc  b                                           ; $416e: $88
	halt                                             ; $416f: $76
	ld   h, l                                        ; $4170: $65
	ld   b, h                                        ; $4171: $44
	ld   d, l                                        ; $4172: $55
	ld   d, [hl]                                     ; $4173: $56
	adc  c                                           ; $4174: $89
	sbc  d                                           ; $4175: $9a
	cp   d                                           ; $4176: $ba
	xor  d                                           ; $4177: $aa
	sbc  d                                           ; $4178: $9a
	sbc  c                                           ; $4179: $99
	sbc  b                                           ; $417a: $98
	adc  c                                           ; $417b: $89
	sbc  c                                           ; $417c: $99
	adc  d                                           ; $417d: $8a
	add  a                                           ; $417e: $87
	add  [hl]                                        ; $417f: $86
	ld   h, [hl]                                     ; $4180: $66
	ld   d, h                                        ; $4181: $54
	ld   b, h                                        ; $4182: $44
	ld   d, a                                        ; $4183: $57
	adc  d                                           ; $4184: $8a
	xor  d                                           ; $4185: $aa
	cp   c                                           ; $4186: $b9
	xor  c                                           ; $4187: $a9
	sbc  c                                           ; $4188: $99
	sbc  c                                           ; $4189: $99
	adc  b                                           ; $418a: $88
	sbc  b                                           ; $418b: $98
	sbc  b                                           ; $418c: $98
	sbc  c                                           ; $418d: $99
	adc  c                                           ; $418e: $89
	halt                                             ; $418f: $76
	ld   d, [hl]                                     ; $4190: $56
	ld   d, h                                        ; $4191: $54
	ld   b, l                                        ; $4192: $45
	ld   h, [hl]                                     ; $4193: $66
	adc  c                                           ; $4194: $89
	xor  e                                           ; $4195: $ab
	cp   d                                           ; $4196: $ba
	sbc  b                                           ; $4197: $98
	sbc  c                                           ; $4198: $99
	sbc  c                                           ; $4199: $99
	adc  d                                           ; $419a: $8a
	sbc  b                                           ; $419b: $98
	sbc  c                                           ; $419c: $99
	sbc  c                                           ; $419d: $99
	adc  b                                           ; $419e: $88
	add  [hl]                                        ; $419f: $86
	ld   h, [hl]                                     ; $41a0: $66
	ld   b, e                                        ; $41a1: $43
	ld   b, l                                        ; $41a2: $45
	ld   h, a                                        ; $41a3: $67
	adc  c                                           ; $41a4: $89

Call_0ca_41a5:
	xor  c                                           ; $41a5: $a9
	cp   e                                           ; $41a6: $bb
	xor  c                                           ; $41a7: $a9
	xor  c                                           ; $41a8: $a9
	adc  c                                           ; $41a9: $89
	adc  b                                           ; $41aa: $88
	adc  b                                           ; $41ab: $88
	xor  c                                           ; $41ac: $a9
	sbc  c                                           ; $41ad: $99
	sbc  b                                           ; $41ae: $98
	ld   h, [hl]                                     ; $41af: $66
	ld   h, l                                        ; $41b0: $65
	ld   b, h                                        ; $41b1: $44
	ld   b, l                                        ; $41b2: $45
	ld   d, [hl]                                     ; $41b3: $56
	sbc  d                                           ; $41b4: $9a
	res  3, e                                        ; $41b5: $cb $9b
	sbc  c                                           ; $41b7: $99
	xor  d                                           ; $41b8: $aa
	sub  a                                           ; $41b9: $97
	adc  b                                           ; $41ba: $88
	sbc  b                                           ; $41bb: $98
	adc  d                                           ; $41bc: $8a
	xor  b                                           ; $41bd: $a8
	adc  b                                           ; $41be: $88
	halt                                             ; $41bf: $76
	ld   h, h                                        ; $41c0: $64
	inc  [hl]                                        ; $41c1: $34
	ld   d, a                                        ; $41c2: $57
	ld   [hl], a                                     ; $41c3: $77
	adc  c                                           ; $41c4: $89
	xor  d                                           ; $41c5: $aa
	xor  e                                           ; $41c6: $ab
	sbc  c                                           ; $41c7: $99
	sbc  c                                           ; $41c8: $99
	add  a                                           ; $41c9: $87
	sbc  b                                           ; $41ca: $98
	adc  c                                           ; $41cb: $89
	xor  d                                           ; $41cc: $aa
	xor  b                                           ; $41cd: $a8
	halt                                             ; $41ce: $76
	ld   h, [hl]                                     ; $41cf: $66
	ld   h, h                                        ; $41d0: $64
	ld   d, h                                        ; $41d1: $54
	ld   b, [hl]                                     ; $41d2: $46
	ld   [hl], a                                     ; $41d3: $77
	xor  h                                           ; $41d4: $ac
	xor  e                                           ; $41d5: $ab
	jp   z, $9987                                    ; $41d6: $ca $87 $99

	sbc  b                                           ; $41d9: $98
	sbc  b                                           ; $41da: $98
	ld   [hl], a                                     ; $41db: $77
	sbc  c                                           ; $41dc: $99
	xor  c                                           ; $41dd: $a9
	sub  a                                           ; $41de: $97
	ld   d, l                                        ; $41df: $55
	ld   [hl-], a                                    ; $41e0: $32
	dec  [hl]                                        ; $41e1: $35
	ld   a, c                                        ; $41e2: $79
	cp   c                                           ; $41e3: $b9
	xor  d                                           ; $41e4: $aa
	xor  c                                           ; $41e5: $a9
	xor  e                                           ; $41e6: $ab
	sbc  c                                           ; $41e7: $99
	adc  b                                           ; $41e8: $88
	add  a                                           ; $41e9: $87
	adc  c                                           ; $41ea: $89
	sbc  d                                           ; $41eb: $9a
	cp   e                                           ; $41ec: $bb
	sub  l                                           ; $41ed: $95
	ld   b, l                                        ; $41ee: $45
	ld   h, l                                        ; $41ef: $65
	ld   b, l                                        ; $41f0: $45
	ld   d, h                                        ; $41f1: $54
	ld   l, b                                        ; $41f2: $68
	sbc  e                                           ; $41f3: $9b
	jp   z, $89b9                                    ; $41f4: $ca $b9 $89

	add  a                                           ; $41f7: $87
	ld   a, c                                        ; $41f8: $79
	sbc  d                                           ; $41f9: $9a
	sbc  b                                           ; $41fa: $98
	adc  d                                           ; $41fb: $8a
	sbc  b                                           ; $41fc: $98
	halt                                             ; $41fd: $76
	ld   h, [hl]                                     ; $41fe: $66
	ld   b, d                                        ; $41ff: $42
	dec  [hl]                                        ; $4200: $35
	ld   [hl], a                                     ; $4201: $77
	sbc  d                                           ; $4202: $9a
	cp   d                                           ; $4203: $ba
	sbc  c                                           ; $4204: $99
	sbc  d                                           ; $4205: $9a
	xor  c                                           ; $4206: $a9
	xor  c                                           ; $4207: $a9
	add  [hl]                                        ; $4208: $86
	ld   a, b                                        ; $4209: $78
	sbc  d                                           ; $420a: $9a
	xor  d                                           ; $420b: $aa
	sub  [hl]                                        ; $420c: $96
	ld   b, h                                        ; $420d: $44
	ld   d, l                                        ; $420e: $55
	ld   d, h                                        ; $420f: $54
	ld   h, a                                        ; $4210: $67
	ld   a, b                                        ; $4211: $78
	sbc  d                                           ; $4212: $9a
	xor  e                                           ; $4213: $ab
	xor  d                                           ; $4214: $aa
	xor  c                                           ; $4215: $a9
	ld   [hl], a                                     ; $4216: $77
	sbc  c                                           ; $4217: $99
	adc  c                                           ; $4218: $89
	adc  c                                           ; $4219: $89
	xor  b                                           ; $421a: $a8
	sbc  b                                           ; $421b: $98
	halt                                             ; $421c: $76
	ld   h, [hl]                                     ; $421d: $66
	ld   b, d                                        ; $421e: $42
	ld   [hl], $9a                                   ; $421f: $36 $9a
	sub  a                                           ; $4221: $97
	sbc  e                                           ; $4222: $9b
	res  1, c                                        ; $4223: $cb $89
	xor  b                                           ; $4225: $a8
	adc  c                                           ; $4226: $89
	sbc  b                                           ; $4227: $98
	adc  b                                           ; $4228: $88
	sbc  d                                           ; $4229: $9a
	sbc  b                                           ; $422a: $98
	halt                                             ; $422b: $76
	ld   h, [hl]                                     ; $422c: $66
	ld   h, h                                        ; $422d: $64
	ld   [hl+], a                                    ; $422e: $22
	ld   l, c                                        ; $422f: $69
	xor  b                                           ; $4230: $a8
	xor  l                                           ; $4231: $ad
	xor  b                                           ; $4232: $a8
	adc  d                                           ; $4233: $8a
	xor  c                                           ; $4234: $a9
	halt                                             ; $4235: $76
	adc  c                                           ; $4236: $89
	sbc  b                                           ; $4237: $98
	ld   a, b                                        ; $4238: $78
	xor  h                                           ; $4239: $ac
	and  a                                           ; $423a: $a7
	ld   h, l                                        ; $423b: $65
	ld   b, h                                        ; $423c: $44
	dec  [hl]                                        ; $423d: $35
	ld   [hl], a                                     ; $423e: $77
	ld   a, b                                        ; $423f: $78
	xor  d                                           ; $4240: $aa
	cp   e                                           ; $4241: $bb
	sbc  d                                           ; $4242: $9a
	ret                                              ; $4243: $c9


	ld   h, a                                        ; $4244: $67
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	ld   a, d                                        ; $4247: $7a
	sbc  c                                           ; $4248: $99
	adc  b                                           ; $4249: $88
	ld   [hl], a                                     ; $424a: $77
	ld   h, h                                        ; $424b: $64
	inc  hl                                          ; $424c: $23
	ld   a, b                                        ; $424d: $78
	ld   [hl], a                                     ; $424e: $77
	adc  e                                           ; $424f: $8b
	jp   z, $ab79                                    ; $4250: $ca $79 $ab

	xor  b                                           ; $4253: $a8
	halt                                             ; $4254: $76
	ld   [hl], a                                     ; $4255: $77
	adc  c                                           ; $4256: $89
	xor  c                                           ; $4257: $a9
	adc  b                                           ; $4258: $88
	ld   [hl], a                                     ; $4259: $77
	ld   h, l                                        ; $425a: $65
	ld   b, l                                        ; $425b: $45
	ld   d, [hl]                                     ; $425c: $56
	ld   a, c                                        ; $425d: $79
	sbc  d                                           ; $425e: $9a
	cp   d                                           ; $425f: $ba
	xor  d                                           ; $4260: $aa
	cp   d                                           ; $4261: $ba
	ld   [hl], a                                     ; $4262: $77
	adc  c                                           ; $4263: $89
	sbc  c                                           ; $4264: $99
	adc  c                                           ; $4265: $89
	sbc  c                                           ; $4266: $99
	sbc  b                                           ; $4267: $98
	add  [hl]                                        ; $4268: $86
	ld   d, h                                        ; $4269: $54
	ld   b, h                                        ; $426a: $44
	ld   d, a                                        ; $426b: $57
	ld   a, b                                        ; $426c: $78
	sbc  e                                           ; $426d: $9b
	xor  d                                           ; $426e: $aa
	sbc  d                                           ; $426f: $9a
	xor  d                                           ; $4270: $aa
	add  a                                           ; $4271: $87
	ld   a, b                                        ; $4272: $78
	sbc  b                                           ; $4273: $98
	adc  b                                           ; $4274: $88
	sbc  d                                           ; $4275: $9a
	sub  a                                           ; $4276: $97
	ld   h, [hl]                                     ; $4277: $66
	halt                                             ; $4278: $76
	ld   d, e                                        ; $4279: $53
	ld   [hl], $9b                                   ; $427a: $36 $9b
	xor  d                                           ; $427c: $aa
	sbc  c                                           ; $427d: $99
	xor  e                                           ; $427e: $ab
	xor  b                                           ; $427f: $a8
	xor  b                                           ; $4280: $a8
	adc  c                                           ; $4281: $89
	halt                                             ; $4282: $76
	ld   a, c                                        ; $4283: $79
	xor  d                                           ; $4284: $aa
	halt                                             ; $4285: $76
	ld   h, [hl]                                     ; $4286: $66
	ld   h, l                                        ; $4287: $65
	ld   h, [hl]                                     ; $4288: $66
	ld   h, [hl]                                     ; $4289: $66
	ld   a, c                                        ; $428a: $79
	xor  h                                           ; $428b: $ac
	adc  c                                           ; $428c: $89
	xor  e                                           ; $428d: $ab
	xor  c                                           ; $428e: $a9
	sbc  b                                           ; $428f: $98
	xor  c                                           ; $4290: $a9
	add  [hl]                                        ; $4291: $86
	ld   l, b                                        ; $4292: $68
	xor  d                                           ; $4293: $aa
	add  [hl]                                        ; $4294: $86
	dec  [hl]                                        ; $4295: $35
	ld   d, l                                        ; $4296: $55
	ld   d, [hl]                                     ; $4297: $56

Call_0ca_4298:
	sbc  c                                           ; $4298: $99
	and  a                                           ; $4299: $a7
	sbc  b                                           ; $429a: $98
	xor  e                                           ; $429b: $ab
	cp   d                                           ; $429c: $ba
	sbc  b                                           ; $429d: $98
	ld   h, a                                        ; $429e: $67
	adc  c                                           ; $429f: $89
	xor  d                                           ; $42a0: $aa
	add  a                                           ; $42a1: $87
	halt                                             ; $42a2: $76
	ld   h, [hl]                                     ; $42a3: $66
	ld   a, b                                        ; $42a4: $78
	ld   d, h                                        ; $42a5: $54
	inc  d                                           ; $42a6: $14
	sbc  l                                           ; $42a7: $9d
	cp   d                                           ; $42a8: $ba
	sbc  b                                           ; $42a9: $98
	cp   h                                           ; $42aa: $bc
	cp   b                                           ; $42ab: $b8
	ld   [hl], a                                     ; $42ac: $77
	sbc  b                                           ; $42ad: $98
	sbc  b                                           ; $42ae: $98
	ld   a, c                                        ; $42af: $79
	sbc  c                                           ; $42b0: $99
	add  a                                           ; $42b1: $87
	ld   d, h                                        ; $42b2: $54
	ld   b, l                                        ; $42b3: $45
	ld   d, l                                        ; $42b4: $55
	ld   a, b                                        ; $42b5: $78
	sbc  b                                           ; $42b6: $98
	xor  e                                           ; $42b7: $ab
	jp   z, $979a                                    ; $42b8: $ca $9a $97

	adc  c                                           ; $42bb: $89
	sbc  b                                           ; $42bc: $98
	ld   h, a                                        ; $42bd: $67
	adc  d                                           ; $42be: $8a
	xor  b                                           ; $42bf: $a8
	ld   h, l                                        ; $42c0: $65
	ld   d, h                                        ; $42c1: $54
	ld   b, h                                        ; $42c2: $44
	ld   l, c                                        ; $42c3: $69
	cp   b                                           ; $42c4: $b8
	ld   e, b                                        ; $42c5: $58
	xor  l                                           ; $42c6: $ad
	db   $eb                                         ; $42c7: $eb
	sbc  c                                           ; $42c8: $99
	xor  c                                           ; $42c9: $a9
	add  a                                           ; $42ca: $87
	ld   a, b                                        ; $42cb: $78
	xor  c                                           ; $42cc: $a9
	ld   [hl], l                                     ; $42cd: $75
	ld   d, [hl]                                     ; $42ce: $56
	adc  b                                           ; $42cf: $88
	ld   d, e                                        ; $42d0: $53
	ld   b, a                                        ; $42d1: $47
	sbc  c                                           ; $42d2: $99
	adc  c                                           ; $42d3: $89
	cp   d                                           ; $42d4: $ba
	sbc  b                                           ; $42d5: $98
	xor  c                                           ; $42d6: $a9
	cp   d                                           ; $42d7: $ba
	sbc  c                                           ; $42d8: $99
	adc  c                                           ; $42d9: $89
	ld   a, c                                        ; $42da: $79
	ld   a, b                                        ; $42db: $78
	ld   [hl], a                                     ; $42dc: $77
	ld   h, h                                        ; $42dd: $64
	ld   sp, $bb48                                   ; $42de: $31 $48 $bb
	sbc  b                                           ; $42e1: $98
	sbc  e                                           ; $42e2: $9b
	xor  e                                           ; $42e3: $ab
	xor  e                                           ; $42e4: $ab
	xor  c                                           ; $42e5: $a9
	halt                                             ; $42e6: $76
	ld   a, b                                        ; $42e7: $78
	adc  b                                           ; $42e8: $88
	adc  b                                           ; $42e9: $88
	sbc  b                                           ; $42ea: $98
	ld   [hl], e                                     ; $42eb: $73
	ld   de, $ca5b                                   ; $42ec: $11 $5b $ca
	ld   h, l                                        ; $42ef: $65
	sbc  h                                           ; $42f0: $9c
	call c, $aaa9                                    ; $42f1: $dc $a9 $aa
	ld   [hl], h                                     ; $42f4: $74
	ld   l, b                                        ; $42f5: $68
	xor  h                                           ; $42f6: $ac
	sub  l                                           ; $42f7: $95
	dec  [hl]                                        ; $42f8: $35
	ld   h, l                                        ; $42f9: $65
	inc  sp                                          ; $42fa: $33
	ld   l, d                                        ; $42fb: $6a
	sbc  c                                           ; $42fc: $99
	adc  c                                           ; $42fd: $89
	xor  d                                           ; $42fe: $aa
	cp   e                                           ; $42ff: $bb
	cp   c                                           ; $4300: $b9
	add  [hl]                                        ; $4301: $86
	ld   l, b                                        ; $4302: $68
	adc  c                                           ; $4303: $89
	xor  c                                           ; $4304: $a9
	ld   h, l                                        ; $4305: $65
	ld   d, l                                        ; $4306: $55
	ld   h, e                                        ; $4307: $63
	dec  [hl]                                        ; $4308: $35
	sbc  d                                           ; $4309: $9a
	cp   b                                           ; $430a: $b8
	ld   a, d                                        ; $430b: $7a
	call Call_0ca_68b9                               ; $430c: $cd $b9 $68
	sbc  b                                           ; $430f: $98
	adc  c                                           ; $4310: $89
	sbc  c                                           ; $4311: $99
	add  [hl]                                        ; $4312: $86
	ld   h, [hl]                                     ; $4313: $66
	ld   [hl], l                                     ; $4314: $75
	ld   [hl+], a                                    ; $4315: $22
	ld   c, d                                        ; $4316: $4a
	jp   z, $ae67                                    ; $4317: $ca $67 $ae

	db   $eb                                         ; $431a: $eb
	ld   [hl], a                                     ; $431b: $77
	xor  d                                           ; $431c: $aa
	xor  b                                           ; $431d: $a8
	ld   h, a                                        ; $431e: $67
	add  a                                           ; $431f: $87
	ld   [hl], a                                     ; $4320: $77
	ld   a, b                                        ; $4321: $78
	ld   d, c                                        ; $4322: $51
	inc  d                                           ; $4323: $14
	xor  h                                           ; $4324: $ac
	or   [hl]                                        ; $4325: $b6
	ld   l, c                                        ; $4326: $69
	db   $dd                                         ; $4327: $dd
	reti                                             ; $4328: $d9


	ld   a, b                                        ; $4329: $78
	xor  e                                           ; $432a: $ab
	sub  a                                           ; $432b: $97
	ld   h, a                                        ; $432c: $67
	add  a                                           ; $432d: $87
	ld   h, l                                        ; $432e: $65
	ld   b, e                                        ; $432f: $43
	dec  [hl]                                        ; $4330: $35
	sbc  h                                           ; $4331: $9c
	or   a                                           ; $4332: $b7
	ld   l, b                                        ; $4333: $68
	call $88da                                       ; $4334: $cd $da $88
	sbc  c                                           ; $4337: $99
	add  a                                           ; $4338: $87
	sbc  d                                           ; $4339: $9a
	xor  b                                           ; $433a: $a8
	ld   h, h                                        ; $433b: $64
	inc  sp                                          ; $433c: $33
	inc  [hl]                                        ; $433d: $34
	ld   a, e                                        ; $433e: $7b
	cp   c                                           ; $433f: $b9
	adc  c                                           ; $4340: $89
	cp   h                                           ; $4341: $bc
	res  5, c                                        ; $4342: $cb $a9
	adc  b                                           ; $4344: $88
	ld   [hl], a                                     ; $4345: $77
	adc  c                                           ; $4346: $89
	sub  a                                           ; $4347: $97
	ld   d, l                                        ; $4348: $55
	ld   d, h                                        ; $4349: $54
	inc  sp                                          ; $434a: $33
	ld   a, e                                        ; $434b: $7b
	jp   z, $bd88                                    ; $434c: $ca $88 $bd

	jp   z, $8899                                    ; $434f: $ca $99 $88

	add  a                                           ; $4352: $87
	ld   a, b                                        ; $4353: $78
	add  a                                           ; $4354: $87
	ld   h, l                                        ; $4355: $65
	ld   b, e                                        ; $4356: $43
	dec  [hl]                                        ; $4357: $35
	sbc  d                                           ; $4358: $9a
	xor  d                                           ; $4359: $aa
	xor  e                                           ; $435a: $ab
	cp   e                                           ; $435b: $bb
	cp   d                                           ; $435c: $ba
	sbc  c                                           ; $435d: $99
	adc  b                                           ; $435e: $88
	adc  b                                           ; $435f: $88
	halt                                             ; $4360: $76
	ld   h, [hl]                                     ; $4361: $66
	ld   h, [hl]                                     ; $4362: $66
	ld   d, e                                        ; $4363: $53
	ld   [hl], $9b                                   ; $4364: $36 $9b
	cp   d                                           ; $4366: $ba
	xor  d                                           ; $4367: $aa
	xor  d                                           ; $4368: $aa
	cp   e                                           ; $4369: $bb
	xor  b                                           ; $436a: $a8
	sbc  b                                           ; $436b: $98
	halt                                             ; $436c: $76
	ld   h, [hl]                                     ; $436d: $66
	ld   h, l                                        ; $436e: $65
	ld   d, h                                        ; $436f: $54
	ld   b, l                                        ; $4370: $45
	sbc  h                                           ; $4371: $9c
	xor  b                                           ; $4372: $a8
	sbc  e                                           ; $4373: $9b
	call Call_0ca_77b9                               ; $4374: $cd $b9 $77
	adc  d                                           ; $4377: $8a
	sbc  b                                           ; $4378: $98
	add  a                                           ; $4379: $87
	ld   h, l                                        ; $437a: $65
	ld   b, e                                        ; $437b: $43
	inc  h                                           ; $437c: $24
	ld   l, e                                        ; $437d: $6b
	cp   c                                           ; $437e: $b9
	adc  c                                           ; $437f: $89
	xor  d                                           ; $4380: $aa
	cp   d                                           ; $4381: $ba
	cp   d                                           ; $4382: $ba
	sbc  b                                           ; $4383: $98
	halt                                             ; $4384: $76
	ld   a, c                                        ; $4385: $79
	add  a                                           ; $4386: $87
	ld   d, e                                        ; $4387: $53
	ld   [hl+], a                                    ; $4388: $22
	ld   l, d                                        ; $4389: $6a
	ret                                              ; $438a: $c9


	ld   a, b                                        ; $438b: $78
	xor  l                                           ; $438c: $ad
	jp   z, $aa89                                    ; $438d: $ca $89 $aa

	add  [hl]                                        ; $4390: $86
	ld   h, a                                        ; $4391: $67
	sbc  c                                           ; $4392: $99
	ld   d, e                                        ; $4393: $53
	ld   [hl+], a                                    ; $4394: $22
	ld   e, c                                        ; $4395: $59
	cp   d                                           ; $4396: $ba
	sub  a                                           ; $4397: $97
	sbc  h                                           ; $4398: $9c
	call z, $98b9                                    ; $4399: $cc $b9 $98
	adc  c                                           ; $439c: $89
	ld   [hl], a                                     ; $439d: $77
	ld   a, c                                        ; $439e: $79
	ld   [hl], h                                     ; $439f: $74
	ld   hl, $ab26                                   ; $43a0: $21 $26 $ab
	xor  e                                           ; $43a3: $ab
	cp   e                                           ; $43a4: $bb
	xor  d                                           ; $43a5: $aa
	xor  c                                           ; $43a6: $a9
	sbc  c                                           ; $43a7: $99
	sub  a                                           ; $43a8: $97
	ld   h, [hl]                                     ; $43a9: $66
	ld   [hl], a                                     ; $43aa: $77
	ld   h, l                                        ; $43ab: $65
	ld   b, e                                        ; $43ac: $43
	ld   c, b                                        ; $43ad: $48
	xor  d                                           ; $43ae: $aa
	adc  c                                           ; $43af: $89
	call z, $87ca                                    ; $43b0: $cc $ca $87
	adc  d                                           ; $43b3: $8a
	sbc  b                                           ; $43b4: $98
	ld   [hl], a                                     ; $43b5: $77
	ld   h, [hl]                                     ; $43b6: $66
	ld   b, h                                        ; $43b7: $44
	inc  hl                                          ; $43b8: $23
	ld   a, e                                        ; $43b9: $7b
	jp   z, $ad88                                    ; $43ba: $ca $88 $ad

	res  3, c                                        ; $43bd: $cb $99
	adc  c                                           ; $43bf: $89
	add  [hl]                                        ; $43c0: $86
	ld   d, [hl]                                     ; $43c1: $56
	sub  a                                           ; $43c2: $97
	ld   d, d                                        ; $43c3: $52
	inc  d                                           ; $43c4: $14
	xor  l                                           ; $43c5: $ad
	xor  b                                           ; $43c6: $a8
	sbc  e                                           ; $43c7: $9b
	call c, $89a7                                    ; $43c8: $dc $a7 $89
	xor  c                                           ; $43cb: $a9
	ld   h, [hl]                                     ; $43cc: $66
	ld   l, b                                        ; $43cd: $68
	ld   h, h                                        ; $43ce: $64
	ld   [hl+], a                                    ; $43cf: $22
	ld   l, d                                        ; $43d0: $6a
	ret                                              ; $43d1: $c9


	ld   a, c                                        ; $43d2: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43d3: $cf
	jp   c, $9b67                                    ; $43d4: $da $67 $9b

	and  a                                           ; $43d7: $a7
	ld   d, l                                        ; $43d8: $55
	halt                                             ; $43d9: $76
	ld   sp, $cd16                                   ; $43da: $31 $16 $cd
	sub  a                                           ; $43dd: $97
	sbc  e                                           ; $43de: $9b
	db   $fd                                         ; $43df: $fd
	sub  [hl]                                        ; $43e0: $96
	ld   a, d                                        ; $43e1: $7a
	xor  b                                           ; $43e2: $a8
	ld   b, l                                        ; $43e3: $45
	ld   a, d                                        ; $43e4: $7a
	ld   h, e                                        ; $43e5: $63
	ld   [de], a                                     ; $43e6: $12
	sbc  l                                           ; $43e7: $9d
	rst  $10                                         ; $43e8: $d7
	ld   a, b                                        ; $43e9: $78
	sbc  $b8                                         ; $43ea: $de $b8
	ld   e, b                                        ; $43ec: $58
	sbc  e                                           ; $43ed: $9b
	ld   [hl], h                                     ; $43ee: $74
	ld   d, [hl]                                     ; $43ef: $56
	add  h                                           ; $43f0: $84
	ld   sp, $ea7d                                   ; $43f1: $31 $7d $ea
	ld   h, a                                        ; $43f4: $67
	xor  a                                           ; $43f5: $af
	ret                                              ; $43f6: $c9


	ld   d, [hl]                                     ; $43f7: $56
	xor  e                                           ; $43f8: $ab
	sub  h                                           ; $43f9: $94
	ld   h, [hl]                                     ; $43fa: $66
	add  l                                           ; $43fb: $85
	ld   hl, $fd4d                                   ; $43fc: $21 $4d $fd
	ld   h, [hl]                                     ; $43ff: $66
	adc  [hl]                                        ; $4400: $8e
	db   $db                                         ; $4401: $db
	halt                                             ; $4402: $76
	xor  c                                           ; $4403: $a9
	ld   [hl], e                                     ; $4404: $73
	ld   b, l                                        ; $4405: $45
	ld   [hl], a                                     ; $4406: $77
	ld   b, e                                        ; $4407: $43
	ld   l, h                                        ; $4408: $6c
	db   $eb                                         ; $4409: $eb
	ld   [hl], a                                     ; $440a: $77
	cp   l                                           ; $440b: $bd
	ret  c                                           ; $440c: $d8

	ld   d, l                                        ; $440d: $55
	ld   a, b                                        ; $440e: $78
	add  [hl]                                        ; $440f: $86
	ld   h, a                                        ; $4410: $67
	ld   h, e                                        ; $4411: $63
	inc  hl                                          ; $4412: $23
	sbc  [hl]                                        ; $4413: $9e
	jp   hl                                          ; $4414: $e9


	ld   a, c                                        ; $4415: $79
	rst  JumpTable                                         ; $4416: $df
	or   a                                           ; $4417: $b7
	ld   b, [hl]                                     ; $4418: $46
	sbc  d                                           ; $4419: $9a
	ld   [hl], h                                     ; $441a: $74
	ld   d, [hl]                                     ; $441b: $56
	ld   d, h                                        ; $441c: $54
	dec  [hl]                                        ; $441d: $35
	adc  $ca                                         ; $441e: $ce $ca
	sbc  d                                           ; $4420: $9a
	call Call_0ca_5795                               ; $4421: $cd $95 $57
	sbc  b                                           ; $4424: $98
	ld   h, h                                        ; $4425: $64
	ld   b, h                                        ; $4426: $44
	ld   b, h                                        ; $4427: $44
	ld   a, e                                        ; $4428: $7b
	db   $db                                         ; $4429: $db
	xor  d                                           ; $442a: $aa
	xor  l                                           ; $442b: $ad
	jp   c, Jump_0ca_6765                            ; $442c: $da $65 $67

	sub  a                                           ; $442f: $97
	ld   d, h                                        ; $4430: $54
	inc  sp                                          ; $4431: $33
	ld   [hl], $ad                                   ; $4432: $36 $ad
	jp   z, $ccbb                                    ; $4434: $ca $bb $cc

	sub  [hl]                                        ; $4437: $96
	ld   h, a                                        ; $4438: $67
	adc  b                                           ; $4439: $88
	ld   d, l                                        ; $443a: $55
	ld   b, h                                        ; $443b: $44
	inc  [hl]                                        ; $443c: $34
	ld   l, e                                        ; $443d: $6b
	call c, $bbcb                                    ; $443e: $dc $cb $bb
	cp   b                                           ; $4441: $b8
	ld   h, [hl]                                     ; $4442: $66
	ld   a, c                                        ; $4443: $79
	add  [hl]                                        ; $4444: $86
	ld   b, e                                        ; $4445: $43
	inc  sp                                          ; $4446: $33
	ld   e, b                                        ; $4447: $58
	db   $dd                                         ; $4448: $dd
	ret                                              ; $4449: $c9


	xor  e                                           ; $444a: $ab
	db   $dd                                         ; $444b: $dd
	add  [hl]                                        ; $444c: $86
	ld   d, [hl]                                     ; $444d: $56
	ld   [hl], a                                     ; $444e: $77
	ld   h, h                                        ; $444f: $64
	inc  sp                                          ; $4450: $33
	dec  [hl]                                        ; $4451: $35
	xor  l                                           ; $4452: $ad
	db   $dd                                         ; $4453: $dd
	cp   d                                           ; $4454: $ba
	cp   h                                           ; $4455: $bc
	xor  b                                           ; $4456: $a8
	ld   d, l                                        ; $4457: $55
	ld   h, a                                        ; $4458: $67
	halt                                             ; $4459: $76
	ld   b, d                                        ; $445a: $42
	inc  h                                           ; $445b: $24
	sbc  h                                           ; $445c: $9c
	call c, $cccb                                    ; $445d: $dc $cb $cc
	sub  a                                           ; $4460: $97
	ld   d, l                                        ; $4461: $55
	ld   h, a                                        ; $4462: $67
	ld   h, l                                        ; $4463: $65
	ld   b, e                                        ; $4464: $43
	inc  hl                                          ; $4465: $23
	ld   a, h                                        ; $4466: $7c
	db   $ed                                         ; $4467: $ed

Jump_0ca_4468:
	cp   d                                           ; $4468: $ba
	xor  h                                           ; $4469: $ac
	ret                                              ; $446a: $c9


	ld   d, l                                        ; $446b: $55
	ld   d, a                                        ; $446c: $57
	add  [hl]                                        ; $446d: $86
	ld   b, e                                        ; $446e: $43
	inc  hl                                          ; $446f: $23
	ld   a, d                                        ; $4470: $7a
	db   $dd                                         ; $4471: $dd
	call c, $98ab                                    ; $4472: $dc $ab $98
	ld   [hl], l                                     ; $4475: $75
	ld   b, l                                        ; $4476: $45
	ld   h, [hl]                                     ; $4477: $66
	ld   d, e                                        ; $4478: $53
	inc  sp                                          ; $4479: $33
	ld   a, h                                        ; $447a: $7c
	xor  $ec                                         ; $447b: $ee $ec
	xor  d                                           ; $447d: $aa
	xor  c                                           ; $447e: $a9
	ld   h, l                                        ; $447f: $65
	ld   b, l                                        ; $4480: $45
	ld   h, [hl]                                     ; $4481: $66
	ld   d, e                                        ; $4482: $53
	inc  hl                                          ; $4483: $23
	sbc  [hl]                                        ; $4484: $9e
	cp   $ca                                         ; $4485: $fe $ca
	xor  d                                           ; $4487: $aa
	sbc  b                                           ; $4488: $98
	ld   h, l                                        ; $4489: $65
	ld   b, l                                        ; $448a: $45
	ld   d, l                                        ; $448b: $55
	ld   b, h                                        ; $448c: $44
	ld   b, l                                        ; $448d: $45
	xor  h                                           ; $448e: $ac
	sbc  $eb                                         ; $448f: $de $eb
	xor  c                                           ; $4491: $a9
	ld   [hl], a                                     ; $4492: $77
	ld   h, l                                        ; $4493: $65
	ld   b, l                                        ; $4494: $45
	ld   h, [hl]                                     ; $4495: $66
	ld   d, e                                        ; $4496: $53
	ld   [hl], $bd                                   ; $4497: $36 $bd
	db   $ed                                         ; $4499: $ed
	cp   e                                           ; $449a: $bb
	ret                                              ; $449b: $c9


	ld   [hl], l                                     ; $449c: $75
	ld   b, h                                        ; $449d: $44
	ld   d, [hl]                                     ; $449e: $56
	ld   h, l                                        ; $449f: $65
	ld   [hl-], a                                    ; $44a0: $32
	ld   c, c                                        ; $44a1: $49
	rst  JumpTable                                         ; $44a2: $df
	db   $ed                                         ; $44a3: $ed
	cp   e                                           ; $44a4: $bb
	xor  c                                           ; $44a5: $a9
	ld   [hl], l                                     ; $44a6: $75

Call_0ca_44a7:
	ld   b, l                                        ; $44a7: $45
	ld   h, l                                        ; $44a8: $65
	ld   b, d                                        ; $44a9: $42
	dec  h                                           ; $44aa: $25
	sbc  [hl]                                        ; $44ab: $9e
	cp   $da                                         ; $44ac: $fe $da
	cp   e                                           ; $44ae: $bb
	sub  a                                           ; $44af: $97
	ld   h, h                                        ; $44b0: $64
	inc  [hl]                                        ; $44b1: $34
	ld   d, [hl]                                     ; $44b2: $56
	ld   d, e                                        ; $44b3: $53
	scf                                              ; $44b4: $37
	adc  $fe                                         ; $44b5: $ce $fe
	ret                                              ; $44b7: $c9


	sbc  b                                           ; $44b8: $98
	add  a                                           ; $44b9: $87
	ld   d, h                                        ; $44ba: $54
	ld   b, h                                        ; $44bb: $44
	ld   b, h                                        ; $44bc: $44
	ld   b, e                                        ; $44bd: $43
	ld   l, d                                        ; $44be: $6a
	rst  $28                                         ; $44bf: $ef
	db   $fc                                         ; $44c0: $fc
	adc  b                                           ; $44c1: $88
	adc  c                                           ; $44c2: $89
	and  a                                           ; $44c3: $a7
	ld   [hl-], a                                    ; $44c4: $32
	inc  [hl]                                        ; $44c5: $34
	ld   d, l                                        ; $44c6: $55
	ld   b, a                                        ; $44c7: $47
	adc  $fe                                         ; $44c8: $ce $fe
	cp   c                                           ; $44ca: $b9
	adc  d                                           ; $44cb: $8a
	xor  b                                           ; $44cc: $a8
	ld   d, e                                        ; $44cd: $53
	inc  hl                                          ; $44ce: $23
	ld   b, l                                        ; $44cf: $45
	ld   b, l                                        ; $44d0: $45
	adc  h                                           ; $44d1: $8c
	rst  $38                                         ; $44d2: $ff
	jp   c, $9a9a                                    ; $44d3: $da $9a $9a

	add  l                                           ; $44d6: $85
	ld   [hl-], a                                    ; $44d7: $32
	inc  [hl]                                        ; $44d8: $34
	ld   d, l                                        ; $44d9: $55
	ld   l, c                                        ; $44da: $69
	adc  $fd                                         ; $44db: $ce $fd
	xor  c                                           ; $44dd: $a9
	sbc  d                                           ; $44de: $9a
	sub  a                                           ; $44df: $97
	ld   b, d                                        ; $44e0: $42
	inc  [hl]                                        ; $44e1: $34
	ld   d, l                                        ; $44e2: $55
	ld   b, [hl]                                     ; $44e3: $46
	sbc  l                                           ; $44e4: $9d
	cp   $d9                                         ; $44e5: $fe $d9
	adc  c                                           ; $44e7: $89
	xor  d                                           ; $44e8: $aa
	add  l                                           ; $44e9: $85
	ld   [hl+], a                                    ; $44ea: $22
	inc  [hl]                                        ; $44eb: $34
	ld   h, [hl]                                     ; $44ec: $66
	ld   a, e                                        ; $44ed: $7b
	sbc  $db                                         ; $44ee: $de $db
	sbc  c                                           ; $44f0: $99
	sbc  d                                           ; $44f1: $9a
	sub  a                                           ; $44f2: $97
	ld   [hl-], a                                    ; $44f3: $32
	inc  hl                                          ; $44f4: $23
	ld   d, [hl]                                     ; $44f5: $56
	ld   a, c                                        ; $44f6: $79
	cp   l                                           ; $44f7: $bd
	db   $dd                                         ; $44f8: $dd
	xor  c                                           ; $44f9: $a9
	sbc  c                                           ; $44fa: $99
	sbc  b                                           ; $44fb: $98
	ld   d, e                                        ; $44fc: $53
	ld   [hl+], a                                    ; $44fd: $22
	dec  [hl]                                        ; $44fe: $35
	ld   a, c                                        ; $44ff: $79
	cp   l                                           ; $4500: $bd
	db   $ed                                         ; $4501: $ed
	ret                                              ; $4502: $c9


	sbc  c                                           ; $4503: $99
	sbc  c                                           ; $4504: $99
	ld   [hl], e                                     ; $4505: $73
	ld   de, $6925                                   ; $4506: $11 $25 $69
	xor  l                                           ; $4509: $ad
	sbc  $c9                                         ; $450a: $de $c9
	adc  b                                           ; $450c: $88
	sbc  d                                           ; $450d: $9a
	sub  l                                           ; $450e: $95
	ld   hl, $5913                                   ; $450f: $21 $13 $59
	cp   [hl]                                        ; $4512: $be
	db   $ec                                         ; $4513: $ec
	cp   c                                           ; $4514: $b9
	sbc  c                                           ; $4515: $99
	xor  c                                           ; $4516: $a9
	sub  l                                           ; $4517: $95
	ld   sp, $4711                                   ; $4518: $31 $11 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $451b: $cf
	db   $fd                                         ; $451c: $fd
	cp   c                                           ; $451d: $b9
	adc  c                                           ; $451e: $89
	xor  d                                           ; $451f: $aa
	sub  [hl]                                        ; $4520: $96
	ld   sp, $3711                                   ; $4521: $31 $11 $37
	rst  JumpTable                                         ; $4524: $df
	cp   $b9                                         ; $4525: $fe $b9
	sbc  d                                           ; $4527: $9a
	xor  d                                           ; $4528: $aa
	sub  [hl]                                        ; $4529: $96
	ld   sp, $3811                                   ; $452a: $31 $11 $38
	rst  $28                                         ; $452d: $ef
	cp   $b8                                         ; $452e: $fe $b8
	sbc  c                                           ; $4530: $99
	cp   d                                           ; $4531: $ba
	sub  l                                           ; $4532: $95
	ld   sp, $2911                                   ; $4533: $31 $11 $29
	rst  $28                                         ; $4536: $ef
	db   $fd                                         ; $4537: $fd
	sub  a                                           ; $4538: $97
	sbc  d                                           ; $4539: $9a
	xor  c                                           ; $453a: $a9
	ld   [hl], l                                     ; $453b: $75
	ld   hl, $3b11                                   ; $453c: $21 $11 $3b
	rst  $38                                         ; $453f: $ff
	ei                                               ; $4540: $fb
	ld   [hl], a                                     ; $4541: $77
	sbc  d                                           ; $4542: $9a
	cp   c                                           ; $4543: $b9
	ld   h, e                                        ; $4544: $63
	ld   de, $7f11                                   ; $4545: $11 $11 $7f
	rst  $38                                         ; $4548: $ff
	add  sp, $68                                     ; $4549: $e8 $68
	xor  h                                           ; $454b: $ac
	and  a                                           ; $454c: $a7
	ld   b, c                                        ; $454d: $41
	ld   de, $df16                                   ; $454e: $11 $16 $df
	rst  $38                                         ; $4551: $ff
	sub  [hl]                                        ; $4552: $96
	ld   a, d                                        ; $4553: $7a
	res  0, l                                        ; $4554: $cb $85
	ld   hl, $5d11                                   ; $4556: $21 $11 $5d
	rst  $38                                         ; $4559: $ff
	ld   sp, hl                                      ; $455a: $f9
	ld   d, a                                        ; $455b: $57
	xor  h                                           ; $455c: $ac
	ret  z                                           ; $455d: $c8

	ld   b, c                                        ; $455e: $41
	ld   de, $df16                                   ; $455f: $11 $16 $df
	db   $fd                                         ; $4562: $fd
	add  l                                           ; $4563: $85
	ld   a, d                                        ; $4564: $7a
	res  0, h                                        ; $4565: $cb $84
	ld   de, $7f11                                   ; $4567: $11 $11 $7f
	rst  $38                                         ; $456a: $ff
	rst  ToBoot                                         ; $456b: $c7
	ld   e, b                                        ; $456c: $58
	xor  h                                           ; $456d: $ac
	or   a                                           ; $456e: $b7
	ld   sp, $3a11                                   ; $456f: $31 $11 $3a
	rst  $38                                         ; $4572: $ff
	ei                                               ; $4573: $fb
	ld   d, l                                        ; $4574: $55
	adc  e                                           ; $4575: $8b
	jp   c, $1162                                    ; $4576: $da $62 $11

	ld   d, $df                                      ; $4579: $16 $df
	cp   $75                                         ; $457b: $fe $75
	ld   a, d                                        ; $457d: $7a
	db   $db                                         ; $457e: $db
	add  h                                           ; $457f: $84
	ld   de, $9f13                                   ; $4580: $11 $13 $9f
	rst  $38                                         ; $4583: $ff
	and  [hl]                                        ; $4584: $a6
	ld   e, c                                        ; $4585: $59
	cp   h                                           ; $4586: $bc
	and  [hl]                                        ; $4587: $a6
	ld   hl, $8e11                                   ; $4588: $21 $11 $8e
	rst  $38                                         ; $458b: $ff
	add  $58                                         ; $458c: $c6 $58
	cp   h                                           ; $458e: $bc
	and  [hl]                                        ; $458f: $a6
	ld   de, $9e11                                   ; $4590: $11 $11 $9e
	rst  $38                                         ; $4593: $ff
	or   a                                           ; $4594: $b7
	ld   l, b                                        ; $4595: $68
	call $11a5                                       ; $4596: $cd $a5 $11
	inc  de                                          ; $4599: $13
	sbc  l                                           ; $459a: $9d
	db   $fd                                         ; $459b: $fd
	or   a                                           ; $459c: $b7
	ld   a, c                                        ; $459d: $79
	res  2, l                                        ; $459e: $cb $95
	ld   de, $9d13                                   ; $45a0: $11 $13 $9d
	xor  $a7                                         ; $45a3: $ee $a7
	ld   a, d                                        ; $45a5: $7a
	res  2, l                                        ; $45a6: $cb $95
	ld   de, $be15                                   ; $45a8: $11 $15 $be
	db   $eb                                         ; $45ab: $eb
	sub  [hl]                                        ; $45ac: $96
	adc  d                                           ; $45ad: $8a
	res  0, h                                        ; $45ae: $cb $84
	ld   de, $ae26                                   ; $45b0: $11 $26 $ae
	db   $eb                                         ; $45b3: $eb
	sub  [hl]                                        ; $45b4: $96
	sbc  d                                           ; $45b5: $9a
	bit  6, e                                        ; $45b6: $cb $73
	ld   de, $cd27                                   ; $45b8: $11 $27 $cd
	db   $db                                         ; $45bb: $db
	add  [hl]                                        ; $45bc: $86
	sbc  e                                           ; $45bd: $9b
	res  0, e                                        ; $45be: $cb $83
	ld   de, $ce38                                   ; $45c0: $11 $38 $ce
	jp   z, $9b76                                    ; $45c3: $ca $76 $9b

	jp   z, $3274                                    ; $45c6: $ca $74 $32

	ld   h, $ae                                      ; $45c9: $26 $ae
	db   $eb                                         ; $45cb: $eb
	halt                                             ; $45cc: $76
	ld   a, d                                        ; $45cd: $7a
	jp   z, $2274                                    ; $45ce: $ca $74 $22

	ld   c, b                                        ; $45d1: $48
	call Call_0ca_77b9                               ; $45d2: $cd $b9 $77
	adc  d                                           ; $45d5: $8a
	cp   d                                           ; $45d6: $ba
	ld   [hl], h                                     ; $45d7: $74
	ld   hl, $dd5a                                   ; $45d8: $21 $5a $dd
	cp   b                                           ; $45db: $b8
	ld   d, a                                        ; $45dc: $57
	xor  e                                           ; $45dd: $ab
	cp   b                                           ; $45de: $b8
	ld   d, d                                        ; $45df: $52
	dec  h                                           ; $45e0: $25
	xor  h                                           ; $45e1: $ac
	db   $db                                         ; $45e2: $db
	add  [hl]                                        ; $45e3: $86
	ld   a, c                                        ; $45e4: $79
	cp   d                                           ; $45e5: $ba
	add  l                                           ; $45e6: $85
	inc  sp                                          ; $45e7: $33
	ld   e, b                                        ; $45e8: $58
	cp   e                                           ; $45e9: $bb
	ret                                              ; $45ea: $c9


	ld   [hl], a                                     ; $45eb: $77
	sbc  c                                           ; $45ec: $99
	xor  c                                           ; $45ed: $a9
	ld   h, h                                        ; $45ee: $64
	inc  [hl]                                        ; $45ef: $34
	ld   a, e                                        ; $45f0: $7b
	call c, $6897                                    ; $45f1: $dc $97 $68
	sbc  d                                           ; $45f4: $9a
	and  [hl]                                        ; $45f5: $a6
	ld   b, e                                        ; $45f6: $43
	ld   e, b                                        ; $45f7: $58
	cp   h                                           ; $45f8: $bc
	cp   c                                           ; $45f9: $b9
	ld   h, [hl]                                     ; $45fa: $66
	sbc  d                                           ; $45fb: $9a
	xor  b                                           ; $45fc: $a8
	ld   h, h                                        ; $45fd: $64
	ld   b, l                                        ; $45fe: $45
	adc  e                                           ; $45ff: $8b
	res  0, a                                        ; $4600: $cb $87
	ld   a, c                                        ; $4602: $79
	sbc  c                                           ; $4603: $99
	add  [hl]                                        ; $4604: $86
	ld   d, l                                        ; $4605: $55
	ld   l, c                                        ; $4606: $69
	cp   e                                           ; $4607: $bb
	cp   b                                           ; $4608: $b8
	ld   [hl], a                                     ; $4609: $77
	sbc  c                                           ; $460a: $99
	sbc  b                                           ; $460b: $98
	ld   h, h                                        ; $460c: $64
	ld   d, a                                        ; $460d: $57
	xor  e                                           ; $460e: $ab
	cp   c                                           ; $460f: $b9
	halt                                             ; $4610: $76
	ld   a, c                                        ; $4611: $79
	sbc  b                                           ; $4612: $98
	ld   [hl], l                                     ; $4613: $75
	ld   b, [hl]                                     ; $4614: $46
	adc  d                                           ; $4615: $8a
	cp   d                                           ; $4616: $ba
	sub  a                                           ; $4617: $97
	ld   a, c                                        ; $4618: $79
	sbc  b                                           ; $4619: $98
	halt                                             ; $461a: $76
	ld   d, l                                        ; $461b: $55
	ld   a, d                                        ; $461c: $7a
	xor  e                                           ; $461d: $ab
	xor  b                                           ; $461e: $a8
	ld   a, b                                        ; $461f: $78
	adc  b                                           ; $4620: $88
	add  a                                           ; $4621: $87
	ld   h, l                                        ; $4622: $65
	ld   l, b                                        ; $4623: $68
	xor  e                                           ; $4624: $ab
	xor  b                                           ; $4625: $a8
	ld   [hl], a                                     ; $4626: $77
	sbc  c                                           ; $4627: $99
	sbc  b                                           ; $4628: $98
	ld   h, l                                        ; $4629: $65
	ld   d, a                                        ; $462a: $57
	sbc  d                                           ; $462b: $9a
	cp   c                                           ; $462c: $b9
	ld   [hl], a                                     ; $462d: $77
	adc  c                                           ; $462e: $89
	sbc  c                                           ; $462f: $99
	halt                                             ; $4630: $76
	ld   d, [hl]                                     ; $4631: $56
	adc  d                                           ; $4632: $8a
	xor  c                                           ; $4633: $a9
	add  a                                           ; $4634: $87
	ld   a, c                                        ; $4635: $79
	adc  c                                           ; $4636: $89
	halt                                             ; $4637: $76
	ld   h, [hl]                                     ; $4638: $66
	adc  c                                           ; $4639: $89
	cp   d                                           ; $463a: $ba
	add  a                                           ; $463b: $87
	ld   a, b                                        ; $463c: $78
	adc  c                                           ; $463d: $89
	halt                                             ; $463e: $76
	ld   d, [hl]                                     ; $463f: $56
	adc  c                                           ; $4640: $89
	xor  d                                           ; $4641: $aa
	add  a                                           ; $4642: $87
	ld   a, b                                        ; $4643: $78
	adc  b                                           ; $4644: $88
	add  [hl]                                        ; $4645: $86
	ld   h, [hl]                                     ; $4646: $66
	ld   a, d                                        ; $4647: $7a
	cp   d                                           ; $4648: $ba
	sub  a                                           ; $4649: $97
	ld   a, b                                        ; $464a: $78
	sbc  c                                           ; $464b: $99
	add  [hl]                                        ; $464c: $86
	ld   h, [hl]                                     ; $464d: $66
	adc  d                                           ; $464e: $8a
	xor  d                                           ; $464f: $aa
	add  a                                           ; $4650: $87
	ld   [hl], a                                     ; $4651: $77
	adc  c                                           ; $4652: $89
	add  a                                           ; $4653: $87
	ld   h, [hl]                                     ; $4654: $66
	adc  d                                           ; $4655: $8a
	cp   d                                           ; $4656: $ba
	add  a                                           ; $4657: $87
	ld   a, b                                        ; $4658: $78
	sbc  c                                           ; $4659: $99
	halt                                             ; $465a: $76
	ld   h, a                                        ; $465b: $67
	xor  d                                           ; $465c: $aa
	cp   d                                           ; $465d: $ba
	halt                                             ; $465e: $76
	ld   a, b                                        ; $465f: $78
	adc  b                                           ; $4660: $88
	halt                                             ; $4661: $76
	ld   h, a                                        ; $4662: $67
	xor  d                                           ; $4663: $aa
	xor  b                                           ; $4664: $a8
	halt                                             ; $4665: $76
	ld   a, c                                        ; $4666: $79
	add  a                                           ; $4667: $87
	ld   h, l                                        ; $4668: $65
	ld   a, c                                        ; $4669: $79
	cp   d                                           ; $466a: $ba
	sub  [hl]                                        ; $466b: $96
	ld   h, a                                        ; $466c: $67
	sbc  c                                           ; $466d: $99
	add  a                                           ; $466e: $87
	ld   h, a                                        ; $466f: $67
	sbc  d                                           ; $4670: $9a
	xor  c                                           ; $4671: $a9
	ld   h, [hl]                                     ; $4672: $66
	ld   a, c                                        ; $4673: $79
	sbc  b                                           ; $4674: $98
	ld   h, [hl]                                     ; $4675: $66
	ld   a, c                                        ; $4676: $79
	cp   d                                           ; $4677: $ba
	add  [hl]                                        ; $4678: $86
	ld   d, a                                        ; $4679: $57
	sbc  c                                           ; $467a: $99
	add  [hl]                                        ; $467b: $86
	ld   h, a                                        ; $467c: $67
	xor  e                                           ; $467d: $ab
	cp   b                                           ; $467e: $b8
	ld   h, [hl]                                     ; $467f: $66
	ld   a, c                                        ; $4680: $79
	add  a                                           ; $4681: $87
	ld   h, [hl]                                     ; $4682: $66
	adc  e                                           ; $4683: $8b
	cp   c                                           ; $4684: $b9
	halt                                             ; $4685: $76
	ld   l, b                                        ; $4686: $68
	sbc  b                                           ; $4687: $98
	halt                                             ; $4688: $76
	ld   l, b                                        ; $4689: $68
	cp   d                                           ; $468a: $ba
	sub  a                                           ; $468b: $97
	ld   h, a                                        ; $468c: $67
	adc  c                                           ; $468d: $89
	add  a                                           ; $468e: $87
	ld   h, a                                        ; $468f: $67
	xor  d                                           ; $4690: $aa
	xor  b                                           ; $4691: $a8
	ld   h, [hl]                                     ; $4692: $66
	ld   a, b                                        ; $4693: $78
	sbc  b                                           ; $4694: $98
	ld   h, [hl]                                     ; $4695: $66
	adc  d                                           ; $4696: $8a
	xor  c                                           ; $4697: $a9
	halt                                             ; $4698: $76
	ld   l, b                                        ; $4699: $68
	sbc  b                                           ; $469a: $98
	halt                                             ; $469b: $76
	ld   a, b                                        ; $469c: $78
	xor  e                                           ; $469d: $ab
	sub  a                                           ; $469e: $97
	ld   h, a                                        ; $469f: $67
	sbc  c                                           ; $46a0: $99
	sub  a                                           ; $46a1: $97
	ld   h, a                                        ; $46a2: $67
	sbc  d                                           ; $46a3: $9a
	sbc  b                                           ; $46a4: $98
	ld   h, [hl]                                     ; $46a5: $66
	ld   a, b                                        ; $46a6: $78
	adc  b                                           ; $46a7: $88
	ld   h, a                                        ; $46a8: $67
	adc  c                                           ; $46a9: $89
	xor  c                                           ; $46aa: $a9
	halt                                             ; $46ab: $76
	ld   a, b                                        ; $46ac: $78
	adc  c                                           ; $46ad: $89
	ld   [hl], a                                     ; $46ae: $77
	ld   a, c                                        ; $46af: $79
	xor  d                                           ; $46b0: $aa
	sub  a                                           ; $46b1: $97
	ld   [hl], a                                     ; $46b2: $77
	sbc  c                                           ; $46b3: $99
	add  a                                           ; $46b4: $87
	ld   a, b                                        ; $46b5: $78
	adc  c                                           ; $46b6: $89
	sbc  b                                           ; $46b7: $98
	ld   [hl], a                                     ; $46b8: $77
	adc  c                                           ; $46b9: $89
	sbc  b                                           ; $46ba: $98
	ld   [hl], a                                     ; $46bb: $77
	adc  b                                           ; $46bc: $88
	sbc  c                                           ; $46bd: $99
	ld   [hl], a                                     ; $46be: $77
	ld   a, b                                        ; $46bf: $78
	sbc  b                                           ; $46c0: $98
	add  a                                           ; $46c1: $87
	adc  c                                           ; $46c2: $89
	adc  c                                           ; $46c3: $89
	add  a                                           ; $46c4: $87
	ld   a, b                                        ; $46c5: $78
	adc  b                                           ; $46c6: $88
	add  a                                           ; $46c7: $87
	adc  b                                           ; $46c8: $88
	sbc  c                                           ; $46c9: $99
	adc  b                                           ; $46ca: $88
	ld   a, b                                        ; $46cb: $78
	adc  b                                           ; $46cc: $88
	adc  b                                           ; $46cd: $88
	adc  b                                           ; $46ce: $88
	adc  c                                           ; $46cf: $89
	sbc  b                                           ; $46d0: $98
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

Call_0ca_4c9b:
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
	adc  b                                           ; $4ce8: $88
	adc  b                                           ; $4ce9: $88
	adc  b                                           ; $4cea: $88
	adc  b                                           ; $4ceb: $88
	adc  b                                           ; $4cec: $88
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	adc  b                                           ; $4cef: $88
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	adc  b                                           ; $4cf2: $88
	adc  b                                           ; $4cf3: $88
	adc  b                                           ; $4cf4: $88
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	adc  b                                           ; $4cf9: $88
	adc  b                                           ; $4cfa: $88
	adc  b                                           ; $4cfb: $88
	adc  b                                           ; $4cfc: $88
	adc  b                                           ; $4cfd: $88
	adc  b                                           ; $4cfe: $88
	adc  b                                           ; $4cff: $88
	adc  b                                           ; $4d00: $88
	adc  b                                           ; $4d01: $88
	adc  b                                           ; $4d02: $88
	adc  b                                           ; $4d03: $88
	adc  b                                           ; $4d04: $88
	adc  b                                           ; $4d05: $88
	adc  b                                           ; $4d06: $88
	adc  b                                           ; $4d07: $88
	adc  b                                           ; $4d08: $88
	adc  b                                           ; $4d09: $88
	adc  b                                           ; $4d0a: $88
	adc  b                                           ; $4d0b: $88
	adc  b                                           ; $4d0c: $88
	adc  b                                           ; $4d0d: $88
	adc  b                                           ; $4d0e: $88
	adc  b                                           ; $4d0f: $88
	adc  b                                           ; $4d10: $88
	adc  b                                           ; $4d11: $88
	adc  b                                           ; $4d12: $88
	adc  b                                           ; $4d13: $88
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	adc  b                                           ; $4d16: $88
	adc  b                                           ; $4d17: $88
	adc  b                                           ; $4d18: $88
	adc  b                                           ; $4d19: $88
	adc  b                                           ; $4d1a: $88
	adc  b                                           ; $4d1b: $88
	adc  b                                           ; $4d1c: $88
	adc  b                                           ; $4d1d: $88
	adc  b                                           ; $4d1e: $88
	adc  b                                           ; $4d1f: $88
	adc  b                                           ; $4d20: $88
	adc  b                                           ; $4d21: $88
	adc  b                                           ; $4d22: $88
	adc  b                                           ; $4d23: $88
	adc  b                                           ; $4d24: $88
	adc  b                                           ; $4d25: $88
	adc  b                                           ; $4d26: $88
	adc  b                                           ; $4d27: $88
	adc  b                                           ; $4d28: $88
	adc  b                                           ; $4d29: $88
	adc  b                                           ; $4d2a: $88
	adc  b                                           ; $4d2b: $88
	adc  b                                           ; $4d2c: $88
	adc  b                                           ; $4d2d: $88
	adc  b                                           ; $4d2e: $88
	adc  b                                           ; $4d2f: $88
	adc  b                                           ; $4d30: $88
	adc  b                                           ; $4d31: $88
	adc  b                                           ; $4d32: $88
	adc  b                                           ; $4d33: $88
	adc  b                                           ; $4d34: $88
	adc  b                                           ; $4d35: $88
	adc  b                                           ; $4d36: $88
	adc  b                                           ; $4d37: $88
	adc  b                                           ; $4d38: $88
	adc  b                                           ; $4d39: $88
	adc  b                                           ; $4d3a: $88
	adc  b                                           ; $4d3b: $88
	adc  b                                           ; $4d3c: $88
	adc  b                                           ; $4d3d: $88
	adc  b                                           ; $4d3e: $88
	adc  b                                           ; $4d3f: $88
	adc  b                                           ; $4d40: $88
	adc  b                                           ; $4d41: $88
	adc  b                                           ; $4d42: $88
	adc  b                                           ; $4d43: $88
	adc  b                                           ; $4d44: $88
	adc  b                                           ; $4d45: $88
	adc  b                                           ; $4d46: $88
	adc  b                                           ; $4d47: $88
	adc  b                                           ; $4d48: $88
	adc  b                                           ; $4d49: $88
	adc  b                                           ; $4d4a: $88
	adc  b                                           ; $4d4b: $88
	adc  b                                           ; $4d4c: $88
	adc  b                                           ; $4d4d: $88
	adc  b                                           ; $4d4e: $88
	adc  b                                           ; $4d4f: $88
	adc  b                                           ; $4d50: $88
	adc  b                                           ; $4d51: $88
	adc  b                                           ; $4d52: $88
	adc  b                                           ; $4d53: $88
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	adc  b                                           ; $4d57: $88
	adc  b                                           ; $4d58: $88
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	adc  b                                           ; $4d5b: $88
	adc  b                                           ; $4d5c: $88
	adc  b                                           ; $4d5d: $88
	adc  b                                           ; $4d5e: $88
	adc  b                                           ; $4d5f: $88
	adc  b                                           ; $4d60: $88
	adc  b                                           ; $4d61: $88
	adc  b                                           ; $4d62: $88
	adc  b                                           ; $4d63: $88
	adc  b                                           ; $4d64: $88
	adc  b                                           ; $4d65: $88
	adc  b                                           ; $4d66: $88
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	adc  b                                           ; $4d69: $88
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	adc  b                                           ; $4d6c: $88
	adc  b                                           ; $4d6d: $88
	adc  b                                           ; $4d6e: $88
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	adc  b                                           ; $4d71: $88
	adc  b                                           ; $4d72: $88
	adc  b                                           ; $4d73: $88
	adc  b                                           ; $4d74: $88
	adc  b                                           ; $4d75: $88
	adc  b                                           ; $4d76: $88
	adc  b                                           ; $4d77: $88
	adc  b                                           ; $4d78: $88
	adc  b                                           ; $4d79: $88
	adc  b                                           ; $4d7a: $88
	adc  b                                           ; $4d7b: $88
	adc  b                                           ; $4d7c: $88
	adc  b                                           ; $4d7d: $88
	adc  b                                           ; $4d7e: $88
	adc  b                                           ; $4d7f: $88
	adc  b                                           ; $4d80: $88
	adc  b                                           ; $4d81: $88
	adc  b                                           ; $4d82: $88
	adc  b                                           ; $4d83: $88
	adc  b                                           ; $4d84: $88
	adc  b                                           ; $4d85: $88
	adc  b                                           ; $4d86: $88
	adc  b                                           ; $4d87: $88
	adc  b                                           ; $4d88: $88
	adc  b                                           ; $4d89: $88
	adc  b                                           ; $4d8a: $88
	adc  b                                           ; $4d8b: $88
	adc  b                                           ; $4d8c: $88
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	adc  b                                           ; $4d8f: $88
	adc  b                                           ; $4d90: $88
	adc  b                                           ; $4d91: $88
	adc  b                                           ; $4d92: $88
	adc  b                                           ; $4d93: $88
	adc  b                                           ; $4d94: $88
	adc  b                                           ; $4d95: $88
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	adc  b                                           ; $4d98: $88
	adc  b                                           ; $4d99: $88
	adc  b                                           ; $4d9a: $88
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	adc  b                                           ; $4d9d: $88
	adc  b                                           ; $4d9e: $88
	adc  b                                           ; $4d9f: $88
	adc  b                                           ; $4da0: $88
	adc  b                                           ; $4da1: $88
	adc  b                                           ; $4da2: $88
	adc  b                                           ; $4da3: $88
	adc  b                                           ; $4da4: $88
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	adc  b                                           ; $4da7: $88
	adc  b                                           ; $4da8: $88
	adc  b                                           ; $4da9: $88
	adc  b                                           ; $4daa: $88
	adc  b                                           ; $4dab: $88
	adc  b                                           ; $4dac: $88
	adc  b                                           ; $4dad: $88
	adc  b                                           ; $4dae: $88
	adc  b                                           ; $4daf: $88
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	adc  b                                           ; $4db5: $88
	adc  b                                           ; $4db6: $88
	adc  b                                           ; $4db7: $88
	adc  b                                           ; $4db8: $88
	adc  b                                           ; $4db9: $88
	adc  b                                           ; $4dba: $88
	adc  b                                           ; $4dbb: $88
	adc  b                                           ; $4dbc: $88
	adc  b                                           ; $4dbd: $88
	adc  b                                           ; $4dbe: $88
	adc  b                                           ; $4dbf: $88
	adc  b                                           ; $4dc0: $88
	adc  b                                           ; $4dc1: $88
	adc  b                                           ; $4dc2: $88
	adc  b                                           ; $4dc3: $88
	adc  b                                           ; $4dc4: $88
	adc  b                                           ; $4dc5: $88
	adc  b                                           ; $4dc6: $88
	adc  b                                           ; $4dc7: $88
	adc  b                                           ; $4dc8: $88
	adc  b                                           ; $4dc9: $88
	adc  b                                           ; $4dca: $88
	adc  b                                           ; $4dcb: $88
	adc  b                                           ; $4dcc: $88
	adc  b                                           ; $4dcd: $88
	adc  b                                           ; $4dce: $88
	adc  b                                           ; $4dcf: $88
	adc  b                                           ; $4dd0: $88
	adc  b                                           ; $4dd1: $88
	adc  b                                           ; $4dd2: $88
	adc  b                                           ; $4dd3: $88
	adc  b                                           ; $4dd4: $88
	adc  b                                           ; $4dd5: $88
	adc  b                                           ; $4dd6: $88
	adc  b                                           ; $4dd7: $88
	adc  b                                           ; $4dd8: $88
	adc  b                                           ; $4dd9: $88
	adc  b                                           ; $4dda: $88
	adc  b                                           ; $4ddb: $88
	adc  b                                           ; $4ddc: $88
	adc  b                                           ; $4ddd: $88
	adc  b                                           ; $4dde: $88
	adc  b                                           ; $4ddf: $88
	adc  b                                           ; $4de0: $88
	adc  b                                           ; $4de1: $88
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	adc  b                                           ; $4de5: $88
	adc  b                                           ; $4de6: $88
	adc  b                                           ; $4de7: $88
	adc  b                                           ; $4de8: $88
	adc  b                                           ; $4de9: $88
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	adc  b                                           ; $4ded: $88
	adc  b                                           ; $4dee: $88
	adc  b                                           ; $4def: $88
	adc  b                                           ; $4df0: $88
	adc  b                                           ; $4df1: $88
	adc  b                                           ; $4df2: $88
	adc  b                                           ; $4df3: $88
	adc  b                                           ; $4df4: $88
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	adc  b                                           ; $4df8: $88
	adc  b                                           ; $4df9: $88
	adc  b                                           ; $4dfa: $88
	adc  b                                           ; $4dfb: $88
	adc  b                                           ; $4dfc: $88
	adc  b                                           ; $4dfd: $88
	adc  b                                           ; $4dfe: $88
	adc  b                                           ; $4dff: $88
	adc  b                                           ; $4e00: $88
	adc  b                                           ; $4e01: $88
	adc  b                                           ; $4e02: $88
	adc  b                                           ; $4e03: $88
	adc  b                                           ; $4e04: $88
	adc  b                                           ; $4e05: $88
	adc  b                                           ; $4e06: $88
	adc  b                                           ; $4e07: $88
	adc  b                                           ; $4e08: $88
	adc  b                                           ; $4e09: $88
	adc  b                                           ; $4e0a: $88
	adc  b                                           ; $4e0b: $88
	adc  b                                           ; $4e0c: $88
	adc  b                                           ; $4e0d: $88
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	adc  b                                           ; $4e10: $88
	adc  b                                           ; $4e11: $88
	adc  b                                           ; $4e12: $88
	adc  b                                           ; $4e13: $88
	adc  b                                           ; $4e14: $88
	adc  b                                           ; $4e15: $88
	adc  b                                           ; $4e16: $88
	adc  b                                           ; $4e17: $88
	adc  b                                           ; $4e18: $88
	adc  b                                           ; $4e19: $88
	adc  b                                           ; $4e1a: $88
	adc  b                                           ; $4e1b: $88
	adc  b                                           ; $4e1c: $88
	adc  b                                           ; $4e1d: $88
	adc  b                                           ; $4e1e: $88
	adc  b                                           ; $4e1f: $88
	adc  b                                           ; $4e20: $88
	adc  b                                           ; $4e21: $88
	adc  b                                           ; $4e22: $88
	adc  b                                           ; $4e23: $88
	adc  b                                           ; $4e24: $88
	adc  b                                           ; $4e25: $88
	adc  b                                           ; $4e26: $88
	adc  b                                           ; $4e27: $88
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	adc  b                                           ; $4e2b: $88
	adc  b                                           ; $4e2c: $88
	adc  b                                           ; $4e2d: $88
	adc  b                                           ; $4e2e: $88
	adc  b                                           ; $4e2f: $88
	adc  b                                           ; $4e30: $88
	adc  b                                           ; $4e31: $88
	adc  b                                           ; $4e32: $88
	adc  b                                           ; $4e33: $88
	adc  b                                           ; $4e34: $88
	adc  b                                           ; $4e35: $88
	adc  b                                           ; $4e36: $88
	adc  b                                           ; $4e37: $88
	adc  b                                           ; $4e38: $88
	adc  b                                           ; $4e39: $88
	adc  b                                           ; $4e3a: $88
	adc  b                                           ; $4e3b: $88
	adc  b                                           ; $4e3c: $88
	adc  b                                           ; $4e3d: $88
	adc  b                                           ; $4e3e: $88
	adc  b                                           ; $4e3f: $88
	adc  b                                           ; $4e40: $88
	adc  b                                           ; $4e41: $88
	adc  b                                           ; $4e42: $88
	adc  b                                           ; $4e43: $88
	adc  b                                           ; $4e44: $88
	adc  b                                           ; $4e45: $88
	adc  b                                           ; $4e46: $88
	adc  b                                           ; $4e47: $88
	adc  b                                           ; $4e48: $88
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  b                                           ; $4e4b: $88
	adc  b                                           ; $4e4c: $88
	adc  b                                           ; $4e4d: $88
	adc  b                                           ; $4e4e: $88
	adc  b                                           ; $4e4f: $88
	adc  b                                           ; $4e50: $88
	adc  b                                           ; $4e51: $88
	adc  b                                           ; $4e52: $88
	adc  b                                           ; $4e53: $88
	adc  b                                           ; $4e54: $88
	adc  b                                           ; $4e55: $88
	adc  b                                           ; $4e56: $88
	adc  b                                           ; $4e57: $88
	adc  b                                           ; $4e58: $88
	adc  b                                           ; $4e59: $88
	adc  b                                           ; $4e5a: $88
	adc  b                                           ; $4e5b: $88
	adc  b                                           ; $4e5c: $88
	adc  b                                           ; $4e5d: $88
	adc  b                                           ; $4e5e: $88
	adc  b                                           ; $4e5f: $88
	adc  b                                           ; $4e60: $88
	adc  b                                           ; $4e61: $88
	adc  b                                           ; $4e62: $88
	adc  b                                           ; $4e63: $88
	adc  b                                           ; $4e64: $88
	adc  b                                           ; $4e65: $88
	adc  b                                           ; $4e66: $88
	adc  b                                           ; $4e67: $88
	adc  b                                           ; $4e68: $88
	adc  b                                           ; $4e69: $88
	adc  b                                           ; $4e6a: $88
	adc  b                                           ; $4e6b: $88
	adc  b                                           ; $4e6c: $88
	adc  b                                           ; $4e6d: $88
	adc  b                                           ; $4e6e: $88
	adc  b                                           ; $4e6f: $88
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	adc  b                                           ; $4e72: $88
	adc  b                                           ; $4e73: $88
	adc  b                                           ; $4e74: $88
	adc  b                                           ; $4e75: $88
	adc  b                                           ; $4e76: $88
	adc  b                                           ; $4e77: $88
	adc  b                                           ; $4e78: $88
	adc  b                                           ; $4e79: $88
	adc  b                                           ; $4e7a: $88
	adc  b                                           ; $4e7b: $88
	adc  b                                           ; $4e7c: $88
	adc  b                                           ; $4e7d: $88
	adc  b                                           ; $4e7e: $88
	adc  b                                           ; $4e7f: $88
	adc  b                                           ; $4e80: $88
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	adc  b                                           ; $4e83: $88
	adc  b                                           ; $4e84: $88
	adc  b                                           ; $4e85: $88
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	adc  b                                           ; $4e8b: $88
	adc  b                                           ; $4e8c: $88
	adc  b                                           ; $4e8d: $88
	adc  b                                           ; $4e8e: $88
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	adc  b                                           ; $4e94: $88
	adc  b                                           ; $4e95: $88
	adc  b                                           ; $4e96: $88
	adc  b                                           ; $4e97: $88
	adc  b                                           ; $4e98: $88
	adc  b                                           ; $4e99: $88
	adc  b                                           ; $4e9a: $88
	adc  b                                           ; $4e9b: $88
	adc  b                                           ; $4e9c: $88
	adc  b                                           ; $4e9d: $88
	adc  b                                           ; $4e9e: $88
	adc  b                                           ; $4e9f: $88
	adc  b                                           ; $4ea0: $88
	adc  b                                           ; $4ea1: $88
	adc  b                                           ; $4ea2: $88
	adc  b                                           ; $4ea3: $88
	adc  b                                           ; $4ea4: $88
	adc  b                                           ; $4ea5: $88
	adc  b                                           ; $4ea6: $88
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  b                                           ; $4ea9: $88
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  b                                           ; $4eac: $88
	adc  b                                           ; $4ead: $88
	adc  b                                           ; $4eae: $88
	adc  b                                           ; $4eaf: $88
	adc  b                                           ; $4eb0: $88
	adc  b                                           ; $4eb1: $88
	adc  b                                           ; $4eb2: $88
	adc  b                                           ; $4eb3: $88
	adc  b                                           ; $4eb4: $88
	adc  b                                           ; $4eb5: $88
	adc  b                                           ; $4eb6: $88
	adc  b                                           ; $4eb7: $88
	adc  b                                           ; $4eb8: $88
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	adc  b                                           ; $4ebc: $88
	adc  b                                           ; $4ebd: $88
	adc  b                                           ; $4ebe: $88
	adc  b                                           ; $4ebf: $88
	adc  b                                           ; $4ec0: $88
	adc  b                                           ; $4ec1: $88
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	adc  b                                           ; $4ec4: $88
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	adc  b                                           ; $4ecb: $88
	adc  b                                           ; $4ecc: $88
	adc  b                                           ; $4ecd: $88
	adc  b                                           ; $4ece: $88
	adc  b                                           ; $4ecf: $88
	adc  b                                           ; $4ed0: $88
	adc  b                                           ; $4ed1: $88
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	adc  b                                           ; $4ee1: $88
	adc  b                                           ; $4ee2: $88
	adc  b                                           ; $4ee3: $88
	adc  b                                           ; $4ee4: $88
	adc  b                                           ; $4ee5: $88
	adc  b                                           ; $4ee6: $88
	adc  b                                           ; $4ee7: $88
	adc  b                                           ; $4ee8: $88
	adc  b                                           ; $4ee9: $88
	adc  b                                           ; $4eea: $88
	adc  b                                           ; $4eeb: $88
	adc  b                                           ; $4eec: $88
	adc  b                                           ; $4eed: $88
	adc  b                                           ; $4eee: $88
	adc  b                                           ; $4eef: $88
	adc  b                                           ; $4ef0: $88
	adc  b                                           ; $4ef1: $88
	adc  b                                           ; $4ef2: $88
	adc  b                                           ; $4ef3: $88
	adc  b                                           ; $4ef4: $88
	adc  b                                           ; $4ef5: $88
	adc  b                                           ; $4ef6: $88
	adc  b                                           ; $4ef7: $88
	adc  b                                           ; $4ef8: $88
	adc  b                                           ; $4ef9: $88
	adc  b                                           ; $4efa: $88
	adc  b                                           ; $4efb: $88
	adc  b                                           ; $4efc: $88
	adc  b                                           ; $4efd: $88
	adc  b                                           ; $4efe: $88
	adc  b                                           ; $4eff: $88
	adc  b                                           ; $4f00: $88
	adc  b                                           ; $4f01: $88
	adc  b                                           ; $4f02: $88
	adc  b                                           ; $4f03: $88
	adc  b                                           ; $4f04: $88
	adc  b                                           ; $4f05: $88
	adc  b                                           ; $4f06: $88
	adc  b                                           ; $4f07: $88
	adc  b                                           ; $4f08: $88
	adc  b                                           ; $4f09: $88
	adc  b                                           ; $4f0a: $88
	adc  b                                           ; $4f0b: $88
	adc  b                                           ; $4f0c: $88
	adc  b                                           ; $4f0d: $88
	adc  b                                           ; $4f0e: $88
	adc  b                                           ; $4f0f: $88
	adc  b                                           ; $4f10: $88
	adc  b                                           ; $4f11: $88
	adc  b                                           ; $4f12: $88
	adc  b                                           ; $4f13: $88
	adc  b                                           ; $4f14: $88
	adc  b                                           ; $4f15: $88
	adc  b                                           ; $4f16: $88
	adc  b                                           ; $4f17: $88
	adc  b                                           ; $4f18: $88
	adc  b                                           ; $4f19: $88
	adc  b                                           ; $4f1a: $88
	adc  b                                           ; $4f1b: $88
	adc  b                                           ; $4f1c: $88
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
	adc  b                                           ; $4f29: $88
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
	adc  b                                           ; $51f2: $88
	adc  b                                           ; $51f3: $88
	adc  b                                           ; $51f4: $88
	adc  b                                           ; $51f5: $88
	adc  b                                           ; $51f6: $88
	adc  b                                           ; $51f7: $88
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  b                                           ; $51fb: $88
	adc  b                                           ; $51fc: $88
	adc  b                                           ; $51fd: $88
	adc  b                                           ; $51fe: $88
	adc  b                                           ; $51ff: $88
	adc  b                                           ; $5200: $88
	adc  b                                           ; $5201: $88
	adc  b                                           ; $5202: $88
	adc  b                                           ; $5203: $88
	adc  b                                           ; $5204: $88
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	adc  b                                           ; $520f: $88
	adc  b                                           ; $5210: $88
	adc  b                                           ; $5211: $88
	adc  b                                           ; $5212: $88
	adc  b                                           ; $5213: $88
	adc  b                                           ; $5214: $88
	adc  b                                           ; $5215: $88
	adc  b                                           ; $5216: $88
	adc  b                                           ; $5217: $88
	adc  b                                           ; $5218: $88
	adc  b                                           ; $5219: $88
	adc  b                                           ; $521a: $88
	adc  b                                           ; $521b: $88
	adc  b                                           ; $521c: $88
	sbc  b                                           ; $521d: $98
	adc  b                                           ; $521e: $88
	adc  c                                           ; $521f: $89
	sbc  b                                           ; $5220: $98
	ld   [hl], a                                     ; $5221: $77
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	adc  b                                           ; $5224: $88
	adc  c                                           ; $5225: $89
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  c                                           ; $522a: $89
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	adc  b                                           ; $5230: $88
	sbc  b                                           ; $5231: $98
	adc  b                                           ; $5232: $88
	adc  b                                           ; $5233: $88
	adc  b                                           ; $5234: $88
	add  a                                           ; $5235: $87
	adc  c                                           ; $5236: $89
	sbc  b                                           ; $5237: $98
	adc  b                                           ; $5238: $88
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	adc  b                                           ; $523b: $88
	add  a                                           ; $523c: $87
	adc  c                                           ; $523d: $89
	sub  a                                           ; $523e: $97
	ld   a, b                                        ; $523f: $78
	sbc  c                                           ; $5240: $99
	add  a                                           ; $5241: $87
	ld   a, b                                        ; $5242: $78
	sbc  b                                           ; $5243: $98
	adc  b                                           ; $5244: $88
	sub  a                                           ; $5245: $97
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	sbc  b                                           ; $5248: $98
	add  a                                           ; $5249: $87
	ld   a, b                                        ; $524a: $78
	sbc  c                                           ; $524b: $99
	adc  b                                           ; $524c: $88
	adc  b                                           ; $524d: $88
	adc  b                                           ; $524e: $88
	add  a                                           ; $524f: $87
	adc  c                                           ; $5250: $89
	sub  a                                           ; $5251: $97
	ld   a, b                                        ; $5252: $78
	add  a                                           ; $5253: $87
	adc  b                                           ; $5254: $88
	ld   [hl], a                                     ; $5255: $77
	sbc  c                                           ; $5256: $99
	adc  b                                           ; $5257: $88
	adc  b                                           ; $5258: $88
	ld   h, [hl]                                     ; $5259: $66
	adc  c                                           ; $525a: $89
	sub  a                                           ; $525b: $97
	ld   a, c                                        ; $525c: $79
	sbc  b                                           ; $525d: $98
	xor  c                                           ; $525e: $a9
	ld   [hl], a                                     ; $525f: $77
	sbc  b                                           ; $5260: $98
	ld   [hl], a                                     ; $5261: $77
	adc  b                                           ; $5262: $88
	halt                                             ; $5263: $76
	ld   a, c                                        ; $5264: $79
	sbc  b                                           ; $5265: $98
	sbc  c                                           ; $5266: $99
	halt                                             ; $5267: $76
	ld   a, c                                        ; $5268: $79
	adc  c                                           ; $5269: $89
	adc  b                                           ; $526a: $88
	sub  a                                           ; $526b: $97
	ld   a, b                                        ; $526c: $78
	add  a                                           ; $526d: $87
	adc  d                                           ; $526e: $8a
	sub  a                                           ; $526f: $97
	ld   [hl], a                                     ; $5270: $77
	ld   a, b                                        ; $5271: $78
	xor  c                                           ; $5272: $a9
	ld   h, [hl]                                     ; $5273: $66
	ld   a, b                                        ; $5274: $78
	sbc  e                                           ; $5275: $9b
	sub  [hl]                                        ; $5276: $96
	ld   l, b                                        ; $5277: $68
	adc  b                                           ; $5278: $88
	adc  b                                           ; $5279: $88
	ld   [hl], a                                     ; $527a: $77
	adc  b                                           ; $527b: $88
	add  a                                           ; $527c: $87
	sbc  e                                           ; $527d: $9b
	xor  b                                           ; $527e: $a8
	add  [hl]                                        ; $527f: $86
	ld   [hl], a                                     ; $5280: $77
	sbc  d                                           ; $5281: $9a
	add  a                                           ; $5282: $87
	ld   h, a                                        ; $5283: $67
	sbc  e                                           ; $5284: $9b
	sub  a                                           ; $5285: $97
	ld   [hl], l                                     ; $5286: $75
	ld   l, c                                        ; $5287: $69
	and  a                                           ; $5288: $a7
	ld   l, b                                        ; $5289: $68
	add  a                                           ; $528a: $87
	ld   a, c                                        ; $528b: $79
	cp   c                                           ; $528c: $b9
	ld   h, a                                        ; $528d: $67
	sbc  b                                           ; $528e: $98
	adc  c                                           ; $528f: $89
	sub  a                                           ; $5290: $97
	ld   l, b                                        ; $5291: $68
	xor  c                                           ; $5292: $a9
	ld   [hl], l                                     ; $5293: $75
	ld   h, a                                        ; $5294: $67
	sbc  d                                           ; $5295: $9a
	rst  ToBoot                                         ; $5296: $c7
	dec  [hl]                                        ; $5297: $35
	xor  e                                           ; $5298: $ab
	xor  c                                           ; $5299: $a9
	ld   [hl], l                                     ; $529a: $75
	ld   l, d                                        ; $529b: $6a
	cp   e                                           ; $529c: $bb
	jp   z, Jump_0ca_7955                            ; $529d: $ca $55 $79

	xor  b                                           ; $52a0: $a8
	ld   [hl], h                                     ; $52a1: $74
	ld   d, a                                        ; $52a2: $57
	ld   a, d                                        ; $52a3: $7a
	xor  b                                           ; $52a4: $a8
	ld   h, l                                        ; $52a5: $65
	adc  d                                           ; $52a6: $8a
	res  2, l                                        ; $52a7: $cb $95
	scf                                              ; $52a9: $37
	call z, Call_0ca_7787                            ; $52aa: $cc $87 $77
	ld   l, c                                        ; $52ad: $69
	and  [hl]                                        ; $52ae: $a6
	ld   h, l                                        ; $52af: $65
	ld   d, [hl]                                     ; $52b0: $56
	ld   a, d                                        ; $52b1: $7a
	sbc  b                                           ; $52b2: $98
	adc  b                                           ; $52b3: $88
	adc  b                                           ; $52b4: $88
	xor  d                                           ; $52b5: $aa
	adc  b                                           ; $52b6: $88
	add  [hl]                                        ; $52b7: $86
	adc  e                                           ; $52b8: $8b
	add  a                                           ; $52b9: $87
	sbc  b                                           ; $52ba: $98
	ld   h, l                                        ; $52bb: $65
	ld   d, h                                        ; $52bc: $54
	ld   e, b                                        ; $52bd: $58
	bit  6, l                                        ; $52be: $cb $75
	ld   [hl], a                                     ; $52c0: $77
	sbc  [hl]                                        ; $52c1: $9e
	ret                                              ; $52c2: $c9


	add  l                                           ; $52c3: $85
	ld   b, [hl]                                     ; $52c4: $46
	call z, Call_0ca_4298                            ; $52c5: $cc $98 $42
	ld   b, [hl]                                     ; $52c8: $46
	sbc  c                                           ; $52c9: $99
	adc  b                                           ; $52ca: $88
	and  a                                           ; $52cb: $a7
	ld   l, c                                        ; $52cc: $69
	ld   a, d                                        ; $52cd: $7a
	call c, Call_0ca_7597                            ; $52ce: $dc $97 $75
	ld   a, h                                        ; $52d1: $7c
	jp   c, $3475                                    ; $52d2: $da $75 $34

	ld   a, b                                        ; $52d5: $78
	ld   h, [hl]                                     ; $52d6: $66
	xor  b                                           ; $52d7: $a8
	adc  h                                           ; $52d8: $8c
	sbc  b                                           ; $52d9: $98
	cp   c                                           ; $52da: $b9
	adc  e                                           ; $52db: $8b
	and  h                                           ; $52dc: $a4
	adc  l                                           ; $52dd: $8d
	ld   a, b                                        ; $52de: $78
	or   [hl]                                        ; $52df: $b6
	ld   [hl-], a                                    ; $52e0: $32
	ld   h, a                                        ; $52e1: $67
	ld   [hl], a                                     ; $52e2: $77
	ld   a, d                                        ; $52e3: $7a
	adc  b                                           ; $52e4: $88
	cp   l                                           ; $52e5: $bd
	and  [hl]                                        ; $52e6: $a6
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  d                                           ; $52e9: $8a
	ld   a, d                                        ; $52ea: $7a
	sub  a                                           ; $52eb: $97
	sub  a                                           ; $52ec: $97
	ld   h, [hl]                                     ; $52ed: $66
	ld   d, d                                        ; $52ee: $52
	ld   e, h                                        ; $52ef: $5c
	rst  ToBoot                                         ; $52f0: $c7
	adc  c                                           ; $52f1: $89
	ld   l, d                                        ; $52f2: $6a
	xor  $96                                         ; $52f3: $ee $96
	ld   [hl], a                                     ; $52f5: $77
	sbc  c                                           ; $52f6: $99
	adc  b                                           ; $52f7: $88
	ld   d, e                                        ; $52f8: $53
	ld   [hl], $b8                                   ; $52f9: $36 $b8
	sbc  b                                           ; $52fb: $98
	ld   h, h                                        ; $52fc: $64
	adc  a                                           ; $52fd: $8f
	ei                                               ; $52fe: $fb
	ld   [hl], $96                                   ; $52ff: $36 $96
	cp   l                                           ; $5301: $bd
	and  [hl]                                        ; $5302: $a6
	dec  h                                           ; $5303: $25
	adc  b                                           ; $5304: $88
	ld   [hl], l                                     ; $5305: $75
	ld   d, h                                        ; $5306: $54
	ld   l, e                                        ; $5307: $6b
	push bc                                          ; $5308: $c5
	ld   l, e                                        ; $5309: $6b
	xor  e                                           ; $530a: $ab
	adc  h                                           ; $530b: $8c
	add  [hl]                                        ; $530c: $86
	sub  a                                           ; $530d: $97
	adc  c                                           ; $530e: $89
	add  a                                           ; $530f: $87
	inc  [hl]                                        ; $5310: $34
	ld   h, a                                        ; $5311: $67
	add  a                                           ; $5312: $87
	xor  d                                           ; $5313: $aa
	ld   b, [hl]                                     ; $5314: $46
	rst  JumpTable                                         ; $5315: $df
	and  a                                           ; $5316: $a7
	ld   a, b                                        ; $5317: $78
	adc  c                                           ; $5318: $89
	sbc  l                                           ; $5319: $9d
	or   [hl]                                        ; $531a: $b6
	ld   b, d                                        ; $531b: $42
	ld   d, a                                        ; $531c: $57
	or   a                                           ; $531d: $b7
	ld   b, l                                        ; $531e: $45
	ld   [hl], $bf                                   ; $531f: $36 $bf
	db   $eb                                         ; $5321: $eb
	ld   [hl], c                                     ; $5322: $71
	ld   a, h                                        ; $5323: $7c
	db   $db                                         ; $5324: $db
	add  a                                           ; $5325: $87
	ld   d, h                                        ; $5326: $54
	ld   d, [hl]                                     ; $5327: $56
	halt                                             ; $5328: $76
	ld   c, b                                        ; $5329: $48
	and  [hl]                                        ; $532a: $a6
	ld   [hl], $cf                                   ; $532b: $36 $cf
	ret  c                                           ; $532d: $d8

	ld   a, b                                        ; $532e: $78
	ld   l, d                                        ; $532f: $6a
	jp   c, Jump_0ca_5475                            ; $5330: $da $75 $54

	ld   b, a                                        ; $5333: $47
	ld   d, a                                        ; $5334: $57
	ld   h, l                                        ; $5335: $65
	xor  b                                           ; $5336: $a8
	xor  e                                           ; $5337: $ab
	sbc  d                                           ; $5338: $9a
	xor  c                                           ; $5339: $a9
	db   $dd                                         ; $533a: $dd
	add  d                                           ; $533b: $82
	ld   a, e                                        ; $533c: $7b
	sbc  d                                           ; $533d: $9a
	sub  h                                           ; $533e: $94
	ld   [de], a                                     ; $533f: $12
	ld   h, a                                        ; $5340: $67
	xor  b                                           ; $5341: $a8
	ld   a, d                                        ; $5342: $7a
	cp   l                                           ; $5343: $bd
	xor  c                                           ; $5344: $a9
	cp   b                                           ; $5345: $b8
	ld   a, d                                        ; $5346: $7a
	and  l                                           ; $5347: $a5
	ld   l, h                                        ; $5348: $6c
	sub  h                                           ; $5349: $94
	ld   h, l                                        ; $534a: $65
	dec  h                                           ; $534b: $25
	halt                                             ; $534c: $76
	adc  e                                           ; $534d: $8b
	add  $9a                                         ; $534e: $c6 $9a
	ld   a, e                                        ; $5350: $7b
	sbc  $87                                         ; $5351: $de $87
	ld   [hl], h                                     ; $5353: $74
	ld   a, d                                        ; $5354: $7a
	or   l                                           ; $5355: $b5
	ld   de, $7867                                   ; $5356: $11 $67 $78
	cp   $9b                                         ; $5359: $fe $9b
	sbc  c                                           ; $535b: $99
	ld   a, [hl-]                                    ; $535c: $3a
	db   $ec                                         ; $535d: $ec
	and  h                                           ; $535e: $a4
	ld   h, l                                        ; $535f: $65
	ld   a, c                                        ; $5360: $79
	add  h                                           ; $5361: $84
	dec  [hl]                                        ; $5362: $35
	ld   sp, $ff7f                                   ; $5363: $31 $7f $ff
	ld   h, l                                        ; $5366: $65
	ld   [hl], a                                     ; $5367: $77
	cp   a                                           ; $5368: $bf
	rst  $30                                         ; $5369: $f7
	inc  hl                                          ; $536a: $23
	ld   l, b                                        ; $536b: $68
	add  l                                           ; $536c: $85
	inc  sp                                          ; $536d: $33
	scf                                              ; $536e: $37
	ld   l, d                                        ; $536f: $6a
	ld   sp, hl                                      ; $5370: $f9
	ld   e, b                                        ; $5371: $58
	adc  a                                           ; $5372: $8f
	db   $ed                                         ; $5373: $ed
	ld   d, l                                        ; $5374: $55
	dec  h                                           ; $5375: $25
	call $2561                                       ; $5376: $cd $61 $25

Jump_0ca_5379:
	sub  e                                           ; $5379: $93
	ld   d, a                                        ; $537a: $57
	xor  a                                           ; $537b: $af
	rst  JumpTable                                         ; $537c: $df
	ld   [hl], l                                     ; $537d: $75
	ld   a, e                                        ; $537e: $7b
	jp   z, Jump_0ca_65b7                            ; $537f: $ca $b7 $65

	ld   h, e                                        ; $5382: $63
	ld   d, h                                        ; $5383: $54
	dec  h                                           ; $5384: $25
	adc  h                                           ; $5385: $8c
	cp   e                                           ; $5386: $bb
	adc  c                                           ; $5387: $89
	cp   d                                           ; $5388: $ba
	cp   [hl]                                        ; $5389: $be
	push hl                                          ; $538a: $e5
	ld   d, h                                        ; $538b: $54
	ld   l, c                                        ; $538c: $69
	and  a                                           ; $538d: $a7
	ld   h, h                                        ; $538e: $64
	inc  d                                           ; $538f: $14
	ld   d, a                                        ; $5390: $57
	ld   l, [hl]                                     ; $5391: $6e
	ei                                               ; $5392: $fb
	ret  c                                           ; $5393: $d8

	ld   d, h                                        ; $5394: $54
	adc  $ba                                         ; $5395: $ce $ba
	ld   d, l                                        ; $5397: $55
	ld   [hl], l                                     ; $5398: $75
	inc  h                                           ; $5399: $24
	ld   d, l                                        ; $539a: $55
	ld   c, c                                        ; $539b: $49
	adc  b                                           ; $539c: $88
	xor  $f9                                         ; $539d: $ee $f9
	ld   d, [hl]                                     ; $539f: $56
	cp   l                                           ; $53a0: $bd
	cp   h                                           ; $53a1: $bc
	ld   h, c                                        ; $53a2: $61
	ld   h, $96                                      ; $53a3: $26 $96
	ld   d, [hl]                                     ; $53a5: $56
	inc  hl                                          ; $53a6: $23
	sbc  e                                           ; $53a7: $9b
	rst  $38                                         ; $53a8: $ff
	or   [hl]                                        ; $53a9: $b6
	adc  c                                           ; $53aa: $89
	xor  $54                                         ; $53ab: $ee $54
	ld   h, [hl]                                     ; $53ad: $66
	ld   l, l                                        ; $53ae: $6d
	or   d                                           ; $53af: $b2
	ld   [de], a                                     ; $53b0: $12
	ld   h, h                                        ; $53b1: $64
	ld   e, a                                        ; $53b2: $5f
	db   $f4                                         ; $53b3: $f4
	sbc  a                                           ; $53b4: $9f
	and  l                                           ; $53b5: $a5
	adc  h                                           ; $53b6: $8c
	ld   l, d                                        ; $53b7: $6a
	adc  h                                           ; $53b8: $8c
	and  d                                           ; $53b9: $a2
	ld   de, $9725                                   ; $53ba: $11 $25 $97
	xor  e                                           ; $53bd: $ab
	db   $eb                                         ; $53be: $eb
	cp   c                                           ; $53bf: $b9
	ld   a, h                                        ; $53c0: $7c
	sbc  l                                           ; $53c1: $9d
	and  a                                           ; $53c2: $a7
	ld   b, [hl]                                     ; $53c3: $46
	ld   [hl], e                                     ; $53c4: $73
	ld   a, b                                        ; $53c5: $78
	ld   [hl], d                                     ; $53c6: $72
	dec  h                                           ; $53c7: $25
	ret  z                                           ; $53c8: $c8

	sbc  [hl]                                        ; $53c9: $9e
	rst  $38                                         ; $53ca: $ff
	sbc  d                                           ; $53cb: $9a
	ld   d, a                                        ; $53cc: $57
	ld   a, d                                        ; $53cd: $7a
	xor  c                                           ; $53ce: $a9
	and  [hl]                                        ; $53cf: $a6
	ld   hl, $7611                                   ; $53d0: $21 $11 $76
	cp   [hl]                                        ; $53d3: $be
	db   $ed                                         ; $53d4: $ed
	adc  e                                           ; $53d5: $8b
	ld   a, b                                        ; $53d6: $78
	cp   a                                           ; $53d7: $bf
	and  l                                           ; $53d8: $a5
	ld   h, d                                        ; $53d9: $62
	ld   b, e                                        ; $53da: $43
	ld   l, d                                        ; $53db: $6a
	ld   [hl], e                                     ; $53dc: $73
	ld   b, l                                        ; $53dd: $45
	ld   l, d                                        ; $53de: $6a
	cp   $bc                                         ; $53df: $fe $bc
	sbc  e                                           ; $53e1: $9b
	ld   l, c                                        ; $53e2: $69
	and  a                                           ; $53e3: $a7
	sbc  b                                           ; $53e4: $98
	sub  d                                           ; $53e5: $92
	ld   [hl+], a                                    ; $53e6: $22
	ld   d, $68                                      ; $53e7: $16 $68
	cp   d                                           ; $53e9: $ba
	ei                                               ; $53ea: $fb
	sbc  e                                           ; $53eb: $9b
	adc  l                                           ; $53ec: $8d
	sbc  h                                           ; $53ed: $9c
	add  l                                           ; $53ee: $85
	ld   d, h                                        ; $53ef: $54
	sub  [hl]                                        ; $53f0: $96
	ld   h, a                                        ; $53f1: $67
	ld   de, $bc36                                   ; $53f2: $11 $36 $bc
	db   $fc                                         ; $53f5: $fc
	ld   a, h                                        ; $53f6: $7c
	adc  d                                           ; $53f7: $8a
	adc  e                                           ; $53f8: $8b
	and  a                                           ; $53f9: $a7
	or   a                                           ; $53fa: $b7
	add  c                                           ; $53fb: $81
	ld   hl, $9817                                   ; $53fc: $21 $17 $98
	cp   h                                           ; $53ff: $bc
	sbc  c                                           ; $5400: $99
	db   $ec                                         ; $5401: $ec
	xor  e                                           ; $5402: $ab
	ld   l, e                                        ; $5403: $6b
	cp   d                                           ; $5404: $ba
	ld   d, a                                        ; $5405: $57
	ld   d, c                                        ; $5406: $51
	ld   [hl], e                                     ; $5407: $73
	ld   c, c                                        ; $5408: $49
	ld   [hl], e                                     ; $5409: $73
	ld   e, a                                        ; $540a: $5f
	set  7, e                                        ; $540b: $cb $fb
	adc  b                                           ; $540d: $88
	ld   h, a                                        ; $540e: $67
	ld   a, h                                        ; $540f: $7c
	adc  d                                           ; $5410: $8a
	ld   [hl], c                                     ; $5411: $71
	inc  sp                                          ; $5412: $33
	ld   b, [hl]                                     ; $5413: $46
	ld   [hl], e                                     ; $5414: $73
	ld   e, a                                        ; $5415: $5f
	ld   a, [$89dc]                                  ; $5416: $fa $dc $89
	xor  l                                           ; $5419: $ad
	ld   a, c                                        ; $541a: $79
	ld   h, l                                        ; $541b: $65
	ld   d, d                                        ; $541c: $52
	ld   d, c                                        ; $541d: $51
	ld   [hl], $66                                   ; $541e: $36 $66
	cp   [hl]                                        ; $5420: $be
	ld   [$beba], a                                  ; $5421: $ea $ba $be
	sbc  d                                           ; $5424: $9a
	add  l                                           ; $5425: $85
	ld   h, $72                                      ; $5426: $26 $72
	ld   h, l                                        ; $5428: $65
	ld   b, e                                        ; $5429: $43
	ld   l, b                                        ; $542a: $68
	call $f88f                                       ; $542b: $cd $8f $f8
	xor  c                                           ; $542e: $a9
	ld   [hl], l                                     ; $542f: $75
	sbc  h                                           ; $5430: $9c
	adc  e                                           ; $5431: $8b
	ld   h, e                                        ; $5432: $63
	ld   de, $5657                                   ; $5433: $11 $57 $56
	call $e9bc                                       ; $5436: $cd $bc $e9
	xor  e                                           ; $5439: $ab
	xor  b                                           ; $543a: $a8
	xor  c                                           ; $543b: $a9
	dec  [hl]                                        ; $543c: $35
	ld   h, l                                        ; $543d: $65
	ld   [hl+], a                                    ; $543e: $22
	ld   d, [hl]                                     ; $543f: $56
	ld   a, [hl-]                                    ; $5440: $3a
	reti                                             ; $5441: $d9


	xor  l                                           ; $5442: $ad
	ld   sp, hl                                      ; $5443: $f9
	xor  e                                           ; $5444: $ab
	sbc  c                                           ; $5445: $99
	adc  d                                           ; $5446: $8a
	ld   h, a                                        ; $5447: $67
	ld   h, h                                        ; $5448: $64
	ld   sp, $2a45                                   ; $5449: $31 $45 $2a
	jp   c, $f7de                                    ; $544c: $da $de $f7

jr_0ca_544f:
	sbc  b                                           ; $544f: $98
	ld   a, d                                        ; $5450: $7a
	adc  h                                           ; $5451: $8c
	ld   h, a                                        ; $5452: $67
	ld   d, h                                        ; $5453: $54
	ld   sp, $4456                                   ; $5454: $31 $56 $44
	res  7, a                                        ; $5457: $cb $bf
	jp   z, Jump_0ca_77bb                            ; $5459: $ca $bb $77

	and  a                                           ; $545c: $a7
	ld   a, c                                        ; $545d: $79
	ld   [hl], h                                     ; $545e: $74
	ld   sp, $5825                                   ; $545f: $31 $25 $58
	xor  h                                           ; $5462: $ac
	call $b8fa                                       ; $5463: $cd $fa $b8
	sbc  b                                           ; $5466: $98
	adc  d                                           ; $5467: $8a
	ld   a, b                                        ; $5468: $78
	ld   h, l                                        ; $5469: $65
	ld   hl, $2747                                   ; $546a: $21 $47 $27
	rst  ToBoot                                         ; $546d: $c7
	sbc  a                                           ; $546e: $9f
	ld   sp, hl                                      ; $546f: $f9
	cp   h                                           ; $5470: $bc
	xor  b                                           ; $5471: $a8
	ld   a, b                                        ; $5472: $78
	halt                                             ; $5473: $76
	ld   e, b                                        ; $5474: $58

Jump_0ca_5475:
	ld   d, c                                        ; $5475: $51
	ld   b, l                                        ; $5476: $45
	inc  d                                           ; $5477: $14
	call c, $f99e                                    ; $5478: $dc $9e $f9
	xor  e                                           ; $547b: $ab
	ld   [hl], a                                     ; $547c: $77
	adc  d                                           ; $547d: $8a
	ld   a, c                                        ; $547e: $79
	ld   [hl], h                                     ; $547f: $74
	ld   b, d                                        ; $5480: $42
	ld   b, l                                        ; $5481: $45
	inc  [hl]                                        ; $5482: $34
	xor  b                                           ; $5483: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5484: $cf
	cp   c                                           ; $5485: $b9
	cp   h                                           ; $5486: $bc
	adc  h                                           ; $5487: $8c
	or   [hl]                                        ; $5488: $b6
	halt                                             ; $5489: $76
	ld   e, b                                        ; $548a: $58
	add  d                                           ; $548b: $82
	dec  h                                           ; $548c: $25
	ld   b, d                                        ; $548d: $42
	adc  e                                           ; $548e: $8b
	adc  d                                           ; $548f: $8a
	rst  JumpTable                                         ; $5490: $df
	sbc  l                                           ; $5491: $9d
	rst  $10                                         ; $5492: $d7
	ld   l, c                                        ; $5493: $69
	sub  l                                           ; $5494: $95
	xor  c                                           ; $5495: $a9
	ld   d, e                                        ; $5496: $53
	ld   [hl+], a                                    ; $5497: $22
	inc  de                                          ; $5498: $13
	sbc  c                                           ; $5499: $99
	sbc  e                                           ; $549a: $9b
	sbc  $bd                                         ; $549b: $de $bd
	cp   b                                           ; $549d: $b8
	sub  a                                           ; $549e: $97
	sub  a                                           ; $549f: $97
	ld   h, a                                        ; $54a0: $67
	ld   h, l                                        ; $54a1: $65
	inc  h                                           ; $54a2: $24
	ld   d, d                                        ; $54a3: $52
	ld   e, c                                        ; $54a4: $59
	ld   a, d                                        ; $54a5: $7a
	db   $dd                                         ; $54a6: $dd
	cp   h                                           ; $54a7: $bc
	reti                                             ; $54a8: $d9


	adc  c                                           ; $54a9: $89
	and  a                                           ; $54aa: $a7
	ld   a, d                                        ; $54ab: $7a
	ld   [hl], l                                     ; $54ac: $75
	ld   d, d                                        ; $54ad: $52
	dec  d                                           ; $54ae: $15
	inc  h                                           ; $54af: $24
	sbc  c                                           ; $54b0: $99
	cp   [hl]                                        ; $54b1: $be
	ei                                               ; $54b2: $fb
	call z, $977a                                    ; $54b3: $cc $7a $97
	ld   [hl], a                                     ; $54b6: $77
	halt                                             ; $54b7: $76
	ld   h, d                                        ; $54b8: $62
	ld   h, $24                                      ; $54b9: $26 $24
	sbc  c                                           ; $54bb: $99
	ld   a, h                                        ; $54bc: $7c
	ld   sp, hl                                      ; $54bd: $f9
	sbc  $9b                                         ; $54be: $de $9b
	sbc  b                                           ; $54c0: $98
	ld   [hl], a                                     ; $54c1: $77
	sub  a                                           ; $54c2: $97
	add  l                                           ; $54c3: $85
	ld   [hl-], a                                    ; $54c4: $32
	ld   b, d                                        ; $54c5: $42
	jr   z, jr_0ca_544f                              ; $54c6: $28 $87

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c8: $cf
	xor  l                                           ; $54c9: $ad
	res  3, c                                        ; $54ca: $cb $99
	and  a                                           ; $54cc: $a7
	ld   [hl], a                                     ; $54cd: $77
	halt                                             ; $54ce: $76
	ld   b, e                                        ; $54cf: $43
	inc  sp                                          ; $54d0: $33
	ld   b, a                                        ; $54d1: $47
	adc  c                                           ; $54d2: $89
	xor  h                                           ; $54d3: $ac
	db   $db                                         ; $54d4: $db
	db   $ec                                         ; $54d5: $ec
	xor  d                                           ; $54d6: $aa
	adc  b                                           ; $54d7: $88
	ld   a, b                                        ; $54d8: $78
	ld   a, b                                        ; $54d9: $78
	ld   [hl], e                                     ; $54da: $73
	dec  [hl]                                        ; $54db: $35
	ld   b, c                                        ; $54dc: $41
	ld   a, d                                        ; $54dd: $7a
	ld   e, e                                        ; $54de: $5b
	db   $ed                                         ; $54df: $ed
	call $98d9                                       ; $54e0: $cd $d9 $98
	add  a                                           ; $54e3: $87
	ld   a, c                                        ; $54e4: $79
	halt                                             ; $54e5: $76
	ld   b, d                                        ; $54e6: $42
	ld   b, e                                        ; $54e7: $43
	ld   [hl], $99                                   ; $54e8: $36 $99
	sbc  [hl]                                        ; $54ea: $9e
	cp   e                                           ; $54eb: $bb
	db   $fc                                         ; $54ec: $fc
	xor  d                                           ; $54ed: $aa
	sbc  b                                           ; $54ee: $98
	ld   [hl], a                                     ; $54ef: $77
	ld   [hl], a                                     ; $54f0: $77
	ld   h, h                                        ; $54f1: $64
	inc  sp                                          ; $54f2: $33
	inc  d                                           ; $54f3: $14
	add  [hl]                                        ; $54f4: $86
	ld   a, l                                        ; $54f5: $7d
	cp   c                                           ; $54f6: $b9
	db   $fc                                         ; $54f7: $fc
	xor  h                                           ; $54f8: $ac
	sbc  b                                           ; $54f9: $98
	sbc  b                                           ; $54fa: $98
	ld   h, a                                        ; $54fb: $67
	ld   [hl], h                                     ; $54fc: $74
	ld   b, h                                        ; $54fd: $44
	ld   d, c                                        ; $54fe: $51
	ld   c, c                                        ; $54ff: $49
	ld   h, [hl]                                     ; $5500: $66
	call c, $ebae                                    ; $5501: $dc $ae $eb
	cp   h                                           ; $5504: $bc
	ld   a, b                                        ; $5505: $78
	add  [hl]                                        ; $5506: $86
	sub  a                                           ; $5507: $97
	ld   h, e                                        ; $5508: $63
	ld   b, e                                        ; $5509: $43
	dec  h                                           ; $550a: $25
	ld   d, [hl]                                     ; $550b: $56
	sbc  e                                           ; $550c: $9b
	cp   l                                           ; $550d: $bd
	db   $ec                                         ; $550e: $ec
	cp   e                                           ; $550f: $bb
	sbc  b                                           ; $5510: $98
	xor  b                                           ; $5511: $a8
	adc  c                                           ; $5512: $89
	ld   h, l                                        ; $5513: $65
	ld   [hl-], a                                    ; $5514: $32
	ld   sp, $5949                                   ; $5515: $31 $49 $59
	ld   [$ebce], a                                  ; $5518: $ea $ce $eb
	bit  5, c                                        ; $551b: $cb $69
	add  [hl]                                        ; $551d: $86
	add  a                                           ; $551e: $87
	ld   d, d                                        ; $551f: $52
	ld   b, e                                        ; $5520: $43
	dec  h                                           ; $5521: $25
	adc  b                                           ; $5522: $88
	ld   l, l                                        ; $5523: $6d
	ret                                              ; $5524: $c9


	db   $fc                                         ; $5525: $fc
	xor  h                                           ; $5526: $ac
	or   a                                           ; $5527: $b7
	adc  c                                           ; $5528: $89
	ld   d, a                                        ; $5529: $57
	ld   [hl], h                                     ; $552a: $74
	inc  [hl]                                        ; $552b: $34
	ld   [hl-], a                                    ; $552c: $32
	ld   [hl], a                                     ; $552d: $77
	ld   e, d                                        ; $552e: $5a
	cp   d                                           ; $552f: $ba
	db   $ec                                         ; $5530: $ec
	db   $ec                                         ; $5531: $ec
	cp   h                                           ; $5532: $bc
	sbc  c                                           ; $5533: $99
	ld   a, b                                        ; $5534: $78
	ld   [hl], l                                     ; $5535: $75
	ld   d, d                                        ; $5536: $52
	ld   [hl+], a                                    ; $5537: $22
	daa                                              ; $5538: $27
	ld   h, [hl]                                     ; $5539: $66
	cp   e                                           ; $553a: $bb
	cp   l                                           ; $553b: $bd
	db   $fc                                         ; $553c: $fc
	cp   h                                           ; $553d: $bc
	xor  d                                           ; $553e: $aa
	sbc  c                                           ; $553f: $99
	ld   [hl], a                                     ; $5540: $77
	ld   h, h                                        ; $5541: $64
	inc  [hl]                                        ; $5542: $34
	ld   [hl+], a                                    ; $5543: $22
	add  l                                           ; $5544: $85
	ld   c, l                                        ; $5545: $4d
	adc  c                                           ; $5546: $89
	db   $fc                                         ; $5547: $fc
	adc  $c8                                         ; $5548: $ce $c8
	cp   c                                           ; $554a: $b9
	ld   l, c                                        ; $554b: $69
	ld   h, l                                        ; $554c: $65
	ld   d, h                                        ; $554d: $54
	ld   [hl+], a                                    ; $554e: $22
	ld   b, [hl]                                     ; $554f: $46
	ld   d, [hl]                                     ; $5550: $56
	cp   b                                           ; $5551: $b8
	xor  [hl]                                        ; $5552: $ae
	call $abdc                                       ; $5553: $cd $dc $ab
	sbc  b                                           ; $5556: $98
	add  a                                           ; $5557: $87
	ld   d, h                                        ; $5558: $54
	ld   [hl-], a                                    ; $5559: $32
	inc  h                                           ; $555a: $24
	ld   d, e                                        ; $555b: $53
	ld   a, c                                        ; $555c: $79
	ld   l, h                                        ; $555d: $6c
	db   $db                                         ; $555e: $db
	xor  $ab                                         ; $555f: $ee $ab
	ret  z                                           ; $5561: $c8

	sbc  d                                           ; $5562: $9a
	ld   h, [hl]                                     ; $5563: $66
	ld   d, e                                        ; $5564: $53
	ld   [hl+], a                                    ; $5565: $22
	ld   b, h                                        ; $5566: $44
	ld   b, a                                        ; $5567: $47
	add  a                                           ; $5568: $87
	cp   e                                           ; $5569: $bb
	call $cccc                                       ; $556a: $cd $cc $cc
	xor  b                                           ; $556d: $a8
	sub  a                                           ; $556e: $97
	ld   h, l                                        ; $556f: $65
	ld   [hl-], a                                    ; $5570: $32
	inc  hl                                          ; $5571: $23
	ld   d, h                                        ; $5572: $54
	ld   l, b                                        ; $5573: $68
	ld   a, d                                        ; $5574: $7a
	call z, $dbdd                                    ; $5575: $cc $dd $db
	jp   z, Jump_0ca_768a                            ; $5578: $ca $8a $76

	ld   d, h                                        ; $557b: $54
	inc  sp                                          ; $557c: $33
	inc  [hl]                                        ; $557d: $34
	ld   d, l                                        ; $557e: $55
	ld   [hl], a                                     ; $557f: $77
	adc  h                                           ; $5580: $8c
	cp   h                                           ; $5581: $bc
	call z, $aacc                                    ; $5582: $cc $cc $aa
	sbc  c                                           ; $5585: $99
	halt                                             ; $5586: $76
	ld   d, h                                        ; $5587: $54
	inc  sp                                          ; $5588: $33
	ld   d, h                                        ; $5589: $54
	ld   c, b                                        ; $558a: $48
	halt                                             ; $558b: $76
	cp   e                                           ; $558c: $bb
	sbc  h                                           ; $558d: $9c
	cp   d                                           ; $558e: $ba
	cp   h                                           ; $558f: $bc
	sbc  d                                           ; $5590: $9a
	cp   c                                           ; $5591: $b9
	ld   a, b                                        ; $5592: $78
	ld   h, l                                        ; $5593: $65
	ld   d, l                                        ; $5594: $55
	ld   d, l                                        ; $5595: $55
	ld   h, [hl]                                     ; $5596: $66
	ld   h, a                                        ; $5597: $67
	adc  b                                           ; $5598: $88
	xor  d                                           ; $5599: $aa
	sbc  d                                           ; $559a: $9a
	xor  d                                           ; $559b: $aa
	xor  e                                           ; $559c: $ab
	xor  c                                           ; $559d: $a9
	xor  c                                           ; $559e: $a9
	ld   [hl], a                                     ; $559f: $77
	ld   h, l                                        ; $55a0: $65
	ld   h, [hl]                                     ; $55a1: $66
	ld   h, a                                        ; $55a2: $67
	ld   h, [hl]                                     ; $55a3: $66
	ld   [hl], a                                     ; $55a4: $77
	ld   a, c                                        ; $55a5: $79
	xor  c                                           ; $55a6: $a9
	sbc  e                                           ; $55a7: $9b
	xor  d                                           ; $55a8: $aa
	xor  d                                           ; $55a9: $aa
	sbc  c                                           ; $55aa: $99
	sbc  b                                           ; $55ab: $98
	adc  b                                           ; $55ac: $88
	ld   h, [hl]                                     ; $55ad: $66
	ld   h, [hl]                                     ; $55ae: $66
	ld   h, [hl]                                     ; $55af: $66
	ld   h, a                                        ; $55b0: $67
	ld   h, a                                        ; $55b1: $67
	ld   a, b                                        ; $55b2: $78
	sbc  c                                           ; $55b3: $99
	xor  d                                           ; $55b4: $aa
	xor  d                                           ; $55b5: $aa
	xor  d                                           ; $55b6: $aa
	sbc  b                                           ; $55b7: $98
	adc  b                                           ; $55b8: $88
	ld   [hl], a                                     ; $55b9: $77
	halt                                             ; $55ba: $76
	ld   [hl], a                                     ; $55bb: $77
	ld   h, [hl]                                     ; $55bc: $66
	ld   h, [hl]                                     ; $55bd: $66
	ld   [hl], a                                     ; $55be: $77
	ld   a, c                                        ; $55bf: $79
	sbc  c                                           ; $55c0: $99
	sbc  c                                           ; $55c1: $99
	sbc  d                                           ; $55c2: $9a
	xor  c                                           ; $55c3: $a9
	sbc  c                                           ; $55c4: $99
	sbc  b                                           ; $55c5: $98
	ld   [hl], a                                     ; $55c6: $77
	ld   [hl], a                                     ; $55c7: $77
	halt                                             ; $55c8: $76
	ld   [hl], a                                     ; $55c9: $77
	ld   h, [hl]                                     ; $55ca: $66
	ld   [hl], a                                     ; $55cb: $77
	ld   a, c                                        ; $55cc: $79
	adc  b                                           ; $55cd: $88
	sbc  c                                           ; $55ce: $99
	sbc  c                                           ; $55cf: $99
	sbc  c                                           ; $55d0: $99
	sbc  c                                           ; $55d1: $99
	adc  b                                           ; $55d2: $88
	adc  b                                           ; $55d3: $88
	ld   [hl], a                                     ; $55d4: $77
	ld   [hl], a                                     ; $55d5: $77
	ld   [hl], a                                     ; $55d6: $77
	ld   [hl], a                                     ; $55d7: $77
	ld   [hl], a                                     ; $55d8: $77
	ld   [hl], a                                     ; $55d9: $77
	adc  b                                           ; $55da: $88
	sbc  b                                           ; $55db: $98
	sbc  c                                           ; $55dc: $99
	xor  c                                           ; $55dd: $a9
	sbc  c                                           ; $55de: $99
	adc  c                                           ; $55df: $89
	adc  c                                           ; $55e0: $89
	add  a                                           ; $55e1: $87
	add  a                                           ; $55e2: $87
	ld   [hl], a                                     ; $55e3: $77
	halt                                             ; $55e4: $76
	ld   [hl], a                                     ; $55e5: $77
	ld   [hl], a                                     ; $55e6: $77
	ld   [hl], a                                     ; $55e7: $77
	adc  c                                           ; $55e8: $89
	adc  c                                           ; $55e9: $89
	xor  c                                           ; $55ea: $a9
	sbc  d                                           ; $55eb: $9a
	sbc  c                                           ; $55ec: $99
	sbc  c                                           ; $55ed: $99
	sbc  c                                           ; $55ee: $99
	adc  b                                           ; $55ef: $88
	ld   [hl], a                                     ; $55f0: $77
	halt                                             ; $55f1: $76
	halt                                             ; $55f2: $76
	ld   h, a                                        ; $55f3: $67
	ld   [hl], a                                     ; $55f4: $77
	adc  b                                           ; $55f5: $88
	sbc  c                                           ; $55f6: $99
	sbc  d                                           ; $55f7: $9a
	xor  d                                           ; $55f8: $aa
	xor  d                                           ; $55f9: $aa
	sbc  c                                           ; $55fa: $99
	adc  c                                           ; $55fb: $89
	add  a                                           ; $55fc: $87
	ld   [hl], a                                     ; $55fd: $77
	ld   [hl], a                                     ; $55fe: $77
	ld   h, [hl]                                     ; $55ff: $66
	ld   h, [hl]                                     ; $5600: $66
	ld   [hl], a                                     ; $5601: $77
	ld   a, b                                        ; $5602: $78
	sbc  b                                           ; $5603: $98
	sbc  d                                           ; $5604: $9a
	sbc  c                                           ; $5605: $99
	xor  c                                           ; $5606: $a9
	sbc  c                                           ; $5607: $99
	sbc  b                                           ; $5608: $98
	add  a                                           ; $5609: $87
	ld   [hl], a                                     ; $560a: $77
	ld   [hl], a                                     ; $560b: $77
	ld   h, [hl]                                     ; $560c: $66
	ld   h, [hl]                                     ; $560d: $66
	ld   h, a                                        ; $560e: $67
	ld   a, b                                        ; $560f: $78
	adc  b                                           ; $5610: $88
	sbc  c                                           ; $5611: $99
	xor  c                                           ; $5612: $a9
	sbc  c                                           ; $5613: $99
	sbc  c                                           ; $5614: $99
	adc  c                                           ; $5615: $89
	add  a                                           ; $5616: $87
	ld   [hl], a                                     ; $5617: $77
	halt                                             ; $5618: $76
	ld   h, [hl]                                     ; $5619: $66
	ld   h, [hl]                                     ; $561a: $66
	ld   h, a                                        ; $561b: $67
	ld   [hl], a                                     ; $561c: $77
	adc  c                                           ; $561d: $89
	sbc  d                                           ; $561e: $9a
	xor  c                                           ; $561f: $a9
	sbc  d                                           ; $5620: $9a
	sbc  c                                           ; $5621: $99
	sbc  b                                           ; $5622: $98
	adc  b                                           ; $5623: $88
	ld   [hl], a                                     ; $5624: $77
	halt                                             ; $5625: $76
	ld   h, [hl]                                     ; $5626: $66
	ld   h, [hl]                                     ; $5627: $66
	ld   [hl], a                                     ; $5628: $77
	ld   a, b                                        ; $5629: $78
	adc  b                                           ; $562a: $88
	xor  c                                           ; $562b: $a9
	xor  d                                           ; $562c: $aa
	sbc  d                                           ; $562d: $9a
	xor  d                                           ; $562e: $aa
	sbc  c                                           ; $562f: $99
	add  a                                           ; $5630: $87
	halt                                             ; $5631: $76
	ld   h, a                                        ; $5632: $67
	ld   d, [hl]                                     ; $5633: $56
	ld   h, [hl]                                     ; $5634: $66
	ld   h, a                                        ; $5635: $67
	ld   a, b                                        ; $5636: $78
	adc  d                                           ; $5637: $8a
	xor  c                                           ; $5638: $a9
	cp   d                                           ; $5639: $ba
	sbc  e                                           ; $563a: $9b
	xor  c                                           ; $563b: $a9
	sbc  c                                           ; $563c: $99
	halt                                             ; $563d: $76
	halt                                             ; $563e: $76
	ld   h, [hl]                                     ; $563f: $66
	ld   h, l                                        ; $5640: $65
	ld   h, [hl]                                     ; $5641: $66
	ld   h, a                                        ; $5642: $67
	adc  c                                           ; $5643: $89
	sbc  d                                           ; $5644: $9a
	xor  e                                           ; $5645: $ab
	xor  d                                           ; $5646: $aa
	cp   d                                           ; $5647: $ba
	sbc  b                                           ; $5648: $98
	sbc  b                                           ; $5649: $98
	ld   h, [hl]                                     ; $564a: $66
	ld   b, h                                        ; $564b: $44
	ld   d, l                                        ; $564c: $55
	ld   d, [hl]                                     ; $564d: $56
	ld   h, [hl]                                     ; $564e: $66
	adc  b                                           ; $564f: $88
	adc  d                                           ; $5650: $8a
	sbc  d                                           ; $5651: $9a
	res  5, e                                        ; $5652: $cb $ab
	cp   c                                           ; $5654: $b9
	adc  c                                           ; $5655: $89
	halt                                             ; $5656: $76
	ld   d, l                                        ; $5657: $55
	dec  [hl]                                        ; $5658: $35
	ld   d, h                                        ; $5659: $54
	ld   h, [hl]                                     ; $565a: $66
	ld   h, a                                        ; $565b: $67
	sbc  c                                           ; $565c: $99
	xor  h                                           ; $565d: $ac
	cp   d                                           ; $565e: $ba
	call z, $a9ba                                    ; $565f: $cc $ba $a9
	sbc  c                                           ; $5662: $99
	ld   h, h                                        ; $5663: $64
	ld   b, e                                        ; $5664: $43
	ld   b, h                                        ; $5665: $44
	ld   b, l                                        ; $5666: $45
	ld   d, l                                        ; $5667: $55
	ld   a, b                                        ; $5668: $78
	xor  e                                           ; $5669: $ab
	cp   h                                           ; $566a: $bc
	cp   h                                           ; $566b: $bc
	call c, $98bb                                    ; $566c: $dc $bb $98
	halt                                             ; $566f: $76
	ld   b, e                                        ; $5670: $43
	inc  de                                          ; $5671: $13
	ld   b, d                                        ; $5672: $42
	ld   d, [hl]                                     ; $5673: $56
	ld   h, a                                        ; $5674: $67
	cp   h                                           ; $5675: $bc
	cp   [hl]                                        ; $5676: $be
	db   $eb                                         ; $5677: $eb
	xor  $cb                                         ; $5678: $ee $cb
	xor  c                                           ; $567a: $a9
	ld   [hl], a                                     ; $567b: $77
	ld   b, d                                        ; $567c: $42
	ld   hl, $2523                                   ; $567d: $21 $23 $25
	ld   h, a                                        ; $5680: $67
	sbc  e                                           ; $5681: $9b
	db   $dd                                         ; $5682: $dd
	xor  $de                                         ; $5683: $ee $de
	call c, $86a9                                    ; $5685: $dc $a9 $86
	ld   d, d                                        ; $5688: $52
	ld   de, $3312                                   ; $5689: $11 $12 $33
	ld   d, a                                        ; $568c: $57
	adc  e                                           ; $568d: $8b
	sbc  $ef                                         ; $568e: $de $ef
	db   $ed                                         ; $5690: $ed
	db   $fd                                         ; $5691: $fd
	xor  e                                           ; $5692: $ab
	add  [hl]                                        ; $5693: $86
	ld   d, d                                        ; $5694: $52
	ld   de, $2211                                   ; $5695: $11 $11 $22
	ld   h, a                                        ; $5698: $67
	ld   a, e                                        ; $5699: $7b
	sbc  $ff                                         ; $569a: $de $ff
	rst  $28                                         ; $569c: $ef
	db   $fc                                         ; $569d: $fc
	cp   e                                           ; $569e: $bb
	add  l                                           ; $569f: $85
	ld   h, d                                        ; $56a0: $62
	ld   de, $3311                                   ; $56a1: $11 $11 $33
	ld   b, a                                        ; $56a4: $47
	sbc  d                                           ; $56a5: $9a
	rst  JumpTable                                         ; $56a6: $df
	rst  $38                                         ; $56a7: $ff
	rst  $38                                         ; $56a8: $ff
	db   $dd                                         ; $56a9: $dd
	cp   c                                           ; $56aa: $b9
	add  [hl]                                        ; $56ab: $86
	ld   b, d                                        ; $56ac: $42
	ld   de, $2311                                   ; $56ad: $11 $11 $23
	ld   h, [hl]                                     ; $56b0: $66
	adc  h                                           ; $56b1: $8c
	sbc  $ff                                         ; $56b2: $de $ff
	rst  $38                                         ; $56b4: $ff
	db   $ec                                         ; $56b5: $ec
	xor  c                                           ; $56b6: $a9
	ld   h, [hl]                                     ; $56b7: $66
	ld   b, c                                        ; $56b8: $41
	ld   de, $2411                                   ; $56b9: $11 $11 $24
	ld   d, a                                        ; $56bc: $57
	xor  h                                           ; $56bd: $ac
	rst  JumpTable                                         ; $56be: $df
	rst  $38                                         ; $56bf: $ff
	cp   $dc                                         ; $56c0: $fe $dc
	xor  c                                           ; $56c2: $a9
	halt                                             ; $56c3: $76
	ld   b, c                                        ; $56c4: $41
	ld   de, $2311                                   ; $56c5: $11 $11 $23
	ld   e, b                                        ; $56c8: $58
	xor  e                                           ; $56c9: $ab
	rst  $38                                         ; $56ca: $ff
	rst  $38                                         ; $56cb: $ff
	cp   $ec                                         ; $56cc: $fe $ec
	xor  c                                           ; $56ce: $a9
	ld   [hl], l                                     ; $56cf: $75
	ld   b, c                                        ; $56d0: $41
	ld   de, $2411                                   ; $56d1: $11 $11 $24
	ld   h, a                                        ; $56d4: $67
	cp   l                                           ; $56d5: $bd
	rst  JumpTable                                         ; $56d6: $df
	rst  $38                                         ; $56d7: $ff
	cp   $db                                         ; $56d8: $fe $db
	cp   c                                           ; $56da: $b9
	halt                                             ; $56db: $76
	ld   sp, $1111                                   ; $56dc: $31 $11 $11
	inc  sp                                          ; $56df: $33
	ld   e, b                                        ; $56e0: $58
	sbc  l                                           ; $56e1: $9d
	rst  $38                                         ; $56e2: $ff
	rst  $38                                         ; $56e3: $ff
	cp   $cc                                         ; $56e4: $fe $cc
	xor  b                                           ; $56e6: $a8
	halt                                             ; $56e7: $76
	ld   sp, $1111                                   ; $56e8: $31 $11 $11
	inc  h                                           ; $56eb: $24
	ld   h, a                                        ; $56ec: $67
	cp   l                                           ; $56ed: $bd
	rst  JumpTable                                         ; $56ee: $df
	rst  $38                                         ; $56ef: $ff
	cp   $cc                                         ; $56f0: $fe $cc
	cp   c                                           ; $56f2: $b9
	halt                                             ; $56f3: $76
	ld   sp, $1211                                   ; $56f4: $31 $11 $12
	inc  sp                                          ; $56f7: $33
	ld   l, b                                        ; $56f8: $68
	cp   l                                           ; $56f9: $bd
	rst  $28                                         ; $56fa: $ef
	rst  $38                                         ; $56fb: $ff
	db   $ed                                         ; $56fc: $ed
	db   $db                                         ; $56fd: $db
	xor  c                                           ; $56fe: $a9
	ld   [hl], l                                     ; $56ff: $75
	ld   sp, $1111                                   ; $5700: $31 $11 $11
	inc  h                                           ; $5703: $24
	ld   h, a                                        ; $5704: $67
	cp   h                                           ; $5705: $bc
	rst  JumpTable                                         ; $5706: $df
	rst  $38                                         ; $5707: $ff
	cp   $db                                         ; $5708: $fe $db
	cp   b                                           ; $570a: $b8
	halt                                             ; $570b: $76
	ld   sp, $1211                                   ; $570c: $31 $11 $12
	inc  h                                           ; $570f: $24
	ld   h, a                                        ; $5710: $67
	xor  l                                           ; $5711: $ad
	rst  $28                                         ; $5712: $ef
	rst  $38                                         ; $5713: $ff
	db   $fd                                         ; $5714: $fd
	call c, Call_0ca_75a9                            ; $5715: $dc $a9 $75
	ld   [hl-], a                                    ; $5718: $32
	ld   de, $2512                                   ; $5719: $11 $12 $25
	ld   h, a                                        ; $571c: $67
	cp   h                                           ; $571d: $bc
	rst  JumpTable                                         ; $571e: $df
	cp   $fe                                         ; $571f: $fe $fe
	cp   h                                           ; $5721: $bc
	and  a                                           ; $5722: $a7
	halt                                             ; $5723: $76
	ld   hl, $1211                                   ; $5724: $21 $11 $12
	inc  [hl]                                        ; $5727: $34
	ld   l, c                                        ; $5728: $69
	xor  l                                           ; $5729: $ad
	rst  $38                                         ; $572a: $ff
	rst  $38                                         ; $572b: $ff
	db   $ed                                         ; $572c: $ed
	res  3, b                                        ; $572d: $cb $98
	ld   [hl], h                                     ; $572f: $74
	ld   sp, $2211                                   ; $5730: $31 $11 $22
	scf                                              ; $5733: $37
	ld   l, b                                        ; $5734: $68
	call $edee                                       ; $5735: $cd $ee $ed
	db   $ec                                         ; $5738: $ec
	xor  d                                           ; $5739: $aa
	adc  b                                           ; $573a: $88
	ld   [hl], l                                     ; $573b: $75
	ld   [hl-], a                                    ; $573c: $32
	ld   de, $4632                                   ; $573d: $11 $32 $46
	ld   l, c                                        ; $5740: $69
	cp   h                                           ; $5741: $bc
	rst  JumpTable                                         ; $5742: $df
	xor  $ed                                         ; $5743: $ee $ed
	res  3, b                                        ; $5745: $cb $98
	ld   [hl], l                                     ; $5747: $75
	ld   b, d                                        ; $5748: $42
	ld   [de], a                                     ; $5749: $12
	ld   [hl-], a                                    ; $574a: $32
	ld   b, l                                        ; $574b: $45
	ld   e, b                                        ; $574c: $58
	cp   e                                           ; $574d: $bb
	sbc  $de                                         ; $574e: $de $de
	call c, $98bb                                    ; $5750: $dc $bb $98
	add  l                                           ; $5753: $85
	ld   b, e                                        ; $5754: $43
	ld   [hl+], a                                    ; $5755: $22
	inc  sp                                          ; $5756: $33
	ld   b, l                                        ; $5757: $45
	ld   h, a                                        ; $5758: $67
	xor  e                                           ; $5759: $ab
	call $dcdd                                       ; $575a: $cd $dd $dc
	res  5, c                                        ; $575d: $cb $a9

Jump_0ca_575f:
	add  [hl]                                        ; $575f: $86
	ld   h, e                                        ; $5760: $63
	ld   [hl-], a                                    ; $5761: $32
	inc  [hl]                                        ; $5762: $34
	dec  [hl]                                        ; $5763: $35
	ld   h, [hl]                                     ; $5764: $66
	sbc  e                                           ; $5765: $9b
	cp   h                                           ; $5766: $bc
	db   $ec                                         ; $5767: $ec
	db   $dd                                         ; $5768: $dd
	cp   e                                           ; $5769: $bb
	cp   c                                           ; $576a: $b9
	add  a                                           ; $576b: $87
	ld   d, l                                        ; $576c: $55
	ld   b, d                                        ; $576d: $42
	inc  h                                           ; $576e: $24
	ld   b, h                                        ; $576f: $44
	ld   h, a                                        ; $5770: $67
	ld   a, c                                        ; $5771: $79
	xor  e                                           ; $5772: $ab
	call z, $bcdc                                    ; $5773: $cc $dc $bc
	xor  d                                           ; $5776: $aa
	sbc  b                                           ; $5777: $98
	ld   h, [hl]                                     ; $5778: $66
	ld   d, e                                        ; $5779: $53
	inc  sp                                          ; $577a: $33
	ld   b, l                                        ; $577b: $45
	ld   d, [hl]                                     ; $577c: $56
	ld   l, b                                        ; $577d: $68
	sbc  d                                           ; $577e: $9a
	call z, $bccc                                    ; $577f: $cc $cc $bc
	xor  c                                           ; $5782: $a9
	sbc  d                                           ; $5783: $9a
	ld   [hl], a                                     ; $5784: $77
	ld   [hl], h                                     ; $5785: $74
	ld   b, l                                        ; $5786: $45
	ld   b, h                                        ; $5787: $44
	ld   h, [hl]                                     ; $5788: $66
	ld   e, b                                        ; $5789: $58
	ld   [hl], a                                     ; $578a: $77
	xor  d                                           ; $578b: $aa
	xor  h                                           ; $578c: $ac
	jp   z, $99bb                                    ; $578d: $ca $bb $99

	adc  c                                           ; $5790: $89
	halt                                             ; $5791: $76
	ld   h, l                                        ; $5792: $65
	ld   b, l                                        ; $5793: $45
	ld   h, l                                        ; $5794: $65

Call_0ca_5795:
	ld   h, a                                        ; $5795: $67
	ld   h, a                                        ; $5796: $67
	sbc  c                                           ; $5797: $99
	sbc  e                                           ; $5798: $9b
	xor  e                                           ; $5799: $ab
	xor  d                                           ; $579a: $aa
	xor  c                                           ; $579b: $a9
	sbc  d                                           ; $579c: $9a
	add  a                                           ; $579d: $87
	add  [hl]                                        ; $579e: $86
	ld   h, a                                        ; $579f: $67
	ld   d, h                                        ; $57a0: $54
	ld   [hl], a                                     ; $57a1: $77
	ld   c, c                                        ; $57a2: $49
	halt                                             ; $57a3: $76
	xor  c                                           ; $57a4: $a9
	sbc  d                                           ; $57a5: $9a
	cp   c                                           ; $57a6: $b9
	cp   d                                           ; $57a7: $ba
	sbc  d                                           ; $57a8: $9a
	sbc  b                                           ; $57a9: $98
	adc  c                                           ; $57aa: $89
	add  [hl]                                        ; $57ab: $86
	ld   [hl], a                                     ; $57ac: $77
	ld   h, [hl]                                     ; $57ad: $66
	ld   h, a                                        ; $57ae: $67
	ld   [hl], a                                     ; $57af: $77
	ld   [hl], a                                     ; $57b0: $77
	sbc  b                                           ; $57b1: $98
	adc  d                                           ; $57b2: $8a
	sbc  c                                           ; $57b3: $99
	sbc  e                                           ; $57b4: $9b
	sbc  c                                           ; $57b5: $99
	cp   b                                           ; $57b6: $b8
	adc  c                                           ; $57b7: $89
	add  a                                           ; $57b8: $87
	sub  a                                           ; $57b9: $97
	ld   h, a                                        ; $57ba: $67
	halt                                             ; $57bb: $76
	ld   [hl], a                                     ; $57bc: $77
	ld   [hl], a                                     ; $57bd: $77
	ld   a, c                                        ; $57be: $79
	ld   a, b                                        ; $57bf: $78
	sbc  b                                           ; $57c0: $98
	sbc  d                                           ; $57c1: $9a
	adc  c                                           ; $57c2: $89
	xor  b                                           ; $57c3: $a8
	adc  d                                           ; $57c4: $8a
	sub  a                                           ; $57c5: $97
	xor  c                                           ; $57c6: $a9
	ld   h, a                                        ; $57c7: $67
	sub  [hl]                                        ; $57c8: $96
	ld   e, c                                        ; $57c9: $59
	ld   h, a                                        ; $57ca: $67
	add  a                                           ; $57cb: $87
	ld   [hl], a                                     ; $57cc: $77
	ld   a, b                                        ; $57cd: $78
	adc  c                                           ; $57ce: $89
	adc  d                                           ; $57cf: $8a
	sbc  b                                           ; $57d0: $98
	adc  d                                           ; $57d1: $8a
	add  a                                           ; $57d2: $87
	sbc  c                                           ; $57d3: $99
	ld   a, c                                        ; $57d4: $79
	halt                                             ; $57d5: $76
	and  [hl]                                        ; $57d6: $a6
	ld   l, b                                        ; $57d7: $68
	halt                                             ; $57d8: $76
	ld   a, b                                        ; $57d9: $78
	ld   a, b                                        ; $57da: $78
	adc  b                                           ; $57db: $88
	sbc  c                                           ; $57dc: $99
	adc  c                                           ; $57dd: $89
	xor  c                                           ; $57de: $a9
	sbc  d                                           ; $57df: $9a
	sub  a                                           ; $57e0: $97
	adc  c                                           ; $57e1: $89
	add  a                                           ; $57e2: $87
	and  a                                           ; $57e3: $a7
	ld   e, d                                        ; $57e4: $5a
	halt                                             ; $57e5: $76
	adc  c                                           ; $57e6: $89
	ld   [hl], a                                     ; $57e7: $77
	adc  b                                           ; $57e8: $88
	add  a                                           ; $57e9: $87
	sbc  c                                           ; $57ea: $99
	adc  c                                           ; $57eb: $89
	ld   a, c                                        ; $57ec: $79
	and  a                                           ; $57ed: $a7
	xor  b                                           ; $57ee: $a8
	ld   a, b                                        ; $57ef: $78
	adc  b                                           ; $57f0: $88
	ld   a, b                                        ; $57f1: $78
	adc  b                                           ; $57f2: $88
	adc  b                                           ; $57f3: $88
	add  a                                           ; $57f4: $87
	ld   a, c                                        ; $57f5: $79
	adc  b                                           ; $57f6: $88
	adc  b                                           ; $57f7: $88
	adc  b                                           ; $57f8: $88
	sbc  b                                           ; $57f9: $98
	sbc  b                                           ; $57fa: $98
	adc  b                                           ; $57fb: $88
	add  a                                           ; $57fc: $87
	sbc  b                                           ; $57fd: $98
	ld   a, c                                        ; $57fe: $79
	ld   a, b                                        ; $57ff: $78
	sbc  b                                           ; $5800: $98
	ld   l, c                                        ; $5801: $69
	ld   [hl], a                                     ; $5802: $77
	sbc  b                                           ; $5803: $98
	add  a                                           ; $5804: $87
	sub  a                                           ; $5805: $97
	ld   a, b                                        ; $5806: $78
	add  a                                           ; $5807: $87
	ld   a, d                                        ; $5808: $7a
	ld   a, b                                        ; $5809: $78
	add  a                                           ; $580a: $87
	adc  b                                           ; $580b: $88
	add  a                                           ; $580c: $87
	adc  c                                           ; $580d: $89
	ld   a, b                                        ; $580e: $78
	adc  b                                           ; $580f: $88
	ld   [hl], a                                     ; $5810: $77
	sub  a                                           ; $5811: $97
	sbc  b                                           ; $5812: $98
	adc  b                                           ; $5813: $88
	adc  c                                           ; $5814: $89
	ld   a, b                                        ; $5815: $78
	adc  b                                           ; $5816: $88
	adc  b                                           ; $5817: $88
	add  a                                           ; $5818: $87
	adc  b                                           ; $5819: $88
	adc  b                                           ; $581a: $88
	ld   a, b                                        ; $581b: $78
	adc  b                                           ; $581c: $88
	adc  b                                           ; $581d: $88
	ld   a, b                                        ; $581e: $78
	sbc  b                                           ; $581f: $98
	adc  c                                           ; $5820: $89
	adc  b                                           ; $5821: $88
	adc  c                                           ; $5822: $89
	adc  b                                           ; $5823: $88
	adc  b                                           ; $5824: $88
	adc  b                                           ; $5825: $88
	adc  b                                           ; $5826: $88
	ld   a, c                                        ; $5827: $79
	add  a                                           ; $5828: $87
	adc  c                                           ; $5829: $89
	add  a                                           ; $582a: $87
	sbc  b                                           ; $582b: $98
	adc  b                                           ; $582c: $88
	sub  a                                           ; $582d: $97
	adc  c                                           ; $582e: $89
	ld   a, b                                        ; $582f: $78
	adc  b                                           ; $5830: $88
	adc  b                                           ; $5831: $88
	adc  b                                           ; $5832: $88
	adc  b                                           ; $5833: $88
	add  a                                           ; $5834: $87
	adc  b                                           ; $5835: $88
	adc  b                                           ; $5836: $88
	sub  a                                           ; $5837: $97
	adc  c                                           ; $5838: $89
	add  a                                           ; $5839: $87
	sbc  c                                           ; $583a: $99
	ld   a, b                                        ; $583b: $78
	adc  b                                           ; $583c: $88
	adc  b                                           ; $583d: $88
	sbc  b                                           ; $583e: $98
	adc  b                                           ; $583f: $88
	adc  b                                           ; $5840: $88
	adc  b                                           ; $5841: $88
	adc  b                                           ; $5842: $88
	adc  b                                           ; $5843: $88
	add  a                                           ; $5844: $87
	adc  b                                           ; $5845: $88
	adc  b                                           ; $5846: $88
	adc  b                                           ; $5847: $88
	adc  b                                           ; $5848: $88
	sbc  b                                           ; $5849: $98
	adc  b                                           ; $584a: $88
	add  a                                           ; $584b: $87
	adc  c                                           ; $584c: $89
	ld   a, b                                        ; $584d: $78
	adc  b                                           ; $584e: $88
	add  a                                           ; $584f: $87
	sbc  b                                           ; $5850: $98
	adc  b                                           ; $5851: $88
	adc  b                                           ; $5852: $88
	adc  c                                           ; $5853: $89
	adc  b                                           ; $5854: $88
	adc  b                                           ; $5855: $88
	add  a                                           ; $5856: $87
	adc  b                                           ; $5857: $88
	ld   a, b                                        ; $5858: $78
	ld   a, b                                        ; $5859: $78
	adc  b                                           ; $585a: $88
	adc  b                                           ; $585b: $88
	add  a                                           ; $585c: $87
	sbc  b                                           ; $585d: $98
	adc  b                                           ; $585e: $88
	adc  b                                           ; $585f: $88
	adc  b                                           ; $5860: $88
	adc  b                                           ; $5861: $88
	adc  b                                           ; $5862: $88
	adc  b                                           ; $5863: $88
	adc  b                                           ; $5864: $88
	ld   a, b                                        ; $5865: $78
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
	adc  c                                           ; $5877: $89
	adc  b                                           ; $5878: $88
	sbc  b                                           ; $5879: $98
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

Call_0ca_589d:
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
	sbc  b                                           ; $58a7: $98
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
	sbc  b                                           ; $58f6: $98
	adc  b                                           ; $58f7: $88
	adc  c                                           ; $58f8: $89
	adc  b                                           ; $58f9: $88
	adc  b                                           ; $58fa: $88
	adc  b                                           ; $58fb: $88
	adc  b                                           ; $58fc: $88
	adc  b                                           ; $58fd: $88
	adc  b                                           ; $58fe: $88
	adc  b                                           ; $58ff: $88
	sub  a                                           ; $5900: $97
	adc  b                                           ; $5901: $88
	adc  b                                           ; $5902: $88
	sbc  b                                           ; $5903: $98
	adc  b                                           ; $5904: $88
	adc  b                                           ; $5905: $88
	adc  b                                           ; $5906: $88
	adc  b                                           ; $5907: $88
	adc  b                                           ; $5908: $88
	sbc  b                                           ; $5909: $98
	adc  b                                           ; $590a: $88
	adc  b                                           ; $590b: $88
	adc  b                                           ; $590c: $88
	adc  b                                           ; $590d: $88
	ld   a, b                                        ; $590e: $78
	adc  b                                           ; $590f: $88
	sbc  b                                           ; $5910: $98
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
	sbc  b                                           ; $591c: $98
	adc  b                                           ; $591d: $88
	adc  b                                           ; $591e: $88
	adc  c                                           ; $591f: $89
	adc  b                                           ; $5920: $88
	adc  b                                           ; $5921: $88
	adc  b                                           ; $5922: $88
	adc  b                                           ; $5923: $88
	sub  a                                           ; $5924: $97
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
	adc  c                                           ; $5930: $89
	adc  b                                           ; $5931: $88
	sbc  b                                           ; $5932: $98
	adc  b                                           ; $5933: $88
	adc  b                                           ; $5934: $88
	sbc  b                                           ; $5935: $98
	adc  b                                           ; $5936: $88
	adc  c                                           ; $5937: $89
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
	adc  c                                           ; $5943: $89
	adc  b                                           ; $5944: $88
	adc  b                                           ; $5945: $88
	sbc  b                                           ; $5946: $98
	sbc  b                                           ; $5947: $98
	adc  b                                           ; $5948: $88
	adc  b                                           ; $5949: $88
	adc  b                                           ; $594a: $88
	adc  c                                           ; $594b: $89
	ld   a, b                                        ; $594c: $78
	sub  a                                           ; $594d: $97
	adc  b                                           ; $594e: $88
	adc  b                                           ; $594f: $88
	adc  b                                           ; $5950: $88
	adc  b                                           ; $5951: $88
	adc  b                                           ; $5952: $88
	add  a                                           ; $5953: $87
	sbc  b                                           ; $5954: $98
	ld   a, b                                        ; $5955: $78
	adc  c                                           ; $5956: $89
	adc  c                                           ; $5957: $89
	adc  b                                           ; $5958: $88
	sbc  b                                           ; $5959: $98
	adc  b                                           ; $595a: $88
	adc  c                                           ; $595b: $89
	adc  b                                           ; $595c: $88
	adc  b                                           ; $595d: $88
	adc  b                                           ; $595e: $88
	adc  b                                           ; $595f: $88
	adc  b                                           ; $5960: $88
	adc  c                                           ; $5961: $89
	ld   a, b                                        ; $5962: $78
	adc  b                                           ; $5963: $88
	adc  b                                           ; $5964: $88
	adc  b                                           ; $5965: $88
	adc  b                                           ; $5966: $88
	adc  b                                           ; $5967: $88
	adc  b                                           ; $5968: $88
	adc  b                                           ; $5969: $88
	adc  b                                           ; $596a: $88
	adc  b                                           ; $596b: $88
	adc  c                                           ; $596c: $89
	adc  b                                           ; $596d: $88
	add  a                                           ; $596e: $87
	sbc  b                                           ; $596f: $98
	adc  c                                           ; $5970: $89
	sbc  c                                           ; $5971: $99
	ld   a, b                                        ; $5972: $78
	sub  a                                           ; $5973: $97
	adc  b                                           ; $5974: $88
	adc  b                                           ; $5975: $88
	ld   [hl], a                                     ; $5976: $77
	adc  b                                           ; $5977: $88
	ld   a, c                                        ; $5978: $79
	add  a                                           ; $5979: $87
	add  a                                           ; $597a: $87
	adc  b                                           ; $597b: $88
	ld   a, b                                        ; $597c: $78
	adc  c                                           ; $597d: $89
	adc  b                                           ; $597e: $88
	adc  b                                           ; $597f: $88
	adc  b                                           ; $5980: $88
	sbc  b                                           ; $5981: $98
	adc  c                                           ; $5982: $89
	adc  b                                           ; $5983: $88
	ld   [hl], a                                     ; $5984: $77
	sbc  b                                           ; $5985: $98
	add  a                                           ; $5986: $87
	adc  b                                           ; $5987: $88
	ld   a, b                                        ; $5988: $78
	adc  b                                           ; $5989: $88
	adc  b                                           ; $598a: $88
	adc  b                                           ; $598b: $88
	adc  b                                           ; $598c: $88
	adc  c                                           ; $598d: $89
	ld   a, b                                        ; $598e: $78
	add  a                                           ; $598f: $87
	ld   a, c                                        ; $5990: $79
	sub  a                                           ; $5991: $97
	sbc  b                                           ; $5992: $98
	adc  b                                           ; $5993: $88
	ld   a, b                                        ; $5994: $78
	adc  b                                           ; $5995: $88
	adc  c                                           ; $5996: $89
	adc  b                                           ; $5997: $88
	adc  b                                           ; $5998: $88
	adc  c                                           ; $5999: $89
	ld   a, b                                        ; $599a: $78
	sub  a                                           ; $599b: $97
	ld   a, c                                        ; $599c: $79
	adc  b                                           ; $599d: $88
	sbc  b                                           ; $599e: $98
	adc  b                                           ; $599f: $88
	sbc  b                                           ; $59a0: $98
	adc  b                                           ; $59a1: $88
	adc  b                                           ; $59a2: $88
	adc  b                                           ; $59a3: $88
	adc  b                                           ; $59a4: $88
	adc  b                                           ; $59a5: $88
	adc  b                                           ; $59a6: $88
	adc  b                                           ; $59a7: $88
	sbc  b                                           ; $59a8: $98
	ld   a, c                                        ; $59a9: $79
	add  a                                           ; $59aa: $87
	adc  b                                           ; $59ab: $88
	adc  b                                           ; $59ac: $88
	sbc  b                                           ; $59ad: $98
	adc  b                                           ; $59ae: $88
	adc  b                                           ; $59af: $88
	adc  b                                           ; $59b0: $88
	add  a                                           ; $59b1: $87
	adc  b                                           ; $59b2: $88
	ld   a, b                                        ; $59b3: $78
	adc  b                                           ; $59b4: $88
	add  a                                           ; $59b5: $87
	ld   a, b                                        ; $59b6: $78
	add  a                                           ; $59b7: $87
	adc  c                                           ; $59b8: $89
	adc  c                                           ; $59b9: $89
	adc  b                                           ; $59ba: $88
	adc  c                                           ; $59bb: $89
	sbc  b                                           ; $59bc: $98
	adc  c                                           ; $59bd: $89
	add  a                                           ; $59be: $87
	adc  b                                           ; $59bf: $88
	add  a                                           ; $59c0: $87
	ld   a, b                                        ; $59c1: $78
	ld   [hl], a                                     ; $59c2: $77
	ld   [hl], a                                     ; $59c3: $77
	ld   [hl], a                                     ; $59c4: $77
	ld   [hl], a                                     ; $59c5: $77
	sbc  b                                           ; $59c6: $98
	adc  c                                           ; $59c7: $89
	sbc  c                                           ; $59c8: $99
	sbc  c                                           ; $59c9: $99
	sbc  c                                           ; $59ca: $99
	sbc  b                                           ; $59cb: $98
	sbc  c                                           ; $59cc: $99
	add  a                                           ; $59cd: $87
	ld   [hl], a                                     ; $59ce: $77
	ld   [hl], a                                     ; $59cf: $77
	ld   h, [hl]                                     ; $59d0: $66
	halt                                             ; $59d1: $76
	ld   [hl], a                                     ; $59d2: $77
	ld   [hl], a                                     ; $59d3: $77
	adc  b                                           ; $59d4: $88
	adc  b                                           ; $59d5: $88
	sbc  c                                           ; $59d6: $99
	xor  d                                           ; $59d7: $aa
	xor  d                                           ; $59d8: $aa
	xor  c                                           ; $59d9: $a9
	sbc  c                                           ; $59da: $99
	adc  b                                           ; $59db: $88
	adc  b                                           ; $59dc: $88
	ld   [hl], a                                     ; $59dd: $77
	ld   h, [hl]                                     ; $59de: $66
	halt                                             ; $59df: $76
	ld   h, a                                        ; $59e0: $67
	ld   [hl], a                                     ; $59e1: $77
	ld   [hl], a                                     ; $59e2: $77
	adc  c                                           ; $59e3: $89
	sbc  c                                           ; $59e4: $99
	sbc  d                                           ; $59e5: $9a
	xor  c                                           ; $59e6: $a9
	sbc  c                                           ; $59e7: $99
	sbc  d                                           ; $59e8: $9a
	sbc  b                                           ; $59e9: $98
	sbc  c                                           ; $59ea: $99
	add  [hl]                                        ; $59eb: $86
	ld   h, [hl]                                     ; $59ec: $66
	ld   h, l                                        ; $59ed: $65
	ld   h, [hl]                                     ; $59ee: $66
	ld   h, a                                        ; $59ef: $67
	ld   [hl], a                                     ; $59f0: $77
	add  a                                           ; $59f1: $87
	sbc  c                                           ; $59f2: $99
	sbc  c                                           ; $59f3: $99
	sbc  d                                           ; $59f4: $9a
	xor  d                                           ; $59f5: $aa
	xor  d                                           ; $59f6: $aa
	xor  c                                           ; $59f7: $a9
	adc  b                                           ; $59f8: $88
	add  a                                           ; $59f9: $87
	ld   [hl], a                                     ; $59fa: $77
	ld   h, [hl]                                     ; $59fb: $66
	ld   h, [hl]                                     ; $59fc: $66
	ld   h, [hl]                                     ; $59fd: $66
	ld   h, a                                        ; $59fe: $67
	ld   a, b                                        ; $59ff: $78
	ld   a, c                                        ; $5a00: $79
	sbc  c                                           ; $5a01: $99
	xor  d                                           ; $5a02: $aa
	cp   d                                           ; $5a03: $ba
	xor  c                                           ; $5a04: $a9
	xor  d                                           ; $5a05: $aa
	sbc  c                                           ; $5a06: $99
	sbc  b                                           ; $5a07: $98
	halt                                             ; $5a08: $76
	ld   h, [hl]                                     ; $5a09: $66
	ld   d, l                                        ; $5a0a: $55
	ld   h, [hl]                                     ; $5a0b: $66
	ld   h, [hl]                                     ; $5a0c: $66
	ld   [hl], a                                     ; $5a0d: $77
	sbc  c                                           ; $5a0e: $99
	sbc  c                                           ; $5a0f: $99
	xor  d                                           ; $5a10: $aa
	sbc  d                                           ; $5a11: $9a
	xor  c                                           ; $5a12: $a9
	xor  d                                           ; $5a13: $aa
	xor  c                                           ; $5a14: $a9
	adc  b                                           ; $5a15: $88
	ld   [hl], a                                     ; $5a16: $77
	ld   h, [hl]                                     ; $5a17: $66
	ld   h, l                                        ; $5a18: $65
	ld   d, l                                        ; $5a19: $55
	ld   h, [hl]                                     ; $5a1a: $66
	ld   h, a                                        ; $5a1b: $67
	adc  c                                           ; $5a1c: $89
	adc  c                                           ; $5a1d: $89
	sbc  d                                           ; $5a1e: $9a
	xor  c                                           ; $5a1f: $a9
	xor  d                                           ; $5a20: $aa
	xor  c                                           ; $5a21: $a9
	sbc  c                                           ; $5a22: $99
	sbc  b                                           ; $5a23: $98
	ld   [hl], a                                     ; $5a24: $77
	ld   h, l                                        ; $5a25: $65
	ld   d, l                                        ; $5a26: $55
	ld   d, l                                        ; $5a27: $55
	ld   d, [hl]                                     ; $5a28: $56
	ld   h, [hl]                                     ; $5a29: $66
	ld   a, c                                        ; $5a2a: $79
	sbc  c                                           ; $5a2b: $99
	sbc  e                                           ; $5a2c: $9b
	cp   d                                           ; $5a2d: $ba
	xor  e                                           ; $5a2e: $ab
	cp   c                                           ; $5a2f: $b9
	xor  d                                           ; $5a30: $aa
	sbc  b                                           ; $5a31: $98
	add  a                                           ; $5a32: $87
	ld   h, [hl]                                     ; $5a33: $66
	ld   d, l                                        ; $5a34: $55
	ld   d, l                                        ; $5a35: $55
	ld   d, [hl]                                     ; $5a36: $56
	ld   h, [hl]                                     ; $5a37: $66
	ld   a, b                                        ; $5a38: $78
	sbc  d                                           ; $5a39: $9a
	xor  c                                           ; $5a3a: $a9
	xor  e                                           ; $5a3b: $ab
	xor  e                                           ; $5a3c: $ab
	xor  d                                           ; $5a3d: $aa
	xor  d                                           ; $5a3e: $aa
	xor  b                                           ; $5a3f: $a8
	add  a                                           ; $5a40: $87
	halt                                             ; $5a41: $76
	ld   d, l                                        ; $5a42: $55
	ld   d, l                                        ; $5a43: $55
	ld   b, [hl]                                     ; $5a44: $46
	ld   h, [hl]                                     ; $5a45: $66
	ld   a, b                                        ; $5a46: $78
	xor  d                                           ; $5a47: $aa
	sbc  d                                           ; $5a48: $9a
	cp   d                                           ; $5a49: $ba
	xor  d                                           ; $5a4a: $aa
	xor  d                                           ; $5a4b: $aa
	xor  d                                           ; $5a4c: $aa
	sbc  c                                           ; $5a4d: $99
	add  a                                           ; $5a4e: $87
	halt                                             ; $5a4f: $76
	ld   d, l                                        ; $5a50: $55
	ld   d, h                                        ; $5a51: $54
	ld   b, l                                        ; $5a52: $45
	ld   h, [hl]                                     ; $5a53: $66
	ld   h, a                                        ; $5a54: $67
	xor  c                                           ; $5a55: $a9
	xor  e                                           ; $5a56: $ab
	call z, $baaa                                    ; $5a57: $cc $aa $ba
	sbc  c                                           ; $5a5a: $99
	sbc  c                                           ; $5a5b: $99
	ld   [hl], a                                     ; $5a5c: $77
	halt                                             ; $5a5d: $76
	ld   b, h                                        ; $5a5e: $44
	ld   b, h                                        ; $5a5f: $44
	ld   b, l                                        ; $5a60: $45
	ld   h, [hl]                                     ; $5a61: $66
	ld   a, b                                        ; $5a62: $78
	xor  c                                           ; $5a63: $a9
	xor  e                                           ; $5a64: $ab
	cp   h                                           ; $5a65: $bc
	cp   e                                           ; $5a66: $bb
	cp   c                                           ; $5a67: $b9
	sbc  b                                           ; $5a68: $98
	xor  b                                           ; $5a69: $a8
	add  a                                           ; $5a6a: $87
	ld   h, [hl]                                     ; $5a6b: $66
	ld   d, h                                        ; $5a6c: $54
	ld   b, h                                        ; $5a6d: $44
	ld   b, l                                        ; $5a6e: $45
	halt                                             ; $5a6f: $76
	ld   l, c                                        ; $5a70: $69
	sbc  e                                           ; $5a71: $9b
	cp   e                                           ; $5a72: $bb
	res  5, d                                        ; $5a73: $cb $aa
	xor  d                                           ; $5a75: $aa
	sbc  c                                           ; $5a76: $99
	sbc  c                                           ; $5a77: $99
	halt                                             ; $5a78: $76
	ld   h, h                                        ; $5a79: $64
	ld   b, e                                        ; $5a7a: $43
	ld   b, l                                        ; $5a7b: $45
	ld   d, l                                        ; $5a7c: $55
	ld   h, a                                        ; $5a7d: $67
	adc  c                                           ; $5a7e: $89
	xor  e                                           ; $5a7f: $ab
	jp   z, $babb                                    ; $5a80: $ca $bb $ba

	xor  d                                           ; $5a83: $aa
	sbc  b                                           ; $5a84: $98
	sbc  b                                           ; $5a85: $98
	ld   [hl], l                                     ; $5a86: $75
	ld   d, l                                        ; $5a87: $55
	ld   b, h                                        ; $5a88: $44
	ld   b, l                                        ; $5a89: $45
	ld   d, l                                        ; $5a8a: $55
	ld   a, c                                        ; $5a8b: $79
	xor  c                                           ; $5a8c: $a9
	cp   h                                           ; $5a8d: $bc
	call z, $aaba                                    ; $5a8e: $cc $ba $aa
	sbc  c                                           ; $5a91: $99
	sbc  c                                           ; $5a92: $99
	add  a                                           ; $5a93: $87
	ld   [hl], l                                     ; $5a94: $75
	ld   d, h                                        ; $5a95: $54
	ld   b, h                                        ; $5a96: $44
	ld   b, [hl]                                     ; $5a97: $46
	ld   h, [hl]                                     ; $5a98: $66
	adc  b                                           ; $5a99: $88
	xor  e                                           ; $5a9a: $ab
	set  1, h                                        ; $5a9b: $cb $cc

Call_0ca_5a9d:
	cp   e                                           ; $5a9d: $bb
	xor  c                                           ; $5a9e: $a9
	sbc  c                                           ; $5a9f: $99
	sbc  c                                           ; $5aa0: $99
	ld   [hl], a                                     ; $5aa1: $77
	ld   d, h                                        ; $5aa2: $54
	ld   b, h                                        ; $5aa3: $44
	ld   b, e                                        ; $5aa4: $43
	ld   d, [hl]                                     ; $5aa5: $56
	ld   h, a                                        ; $5aa6: $67
	sbc  d                                           ; $5aa7: $9a
	xor  d                                           ; $5aa8: $aa
	set  1, d                                        ; $5aa9: $cb $ca
	xor  e                                           ; $5aab: $ab
	adc  c                                           ; $5aac: $89
	adc  c                                           ; $5aad: $89
	sub  a                                           ; $5aae: $97
	halt                                             ; $5aaf: $76
	ld   b, h                                        ; $5ab0: $44
	dec  [hl]                                        ; $5ab1: $35
	ld   b, h                                        ; $5ab2: $44
	ld   d, [hl]                                     ; $5ab3: $56
	add  a                                           ; $5ab4: $87
	sbc  e                                           ; $5ab5: $9b
	cp   h                                           ; $5ab6: $bc
	cp   l                                           ; $5ab7: $bd
	cp   d                                           ; $5ab8: $ba
	xor  c                                           ; $5ab9: $a9
	xor  b                                           ; $5aba: $a8
	sbc  b                                           ; $5abb: $98
	ld   [hl], a                                     ; $5abc: $77
	ld   d, l                                        ; $5abd: $55
	ld   b, e                                        ; $5abe: $43
	ld   b, h                                        ; $5abf: $44
	ld   h, [hl]                                     ; $5ac0: $66
	ld   h, a                                        ; $5ac1: $67
	adc  e                                           ; $5ac2: $8b
	xor  e                                           ; $5ac3: $ab
	cp   e                                           ; $5ac4: $bb
	res  7, d                                        ; $5ac5: $cb $ba
	sbc  d                                           ; $5ac7: $9a
	adc  b                                           ; $5ac8: $88
	adc  c                                           ; $5ac9: $89
	halt                                             ; $5aca: $76
	ld   d, h                                        ; $5acb: $54
	ld   b, h                                        ; $5acc: $44
	ld   b, l                                        ; $5acd: $45
	ld   h, [hl]                                     ; $5ace: $66
	ld   a, b                                        ; $5acf: $78
	cp   e                                           ; $5ad0: $bb
	xor  h                                           ; $5ad1: $ac
	res  5, d                                        ; $5ad2: $cb $aa
	xor  c                                           ; $5ad4: $a9
	adc  b                                           ; $5ad5: $88
	sbc  b                                           ; $5ad6: $98
	add  a                                           ; $5ad7: $87
	ld   h, l                                        ; $5ad8: $65
	ld   b, h                                        ; $5ad9: $44
	ld   b, h                                        ; $5ada: $44
	ld   d, [hl]                                     ; $5adb: $56
	ld   h, a                                        ; $5adc: $67
	adc  c                                           ; $5add: $89
	xor  d                                           ; $5ade: $aa
	cp   l                                           ; $5adf: $bd
	cp   d                                           ; $5ae0: $ba
	cp   d                                           ; $5ae1: $ba
	sbc  b                                           ; $5ae2: $98
	adc  b                                           ; $5ae3: $88
	add  a                                           ; $5ae4: $87
	halt                                             ; $5ae5: $76
	ld   b, h                                        ; $5ae6: $44
	inc  sp                                          ; $5ae7: $33
	dec  [hl]                                        ; $5ae8: $35
	ld   h, [hl]                                     ; $5ae9: $66
	ld   a, c                                        ; $5aea: $79
	cp   e                                           ; $5aeb: $bb
	call $abcb                                       ; $5aec: $cd $cb $ab
	sbc  c                                           ; $5aef: $99
	adc  c                                           ; $5af0: $89
	xor  b                                           ; $5af1: $a8
	ld   [hl], a                                     ; $5af2: $77
	ld   h, h                                        ; $5af3: $64
	inc  [hl]                                        ; $5af4: $34
	inc  [hl]                                        ; $5af5: $34
	ld   d, [hl]                                     ; $5af6: $56
	ld   h, a                                        ; $5af7: $67
	sbc  e                                           ; $5af8: $9b
	cp   e                                           ; $5af9: $bb
	call z, $babb                                    ; $5afa: $cc $bb $ba
	adc  c                                           ; $5afd: $89
	sbc  b                                           ; $5afe: $98
	add  a                                           ; $5aff: $87
	ld   h, l                                        ; $5b00: $65
	inc  [hl]                                        ; $5b01: $34
	ld   b, e                                        ; $5b02: $43
	ld   b, [hl]                                     ; $5b03: $46
	ld   [hl], a                                     ; $5b04: $77
	adc  d                                           ; $5b05: $8a
	cp   e                                           ; $5b06: $bb
	call $a9ba                                       ; $5b07: $cd $ba $a9
	sbc  b                                           ; $5b0a: $98
	sbc  b                                           ; $5b0b: $98
	adc  b                                           ; $5b0c: $88
	halt                                             ; $5b0d: $76
	ld   d, l                                        ; $5b0e: $55
	ld   b, e                                        ; $5b0f: $43
	ld   b, h                                        ; $5b10: $44
	halt                                             ; $5b11: $76
	ld   a, c                                        ; $5b12: $79
	sbc  e                                           ; $5b13: $9b
	xor  h                                           ; $5b14: $ac
	cp   h                                           ; $5b15: $bc
	cp   c                                           ; $5b16: $b9
	xor  b                                           ; $5b17: $a8
	xor  c                                           ; $5b18: $a9
	adc  c                                           ; $5b19: $89
	ld   a, b                                        ; $5b1a: $78
	ld   d, h                                        ; $5b1b: $54
	ld   b, e                                        ; $5b1c: $43
	ld   b, e                                        ; $5b1d: $43
	ld   d, [hl]                                     ; $5b1e: $56
	ld   l, b                                        ; $5b1f: $68
	adc  d                                           ; $5b20: $8a
	cp   e                                           ; $5b21: $bb
	db   $db                                         ; $5b22: $db
	jp   z, $99aa                                    ; $5b23: $ca $aa $99

	adc  b                                           ; $5b26: $88
	add  a                                           ; $5b27: $87
	ld   [hl], l                                     ; $5b28: $75
	ld   d, h                                        ; $5b29: $54
	ld   b, e                                        ; $5b2a: $43
	ld   [hl], $76                                   ; $5b2b: $36 $76
	ld   a, c                                        ; $5b2d: $79
	cp   e                                           ; $5b2e: $bb
	cp   h                                           ; $5b2f: $bc
	cp   e                                           ; $5b30: $bb
	sbc  e                                           ; $5b31: $9b
	xor  c                                           ; $5b32: $a9
	adc  c                                           ; $5b33: $89
	xor  b                                           ; $5b34: $a8
	ld   a, b                                        ; $5b35: $78
	ld   h, l                                        ; $5b36: $65
	ld   b, h                                        ; $5b37: $44
	ld   b, e                                        ; $5b38: $43
	ld   d, [hl]                                     ; $5b39: $56
	ld   h, a                                        ; $5b3a: $67
	sbc  e                                           ; $5b3b: $9b
	cp   h                                           ; $5b3c: $bc
	set  1, d                                        ; $5b3d: $cb $ca
	xor  c                                           ; $5b3f: $a9
	adc  b                                           ; $5b40: $88
	sbc  c                                           ; $5b41: $99
	ld   [hl], a                                     ; $5b42: $77
	halt                                             ; $5b43: $76
	ld   d, h                                        ; $5b44: $54
	ld   b, e                                        ; $5b45: $43
	ld   b, l                                        ; $5b46: $45
	ld   h, a                                        ; $5b47: $67
	ld   a, d                                        ; $5b48: $7a
	cp   e                                           ; $5b49: $bb
	call z, $aacb                                    ; $5b4a: $cc $cb $aa
	xor  c                                           ; $5b4d: $a9
	sbc  c                                           ; $5b4e: $99
	sbc  b                                           ; $5b4f: $98
	ld   [hl], a                                     ; $5b50: $77
	ld   h, h                                        ; $5b51: $64
	ld   d, l                                        ; $5b52: $55
	inc  sp                                          ; $5b53: $33
	ld   d, a                                        ; $5b54: $57
	ld   [hl], a                                     ; $5b55: $77
	adc  d                                           ; $5b56: $8a
	cp   e                                           ; $5b57: $bb
	call z, $a9ba                                    ; $5b58: $cc $ba $a9
	adc  c                                           ; $5b5b: $89
	sbc  b                                           ; $5b5c: $98
	sub  a                                           ; $5b5d: $97
	halt                                             ; $5b5e: $76
	ld   d, l                                        ; $5b5f: $55
	ld   b, h                                        ; $5b60: $44
	ld   b, l                                        ; $5b61: $45
	ld   [hl], a                                     ; $5b62: $77
	ld   a, b                                        ; $5b63: $78
	sbc  e                                           ; $5b64: $9b
	xor  h                                           ; $5b65: $ac
	jp   z, $a9aa                                    ; $5b66: $ca $aa $a9

	sbc  b                                           ; $5b69: $98
	adc  b                                           ; $5b6a: $88
	ld   [hl], a                                     ; $5b6b: $77
	ld   h, l                                        ; $5b6c: $65
	ld   d, h                                        ; $5b6d: $54
	ld   b, h                                        ; $5b6e: $44
	ld   d, a                                        ; $5b6f: $57
	halt                                             ; $5b70: $76
	adc  d                                           ; $5b71: $8a
	cp   e                                           ; $5b72: $bb
	cp   h                                           ; $5b73: $bc
	cp   d                                           ; $5b74: $ba
	sbc  c                                           ; $5b75: $99
	xor  b                                           ; $5b76: $a8
	sbc  b                                           ; $5b77: $98
	sbc  b                                           ; $5b78: $98
	ld   [hl], a                                     ; $5b79: $77
	ld   h, l                                        ; $5b7a: $65
	ld   d, l                                        ; $5b7b: $55
	ld   d, h                                        ; $5b7c: $54
	ld   d, a                                        ; $5b7d: $57
	ld   [hl], a                                     ; $5b7e: $77
	adc  d                                           ; $5b7f: $8a
	cp   d                                           ; $5b80: $ba
	cp   e                                           ; $5b81: $bb
	cp   c                                           ; $5b82: $b9
	xor  d                                           ; $5b83: $aa
	adc  c                                           ; $5b84: $89
	sbc  c                                           ; $5b85: $99
	add  a                                           ; $5b86: $87
	ld   [hl], a                                     ; $5b87: $77
	ld   h, l                                        ; $5b88: $65
	ld   d, h                                        ; $5b89: $54
	ld   b, l                                        ; $5b8a: $45
	ld   [hl], a                                     ; $5b8b: $77
	ld   a, b                                        ; $5b8c: $78
	sbc  e                                           ; $5b8d: $9b
	xor  e                                           ; $5b8e: $ab
	cp   e                                           ; $5b8f: $bb
	xor  d                                           ; $5b90: $aa
	sbc  d                                           ; $5b91: $9a
	sbc  b                                           ; $5b92: $98
	sbc  b                                           ; $5b93: $98
	add  a                                           ; $5b94: $87
	ld   [hl], a                                     ; $5b95: $77
	ld   h, l                                        ; $5b96: $65
	ld   d, h                                        ; $5b97: $54
	ld   b, [hl]                                     ; $5b98: $46
	ld   [hl], a                                     ; $5b99: $77
	adc  b                                           ; $5b9a: $88
	xor  d                                           ; $5b9b: $aa
	xor  e                                           ; $5b9c: $ab
	xor  e                                           ; $5b9d: $ab
	sbc  d                                           ; $5b9e: $9a
	xor  d                                           ; $5b9f: $aa
	sbc  c                                           ; $5ba0: $99
	adc  b                                           ; $5ba1: $88
	add  a                                           ; $5ba2: $87
	halt                                             ; $5ba3: $76
	ld   d, [hl]                                     ; $5ba4: $56
	ld   d, l                                        ; $5ba5: $55
	ld   d, [hl]                                     ; $5ba6: $56
	halt                                             ; $5ba7: $76
	adc  b                                           ; $5ba8: $88
	sbc  d                                           ; $5ba9: $9a
	xor  e                                           ; $5baa: $ab
	xor  e                                           ; $5bab: $ab
	xor  c                                           ; $5bac: $a9
	xor  b                                           ; $5bad: $a8
	sbc  c                                           ; $5bae: $99
	sbc  b                                           ; $5baf: $98
	ld   a, b                                        ; $5bb0: $78
	ld   [hl], a                                     ; $5bb1: $77
	ld   h, [hl]                                     ; $5bb2: $66
	ld   h, l                                        ; $5bb3: $65
	ld   d, [hl]                                     ; $5bb4: $56
	ld   h, a                                        ; $5bb5: $67
	ld   a, c                                        ; $5bb6: $79
	sbc  c                                           ; $5bb7: $99
	xor  d                                           ; $5bb8: $aa
	xor  c                                           ; $5bb9: $a9
	xor  c                                           ; $5bba: $a9
	xor  c                                           ; $5bbb: $a9
	sbc  c                                           ; $5bbc: $99
	adc  b                                           ; $5bbd: $88
	adc  b                                           ; $5bbe: $88
	add  a                                           ; $5bbf: $87
	ld   h, [hl]                                     ; $5bc0: $66
	ld   h, [hl]                                     ; $5bc1: $66
	ld   h, [hl]                                     ; $5bc2: $66
	ld   h, a                                        ; $5bc3: $67
	ld   a, b                                        ; $5bc4: $78
	adc  b                                           ; $5bc5: $88
	xor  d                                           ; $5bc6: $aa
	xor  d                                           ; $5bc7: $aa
	sbc  c                                           ; $5bc8: $99
	sbc  c                                           ; $5bc9: $99
	adc  c                                           ; $5bca: $89
	adc  b                                           ; $5bcb: $88
	sbc  b                                           ; $5bcc: $98
	add  a                                           ; $5bcd: $87
	halt                                             ; $5bce: $76
	ld   h, [hl]                                     ; $5bcf: $66
	ld   h, [hl]                                     ; $5bd0: $66
	ld   h, a                                        ; $5bd1: $67
	ld   [hl], a                                     ; $5bd2: $77
	adc  c                                           ; $5bd3: $89
	sbc  c                                           ; $5bd4: $99
	xor  d                                           ; $5bd5: $aa
	xor  c                                           ; $5bd6: $a9
	xor  c                                           ; $5bd7: $a9
	sbc  c                                           ; $5bd8: $99
	adc  c                                           ; $5bd9: $89
	adc  b                                           ; $5bda: $88
	adc  b                                           ; $5bdb: $88
	ld   [hl], a                                     ; $5bdc: $77
	ld   [hl], a                                     ; $5bdd: $77
	ld   h, [hl]                                     ; $5bde: $66
	ld   h, [hl]                                     ; $5bdf: $66
	ld   [hl], a                                     ; $5be0: $77
	adc  c                                           ; $5be1: $89
	sbc  b                                           ; $5be2: $98
	sbc  c                                           ; $5be3: $99
	xor  c                                           ; $5be4: $a9
	adc  c                                           ; $5be5: $89
	sbc  b                                           ; $5be6: $98
	sbc  b                                           ; $5be7: $98
	adc  b                                           ; $5be8: $88
	ld   [hl], a                                     ; $5be9: $77
	add  a                                           ; $5bea: $87
	ld   [hl], a                                     ; $5beb: $77
	ld   [hl], a                                     ; $5bec: $77
	ld   h, [hl]                                     ; $5bed: $66
	ld   [hl], a                                     ; $5bee: $77
	ld   a, b                                        ; $5bef: $78
	adc  c                                           ; $5bf0: $89
	sbc  b                                           ; $5bf1: $98
	sbc  b                                           ; $5bf2: $98
	sbc  c                                           ; $5bf3: $99
	sbc  b                                           ; $5bf4: $98
	adc  c                                           ; $5bf5: $89
	adc  b                                           ; $5bf6: $88
	adc  b                                           ; $5bf7: $88
	add  a                                           ; $5bf8: $87
	ld   [hl], a                                     ; $5bf9: $77
	ld   [hl], a                                     ; $5bfa: $77
	ld   [hl], a                                     ; $5bfb: $77
	ld   [hl], a                                     ; $5bfc: $77
	ld   [hl], a                                     ; $5bfd: $77
	ld   a, b                                        ; $5bfe: $78
	adc  c                                           ; $5bff: $89
	sbc  b                                           ; $5c00: $98
	adc  b                                           ; $5c01: $88
	adc  c                                           ; $5c02: $89
	sbc  b                                           ; $5c03: $98
	sbc  c                                           ; $5c04: $99
	adc  c                                           ; $5c05: $89
	sbc  c                                           ; $5c06: $99
	adc  b                                           ; $5c07: $88
	ld   [hl], a                                     ; $5c08: $77
	ld   [hl], a                                     ; $5c09: $77
	ld   [hl], a                                     ; $5c0a: $77
	ld   [hl], a                                     ; $5c0b: $77
	ld   [hl], a                                     ; $5c0c: $77
	ld   a, b                                        ; $5c0d: $78
	adc  c                                           ; $5c0e: $89
	sbc  c                                           ; $5c0f: $99
	sbc  b                                           ; $5c10: $98
	adc  b                                           ; $5c11: $88
	adc  b                                           ; $5c12: $88
	adc  c                                           ; $5c13: $89
	sbc  c                                           ; $5c14: $99
	adc  b                                           ; $5c15: $88
	sbc  b                                           ; $5c16: $98
	adc  b                                           ; $5c17: $88
	add  a                                           ; $5c18: $87
	ld   [hl], a                                     ; $5c19: $77
	ld   [hl], a                                     ; $5c1a: $77
	ld   a, b                                        ; $5c1b: $78
	adc  b                                           ; $5c1c: $88
	adc  b                                           ; $5c1d: $88
	adc  b                                           ; $5c1e: $88
	adc  b                                           ; $5c1f: $88
	adc  b                                           ; $5c20: $88
	adc  b                                           ; $5c21: $88
	sbc  b                                           ; $5c22: $98
	adc  c                                           ; $5c23: $89
	sbc  b                                           ; $5c24: $98
	adc  c                                           ; $5c25: $89
	sbc  b                                           ; $5c26: $98
	adc  b                                           ; $5c27: $88
	adc  b                                           ; $5c28: $88
	adc  b                                           ; $5c29: $88
	add  a                                           ; $5c2a: $87
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
	adc  c                                           ; $5cab: $89
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
	ld   a, b                                        ; $5cd8: $78
	adc  b                                           ; $5cd9: $88
	adc  b                                           ; $5cda: $88
	add  a                                           ; $5cdb: $87
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
	ld   a, b                                        ; $5ce8: $78
	adc  b                                           ; $5ce9: $88
	adc  b                                           ; $5cea: $88
	adc  b                                           ; $5ceb: $88
	add  a                                           ; $5cec: $87
	adc  b                                           ; $5ced: $88
	ld   a, b                                        ; $5cee: $78
	adc  c                                           ; $5cef: $89
	adc  b                                           ; $5cf0: $88
	sbc  c                                           ; $5cf1: $99
	add  a                                           ; $5cf2: $87
	adc  b                                           ; $5cf3: $88
	ld   a, b                                        ; $5cf4: $78
	adc  c                                           ; $5cf5: $89
	ld   [hl], a                                     ; $5cf6: $77
	sbc  b                                           ; $5cf7: $98
	ld   [hl], a                                     ; $5cf8: $77
	adc  b                                           ; $5cf9: $88
	adc  b                                           ; $5cfa: $88
	sbc  c                                           ; $5cfb: $99
	add  a                                           ; $5cfc: $87
	adc  b                                           ; $5cfd: $88
	ld   a, b                                        ; $5cfe: $78
	sbc  b                                           ; $5cff: $98
	ld   a, b                                        ; $5d00: $78
	sbc  c                                           ; $5d01: $99
	add  a                                           ; $5d02: $87
	adc  b                                           ; $5d03: $88
	adc  b                                           ; $5d04: $88
	adc  b                                           ; $5d05: $88
	ld   a, b                                        ; $5d06: $78
	adc  b                                           ; $5d07: $88
	ld   a, b                                        ; $5d08: $78
	adc  b                                           ; $5d09: $88
	ld   a, b                                        ; $5d0a: $78
	sbc  b                                           ; $5d0b: $98
	adc  b                                           ; $5d0c: $88
	sbc  b                                           ; $5d0d: $98
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	add  a                                           ; $5d10: $87
	adc  b                                           ; $5d11: $88
	ld   a, b                                        ; $5d12: $78
	add  a                                           ; $5d13: $87
	ld   [hl], a                                     ; $5d14: $77
	add  a                                           ; $5d15: $87
	ld   a, b                                        ; $5d16: $78
	adc  b                                           ; $5d17: $88
	adc  c                                           ; $5d18: $89
	adc  c                                           ; $5d19: $89
	adc  b                                           ; $5d1a: $88
	adc  b                                           ; $5d1b: $88
	adc  b                                           ; $5d1c: $88
	add  a                                           ; $5d1d: $87
	ld   a, b                                        ; $5d1e: $78
	add  a                                           ; $5d1f: $87
	ld   a, b                                        ; $5d20: $78
	add  a                                           ; $5d21: $87
	ld   [hl], a                                     ; $5d22: $77
	adc  c                                           ; $5d23: $89
	sbc  c                                           ; $5d24: $99
	adc  c                                           ; $5d25: $89
	xor  c                                           ; $5d26: $a9
	adc  b                                           ; $5d27: $88
	add  a                                           ; $5d28: $87
	ld   [hl], a                                     ; $5d29: $77
	adc  b                                           ; $5d2a: $88
	ld   a, b                                        ; $5d2b: $78
	adc  b                                           ; $5d2c: $88
	ld   [hl], a                                     ; $5d2d: $77
	sub  a                                           ; $5d2e: $97
	adc  c                                           ; $5d2f: $89
	sbc  d                                           ; $5d30: $9a
	sbc  b                                           ; $5d31: $98
	sub  a                                           ; $5d32: $97
	ld   h, a                                        ; $5d33: $67
	ld   [hl], a                                     ; $5d34: $77
	ld   a, c                                        ; $5d35: $79
	sub  a                                           ; $5d36: $97
	adc  c                                           ; $5d37: $89
	halt                                             ; $5d38: $76
	ld   a, b                                        ; $5d39: $78
	sbc  b                                           ; $5d3a: $98
	sbc  c                                           ; $5d3b: $99
	sbc  b                                           ; $5d3c: $98
	ld   a, c                                        ; $5d3d: $79
	add  [hl]                                        ; $5d3e: $86
	ld   h, a                                        ; $5d3f: $67
	add  a                                           ; $5d40: $87
	adc  c                                           ; $5d41: $89
	add  a                                           ; $5d42: $87
	ld   [hl], a                                     ; $5d43: $77
	ld   a, b                                        ; $5d44: $78
	adc  c                                           ; $5d45: $89
	xor  d                                           ; $5d46: $aa
	xor  c                                           ; $5d47: $a9
	add  a                                           ; $5d48: $87
	halt                                             ; $5d49: $76
	ld   [hl], a                                     ; $5d4a: $77
	ld   a, c                                        ; $5d4b: $79
	sbc  b                                           ; $5d4c: $98
	ld   a, b                                        ; $5d4d: $78
	add  a                                           ; $5d4e: $87
	ld   a, b                                        ; $5d4f: $78
	xor  c                                           ; $5d50: $a9
	xor  d                                           ; $5d51: $aa
	sub  a                                           ; $5d52: $97
	ld   a, b                                        ; $5d53: $78
	ld   h, [hl]                                     ; $5d54: $66
	ld   a, c                                        ; $5d55: $79
	add  a                                           ; $5d56: $87
	adc  b                                           ; $5d57: $88
	add  a                                           ; $5d58: $87
	ld   a, b                                        ; $5d59: $78
	adc  c                                           ; $5d5a: $89
	xor  d                                           ; $5d5b: $aa
	add  a                                           ; $5d5c: $87
	add  a                                           ; $5d5d: $87
	ld   h, [hl]                                     ; $5d5e: $66
	ld   h, a                                        ; $5d5f: $67
	adc  b                                           ; $5d60: $88
	sbc  c                                           ; $5d61: $99
	add  a                                           ; $5d62: $87
	ld   a, b                                        ; $5d63: $78
	sbc  b                                           ; $5d64: $98
	sbc  c                                           ; $5d65: $99
	sub  a                                           ; $5d66: $97
	ld   a, b                                        ; $5d67: $78
	halt                                             ; $5d68: $76
	ld   h, a                                        ; $5d69: $67
	adc  b                                           ; $5d6a: $88
	sbc  d                                           ; $5d6b: $9a
	adc  b                                           ; $5d6c: $88
	adc  c                                           ; $5d6d: $89
	sbc  d                                           ; $5d6e: $9a
	xor  c                                           ; $5d6f: $a9
	sub  [hl]                                        ; $5d70: $96
	adc  b                                           ; $5d71: $88
	ld   h, a                                        ; $5d72: $67
	ld   l, b                                        ; $5d73: $68
	adc  b                                           ; $5d74: $88
	xor  b                                           ; $5d75: $a8
	sbc  b                                           ; $5d76: $98
	sbc  d                                           ; $5d77: $9a
	xor  c                                           ; $5d78: $a9
	sub  a                                           ; $5d79: $97
	ld   [hl], a                                     ; $5d7a: $77
	halt                                             ; $5d7b: $76
	ld   h, a                                        ; $5d7c: $67
	ld   [hl], a                                     ; $5d7d: $77
	adc  b                                           ; $5d7e: $88
	sbc  c                                           ; $5d7f: $99
	xor  d                                           ; $5d80: $aa
	sbc  c                                           ; $5d81: $99
	xor  b                                           ; $5d82: $a8
	ld   h, [hl]                                     ; $5d83: $66
	ld   [hl], a                                     ; $5d84: $77
	ld   h, [hl]                                     ; $5d85: $66
	ld   a, c                                        ; $5d86: $79
	adc  b                                           ; $5d87: $88
	sbc  b                                           ; $5d88: $98
	xor  b                                           ; $5d89: $a8
	xor  c                                           ; $5d8a: $a9
	sbc  b                                           ; $5d8b: $98
	ld   a, b                                        ; $5d8c: $78
	halt                                             ; $5d8d: $76
	ld   [hl], a                                     ; $5d8e: $77
	ld   [hl], a                                     ; $5d8f: $77
	sbc  c                                           ; $5d90: $99
	sbc  b                                           ; $5d91: $98
	sbc  d                                           ; $5d92: $9a
	adc  b                                           ; $5d93: $88
	sbc  c                                           ; $5d94: $99
	ld   [hl], l                                     ; $5d95: $75
	ld   h, a                                        ; $5d96: $67
	ld   h, [hl]                                     ; $5d97: $66
	ld   a, c                                        ; $5d98: $79
	sbc  b                                           ; $5d99: $98
	cp   e                                           ; $5d9a: $bb
	sbc  b                                           ; $5d9b: $98
	sbc  c                                           ; $5d9c: $99
	halt                                             ; $5d9d: $76
	add  a                                           ; $5d9e: $87
	ld   h, l                                        ; $5d9f: $65
	ld   a, b                                        ; $5da0: $78
	ld   a, b                                        ; $5da1: $78
	sbc  d                                           ; $5da2: $9a
	xor  c                                           ; $5da3: $a9
	xor  c                                           ; $5da4: $a9
	add  a                                           ; $5da5: $87
	halt                                             ; $5da6: $76
	ld   h, [hl]                                     ; $5da7: $66
	ld   l, b                                        ; $5da8: $68
	ld   a, b                                        ; $5da9: $78
	sbc  d                                           ; $5daa: $9a
	xor  c                                           ; $5dab: $a9
	cp   c                                           ; $5dac: $b9
	ld   h, a                                        ; $5dad: $67
	add  a                                           ; $5dae: $87
	ld   d, h                                        ; $5daf: $54
	halt                                             ; $5db0: $76
	ld   a, c                                        ; $5db1: $79
	adc  c                                           ; $5db2: $89
	sbc  d                                           ; $5db3: $9a
	xor  d                                           ; $5db4: $aa
	adc  b                                           ; $5db5: $88
	add  [hl]                                        ; $5db6: $86
	ld   h, [hl]                                     ; $5db7: $66
	ld   h, [hl]                                     ; $5db8: $66
	ld   h, a                                        ; $5db9: $67
	xor  d                                           ; $5dba: $aa
	cp   c                                           ; $5dbb: $b9
	xor  e                                           ; $5dbc: $ab
	sub  a                                           ; $5dbd: $97
	ld   [hl], a                                     ; $5dbe: $77
	ld   h, l                                        ; $5dbf: $65
	ld   [hl], a                                     ; $5dc0: $77
	add  a                                           ; $5dc1: $87
	adc  d                                           ; $5dc2: $8a
	sbc  d                                           ; $5dc3: $9a
	adc  c                                           ; $5dc4: $89
	xor  b                                           ; $5dc5: $a8
	ld   h, a                                        ; $5dc6: $67
	add  [hl]                                        ; $5dc7: $86
	ld   d, a                                        ; $5dc8: $57
	adc  b                                           ; $5dc9: $88
	adc  c                                           ; $5dca: $89
	cp   c                                           ; $5dcb: $b9
	xor  c                                           ; $5dcc: $a9
	adc  b                                           ; $5dcd: $88
	ld   [hl], a                                     ; $5dce: $77
	ld   d, a                                        ; $5dcf: $57
	halt                                             ; $5dd0: $76
	ld   a, b                                        ; $5dd1: $78
	xor  c                                           ; $5dd2: $a9
	xor  c                                           ; $5dd3: $a9
	adc  b                                           ; $5dd4: $88
	sbc  b                                           ; $5dd5: $98
	add  a                                           ; $5dd6: $87
	ld   h, [hl]                                     ; $5dd7: $66
	ld   [hl], a                                     ; $5dd8: $77
	ld   a, c                                        ; $5dd9: $79
	sbc  c                                           ; $5dda: $99
	sbc  c                                           ; $5ddb: $99
	xor  d                                           ; $5ddc: $aa
	sub  [hl]                                        ; $5ddd: $96
	ld   a, b                                        ; $5dde: $78
	add  [hl]                                        ; $5ddf: $86
	ld   l, c                                        ; $5de0: $69
	sbc  b                                           ; $5de1: $98
	sbc  c                                           ; $5de2: $99
	xor  c                                           ; $5de3: $a9
	sbc  d                                           ; $5de4: $9a
	ld   [hl], a                                     ; $5de5: $77
	ld   [hl], a                                     ; $5de6: $77
	halt                                             ; $5de7: $76
	sbc  d                                           ; $5de8: $9a
	adc  c                                           ; $5de9: $89
	sbc  c                                           ; $5dea: $99
	adc  c                                           ; $5deb: $89
	add  a                                           ; $5dec: $87
	add  a                                           ; $5ded: $87
	ld   [hl], a                                     ; $5dee: $77
	adc  c                                           ; $5def: $89
	adc  b                                           ; $5df0: $88
	sbc  b                                           ; $5df1: $98
	adc  b                                           ; $5df2: $88
	sbc  c                                           ; $5df3: $99
	halt                                             ; $5df4: $76
	ld   a, b                                        ; $5df5: $78
	halt                                             ; $5df6: $76
	sbc  c                                           ; $5df7: $99
	adc  b                                           ; $5df8: $88
	sbc  d                                           ; $5df9: $9a
	add  [hl]                                        ; $5dfa: $86
	ld   [hl], a                                     ; $5dfb: $77
	ld   h, [hl]                                     ; $5dfc: $66
	adc  b                                           ; $5dfd: $88
	adc  c                                           ; $5dfe: $89
	sbc  d                                           ; $5dff: $9a
	adc  b                                           ; $5e00: $88
	adc  c                                           ; $5e01: $89
	ld   [hl], a                                     ; $5e02: $77
	ld   a, b                                        ; $5e03: $78
	add  [hl]                                        ; $5e04: $86
	ld   a, c                                        ; $5e05: $79
	adc  b                                           ; $5e06: $88
	sbc  d                                           ; $5e07: $9a
	sbc  b                                           ; $5e08: $98
	sbc  b                                           ; $5e09: $98
	ld   h, [hl]                                     ; $5e0a: $66
	ld   a, b                                        ; $5e0b: $78
	ld   [hl], a                                     ; $5e0c: $77
	adc  c                                           ; $5e0d: $89
	adc  b                                           ; $5e0e: $88
	sbc  c                                           ; $5e0f: $99
	add  a                                           ; $5e10: $87
	ld   a, c                                        ; $5e11: $79
	ld   [hl], a                                     ; $5e12: $77
	ld   [hl], a                                     ; $5e13: $77
	adc  b                                           ; $5e14: $88
	sbc  c                                           ; $5e15: $99
	adc  d                                           ; $5e16: $8a
	adc  b                                           ; $5e17: $88
	ld   a, b                                        ; $5e18: $78
	add  a                                           ; $5e19: $87
	ld   l, b                                        ; $5e1a: $68
	adc  b                                           ; $5e1b: $88
	sbc  b                                           ; $5e1c: $98
	sbc  c                                           ; $5e1d: $99
	sbc  c                                           ; $5e1e: $99
	add  [hl]                                        ; $5e1f: $86
	ld   l, b                                        ; $5e20: $68
	halt                                             ; $5e21: $76
	ld   a, e                                        ; $5e22: $7b
	sub  a                                           ; $5e23: $97
	sbc  d                                           ; $5e24: $9a
	sub  a                                           ; $5e25: $97
	sbc  c                                           ; $5e26: $99
	ld   h, [hl]                                     ; $5e27: $66
	ld   a, b                                        ; $5e28: $78
	ld   [hl], a                                     ; $5e29: $77
	adc  b                                           ; $5e2a: $88
	adc  d                                           ; $5e2b: $8a
	sbc  c                                           ; $5e2c: $99
	add  a                                           ; $5e2d: $87
	sub  a                                           ; $5e2e: $97
	ld   [hl], a                                     ; $5e2f: $77
	ld   a, b                                        ; $5e30: $78
	sbc  d                                           ; $5e31: $9a
	sbc  b                                           ; $5e32: $98
	sbc  c                                           ; $5e33: $99
	adc  b                                           ; $5e34: $88
	adc  b                                           ; $5e35: $88
	ld   h, a                                        ; $5e36: $67
	adc  b                                           ; $5e37: $88
	adc  b                                           ; $5e38: $88
	sbc  b                                           ; $5e39: $98
	ld   a, b                                        ; $5e3a: $78
	adc  b                                           ; $5e3b: $88
	ld   h, a                                        ; $5e3c: $67
	sub  a                                           ; $5e3d: $97
	ld   a, c                                        ; $5e3e: $79
	sbc  b                                           ; $5e3f: $98
	adc  c                                           ; $5e40: $89
	sbc  b                                           ; $5e41: $98
	ld   [hl], a                                     ; $5e42: $77
	add  a                                           ; $5e43: $87
	ld   h, a                                        ; $5e44: $67
	ld   a, b                                        ; $5e45: $78
	adc  b                                           ; $5e46: $88
	sbc  c                                           ; $5e47: $99
	sub  a                                           ; $5e48: $97
	sbc  b                                           ; $5e49: $98
	halt                                             ; $5e4a: $76
	ld   l, b                                        ; $5e4b: $68
	ld   a, b                                        ; $5e4c: $78
	sbc  d                                           ; $5e4d: $9a
	adc  b                                           ; $5e4e: $88
	sbc  b                                           ; $5e4f: $98
	sub  a                                           ; $5e50: $97
	ld   a, b                                        ; $5e51: $78
	ld   [hl], a                                     ; $5e52: $77
	adc  b                                           ; $5e53: $88
	add  a                                           ; $5e54: $87
	ld   a, b                                        ; $5e55: $78
	adc  b                                           ; $5e56: $88
	sub  a                                           ; $5e57: $97
	ld   [hl], a                                     ; $5e58: $77
	ld   a, c                                        ; $5e59: $79
	adc  b                                           ; $5e5a: $88
	adc  d                                           ; $5e5b: $8a
	add  a                                           ; $5e5c: $87
	ld   [hl], a                                     ; $5e5d: $77
	add  a                                           ; $5e5e: $87
	ld   a, b                                        ; $5e5f: $78
	sbc  c                                           ; $5e60: $99
	ld   a, c                                        ; $5e61: $79
	and  a                                           ; $5e62: $a7
	add  a                                           ; $5e63: $87
	add  a                                           ; $5e64: $87
	ld   a, b                                        ; $5e65: $78
	ld   a, b                                        ; $5e66: $78
	adc  c                                           ; $5e67: $89
	sbc  c                                           ; $5e68: $99
	sbc  b                                           ; $5e69: $98
	sbc  b                                           ; $5e6a: $98
	sub  a                                           ; $5e6b: $97
	ld   l, b                                        ; $5e6c: $68
	adc  b                                           ; $5e6d: $88
	adc  b                                           ; $5e6e: $88
	cp   c                                           ; $5e6f: $b9
	adc  b                                           ; $5e70: $88
	ld   a, c                                        ; $5e71: $79
	ld   [hl], a                                     ; $5e72: $77
	ld   [hl], a                                     ; $5e73: $77
	xor  b                                           ; $5e74: $a8
	sbc  b                                           ; $5e75: $98
	adc  b                                           ; $5e76: $88
	ld   a, c                                        ; $5e77: $79
	add  [hl]                                        ; $5e78: $86
	adc  b                                           ; $5e79: $88
	add  a                                           ; $5e7a: $87
	adc  c                                           ; $5e7b: $89
	adc  b                                           ; $5e7c: $88
	adc  c                                           ; $5e7d: $89
	ld   [hl], a                                     ; $5e7e: $77
	sub  a                                           ; $5e7f: $97
	ld   a, b                                        ; $5e80: $78
	adc  c                                           ; $5e81: $89
	add  a                                           ; $5e82: $87
	xor  c                                           ; $5e83: $a9
	ld   [hl], a                                     ; $5e84: $77
	sbc  b                                           ; $5e85: $98
	ld   h, a                                        ; $5e86: $67
	adc  c                                           ; $5e87: $89
	sbc  b                                           ; $5e88: $98
	sbc  c                                           ; $5e89: $99
	add  a                                           ; $5e8a: $87
	ld   [hl], a                                     ; $5e8b: $77
	ld   [hl], a                                     ; $5e8c: $77
	ld   l, c                                        ; $5e8d: $69
	sbc  c                                           ; $5e8e: $99
	sbc  c                                           ; $5e8f: $99
	sub  a                                           ; $5e90: $97
	ld   a, b                                        ; $5e91: $78
	add  a                                           ; $5e92: $87
	ld   [hl], a                                     ; $5e93: $77
	adc  c                                           ; $5e94: $89
	adc  b                                           ; $5e95: $88
	adc  b                                           ; $5e96: $88
	sub  a                                           ; $5e97: $97
	sub  a                                           ; $5e98: $97
	adc  b                                           ; $5e99: $88
	ld   h, a                                        ; $5e9a: $67
	ld   a, c                                        ; $5e9b: $79
	sbc  b                                           ; $5e9c: $98
	xor  c                                           ; $5e9d: $a9
	sbc  b                                           ; $5e9e: $98
	add  a                                           ; $5e9f: $87
	ld   h, a                                        ; $5ea0: $67
	adc  c                                           ; $5ea1: $89
	ld   a, b                                        ; $5ea2: $78
	xor  c                                           ; $5ea3: $a9
	sub  [hl]                                        ; $5ea4: $96
	ld   a, c                                        ; $5ea5: $79
	ld   [hl], a                                     ; $5ea6: $77
	ld   a, b                                        ; $5ea7: $78
	ld   a, b                                        ; $5ea8: $78
	sbc  b                                           ; $5ea9: $98
	sub  a                                           ; $5eaa: $97
	ld   a, c                                        ; $5eab: $79
	adc  b                                           ; $5eac: $88
	sbc  c                                           ; $5ead: $99
	halt                                             ; $5eae: $76
	ld   a, c                                        ; $5eaf: $79
	sub  [hl]                                        ; $5eb0: $96
	sbc  c                                           ; $5eb1: $99
	adc  b                                           ; $5eb2: $88
	ld   a, b                                        ; $5eb3: $78
	ld   [hl], a                                     ; $5eb4: $77
	adc  b                                           ; $5eb5: $88
	sbc  c                                           ; $5eb6: $99
	sbc  c                                           ; $5eb7: $99
	ld   [hl], a                                     ; $5eb8: $77
	ld   [hl], a                                     ; $5eb9: $77
	halt                                             ; $5eba: $76
	ld   a, b                                        ; $5ebb: $78
	sbc  b                                           ; $5ebc: $98
	adc  c                                           ; $5ebd: $89
	sbc  b                                           ; $5ebe: $98
	ld   [hl], a                                     ; $5ebf: $77
	sub  a                                           ; $5ec0: $97
	halt                                             ; $5ec1: $76
	ld   a, c                                        ; $5ec2: $79
	sbc  c                                           ; $5ec3: $99
	sbc  b                                           ; $5ec4: $98
	adc  b                                           ; $5ec5: $88
	add  a                                           ; $5ec6: $87
	adc  b                                           ; $5ec7: $88
	ld   [hl], a                                     ; $5ec8: $77
	ld   a, c                                        ; $5ec9: $79
	sbc  b                                           ; $5eca: $98
	adc  c                                           ; $5ecb: $89
	sbc  c                                           ; $5ecc: $99
	sub  a                                           ; $5ecd: $97
	ld   a, b                                        ; $5ece: $78
	sub  a                                           ; $5ecf: $97
	ld   a, b                                        ; $5ed0: $78
	adc  c                                           ; $5ed1: $89
	adc  c                                           ; $5ed2: $89
	ld   a, b                                        ; $5ed3: $78
	add  a                                           ; $5ed4: $87
	ld   [hl], a                                     ; $5ed5: $77
	sbc  c                                           ; $5ed6: $99
	sbc  b                                           ; $5ed7: $98
	adc  b                                           ; $5ed8: $88
	ld   h, [hl]                                     ; $5ed9: $66
	add  a                                           ; $5eda: $87
	add  a                                           ; $5edb: $87
	ld   a, b                                        ; $5edc: $78
	xor  d                                           ; $5edd: $aa
	sbc  b                                           ; $5ede: $98
	ld   h, a                                        ; $5edf: $67
	sub  a                                           ; $5ee0: $97
	ld   l, b                                        ; $5ee1: $68
	sub  [hl]                                        ; $5ee2: $96
	ld   l, c                                        ; $5ee3: $69
	and  a                                           ; $5ee4: $a7
	adc  d                                           ; $5ee5: $8a
	sbc  b                                           ; $5ee6: $98
	adc  c                                           ; $5ee7: $89
	ld   [hl], l                                     ; $5ee8: $75
	ld   [hl], a                                     ; $5ee9: $77
	ld   a, b                                        ; $5eea: $78
	sbc  c                                           ; $5eeb: $99
	ld   a, b                                        ; $5eec: $78
	sbc  b                                           ; $5eed: $98
	ld   [hl], a                                     ; $5eee: $77
	ld   [hl], a                                     ; $5eef: $77
	ld   a, b                                        ; $5ef0: $78
	sbc  d                                           ; $5ef1: $9a
	sbc  b                                           ; $5ef2: $98
	sbc  b                                           ; $5ef3: $98
	add  a                                           ; $5ef4: $87
	ld   a, b                                        ; $5ef5: $78
	ld   h, a                                        ; $5ef6: $67
	ld   a, c                                        ; $5ef7: $79
	xor  d                                           ; $5ef8: $aa
	adc  c                                           ; $5ef9: $89
	sub  a                                           ; $5efa: $97
	adc  c                                           ; $5efb: $89
	add  a                                           ; $5efc: $87
	ld   l, b                                        ; $5efd: $68
	sbc  b                                           ; $5efe: $98
	sbc  d                                           ; $5eff: $9a
	sub  a                                           ; $5f00: $97
	adc  c                                           ; $5f01: $89
	add  a                                           ; $5f02: $87
	ld   [hl], a                                     ; $5f03: $77
	ld   h, a                                        ; $5f04: $67
	sbc  c                                           ; $5f05: $99
	xor  b                                           ; $5f06: $a8
	sbc  d                                           ; $5f07: $9a
	add  a                                           ; $5f08: $87
	ld   h, a                                        ; $5f09: $67
	halt                                             ; $5f0a: $76
	ld   a, d                                        ; $5f0b: $7a
	sbc  c                                           ; $5f0c: $99
	sbc  c                                           ; $5f0d: $99
	sub  a                                           ; $5f0e: $97
	adc  b                                           ; $5f0f: $88
	add  a                                           ; $5f10: $87
	ld   h, a                                        ; $5f11: $67
	adc  b                                           ; $5f12: $88
	adc  c                                           ; $5f13: $89
	sbc  c                                           ; $5f14: $99
	xor  b                                           ; $5f15: $a8
	sub  a                                           ; $5f16: $97
	ld   a, b                                        ; $5f17: $78
	ld   [hl], a                                     ; $5f18: $77
	ld   a, c                                        ; $5f19: $79
	xor  c                                           ; $5f1a: $a9
	xor  c                                           ; $5f1b: $a9
	sub  a                                           ; $5f1c: $97
	ld   l, b                                        ; $5f1d: $68
	ld   h, a                                        ; $5f1e: $67
	ld   [hl], a                                     ; $5f1f: $77
	adc  b                                           ; $5f20: $88
	xor  d                                           ; $5f21: $aa
	sbc  b                                           ; $5f22: $98
	ld   a, b                                        ; $5f23: $78
	ld   [hl], a                                     ; $5f24: $77
	ld   h, [hl]                                     ; $5f25: $66
	add  a                                           ; $5f26: $87
	ld   a, c                                        ; $5f27: $79
	cp   d                                           ; $5f28: $ba
	adc  c                                           ; $5f29: $89
	sbc  c                                           ; $5f2a: $99
	ld   h, a                                        ; $5f2b: $67
	add  [hl]                                        ; $5f2c: $86
	ld   h, [hl]                                     ; $5f2d: $66
	xor  d                                           ; $5f2e: $aa
	adc  e                                           ; $5f2f: $8b
	xor  b                                           ; $5f30: $a8
	ld   [hl], a                                     ; $5f31: $77
	halt                                             ; $5f32: $76
	ld   h, a                                        ; $5f33: $67
	ld   h, a                                        ; $5f34: $67
	sbc  c                                           ; $5f35: $99
	adc  b                                           ; $5f36: $88
	xor  c                                           ; $5f37: $a9
	ld   a, b                                        ; $5f38: $78
	sbc  b                                           ; $5f39: $98
	ld   d, [hl]                                     ; $5f3a: $56
	halt                                             ; $5f3b: $76
	ld   a, b                                        ; $5f3c: $78
	xor  d                                           ; $5f3d: $aa
	adc  c                                           ; $5f3e: $89
	sbc  b                                           ; $5f3f: $98
	ld   a, b                                        ; $5f40: $78
	halt                                             ; $5f41: $76
	ld   [hl], a                                     ; $5f42: $77
	ld   [hl], a                                     ; $5f43: $77
	sbc  d                                           ; $5f44: $9a
	adc  d                                           ; $5f45: $8a
	xor  b                                           ; $5f46: $a8
	add  [hl]                                        ; $5f47: $86
	ld   d, l                                        ; $5f48: $55
	ld   [hl], a                                     ; $5f49: $77
	ld   l, d                                        ; $5f4a: $6a
	sbc  d                                           ; $5f4b: $9a
	sbc  d                                           ; $5f4c: $9a
	sub  a                                           ; $5f4d: $97
	add  a                                           ; $5f4e: $87
	ld   h, [hl]                                     ; $5f4f: $66
	ld   a, b                                        ; $5f50: $78
	ld   d, [hl]                                     ; $5f51: $56
	adc  d                                           ; $5f52: $8a
	sub  a                                           ; $5f53: $97
	cp   d                                           ; $5f54: $ba
	add  [hl]                                        ; $5f55: $86
	ld   a, c                                        ; $5f56: $79
	ld   d, l                                        ; $5f57: $55
	ld   a, c                                        ; $5f58: $79
	sbc  b                                           ; $5f59: $98
	cp   e                                           ; $5f5a: $bb
	add  a                                           ; $5f5b: $87
	sbc  c                                           ; $5f5c: $99
	ld   h, [hl]                                     ; $5f5d: $66
	ld   h, [hl]                                     ; $5f5e: $66
	ld   a, b                                        ; $5f5f: $78
	adc  c                                           ; $5f60: $89
	xor  b                                           ; $5f61: $a8
	sbc  c                                           ; $5f62: $99
	sbc  b                                           ; $5f63: $98
	ld   h, [hl]                                     ; $5f64: $66
	ld   h, a                                        ; $5f65: $67
	ld   h, [hl]                                     ; $5f66: $66
	xor  e                                           ; $5f67: $ab
	adc  b                                           ; $5f68: $88
	xor  d                                           ; $5f69: $aa
	ld   d, [hl]                                     ; $5f6a: $56
	sub  a                                           ; $5f6b: $97
	ld   d, l                                        ; $5f6c: $55
	adc  b                                           ; $5f6d: $88
	ld   a, b                                        ; $5f6e: $78
	xor  e                                           ; $5f6f: $ab
	adc  b                                           ; $5f70: $88
	xor  d                                           ; $5f71: $aa
	ld   h, h                                        ; $5f72: $64
	ld   a, b                                        ; $5f73: $78
	ld   h, l                                        ; $5f74: $65
	sbc  e                                           ; $5f75: $9b
	adc  c                                           ; $5f76: $89
	xor  d                                           ; $5f77: $aa
	sub  [hl]                                        ; $5f78: $96
	ld   [hl], a                                     ; $5f79: $77
	ld   d, [hl]                                     ; $5f7a: $56
	ld   [hl], a                                     ; $5f7b: $77
	ld   a, b                                        ; $5f7c: $78
	cp   e                                           ; $5f7d: $bb
	xor  e                                           ; $5f7e: $ab
	and  a                                           ; $5f7f: $a7
	adc  b                                           ; $5f80: $88
	ld   h, h                                        ; $5f81: $64
	ld   e, b                                        ; $5f82: $58
	ld   [hl], a                                     ; $5f83: $77
	sbc  e                                           ; $5f84: $9b
	cp   b                                           ; $5f85: $b8
	sbc  e                                           ; $5f86: $9b
	and  a                                           ; $5f87: $a7
	ld   d, [hl]                                     ; $5f88: $56
	ld   [hl], l                                     ; $5f89: $75
	ld   l, b                                        ; $5f8a: $68
	xor  c                                           ; $5f8b: $a9
	sbc  e                                           ; $5f8c: $9b
	xor  c                                           ; $5f8d: $a9
	sub  a                                           ; $5f8e: $97
	halt                                             ; $5f8f: $76
	ld   d, a                                        ; $5f90: $57
	ld   a, b                                        ; $5f91: $78
	ld   a, d                                        ; $5f92: $7a
	jp   c, $b779                                    ; $5f93: $da $79 $b7

	ld   b, a                                        ; $5f96: $47
	add  [hl]                                        ; $5f97: $86
	ld   e, b                                        ; $5f98: $58
	add  a                                           ; $5f99: $87
	adc  h                                           ; $5f9a: $8c
	or   a                                           ; $5f9b: $b7
	adc  d                                           ; $5f9c: $8a
	ld   [hl], h                                     ; $5f9d: $74
	ld   h, a                                        ; $5f9e: $67
	ld   d, l                                        ; $5f9f: $55
	adc  b                                           ; $5fa0: $88
	sbc  d                                           ; $5fa1: $9a
	xor  d                                           ; $5fa2: $aa
	xor  b                                           ; $5fa3: $a8
	xor  b                                           ; $5fa4: $a8
	ld   h, l                                        ; $5fa5: $65
	ld   d, [hl]                                     ; $5fa6: $56
	ld   h, a                                        ; $5fa7: $67
	adc  b                                           ; $5fa8: $88
	sbc  h                                           ; $5fa9: $9c
	cp   c                                           ; $5faa: $b9
	xor  d                                           ; $5fab: $aa
	ld   [hl], l                                     ; $5fac: $75
	ld   h, [hl]                                     ; $5fad: $66
	ld   d, [hl]                                     ; $5fae: $56
	ld   [hl], a                                     ; $5faf: $77
	sbc  d                                           ; $5fb0: $9a
	res  3, c                                        ; $5fb1: $cb $99
	xor  c                                           ; $5fb3: $a9
	ld   d, l                                        ; $5fb4: $55
	ld   h, [hl]                                     ; $5fb5: $66
	ld   b, [hl]                                     ; $5fb6: $46
	adc  b                                           ; $5fb7: $88
	sbc  d                                           ; $5fb8: $9a
	res  5, d                                        ; $5fb9: $cb $aa
	add  l                                           ; $5fbb: $85
	ld   d, a                                        ; $5fbc: $57
	ld   d, [hl]                                     ; $5fbd: $56
	ld   h, a                                        ; $5fbe: $67
	sbc  b                                           ; $5fbf: $98
	cp   d                                           ; $5fc0: $ba
	sbc  c                                           ; $5fc1: $99
	cp   c                                           ; $5fc2: $b9
	ld   h, [hl]                                     ; $5fc3: $66
	add  [hl]                                        ; $5fc4: $86
	ld   b, a                                        ; $5fc5: $47
	ld   a, b                                        ; $5fc6: $78
	sbc  d                                           ; $5fc7: $9a
	cp   c                                           ; $5fc8: $b9
	xor  d                                           ; $5fc9: $aa
	sub  a                                           ; $5fca: $97
	ld   h, a                                        ; $5fcb: $67
	ld   h, l                                        ; $5fcc: $65
	ld   [hl], a                                     ; $5fcd: $77
	ld   [hl], a                                     ; $5fce: $77
	sbc  e                                           ; $5fcf: $9b
	xor  d                                           ; $5fd0: $aa
	xor  d                                           ; $5fd1: $aa
	sub  [hl]                                        ; $5fd2: $96
	ld   d, a                                        ; $5fd3: $57
	ld   [hl], h                                     ; $5fd4: $74
	ld   l, b                                        ; $5fd5: $68
	sub  a                                           ; $5fd6: $97
	sbc  l                                           ; $5fd7: $9d
	cp   e                                           ; $5fd8: $bb
	sbc  c                                           ; $5fd9: $99
	sub  a                                           ; $5fda: $97
	ld   h, l                                        ; $5fdb: $65
	ld   h, a                                        ; $5fdc: $67
	ld   h, [hl]                                     ; $5fdd: $66
	adc  d                                           ; $5fde: $8a
	adc  c                                           ; $5fdf: $89
	jp   z, $a7aa                                    ; $5fe0: $ca $aa $a7

	ld   b, l                                        ; $5fe3: $45
	ld   h, l                                        ; $5fe4: $65
	ld   h, [hl]                                     ; $5fe5: $66
	adc  b                                           ; $5fe6: $88
	adc  e                                           ; $5fe7: $8b
	res  3, c                                        ; $5fe8: $cb $99
	and  a                                           ; $5fea: $a7
	ld   d, [hl]                                     ; $5feb: $56
	ld   h, [hl]                                     ; $5fec: $66
	ld   h, [hl]                                     ; $5fed: $66
	ld   a, b                                        ; $5fee: $78
	sbc  d                                           ; $5fef: $9a
	jp   z, $96ab                                    ; $5ff0: $ca $ab $96

	ld   d, l                                        ; $5ff3: $55
	ld   d, l                                        ; $5ff4: $55
	ld   h, a                                        ; $5ff5: $67
	ld   a, b                                        ; $5ff6: $78

Call_0ca_5ff7:
	ld   a, c                                        ; $5ff7: $79
	res  3, d                                        ; $5ff8: $cb $9a
	ret  z                                           ; $5ffa: $c8

	ld   d, l                                        ; $5ffb: $55
	ld   [hl], l                                     ; $5ffc: $75
	ld   b, [hl]                                     ; $5ffd: $46
	sbc  b                                           ; $5ffe: $98
	ld   a, b                                        ; $5fff: $78
	call $baaa                                       ; $6000: $cd $aa $ba
	ld   [hl], l                                     ; $6003: $75
	ld   h, [hl]                                     ; $6004: $66
	ld   b, l                                        ; $6005: $45
	ld   l, b                                        ; $6006: $68
	add  a                                           ; $6007: $87
	xor  e                                           ; $6008: $ab
	cp   e                                           ; $6009: $bb
	xor  d                                           ; $600a: $aa
	sub  [hl]                                        ; $600b: $96
	ld   d, l                                        ; $600c: $55
	ld   h, [hl]                                     ; $600d: $66
	ld   d, a                                        ; $600e: $57
	ld   [hl], a                                     ; $600f: $77
	adc  c                                           ; $6010: $89
	cp   h                                           ; $6011: $bc
	cp   d                                           ; $6012: $ba
	xor  c                                           ; $6013: $a9
	ld   h, l                                        ; $6014: $65
	ld   d, [hl]                                     ; $6015: $56
	ld   d, [hl]                                     ; $6016: $56
	ld   a, b                                        ; $6017: $78
	ld   a, b                                        ; $6018: $78
	sbc  d                                           ; $6019: $9a
	cp   c                                           ; $601a: $b9
	cp   e                                           ; $601b: $bb
	sbc  b                                           ; $601c: $98
	ld   d, [hl]                                     ; $601d: $56
	ld   d, h                                        ; $601e: $54
	ld   h, a                                        ; $601f: $67
	add  a                                           ; $6020: $87
	adc  c                                           ; $6021: $89
	sbc  e                                           ; $6022: $9b
	xor  d                                           ; $6023: $aa
	sbc  c                                           ; $6024: $99
	add  [hl]                                        ; $6025: $86
	ld   h, [hl]                                     ; $6026: $66
	ld   d, l                                        ; $6027: $55
	ld   l, b                                        ; $6028: $68
	add  a                                           ; $6029: $87
	sbc  d                                           ; $602a: $9a
	sbc  c                                           ; $602b: $99
	cp   e                                           ; $602c: $bb
	sbc  c                                           ; $602d: $99
	sub  [hl]                                        ; $602e: $96
	ld   d, l                                        ; $602f: $55
	halt                                             ; $6030: $76
	ld   a, b                                        ; $6031: $78
	sbc  b                                           ; $6032: $98
	adc  b                                           ; $6033: $88
	xor  d                                           ; $6034: $aa
	xor  d                                           ; $6035: $aa
	xor  c                                           ; $6036: $a9
	add  a                                           ; $6037: $87
	ld   h, l                                        ; $6038: $65
	ld   d, a                                        ; $6039: $57
	adc  b                                           ; $603a: $88
	ld   a, b                                        ; $603b: $78
	sbc  b                                           ; $603c: $98
	sbc  c                                           ; $603d: $99
	xor  e                                           ; $603e: $ab
	xor  b                                           ; $603f: $a8
	adc  b                                           ; $6040: $88
	ld   h, h                                        ; $6041: $64
	ld   h, [hl]                                     ; $6042: $66
	ld   [hl], a                                     ; $6043: $77
	ld   a, c                                        ; $6044: $79
	sbc  b                                           ; $6045: $98
	adc  c                                           ; $6046: $89
	sbc  d                                           ; $6047: $9a
	sbc  c                                           ; $6048: $99
	sub  a                                           ; $6049: $97
	halt                                             ; $604a: $76
	ld   d, l                                        ; $604b: $55
	ld   a, b                                        ; $604c: $78
	ld   a, c                                        ; $604d: $79
	adc  c                                           ; $604e: $89
	adc  b                                           ; $604f: $88
	adc  c                                           ; $6050: $89
	xor  d                                           ; $6051: $aa
	xor  c                                           ; $6052: $a9
	add  a                                           ; $6053: $87
	ld   h, [hl]                                     ; $6054: $66
	ld   h, [hl]                                     ; $6055: $66
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	adc  c                                           ; $6058: $89
	adc  b                                           ; $6059: $88
	sbc  d                                           ; $605a: $9a
	xor  c                                           ; $605b: $a9
	sbc  b                                           ; $605c: $98
	halt                                             ; $605d: $76
	ld   h, [hl]                                     ; $605e: $66
	ld   h, a                                        ; $605f: $67
	adc  b                                           ; $6060: $88
	ld   a, b                                        ; $6061: $78
	adc  b                                           ; $6062: $88
	adc  b                                           ; $6063: $88
	sbc  c                                           ; $6064: $99
	sbc  c                                           ; $6065: $99
	adc  b                                           ; $6066: $88
	halt                                             ; $6067: $76
	ld   h, [hl]                                     ; $6068: $66
	adc  b                                           ; $6069: $88
	adc  c                                           ; $606a: $89
	sbc  b                                           ; $606b: $98
	ld   a, b                                        ; $606c: $78
	sbc  c                                           ; $606d: $99
	sbc  c                                           ; $606e: $99
	sbc  b                                           ; $606f: $98
	adc  b                                           ; $6070: $88
	ld   h, [hl]                                     ; $6071: $66
	ld   a, b                                        ; $6072: $78
	ld   [hl], a                                     ; $6073: $77
	sbc  c                                           ; $6074: $99
	ld   [hl], a                                     ; $6075: $77
	sbc  c                                           ; $6076: $99
	ld   a, b                                        ; $6077: $78
	sbc  c                                           ; $6078: $99
	sbc  b                                           ; $6079: $98
	adc  c                                           ; $607a: $89
	ld   h, [hl]                                     ; $607b: $66
	ld   a, c                                        ; $607c: $79
	ld   [hl], a                                     ; $607d: $77
	adc  c                                           ; $607e: $89
	add  a                                           ; $607f: $87
	ld   a, b                                        ; $6080: $78
	sbc  b                                           ; $6081: $98
	sbc  c                                           ; $6082: $99
	xor  c                                           ; $6083: $a9
	add  a                                           ; $6084: $87
	add  a                                           ; $6085: $87
	ld   h, a                                        ; $6086: $67
	adc  b                                           ; $6087: $88
	ld   a, b                                        ; $6088: $78
	adc  b                                           ; $6089: $88
	ld   [hl], a                                     ; $608a: $77
	sbc  b                                           ; $608b: $98
	adc  b                                           ; $608c: $88
	adc  c                                           ; $608d: $89
	sbc  b                                           ; $608e: $98
	ld   [hl], a                                     ; $608f: $77
	ld   a, b                                        ; $6090: $78
	ld   a, b                                        ; $6091: $78
	sbc  c                                           ; $6092: $99
	adc  b                                           ; $6093: $88
	adc  b                                           ; $6094: $88
	ld   a, b                                        ; $6095: $78
	adc  b                                           ; $6096: $88
	sbc  c                                           ; $6097: $99
	sbc  b                                           ; $6098: $98
	add  a                                           ; $6099: $87
	ld   a, b                                        ; $609a: $78
	ld   a, b                                        ; $609b: $78
	adc  b                                           ; $609c: $88
	adc  b                                           ; $609d: $88
	add  a                                           ; $609e: $87
	adc  b                                           ; $609f: $88
	ld   a, b                                        ; $60a0: $78
	sbc  b                                           ; $60a1: $98
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	adc  b                                           ; $60a4: $88
	sbc  c                                           ; $60a5: $99
	add  a                                           ; $60a6: $87
	adc  b                                           ; $60a7: $88
	add  a                                           ; $60a8: $87
	adc  b                                           ; $60a9: $88
	adc  b                                           ; $60aa: $88
	sbc  c                                           ; $60ab: $99
	adc  b                                           ; $60ac: $88
	adc  b                                           ; $60ad: $88
	adc  b                                           ; $60ae: $88
	adc  b                                           ; $60af: $88
	adc  b                                           ; $60b0: $88
	adc  b                                           ; $60b1: $88
	adc  b                                           ; $60b2: $88
	adc  b                                           ; $60b3: $88
	adc  b                                           ; $60b4: $88
	sbc  b                                           ; $60b5: $98
	adc  b                                           ; $60b6: $88
	adc  b                                           ; $60b7: $88
	add  a                                           ; $60b8: $87
	adc  b                                           ; $60b9: $88
	adc  b                                           ; $60ba: $88
	adc  b                                           ; $60bb: $88
	adc  b                                           ; $60bc: $88
	adc  c                                           ; $60bd: $89
	sbc  b                                           ; $60be: $98
	ld   a, b                                        ; $60bf: $78
	adc  b                                           ; $60c0: $88
	ld   a, b                                        ; $60c1: $78
	sbc  b                                           ; $60c2: $98
	ld   a, b                                        ; $60c3: $78
	sbc  b                                           ; $60c4: $98
	adc  b                                           ; $60c5: $88
	sbc  b                                           ; $60c6: $98
	ld   a, b                                        ; $60c7: $78
	adc  b                                           ; $60c8: $88
	adc  b                                           ; $60c9: $88
	adc  b                                           ; $60ca: $88
	adc  b                                           ; $60cb: $88
	adc  b                                           ; $60cc: $88
	adc  b                                           ; $60cd: $88
	adc  c                                           ; $60ce: $89
	adc  b                                           ; $60cf: $88
	adc  b                                           ; $60d0: $88
	adc  b                                           ; $60d1: $88
	adc  b                                           ; $60d2: $88
	adc  b                                           ; $60d3: $88
	adc  b                                           ; $60d4: $88
	adc  b                                           ; $60d5: $88
	ld   a, b                                        ; $60d6: $78
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
	adc  c                                           ; $628b: $89
	sbc  c                                           ; $628c: $99
	or   a                                           ; $628d: $b7
	add  hl, sp                                      ; $628e: $39
	push de                                          ; $628f: $d5
	add  hl, sp                                      ; $6290: $39
	add  [hl]                                        ; $6291: $86
	ld   l, b                                        ; $6292: $68
	reti                                             ; $6293: $d9


	adc  e                                           ; $6294: $8b
	add  [hl]                                        ; $6295: $86
	adc  e                                           ; $6296: $8b
	cp   c                                           ; $6297: $b9
	xor  d                                           ; $6298: $aa
	sub  [hl]                                        ; $6299: $96
	inc  sp                                          ; $629a: $33
	adc  d                                           ; $629b: $8a
	adc  c                                           ; $629c: $89
	and  h                                           ; $629d: $a4
	inc  a                                           ; $629e: $3c
	and  e                                           ; $629f: $a3
	xor  e                                           ; $62a0: $ab
	ld   [hl-], a                                    ; $62a1: $32
	cp   a                                           ; $62a2: $bf
	and  h                                           ; $62a3: $a4
	ld   l, [hl]                                     ; $62a4: $6e
	jp   $a66b                                       ; $62a5: $c3 $6b $a6


	ld   d, a                                        ; $62a8: $57
	halt                                             ; $62a9: $76
	ld   d, a                                        ; $62aa: $57
	add  a                                           ; $62ab: $87
	ld   e, c                                        ; $62ac: $59
	jp   z, $d99b                                    ; $62ad: $ca $9b $d9

	halt                                             ; $62b0: $76
	ld   d, e                                        ; $62b1: $53
	ld   de, $4613                                   ; $62b2: $11 $13 $46
	xor  h                                           ; $62b5: $ac
	adc  $ff                                         ; $62b6: $ce $ff
	call z, $96ba                                    ; $62b8: $cc $ba $96
	ld   b, c                                        ; $62bb: $41
	ld   de, $5e53                                   ; $62bc: $11 $53 $5e
	cp   $ff                                         ; $62bf: $fe $ff
	db   $fd                                         ; $62c1: $fd
	sbc  d                                           ; $62c2: $9a
	sub  a                                           ; $62c3: $97
	ld   d, h                                        ; $62c4: $54
	ld   de, $5711                                   ; $62c5: $11 $11 $57
	cp   a                                           ; $62c8: $bf
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	ld   [$9699], a                                  ; $62cb: $ea $99 $96
	ld   sp, $1411                                   ; $62ce: $31 $11 $14
	sbc  l                                           ; $62d1: $9d
	rst  $38                                         ; $62d2: $ff
	rst  $38                                         ; $62d3: $ff
	db   $fd                                         ; $62d4: $fd
	sbc  c                                           ; $62d5: $99
	adc  c                                           ; $62d6: $89
	ld   h, e                                        ; $62d7: $63
	ld   de, $5c11                                   ; $62d8: $11 $11 $5c
	rst  $38                                         ; $62db: $ff
	rst  $38                                         ; $62dc: $ff
	db   $fd                                         ; $62dd: $fd
	and  a                                           ; $62de: $a7
	sbc  c                                           ; $62df: $99
	and  [hl]                                        ; $62e0: $a6
	ld   hl, $1711                                   ; $62e1: $21 $11 $17
	rst  $28                                         ; $62e4: $ef
	rst  $38                                         ; $62e5: $ff
	db   $fd                                         ; $62e6: $fd
	cp   c                                           ; $62e7: $b9
	ld   l, c                                        ; $62e8: $69
	cp   e                                           ; $62e9: $bb
	ld   [hl], e                                     ; $62ea: $73
	ld   de, $6f11                                   ; $62eb: $11 $11 $6f
	rst  $38                                         ; $62ee: $ff
	rst  $38                                         ; $62ef: $ff
	ret  c                                           ; $62f0: $d8

	add  [hl]                                        ; $62f1: $86
	sbc  d                                           ; $62f2: $9a
	cp   d                                           ; $62f3: $ba
	ld   d, c                                        ; $62f4: $51
	ld   de, $ff16                                   ; $62f5: $11 $16 $ff
	rst  $38                                         ; $62f8: $ff
	db   $fc                                         ; $62f9: $fc
	add  a                                           ; $62fa: $87
	ld   l, b                                        ; $62fb: $68
	xor  e                                           ; $62fc: $ab
	add  h                                           ; $62fd: $84
	ld   de, $8f11                                   ; $62fe: $11 $11 $8f
	rst  $38                                         ; $6301: $ff
	rst  $38                                         ; $6302: $ff
	or   [hl]                                        ; $6303: $b6
	ld   h, l                                        ; $6304: $65
	sbc  h                                           ; $6305: $9c
	ret  z                                           ; $6306: $c8

	ld   hl, $1a11                                   ; $6307: $21 $11 $1a
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	ld   a, [$5b55]                                  ; $630c: $fa $55 $5b
	db   $dd                                         ; $630f: $dd
	add  c                                           ; $6310: $81
	ld   de, $ef14                                   ; $6311: $11 $14 $ef
	rst  $38                                         ; $6314: $ff
	db   $fc                                         ; $6315: $fc
	ld   h, h                                        ; $6316: $64
	ld   d, [hl]                                     ; $6317: $56
	call $11d5                                       ; $6318: $cd $d5 $11
	ld   de, $ff6f                                   ; $631b: $11 $6f $ff
	db   $fd                                         ; $631e: $fd
	or   e                                           ; $631f: $b3
	ld   b, h                                        ; $6320: $44
	sbc  a                                           ; $6321: $9f
	db   $eb                                         ; $6322: $eb
	ld   hl, $2c11                                   ; $6323: $21 $11 $2c
	rst  $38                                         ; $6326: $ff
	rst  $38                                         ; $6327: $ff
	or   [hl]                                        ; $6328: $b6
	inc  h                                           ; $6329: $24
	ld   l, l                                        ; $632a: $6d
	db   $fd                                         ; $632b: $fd
	ld   [hl], c                                     ; $632c: $71
	ld   de, $ff16                                   ; $632d: $11 $16 $ff
	rst  $38                                         ; $6330: $ff
	jp   hl                                          ; $6331: $e9


	ld   sp, $ff59                                   ; $6332: $31 $59 $ff
	or   e                                           ; $6335: $b3
	ld   de, $af11                                   ; $6336: $11 $11 $af
	rst  $38                                         ; $6339: $ff
	ld   a, [$3761]                                  ; $633a: $fa $61 $37
	rst  JumpTable                                         ; $633d: $df
	ret  c                                           ; $633e: $d8

	ld   de, $5f11                                   ; $633f: $11 $11 $5f
	rst  $38                                         ; $6342: $ff
	cp   $72                                         ; $6343: $fe $72
	dec  d                                           ; $6345: $15
	cp   a                                           ; $6346: $bf
	ei                                               ; $6347: $fb
	ld   sp, $1a11                                   ; $6348: $31 $11 $1a
	rst  $38                                         ; $634b: $ff
	rst  $38                                         ; $634c: $ff
	and  l                                           ; $634d: $a5
	ld   [de], a                                     ; $634e: $12
	adc  a                                           ; $634f: $8f
	cp   $71                                         ; $6350: $fe $71
	ld   de, $ff15                                   ; $6352: $11 $15 $ff
	rst  $38                                         ; $6355: $ff
	or   [hl]                                        ; $6356: $b6
	ld   hl, $ff6b                                   ; $6357: $21 $6b $ff
	sub  c                                           ; $635a: $91
	ld   de, $bf11                                   ; $635b: $11 $11 $bf
	rst  $38                                         ; $635e: $ff
	and  $41                                         ; $635f: $e6 $41
	ld   a, [hl-]                                    ; $6361: $3a
	rst  $38                                         ; $6362: $ff
	push bc                                          ; $6363: $c5
	ld   de, $6f11                                   ; $6364: $11 $11 $6f
	rst  $38                                         ; $6367: $ff
	ld   sp, hl                                      ; $6368: $f9
	ld   b, c                                        ; $6369: $41
	add  hl, de                                      ; $636a: $19
	rst  $28                                         ; $636b: $ef
	rst  $30                                         ; $636c: $f7
	ld   de, $3b11                                   ; $636d: $11 $11 $3b
	rst  $38                                         ; $6370: $ff
	ei                                               ; $6371: $fb
	ld   d, h                                        ; $6372: $54
	dec  d                                           ; $6373: $15
	cp   a                                           ; $6374: $bf
	ei                                               ; $6375: $fb
	ld   sp, $1711                                   ; $6376: $31 $11 $17
	rst  $38                                         ; $6379: $ff
	rst  $38                                         ; $637a: $ff
	ld   [hl], h                                     ; $637b: $74
	ld   [hl+], a                                    ; $637c: $22
	xor  a                                           ; $637d: $af
	db   $fd                                         ; $637e: $fd
	ld   b, c                                        ; $637f: $41
	ld   de, $bf15                                   ; $6380: $11 $15 $bf
	rst  $38                                         ; $6383: $ff
	or   h                                           ; $6384: $b4
	ld   b, d                                        ; $6385: $42
	ld   l, h                                        ; $6386: $6c
	rst  $38                                         ; $6387: $ff
	add  c                                           ; $6388: $81
	ld   de, $8f12                                   ; $6389: $11 $12 $8f
	rst  $38                                         ; $638c: $ff
	push bc                                          ; $638d: $c5
	ld   b, e                                        ; $638e: $43
	ld   e, e                                        ; $638f: $5b
	rst  $38                                         ; $6390: $ff
	or   d                                           ; $6391: $b2
	ld   de, $6e11                                   ; $6392: $11 $11 $6e
	rst  $38                                         ; $6395: $ff
	rst  $30                                         ; $6396: $f7
	ld   b, e                                        ; $6397: $43
	ld   c, d                                        ; $6398: $4a
	rst  $38                                         ; $6399: $ff
	call nc, $1111                                   ; $639a: $d4 $11 $11
	add  hl, sp                                      ; $639d: $39
	rst  $38                                         ; $639e: $ff
	ld   sp, hl                                      ; $639f: $f9
	ld   b, h                                        ; $63a0: $44
	jr   c, @-$1f                                    ; $63a1: $38 $df

	rst  $30                                         ; $63a3: $f7
	ld   de, $2711                                   ; $63a4: $11 $11 $27
	rst  $38                                         ; $63a7: $ff
	db   $fd                                         ; $63a8: $fd
	ld   h, l                                        ; $63a9: $65
	ld   [hl], $cf                                   ; $63aa: $36 $cf
	ld   a, [$1121]                                  ; $63ac: $fa $21 $11
	dec  d                                           ; $63af: $15
	rst  JumpTable                                         ; $63b0: $df
	rst  $38                                         ; $63b1: $ff
	ld   [hl], h                                     ; $63b2: $74
	ld   b, [hl]                                     ; $63b3: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63b4: $cf
	ld   a, [$1121]                                  ; $63b5: $fa $21 $11
	inc  d                                           ; $63b8: $14
	ld   a, a                                        ; $63b9: $7f
	rst  $38                                         ; $63ba: $ff
	and  [hl]                                        ; $63bb: $a6
	ld   h, [hl]                                     ; $63bc: $66
	cp   a                                           ; $63bd: $bf
	jp   c, $1231                                    ; $63be: $da $31 $12

	ld   [de], a                                     ; $63c1: $12
	ld   e, [hl]                                     ; $63c2: $5e
	rst  $38                                         ; $63c3: $ff
	cp   b                                           ; $63c4: $b8
	add  [hl]                                        ; $63c5: $86
	sbc  [hl]                                        ; $63c6: $9e
	db   $eb                                         ; $63c7: $eb
	ld   b, c                                        ; $63c8: $41
	inc  de                                          ; $63c9: $13
	inc  [hl]                                        ; $63ca: $34
	ld   c, b                                        ; $63cb: $48
	rst  $38                                         ; $63cc: $ff
	sub  $78                                         ; $63cd: $d6 $78
	adc  l                                           ; $63cf: $8d
	bit  2, c                                        ; $63d0: $cb $51
	inc  d                                           ; $63d2: $14
	ld   d, e                                        ; $63d3: $53
	inc  h                                           ; $63d4: $24
	rst  $38                                         ; $63d5: $ff
	ld   a, [$6a78]                                  ; $63d6: $fa $78 $6a
	db   $db                                         ; $63d9: $db
	sub  d                                           ; $63da: $92
	inc  h                                           ; $63db: $24
	ld   b, e                                        ; $63dc: $43
	ld   [hl+], a                                    ; $63dd: $22
	xor  a                                           ; $63de: $af
	db   $fc                                         ; $63df: $fc
	ld   a, b                                        ; $63e0: $78
	adc  c                                           ; $63e1: $89
	db   $db                                         ; $63e2: $db
	and  h                                           ; $63e3: $a4
	ld   [de], a                                     ; $63e4: $12
	ld   b, h                                        ; $63e5: $44
	inc  sp                                          ; $63e6: $33
	ld   l, a                                        ; $63e7: $6f
	db   $fc                                         ; $63e8: $fc
	sbc  c                                           ; $63e9: $99
	sbc  b                                           ; $63ea: $98
	cp   h                                           ; $63eb: $bc
	and  a                                           ; $63ec: $a7
	inc  hl                                          ; $63ed: $23
	ld   d, h                                        ; $63ee: $54
	inc  sp                                          ; $63ef: $33
	ld   c, d                                        ; $63f0: $4a
	rst  $38                                         ; $63f1: $ff
	reti                                             ; $63f2: $d9


	add  a                                           ; $63f3: $87
	sbc  l                                           ; $63f4: $9d
	cp   b                                           ; $63f5: $b8
	ld   sp, $5355                                   ; $63f6: $31 $55 $53
	dec  h                                           ; $63f9: $25
	rst  $28                                         ; $63fa: $ef
	db   $eb                                         ; $63fb: $eb
	sbc  b                                           ; $63fc: $98
	ld   a, e                                        ; $63fd: $7b
	jp   z, $3462                                    ; $63fe: $ca $62 $34

	ld   d, l                                        ; $6401: $55
	inc  sp                                          ; $6402: $33
	cp   a                                           ; $6403: $bf
	ei                                               ; $6404: $fb
	sbc  c                                           ; $6405: $99
	adc  b                                           ; $6406: $88
	cp   e                                           ; $6407: $bb
	add  e                                           ; $6408: $83
	dec  h                                           ; $6409: $25
	ld   h, h                                        ; $640a: $64
	ld   de, $fd7f                                   ; $640b: $11 $7f $fd
	and  a                                           ; $640e: $a7
	ld   [hl], a                                     ; $640f: $77
	call $1494                                       ; $6410: $cd $94 $14
	ld   h, [hl]                                     ; $6413: $66
	ld   b, d                                        ; $6414: $42
	ld   a, [hl-]                                    ; $6415: $3a
	rst  $38                                         ; $6416: $ff
	reti                                             ; $6417: $d9


	add  a                                           ; $6418: $87
	adc  l                                           ; $6419: $8d
	xor  b                                           ; $641a: $a8
	ld   [hl-], a                                    ; $641b: $32
	ld   b, l                                        ; $641c: $45
	ld   [hl], h                                     ; $641d: $74
	dec  h                                           ; $641e: $25
	rst  $28                                         ; $641f: $ef
	db   $eb                                         ; $6420: $eb
	sbc  b                                           ; $6421: $98
	ld   a, d                                        ; $6422: $7a
	xor  c                                           ; $6423: $a9
	ld   h, d                                        ; $6424: $62
	ld   b, l                                        ; $6425: $45
	ld   d, h                                        ; $6426: $54
	inc  [hl]                                        ; $6427: $34
	sbc  a                                           ; $6428: $9f
	ei                                               ; $6429: $fb
	sbc  b                                           ; $642a: $98
	sbc  c                                           ; $642b: $99
	ret                                              ; $642c: $c9


	ld   [hl], e                                     ; $642d: $73
	ld   h, $65                                      ; $642e: $26 $65
	ld   [hl-], a                                    ; $6430: $32
	ld   c, h                                        ; $6431: $4c
	cp   $b8                                         ; $6432: $fe $b8
	adc  b                                           ; $6434: $88
	xor  e                                           ; $6435: $ab
	and  a                                           ; $6436: $a7
	ld   [hl+], a                                    ; $6437: $22
	ld   d, l                                        ; $6438: $55
	ld   h, h                                        ; $6439: $64
	ld   [hl], $df                                   ; $643a: $36 $df
	res  3, b                                        ; $643c: $cb $98
	adc  e                                           ; $643e: $8b
	xor  b                                           ; $643f: $a8
	ld   d, d                                        ; $6440: $52
	ld   b, l                                        ; $6441: $45
	ld   h, l                                        ; $6442: $65
	inc  sp                                          ; $6443: $33
	adc  a                                           ; $6444: $8f
	db   $fd                                         ; $6445: $fd
	sbc  b                                           ; $6446: $98
	ld   a, c                                        ; $6447: $79
	res  2, e                                        ; $6448: $cb $93
	inc  h                                           ; $644a: $24
	ld   d, [hl]                                     ; $644b: $56
	ld   b, h                                        ; $644c: $44
	ld   c, e                                        ; $644d: $4b
	db   $fd                                         ; $644e: $fd
	cp   b                                           ; $644f: $b8
	sbc  c                                           ; $6450: $99
	xor  e                                           ; $6451: $ab
	and  a                                           ; $6452: $a7
	inc  hl                                          ; $6453: $23
	ld   d, [hl]                                     ; $6454: $56
	ld   h, e                                        ; $6455: $63
	ld   [hl], $df                                   ; $6456: $36 $df
	db   $db                                         ; $6458: $db
	adc  b                                           ; $6459: $88
	sbc  e                                           ; $645a: $9b
	cp   c                                           ; $645b: $b9
	ld   d, d                                        ; $645c: $52
	dec  [hl]                                        ; $645d: $35
	ld   h, l                                        ; $645e: $65
	ld   b, h                                        ; $645f: $44
	ld   a, a                                        ; $6460: $7f
	db   $fc                                         ; $6461: $fc
	xor  b                                           ; $6462: $a8
	adc  d                                           ; $6463: $8a
	cp   e                                           ; $6464: $bb
	sub  h                                           ; $6465: $94
	inc  [hl]                                        ; $6466: $34
	ld   d, [hl]                                     ; $6467: $56
	ld   b, e                                        ; $6468: $43
	ld   a, [hl-]                                    ; $6469: $3a
	rst  $38                                         ; $646a: $ff
	ret                                              ; $646b: $c9


	ld   a, b                                        ; $646c: $78
	xor  h                                           ; $646d: $ac
	cp   c                                           ; $646e: $b9
	inc  sp                                          ; $646f: $33
	inc  [hl]                                        ; $6470: $34
	ld   d, h                                        ; $6471: $54
	ld   b, l                                        ; $6472: $45
	rst  JumpTable                                         ; $6473: $df
	db   $eb                                         ; $6474: $eb
	adc  c                                           ; $6475: $89
	sbc  d                                           ; $6476: $9a
	cp   d                                           ; $6477: $ba
	ld   h, e                                        ; $6478: $63
	ld   b, h                                        ; $6479: $44
	ld   d, e                                        ; $647a: $53
	ld   b, l                                        ; $647b: $45
	sbc  a                                           ; $647c: $9f
	db   $ed                                         ; $647d: $ed
	xor  b                                           ; $647e: $a8
	sbc  c                                           ; $647f: $99
	cp   d                                           ; $6480: $ba
	sub  [hl]                                        ; $6481: $96
	ld   b, h                                        ; $6482: $44
	ld   b, h                                        ; $6483: $44
	inc  [hl]                                        ; $6484: $34
	ld   c, d                                        ; $6485: $4a
	rst  $38                                         ; $6486: $ff
	ret  z                                           ; $6487: $c8

	adc  b                                           ; $6488: $88
	xor  e                                           ; $6489: $ab
	ret                                              ; $648a: $c9


	ld   d, h                                        ; $648b: $54
	ld   b, h                                        ; $648c: $44
	ld   [hl-], a                                    ; $648d: $32
	ld   [hl], $ef                                   ; $648e: $36 $ef
	db   $eb                                         ; $6490: $eb
	adc  b                                           ; $6491: $88
	sbc  d                                           ; $6492: $9a
	xor  d                                           ; $6493: $aa
	add  l                                           ; $6494: $85
	ld   b, h                                        ; $6495: $44
	ld   b, e                                        ; $6496: $43
	inc  sp                                          ; $6497: $33
	adc  a                                           ; $6498: $8f
	rst  $38                                         ; $6499: $ff
	and  a                                           ; $649a: $a7
	adc  b                                           ; $649b: $88
	sbc  d                                           ; $649c: $9a
	and  a                                           ; $649d: $a7
	ld   d, e                                        ; $649e: $53
	ld   b, h                                        ; $649f: $44
	inc  hl                                          ; $64a0: $23
	ld   c, e                                        ; $64a1: $4b
	rst  $38                                         ; $64a2: $ff
	ld   [$9a78], a                                  ; $64a3: $ea $78 $9a
	cp   d                                           ; $64a6: $ba
	ld   h, h                                        ; $64a7: $64
	ld   b, h                                        ; $64a8: $44
	ld   [hl+], a                                    ; $64a9: $22
	daa                                              ; $64aa: $27
	rst  $38                                         ; $64ab: $ff
	db   $fc                                         ; $64ac: $fc
	adc  c                                           ; $64ad: $89
	adc  c                                           ; $64ae: $89
	xor  d                                           ; $64af: $aa
	add  [hl]                                        ; $64b0: $86
	ld   b, e                                        ; $64b1: $43
	ld   [hl-], a                                    ; $64b2: $32
	inc  hl                                          ; $64b3: $23
	xor  a                                           ; $64b4: $af
	rst  $38                                         ; $64b5: $ff
	sub  a                                           ; $64b6: $97
	sbc  b                                           ; $64b7: $98
	xor  e                                           ; $64b8: $ab
	sbc  b                                           ; $64b9: $98
	ld   d, h                                        ; $64ba: $54
	ld   b, d                                        ; $64bb: $42
	ld   de, $ff5d                                   ; $64bc: $11 $5d $ff
	ret  z                                           ; $64bf: $c8

	ld   a, b                                        ; $64c0: $78
	sbc  d                                           ; $64c1: $9a
	cp   d                                           ; $64c2: $ba
	ld   [hl], h                                     ; $64c3: $74
	inc  sp                                          ; $64c4: $33
	ld   de, $ff28                                   ; $64c5: $11 $28 $ff
	ld   a, [$8978]                                  ; $64c8: $fa $78 $89
	xor  d                                           ; $64cb: $aa
	sub  [hl]                                        ; $64cc: $96
	ld   b, h                                        ; $64cd: $44
	ld   hl, $df14                                   ; $64ce: $21 $14 $df
	cp   $97                                         ; $64d1: $fe $97
	adc  c                                           ; $64d3: $89
	xor  d                                           ; $64d4: $aa
	xor  b                                           ; $64d5: $a8
	ld   h, h                                        ; $64d6: $64
	ld   sp, $7f12                                   ; $64d7: $31 $12 $7f
	rst  $38                                         ; $64da: $ff
	or   a                                           ; $64db: $b7
	adc  b                                           ; $64dc: $88
	adc  d                                           ; $64dd: $8a
	xor  d                                           ; $64de: $aa
	add  l                                           ; $64df: $85
	ld   b, d                                        ; $64e0: $42
	ld   de, $ff3b                                   ; $64e1: $11 $3b $ff
	ld   a, [$8a77]                                  ; $64e4: $fa $77 $8a
	sbc  c                                           ; $64e7: $99
	sub  a                                           ; $64e8: $97
	ld   d, e                                        ; $64e9: $53
	ld   de, $ef16                                   ; $64ea: $11 $16 $ef
	db   $fc                                         ; $64ed: $fc
	adc  b                                           ; $64ee: $88
	ld   a, c                                        ; $64ef: $79
	sbc  c                                           ; $64f0: $99
	xor  d                                           ; $64f1: $aa
	ld   [hl], l                                     ; $64f2: $75
	ld   hl, $9f11                                   ; $64f3: $21 $11 $9f
	rst  $38                                         ; $64f6: $ff
	or   a                                           ; $64f7: $b7
	ld   [hl], a                                     ; $64f8: $77
	adc  b                                           ; $64f9: $88
	sbc  d                                           ; $64fa: $9a
	add  [hl]                                        ; $64fb: $86
	ld   b, c                                        ; $64fc: $41
	ld   de, $ff4d                                   ; $64fd: $11 $4d $ff
	jp   hl                                          ; $6500: $e9


	ld   [hl], a                                     ; $6501: $77
	adc  b                                           ; $6502: $88
	adc  c                                           ; $6503: $89
	xor  b                                           ; $6504: $a8
	ld   h, e                                        ; $6505: $63
	ld   de, $ef16                                   ; $6506: $11 $16 $ef
	cp   $87                                         ; $6509: $fe $87
	ld   a, b                                        ; $650b: $78
	adc  b                                           ; $650c: $88
	sbc  c                                           ; $650d: $99
	add  [hl]                                        ; $650e: $86
	ld   hl, $af11                                   ; $650f: $21 $11 $af
	rst  $38                                         ; $6512: $ff
	cp   c                                           ; $6513: $b9
	ld   a, b                                        ; $6514: $78
	add  a                                           ; $6515: $87
	adc  c                                           ; $6516: $89
	xor  b                                           ; $6517: $a8
	ld   d, c                                        ; $6518: $51
	ld   de, $ff3b                                   ; $6519: $11 $3b $ff
	ei                                               ; $651c: $fb
	sbc  b                                           ; $651d: $98
	add  a                                           ; $651e: $87
	ld   [hl], a                                     ; $651f: $77
	sbc  d                                           ; $6520: $9a
	add  l                                           ; $6521: $85
	ld   de, $cf15                                   ; $6522: $11 $15 $cf
	cp   $b9                                         ; $6525: $fe $b9
	sbc  c                                           ; $6527: $99
	halt                                             ; $6528: $76
	ld   l, c                                        ; $6529: $69
	sbc  b                                           ; $652a: $98
	ld   d, c                                        ; $652b: $51
	ld   de, $ef7c                                   ; $652c: $11 $7c $ef
	db   $db                                         ; $652f: $db
	cp   d                                           ; $6530: $ba
	sub  a                                           ; $6531: $97
	ld   h, [hl]                                     ; $6532: $66
	ld   a, b                                        ; $6533: $78
	ld   [hl], l                                     ; $6534: $75
	ld   sp, $bd27                                   ; $6535: $31 $27 $bd
	db   $db                                         ; $6538: $db
	xor  d                                           ; $6539: $aa
	cp   d                                           ; $653a: $ba
	add  [hl]                                        ; $653b: $86
	ld   h, a                                        ; $653c: $67
	add  a                                           ; $653d: $87
	ld   d, e                                        ; $653e: $53
	inc  h                                           ; $653f: $24
	adc  e                                           ; $6540: $8b
	cp   h                                           ; $6541: $bc
	cp   c                                           ; $6542: $b9
	xor  h                                           ; $6543: $ac
	cp   c                                           ; $6544: $b9
	ld   h, [hl]                                     ; $6545: $66
	ld   a, b                                        ; $6546: $78
	ld   h, l                                        ; $6547: $65
	ld   b, e                                        ; $6548: $43
	ld   e, b                                        ; $6549: $58
	sbc  e                                           ; $654a: $9b
	cp   c                                           ; $654b: $b9
	sbc  e                                           ; $654c: $9b
	res  2, a                                        ; $654d: $cb $97
	ld   [hl], a                                     ; $654f: $77
	add  a                                           ; $6550: $87
	ld   h, l                                        ; $6551: $65
	ld   b, [hl]                                     ; $6552: $46
	adc  b                                           ; $6553: $88
	sbc  c                                           ; $6554: $99
	adc  b                                           ; $6555: $88
	xor  e                                           ; $6556: $ab
	cp   c                                           ; $6557: $b9
	add  a                                           ; $6558: $87
	sbc  c                                           ; $6559: $99
	add  a                                           ; $655a: $87
	ld   h, l                                        ; $655b: $65
	ld   h, a                                        ; $655c: $67
	adc  b                                           ; $655d: $88
	add  a                                           ; $655e: $87
	ld   l, b                                        ; $655f: $68
	sbc  e                                           ; $6560: $9b
	sbc  b                                           ; $6561: $98
	adc  c                                           ; $6562: $89
	sbc  c                                           ; $6563: $99
	sub  a                                           ; $6564: $97
	ld   [hl], a                                     ; $6565: $77
	ld   a, b                                        ; $6566: $78
	adc  b                                           ; $6567: $88
	ld   h, l                                        ; $6568: $65
	ld   l, b                                        ; $6569: $68
	sbc  b                                           ; $656a: $98
	ld   [hl], a                                     ; $656b: $77
	sbc  d                                           ; $656c: $9a
	xor  d                                           ; $656d: $aa
	sbc  c                                           ; $656e: $99
	sbc  c                                           ; $656f: $99
	sbc  b                                           ; $6570: $98
	add  a                                           ; $6571: $87
	ld   d, l                                        ; $6572: $55
	ld   h, a                                        ; $6573: $67
	ld   [hl], a                                     ; $6574: $77
	ld   h, a                                        ; $6575: $67
	sbc  d                                           ; $6576: $9a
	xor  e                                           ; $6577: $ab
	xor  d                                           ; $6578: $aa
	xor  c                                           ; $6579: $a9
	adc  b                                           ; $657a: $88
	halt                                             ; $657b: $76
	ld   b, h                                        ; $657c: $44
	ld   d, a                                        ; $657d: $57
	ld   h, [hl]                                     ; $657e: $66
	ld   a, b                                        ; $657f: $78
	xor  e                                           ; $6580: $ab
	cp   d                                           ; $6581: $ba
	xor  d                                           ; $6582: $aa
	xor  c                                           ; $6583: $a9
	sbc  b                                           ; $6584: $98
	ld   [hl], l                                     ; $6585: $75
	ld   b, h                                        ; $6586: $44
	ld   d, [hl]                                     ; $6587: $56
	ld   h, [hl]                                     ; $6588: $66
	ld   a, b                                        ; $6589: $78
	cp   e                                           ; $658a: $bb
	cp   e                                           ; $658b: $bb
	xor  d                                           ; $658c: $aa
	xor  c                                           ; $658d: $a9
	adc  b                                           ; $658e: $88
	ld   [hl], l                                     ; $658f: $75
	ld   b, h                                        ; $6590: $44
	ld   d, [hl]                                     ; $6591: $56
	ld   h, [hl]                                     ; $6592: $66
	ld   a, c                                        ; $6593: $79
	cp   d                                           ; $6594: $ba
	cp   e                                           ; $6595: $bb
	cp   d                                           ; $6596: $ba
	xor  c                                           ; $6597: $a9
	sbc  c                                           ; $6598: $99
	ld   [hl], l                                     ; $6599: $75
	ld   b, h                                        ; $659a: $44
	ld   h, [hl]                                     ; $659b: $66
	ld   h, [hl]                                     ; $659c: $66
	ld   a, c                                        ; $659d: $79
	cp   d                                           ; $659e: $ba
	xor  e                                           ; $659f: $ab
	cp   d                                           ; $65a0: $ba
	xor  d                                           ; $65a1: $aa
	sbc  b                                           ; $65a2: $98
	ld   h, h                                        ; $65a3: $64
	ld   b, h                                        ; $65a4: $44
	ld   h, [hl]                                     ; $65a5: $66
	ld   h, [hl]                                     ; $65a6: $66
	ld   a, c                                        ; $65a7: $79
	cp   d                                           ; $65a8: $ba
	xor  e                                           ; $65a9: $ab
	cp   d                                           ; $65aa: $ba
	sbc  c                                           ; $65ab: $99
	adc  b                                           ; $65ac: $88
	ld   h, h                                        ; $65ad: $64
	ld   b, l                                        ; $65ae: $45
	ld   h, [hl]                                     ; $65af: $66
	ld   h, [hl]                                     ; $65b0: $66
	ld   a, d                                        ; $65b1: $7a
	cp   d                                           ; $65b2: $ba
	cp   e                                           ; $65b3: $bb
	xor  d                                           ; $65b4: $aa
	sbc  c                                           ; $65b5: $99
	sbc  b                                           ; $65b6: $98

Jump_0ca_65b7:
	ld   h, l                                        ; $65b7: $65
	ld   b, l                                        ; $65b8: $45
	ld   h, [hl]                                     ; $65b9: $66
	ld   h, [hl]                                     ; $65ba: $66
	ld   a, c                                        ; $65bb: $79
	xor  d                                           ; $65bc: $aa
	xor  e                                           ; $65bd: $ab
	xor  d                                           ; $65be: $aa
	xor  c                                           ; $65bf: $a9
	sbc  b                                           ; $65c0: $98
	ld   h, l                                        ; $65c1: $65
	ld   b, l                                        ; $65c2: $45
	ld   h, [hl]                                     ; $65c3: $66
	ld   h, [hl]                                     ; $65c4: $66
	ld   a, c                                        ; $65c5: $79
	xor  d                                           ; $65c6: $aa
	xor  d                                           ; $65c7: $aa
	xor  d                                           ; $65c8: $aa
	xor  c                                           ; $65c9: $a9
	sbc  b                                           ; $65ca: $98
	ld   h, l                                        ; $65cb: $65
	ld   b, l                                        ; $65cc: $45
	ld   h, [hl]                                     ; $65cd: $66
	ld   h, [hl]                                     ; $65ce: $66
	ld   a, d                                        ; $65cf: $7a
	cp   e                                           ; $65d0: $bb
	xor  e                                           ; $65d1: $ab
	cp   c                                           ; $65d2: $b9
	xor  c                                           ; $65d3: $a9
	sub  a                                           ; $65d4: $97
	ld   h, l                                        ; $65d5: $65
	ld   b, l                                        ; $65d6: $45
	ld   h, [hl]                                     ; $65d7: $66
	ld   h, [hl]                                     ; $65d8: $66
	adc  c                                           ; $65d9: $89
	cp   d                                           ; $65da: $ba
	cp   e                                           ; $65db: $bb
	cp   d                                           ; $65dc: $ba
	sbc  c                                           ; $65dd: $99
	sub  a                                           ; $65de: $97
	ld   h, l                                        ; $65df: $65
	ld   d, l                                        ; $65e0: $55
	ld   h, [hl]                                     ; $65e1: $66
	ld   h, [hl]                                     ; $65e2: $66
	adc  c                                           ; $65e3: $89
	cp   d                                           ; $65e4: $ba
	cp   e                                           ; $65e5: $bb
	cp   d                                           ; $65e6: $ba
	sbc  c                                           ; $65e7: $99
	sub  a                                           ; $65e8: $97
	ld   d, l                                        ; $65e9: $55
	ld   d, l                                        ; $65ea: $55
	ld   h, [hl]                                     ; $65eb: $66
	ld   h, a                                        ; $65ec: $67
	sbc  c                                           ; $65ed: $99
	xor  e                                           ; $65ee: $ab
	cp   d                                           ; $65ef: $ba
	cp   d                                           ; $65f0: $ba
	sbc  c                                           ; $65f1: $99
	add  a                                           ; $65f2: $87
	ld   d, l                                        ; $65f3: $55
	ld   d, l                                        ; $65f4: $55
	ld   h, [hl]                                     ; $65f5: $66
	ld   h, a                                        ; $65f6: $67
	sbc  c                                           ; $65f7: $99
	xor  e                                           ; $65f8: $ab
	cp   d                                           ; $65f9: $ba
	xor  d                                           ; $65fa: $aa
	sbc  c                                           ; $65fb: $99
	add  a                                           ; $65fc: $87
	ld   d, l                                        ; $65fd: $55
	ld   d, [hl]                                     ; $65fe: $56
	ld   h, [hl]                                     ; $65ff: $66
	ld   h, a                                        ; $6600: $67
	adc  c                                           ; $6601: $89
	cp   e                                           ; $6602: $bb
	cp   d                                           ; $6603: $ba
	xor  d                                           ; $6604: $aa
	xor  b                                           ; $6605: $a8
	add  [hl]                                        ; $6606: $86
	ld   d, l                                        ; $6607: $55
	ld   d, [hl]                                     ; $6608: $56
	ld   h, [hl]                                     ; $6609: $66
	ld   h, a                                        ; $660a: $67
	sbc  d                                           ; $660b: $9a
	cp   e                                           ; $660c: $bb
	cp   d                                           ; $660d: $ba
	xor  d                                           ; $660e: $aa
	sbc  b                                           ; $660f: $98
	add  [hl]                                        ; $6610: $86
	ld   d, l                                        ; $6611: $55
	ld   d, [hl]                                     ; $6612: $56
	ld   h, [hl]                                     ; $6613: $66
	ld   h, a                                        ; $6614: $67
	sbc  d                                           ; $6615: $9a
	cp   e                                           ; $6616: $bb
	xor  e                                           ; $6617: $ab
	xor  c                                           ; $6618: $a9
	sbc  b                                           ; $6619: $98
	halt                                             ; $661a: $76
	ld   d, l                                        ; $661b: $55
	ld   d, [hl]                                     ; $661c: $56
	ld   h, [hl]                                     ; $661d: $66
	ld   l, b                                        ; $661e: $68
	sbc  d                                           ; $661f: $9a
	cp   e                                           ; $6620: $bb
	xor  e                                           ; $6621: $ab
	xor  c                                           ; $6622: $a9
	sbc  b                                           ; $6623: $98
	halt                                             ; $6624: $76
	ld   d, l                                        ; $6625: $55
	ld   h, [hl]                                     ; $6626: $66
	ld   h, [hl]                                     ; $6627: $66
	ld   l, c                                        ; $6628: $69
	xor  d                                           ; $6629: $aa
	cp   d                                           ; $662a: $ba
	xor  d                                           ; $662b: $aa
	xor  c                                           ; $662c: $a9
	sbc  c                                           ; $662d: $99
	halt                                             ; $662e: $76
	ld   d, l                                        ; $662f: $55
	ld   h, [hl]                                     ; $6630: $66
	ld   h, [hl]                                     ; $6631: $66
	ld   a, b                                        ; $6632: $78
	xor  d                                           ; $6633: $aa
	xor  d                                           ; $6634: $aa
	cp   d                                           ; $6635: $ba
	xor  c                                           ; $6636: $a9
	sbc  b                                           ; $6637: $98
	halt                                             ; $6638: $76
	ld   d, l                                        ; $6639: $55
	ld   h, [hl]                                     ; $663a: $66
	ld   h, [hl]                                     ; $663b: $66
	ld   a, c                                        ; $663c: $79
	sbc  d                                           ; $663d: $9a
	xor  e                                           ; $663e: $ab
	cp   d                                           ; $663f: $ba
	xor  d                                           ; $6640: $aa
	sbc  b                                           ; $6641: $98
	ld   h, [hl]                                     ; $6642: $66
	ld   d, [hl]                                     ; $6643: $56
	ld   h, [hl]                                     ; $6644: $66
	ld   h, [hl]                                     ; $6645: $66
	adc  c                                           ; $6646: $89
	sbc  d                                           ; $6647: $9a
	xor  e                                           ; $6648: $ab
	cp   d                                           ; $6649: $ba
	xor  c                                           ; $664a: $a9
	add  a                                           ; $664b: $87
	ld   h, [hl]                                     ; $664c: $66
	ld   d, [hl]                                     ; $664d: $56
	ld   h, [hl]                                     ; $664e: $66
	ld   h, a                                        ; $664f: $67
	adc  c                                           ; $6650: $89
	sbc  d                                           ; $6651: $9a
	xor  e                                           ; $6652: $ab
	xor  d                                           ; $6653: $aa
	xor  c                                           ; $6654: $a9
	sub  a                                           ; $6655: $97
	ld   h, [hl]                                     ; $6656: $66
	ld   d, [hl]                                     ; $6657: $56
	ld   h, [hl]                                     ; $6658: $66
	ld   h, a                                        ; $6659: $67
	sbc  c                                           ; $665a: $99
	xor  d                                           ; $665b: $aa
	cp   e                                           ; $665c: $bb
	xor  d                                           ; $665d: $aa
	xor  c                                           ; $665e: $a9

Jump_0ca_665f:
	add  a                                           ; $665f: $87
	ld   h, l                                        ; $6660: $65
	ld   h, [hl]                                     ; $6661: $66
	ld   h, [hl]                                     ; $6662: $66
	ld   h, a                                        ; $6663: $67
	adc  d                                           ; $6664: $8a
	xor  d                                           ; $6665: $aa
	xor  e                                           ; $6666: $ab
	xor  d                                           ; $6667: $aa
	xor  b                                           ; $6668: $a8
	add  [hl]                                        ; $6669: $86
	ld   h, [hl]                                     ; $666a: $66
	ld   h, [hl]                                     ; $666b: $66
	ld   h, [hl]                                     ; $666c: $66
	ld   a, b                                        ; $666d: $78
	adc  d                                           ; $666e: $8a
	xor  d                                           ; $666f: $aa
	cp   d                                           ; $6670: $ba
	xor  d                                           ; $6671: $aa
	sbc  b                                           ; $6672: $98
	halt                                             ; $6673: $76
	ld   h, [hl]                                     ; $6674: $66
	ld   h, [hl]                                     ; $6675: $66
	ld   h, [hl]                                     ; $6676: $66
	ld   a, b                                        ; $6677: $78
	sbc  c                                           ; $6678: $99
	xor  d                                           ; $6679: $aa
	xor  d                                           ; $667a: $aa
	xor  c                                           ; $667b: $a9
	sbc  c                                           ; $667c: $99
	halt                                             ; $667d: $76
	ld   h, [hl]                                     ; $667e: $66
	ld   h, [hl]                                     ; $667f: $66
	ld   h, [hl]                                     ; $6680: $66
	ld   a, c                                        ; $6681: $79
	sbc  c                                           ; $6682: $99
	sbc  d                                           ; $6683: $9a
	xor  d                                           ; $6684: $aa
	xor  d                                           ; $6685: $aa
	sbc  b                                           ; $6686: $98
	halt                                             ; $6687: $76
	ld   h, [hl]                                     ; $6688: $66
	ld   h, [hl]                                     ; $6689: $66
	ld   h, a                                        ; $668a: $67
	adc  b                                           ; $668b: $88
	sbc  c                                           ; $668c: $99
	sbc  d                                           ; $668d: $9a
	xor  d                                           ; $668e: $aa
	sbc  c                                           ; $668f: $99
	add  a                                           ; $6690: $87
	halt                                             ; $6691: $76
	ld   h, [hl]                                     ; $6692: $66
	ld   h, [hl]                                     ; $6693: $66
	ld   h, a                                        ; $6694: $67
	adc  b                                           ; $6695: $88
	sbc  d                                           ; $6696: $9a
	sbc  d                                           ; $6697: $9a
	xor  d                                           ; $6698: $aa
	sbc  c                                           ; $6699: $99
	sub  a                                           ; $669a: $97
	halt                                             ; $669b: $76
	ld   h, [hl]                                     ; $669c: $66
	ld   h, [hl]                                     ; $669d: $66
	ld   [hl], a                                     ; $669e: $77
	sbc  c                                           ; $669f: $99
	sbc  d                                           ; $66a0: $9a
	sbc  d                                           ; $66a1: $9a
	xor  c                                           ; $66a2: $a9
	xor  c                                           ; $66a3: $a9
	add  a                                           ; $66a4: $87
	halt                                             ; $66a5: $76
	ld   h, [hl]                                     ; $66a6: $66
	ld   h, [hl]                                     ; $66a7: $66
	ld   a, b                                        ; $66a8: $78
	sbc  c                                           ; $66a9: $99
	sbc  d                                           ; $66aa: $9a
	sbc  c                                           ; $66ab: $99
	xor  c                                           ; $66ac: $a9
	sbc  c                                           ; $66ad: $99
	ld   [hl], a                                     ; $66ae: $77
	ld   h, [hl]                                     ; $66af: $66
	ld   h, [hl]                                     ; $66b0: $66
	ld   h, a                                        ; $66b1: $67
	ld   a, b                                        ; $66b2: $78
	adc  c                                           ; $66b3: $89
	xor  c                                           ; $66b4: $a9
	sbc  d                                           ; $66b5: $9a
	xor  d                                           ; $66b6: $aa
	sbc  b                                           ; $66b7: $98
	ld   [hl], a                                     ; $66b8: $77
	ld   h, [hl]                                     ; $66b9: $66
	ld   h, [hl]                                     ; $66ba: $66
	ld   h, a                                        ; $66bb: $67
	adc  c                                           ; $66bc: $89
	adc  c                                           ; $66bd: $89
	xor  c                                           ; $66be: $a9
	xor  d                                           ; $66bf: $aa
	sbc  c                                           ; $66c0: $99
	sub  a                                           ; $66c1: $97
	halt                                             ; $66c2: $76
	ld   h, [hl]                                     ; $66c3: $66
	ld   h, [hl]                                     ; $66c4: $66
	ld   [hl], a                                     ; $66c5: $77
	adc  c                                           ; $66c6: $89
	sbc  c                                           ; $66c7: $99
	sbc  c                                           ; $66c8: $99
	xor  d                                           ; $66c9: $aa
	xor  b                                           ; $66ca: $a8
	add  a                                           ; $66cb: $87
	halt                                             ; $66cc: $76
	ld   h, [hl]                                     ; $66cd: $66
	ld   h, [hl]                                     ; $66ce: $66
	ld   a, b                                        ; $66cf: $78
	sbc  b                                           ; $66d0: $98
	sbc  d                                           ; $66d1: $9a
	sbc  d                                           ; $66d2: $9a
	xor  c                                           ; $66d3: $a9
	sbc  b                                           ; $66d4: $98
	ld   [hl], a                                     ; $66d5: $77
	halt                                             ; $66d6: $76
	ld   h, [hl]                                     ; $66d7: $66
	ld   h, a                                        ; $66d8: $67
	ld   a, b                                        ; $66d9: $78
	adc  c                                           ; $66da: $89
	xor  c                                           ; $66db: $a9
	xor  d                                           ; $66dc: $aa
	xor  c                                           ; $66dd: $a9
	sbc  b                                           ; $66de: $98
	ld   [hl], a                                     ; $66df: $77
	ld   h, [hl]                                     ; $66e0: $66
	ld   h, [hl]                                     ; $66e1: $66
	ld   h, a                                        ; $66e2: $67
	adc  c                                           ; $66e3: $89
	sbc  c                                           ; $66e4: $99
	xor  c                                           ; $66e5: $a9
	xor  d                                           ; $66e6: $aa
	xor  c                                           ; $66e7: $a9
	add  a                                           ; $66e8: $87
	halt                                             ; $66e9: $76
	ld   h, [hl]                                     ; $66ea: $66
	ld   h, [hl]                                     ; $66eb: $66
	ld   a, b                                        ; $66ec: $78
	adc  b                                           ; $66ed: $88
	sbc  d                                           ; $66ee: $9a
	sbc  d                                           ; $66ef: $9a
	xor  c                                           ; $66f0: $a9
	sbc  b                                           ; $66f1: $98
	ld   [hl], a                                     ; $66f2: $77
	ld   h, [hl]                                     ; $66f3: $66
	ld   h, [hl]                                     ; $66f4: $66
	ld   h, a                                        ; $66f5: $67
	ld   a, b                                        ; $66f6: $78
	adc  c                                           ; $66f7: $89
	xor  c                                           ; $66f8: $a9
	xor  d                                           ; $66f9: $aa
	xor  d                                           ; $66fa: $aa
	sbc  b                                           ; $66fb: $98
	ld   [hl], a                                     ; $66fc: $77
	ld   h, [hl]                                     ; $66fd: $66
	ld   h, [hl]                                     ; $66fe: $66
	ld   h, a                                        ; $66ff: $67
	adc  c                                           ; $6700: $89
	sbc  c                                           ; $6701: $99
	xor  c                                           ; $6702: $a9
	xor  d                                           ; $6703: $aa
	sbc  b                                           ; $6704: $98
	add  a                                           ; $6705: $87
	halt                                             ; $6706: $76
	ld   h, [hl]                                     ; $6707: $66
	ld   h, [hl]                                     ; $6708: $66
	ld   a, b                                        ; $6709: $78
	sbc  b                                           ; $670a: $98
	sbc  d                                           ; $670b: $9a
	sbc  d                                           ; $670c: $9a
	xor  d                                           ; $670d: $aa
	sbc  b                                           ; $670e: $98
	ld   [hl], a                                     ; $670f: $77
	ld   h, [hl]                                     ; $6710: $66
	ld   h, [hl]                                     ; $6711: $66
	ld   h, [hl]                                     ; $6712: $66
	ld   a, b                                        ; $6713: $78
	adc  c                                           ; $6714: $89
	xor  d                                           ; $6715: $aa
	sbc  d                                           ; $6716: $9a
	xor  d                                           ; $6717: $aa
	adc  b                                           ; $6718: $88
	halt                                             ; $6719: $76
	ld   h, [hl]                                     ; $671a: $66
	ld   h, [hl]                                     ; $671b: $66
	ld   h, a                                        ; $671c: $67
	adc  c                                           ; $671d: $89
	sbc  c                                           ; $671e: $99
	sbc  b                                           ; $671f: $98
	sbc  e                                           ; $6720: $9b
	sbc  b                                           ; $6721: $98
	halt                                             ; $6722: $76
	ld   h, [hl]                                     ; $6723: $66
	halt                                             ; $6724: $76
	ld   h, a                                        ; $6725: $67
	adc  d                                           ; $6726: $8a
	cp   e                                           ; $6727: $bb
	sbc  c                                           ; $6728: $99
	ld   d, h                                        ; $6729: $54
	sbc  c                                           ; $672a: $99
	ld   h, [hl]                                     ; $672b: $66
	ld   d, l                                        ; $672c: $55
	adc  e                                           ; $672d: $8b
	cp   d                                           ; $672e: $ba
	cp   h                                           ; $672f: $bc
	call z, Call_0ca_41a5                            ; $6730: $cc $a5 $41
	inc  de                                          ; $6733: $13
	cp   d                                           ; $6734: $ba
	set  1, a                                        ; $6735: $cb $cf
	db   $fc                                         ; $6737: $fc
	ld   [hl], l                                     ; $6738: $75
	ld   [hl], a                                     ; $6739: $77
	ld   e, c                                        ; $673a: $59
	ld   sp, rAUD1LEN                                   ; $673b: $31 $11 $ff
	db   $fc                                         ; $673e: $fc
	xor  [hl]                                        ; $673f: $ae
	ld   [hl], a                                     ; $6740: $77
	add  a                                           ; $6741: $87
	sbc  c                                           ; $6742: $99
	ld   l, d                                        ; $6743: $6a
	sub  d                                           ; $6744: $92
	ld   hl, $ff19                                   ; $6745: $21 $19 $ff
	rst  $38                                         ; $6748: $ff
	ret  c                                           ; $6749: $d8

	inc  d                                           ; $674a: $14
	ld   e, b                                        ; $674b: $58
	xor  e                                           ; $674c: $ab
	ld   a, [$1131]                                  ; $674d: $fa $31 $11
	rst  $28                                         ; $6750: $ef
	rst  $38                                         ; $6751: $ff
	rst  $38                                         ; $6752: $ff
	ld   b, c                                        ; $6753: $41
	ld   d, l                                        ; $6754: $55
	adc  b                                           ; $6755: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6756: $cf
	and  c                                           ; $6757: $a1
	ld   de, $ff1f                                   ; $6758: $11 $1f $ff
	cp   $d1                                         ; $675b: $fe $d1
	ld   d, $7a                                      ; $675d: $16 $7a

Jump_0ca_675f:
	xor  a                                           ; $675f: $af
	or   $11                                         ; $6760: $f6 $11
	ld   de, $ffff                                   ; $6762: $11 $ff $ff

Jump_0ca_6765:
	jp   hl                                          ; $6765: $e9


	ld   de, $ce59                                   ; $6766: $11 $59 $ce
	db   $fd                                         ; $6769: $fd
	ld   b, c                                        ; $676a: $41
	ld   de, $ff1f                                   ; $676b: $11 $1f $ff
	db   $fd                                         ; $676e: $fd
	ld   [hl], c                                     ; $676f: $71
	ld   d, $ad                                      ; $6770: $16 $ad
	rst  $38                                         ; $6772: $ff
	db   $d3                                         ; $6773: $d3
	ld   de, rAUD1LEN                                   ; $6774: $11 $11 $ff
	rst  $38                                         ; $6777: $ff
	push bc                                          ; $6778: $c5
	ld   de, $ef5a                                   ; $6779: $11 $5a $ef
	db   $fd                                         ; $677c: $fd
	ld   b, c                                        ; $677d: $41
	ld   de, $ff1f                                   ; $677e: $11 $1f $ff
	ei                                               ; $6781: $fb
	ld   d, c                                        ; $6782: $51
	inc  d                                           ; $6783: $14
	cp   a                                           ; $6784: $bf
	rst  $38                                         ; $6785: $ff
	call nc, $1111                                   ; $6786: $d4 $11 $11
	rst  $38                                         ; $6789: $ff
	rst  $38                                         ; $678a: $ff
	or   e                                           ; $678b: $b3
	ld   de, $ff4c                                   ; $678c: $11 $4c $ff
	db   $fd                                         ; $678f: $fd
	ld   b, c                                        ; $6790: $41
	ld   de, $ff1f                                   ; $6791: $11 $1f $ff
	ei                                               ; $6794: $fb
	ld   hl, $df12                                   ; $6795: $21 $12 $df
	rst  $38                                         ; $6798: $ff
	push bc                                          ; $6799: $c5
	ld   de, rAUD1LEN                                   ; $679a: $11 $11 $ff
	rst  $38                                         ; $679d: $ff
	pop  de                                          ; $679e: $d1
	ld   de, $ff1c                                   ; $679f: $11 $1c $ff
	db   $fd                                         ; $67a2: $fd
	ld   d, c                                        ; $67a3: $51
	ld   de, $ff18                                   ; $67a4: $11 $18 $ff
	cp   $11                                         ; $67a7: $fe $11
	ld   de, $ffcf                                   ; $67a9: $11 $cf $ff
	sub  $11                                         ; $67ac: $d6 $11
	ld   de, $ff1f                                   ; $67ae: $11 $1f $ff
	ldh  a, [c]                                      ; $67b1: $f2
	ld   de, $ff17                                   ; $67b2: $11 $17 $ff
	rst  $38                                         ; $67b5: $ff
	ld   [hl], c                                     ; $67b6: $71
	ld   de, rAUD1LEN                                   ; $67b7: $11 $11 $ff
	rst  $38                                         ; $67ba: $ff
	ld   [hl], c                                     ; $67bb: $71
	ld   de, $ff3f                                   ; $67bc: $11 $3f $ff
	ld   sp, hl                                      ; $67bf: $f9
	ld   hl, $1511                                   ; $67c0: $21 $11 $15
	rst  $38                                         ; $67c3: $ff
	ei                                               ; $67c4: $fb
	ld   de, $bf11                                   ; $67c5: $11 $11 $bf
	rst  $38                                         ; $67c8: $ff
	or   l                                           ; $67c9: $b5
	ld   de, $1f11                                   ; $67ca: $11 $11 $1f
	rst  $38                                         ; $67cd: $ff
	call nz, $1711                                   ; $67ce: $c4 $11 $17
	rst  $38                                         ; $67d1: $ff
	db   $fd                                         ; $67d2: $fd
	add  c                                           ; $67d3: $81
	ld   de, $6f21                                   ; $67d4: $11 $21 $6f
	rst  $38                                         ; $67d7: $ff
	sub  c                                           ; $67d8: $91
	ld   de, $ff1d                                   ; $67d9: $11 $1d $ff
	ld   sp, hl                                      ; $67dc: $f9
	ld   b, c                                        ; $67dd: $41
	ld   de, $ff31                                   ; $67de: $11 $31 $ff
	ld   a, [$1141]                                  ; $67e1: $fa $41 $11
	adc  a                                           ; $67e4: $8f
	rst  $38                                         ; $67e5: $ff
	or   a                                           ; $67e6: $b7
	ld   de, $2513                                   ; $67e7: $11 $13 $25
	rst  $38                                         ; $67ea: $ff
	ret  z                                           ; $67eb: $c8

	ld   de, rAUD1ENV                                   ; $67ec: $11 $12 $ff
	cp   $82                                         ; $67ef: $fe $82
	ld   de, $1f15                                   ; $67f1: $11 $15 $1f
	rst  $38                                         ; $67f4: $ff
	add  h                                           ; $67f5: $84
	ld   de, $ff19                                   ; $67f6: $11 $19 $ff
	ld   sp, hl                                      ; $67f9: $f9
	ld   d, c                                        ; $67fa: $51
	ld   de, $5f62                                   ; $67fb: $11 $62 $5f
	ld   sp, hl                                      ; $67fe: $f9
	ld   [hl], c                                     ; $67ff: $71
	ld   de, $ff4e                                   ; $6800: $11 $4e $ff
	ret  z                                           ; $6803: $c8

	ld   hl, $6112                                   ; $6804: $21 $12 $61
	rst  $38                                         ; $6807: $ff
	or   $51                                         ; $6808: $f6 $51
	ld   de, $ff9f                                   ; $680a: $11 $9f $ff
	and  l                                           ; $680d: $a5
	ld   de, $3415                                   ; $680e: $11 $15 $34
	rst  $38                                         ; $6811: $ff
	ld   [hl], a                                     ; $6812: $77
	ld   de, $ef15                                   ; $6813: $11 $15 $ef
	ei                                               ; $6816: $fb
	sub  c                                           ; $6817: $91
	ld   de, $1f16                                   ; $6818: $11 $16 $1f
	db   $fd                                         ; $681b: $fd
	ld   h, a                                        ; $681c: $67
	ld   de, $ff39                                   ; $681d: $11 $39 $ff
	db   $eb                                         ; $6820: $eb
	ld   b, c                                        ; $6821: $41
	ld   de, $6f51                                   ; $6822: $11 $51 $6f
	or   $91                                         ; $6825: $f6 $91
	ld   de, $ff6f                                   ; $6827: $11 $6f $ff
	ret                                              ; $682a: $c9


	ld   de, $4112                                   ; $682b: $11 $12 $41
	rst  $38                                         ; $682e: $ff
	and  a                                           ; $682f: $a7
	ld   h, c                                        ; $6830: $61
	inc  d                                           ; $6831: $14
	cp   a                                           ; $6832: $bf
	cp   $d2                                         ; $6833: $fe $d2
	ld   de, $1b15                                   ; $6835: $11 $15 $1b
	rst  $38                                         ; $6838: $ff
	ld   e, d                                        ; $6839: $5a
	ld   de, $ff18                                   ; $683a: $11 $18 $ff
	xor  $71                                         ; $683d: $ee $71
	ld   de, $3f41                                   ; $683f: $11 $41 $3f
	rst  $30                                         ; $6842: $f7
	sub  h                                           ; $6843: $94
	ld   de, $ff4f                                   ; $6844: $11 $4f $ff
	db   $ed                                         ; $6847: $ed
	ld   de, $3112                                   ; $6848: $11 $12 $31
	rst  $38                                         ; $684b: $ff
	add  $81                                         ; $684c: $c6 $81
	ld   de, $fdbf                                   ; $684e: $11 $bf $fd
	push hl                                          ; $6851: $e5
	ld   de, $1915                                   ; $6852: $11 $15 $19
	rst  $38                                         ; $6855: $ff
	ld   l, c                                        ; $6856: $69
	ld   de, $ff16                                   ; $6857: $11 $16 $ff
	rst  $38                                         ; $685a: $ff
	and  c                                           ; $685b: $a1
	ld   de, $4f31                                   ; $685c: $11 $31 $4f
	ld   sp, hl                                      ; $685f: $f9
	add  h                                           ; $6860: $84
	ld   de, $ff3f                                   ; $6861: $11 $3f $ff
	db   $fd                                         ; $6864: $fd
	ld   de, $2112                                   ; $6865: $11 $12 $21
	rst  $38                                         ; $6868: $ff
	ret  c                                           ; $6869: $d8

	ld   [hl], c                                     ; $686a: $71
	ld   de, $ffbf                                   ; $686b: $11 $bf $ff
	push af                                          ; $686e: $f5
	ld   de, $1f12                                   ; $686f: $11 $12 $1f
	rst  $38                                         ; $6872: $ff
	sbc  c                                           ; $6873: $99
	ld   de, $ff16                                   ; $6874: $11 $16 $ff
	rst  $38                                         ; $6877: $ff
	sub  c                                           ; $6878: $91
	ld   de, $bf11                                   ; $6879: $11 $11 $bf
	db   $fc                                         ; $687c: $fc
	or   c                                           ; $687d: $b1
	ld   de, $ff4f                                   ; $687e: $11 $4f $ff
	db   $fc                                         ; $6881: $fc
	ld   de, $1811                                   ; $6882: $11 $11 $18
	rst  $38                                         ; $6885: $ff
	db   $ed                                         ; $6886: $ed
	ld   b, c                                        ; $6887: $41
	ld   [de], a                                     ; $6888: $12
	rst  $28                                         ; $6889: $ef
	rst  $38                                         ; $688a: $ff
	di                                               ; $688b: $f3
	ld   de, $bf11                                   ; $688c: $11 $11 $bf
	rst  $38                                         ; $688f: $ff
	push af                                          ; $6890: $f5
	ld   de, $ef4a                                   ; $6891: $11 $4a $ef
	db   $fd                                         ; $6894: $fd
	ld   hl, $1f11                                   ; $6895: $21 $11 $1f
	rst  $38                                         ; $6898: $ff
	cp   $51                                         ; $6899: $fe $51
	ld   d, $9c                                      ; $689b: $16 $9c
	rst  $38                                         ; $689d: $ff
	jp   nz, $1711                                   ; $689e: $c2 $11 $17

	rst  $38                                         ; $68a1: $ff
	rst  $38                                         ; $68a2: $ff
	or   e                                           ; $68a3: $b3
	inc  d                                           ; $68a4: $14
	ld   [hl], a                                     ; $68a5: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a6: $cf
	push hl                                          ; $68a7: $e5
	ld   hl, $fb14                                   ; $68a8: $21 $14 $fb
	rst  $38                                         ; $68ab: $ff
	push bc                                          ; $68ac: $c5
	ld   h, $75                                      ; $68ad: $26 $75
	ld   a, a                                        ; $68af: $7f
	push hl                                          ; $68b0: $e5
	ld   d, c                                        ; $68b1: $51

Call_0ca_68b2:
	ld   [de], a                                     ; $68b2: $12
	ei                                               ; $68b3: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68b4: $cf
	rst  $20                                         ; $68b5: $e7
	daa                                              ; $68b6: $27
	add  l                                           ; $68b7: $85

Jump_0ca_68b8:
	ld   l, [hl]                                     ; $68b8: $6e

Call_0ca_68b9:
	push af                                          ; $68b9: $f5
	ld   d, e                                        ; $68ba: $53
	ld   de, $9fee                                   ; $68bb: $11 $ee $9f
	ld   sp, hl                                      ; $68be: $f9
	ld   [hl], $a6                                   ; $68bf: $36 $a6
	ld   c, e                                        ; $68c1: $4b
	rst  $30                                         ; $68c2: $f7
	ld   d, h                                        ; $68c3: $54

jr_0ca_68c4:
	ld   de, $7fbd                                   ; $68c4: $11 $bd $7f
	ld   a, [$b557]                                  ; $68c7: $fa $57 $b5
	jr   c, jr_0ca_68c4                              ; $68ca: $38 $f8

	ld   b, [hl]                                     ; $68cc: $46
	ld   de, $6dae                                   ; $68cd: $11 $ae $6d
	db   $fc                                         ; $68d0: $fc
	ld   h, a                                        ; $68d1: $67
	rst  $10                                         ; $68d2: $d7
	ld   [hl], $d8                                   ; $68d3: $36 $d8
	ld   [hl], $21                                   ; $68d5: $36 $21
	ld   a, a                                        ; $68d7: $7f
	ld   l, e                                        ; $68d8: $6b
	db   $fc                                         ; $68d9: $fc
	ld   h, [hl]                                     ; $68da: $66
	jp   c, $c955                                    ; $68db: $da $55 $c9

	dec  h                                           ; $68de: $25
	ld   hl, $7a7f                                   ; $68df: $21 $7f $7a
	db   $fd                                         ; $68e2: $fd
	ld   [hl], l                                     ; $68e3: $75
	db   $db                                         ; $68e4: $db
	ld   h, l                                        ; $68e5: $65
	sla  h                                           ; $68e6: $cb $24
	ld   hl, $8a5f                                   ; $68e8: $21 $5f $8a
	db   $fc                                         ; $68eb: $fc
	add  l                                           ; $68ec: $85
	jp   c, $db65                                    ; $68ed: $da $65 $db

	inc  h                                           ; $68f0: $24
	ld   hl, $8a4f                                   ; $68f1: $21 $4f $8a
	cp   $a5                                         ; $68f4: $fe $a5
	jp   z, $bc65                                    ; $68f6: $ca $65 $bc

	ld   b, h                                        ; $68f9: $44
	ld   de, $784e                                   ; $68fa: $11 $4e $78
	cp   $a6                                         ; $68fd: $fe $a6
	db   $db                                         ; $68ff: $db
	ld   d, h                                        ; $6900: $54
	xor  h                                           ; $6901: $ac
	ld   b, l                                        ; $6902: $45
	ld   sp, $773b                                   ; $6903: $31 $3b $77
	db   $fc                                         ; $6906: $fc
	or   a                                           ; $6907: $b7
	jp   c, $9b75                                    ; $6908: $da $75 $9b

	ld   d, [hl]                                     ; $690b: $56
	ld   b, e                                        ; $690c: $43
	ld   c, d                                        ; $690d: $4a
	ld   h, l                                        ; $690e: $65
	res  7, b                                        ; $690f: $cb $b8
	call z, $8b76                                    ; $6911: $cc $76 $8b
	ld   d, [hl]                                     ; $6914: $56
	ld   h, [hl]                                     ; $6915: $66
	ld   b, a                                        ; $6916: $47
	sub  h                                           ; $6917: $94
	sbc  c                                           ; $6918: $99
	xor  c                                           ; $6919: $a9
	sbc  e                                           ; $691a: $9b
	xor  b                                           ; $691b: $a8
	ld   l, d                                        ; $691c: $6a
	add  a                                           ; $691d: $87
	ld   a, b                                        ; $691e: $78
	ld   [hl], l                                     ; $691f: $75
	sub  a                                           ; $6920: $97
	ld   l, c                                        ; $6921: $69
	adc  b                                           ; $6922: $88
	adc  c                                           ; $6923: $89
	sbc  d                                           ; $6924: $9a
	ld   [hl], a                                     ; $6925: $77
	sbc  b                                           ; $6926: $98
	ld   [hl], a                                     ; $6927: $77
	sub  a                                           ; $6928: $97
	ld   l, d                                        ; $6929: $6a
	add  a                                           ; $692a: $87
	ld   [hl], a                                     ; $692b: $77
	adc  b                                           ; $692c: $88
	ld   a, c                                        ; $692d: $79
	sub  a                                           ; $692e: $97
	ld   a, c                                        ; $692f: $79
	add  a                                           ; $6930: $87
	adc  c                                           ; $6931: $89
	add  a                                           ; $6932: $87
	sbc  d                                           ; $6933: $9a
	ld   [hl], a                                     ; $6934: $77
	ld   a, b                                        ; $6935: $78
	ld   [hl], a                                     ; $6936: $77
	adc  c                                           ; $6937: $89
	add  a                                           ; $6938: $87
	sbc  c                                           ; $6939: $99
	adc  b                                           ; $693a: $88
	sbc  c                                           ; $693b: $99
	ld   a, d                                        ; $693c: $7a
	sub  a                                           ; $693d: $97
	ld   [hl], a                                     ; $693e: $77
	ld   [hl], a                                     ; $693f: $77
	ld   a, b                                        ; $6940: $78
	sbc  b                                           ; $6941: $98
	ld   a, c                                        ; $6942: $79
	add  a                                           ; $6943: $87
	ld   a, c                                        ; $6944: $79
	adc  b                                           ; $6945: $88
	sbc  c                                           ; $6946: $99
	add  a                                           ; $6947: $87
	ld   [hl], a                                     ; $6948: $77
	add  a                                           ; $6949: $87
	ld   a, b                                        ; $694a: $78
	add  a                                           ; $694b: $87
	sbc  b                                           ; $694c: $98
	ld   a, b                                        ; $694d: $78
	sbc  c                                           ; $694e: $99
	adc  c                                           ; $694f: $89
	xor  b                                           ; $6950: $a8
	ld   [hl], a                                     ; $6951: $77
	ld   [hl], a                                     ; $6952: $77
	ld   a, b                                        ; $6953: $78
	add  a                                           ; $6954: $87
	adc  b                                           ; $6955: $88
	ld   [hl], a                                     ; $6956: $77
	adc  b                                           ; $6957: $88
	sbc  c                                           ; $6958: $99
	xor  d                                           ; $6959: $aa
	adc  b                                           ; $695a: $88
	add  a                                           ; $695b: $87
	ld   [hl], a                                     ; $695c: $77
	ld   a, b                                        ; $695d: $78
	adc  b                                           ; $695e: $88
	ld   a, b                                        ; $695f: $78
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	sbc  c                                           ; $6962: $99
	adc  c                                           ; $6963: $89
	adc  b                                           ; $6964: $88
	ld   [hl], a                                     ; $6965: $77
	ld   [hl], a                                     ; $6966: $77
	ld   a, b                                        ; $6967: $78
	adc  c                                           ; $6968: $89
	add  a                                           ; $6969: $87
	adc  c                                           ; $696a: $89
	sbc  b                                           ; $696b: $98
	sbc  c                                           ; $696c: $99
	sbc  c                                           ; $696d: $99
	ld   [hl], a                                     ; $696e: $77
	ld   [hl], a                                     ; $696f: $77
	ld   a, b                                        ; $6970: $78
	adc  b                                           ; $6971: $88
	adc  b                                           ; $6972: $88
	sbc  c                                           ; $6973: $99
	adc  c                                           ; $6974: $89
	adc  c                                           ; $6975: $89
	sbc  b                                           ; $6976: $98
	add  a                                           ; $6977: $87
	ld   [hl], a                                     ; $6978: $77
	adc  b                                           ; $6979: $88
	sbc  b                                           ; $697a: $98
	adc  b                                           ; $697b: $88

jr_0ca_697c:
	sbc  b                                           ; $697c: $98
	sbc  c                                           ; $697d: $99
	adc  b                                           ; $697e: $88
	adc  b                                           ; $697f: $88
	ld   a, b                                        ; $6980: $78
	ld   [hl], a                                     ; $6981: $77
	ld   [hl], a                                     ; $6982: $77
	adc  c                                           ; $6983: $89
	adc  b                                           ; $6984: $88
	sbc  c                                           ; $6985: $99
	adc  b                                           ; $6986: $88
	sbc  b                                           ; $6987: $98
	ld   a, b                                        ; $6988: $78
	adc  c                                           ; $6989: $89
	sbc  b                                           ; $698a: $98
	ld   a, b                                        ; $698b: $78
	add  a                                           ; $698c: $87
	adc  c                                           ; $698d: $89
	sbc  c                                           ; $698e: $99
	sbc  c                                           ; $698f: $99
	sbc  b                                           ; $6990: $98
	ld   [hl], a                                     ; $6991: $77
	ld   [hl], a                                     ; $6992: $77
	ld   l, b                                        ; $6993: $68
	adc  b                                           ; $6994: $88
	ld   [hl], a                                     ; $6995: $77
	adc  b                                           ; $6996: $88
	sbc  c                                           ; $6997: $99
	sbc  c                                           ; $6998: $99
	adc  b                                           ; $6999: $88
	add  a                                           ; $699a: $87
	ld   [hl], l                                     ; $699b: $75
	ld   l, b                                        ; $699c: $68
	sbc  b                                           ; $699d: $98
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	sbc  c                                           ; $69a0: $99
	xor  c                                           ; $69a1: $a9
	adc  c                                           ; $69a2: $89
	add  a                                           ; $69a3: $87
	ld   d, h                                        ; $69a4: $54
	ld   a, d                                        ; $69a5: $7a
	ld   [hl], a                                     ; $69a6: $77
	adc  b                                           ; $69a7: $88
	adc  c                                           ; $69a8: $89
	sbc  c                                           ; $69a9: $99
	xor  b                                           ; $69aa: $a8
	adc  b                                           ; $69ab: $88
	add  a                                           ; $69ac: $87
	ld   d, l                                        ; $69ad: $55
	ld   l, c                                        ; $69ae: $69
	add  a                                           ; $69af: $87
	adc  b                                           ; $69b0: $88
	sbc  b                                           ; $69b1: $98
	sbc  d                                           ; $69b2: $9a
	sbc  b                                           ; $69b3: $98
	adc  c                                           ; $69b4: $89
	sbc  b                                           ; $69b5: $98
	ld   h, h                                        ; $69b6: $64
	ld   l, c                                        ; $69b7: $69
	add  a                                           ; $69b8: $87
	adc  b                                           ; $69b9: $88
	sbc  b                                           ; $69ba: $98
	sbc  c                                           ; $69bb: $99
	xor  c                                           ; $69bc: $a9
	adc  b                                           ; $69bd: $88
	adc  b                                           ; $69be: $88
	ld   h, h                                        ; $69bf: $64
	ld   e, b                                        ; $69c0: $58
	add  a                                           ; $69c1: $87
	adc  c                                           ; $69c2: $89
	sbc  c                                           ; $69c3: $99
	sbc  d                                           ; $69c4: $9a
	xor  d                                           ; $69c5: $aa
	adc  b                                           ; $69c6: $88
	adc  b                                           ; $69c7: $88
	ld   d, d                                        ; $69c8: $52
	ld   c, c                                        ; $69c9: $49
	add  a                                           ; $69ca: $87
	adc  d                                           ; $69cb: $8a
	cp   d                                           ; $69cc: $ba
	cp   d                                           ; $69cd: $ba
	cp   c                                           ; $69ce: $b9
	adc  c                                           ; $69cf: $89
	ld   [hl], a                                     ; $69d0: $77
	ld   hl, $7759                                   ; $69d1: $21 $59 $77
	sbc  h                                           ; $69d4: $9c
	set  1, e                                        ; $69d5: $cb $cb
	cp   b                                           ; $69d7: $b8
	add  a                                           ; $69d8: $87
	ld   h, l                                        ; $69d9: $65
	ld   de, $7898                                   ; $69da: $11 $98 $78
	cp   [hl]                                        ; $69dd: $be
	call z, $97bc                                    ; $69de: $cc $bc $97
	ld   [hl], l                                     ; $69e1: $75
	ld   d, c                                        ; $69e2: $51
	jr   jr_0ca_697c                                 ; $69e3: $18 $97

	adc  h                                           ; $69e5: $8c
	db   $fd                                         ; $69e6: $fd
	db   $eb                                         ; $69e7: $eb
	jp   z, Jump_0ca_4468                            ; $69e8: $ca $68 $44

	ld   de, $8a98                                   ; $69eb: $11 $98 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69ee: $cf
	adc  $bc                                         ; $69ef: $ce $bc
	and  l                                           ; $69f1: $a5
	add  e                                           ; $69f2: $83
	ld   sp, $7919                                   ; $69f3: $31 $19 $79
	sbc  [hl]                                        ; $69f6: $9e
	db   $fd                                         ; $69f7: $fd
	ld   a, [$58da]                                  ; $69f8: $fa $da $58
	inc  hl                                          ; $69fb: $23
	ld   de, $aab7                                   ; $69fc: $11 $b7 $aa
	rst  $38                                         ; $69ff: $ff
	sbc  $ad                                         ; $6a00: $de $ad
	add  [hl]                                        ; $6a02: $86
	ld   [hl], d                                     ; $6a03: $72
	ld   hl, $7b1b                                   ; $6a04: $21 $1b $7b
	xor  a                                           ; $6a07: $af
	db   $ed                                         ; $6a08: $ed
	jp   hl                                          ; $6a09: $e9


	sub  $76                                         ; $6a0a: $d6 $76
	ld   de, $b715                                   ; $6a0c: $11 $15 $b7
	cp   e                                           ; $6a0f: $bb
	db   $fd                                         ; $6a10: $fd
	call c, Call_0ca_589d                            ; $6a11: $dc $9d $58
	ld   b, d                                        ; $6a14: $42
	ld   de, $9a99                                   ; $6a15: $11 $99 $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a18: $cf
	cp   [hl]                                        ; $6a19: $be
	xor  e                                           ; $6a1a: $ab
	or   h                                           ; $6a1b: $b4
	add  e                                           ; $6a1c: $83
	ld   hl, $8a1b                                   ; $6a1d: $21 $1b $8a
	cp   a                                           ; $6a20: $bf
	ei                                               ; $6a21: $fb
	ld   sp, hl                                      ; $6a22: $f9
	jp   z, $2259                                    ; $6a23: $ca $59 $22

	ld   de, $aac7                                   ; $6a26: $11 $c7 $aa
	rst  $38                                         ; $6a29: $ff
	adc  $9c                                         ; $6a2a: $ce $9c
	halt                                             ; $6a2c: $76
	add  c                                           ; $6a2d: $81
	ld   de, $7a3a                                   ; $6a2e: $11 $3a $7a
	cp   a                                           ; $6a31: $bf
	db   $dd                                         ; $6a32: $dd
	ld   [$86d5], a                                  ; $6a33: $ea $d5 $86
	ld   de, $9717                                   ; $6a36: $11 $17 $97
	xor  h                                           ; $6a39: $ac
	db   $fc                                         ; $6a3a: $fc
	db   $db                                         ; $6a3b: $db
	cp   h                                           ; $6a3c: $bc
	ld   e, c                                        ; $6a3d: $59
	ld   b, c                                        ; $6a3e: $41
	ld   de, $99a7                                   ; $6a3f: $11 $a7 $99
	rst  $38                                         ; $6a42: $ff
	cp   [hl]                                        ; $6a43: $be
	cp   h                                           ; $6a44: $bc
	add  [hl]                                        ; $6a45: $86
	sub  d                                           ; $6a46: $92
	ld   de, $6a2a                                   ; $6a47: $11 $2a $6a
	xor  a                                           ; $6a4a: $af
	db   $dd                                         ; $6a4b: $dd
	db   $eb                                         ; $6a4c: $eb
	and  $87                                         ; $6a4d: $e6 $87
	ld   hl, $7617                                   ; $6a4f: $21 $17 $76
	sbc  l                                           ; $6a52: $9d
	db   $fc                                         ; $6a53: $fc
	db   $ec                                         ; $6a54: $ec
	call c, Call_0ca_415a                            ; $6a55: $dc $5a $41
	ld   de, $7895                                   ; $6a58: $11 $95 $78
	cp   $cf                                         ; $6a5b: $fe $cf
	adc  $87                                         ; $6a5d: $ce $87
	add  e                                           ; $6a5f: $83
	ld   de, $5756                                   ; $6a60: $11 $56 $57
	cp   a                                           ; $6a63: $bf
	cp   [hl]                                        ; $6a64: $be
	db   $dd                                         ; $6a65: $dd
	sub  $a6                                         ; $6a66: $d6 $a6
	ld   sp, $4617                                   ; $6a68: $31 $17 $46
	ld   a, l                                        ; $6a6b: $7d
	db   $ec                                         ; $6a6c: $ec
	db   $ec                                         ; $6a6d: $ec
	jp   c, Jump_0ca_5379                            ; $6a6e: $da $79 $53

	ld   [de], a                                     ; $6a71: $12
	ld   [hl], l                                     ; $6a72: $75
	ld   h, a                                        ; $6a73: $67
	call $cdcd                                       ; $6a74: $cd $cd $cd
	add  a                                           ; $6a77: $87
	add  [hl]                                        ; $6a78: $86
	ld   d, c                                        ; $6a79: $51
	ld   b, a                                        ; $6a7a: $47
	ld   h, l                                        ; $6a7b: $65
	ld   l, e                                        ; $6a7c: $6b
	res  7, e                                        ; $6a7d: $cb $bb
	ret                                              ; $6a7f: $c9


	ld   l, b                                        ; $6a80: $68
	ld   [hl], a                                     ; $6a81: $77
	ld   h, [hl]                                     ; $6a82: $66
	ld   h, [hl]                                     ; $6a83: $66
	ld   h, a                                        ; $6a84: $67
	sbc  c                                           ; $6a85: $99
	sbc  d                                           ; $6a86: $9a
	xor  c                                           ; $6a87: $a9
	add  [hl]                                        ; $6a88: $86
	ld   h, a                                        ; $6a89: $67
	cp   d                                           ; $6a8a: $ba
	ld   h, l                                        ; $6a8b: $65
	ld   a, d                                        ; $6a8c: $7a
	add  a                                           ; $6a8d: $87
	ld   a, b                                        ; $6a8e: $78
	sub  a                                           ; $6a8f: $97
	adc  b                                           ; $6a90: $88
	halt                                             ; $6a91: $76
	ld   a, d                                        ; $6a92: $7a
	sub  [hl]                                        ; $6a93: $96
	xor  d                                           ; $6a94: $aa
	ld   a, b                                        ; $6a95: $78
	xor  b                                           ; $6a96: $a8
	ld   h, a                                        ; $6a97: $67
	sbc  b                                           ; $6a98: $98
	ld   h, a                                        ; $6a99: $67
	adc  b                                           ; $6a9a: $88
	ld   a, b                                        ; $6a9b: $78
	sbc  b                                           ; $6a9c: $98
	sbc  b                                           ; $6a9d: $98
	sbc  b                                           ; $6a9e: $98
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	ld   [hl], a                                     ; $6aa1: $77
	ld   [hl], a                                     ; $6aa2: $77
	ld   a, b                                        ; $6aa3: $78
	adc  b                                           ; $6aa4: $88
	adc  b                                           ; $6aa5: $88
	sbc  b                                           ; $6aa6: $98
	sbc  b                                           ; $6aa7: $98
	adc  b                                           ; $6aa8: $88
	adc  b                                           ; $6aa9: $88
	add  a                                           ; $6aaa: $87
	ld   a, b                                        ; $6aab: $78
	add  a                                           ; $6aac: $87
	adc  b                                           ; $6aad: $88
	adc  b                                           ; $6aae: $88
	adc  b                                           ; $6aaf: $88
	sbc  b                                           ; $6ab0: $98
	adc  b                                           ; $6ab1: $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
	adc  b                                           ; $6ab8: $88
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	sbc  b                                           ; $6abc: $98
	adc  b                                           ; $6abd: $88
	adc  b                                           ; $6abe: $88
	adc  b                                           ; $6abf: $88
	adc  b                                           ; $6ac0: $88
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  c                                           ; $6ac3: $89
	adc  b                                           ; $6ac4: $88
	adc  b                                           ; $6ac5: $88
	adc  b                                           ; $6ac6: $88
	adc  b                                           ; $6ac7: $88
	adc  b                                           ; $6ac8: $88
	adc  b                                           ; $6ac9: $88
	adc  b                                           ; $6aca: $88
	adc  b                                           ; $6acb: $88
	adc  b                                           ; $6acc: $88
	adc  b                                           ; $6acd: $88
	adc  b                                           ; $6ace: $88
	adc  b                                           ; $6acf: $88
	adc  b                                           ; $6ad0: $88
	adc  b                                           ; $6ad1: $88
	adc  b                                           ; $6ad2: $88
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	adc  b                                           ; $6ae3: $88
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	adc  b                                           ; $6aee: $88
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	adc  b                                           ; $6afe: $88
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
	adc  b                                           ; $6b0a: $88
	adc  b                                           ; $6b0b: $88
	adc  b                                           ; $6b0c: $88
	adc  b                                           ; $6b0d: $88
	adc  b                                           ; $6b0e: $88
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	adc  b                                           ; $6b11: $88
	adc  b                                           ; $6b12: $88
	adc  b                                           ; $6b13: $88
	adc  b                                           ; $6b14: $88
	adc  b                                           ; $6b15: $88
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	adc  b                                           ; $6b1a: $88
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	adc  b                                           ; $6b25: $88
	adc  b                                           ; $6b26: $88
	adc  b                                           ; $6b27: $88
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	adc  b                                           ; $6b2b: $88
	adc  b                                           ; $6b2c: $88
	adc  b                                           ; $6b2d: $88
	adc  b                                           ; $6b2e: $88
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	adc  b                                           ; $6b4a: $88
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

Jump_0ca_6b8f:
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
	adc  c                                           ; $6bdc: $89
	sbc  c                                           ; $6bdd: $99
	xor  b                                           ; $6bde: $a8
	ld   l, b                                        ; $6bdf: $68
	or   a                                           ; $6be0: $b7
	ld   e, d                                        ; $6be1: $5a
	call nz, $e63c                                   ; $6be2: $c4 $3c $e6
	ld   c, e                                        ; $6be5: $4b
	push bc                                          ; $6be6: $c5
	ld   l, l                                        ; $6be7: $6d
	call nz, $d63b                                   ; $6be8: $c4 $3b $d6
	ld   c, d                                        ; $6beb: $4a
	or   a                                           ; $6bec: $b7
	ld   h, a                                        ; $6bed: $67
	sbc  e                                           ; $6bee: $9b
	sub  l                                           ; $6bef: $95
	adc  e                                           ; $6bf0: $8b
	sub  a                                           ; $6bf1: $97
	adc  b                                           ; $6bf2: $88
	ld   d, a                                        ; $6bf3: $57
	xor  d                                           ; $6bf4: $aa
	ld   h, [hl]                                     ; $6bf5: $66
	and  a                                           ; $6bf6: $a7
	ld   d, a                                        ; $6bf7: $57
	sbc  c                                           ; $6bf8: $99
	sbc  d                                           ; $6bf9: $9a
	add  h                                           ; $6bfa: $84
	ld   c, c                                        ; $6bfb: $49
	and  [hl]                                        ; $6bfc: $a6
	ld   e, b                                        ; $6bfd: $58
	and  a                                           ; $6bfe: $a7
	ld   e, b                                        ; $6bff: $58
	xor  c                                           ; $6c00: $a9
	ld   a, c                                        ; $6c01: $79
	cp   b                                           ; $6c02: $b8
	ld   d, [hl]                                     ; $6c03: $56
	sbc  b                                           ; $6c04: $98
	ld   d, a                                        ; $6c05: $57
	sbc  b                                           ; $6c06: $98
	ld   h, a                                        ; $6c07: $67
	sbc  b                                           ; $6c08: $98
	ld   h, a                                        ; $6c09: $67
	xor  b                                           ; $6c0a: $a8
	ld   l, b                                        ; $6c0b: $68
	adc  c                                           ; $6c0c: $89
	ld   a, b                                        ; $6c0d: $78
	adc  b                                           ; $6c0e: $88
	ld   [hl], a                                     ; $6c0f: $77
	ld   [hl], a                                     ; $6c10: $77
	ld   h, [hl]                                     ; $6c11: $66
	ld   d, l                                        ; $6c12: $55
	ld   h, a                                        ; $6c13: $67
	adc  d                                           ; $6c14: $8a
	call $b9dc                                       ; $6c15: $cd $dc $b9
	ld   a, b                                        ; $6c18: $78
	ld   [hl], a                                     ; $6c19: $77
	ld   b, d                                        ; $6c1a: $42
	ld   de, $6a43                                   ; $6c1b: $11 $43 $6a
	call $ecef                                       ; $6c1e: $cd $ef $ec
	sbc  c                                           ; $6c21: $99
	xor  b                                           ; $6c22: $a8
	ld   [hl], l                                     ; $6c23: $75
	ld   b, c                                        ; $6c24: $41
	ld   de, $6c45                                   ; $6c25: $11 $45 $6c
	rst  $38                                         ; $6c28: $ff
	rst  $28                                         ; $6c29: $ef
	ei                                               ; $6c2a: $fb
	sbc  b                                           ; $6c2b: $98
	cp   c                                           ; $6c2c: $b9
	ld   h, h                                        ; $6c2d: $64
	ld   hl, $4711                                   ; $6c2e: $21 $11 $47
	sbc  [hl]                                        ; $6c31: $9e
	rst  $38                                         ; $6c32: $ff
	rst  $38                                         ; $6c33: $ff
	ld   [$a779], a                                  ; $6c34: $ea $79 $a7
	ld   d, d                                        ; $6c37: $52
	ld   de, $7812                                   ; $6c38: $11 $12 $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c3b: $cf
	rst  $38                                         ; $6c3c: $ff
	cp   $c7                                         ; $6c3d: $fe $c7
	ld   l, d                                        ; $6c3f: $6a
	add  [hl]                                        ; $6c40: $86
	ld   hl, $2411                                   ; $6c41: $21 $11 $24
	sbc  l                                           ; $6c44: $9d
	rst  $38                                         ; $6c45: $ff
	rst  $38                                         ; $6c46: $ff
	db   $eb                                         ; $6c47: $eb
	add  a                                           ; $6c48: $87
	sbc  c                                           ; $6c49: $99
	ld   [hl], e                                     ; $6c4a: $73
	ld   bc, $4811                                   ; $6c4b: $01 $11 $48
	cp   a                                           ; $6c4e: $bf
	rst  $38                                         ; $6c4f: $ff
	db   $fd                                         ; $6c50: $fd
	ret                                              ; $6c51: $c9


	ld   l, b                                        ; $6c52: $68
	cp   c                                           ; $6c53: $b9
	ld   b, c                                        ; $6c54: $41
	ld   de, $7b13                                   ; $6c55: $11 $13 $7b
	rst  $38                                         ; $6c58: $ff
	rst  $38                                         ; $6c59: $ff
	db   $db                                         ; $6c5a: $db
	add  a                                           ; $6c5b: $87
	ld   a, d                                        ; $6c5c: $7a
	sub  [hl]                                        ; $6c5d: $96
	ld   sp, $2711                                   ; $6c5e: $31 $11 $27
	xor  h                                           ; $6c61: $ac
	rst  $38                                         ; $6c62: $ff
	cp   $b9                                         ; $6c63: $fe $b9
	halt                                             ; $6c65: $76
	sbc  e                                           ; $6c66: $9b
	add  l                                           ; $6c67: $85
	ld   de, $4711                                   ; $6c68: $11 $11 $47
	xor  l                                           ; $6c6b: $ad
	rst  $38                                         ; $6c6c: $ff
	db   $fd                                         ; $6c6d: $fd
	ret  z                                           ; $6c6e: $c8

	ld   l, b                                        ; $6c6f: $68
	xor  d                                           ; $6c70: $aa
	ld   [hl], h                                     ; $6c71: $74
	ld   de, $5711                                   ; $6c72: $11 $11 $57
	xor  a                                           ; $6c75: $af
	rst  $38                                         ; $6c76: $ff
	db   $eb                                         ; $6c77: $eb
	cp   b                                           ; $6c78: $b8
	ld   a, c                                        ; $6c79: $79
	cp   d                                           ; $6c7a: $ba
	ld   h, e                                        ; $6c7b: $63
	ld   de, $5811                                   ; $6c7c: $11 $11 $58
	xor  a                                           ; $6c7f: $af
	rst  $38                                         ; $6c80: $ff
	db   $eb                                         ; $6c81: $eb
	and  a                                           ; $6c82: $a7
	ld   a, c                                        ; $6c83: $79
	bit  2, d                                        ; $6c84: $cb $52
	ld   de, $6812                                   ; $6c86: $11 $12 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c89: $cf
	rst  $38                                         ; $6c8a: $ff
	db   $db                                         ; $6c8b: $db
	sub  a                                           ; $6c8c: $97
	adc  d                                           ; $6c8d: $8a
	jp   z, $1152                                    ; $6c8e: $ca $52 $11

	inc  de                                          ; $6c91: $13
	ld   l, d                                        ; $6c92: $6a
	xor  a                                           ; $6c93: $af
	rst  $38                                         ; $6c94: $ff
	jp   c, Jump_0ca_7997                            ; $6c95: $da $97 $79

	ret                                              ; $6c98: $c9


	ld   d, d                                        ; $6c99: $52
	ld   de, $5a13                                   ; $6c9a: $11 $13 $5a
	xor  a                                           ; $6c9d: $af
	rst  $38                                         ; $6c9e: $ff
	ld   [$89a6], a                                  ; $6c9f: $ea $a6 $89
	cp   e                                           ; $6ca2: $bb
	ld   h, h                                        ; $6ca3: $64
	ld   de, $5911                                   ; $6ca4: $11 $11 $59
	cp   h                                           ; $6ca7: $bc
	rst  $38                                         ; $6ca8: $ff
	jp   c, Jump_0ca_68b8                            ; $6ca9: $da $b8 $68

	cp   e                                           ; $6cac: $bb
	ld   h, d                                        ; $6cad: $62
	ld   hl, $5811                                   ; $6cae: $21 $11 $58
	xor  h                                           ; $6cb1: $ac
	rst  $38                                         ; $6cb2: $ff
	ld   a, [$78a9]                                  ; $6cb3: $fa $a9 $78
	xor  h                                           ; $6cb6: $ac
	ld   [hl], e                                     ; $6cb7: $73
	ld   hl, $4811                                   ; $6cb8: $21 $11 $48
	cp   e                                           ; $6cbb: $bb
	rst  $38                                         ; $6cbc: $ff
	ei                                               ; $6cbd: $fb
	sbc  c                                           ; $6cbe: $99
	ld   [hl], a                                     ; $6cbf: $77
	sbc  l                                           ; $6cc0: $9d
	sub  h                                           ; $6cc1: $94
	ld   de, $1611                                   ; $6cc2: $11 $11 $16
	cp   e                                           ; $6cc5: $bb
	rst  $28                                         ; $6cc6: $ef
	db   $fc                                         ; $6cc7: $fc
	ld   a, b                                        ; $6cc8: $78
	sbc  c                                           ; $6cc9: $99
	adc  e                                           ; $6cca: $8b
	rst  ToBoot                                         ; $6ccb: $c7
	ld   hl, $1321                                   ; $6ccc: $21 $21 $13
	xor  [hl]                                        ; $6ccf: $ae
	adc  $ff                                         ; $6cd0: $ce $ff
	adc  b                                           ; $6cd2: $88
	sbc  c                                           ; $6cd3: $99
	ld   a, d                                        ; $6cd4: $7a
	ret  z                                           ; $6cd5: $c8

	ld   hl, $1231                                   ; $6cd6: $21 $31 $12
	ld   a, e                                        ; $6cd9: $7b
	call $b8ff                                       ; $6cda: $cd $ff $b8
	xor  c                                           ; $6cdd: $a9
	add  a                                           ; $6cde: $87
	xor  e                                           ; $6cdf: $ab
	ld   h, d                                        ; $6ce0: $62
	inc  hl                                          ; $6ce1: $23
	ld   de, $cc47                                   ; $6ce2: $11 $47 $cc
	rst  JumpTable                                         ; $6ce5: $df
	ld   sp, hl                                      ; $6ce6: $f9
	ld   a, b                                        ; $6ce7: $78
	sbc  b                                           ; $6ce8: $98
	xor  e                                           ; $6ce9: $ab
	sub  h                                           ; $6cea: $94
	inc  de                                          ; $6ceb: $13
	ld   de, $bc25                                   ; $6cec: $11 $25 $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cef: $cf
	db   $fc                                         ; $6cf0: $fc
	adc  b                                           ; $6cf1: $88
	adc  b                                           ; $6cf2: $88
	ld   a, c                                        ; $6cf3: $79
	ret                                              ; $6cf4: $c9


	ld   [hl-], a                                    ; $6cf5: $32
	ld   hl, $8a15                                   ; $6cf6: $21 $15 $8a
	cp   l                                           ; $6cf9: $bd
	rst  $38                                         ; $6cfa: $ff
	sub  a                                           ; $6cfb: $97
	adc  b                                           ; $6cfc: $88
	ld   l, b                                        ; $6cfd: $68
	bit  2, c                                        ; $6cfe: $cb $51
	ld   b, d                                        ; $6d00: $42
	ld   de, $ca59                                   ; $6d01: $11 $59 $ca
	rst  $28                                         ; $6d04: $ef
	rst  $20                                         ; $6d05: $e7
	adc  c                                           ; $6d06: $89
	ld   [hl], a                                     ; $6d07: $77
	adc  h                                           ; $6d08: $8c
	sub  h                                           ; $6d09: $94
	inc  [hl]                                        ; $6d0a: $34
	ld   de, $ab26                                   ; $6d0b: $11 $26 $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d0e: $cf
	ld   a, [$9689]                                  ; $6d0f: $fa $89 $96
	ld   a, e                                        ; $6d12: $7b
	add  $34                                         ; $6d13: $c6 $34
	ld   hl, $7916                                   ; $6d15: $21 $16 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d18: $cf
	rst  $38                                         ; $6d19: $ff
	adc  c                                           ; $6d1a: $89
	sub  [hl]                                        ; $6d1b: $96
	ld   l, c                                        ; $6d1c: $69
	ret                                              ; $6d1d: $c9


	ld   d, e                                        ; $6d1e: $53
	ld   sp, $5912                                   ; $6d1f: $31 $12 $59
	cp   l                                           ; $6d22: $bd
	rst  $38                                         ; $6d23: $ff
	ret  z                                           ; $6d24: $c8

	xor  b                                           ; $6d25: $a8
	ld   d, [hl]                                     ; $6d26: $56
	xor  e                                           ; $6d27: $ab
	add  h                                           ; $6d28: $84
	ld   b, h                                        ; $6d29: $44
	ld   de, $ab37                                   ; $6d2a: $11 $37 $ab
	rst  JumpTable                                         ; $6d2d: $df
	ei                                               ; $6d2e: $fb
	ld   a, c                                        ; $6d2f: $79
	add  l                                           ; $6d30: $85
	ld   a, e                                        ; $6d31: $7b
	or   a                                           ; $6d32: $b7
	ld   b, h                                        ; $6d33: $44
	ld   de, $bb15                                   ; $6d34: $11 $15 $bb
	xor  a                                           ; $6d37: $af
	rst  $38                                         ; $6d38: $ff
	sbc  b                                           ; $6d39: $98
	and  [hl]                                        ; $6d3a: $a6
	ld   c, c                                        ; $6d3b: $49
	reti                                             ; $6d3c: $d9


	ld   b, e                                        ; $6d3d: $43
	ld   b, c                                        ; $6d3e: $41
	inc  de                                          ; $6d3f: $13
	adc  c                                           ; $6d40: $89
	xor  a                                           ; $6d41: $af
	rst  $38                                         ; $6d42: $ff
	cp   d                                           ; $6d43: $ba
	and  a                                           ; $6d44: $a7
	ld   b, a                                        ; $6d45: $47
	cp   d                                           ; $6d46: $ba
	ld   h, l                                        ; $6d47: $65
	ld   b, c                                        ; $6d48: $41
	ld   de, $bd58                                   ; $6d49: $11 $58 $bd
	rst  $38                                         ; $6d4c: $ff
	db   $db                                         ; $6d4d: $db
	xor  c                                           ; $6d4e: $a9
	ld   d, h                                        ; $6d4f: $54
	sbc  d                                           ; $6d50: $9a
	add  [hl]                                        ; $6d51: $86
	ld   d, h                                        ; $6d52: $54
	ld   de, $8a36                                   ; $6d53: $11 $36 $8a
	rst  $38                                         ; $6d56: $ff
	ei                                               ; $6d57: $fb
	bit  6, h                                        ; $6d58: $cb $74
	ld   a, d                                        ; $6d5a: $7a
	add  [hl]                                        ; $6d5b: $86
	ld   d, l                                        ; $6d5c: $55
	ld   de, $9816                                   ; $6d5d: $11 $16 $98
	rst  JumpTable                                         ; $6d60: $df
	db   $fc                                         ; $6d61: $fc
	cp   l                                           ; $6d62: $bd
	sub  e                                           ; $6d63: $93
	ld   e, c                                        ; $6d64: $59
	sub  [hl]                                        ; $6d65: $96
	ld   h, [hl]                                     ; $6d66: $66
	ld   sp, $6714                                   ; $6d67: $31 $14 $67
	xor  a                                           ; $6d6a: $af
	rst  $38                                         ; $6d6b: $ff
	db   $ec                                         ; $6d6c: $ec
	or   a                                           ; $6d6d: $b7
	ld   b, [hl]                                     ; $6d6e: $46
	adc  b                                           ; $6d6f: $88
	ld   [hl], a                                     ; $6d70: $77
	ld   d, c                                        ; $6d71: $51
	ld   [de], a                                     ; $6d72: $12
	ld   d, a                                        ; $6d73: $57
	adc  e                                           ; $6d74: $8b
	rst  $38                                         ; $6d75: $ff
	db   $dd                                         ; $6d76: $dd
	jp   hl                                          ; $6d77: $e9


	ld   d, l                                        ; $6d78: $55
	sub  a                                           ; $6d79: $97
	ld   h, [hl]                                     ; $6d7a: $66
	ld   h, h                                        ; $6d7b: $64
	ld   de, $7846                                   ; $6d7c: $11 $46 $78
	rst  JumpTable                                         ; $6d7f: $df
	db   $fc                                         ; $6d80: $fc
	call z, $7975                                    ; $6d81: $cc $75 $79
	ld   h, l                                        ; $6d84: $65
	ld   [hl], a                                     ; $6d85: $77
	ld   sp, $7725                                   ; $6d86: $31 $25 $77
	sbc  l                                           ; $6d89: $9d
	sbc  $bc                                         ; $6d8a: $de $bc
	or   a                                           ; $6d8c: $b7
	ld   h, a                                        ; $6d8d: $67
	sub  [hl]                                        ; $6d8e: $96
	ld   h, a                                        ; $6d8f: $67
	ld   [hl], l                                     ; $6d90: $75
	dec  [hl]                                        ; $6d91: $35
	ld   a, b                                        ; $6d92: $78
	adc  c                                           ; $6d93: $89
	xor  c                                           ; $6d94: $a9
	xor  b                                           ; $6d95: $a8
	xor  b                                           ; $6d96: $a8
	ld   [hl], a                                     ; $6d97: $77
	ld   a, c                                        ; $6d98: $79
	adc  b                                           ; $6d99: $88
	sbc  b                                           ; $6d9a: $98
	add  a                                           ; $6d9b: $87
	adc  b                                           ; $6d9c: $88
	adc  c                                           ; $6d9d: $89
	adc  c                                           ; $6d9e: $89
	ld   a, b                                        ; $6d9f: $78
	add  a                                           ; $6da0: $87
	ld   [hl], a                                     ; $6da1: $77
	ld   [hl], a                                     ; $6da2: $77
	adc  c                                           ; $6da3: $89
	sbc  c                                           ; $6da4: $99
	sbc  d                                           ; $6da5: $9a
	sbc  b                                           ; $6da6: $98
	sbc  b                                           ; $6da7: $98
	sbc  b                                           ; $6da8: $98
	sbc  b                                           ; $6da9: $98
	ld   [hl], a                                     ; $6daa: $77
	ld   [hl], a                                     ; $6dab: $77
	ld   h, a                                        ; $6dac: $67
	ld   [hl], a                                     ; $6dad: $77
	adc  b                                           ; $6dae: $88
	adc  c                                           ; $6daf: $89
	xor  c                                           ; $6db0: $a9
	sbc  c                                           ; $6db1: $99
	sbc  c                                           ; $6db2: $99
	sbc  c                                           ; $6db3: $99
	add  a                                           ; $6db4: $87
	add  a                                           ; $6db5: $87
	ld   h, [hl]                                     ; $6db6: $66
	ld   h, a                                        ; $6db7: $67
	ld   [hl], a                                     ; $6db8: $77
	ld   a, b                                        ; $6db9: $78
	sbc  c                                           ; $6dba: $99
	sbc  c                                           ; $6dbb: $99
	xor  d                                           ; $6dbc: $aa
	xor  c                                           ; $6dbd: $a9
	sbc  c                                           ; $6dbe: $99
	adc  b                                           ; $6dbf: $88
	ld   [hl], a                                     ; $6dc0: $77
	ld   [hl], a                                     ; $6dc1: $77
	ld   h, a                                        ; $6dc2: $67
	ld   [hl], a                                     ; $6dc3: $77
	ld   a, b                                        ; $6dc4: $78
	adc  c                                           ; $6dc5: $89
	sbc  c                                           ; $6dc6: $99
	sbc  c                                           ; $6dc7: $99
	xor  c                                           ; $6dc8: $a9
	adc  b                                           ; $6dc9: $88
	add  a                                           ; $6dca: $87
	ld   [hl], a                                     ; $6dcb: $77
	ld   [hl], a                                     ; $6dcc: $77
	ld   h, a                                        ; $6dcd: $67
	ld   [hl], a                                     ; $6dce: $77
	ld   a, b                                        ; $6dcf: $78
	adc  b                                           ; $6dd0: $88
	adc  c                                           ; $6dd1: $89
	sbc  c                                           ; $6dd2: $99
	sbc  c                                           ; $6dd3: $99
	sbc  c                                           ; $6dd4: $99
	adc  b                                           ; $6dd5: $88
	ld   [hl], a                                     ; $6dd6: $77
	ld   [hl], a                                     ; $6dd7: $77
	ld   [hl], a                                     ; $6dd8: $77
	ld   [hl], a                                     ; $6dd9: $77
	ld   [hl], a                                     ; $6dda: $77
	adc  b                                           ; $6ddb: $88
	adc  c                                           ; $6ddc: $89
	sbc  c                                           ; $6ddd: $99
	sbc  c                                           ; $6dde: $99
	sbc  b                                           ; $6ddf: $98
	sbc  b                                           ; $6de0: $98
	adc  b                                           ; $6de1: $88
	ld   h, a                                        ; $6de2: $67
	sub  [hl]                                        ; $6de3: $96
	ld   [hl], a                                     ; $6de4: $77
	ld   h, a                                        ; $6de5: $67
	sbc  b                                           ; $6de6: $98
	adc  c                                           ; $6de7: $89
	adc  c                                           ; $6de8: $89
	sbc  c                                           ; $6de9: $99
	sbc  d                                           ; $6dea: $9a
	sbc  c                                           ; $6deb: $99
	sub  a                                           ; $6dec: $97
	ld   [hl], a                                     ; $6ded: $77
	ld   [hl], a                                     ; $6dee: $77
	halt                                             ; $6def: $76
	ld   l, b                                        ; $6df0: $68
	add  a                                           ; $6df1: $87
	adc  c                                           ; $6df2: $89
	sbc  b                                           ; $6df3: $98
	sbc  c                                           ; $6df4: $99
	sbc  c                                           ; $6df5: $99
	sbc  c                                           ; $6df6: $99
	sub  a                                           ; $6df7: $97
	add  a                                           ; $6df8: $87
	ld   h, a                                        ; $6df9: $67
	add  [hl]                                        ; $6dfa: $86
	ld   [hl], a                                     ; $6dfb: $77
	ld   [hl], a                                     ; $6dfc: $77
	adc  b                                           ; $6dfd: $88
	adc  b                                           ; $6dfe: $88
	adc  c                                           ; $6dff: $89
	sbc  d                                           ; $6e00: $9a
	xor  c                                           ; $6e01: $a9
	sbc  c                                           ; $6e02: $99
	ld   [hl], a                                     ; $6e03: $77
	halt                                             ; $6e04: $76
	ld   a, b                                        ; $6e05: $78
	ld   h, [hl]                                     ; $6e06: $66
	ld   a, c                                        ; $6e07: $79
	adc  b                                           ; $6e08: $88
	sbc  b                                           ; $6e09: $98
	sbc  c                                           ; $6e0a: $99
	sbc  c                                           ; $6e0b: $99
	sbc  c                                           ; $6e0c: $99
	sbc  c                                           ; $6e0d: $99
	add  a                                           ; $6e0e: $87
	halt                                             ; $6e0f: $76
	ld   h, a                                        ; $6e10: $67
	halt                                             ; $6e11: $76
	ld   a, b                                        ; $6e12: $78
	sbc  b                                           ; $6e13: $98
	sbc  c                                           ; $6e14: $99
	sbc  c                                           ; $6e15: $99
	sbc  d                                           ; $6e16: $9a
	xor  b                                           ; $6e17: $a8
	sbc  b                                           ; $6e18: $98
	halt                                             ; $6e19: $76
	ld   d, [hl]                                     ; $6e1a: $56
	ld   h, a                                        ; $6e1b: $67
	ld   [hl], a                                     ; $6e1c: $77
	adc  c                                           ; $6e1d: $89
	xor  c                                           ; $6e1e: $a9
	cp   e                                           ; $6e1f: $bb
	sbc  c                                           ; $6e20: $99
	adc  c                                           ; $6e21: $89
	sbc  c                                           ; $6e22: $99
	add  a                                           ; $6e23: $87
	ld   h, h                                        ; $6e24: $64
	ld   b, h                                        ; $6e25: $44
	ld   d, a                                        ; $6e26: $57
	ld   l, b                                        ; $6e27: $68
	xor  e                                           ; $6e28: $ab
	cp   d                                           ; $6e29: $ba
	jp   z, $9999                                    ; $6e2a: $ca $99 $99

	ld   a, b                                        ; $6e2d: $78
	ld   h, [hl]                                     ; $6e2e: $66
	ld   b, d                                        ; $6e2f: $42
	inc  [hl]                                        ; $6e30: $34
	add  a                                           ; $6e31: $87
	adc  d                                           ; $6e32: $8a
	call z, $babd                                    ; $6e33: $cc $bd $ba
	add  a                                           ; $6e36: $87
	sub  a                                           ; $6e37: $97
	ld   [hl], l                                     ; $6e38: $75
	ld   h, e                                        ; $6e39: $63
	ld   [de], a                                     ; $6e3a: $12
	ld   c, c                                        ; $6e3b: $49
	ld   a, b                                        ; $6e3c: $78
	adc  $db                                         ; $6e3d: $ce $db
	db   $ec                                         ; $6e3f: $ec
	and  a                                           ; $6e40: $a7
	ld   a, c                                        ; $6e41: $79
	ld   h, [hl]                                     ; $6e42: $66
	ld   d, l                                        ; $6e43: $55
	ld   hl, $9825                                   ; $6e44: $21 $25 $98
	xor  l                                           ; $6e47: $ad
	db   $ed                                         ; $6e48: $ed
	db   $dd                                         ; $6e49: $dd
	ret  z                                           ; $6e4a: $c8

	ld   h, a                                        ; $6e4b: $67
	sub  [hl]                                        ; $6e4c: $96
	ld   d, h                                        ; $6e4d: $54
	ld   b, c                                        ; $6e4e: $41
	inc  de                                          ; $6e4f: $13
	adc  c                                           ; $6e50: $89
	sbc  l                                           ; $6e51: $9d
	rst  $38                                         ; $6e52: $ff
	xor  $d9                                         ; $6e53: $ee $d9
	ld   [hl], l                                     ; $6e55: $75
	add  [hl]                                        ; $6e56: $86
	ld   d, h                                        ; $6e57: $54
	ld   b, c                                        ; $6e58: $41
	ld   de, $9b6a                                   ; $6e59: $11 $6a $9b
	rst  $38                                         ; $6e5c: $ff
	db   $ed                                         ; $6e5d: $ed
	jp   c, Jump_0ca_7784                            ; $6e5e: $da $84 $77

	ld   d, h                                        ; $6e61: $54
	inc  sp                                          ; $6e62: $33
	ld   de, $9a49                                   ; $6e63: $11 $49 $9a
	rst  $38                                         ; $6e66: $ff
	db   $fc                                         ; $6e67: $fc
	db   $eb                                         ; $6e68: $eb
	ld   [hl], l                                     ; $6e69: $75
	ld   e, b                                        ; $6e6a: $58
	ld   d, h                                        ; $6e6b: $54
	ld   b, h                                        ; $6e6c: $44
	ld   de, $a949                                   ; $6e6d: $11 $49 $a9
	rst  $28                                         ; $6e70: $ef
	cp   $cc                                         ; $6e71: $fe $cc
	sub  l                                           ; $6e73: $95
	ld   e, b                                        ; $6e74: $58
	ld   h, l                                        ; $6e75: $65
	ld   b, h                                        ; $6e76: $44
	ld   bc, $a918                                   ; $6e77: $01 $18 $a9
	rst  $28                                         ; $6e7a: $ef
	cp   $cc                                         ; $6e7b: $fe $cc
	sub  l                                           ; $6e7d: $95
	ld   b, a                                        ; $6e7e: $47
	ld   [hl], l                                     ; $6e7f: $75
	ld   b, h                                        ; $6e80: $44
	ld   de, $cb16                                   ; $6e81: $11 $16 $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e84: $cf
	rst  $38                                         ; $6e85: $ff
	cp   l                                           ; $6e86: $bd
	and  l                                           ; $6e87: $a5
	ld   [hl], $96                                   ; $6e88: $36 $96
	ld   b, l                                        ; $6e8a: $45
	ld   sp, $ba16                                   ; $6e8b: $31 $16 $ba
	cp   a                                           ; $6e8e: $bf
	rst  $38                                         ; $6e8f: $ff
	db   $dd                                         ; $6e90: $dd
	and  [hl]                                        ; $6e91: $a6
	ld   [hl], $86                                   ; $6e92: $36 $86
	ld   d, h                                        ; $6e94: $54
	ld   hl, $bc15                                   ; $6e95: $21 $15 $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e98: $cf
	rst  $38                                         ; $6e99: $ff
	res  2, l                                        ; $6e9a: $cb $95
	dec  [hl]                                        ; $6e9c: $35
	add  a                                           ; $6e9d: $87
	ld   h, l                                        ; $6e9e: $65
	ld   sp, $9c13                                   ; $6e9f: $31 $13 $9c

jr_0ca_6ea2:
	cp   a                                           ; $6ea2: $bf
	rst  $38                                         ; $6ea3: $ff
	db   $db                                         ; $6ea4: $db
	or   [hl]                                        ; $6ea5: $b6
	dec  [hl]                                        ; $6ea6: $35
	adc  b                                           ; $6ea7: $88
	ld   h, l                                        ; $6ea8: $65
	ld   b, c                                        ; $6ea9: $41
	ld   de, $cf9c                                   ; $6eaa: $11 $9c $cf
	rst  $38                                         ; $6ead: $ff
	call c, Call_0ca_44a7                            ; $6eae: $dc $a7 $44
	sbc  b                                           ; $6eb1: $98
	ld   h, l                                        ; $6eb2: $65
	ld   sp, $7c11                                   ; $6eb3: $31 $11 $7c
	adc  $ff                                         ; $6eb6: $ce $ff
	call c, $35a7                                    ; $6eb8: $dc $a7 $35
	adc  c                                           ; $6ebb: $89
	halt                                             ; $6ebc: $76
	ld   b, c                                        ; $6ebd: $41
	ld   de, $df6c                                   ; $6ebe: $11 $6c $df
	rst  $38                                         ; $6ec1: $ff
	ld   [$4497], a                                  ; $6ec2: $ea $97 $44
	ld   a, d                                        ; $6ec5: $7a
	add  [hl]                                        ; $6ec6: $86
	ld   b, c                                        ; $6ec7: $41
	ld   de, $cd5b                                   ; $6ec8: $11 $5b $cd
	rst  $38                                         ; $6ecb: $ff
	db   $fc                                         ; $6ecc: $fc
	sbc  c                                           ; $6ecd: $99
	ld   b, e                                        ; $6ece: $43
	ld   a, d                                        ; $6ecf: $7a
	sub  [hl]                                        ; $6ed0: $96
	ld   d, d                                        ; $6ed1: $52
	ld   de, $de4a                                   ; $6ed2: $11 $4a $de
	rst  $38                                         ; $6ed5: $ff
	db   $fd                                         ; $6ed6: $fd
	xor  b                                           ; $6ed7: $a8
	ld   b, e                                        ; $6ed8: $43
	ld   l, c                                        ; $6ed9: $69
	and  a                                           ; $6eda: $a7
	ld   h, e                                        ; $6edb: $63
	ld   de, $dd19                                   ; $6edc: $11 $19 $dd
	rst  $38                                         ; $6edf: $ff
	db   $fc                                         ; $6ee0: $fc
	xor  c                                           ; $6ee1: $a9
	ld   h, d                                        ; $6ee2: $62
	ld   l, d                                        ; $6ee3: $6a
	and  a                                           ; $6ee4: $a7
	ld   h, h                                        ; $6ee5: $64
	ld   de, $cd19                                   ; $6ee6: $11 $19 $cd
	rst  $38                                         ; $6ee9: $ff
	db   $fd                                         ; $6eea: $fd
	cp   b                                           ; $6eeb: $b8
	ld   h, d                                        ; $6eec: $62
	ld   c, c                                        ; $6eed: $49
	xor  b                                           ; $6eee: $a8
	ld   [hl], l                                     ; $6eef: $75
	ld   de, $dc16                                   ; $6ef0: $11 $16 $dc
	rst  $28                                         ; $6ef3: $ef
	cp   $c9                                         ; $6ef4: $fe $c9
	ld   [hl], e                                     ; $6ef6: $73
	jr   c, jr_0ca_6ea2                              ; $6ef7: $38 $a9

	ld   h, [hl]                                     ; $6ef9: $66
	ld   hl, wTitleScreenPressStartAnimCounter                                   ; $6efa: $21 $14 $cc
	rst  JumpTable                                         ; $6efd: $df
	db   $fd                                         ; $6efe: $fd
	res  2, h                                        ; $6eff: $cb $94
	daa                                              ; $6f01: $27
	sbc  c                                           ; $6f02: $99
	ld   h, a                                        ; $6f03: $67
	ld   sp, wTitleScreenGirlHairAnimIdx                                   ; $6f04: $31 $12 $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f07: $cf
	rst  $38                                         ; $6f08: $ff
	cp   e                                           ; $6f09: $bb
	sub  l                                           ; $6f0a: $95
	daa                                              ; $6f0b: $27
	xor  c                                           ; $6f0c: $a9
	ld   [hl], a                                     ; $6f0d: $77
	ld   d, c                                        ; $6f0e: $51
	ld   de, $cfbc                                   ; $6f0f: $11 $bc $cf
	rst  $38                                         ; $6f12: $ff
	cp   l                                           ; $6f13: $bd
	and  l                                           ; $6f14: $a5
	ld   d, $b8                                      ; $6f15: $16 $b8
	ld   a, b                                        ; $6f17: $78
	ld   d, c                                        ; $6f18: $51
	ld   de, $afbb                                   ; $6f19: $11 $bb $af
	rst  $38                                         ; $6f1c: $ff
	cp   [hl]                                        ; $6f1d: $be
	or   l                                           ; $6f1e: $b5
	rla                                              ; $6f1f: $17
	and  a                                           ; $6f20: $a7
	ld   h, a                                        ; $6f21: $67
	ld   h, c                                        ; $6f22: $61
	ld   de, $afbb                                   ; $6f23: $11 $bb $af
	rst  $38                                         ; $6f26: $ff
	xor  a                                           ; $6f27: $af
	push de                                          ; $6f28: $d5
	ld   d, $a6                                      ; $6f29: $16 $a6
	ld   l, c                                        ; $6f2b: $69
	ld   [hl], c                                     ; $6f2c: $71
	ld   de, $9ebb                                   ; $6f2d: $11 $bb $9e
	rst  $38                                         ; $6f30: $ff
	xor  [hl]                                        ; $6f31: $ae
	and  $25                                         ; $6f32: $e6 $25
	or   [hl]                                        ; $6f34: $b6
	ld   h, a                                        ; $6f35: $67
	ld   [hl], c                                     ; $6f36: $71
	ld   de, $8ebc                                   ; $6f37: $11 $bc $8e
	rst  $38                                         ; $6f3a: $ff
	sbc  [hl]                                        ; $6f3b: $9e
	rst  $30                                         ; $6f3c: $f7
	dec  h                                           ; $6f3d: $25
	or   l                                           ; $6f3e: $b5
	ld   b, a                                        ; $6f3f: $47
	sub  c                                           ; $6f40: $91
	ld   de, $7ebc                                   ; $6f41: $11 $bc $7e
	rst  $38                                         ; $6f44: $ff
	adc  a                                           ; $6f45: $8f
	rst  $30                                         ; $6f46: $f7
	dec  h                                           ; $6f47: $25
	or   l                                           ; $6f48: $b5
	ld   c, b                                        ; $6f49: $48
	add  c                                           ; $6f4a: $81
	ld   de, $6fca                                   ; $6f4b: $11 $ca $6f
	rst  $38                                         ; $6f4e: $ff
	adc  a                                           ; $6f4f: $8f
	rst  $30                                         ; $6f50: $f7
	ld   h, $c4                                      ; $6f51: $26 $c4
	ld   c, b                                        ; $6f53: $48
	add  c                                           ; $6f54: $81
	ld   [de], a                                     ; $6f55: $12
	reti                                             ; $6f56: $d9


	ld   l, a                                        ; $6f57: $6f
	db   $fd                                         ; $6f58: $fd
	adc  a                                           ; $6f59: $8f
	or   $28                                         ; $6f5a: $f6 $28
	jp   Jump_0ca_7148                               ; $6f5c: $c3 $48 $71


	inc  de                                          ; $6f5f: $13
	ret  c                                           ; $6f60: $d8

	ld   l, a                                        ; $6f61: $6f
	db   $fd                                         ; $6f62: $fd
	adc  a                                           ; $6f63: $8f
	push af                                          ; $6f64: $f5
	add  hl, sp                                      ; $6f65: $39
	or   d                                           ; $6f66: $b2
	ld   c, c                                        ; $6f67: $49
	ld   [hl], c                                     ; $6f68: $71
	inc  de                                          ; $6f69: $13
	rst  ToBoot                                         ; $6f6a: $c7
	ld   l, a                                        ; $6f6b: $6f
	db   $fc                                         ; $6f6c: $fc
	sbc  a                                           ; $6f6d: $9f
	or   $4a                                         ; $6f6e: $f6 $4a
	or   d                                           ; $6f70: $b2
	ld   e, c                                        ; $6f71: $59
	ld   [hl], c                                     ; $6f72: $71
	inc  de                                          ; $6f73: $13
	or   [hl]                                        ; $6f74: $b6
	ld   l, a                                        ; $6f75: $6f
	ei                                               ; $6f76: $fb
	sbc  a                                           ; $6f77: $9f
	and  $5a                                         ; $6f78: $e6 $5a
	or   c                                           ; $6f7a: $b1
	ld   e, b                                        ; $6f7b: $58
	ld   h, c                                        ; $6f7c: $61
	dec  d                                           ; $6f7d: $15
	or   l                                           ; $6f7e: $b5
	ld   a, a                                        ; $6f7f: $7f
	ei                                               ; $6f80: $fb
	sbc  a                                           ; $6f81: $9f
	and  $6b                                         ; $6f82: $e6 $6b
	sub  c                                           ; $6f84: $91
	ld   l, b                                        ; $6f85: $68
	ld   d, c                                        ; $6f86: $51
	ld   d, $a4                                      ; $6f87: $16 $a4
	adc  a                                           ; $6f89: $8f
	ld   sp, hl                                      ; $6f8a: $f9
	xor  a                                           ; $6f8b: $af
	rst  ToBoot                                         ; $6f8c: $c7
	ld   a, h                                        ; $6f8d: $7c
	sub  c                                           ; $6f8e: $91
	ld   [hl], a                                     ; $6f8f: $77
	ld   sp, $9218                                   ; $6f90: $31 $18 $92
	sbc  a                                           ; $6f93: $9f
	ld   hl, sp-$11                                  ; $6f94: $f8 $ef
	ret  z                                           ; $6f96: $c8

	sbc  [hl]                                        ; $6f97: $9e
	ld   h, d                                        ; $6f98: $62
	ld   [hl], a                                     ; $6f99: $77
	ld   de, $6219                                   ; $6f9a: $11 $19 $62
	cp   a                                           ; $6f9d: $bf
	ret  z                                           ; $6f9e: $c8

	rst  $38                                         ; $6f9f: $ff
	xor  b                                           ; $6fa0: $a8
	cp   [hl]                                        ; $6fa1: $be
	ld   d, h                                        ; $6fa2: $54
	ld   [hl], a                                     ; $6fa3: $77
	ld   de, $4339                                   ; $6fa4: $11 $39 $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fa7: $cf
	cp   b                                           ; $6fa8: $b8
	rst  $38                                         ; $6fa9: $ff
	xor  b                                           ; $6faa: $a8
	db   $dd                                         ; $6fab: $dd
	ld   d, l                                        ; $6fac: $55
	add  a                                           ; $6fad: $87
	ld   de, $4458                                   ; $6fae: $11 $58 $44
	xor  h                                           ; $6fb1: $ac
	add  a                                           ; $6fb2: $87
	db   $fd                                         ; $6fb3: $fd
	xor  b                                           ; $6fb4: $a8
	call c, $a866                                    ; $6fb5: $dc $66 $a8
	ld   [hl+], a                                    ; $6fb8: $22
	ld   e, d                                        ; $6fb9: $5a
	ld   d, h                                        ; $6fba: $54
	sbc  c                                           ; $6fbb: $99
	add  [hl]                                        ; $6fbc: $86
	xor  e                                           ; $6fbd: $ab
	and  a                                           ; $6fbe: $a7
	xor  h                                           ; $6fbf: $ac
	add  a                                           ; $6fc0: $87
	sbc  e                                           ; $6fc1: $9b
	ld   h, l                                        ; $6fc2: $65
	ld   l, b                                        ; $6fc3: $68
	sub  [hl]                                        ; $6fc4: $96
	ld   a, b                                        ; $6fc5: $78
	add  a                                           ; $6fc6: $87
	ld   l, b                                        ; $6fc7: $68
	add  a                                           ; $6fc8: $87
	ld   l, b                                        ; $6fc9: $68
	sub  a                                           ; $6fca: $97
	adc  c                                           ; $6fcb: $89
	xor  b                                           ; $6fcc: $a8
	adc  c                                           ; $6fcd: $89
	adc  d                                           ; $6fce: $8a
	xor  c                                           ; $6fcf: $a9
	adc  b                                           ; $6fd0: $88
	ld   [hl], a                                     ; $6fd1: $77
	ld   h, a                                        ; $6fd2: $67
	ld   h, [hl]                                     ; $6fd3: $66
	ld   h, a                                        ; $6fd4: $67
	ld   [hl], a                                     ; $6fd5: $77
	adc  c                                           ; $6fd6: $89
	sbc  b                                           ; $6fd7: $98
	sbc  d                                           ; $6fd8: $9a
	xor  c                                           ; $6fd9: $a9
	xor  c                                           ; $6fda: $a9
	sbc  c                                           ; $6fdb: $99
	add  a                                           ; $6fdc: $87
	ld   h, [hl]                                     ; $6fdd: $66
	ld   h, [hl]                                     ; $6fde: $66
	ld   h, [hl]                                     ; $6fdf: $66
	ld   [hl], a                                     ; $6fe0: $77
	ld   a, b                                        ; $6fe1: $78
	adc  c                                           ; $6fe2: $89
	sbc  d                                           ; $6fe3: $9a
	xor  c                                           ; $6fe4: $a9
	xor  c                                           ; $6fe5: $a9
	xor  b                                           ; $6fe6: $a8
	adc  b                                           ; $6fe7: $88
	ld   [hl], a                                     ; $6fe8: $77
	ld   h, [hl]                                     ; $6fe9: $66
	ld   h, [hl]                                     ; $6fea: $66
	ld   h, a                                        ; $6feb: $67
	ld   [hl], a                                     ; $6fec: $77
	adc  b                                           ; $6fed: $88
	sbc  c                                           ; $6fee: $99
	sbc  c                                           ; $6fef: $99
	xor  c                                           ; $6ff0: $a9
	sbc  d                                           ; $6ff1: $9a
	sbc  c                                           ; $6ff2: $99
	adc  b                                           ; $6ff3: $88
	halt                                             ; $6ff4: $76
	ld   h, [hl]                                     ; $6ff5: $66
	ld   h, [hl]                                     ; $6ff6: $66
	ld   h, a                                        ; $6ff7: $67
	ld   [hl], a                                     ; $6ff8: $77
	adc  c                                           ; $6ff9: $89
	adc  c                                           ; $6ffa: $89
	sbc  c                                           ; $6ffb: $99
	xor  c                                           ; $6ffc: $a9
	sbc  c                                           ; $6ffd: $99
	sbc  b                                           ; $6ffe: $98
	adc  b                                           ; $6fff: $88
	ld   [hl], a                                     ; $7000: $77
	ld   [hl], a                                     ; $7001: $77
	ld   [hl], a                                     ; $7002: $77
	ld   [hl], a                                     ; $7003: $77
	ld   [hl], a                                     ; $7004: $77
	ld   a, b                                        ; $7005: $78
	sbc  b                                           ; $7006: $98
	sbc  c                                           ; $7007: $99
	sbc  c                                           ; $7008: $99
	sbc  c                                           ; $7009: $99
	adc  c                                           ; $700a: $89
	adc  b                                           ; $700b: $88
	ld   [hl], a                                     ; $700c: $77
	ld   [hl], a                                     ; $700d: $77
	halt                                             ; $700e: $76
	ld   [hl], a                                     ; $700f: $77
	ld   a, b                                        ; $7010: $78
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	sbc  c                                           ; $7013: $99
	sbc  c                                           ; $7014: $99
	sbc  c                                           ; $7015: $99
	sbc  b                                           ; $7016: $98
	add  a                                           ; $7017: $87
	ld   [hl], a                                     ; $7018: $77
	ld   [hl], a                                     ; $7019: $77
	ld   [hl], a                                     ; $701a: $77
	adc  b                                           ; $701b: $88
	adc  c                                           ; $701c: $89
	sbc  c                                           ; $701d: $99
	sbc  c                                           ; $701e: $99
	sbc  c                                           ; $701f: $99
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	ld   [hl], a                                     ; $7022: $77
	ld   [hl], a                                     ; $7023: $77
	ld   [hl], a                                     ; $7024: $77
	adc  b                                           ; $7025: $88
	adc  c                                           ; $7026: $89
	adc  c                                           ; $7027: $89
	adc  b                                           ; $7028: $88
	sbc  b                                           ; $7029: $98
	sbc  b                                           ; $702a: $98
	add  a                                           ; $702b: $87
	ld   [hl], a                                     ; $702c: $77
	ld   [hl], a                                     ; $702d: $77
	ld   [hl], a                                     ; $702e: $77
	adc  c                                           ; $702f: $89
	sbc  c                                           ; $7030: $99
	sbc  c                                           ; $7031: $99
	adc  c                                           ; $7032: $89
	sbc  c                                           ; $7033: $99
	adc  b                                           ; $7034: $88
	ld   [hl], a                                     ; $7035: $77
	ld   [hl], a                                     ; $7036: $77
	ld   [hl], a                                     ; $7037: $77
	ld   a, b                                        ; $7038: $78
	sbc  b                                           ; $7039: $98
	adc  b                                           ; $703a: $88
	sbc  b                                           ; $703b: $98
	sbc  b                                           ; $703c: $98
	adc  b                                           ; $703d: $88
	add  a                                           ; $703e: $87
	ld   [hl], a                                     ; $703f: $77
	ld   [hl], a                                     ; $7040: $77
	ld   a, b                                        ; $7041: $78
	adc  b                                           ; $7042: $88
	sbc  b                                           ; $7043: $98
	sbc  b                                           ; $7044: $98
	adc  b                                           ; $7045: $88
	sbc  b                                           ; $7046: $98
	adc  b                                           ; $7047: $88
	add  a                                           ; $7048: $87
	add  a                                           ; $7049: $87
	ld   [hl], a                                     ; $704a: $77
	adc  b                                           ; $704b: $88
	adc  b                                           ; $704c: $88
	adc  c                                           ; $704d: $89
	sbc  c                                           ; $704e: $99
	sbc  c                                           ; $704f: $99
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

Jump_0ca_7148:
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
	ld   a, c                                        ; $7288: $79
	add  a                                           ; $7289: $87
	sbc  b                                           ; $728a: $98
	adc  b                                           ; $728b: $88
	adc  c                                           ; $728c: $89
	adc  b                                           ; $728d: $88
	sbc  b                                           ; $728e: $98
	ld   [hl], a                                     ; $728f: $77
	sbc  b                                           ; $7290: $98
	ld   a, b                                        ; $7291: $78
	adc  b                                           ; $7292: $88
	ld   a, b                                        ; $7293: $78
	sub  a                                           ; $7294: $97
	adc  c                                           ; $7295: $89
	adc  c                                           ; $7296: $89
	ld   [hl], a                                     ; $7297: $77
	sbc  c                                           ; $7298: $99
	ld   l, b                                        ; $7299: $68
	add  a                                           ; $729a: $87
	add  a                                           ; $729b: $87
	sub  a                                           ; $729c: $97
	ld   a, c                                        ; $729d: $79
	adc  c                                           ; $729e: $89
	adc  b                                           ; $729f: $88
	halt                                             ; $72a0: $76
	or   a                                           ; $72a1: $b7
	ld   e, d                                        ; $72a2: $5a
	ld   [hl], a                                     ; $72a3: $77
	ld   a, b                                        ; $72a4: $78
	and  l                                           ; $72a5: $a5
	sbc  c                                           ; $72a6: $99
	ld   a, d                                        ; $72a7: $7a
	sbc  d                                           ; $72a8: $9a
	ld   d, [hl]                                     ; $72a9: $56
	push de                                          ; $72aa: $d5
	ld   e, e                                        ; $72ab: $5b
	ld   h, a                                        ; $72ac: $67
	ld   e, e                                        ; $72ad: $5b
	add  e                                           ; $72ae: $83
	jp   z, $bb8a                                    ; $72af: $ca $8a $bb

	ld   b, [hl]                                     ; $72b2: $46
	db   $e3                                         ; $72b3: $e3
	ld   c, h                                        ; $72b4: $4c
	ld   h, l                                        ; $72b5: $65
	ld   e, e                                        ; $72b6: $5b
	sub  d                                           ; $72b7: $92
	bit  7, e                                        ; $72b8: $cb $7b
	bit  0, l                                        ; $72ba: $cb $45
	db   $e3                                         ; $72bc: $e3
	dec  e                                           ; $72bd: $1d
	ld   d, e                                        ; $72be: $53
	ld   c, d                                        ; $72bf: $4a
	and  c                                           ; $72c0: $a1
	db   $ed                                         ; $72c1: $ed
	ld   l, l                                        ; $72c2: $6d
	db   $ed                                         ; $72c3: $ed
	ld   d, h                                        ; $72c4: $54
	push hl                                          ; $72c5: $e5
	inc  e                                           ; $72c6: $1c
	ld   h, c                                        ; $72c7: $61
	ld   c, b                                        ; $72c8: $48
	or   c                                           ; $72c9: $b1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ca: $cf
	ld   e, l                                        ; $72cb: $5d
	db   $fd                                         ; $72cc: $fd
	ld   h, e                                        ; $72cd: $63
	ret  c                                           ; $72ce: $d8

	add  hl, de                                      ; $72cf: $19
	and  c                                           ; $72d0: $a1
	ld   d, a                                        ; $72d1: $57
	jp   nc, Jump_0ca_6b8f                           ; $72d2: $d2 $8f $6b

	db   $fd                                         ; $72d5: $fd
	add  e                                           ; $72d6: $83
	sbc  e                                           ; $72d7: $9b
	dec  d                                           ; $72d8: $15
	pop  bc                                          ; $72d9: $c1
	ld   b, a                                        ; $72da: $47
	sub  $5f                                         ; $72db: $d6 $5f
	adc  d                                           ; $72dd: $8a
	db   $fd                                         ; $72de: $fd
	add  e                                           ; $72df: $83
	ld   e, e                                        ; $72e0: $5b
	ld   de, $48e1                                   ; $72e1: $11 $e1 $48
	jp   c, $a84f                                    ; $72e4: $da $4f $a8

	db   $fc                                         ; $72e7: $fc
	ld   [hl], c                                     ; $72e8: $71
	inc  a                                           ; $72e9: $3c
	ld   de, $5af1                                   ; $72ea: $11 $f1 $5a
	db   $eb                                         ; $72ed: $eb
	ld   c, a                                        ; $72ee: $4f
	and  [hl]                                        ; $72ef: $a6
	ld   a, [$3c61]                                  ; $72f0: $fa $61 $3c
	ld   de, $7bf1                                   ; $72f3: $11 $f1 $7b
	ei                                               ; $72f6: $fb
	ld   c, a                                        ; $72f7: $4f
	halt                                             ; $72f8: $76
	ld   hl, sp+$41                                  ; $72f9: $f8 $41
	ld   c, h                                        ; $72fb: $4c
	ld   d, $f1                                      ; $72fc: $16 $f1
	cp   e                                           ; $72fe: $bb
	ld   hl, sp+$6f                                  ; $72ff: $f8 $6f
	scf                                              ; $7301: $37
	or   $31                                         ; $7302: $f6 $31
	ld   l, e                                        ; $7304: $6b
	dec  de                                          ; $7305: $1b
	pop  af                                          ; $7306: $f1
	call z, Call_0ca_7ff6                            ; $7307: $cc $f6 $7f
	rla                                              ; $730a: $17
	db   $f4                                         ; $730b: $f4
	ld   sp, $1a5b                                   ; $730c: $31 $5b $1a
	pop  af                                          ; $730f: $f1
	call c, Call_0ca_5ff7                            ; $7310: $dc $f7 $5f
	ld   d, $f4                                      ; $7313: $16 $f4
	ld   b, d                                        ; $7315: $42
	ld   a, [hl-]                                    ; $7316: $3a
	ld   d, $f1                                      ; $7317: $16 $f1
	cp   h                                           ; $7319: $bc
	sra  a                                           ; $731a: $cb $2f
	ld   b, e                                        ; $731c: $43
	or   $55                                         ; $731d: $f6 $55
	add  hl, de                                      ; $731f: $19
	ld   d, c                                        ; $7320: $51
	or   $6d                                         ; $7321: $f6 $6d
	sbc  [hl]                                        ; $7323: $9e
	ld   l, $b1                                      ; $7324: $2e $b1
	ei                                               ; $7326: $fb
	ld   d, [hl]                                     ; $7327: $56
	inc  d                                           ; $7328: $14
	and  c                                           ; $7329: $a1
	xor  [hl]                                        ; $732a: $ae
	inc  a                                           ; $732b: $3c
	sbc  [hl]                                        ; $732c: $9e
	ld   [hl], l                                     ; $732d: $75
	pop  af                                          ; $732e: $f1
	adc  a                                           ; $732f: $8f
	ld   h, [hl]                                     ; $7330: $66
	ld   b, c                                        ; $7331: $41
	or   h                                           ; $7332: $b4
	rra                                              ; $7333: $1f
	ld   e, b                                        ; $7334: $58
	cp   d                                           ; $7335: $ba
	pop  de                                          ; $7336: $d1
	ld   a, [$951f]                                  ; $7337: $fa $1f $95
	ld   h, c                                        ; $733a: $61
	ld   e, d                                        ; $733b: $5a
	inc  e                                           ; $733c: $1c
	db   $d3                                         ; $733d: $d3
	reti                                             ; $733e: $d9


	and  $6f                                         ; $733f: $e6 $6f
	ld   a, [de]                                     ; $7341: $1a
	push hl                                          ; $7342: $e5
	add  e                                           ; $7343: $83
	add  hl, de                                      ; $7344: $19
	ld   d, d                                        ; $7345: $52
	or   $7c                                         ; $7346: $f6 $7c
	xor  [hl]                                        ; $7348: $ae
	ld   e, $91                                      ; $7349: $1e $91
	ld   [$2466], a                                  ; $734b: $ea $66 $24
	or   c                                           ; $734e: $b1
	xor  a                                           ; $734f: $af
	dec  l                                           ; $7350: $2d
	adc  l                                           ; $7351: $8d
	ld   [hl], h                                     ; $7352: $74
	pop  af                                          ; $7353: $f1
	adc  [hl]                                        ; $7354: $8e
	ld   l, b                                        ; $7355: $68
	ld   d, c                                        ; $7356: $51
	adc  c                                           ; $7357: $89
	rra                                              ; $7358: $1f
	and  l                                           ; $7359: $a5
	ret                                              ; $735a: $c9


	ldh  a, [c]                                      ; $735b: $f2
	cp   h                                           ; $735c: $bc
	ld   e, $b6                                      ; $735d: $1e $b6
	ld   [hl], d                                     ; $735f: $72
	inc  a                                           ; $7360: $3c
	ld   h, $f3                                      ; $7361: $26 $f3
	jp   z, $2fca                                    ; $7363: $ca $ca $2f

	ld   [hl], $f6                                   ; $7366: $36 $f6
	ld   [hl], l                                     ; $7368: $75
	rla                                              ; $7369: $17
	and  c                                           ; $736a: $a1
	ld   [$8e5d], a                                  ; $736b: $ea $5d $8e
	ld   a, [hl-]                                    ; $736e: $3a
	pop  hl                                          ; $736f: $e1
	db   $db                                         ; $7370: $db
	ld   h, a                                        ; $7371: $67
	ld   [hl-], a                                    ; $7372: $32
	or   l                                           ; $7373: $b5
	ccf                                              ; $7374: $3f
	ld   c, c                                        ; $7375: $49
	xor  e                                           ; $7376: $ab
	or   c                                           ; $7377: $b1
	or   $3f                                         ; $7378: $f6 $3f
	add  [hl]                                        ; $737a: $86
	ld   [hl], d                                     ; $737b: $72
	ld   e, e                                        ; $737c: $5b
	dec  de                                          ; $737d: $1b
	db   $e3                                         ; $737e: $e3
	ret                                              ; $737f: $c9


	push de                                          ; $7380: $d5
	ld   l, a                                        ; $7381: $6f
	ld   a, [de]                                     ; $7382: $1a
	and  $75                                         ; $7383: $e6 $75
	add  hl, de                                      ; $7385: $19
	add  c                                           ; $7386: $81
	ld   hl, sp+$6c                                  ; $7387: $f8 $6c
	adc  l                                           ; $7389: $8d
	inc  l                                           ; $738a: $2c
	or   c                                           ; $738b: $b1
	ld   a, [$3367]                                  ; $738c: $fa $67 $33
	jp   nz, $3b7f                                   ; $738f: $c2 $7f $3b

	sbc  e                                           ; $7392: $9b
	add  e                                           ; $7393: $83
	db   $f4                                         ; $7394: $f4
	ld   a, [hl]                                     ; $7395: $7e
	ld   [hl], a                                     ; $7396: $77
	ld   d, c                                        ; $7397: $51
	ld   a, d                                        ; $7398: $7a
	ld   e, $b3                                      ; $7399: $1e $b3
	add  sp, -$3c                                    ; $739b: $e8 $c4
	xor  l                                           ; $739d: $ad
	dec  e                                           ; $739e: $1d
	push de                                          ; $739f: $d5
	ld   [hl], h                                     ; $73a0: $74
	dec  l                                           ; $73a1: $2d
	dec  [hl]                                        ; $73a2: $35
	ldh  a, [c]                                      ; $73a3: $f2
	cp   e                                           ; $73a4: $bb
	sbc  d                                           ; $73a5: $9a
	ccf                                              ; $73a6: $3f
	ld   d, l                                        ; $73a7: $55
	rst  $30                                         ; $73a8: $f7
	ld   h, [hl]                                     ; $73a9: $66
	ld   d, $a1                                      ; $73aa: $16 $a1
	call c, $8c3e                                    ; $73ac: $dc $3e $8c
	ld   e, b                                        ; $73af: $58
	ldh  [c], a                                      ; $73b0: $e2
	bit  4, a                                        ; $73b1: $cb $67
	ld   [hl-], a                                    ; $73b3: $32
	db   $d3                                         ; $73b4: $d3
	ld   c, a                                        ; $73b5: $4f
	ld   a, [hl-]                                    ; $73b6: $3a
	ret                                              ; $73b7: $c9


	or   e                                           ; $73b8: $b3
	or   $5f                                         ; $73b9: $f6 $5f
	sub  [hl]                                        ; $73bb: $96
	ld   h, d                                        ; $73bc: $62
	ld   l, e                                        ; $73bd: $6b
	ld   e, $c2                                      ; $73be: $1e $c2
	add  sp, -$4a                                    ; $73c0: $e8 $b6
	adc  [hl]                                        ; $73c2: $8e
	inc  l                                           ; $73c3: $2c
	add  $74                                         ; $73c4: $c6 $74
	dec  de                                          ; $73c6: $1b
	ld   h, c                                        ; $73c7: $61
	or   $7d                                         ; $73c8: $f6 $7d
	sbc  e                                           ; $73ca: $9b
	dec  a                                           ; $73cb: $3d
	add  e                                           ; $73cc: $83
	ld   sp, hl                                      ; $73cd: $f9
	ld   d, a                                        ; $73ce: $57
	dec  d                                           ; $73cf: $15
	pop  de                                          ; $73d0: $d1
	call $8c2d                                       ; $73d1: $cd $2d $8c
	ld   h, a                                        ; $73d4: $67
	ldh  a, [c]                                      ; $73d5: $f2
	cp   h                                           ; $73d6: $bc
	ld   h, a                                        ; $73d7: $67
	ld   b, d                                        ; $73d8: $42
	sbc  b                                           ; $73d9: $98
	rra                                              ; $73da: $1f
	add  l                                           ; $73db: $85
	ret  c                                           ; $73dc: $d8

	jp   $3eca                                       ; $73dd: $c3 $ca $3e


	sub  [hl]                                        ; $73e0: $96
	ld   [hl], d                                     ; $73e1: $72
	ld   c, l                                        ; $73e2: $4d
	add  hl, de                                      ; $73e3: $19
	ldh  a, [c]                                      ; $73e4: $f2
	jp   z, $6fb7                                    ; $73e5: $ca $b7 $6f

	ld   c, c                                        ; $73e8: $49
	rst  ToBoot                                         ; $73e9: $c7
	ld   h, l                                        ; $73ea: $65
	daa                                              ; $73eb: $27
	sub  c                                           ; $73ec: $91
	ld   a, [$9b4d]                                  ; $73ed: $fa $4d $9b
	ld   c, d                                        ; $73f0: $4a
	and  e                                           ; $73f1: $a3
	jp   z, $3257                                    ; $73f2: $ca $57 $32

	jp   nz, $2a6f                                   ; $73f5: $c2 $6f $2a

	xor  d                                           ; $73f8: $aa
	sub  l                                           ; $73f9: $95
	push hl                                          ; $73fa: $e5
	adc  l                                           ; $73fb: $8d
	halt                                             ; $73fc: $76
	ld   h, d                                        ; $73fd: $62
	ld   l, e                                        ; $73fe: $6b
	inc  e                                           ; $73ff: $1c
	jp   $b5c9                                       ; $7400: $c3 $c9 $b5


	sbc  h                                           ; $7403: $9c
	inc  a                                           ; $7404: $3c
	and  [hl]                                        ; $7405: $a6
	ld   h, h                                        ; $7406: $64
	dec  hl                                          ; $7407: $2b
	ld   d, e                                        ; $7408: $53
	push af                                          ; $7409: $f5
	adc  h                                           ; $740a: $8c
	xor  d                                           ; $740b: $aa
	ld   c, l                                        ; $740c: $4d
	halt                                             ; $740d: $76
	reti                                             ; $740e: $d9


	ld   h, [hl]                                     ; $740f: $66
	inc  [hl]                                        ; $7410: $34
	pop  bc                                          ; $7411: $c1
	adc  a                                           ; $7412: $8f
	inc  a                                           ; $7413: $3c
	xor  e                                           ; $7414: $ab
	ld   [hl], a                                     ; $7415: $77
	call nc, Call_0ca_77ab                           ; $7416: $d4 $ab $77
	ld   d, d                                        ; $7419: $52
	adc  b                                           ; $741a: $88
	rrca                                             ; $741b: $0f
	sub  l                                           ; $741c: $95
	ret                                              ; $741d: $c9


	and  l                                           ; $741e: $a5
	cp   c                                           ; $741f: $b9
	ld   c, e                                        ; $7420: $4b
	and  [hl]                                        ; $7421: $a6
	ld   h, l                                        ; $7422: $65
	dec  hl                                          ; $7423: $2b
	ld   b, l                                        ; $7424: $45

jr_0ca_7425:
	db   $f4                                         ; $7425: $f4
	xor  e                                           ; $7426: $ab
	xor  c                                           ; $7427: $a9
	ld   e, l                                        ; $7428: $5d
	ld   h, a                                        ; $7429: $67
	rst  ToBoot                                         ; $742a: $c7
	ld   h, [hl]                                     ; $742b: $66
	ld   h, $b1                                      ; $742c: $26 $b1
	call z, $9b3c                                    ; $742e: $cc $3c $9b
	ld   l, b                                        ; $7431: $68
	push bc                                          ; $7432: $c5
	sbc  e                                           ; $7433: $9b
	add  l                                           ; $7434: $85
	ld   d, e                                        ; $7435: $53
	sbc  b                                           ; $7436: $98
	cpl                                              ; $7437: $2f
	halt                                             ; $7438: $76
	ret  z                                           ; $7439: $c8

	or   l                                           ; $743a: $b5
	cp   b                                           ; $743b: $b8
	ld   e, h                                        ; $743c: $5c
	and  [hl]                                        ; $743d: $a6
	ld   h, e                                        ; $743e: $63
	ld   c, h                                        ; $743f: $4c
	jr   jr_0ca_7425                                 ; $7440: $18 $e3

	jp   z, Jump_0ca_7da8                            ; $7442: $ca $a8 $7d

	ld   e, c                                        ; $7445: $59
	cp   b                                           ; $7446: $b8
	ld   d, [hl]                                     ; $7447: $56
	ld   [hl], $91                                   ; $7448: $36 $91
	reti                                             ; $744a: $d9


	ld   e, l                                        ; $744b: $5d
	adc  e                                           ; $744c: $8b
	ld   l, d                                        ; $744d: $6a
	and  l                                           ; $744e: $a5
	cp   d                                           ; $744f: $ba
	halt                                             ; $7450: $76
	ld   b, h                                        ; $7451: $44
	and  e                                           ; $7452: $a3
	ld   e, a                                        ; $7453: $5f
	ld   c, c                                        ; $7454: $49
	cp   d                                           ; $7455: $ba
	sub  [hl]                                        ; $7456: $96
	rst  $10                                         ; $7457: $d7
	ld   a, e                                        ; $7458: $7b
	sub  [hl]                                        ; $7459: $96
	ld   d, e                                        ; $745a: $53
	ld   a, b                                        ; $745b: $78
	inc  e                                           ; $745c: $1c
	and  h                                           ; $745d: $a4
	reti                                             ; $745e: $d9


	and  [hl]                                        ; $745f: $a6
	xor  h                                           ; $7460: $ac
	ld   e, d                                        ; $7461: $5a
	and  a                                           ; $7462: $a7
	ld   d, h                                        ; $7463: $54
	ld   c, d                                        ; $7464: $4a
	ld   [hl], $f4                                   ; $7465: $36 $f4
	xor  e                                           ; $7467: $ab
	sbc  c                                           ; $7468: $99
	ld   a, h                                        ; $7469: $7c
	ld   [hl], a                                     ; $746a: $77
	cp   b                                           ; $746b: $b8
	ld   h, l                                        ; $746c: $65
	add  hl, sp                                      ; $746d: $39
	ld   h, d                                        ; $746e: $62
	rst  $10                                         ; $746f: $d7
	ld   e, l                                        ; $7470: $5d
	sbc  d                                           ; $7471: $9a
	ld   a, e                                        ; $7472: $7b
	and  [hl]                                        ; $7473: $a6
	xor  c                                           ; $7474: $a9
	ld   h, [hl]                                     ; $7475: $66
	ld   b, [hl]                                     ; $7476: $46
	sub  d                                           ; $7477: $92
	adc  h                                           ; $7478: $8c
	ld   c, e                                        ; $7479: $4b
	xor  d                                           ; $747a: $aa
	adc  b                                           ; $747b: $88
	rst  $10                                         ; $747c: $d7
	sbc  e                                           ; $747d: $9b
	add  [hl]                                        ; $747e: $86
	ld   b, h                                        ; $747f: $44
	and  e                                           ; $7480: $a3
	ld   c, l                                        ; $7481: $4d
	ld   d, a                                        ; $7482: $57
	cp   d                                           ; $7483: $ba
	and  a                                           ; $7484: $a7
	jp   c, $967b                                    ; $7485: $da $7b $96

	ld   b, h                                        ; $7488: $44
	add  [hl]                                        ; $7489: $86
	inc  e                                           ; $748a: $1c
	add  h                                           ; $748b: $84
	cp   e                                           ; $748c: $bb
	and  a                                           ; $748d: $a7
	cp   h                                           ; $748e: $bc
	ld   a, d                                        ; $748f: $7a
	and  a                                           ; $7490: $a7
	ld   d, h                                        ; $7491: $54
	add  a                                           ; $7492: $87
	ld   a, [de]                                     ; $7493: $1a
	and  h                                           ; $7494: $a4
	sbc  e                                           ; $7495: $9b
	or   a                                           ; $7496: $b7
	xor  l                                           ; $7497: $ad
	sbc  c                                           ; $7498: $99
	cp   c                                           ; $7499: $b9
	ld   d, h                                        ; $749a: $54
	ld   a, c                                        ; $749b: $79
	rla                                              ; $749c: $17
	and  h                                           ; $749d: $a4
	ld   a, d                                        ; $749e: $7a
	xor  b                                           ; $749f: $a8
	sbc  l                                           ; $74a0: $9d
	xor  b                                           ; $74a1: $a8
	cp   c                                           ; $74a2: $b9
	ld   h, h                                        ; $74a3: $64
	ld   a, b                                        ; $74a4: $78
	ld   h, $a5                                      ; $74a5: $26 $a5
	ld   l, c                                        ; $74a7: $69
	cp   b                                           ; $74a8: $b8
	adc  h                                           ; $74a9: $8c
	xor  c                                           ; $74aa: $a9
	cp   d                                           ; $74ab: $ba
	ld   h, h                                        ; $74ac: $64
	ld   a, c                                        ; $74ad: $79
	ld   h, $a5                                      ; $74ae: $26 $a5
	ld   l, c                                        ; $74b0: $69
	xor  b                                           ; $74b1: $a8
	adc  e                                           ; $74b2: $8b
	xor  c                                           ; $74b3: $a9
	xor  d                                           ; $74b4: $aa
	ld   [hl], l                                     ; $74b5: $75
	adc  d                                           ; $74b6: $8a
	ld   b, [hl]                                     ; $74b7: $46
	sub  [hl]                                        ; $74b8: $96
	ld   l, b                                        ; $74b9: $68
	sub  a                                           ; $74ba: $97
	adc  d                                           ; $74bb: $8a
	xor  c                                           ; $74bc: $a9
	xor  c                                           ; $74bd: $a9
	add  [hl]                                        ; $74be: $86
	adc  c                                           ; $74bf: $89
	ld   h, a                                        ; $74c0: $67
	sub  [hl]                                        ; $74c1: $96
	ld   h, a                                        ; $74c2: $67
	add  a                                           ; $74c3: $87
	ld   a, c                                        ; $74c4: $79
	sbc  c                                           ; $74c5: $99
	sbc  c                                           ; $74c6: $99
	sub  a                                           ; $74c7: $97
	adc  c                                           ; $74c8: $89
	add  a                                           ; $74c9: $87
	sbc  b                                           ; $74ca: $98
	ld   [hl], a                                     ; $74cb: $77
	adc  b                                           ; $74cc: $88
	ld   a, b                                        ; $74cd: $78
	sbc  b                                           ; $74ce: $98
	adc  c                                           ; $74cf: $89
	adc  b                                           ; $74d0: $88
	adc  c                                           ; $74d1: $89
	sub  a                                           ; $74d2: $97
	adc  c                                           ; $74d3: $89
	ld   [hl], a                                     ; $74d4: $77
	adc  b                                           ; $74d5: $88
	ld   [hl], a                                     ; $74d6: $77
	adc  b                                           ; $74d7: $88
	ld   a, b                                        ; $74d8: $78
	adc  b                                           ; $74d9: $88
	adc  c                                           ; $74da: $89
	sbc  c                                           ; $74db: $99
	sbc  c                                           ; $74dc: $99
	sbc  b                                           ; $74dd: $98
	adc  b                                           ; $74de: $88
	ld   [hl], a                                     ; $74df: $77
	ld   [hl], a                                     ; $74e0: $77
	ld   [hl], a                                     ; $74e1: $77
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	sbc  b                                           ; $74e4: $98
	sbc  c                                           ; $74e5: $99
	sbc  b                                           ; $74e6: $98
	adc  b                                           ; $74e7: $88
	add  a                                           ; $74e8: $87
	ld   [hl], a                                     ; $74e9: $77
	ld   [hl], a                                     ; $74ea: $77
	ld   a, b                                        ; $74eb: $78
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	sbc  b                                           ; $74ee: $98
	sbc  c                                           ; $74ef: $99
	adc  b                                           ; $74f0: $88
	add  a                                           ; $74f1: $87
	ld   [hl], a                                     ; $74f2: $77
	ld   [hl], a                                     ; $74f3: $77
	ld   a, b                                        ; $74f4: $78
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	sbc  b                                           ; $74f7: $98
	adc  c                                           ; $74f8: $89
	adc  b                                           ; $74f9: $88
	add  a                                           ; $74fa: $87
	ld   [hl], a                                     ; $74fb: $77
	add  a                                           ; $74fc: $87
	ld   a, b                                        ; $74fd: $78
	adc  b                                           ; $74fe: $88
	sbc  b                                           ; $74ff: $98
	sbc  c                                           ; $7500: $99
	adc  c                                           ; $7501: $89
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	ld   [hl], a                                     ; $7504: $77
	add  a                                           ; $7505: $87
	ld   a, b                                        ; $7506: $78
	adc  b                                           ; $7507: $88
	adc  b                                           ; $7508: $88
	sbc  c                                           ; $7509: $99
	adc  c                                           ; $750a: $89
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	ld   [hl], a                                     ; $750d: $77
	ld   [hl], a                                     ; $750e: $77
	ld   a, b                                        ; $750f: $78
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	sbc  c                                           ; $7512: $99
	adc  c                                           ; $7513: $89
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	ld   [hl], a                                     ; $7516: $77
	ld   [hl], a                                     ; $7517: $77
	ld   a, b                                        ; $7518: $78
	adc  b                                           ; $7519: $88
	sbc  b                                           ; $751a: $98
	sbc  c                                           ; $751b: $99
	sbc  c                                           ; $751c: $99
	adc  b                                           ; $751d: $88
	add  a                                           ; $751e: $87
	ld   [hl], a                                     ; $751f: $77
	ld   [hl], a                                     ; $7520: $77
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	sbc  b                                           ; $7523: $98
	sbc  c                                           ; $7524: $99
	sbc  c                                           ; $7525: $99
	adc  b                                           ; $7526: $88
	add  a                                           ; $7527: $87
	ld   [hl], a                                     ; $7528: $77
	ld   [hl], a                                     ; $7529: $77
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  c                                           ; $752d: $89
	sbc  c                                           ; $752e: $99
	adc  b                                           ; $752f: $88
	add  a                                           ; $7530: $87
	ld   a, b                                        ; $7531: $78
	ld   [hl], a                                     ; $7532: $77
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  c                                           ; $7535: $89
	adc  c                                           ; $7536: $89
	sbc  c                                           ; $7537: $99
	adc  b                                           ; $7538: $88
	add  a                                           ; $7539: $87
	ld   a, b                                        ; $753a: $78
	ld   [hl], a                                     ; $753b: $77
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  c                                           ; $753f: $89
	sbc  b                                           ; $7540: $98
	adc  b                                           ; $7541: $88
	add  a                                           ; $7542: $87
	ld   [hl], a                                     ; $7543: $77
	ld   [hl], a                                     ; $7544: $77
	adc  b                                           ; $7545: $88
	sbc  c                                           ; $7546: $99
	sbc  c                                           ; $7547: $99
	sbc  b                                           ; $7548: $98
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	ld   [hl], a                                     ; $754c: $77
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	sbc  c                                           ; $754f: $99
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  c                                           ; $7557: $89
	sbc  b                                           ; $7558: $98
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
	adc  c                                           ; $7566: $89
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

Call_0ca_7597:
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

Call_0ca_75a9:
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

Jump_0ca_768a:
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
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88

Call_0ca_76ab:
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

Jump_0ca_7784:
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	adc  b                                           ; $7786: $88

Call_0ca_7787:
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

Call_0ca_77ab:
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

Call_0ca_77b9:
	adc  b                                           ; $77b9: $88
	adc  b                                           ; $77ba: $88

Jump_0ca_77bb:
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

Jump_0ca_781e:
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

jr_0ca_7891:
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

jr_0ca_78ba:
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
	sbc  b                                           ; $78cf: $98
	adc  b                                           ; $78d0: $88
	adc  c                                           ; $78d1: $89
	adc  b                                           ; $78d2: $88
	ld   a, b                                        ; $78d3: $78
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	add  a                                           ; $78d6: $87
	ld   a, b                                        ; $78d7: $78
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  c                                           ; $78da: $89
	sbc  b                                           ; $78db: $98
	adc  c                                           ; $78dc: $89
	sbc  c                                           ; $78dd: $99
	sub  a                                           ; $78de: $97
	ld   a, b                                        ; $78df: $78
	ld   [hl], a                                     ; $78e0: $77
	ld   a, b                                        ; $78e1: $78
	add  a                                           ; $78e2: $87
	sbc  b                                           ; $78e3: $98
	adc  c                                           ; $78e4: $89
	sbc  b                                           ; $78e5: $98
	ld   d, a                                        ; $78e6: $57
	and  l                                           ; $78e7: $a5
	ld   a, c                                        ; $78e8: $79
	ld   [hl], a                                     ; $78e9: $77
	ld   l, e                                        ; $78ea: $6b
	sub  [hl]                                        ; $78eb: $96
	xor  e                                           ; $78ec: $ab
	xor  c                                           ; $78ed: $a9
	sub  a                                           ; $78ee: $97
	dec  sp                                          ; $78ef: $3b
	ld   [hl], h                                     ; $78f0: $74
	and  [hl]                                        ; $78f1: $a6
	sub  [hl]                                        ; $78f2: $96
	xor  l                                           ; $78f3: $ad
	ld   l, d                                        ; $78f4: $6a
	xor  d                                           ; $78f5: $aa
	rst  ToBoot                                         ; $78f6: $c7
	sub  d                                           ; $78f7: $92
	ld   c, l                                        ; $78f8: $4d
	jr   jr_0ca_7891                                 ; $78f9: $18 $96

	sub  l                                           ; $78fb: $95
	ld   sp, hl                                      ; $78fc: $f9
	ld   e, l                                        ; $78fd: $5d
	adc  c                                           ; $78fe: $89
	sbc  b                                           ; $78ff: $98
	sub  c                                           ; $7900: $91
	ld   c, [hl]                                     ; $7901: $4e
	rla                                              ; $7902: $17
	ret                                              ; $7903: $c9


	sub  h                                           ; $7904: $94
	ld   sp, hl                                      ; $7905: $f9
	ld   l, $87                                      ; $7906: $2e $87
	ld   l, e                                        ; $7908: $6b
	pop  de                                          ; $7909: $d1
	add  hl, de                                      ; $790a: $19
	or   c                                           ; $790b: $b1
	ld   a, a                                        ; $790c: $7f
	ld   h, [hl]                                     ; $790d: $66
	xor  a                                           ; $790e: $af
	ld   d, d                                        ; $790f: $52
	ld   sp, hl                                      ; $7910: $f9
	scf                                              ; $7911: $37
	ei                                               ; $7912: $fb
	inc  d                                           ; $7913: $14
	ld   e, e                                        ; $7914: $5b
	inc  d                                           ; $7915: $14
	di                                               ; $7916: $f3
	ld   a, c                                        ; $7917: $79
	add  sp, $1f                                     ; $7918: $e8 $1f
	add  e                                           ; $791a: $83
	xor  e                                           ; $791b: $ab
	or   l                                           ; $791c: $b5
	ld   b, h                                        ; $791d: $44
	ld   a, c                                        ; $791e: $79
	rra                                              ; $791f: $1f
	and  l                                           ; $7920: $a5
	xor  d                                           ; $7921: $aa
	pop  hl                                          ; $7922: $e1
	xor  e                                           ; $7923: $ab
	ld   c, b                                        ; $7924: $48
	cp   h                                           ; $7925: $bc
	add  d                                           ; $7926: $82
	jr   z, jr_0ca_78ba                              ; $7927: $28 $91

	adc  $58                                         ; $7929: $ce $58
	xor  a                                           ; $792b: $af
	rla                                              ; $792c: $17
	db   $e4                                         ; $792d: $e4
	ld   l, d                                        ; $792e: $6a
	add  sp, $44                                     ; $792f: $e8 $44
	dec  hl                                          ; $7931: $2b
	ld   b, l                                        ; $7932: $45
	or   $a7                                         ; $7933: $f6 $a7
	reti                                             ; $7935: $d9


	ld   e, $74                                      ; $7936: $1e $74
	xor  l                                           ; $7938: $ad
	or   l                                           ; $7939: $b5
	inc  hl                                          ; $793a: $23
	sub  a                                           ; $793b: $97
	rra                                              ; $793c: $1f
	sub  a                                           ; $793d: $97
	adc  l                                           ; $793e: $8d
	pop  bc                                          ; $793f: $c1
	cp   d                                           ; $7940: $ba
	jr   c, @-$11                                    ; $7941: $38 $ed

	ld   h, h                                        ; $7943: $64
	dec  h                                           ; $7944: $25
	pop  bc                                          ; $7945: $c1
	cp   a                                           ; $7946: $bf
	ld   e, c                                        ; $7947: $59
	ld   a, a                                        ; $7948: $7f
	inc  d                                           ; $7949: $14
	db   $e4                                         ; $794a: $e4
	ld   l, h                                        ; $794b: $6c
	ld   sp, hl                                      ; $794c: $f9
	ld   b, d                                        ; $794d: $42
	inc  l                                           ; $794e: $2c
	ld   [hl], $f6                                   ; $794f: $36 $f6
	sub  a                                           ; $7951: $97
	rst  $20                                         ; $7952: $e7
	rra                                              ; $7953: $1f
	ld   [hl], h                                     ; $7954: $74

Jump_0ca_7955:
	xor  [hl]                                        ; $7955: $ae
	call nc, Call_0ca_7a31                           ; $7956: $d4 $31 $7a
	rra                                              ; $7959: $1f
	add  $99                                         ; $795a: $c6 $99
	pop  af                                          ; $795c: $f1
	sbc  h                                           ; $795d: $9c
	scf                                              ; $795e: $37
	cp   $73                                         ; $795f: $fe $73
	inc  de                                          ; $7961: $13
	or   c                                           ; $7962: $b1
	cp   a                                           ; $7963: $bf
	ld   e, d                                        ; $7964: $5a
	ld   a, a                                        ; $7965: $7f
	ld   hl, $6ef5                                   ; $7966: $21 $f5 $6e
	jp   hl                                          ; $7969: $e9


	ld   b, c                                        ; $796a: $41
	ld   a, [de]                                     ; $796b: $1a
	ld   [hl], d                                     ; $796c: $72
	ei                                               ; $796d: $fb
	ld   a, b                                        ; $796e: $78
	jp   z, $a41b                                    ; $796f: $ca $1b $a4

	cp   a                                           ; $7972: $bf
	or   e                                           ; $7973: $b3
	ld   de, $3f96                                   ; $7974: $11 $96 $3f
	or   a                                           ; $7977: $b7
	adc  d                                           ; $7978: $8a
	pop  bc                                          ; $7979: $c1
	xor  h                                           ; $797a: $ac
	inc  a                                           ; $797b: $3c
	cp   $51                                         ; $797c: $fe $51
	inc  d                                           ; $797e: $14
	or   d                                           ; $797f: $b2
	rst  JumpTable                                         ; $7980: $df
	ld   a, b                                        ; $7981: $78
	adc  [hl]                                        ; $7982: $8e
	inc  de                                          ; $7983: $13
	sub  $7f                                         ; $7984: $d6 $7f
	push af                                          ; $7986: $f5
	ld   sp, $3b2b                                   ; $7987: $31 $2b $3b
	ld   hl, sp-$6a                                  ; $798a: $f8 $96
	jp   nc, Jump_0ca_781e                           ; $798c: $d2 $1e $78

	rst  $38                                         ; $798f: $ff
	ld   [hl], d                                     ; $7990: $72
	ld   de, $7fb7                                   ; $7991: $11 $b7 $7f
	cp   b                                           ; $7994: $b8
	ld   l, e                                        ; $7995: $6b
	ld   h, c                                        ; $7996: $61

Jump_0ca_7997:
	cp   d                                           ; $7997: $ba
	ld   a, a                                        ; $7998: $7f
	ld   hl, sp+$11                                  ; $7999: $f8 $11
	dec  de                                          ; $799b: $1b
	ld   d, a                                        ; $799c: $57
	ei                                               ; $799d: $fb
	add  l                                           ; $799e: $85
	and  a                                           ; $799f: $a7
	dec  de                                          ; $79a0: $1b
	or   a                                           ; $79a1: $b7
	rst  $38                                         ; $79a2: $ff
	and  c                                           ; $79a3: $a1
	ld   de, $6fa8                                   ; $79a4: $11 $a8 $6f
	rst  $20                                         ; $79a7: $e7
	ld   e, d                                        ; $79a8: $5a
	ld   [hl], c                                     ; $79a9: $71
	sbc  l                                           ; $79aa: $9d
	adc  a                                           ; $79ab: $8f
	ld   sp, hl                                      ; $79ac: $f9
	ld   de, $581d                                   ; $79ad: $11 $1d $58
	db   $fc                                         ; $79b0: $fc
	add  h                                           ; $79b1: $84
	and  [hl]                                        ; $79b2: $a6
	dec  e                                           ; $79b3: $1d
	cp   b                                           ; $79b4: $b8
	rst  $38                                         ; $79b5: $ff
	and  c                                           ; $79b6: $a1
	ld   de, $7fa9                                   ; $79b7: $11 $a9 $7f
	rst  $30                                         ; $79ba: $f7
	ld   e, b                                        ; $79bb: $58
	ld   h, c                                        ; $79bc: $61
	xor  l                                           ; $79bd: $ad
	sbc  a                                           ; $79be: $9f
	rst  $30                                         ; $79bf: $f7
	ld   de, $6a1c                                   ; $79c0: $11 $1c $6a
	db   $fc                                         ; $79c3: $fc
	add  h                                           ; $79c4: $84
	sub  l                                           ; $79c5: $95
	inc  e                                           ; $79c6: $1c
	reti                                             ; $79c7: $d9


	rst  $38                                         ; $79c8: $ff
	ld   [hl], c                                     ; $79c9: $71
	ld   de, $bfc8                                   ; $79ca: $11 $c8 $bf
	rst  $10                                         ; $79cd: $d7
	add  hl, sp                                      ; $79ce: $39
	ld   b, c                                        ; $79cf: $41
	db   $dd                                         ; $79d0: $dd
	cp   a                                           ; $79d1: $bf
	or   $11                                         ; $79d2: $f6 $11
	dec  e                                           ; $79d4: $1d
	ld   l, h                                        ; $79d5: $6c
	db   $fc                                         ; $79d6: $fc
	ld   h, e                                        ; $79d7: $63
	and  c                                           ; $79d8: $a1
	rra                                              ; $79d9: $1f
	cp   e                                           ; $79da: $bb
	cp   $61                                         ; $79db: $fe $61
	ld   de, $bfc9                                   ; $79dd: $11 $c9 $bf
	sub  $29                                         ; $79e0: $d6 $29
	ld   sp, $dfdd                                   ; $79e2: $31 $dd $df
	db   $d3                                         ; $79e5: $d3
	ld   de, $6f3d                                   ; $79e6: $11 $3d $6f
	ei                                               ; $79e9: $fb
	ld   d, e                                        ; $79ea: $53
	and  c                                           ; $79eb: $a1
	rra                                              ; $79ec: $1f
	adc  $fa                                         ; $79ed: $ce $fa
	ld   b, c                                        ; $79ef: $41
	ld   d, $d7                                      ; $79f0: $16 $d7
	rst  $38                                         ; $79f2: $ff
	sub  e                                           ; $79f3: $93
	ld   c, c                                        ; $79f4: $49
	inc  de                                          ; $79f5: $13
	db   $fc                                         ; $79f6: $fc
	rst  $38                                         ; $79f7: $ff
	and  d                                           ; $79f8: $a2
	ld   de, $7fac                                   ; $79f9: $11 $ac $7f
	rst  $30                                         ; $79fc: $f7
	ld   h, $91                                      ; $79fd: $26 $91
	ld   a, a                                        ; $79ff: $7f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a00: $cf
	rst  $20                                         ; $7a01: $e7
	ld   de, $9b1d                                   ; $7a02: $11 $1d $9b
	cp   $61                                         ; $7a05: $fe $61
	sub  h                                           ; $7a07: $94
	inc  e                                           ; $7a08: $1c
	db   $ed                                         ; $7a09: $ed
	db   $fc                                         ; $7a0a: $fc
	ld   h, c                                        ; $7a0b: $61
	inc  d                                           ; $7a0c: $14
	or   $ef                                         ; $7a0d: $f6 $ef
	or   e                                           ; $7a0f: $b3
	ld   c, d                                        ; $7a10: $4a
	ld   de, $dffe                                   ; $7a11: $11 $fe $df
	and  e                                           ; $7a14: $a3
	ld   de, $6fac                                   ; $7a15: $11 $ac $6f
	rst  $30                                         ; $7a18: $f7
	daa                                              ; $7a19: $27
	sub  c                                           ; $7a1a: $91
	ld   a, a                                        ; $7a1b: $7f
	cp   a                                           ; $7a1c: $bf
	or   $11                                         ; $7a1d: $f6 $11
	dec  e                                           ; $7a1f: $1d
	ld   a, e                                        ; $7a20: $7b
	db   $fc                                         ; $7a21: $fc
	ld   h, d                                        ; $7a22: $62
	or   e                                           ; $7a23: $b3
	ld   e, $ec                                      ; $7a24: $1e $ec
	db   $ec                                         ; $7a26: $ec
	ld   h, c                                        ; $7a27: $61
	jr   @-$2a                                       ; $7a28: $18 $d4

	rst  $38                                         ; $7a2a: $ff
	sub  e                                           ; $7a2b: $93
	ld   l, e                                        ; $7a2c: $6b
	inc  de                                          ; $7a2d: $13
	db   $fd                                         ; $7a2e: $fd
	rst  JumpTable                                         ; $7a2f: $df
	and  c                                           ; $7a30: $a1

Call_0ca_7a31:
	ld   de, $7fe7                                   ; $7a31: $11 $e7 $7f
	and  $2b                                         ; $7a34: $e6 $2b
	ld   h, c                                        ; $7a36: $61
	cp   a                                           ; $7a37: $bf
	cp   h                                           ; $7a38: $bc
	rst  $10                                         ; $7a39: $d7
	ld   de, $2f9e                                   ; $7a3a: $11 $9e $2f
	ld   sp, hl                                      ; $7a3d: $f9
	scf                                              ; $7a3e: $37
	pop  bc                                          ; $7a3f: $c1
	cpl                                              ; $7a40: $2f
	set  5, e                                        ; $7a41: $cb $eb
	ld   de, $571f                                   ; $7a43: $11 $1f $57
	db   $fc                                         ; $7a46: $fc
	ld   d, e                                        ; $7a47: $53
	push de                                          ; $7a48: $d5
	dec  e                                           ; $7a49: $1d
	ld   a, [$51dd]                                  ; $7a4a: $fa $dd $51
	inc  e                                           ; $7a4d: $1c
	or   c                                           ; $7a4e: $b1
	rst  $38                                         ; $7a4f: $ff
	ld   h, e                                        ; $7a50: $63
	sbc  h                                           ; $7a51: $9c
	ld   d, $fa                                      ; $7a52: $16 $fa
	cp   [hl]                                        ; $7a54: $be
	add  c                                           ; $7a55: $81
	ld   d, $f1                                      ; $7a56: $16 $f1
	rst  JumpTable                                         ; $7a58: $df
	sub  h                                           ; $7a59: $94
	ld   l, [hl]                                     ; $7a5a: $6e
	ld   de, $8efc                                   ; $7a5b: $11 $fc $8e
	or   d                                           ; $7a5e: $b2
	ld   de, $4ff4                                   ; $7a5f: $11 $f4 $4f
	push bc                                          ; $7a62: $c5
	ld   e, h                                        ; $7a63: $5c
	ld   h, c                                        ; $7a64: $61
	rst  JumpTable                                         ; $7a65: $df
	ld   l, l                                        ; $7a66: $6d
	call nc, $f711                                   ; $7a67: $d4 $11 $f7
	rra                                              ; $7a6a: $1f
	push hl                                          ; $7a6b: $e5
	ld   c, h                                        ; $7a6c: $4c
	sub  c                                           ; $7a6d: $91
	xor  a                                           ; $7a6e: $af
	ld   l, h                                        ; $7a6f: $6c
	db   $f4                                         ; $7a70: $f4
	ld   de, $1fdb                                   ; $7a71: $11 $db $1f
	push af                                          ; $7a74: $f5
	ld   c, h                                        ; $7a75: $4c
	or   c                                           ; $7a76: $b1
	ld   a, a                                        ; $7a77: $7f
	ld   a, d                                        ; $7a78: $7a
	push af                                          ; $7a79: $f5
	ld   de, $1fbd                                   ; $7a7a: $11 $bd $1f
	push af                                          ; $7a7d: $f5
	ld   e, h                                        ; $7a7e: $5c
	pop  de                                          ; $7a7f: $d1
	ld   a, a                                        ; $7a80: $7f
	ld   a, d                                        ; $7a81: $7a
	db   $f4                                         ; $7a82: $f4
	ld   de, $1fdb                                   ; $7a83: $11 $db $1f
	push af                                          ; $7a86: $f5
	ld   e, l                                        ; $7a87: $5d
	or   c                                           ; $7a88: $b1
	cp   a                                           ; $7a89: $bf
	ld   l, e                                        ; $7a8a: $6b
	di                                               ; $7a8b: $f3
	ld   de, $1fcb                                   ; $7a8c: $11 $cb $1f
	push af                                          ; $7a8f: $f5
	ld   l, h                                        ; $7a90: $6c
	or   c                                           ; $7a91: $b1
	xor  a                                           ; $7a92: $af
	ld   e, e                                        ; $7a93: $5b
	di                                               ; $7a94: $f3
	ld   de, $1fbb                                   ; $7a95: $11 $bb $1f
	push af                                          ; $7a98: $f5
	ld   a, e                                        ; $7a99: $7b
	or   c                                           ; $7a9a: $b1
	sbc  a                                           ; $7a9b: $9f
	ld   e, e                                        ; $7a9c: $5b
	db   $f4                                         ; $7a9d: $f4
	ld   de, $1faa                                   ; $7a9e: $11 $aa $1f
	push af                                          ; $7aa1: $f5
	adc  h                                           ; $7aa2: $8c
	or   c                                           ; $7aa3: $b1
	cp   a                                           ; $7aa4: $bf
	ld   c, e                                        ; $7aa5: $4b
	di                                               ; $7aa6: $f3
	ld   de, $1fb9                                   ; $7aa7: $11 $b9 $1f
	db   $f4                                         ; $7aaa: $f4
	sbc  h                                           ; $7aab: $9c
	and  c                                           ; $7aac: $a1
	adc  $4c                                         ; $7aad: $ce $4c
	di                                               ; $7aaf: $f3
	ld   de, $1fa9                                   ; $7ab0: $11 $a9 $1f
	db   $f4                                         ; $7ab3: $f4
	adc  l                                           ; $7ab4: $8d
	and  c                                           ; $7ab5: $a1
	cp   [hl]                                        ; $7ab6: $be
	dec  sp                                          ; $7ab7: $3b
	di                                               ; $7ab8: $f3
	ld   de, $1fba                                   ; $7ab9: $11 $ba $1f
	db   $e4                                         ; $7abc: $e4
	sbc  l                                           ; $7abd: $9d
	and  c                                           ; $7abe: $a1
	adc  $3b                                         ; $7abf: $ce $3b
	db   $f4                                         ; $7ac1: $f4
	ld   de, $1f9b                                   ; $7ac2: $11 $9b $1f
	db   $f4                                         ; $7ac5: $f4
	sbc  l                                           ; $7ac6: $9d
	or   c                                           ; $7ac7: $b1
	xor  a                                           ; $7ac8: $af
	ld   c, c                                        ; $7ac9: $49
	db   $f4                                         ; $7aca: $f4
	ld   de, $1f8b                                   ; $7acb: $11 $8b $1f
	di                                               ; $7ace: $f3
	sbc  h                                           ; $7acf: $9c
	or   c                                           ; $7ad0: $b1
	sbc  [hl]                                        ; $7ad1: $9e
	ld   c, c                                        ; $7ad2: $49
	or   $21                                         ; $7ad3: $f6 $21
	ld   c, [hl]                                     ; $7ad5: $4e

jr_0ca_7ad6:
	ld   a, [de]                                     ; $7ad6: $1a
	push af                                          ; $7ad7: $f5
	ld   a, h                                        ; $7ad8: $7c
	jp   nc, Jump_0ca_675f                           ; $7ad9: $d2 $5f $67

	ld   hl, sp+$11                                  ; $7adc: $f8 $11
	ld   c, [hl]                                     ; $7ade: $4e
	jr   jr_0ca_7ad6                                 ; $7adf: $18 $f5

	ld   a, h                                        ; $7ae1: $7c
	jp   nc, Jump_0ca_665f                           ; $7ae2: $d2 $5f $66

	ld   [$1d23], a                                  ; $7ae5: $ea $23 $1d
	inc  sp                                          ; $7ae8: $33
	rst  $30                                         ; $7ae9: $f7
	ld   l, d                                        ; $7aea: $6a
	push de                                          ; $7aeb: $d5
	ld   l, $85                                      ; $7aec: $2e $85
	db   $db                                         ; $7aee: $db
	inc  hl                                          ; $7aef: $23
	dec  de                                          ; $7af0: $1b
	ld   d, c                                        ; $7af1: $51
	ld   sp, hl                                      ; $7af2: $f9
	ld   e, e                                        ; $7af3: $5b
	rst  $10                                         ; $7af4: $d7
	ld   l, $95                                      ; $7af5: $2e $95
	call z, $1934                                    ; $7af7: $cc $34 $19
	and  c                                           ; $7afa: $a1
	db   $fc                                         ; $7afb: $fc
	ld   c, e                                        ; $7afc: $4b
	jp   c, $b41c                                    ; $7afd: $da $1c $b4

	cp   l                                           ; $7b00: $bd
	ld   b, e                                        ; $7b01: $43
	rla                                              ; $7b02: $17
	or   c                                           ; $7b03: $b1
	rst  $38                                         ; $7b04: $ff
	dec  sp                                          ; $7b05: $3b
	jp   z, $b41c                                    ; $7b06: $ca $1c $b4

	xor  l                                           ; $7b09: $ad
	ld   d, h                                        ; $7b0a: $54
	inc  sp                                          ; $7b0b: $33
	pop  bc                                          ; $7b0c: $c1
	xor  a                                           ; $7b0d: $af
	ld   c, c                                        ; $7b0e: $49
	call $d428                                       ; $7b0f: $cd $28 $d4
	sbc  l                                           ; $7b12: $9d
	ld   [hl], e                                     ; $7b13: $73
	inc  sp                                          ; $7b14: $33
	pop  bc                                          ; $7b15: $c1
	ld   a, a                                        ; $7b16: $7f
	ld   c, b                                        ; $7b17: $48
	call z, $d439                                    ; $7b18: $cc $39 $d4
	sbc  h                                           ; $7b1b: $9c
	add  e                                           ; $7b1c: $83
	ld   [hl-], a                                    ; $7b1d: $32
	jp   nz, Jump_0ca_575f                           ; $7b1e: $c2 $5f $57

	call $e447                                       ; $7b21: $cd $47 $e4
	sbc  h                                           ; $7b24: $9c
	add  e                                           ; $7b25: $83
	ld   [hl-], a                                    ; $7b26: $32
	or   d                                           ; $7b27: $b2
	ld   c, a                                        ; $7b28: $4f
	ld   d, a                                        ; $7b29: $57
	call c, $e447                                    ; $7b2a: $dc $47 $e4
	adc  l                                           ; $7b2d: $8d
	sub  h                                           ; $7b2e: $94
	inc  sp                                          ; $7b2f: $33
	or   d                                           ; $7b30: $b2
	ld   c, a                                        ; $7b31: $4f
	ld   b, a                                        ; $7b32: $47
	db   $db                                         ; $7b33: $db
	ld   b, a                                        ; $7b34: $47
	db   $d3                                         ; $7b35: $d3
	sbc  l                                           ; $7b36: $9d
	add  l                                           ; $7b37: $85
	ld   d, c                                        ; $7b38: $51
	sub  a                                           ; $7b39: $97
	rra                                              ; $7b3a: $1f
	and  l                                           ; $7b3b: $a5
	db   $dd                                         ; $7b3c: $dd
	ld   h, l                                        ; $7b3d: $65
	push de                                          ; $7b3e: $d5
	ld   a, e                                        ; $7b3f: $7b
	and  l                                           ; $7b40: $a5
	ld   b, d                                        ; $7b41: $42
	and  [hl]                                        ; $7b42: $a6
	rra                                              ; $7b43: $1f
	add  h                                           ; $7b44: $84
	db   $eb                                         ; $7b45: $eb
	ld   h, [hl]                                     ; $7b46: $66
	call nc, $868c                                   ; $7b47: $d4 $8c $86
	ld   b, d                                        ; $7b4a: $42
	sub  a                                           ; $7b4b: $97
	rra                                              ; $7b4c: $1f
	add  h                                           ; $7b4d: $84
	db   $eb                                         ; $7b4e: $eb
	ld   h, [hl]                                     ; $7b4f: $66
	call nc, $868b                                   ; $7b50: $d4 $8b $86
	ld   b, d                                        ; $7b53: $42
	and  [hl]                                        ; $7b54: $a6
	rra                                              ; $7b55: $1f
	ld   [hl], h                                     ; $7b56: $74
	ei                                               ; $7b57: $fb
	ld   h, a                                        ; $7b58: $67
	call nz, $869b                                   ; $7b59: $c4 $9b $86
	ld   b, e                                        ; $7b5c: $43
	and  l                                           ; $7b5d: $a5
	rra                                              ; $7b5e: $1f
	ld   h, h                                        ; $7b5f: $64
	ei                                               ; $7b60: $fb
	ld   l, c                                        ; $7b61: $69
	call nz, Call_0ca_76ab                           ; $7b62: $c4 $ab $76
	inc  sp                                          ; $7b65: $33
	or   e                                           ; $7b66: $b3
	cpl                                              ; $7b67: $2f
	ld   b, [hl]                                     ; $7b68: $46
	ld   sp, hl                                      ; $7b69: $f9
	ld   l, d                                        ; $7b6a: $6a
	or   h                                           ; $7b6b: $b4
	xor  d                                           ; $7b6c: $aa
	halt                                             ; $7b6d: $76
	inc  h                                           ; $7b6e: $24
	pop  bc                                          ; $7b6f: $c1
	ld   e, a                                        ; $7b70: $5f
	add  hl, de                                      ; $7b71: $19
	rst  $30                                         ; $7b72: $f7
	ld   l, h                                        ; $7b73: $6c
	and  l                                           ; $7b74: $a5
	cp   c                                           ; $7b75: $b9
	ld   [hl], l                                     ; $7b76: $75
	dec  h                                           ; $7b77: $25
	or   c                                           ; $7b78: $b1
	sbc  a                                           ; $7b79: $9f
	inc  e                                           ; $7b7a: $1c
	or   $7c                                         ; $7b7b: $f6 $7c
	halt                                             ; $7b7d: $76
	cp   b                                           ; $7b7e: $b8
	ld   [hl], l                                     ; $7b7f: $75
	add  hl, hl                                      ; $7b80: $29
	sub  c                                           ; $7b81: $91
	db   $fd                                         ; $7b82: $fd
	rra                                              ; $7b83: $1f
	push de                                          ; $7b84: $d5
	xor  h                                           ; $7b85: $ac

jr_0ca_7b86:
	ld   e, c                                        ; $7b86: $59
	or   a                                           ; $7b87: $b7
	ld   [hl], e                                     ; $7b88: $73
	dec  sp                                          ; $7b89: $3b
	ld   b, c                                        ; $7b8a: $41
	push af                                          ; $7b8b: $f5
	ld   c, a                                        ; $7b8c: $4f
	add  [hl]                                        ; $7b8d: $86
	cp   c                                           ; $7b8e: $b9
	ld   e, e                                        ; $7b8f: $5b
	add  a                                           ; $7b90: $87
	ld   [hl], c                                     ; $7b91: $71
	ld   l, h                                        ; $7b92: $6c
	jr   jr_0ca_7b86                                 ; $7b93: $18 $f1

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b95: $cf
	ld   e, c                                        ; $7b96: $59
	sub  $8c                                         ; $7b97: $d6 $8c
	ld   l, b                                        ; $7b99: $68
	ld   [hl-], a                                    ; $7b9a: $32
	or   [hl]                                        ; $7b9b: $b6
	rra                                              ; $7b9c: $1f
	add  c                                           ; $7b9d: $81
	ld   sp, hl                                      ; $7b9e: $f9
	ld   l, l                                        ; $7b9f: $6d
	and  l                                           ; $7ba0: $a5
	ret  c                                           ; $7ba1: $d8

	ld   h, a                                        ; $7ba2: $67
	add  hl, de                                      ; $7ba3: $19
	sub  c                                           ; $7ba4: $91
	db   $dd                                         ; $7ba5: $dd
	rra                                              ; $7ba6: $1f
	db   $f4                                         ; $7ba7: $f4
	cp   l                                           ; $7ba8: $bd
	ld   e, d                                        ; $7ba9: $5a
	push bc                                          ; $7baa: $c5
	ld   [hl], e                                     ; $7bab: $73
	dec  sp                                          ; $7bac: $3b
	dec  d                                           ; $7bad: $15
	pop  af                                          ; $7bae: $f1
	adc  a                                           ; $7baf: $8f
	ld   e, c                                        ; $7bb0: $59
	rst  $20                                         ; $7bb1: $e7
	ld   a, l                                        ; $7bb2: $7d
	halt                                             ; $7bb3: $76
	ld   b, d                                        ; $7bb4: $42
	and  e                                           ; $7bb5: $a3
	rra                                              ; $7bb6: $1f
	ld   d, e                                        ; $7bb7: $53
	ld   hl, sp+$6e                                  ; $7bb8: $f8 $6e
	sub  [hl]                                        ; $7bba: $96
	ret  z                                           ; $7bbb: $c8

	ld   h, [hl]                                     ; $7bbc: $66
	add  hl, de                                      ; $7bbd: $19
	ld   [hl], c                                     ; $7bbe: $71
	ei                                               ; $7bbf: $fb
	rra                                              ; $7bc0: $1f
	push bc                                          ; $7bc1: $c5
	db   $db                                         ; $7bc2: $db
	ld   e, e                                        ; $7bc3: $5b
	and  [hl]                                        ; $7bc4: $a6
	ld   [hl], c                                     ; $7bc5: $71
	ld   a, c                                        ; $7bc6: $79
	inc  e                                           ; $7bc7: $1c
	pop  de                                          ; $7bc8: $d1
	cp   $5d                                         ; $7bc9: $fe $5d

jr_0ca_7bcb:
	or   [hl]                                        ; $7bcb: $b6
	cp   e                                           ; $7bcc: $bb
	ld   d, a                                        ; $7bcd: $57
	dec  h                                           ; $7bce: $25
	and  c                                           ; $7bcf: $a1
	sbc  a                                           ; $7bd0: $9f
	dec  e                                           ; $7bd1: $1d
	db   $f4                                         ; $7bd2: $f4
	cp   l                                           ; $7bd3: $bd
	ld   l, c                                        ; $7bd4: $69
	or   l                                           ; $7bd5: $b5
	ld   [hl], d                                     ; $7bd6: $72

jr_0ca_7bd7:
	ld   e, d                                        ; $7bd7: $5a
	jr   jr_0ca_7bcb                                 ; $7bd8: $18 $f1

	cp   a                                           ; $7bda: $bf
	ld   e, d                                        ; $7bdb: $5a
	rst  $20                                         ; $7bdc: $e7
	adc  e                                           ; $7bdd: $8b
	ld   h, [hl]                                     ; $7bde: $66
	dec  h                                           ; $7bdf: $25
	and  c                                           ; $7be0: $a1
	sbc  a                                           ; $7be1: $9f
	dec  de                                          ; $7be2: $1b
	push af                                          ; $7be3: $f5
	xor  l                                           ; $7be4: $ad
	ld   a, c                                        ; $7be5: $79
	or   [hl]                                        ; $7be6: $b6
	ld   h, d                                        ; $7be7: $62
	ld   l, d                                        ; $7be8: $6a
	add  hl, de                                      ; $7be9: $19
	pop  de                                          ; $7bea: $d1
	adc  $5c                                         ; $7beb: $ce $5c
	rst  ToBoot                                         ; $7bed: $c7
	xor  d                                           ; $7bee: $aa
	ld   h, [hl]                                     ; $7bef: $66
	daa                                              ; $7bf0: $27
	sub  c                                           ; $7bf1: $91
	cp   e                                           ; $7bf2: $bb
	ld   e, $e5                                      ; $7bf3: $1e $e5
	cp   l                                           ; $7bf5: $bd
	ld   a, d                                        ; $7bf6: $7a
	and  [hl]                                        ; $7bf7: $a6
	ld   h, d                                        ; $7bf8: $62
	sub  [hl]                                        ; $7bf9: $96
	ld   e, $82                                      ; $7bfa: $1e $82
	ei                                               ; $7bfc: $fb
	ld   l, h                                        ; $7bfd: $6c
	rst  ToBoot                                         ; $7bfe: $c7
	xor  c                                           ; $7bff: $a9
	ld   [hl], h                                     ; $7c00: $74
	ld   a, [hl+]                                    ; $7c01: $2a
	ld   sp, $4ff5                                   ; $7c02: $31 $f5 $4f
	and  a                                           ; $7c05: $a7
	jp   c, $878b                                    ; $7c06: $da $8b $87

	inc  sp                                          ; $7c09: $33
	pop  bc                                          ; $7c0a: $c1
	ld   c, a                                        ; $7c0b: $4f
	scf                                              ; $7c0c: $37
	ld   sp, hl                                      ; $7c0d: $f9
	adc  l                                           ; $7c0e: $8d
	xor  c                                           ; $7c0f: $a9
	and  a                                           ; $7c10: $a7
	ld   [hl], c                                     ; $7c11: $71
	ld   l, d                                        ; $7c12: $6a
	jr   jr_0ca_7bd7                                 ; $7c13: $18 $c2

	xor  l                                           ; $7c15: $ad
	adc  d                                           ; $7c16: $8a
	ret                                              ; $7c17: $c9


	xor  c                                           ; $7c18: $a9
	add  a                                           ; $7c19: $87
	add  hl, bc                                      ; $7c1a: $09
	ld   h, c                                        ; $7c1b: $61
	ret                                              ; $7c1c: $c9


	inc  a                                           ; $7c1d: $3c
	cp   b                                           ; $7c1e: $b8
	cp   e                                           ; $7c1f: $bb
	xor  e                                           ; $7c20: $ab
	ld   l, b                                        ; $7c21: $68
	ld   d, c                                        ; $7c22: $51
	or   e                                           ; $7c23: $b3
	inc  l                                           ; $7c24: $2c
	halt                                             ; $7c25: $76
	jp   z, $9b9a                                    ; $7c26: $ca $9a $9b

	and  [hl]                                        ; $7c29: $a6
	sub  e                                           ; $7c2a: $93
	ld   c, b                                        ; $7c2b: $48
	ld   h, $a6                                      ; $7c2c: $26 $a6
	sbc  d                                           ; $7c2e: $9a
	xor  d                                           ; $7c2f: $aa
	cp   c                                           ; $7c30: $b9
	cp   c                                           ; $7c31: $b9
	ld   h, a                                        ; $7c32: $67
	scf                                              ; $7c33: $37
	ld   h, d                                        ; $7c34: $62
	sbc  c                                           ; $7c35: $99
	ld   a, c                                        ; $7c36: $79
	xor  e                                           ; $7c37: $ab
	cp   e                                           ; $7c38: $bb
	xor  e                                           ; $7c39: $ab
	sub  a                                           ; $7c3a: $97
	ld   d, e                                        ; $7c3b: $53
	add  l                                           ; $7c3c: $85
	ld   c, b                                        ; $7c3d: $48
	ld   l, c                                        ; $7c3e: $69
	xor  c                                           ; $7c3f: $a9
	xor  d                                           ; $7c40: $aa
	xor  e                                           ; $7c41: $ab
	xor  b                                           ; $7c42: $a8
	ld   [hl], h                                     ; $7c43: $74
	ld   b, a                                        ; $7c44: $47
	ld   b, [hl]                                     ; $7c45: $46
	add  [hl]                                        ; $7c46: $86
	sbc  d                                           ; $7c47: $9a
	xor  d                                           ; $7c48: $aa
	cp   d                                           ; $7c49: $ba
	xor  d                                           ; $7c4a: $aa
	sub  a                                           ; $7c4b: $97
	ld   d, h                                        ; $7c4c: $54
	ld   d, l                                        ; $7c4d: $55
	ld   a, c                                        ; $7c4e: $79
	ld   a, b                                        ; $7c4f: $78
	xor  d                                           ; $7c50: $aa
	xor  e                                           ; $7c51: $ab
	xor  d                                           ; $7c52: $aa
	sbc  b                                           ; $7c53: $98
	ld   [hl], l                                     ; $7c54: $75
	ld   d, l                                        ; $7c55: $55
	ld   d, a                                        ; $7c56: $57
	adc  b                                           ; $7c57: $88
	sbc  c                                           ; $7c58: $99
	sbc  c                                           ; $7c59: $99
	cp   e                                           ; $7c5a: $bb
	xor  c                                           ; $7c5b: $a9
	sub  a                                           ; $7c5c: $97
	ld   d, l                                        ; $7c5d: $55
	ld   d, l                                        ; $7c5e: $55
	ld   a, b                                        ; $7c5f: $78
	adc  c                                           ; $7c60: $89
	sbc  c                                           ; $7c61: $99
	sbc  d                                           ; $7c62: $9a
	xor  e                                           ; $7c63: $ab
	xor  c                                           ; $7c64: $a9
	halt                                             ; $7c65: $76
	ld   h, l                                        ; $7c66: $65
	ld   h, a                                        ; $7c67: $67
	ld   a, c                                        ; $7c68: $79
	adc  c                                           ; $7c69: $89
	adc  b                                           ; $7c6a: $88
	xor  d                                           ; $7c6b: $aa
	sbc  d                                           ; $7c6c: $9a
	xor  b                                           ; $7c6d: $a8
	ld   [hl], a                                     ; $7c6e: $77
	ld   d, [hl]                                     ; $7c6f: $56
	ld   [hl], a                                     ; $7c70: $77
	sbc  b                                           ; $7c71: $98
	ld   a, b                                        ; $7c72: $78
	sbc  b                                           ; $7c73: $98
	sbc  d                                           ; $7c74: $9a
	sbc  d                                           ; $7c75: $9a
	adc  b                                           ; $7c76: $88
	halt                                             ; $7c77: $76
	ld   h, a                                        ; $7c78: $67
	ld   a, b                                        ; $7c79: $78
	add  a                                           ; $7c7a: $87
	ld   a, b                                        ; $7c7b: $78
	ld   a, b                                        ; $7c7c: $78
	sbc  c                                           ; $7c7d: $99
	xor  c                                           ; $7c7e: $a9
	sbc  b                                           ; $7c7f: $98
	halt                                             ; $7c80: $76
	ld   [hl], a                                     ; $7c81: $77
	ld   a, b                                        ; $7c82: $78
	ld   [hl], a                                     ; $7c83: $77
	add  a                                           ; $7c84: $87
	ld   a, c                                        ; $7c85: $79
	xor  c                                           ; $7c86: $a9
	xor  c                                           ; $7c87: $a9
	sub  a                                           ; $7c88: $97
	ld   h, a                                        ; $7c89: $67
	ld   [hl], a                                     ; $7c8a: $77
	sub  a                                           ; $7c8b: $97
	ld   a, b                                        ; $7c8c: $78
	ld   [hl], a                                     ; $7c8d: $77
	sbc  c                                           ; $7c8e: $99
	xor  d                                           ; $7c8f: $aa
	xor  c                                           ; $7c90: $a9
	sub  [hl]                                        ; $7c91: $96
	ld   [hl], a                                     ; $7c92: $77
	ld   a, b                                        ; $7c93: $78
	add  a                                           ; $7c94: $87
	ld   [hl], a                                     ; $7c95: $77
	ld   a, b                                        ; $7c96: $78
	sbc  c                                           ; $7c97: $99
	xor  d                                           ; $7c98: $aa
	sbc  b                                           ; $7c99: $98
	halt                                             ; $7c9a: $76
	ld   [hl], a                                     ; $7c9b: $77
	ld   a, b                                        ; $7c9c: $78
	ld   [hl], a                                     ; $7c9d: $77
	ld   [hl], a                                     ; $7c9e: $77
	adc  c                                           ; $7c9f: $89
	sbc  c                                           ; $7ca0: $99
	cp   c                                           ; $7ca1: $b9
	adc  b                                           ; $7ca2: $88
	ld   h, a                                        ; $7ca3: $67
	add  a                                           ; $7ca4: $87
	adc  b                                           ; $7ca5: $88
	ld   [hl], a                                     ; $7ca6: $77
	ld   [hl], a                                     ; $7ca7: $77
	sbc  c                                           ; $7ca8: $99
	xor  e                                           ; $7ca9: $ab
	sbc  b                                           ; $7caa: $98
	add  a                                           ; $7cab: $87
	ld   a, b                                        ; $7cac: $78
	ld   [hl], a                                     ; $7cad: $77
	sub  a                                           ; $7cae: $97
	ld   [hl], a                                     ; $7caf: $77
	ld   a, b                                        ; $7cb0: $78
	sbc  c                                           ; $7cb1: $99
	xor  d                                           ; $7cb2: $aa
	sbc  b                                           ; $7cb3: $98
	add  [hl]                                        ; $7cb4: $86
	add  a                                           ; $7cb5: $87
	ld   a, c                                        ; $7cb6: $79
	ld   [hl], a                                     ; $7cb7: $77
	ld   [hl], a                                     ; $7cb8: $77
	ld   a, b                                        ; $7cb9: $78
	sbc  d                                           ; $7cba: $9a
	xor  c                                           ; $7cbb: $a9
	adc  c                                           ; $7cbc: $89
	ld   [hl], a                                     ; $7cbd: $77
	ld   [hl], a                                     ; $7cbe: $77
	adc  b                                           ; $7cbf: $88
	ld   [hl], a                                     ; $7cc0: $77
	ld   [hl], a                                     ; $7cc1: $77
	ld   a, b                                        ; $7cc2: $78
	sbc  c                                           ; $7cc3: $99
	xor  c                                           ; $7cc4: $a9
	sbc  b                                           ; $7cc5: $98
	ld   [hl], a                                     ; $7cc6: $77
	ld   [hl], a                                     ; $7cc7: $77
	add  a                                           ; $7cc8: $87
	ld   [hl], a                                     ; $7cc9: $77
	ld   [hl], a                                     ; $7cca: $77
	adc  c                                           ; $7ccb: $89
	xor  d                                           ; $7ccc: $aa
	xor  b                                           ; $7ccd: $a8
	sub  a                                           ; $7cce: $97
	ld   a, b                                        ; $7ccf: $78
	ld   a, b                                        ; $7cd0: $78
	add  a                                           ; $7cd1: $87
	ld   [hl], a                                     ; $7cd2: $77
	ld   a, b                                        ; $7cd3: $78
	sbc  c                                           ; $7cd4: $99
	xor  d                                           ; $7cd5: $aa
	sbc  c                                           ; $7cd6: $99
	add  a                                           ; $7cd7: $87
	adc  b                                           ; $7cd8: $88
	ld   a, c                                        ; $7cd9: $79
	add  a                                           ; $7cda: $87
	ld   [hl], a                                     ; $7cdb: $77
	ld   a, c                                        ; $7cdc: $79
	sbc  d                                           ; $7cdd: $9a
	cp   c                                           ; $7cde: $b9
	sbc  b                                           ; $7cdf: $98
	ld   [hl], a                                     ; $7ce0: $77
	add  a                                           ; $7ce1: $87
	adc  c                                           ; $7ce2: $89
	ld   [hl], a                                     ; $7ce3: $77
	ld   [hl], a                                     ; $7ce4: $77
	ld   a, b                                        ; $7ce5: $78
	sbc  d                                           ; $7ce6: $9a
	xor  c                                           ; $7ce7: $a9
	adc  b                                           ; $7ce8: $88
	ld   a, b                                        ; $7ce9: $78
	ld   [hl], a                                     ; $7cea: $77
	sub  a                                           ; $7ceb: $97
	ld   [hl], a                                     ; $7cec: $77
	ld   h, a                                        ; $7ced: $67
	adc  b                                           ; $7cee: $88
	xor  d                                           ; $7cef: $aa
	xor  b                                           ; $7cf0: $a8
	sub  a                                           ; $7cf1: $97
	ld   a, b                                        ; $7cf2: $78
	ld   a, b                                        ; $7cf3: $78
	add  a                                           ; $7cf4: $87
	ld   [hl], a                                     ; $7cf5: $77
	ld   [hl], a                                     ; $7cf6: $77
	sbc  c                                           ; $7cf7: $99
	sbc  d                                           ; $7cf8: $9a
	sbc  b                                           ; $7cf9: $98
	add  a                                           ; $7cfa: $87
	add  a                                           ; $7cfb: $87
	ld   a, b                                        ; $7cfc: $78
	ld   [hl], a                                     ; $7cfd: $77
	ld   [hl], a                                     ; $7cfe: $77
	ld   a, b                                        ; $7cff: $78
	adc  c                                           ; $7d00: $89
	xor  d                                           ; $7d01: $aa
	sbc  c                                           ; $7d02: $99
	ld   [hl], a                                     ; $7d03: $77
	add  a                                           ; $7d04: $87
	adc  b                                           ; $7d05: $88
	ld   [hl], a                                     ; $7d06: $77
	ld   [hl], a                                     ; $7d07: $77
	ld   a, c                                        ; $7d08: $79
	sbc  c                                           ; $7d09: $99
	xor  c                                           ; $7d0a: $a9
	adc  b                                           ; $7d0b: $88
	ld   [hl], a                                     ; $7d0c: $77
	add  a                                           ; $7d0d: $87
	add  a                                           ; $7d0e: $87
	ld   [hl], a                                     ; $7d0f: $77
	ld   h, a                                        ; $7d10: $67
	adc  c                                           ; $7d11: $89
	sbc  d                                           ; $7d12: $9a
	xor  b                                           ; $7d13: $a8
	add  a                                           ; $7d14: $87
	ld   a, b                                        ; $7d15: $78
	ld   a, b                                        ; $7d16: $78
	add  a                                           ; $7d17: $87
	ld   [hl], a                                     ; $7d18: $77
	ld   h, a                                        ; $7d19: $67
	adc  b                                           ; $7d1a: $88
	sbc  d                                           ; $7d1b: $9a
	sbc  c                                           ; $7d1c: $99
	add  a                                           ; $7d1d: $87
	adc  b                                           ; $7d1e: $88
	ld   a, b                                        ; $7d1f: $78
	ld   [hl], a                                     ; $7d20: $77
	halt                                             ; $7d21: $76
	ld   a, b                                        ; $7d22: $78
	sbc  c                                           ; $7d23: $99
	xor  d                                           ; $7d24: $aa
	sbc  b                                           ; $7d25: $98
	ld   [hl], a                                     ; $7d26: $77
	add  a                                           ; $7d27: $87
	adc  b                                           ; $7d28: $88
	ld   [hl], a                                     ; $7d29: $77
	halt                                             ; $7d2a: $76
	ld   a, b                                        ; $7d2b: $78
	adc  c                                           ; $7d2c: $89
	xor  c                                           ; $7d2d: $a9
	sbc  b                                           ; $7d2e: $98
	ld   a, b                                        ; $7d2f: $78
	add  a                                           ; $7d30: $87
	sub  a                                           ; $7d31: $97
	ld   [hl], a                                     ; $7d32: $77
	ld   h, a                                        ; $7d33: $67
	adc  c                                           ; $7d34: $89
	sbc  d                                           ; $7d35: $9a
	xor  c                                           ; $7d36: $a9
	add  a                                           ; $7d37: $87
	ld   a, b                                        ; $7d38: $78
	ld   a, b                                        ; $7d39: $78
	add  a                                           ; $7d3a: $87
	ld   [hl], a                                     ; $7d3b: $77
	ld   h, a                                        ; $7d3c: $67
	adc  b                                           ; $7d3d: $88
	sbc  d                                           ; $7d3e: $9a
	sbc  c                                           ; $7d3f: $99
	add  a                                           ; $7d40: $87
	adc  b                                           ; $7d41: $88
	adc  c                                           ; $7d42: $89
	ld   [hl], a                                     ; $7d43: $77
	halt                                             ; $7d44: $76
	ld   a, b                                        ; $7d45: $78
	sbc  c                                           ; $7d46: $99
	xor  d                                           ; $7d47: $aa
	sbc  c                                           ; $7d48: $99
	ld   [hl], a                                     ; $7d49: $77
	add  a                                           ; $7d4a: $87
	sbc  b                                           ; $7d4b: $98
	ld   [hl], a                                     ; $7d4c: $77
	ld   h, [hl]                                     ; $7d4d: $66
	ld   a, b                                        ; $7d4e: $78
	sbc  c                                           ; $7d4f: $99
	sbc  c                                           ; $7d50: $99
	sbc  b                                           ; $7d51: $98
	ld   a, b                                        ; $7d52: $78
	adc  b                                           ; $7d53: $88
	sub  a                                           ; $7d54: $97
	ld   [hl], a                                     ; $7d55: $77
	ld   h, a                                        ; $7d56: $67
	adc  c                                           ; $7d57: $89
	xor  d                                           ; $7d58: $aa
	sbc  c                                           ; $7d59: $99
	sub  a                                           ; $7d5a: $97
	adc  b                                           ; $7d5b: $88
	ld   a, c                                        ; $7d5c: $79
	add  a                                           ; $7d5d: $87
	halt                                             ; $7d5e: $76
	ld   h, a                                        ; $7d5f: $67
	adc  c                                           ; $7d60: $89
	xor  c                                           ; $7d61: $a9
	sbc  c                                           ; $7d62: $99
	ld   [hl], a                                     ; $7d63: $77
	sbc  b                                           ; $7d64: $98
	adc  c                                           ; $7d65: $89
	ld   [hl], a                                     ; $7d66: $77
	halt                                             ; $7d67: $76
	ld   a, b                                        ; $7d68: $78
	adc  d                                           ; $7d69: $8a
	xor  c                                           ; $7d6a: $a9
	sbc  c                                           ; $7d6b: $99
	ld   a, b                                        ; $7d6c: $78
	add  a                                           ; $7d6d: $87
	sub  a                                           ; $7d6e: $97
	ld   [hl], a                                     ; $7d6f: $77
	ld   h, [hl]                                     ; $7d70: $66
	ld   a, c                                        ; $7d71: $79
	sbc  d                                           ; $7d72: $9a
	xor  c                                           ; $7d73: $a9
	add  a                                           ; $7d74: $87
	ld   a, c                                        ; $7d75: $79
	ld   a, b                                        ; $7d76: $78
	add  a                                           ; $7d77: $87
	halt                                             ; $7d78: $76
	ld   h, a                                        ; $7d79: $67
	adc  b                                           ; $7d7a: $88
	sbc  d                                           ; $7d7b: $9a
	sbc  c                                           ; $7d7c: $99
	add  a                                           ; $7d7d: $87
	adc  b                                           ; $7d7e: $88
	adc  c                                           ; $7d7f: $89
	ld   [hl], a                                     ; $7d80: $77
	halt                                             ; $7d81: $76
	ld   [hl], a                                     ; $7d82: $77
	sbc  c                                           ; $7d83: $99
	xor  d                                           ; $7d84: $aa
	sbc  b                                           ; $7d85: $98
	ld   [hl], a                                     ; $7d86: $77
	add  a                                           ; $7d87: $87
	sbc  b                                           ; $7d88: $98
	ld   [hl], a                                     ; $7d89: $77
	ld   h, [hl]                                     ; $7d8a: $66
	ld   a, b                                        ; $7d8b: $78
	sbc  d                                           ; $7d8c: $9a
	xor  c                                           ; $7d8d: $a9
	sbc  b                                           ; $7d8e: $98
	ld   a, b                                        ; $7d8f: $78
	adc  b                                           ; $7d90: $88
	sub  a                                           ; $7d91: $97
	ld   [hl], a                                     ; $7d92: $77
	ld   h, a                                        ; $7d93: $67
	adc  c                                           ; $7d94: $89
	sbc  d                                           ; $7d95: $9a
	xor  c                                           ; $7d96: $a9
	add  a                                           ; $7d97: $87
	ld   a, b                                        ; $7d98: $78
	ld   a, c                                        ; $7d99: $79
	add  a                                           ; $7d9a: $87
	halt                                             ; $7d9b: $76
	ld   h, a                                        ; $7d9c: $67
	adc  c                                           ; $7d9d: $89
	xor  d                                           ; $7d9e: $aa
	sbc  c                                           ; $7d9f: $99
	add  a                                           ; $7da0: $87
	adc  b                                           ; $7da1: $88
	adc  c                                           ; $7da2: $89
	ld   [hl], a                                     ; $7da3: $77
	halt                                             ; $7da4: $76
	ld   l, b                                        ; $7da5: $68
	sbc  c                                           ; $7da6: $99
	xor  c                                           ; $7da7: $a9

Jump_0ca_7da8:
	sbc  b                                           ; $7da8: $98
	ld   [hl], a                                     ; $7da9: $77
	add  a                                           ; $7daa: $87
	adc  b                                           ; $7dab: $88
	ld   [hl], a                                     ; $7dac: $77
	ld   h, [hl]                                     ; $7dad: $66
	ld   a, b                                        ; $7dae: $78
	adc  d                                           ; $7daf: $8a
	xor  c                                           ; $7db0: $a9
	sbc  b                                           ; $7db1: $98
	ld   a, b                                        ; $7db2: $78
	add  a                                           ; $7db3: $87
	sub  a                                           ; $7db4: $97
	ld   [hl], a                                     ; $7db5: $77
	ld   h, [hl]                                     ; $7db6: $66
	ld   a, b                                        ; $7db7: $78
	sbc  d                                           ; $7db8: $9a
	sbc  c                                           ; $7db9: $99
	sub  a                                           ; $7dba: $97
	ld   a, b                                        ; $7dbb: $78
	ld   a, b                                        ; $7dbc: $78
	sub  a                                           ; $7dbd: $97
	halt                                             ; $7dbe: $76
	ld   h, a                                        ; $7dbf: $67
	adc  c                                           ; $7dc0: $89
	sbc  e                                           ; $7dc1: $9b
	xor  c                                           ; $7dc2: $a9
	sub  a                                           ; $7dc3: $97
	ld   a, b                                        ; $7dc4: $78
	ld   a, c                                        ; $7dc5: $79
	add  a                                           ; $7dc6: $87
	halt                                             ; $7dc7: $76
	ld   h, a                                        ; $7dc8: $67
	adc  b                                           ; $7dc9: $88
	xor  d                                           ; $7dca: $aa
	sbc  c                                           ; $7dcb: $99
	add  a                                           ; $7dcc: $87
	adc  b                                           ; $7dcd: $88
	ld   a, c                                        ; $7dce: $79
	ld   [hl], a                                     ; $7dcf: $77
	halt                                             ; $7dd0: $76
	ld   h, a                                        ; $7dd1: $67
	adc  c                                           ; $7dd2: $89
	cp   d                                           ; $7dd3: $ba
	sbc  c                                           ; $7dd4: $99
	ld   [hl], a                                     ; $7dd5: $77
	add  a                                           ; $7dd6: $87
	adc  c                                           ; $7dd7: $89
	ld   [hl], a                                     ; $7dd8: $77
	ld   h, [hl]                                     ; $7dd9: $66
	ld   l, b                                        ; $7dda: $68
	sbc  c                                           ; $7ddb: $99
	cp   c                                           ; $7ddc: $b9
	sbc  b                                           ; $7ddd: $98
	ld   [hl], a                                     ; $7dde: $77
	add  a                                           ; $7ddf: $87
	adc  b                                           ; $7de0: $88
	ld   [hl], a                                     ; $7de1: $77
	ld   h, [hl]                                     ; $7de2: $66
	ld   a, b                                        ; $7de3: $78
	adc  d                                           ; $7de4: $8a
	cp   d                                           ; $7de5: $ba
	sbc  b                                           ; $7de6: $98
	ld   [hl], a                                     ; $7de7: $77
	add  a                                           ; $7de8: $87
	sbc  b                                           ; $7de9: $98
	ld   [hl], a                                     ; $7dea: $77
	ld   h, [hl]                                     ; $7deb: $66
	ld   a, b                                        ; $7dec: $78
	sbc  e                                           ; $7ded: $9b
	xor  d                                           ; $7dee: $aa
	sbc  b                                           ; $7def: $98
	ld   a, b                                        ; $7df0: $78
	ld   [hl], a                                     ; $7df1: $77
	sub  a                                           ; $7df2: $97
	ld   [hl], a                                     ; $7df3: $77
	ld   h, [hl]                                     ; $7df4: $66
	ld   a, c                                        ; $7df5: $79
	xor  d                                           ; $7df6: $aa
	xor  d                                           ; $7df7: $aa
	sub  a                                           ; $7df8: $97
	ld   a, b                                        ; $7df9: $78
	ld   [hl], a                                     ; $7dfa: $77
	sub  a                                           ; $7dfb: $97
	halt                                             ; $7dfc: $76
	ld   h, [hl]                                     ; $7dfd: $66
	adc  c                                           ; $7dfe: $89
	sbc  d                                           ; $7dff: $9a
	xor  d                                           ; $7e00: $aa
	add  a                                           ; $7e01: $87
	ld   a, b                                        ; $7e02: $78
	ld   a, b                                        ; $7e03: $78
	add  a                                           ; $7e04: $87
	halt                                             ; $7e05: $76
	ld   h, a                                        ; $7e06: $67
	adc  b                                           ; $7e07: $88
	xor  d                                           ; $7e08: $aa
	xor  d                                           ; $7e09: $aa

jr_0ca_7e0a:
	add  a                                           ; $7e0a: $87
	ld   [hl], a                                     ; $7e0b: $77
	ld   a, b                                        ; $7e0c: $78
	add  a                                           ; $7e0d: $87
	halt                                             ; $7e0e: $76
	ld   h, a                                        ; $7e0f: $67
	adc  c                                           ; $7e10: $89
	xor  e                                           ; $7e11: $ab
	xor  c                                           ; $7e12: $a9
	add  l                                           ; $7e13: $85
	ld   d, a                                        ; $7e14: $57
	ld   a, c                                        ; $7e15: $79
	sub  a                                           ; $7e16: $97
	halt                                             ; $7e17: $76
	ld   e, c                                        ; $7e18: $59
	cp   l                                           ; $7e19: $bd
	ld   [$5654], a                                  ; $7e1a: $ea $54 $56
	adc  c                                           ; $7e1d: $89
	ld   h, [hl]                                     ; $7e1e: $66
	ld   d, [hl]                                     ; $7e1f: $56
	sbc  h                                           ; $7e20: $9c
	xor  d                                           ; $7e21: $aa
	cp   d                                           ; $7e22: $ba
	or   a                                           ; $7e23: $b7
	ld   b, a                                        ; $7e24: $47
	ld   d, l                                        ; $7e25: $55
	ld   [hl], l                                     ; $7e26: $75
	ld   e, b                                        ; $7e27: $58
	sbc  d                                           ; $7e28: $9a
	cp   d                                           ; $7e29: $ba
	cp   h                                           ; $7e2a: $bc
	sbc  c                                           ; $7e2b: $99
	ld   d, e                                        ; $7e2c: $53
	sub  h                                           ; $7e2d: $94
	jr   z, jr_0ca_7e86                              ; $7e2e: $28 $56

	xor  c                                           ; $7e30: $a9
	xor  l                                           ; $7e31: $ad
	xor  h                                           ; $7e32: $ac
	ret  c                                           ; $7e33: $d8

	and  h                                           ; $7e34: $a4
	dec  sp                                          ; $7e35: $3b
	ld   [de], a                                     ; $7e36: $12
	or   h                                           ; $7e37: $b4
	ld   e, h                                        ; $7e38: $5c
	xor  c                                           ; $7e39: $a9
	call c, $89bc                                    ; $7e3a: $dc $bc $89
	dec  [hl]                                        ; $7e3d: $35
	or   c                                           ; $7e3e: $b1
	ld   c, l                                        ; $7e3f: $4d
	ld   b, $e6                                      ; $7e40: $06 $e6
	sbc  a                                           ; $7e42: $9f
	sbc  e                                           ; $7e43: $9b
	ret  c                                           ; $7e44: $d8

	add  d                                           ; $7e45: $82
	ld   a, c                                        ; $7e46: $79
	jr   jr_0ca_7e0a                                 ; $7e47: $18 $c1

	xor  [hl]                                        ; $7e49: $ae
	inc  a                                           ; $7e4a: $3c
	or   $ce                                         ; $7e4b: $f6 $ce
	ld   l, c                                        ; $7e4d: $69
	scf                                              ; $7e4e: $37
	ld   [hl], c                                     ; $7e4f: $71
	xor  c                                           ; $7e50: $a9
	ld   e, $d2                                      ; $7e51: $1e $d2
	rst  $38                                         ; $7e53: $ff
	ld   e, a                                        ; $7e54: $5f
	call nc, Call_0ca_68b2                           ; $7e55: $d4 $b2 $68
	dec  de                                          ; $7e58: $1b
	add  c                                           ; $7e59: $81
	ld   a, [$c53f]                                  ; $7e5a: $fa $3f $c5
	ld   a, [$175b]                                  ; $7e5d: $fa $5b $17
	add  c                                           ; $7e60: $81
	ret  z                                           ; $7e61: $c8

	rra                                              ; $7e62: $1f
	sub  e                                           ; $7e63: $93
	ld   a, [$766f]                                  ; $7e64: $fa $6f $76
	pop  de                                          ; $7e67: $d1
	adc  c                                           ; $7e68: $89
	ld   e, $71                                      ; $7e69: $1e $71
	rst  $30                                         ; $7e6b: $f7
	ld   c, a                                        ; $7e6c: $4f
	ld   a, b                                        ; $7e6d: $78
	or   $8c                                         ; $7e6e: $f6 $8c
	ld   a, [de]                                     ; $7e70: $1a
	add  c                                           ; $7e71: $81
	push af                                          ; $7e72: $f5
	rra                                              ; $7e73: $1f
	ld   d, [hl]                                     ; $7e74: $56
	or   $9f                                         ; $7e75: $f6 $9f
	ld   e, d                                        ; $7e77: $5a
	or   c                                           ; $7e78: $b1
	or   a                                           ; $7e79: $b7
	rra                                              ; $7e7a: $1f
	ld   b, c                                        ; $7e7b: $41
	di                                               ; $7e7c: $f3
	ld   a, a                                        ; $7e7d: $7f
	ld   e, h                                        ; $7e7e: $5c
	push af                                          ; $7e7f: $f5
	cp   e                                           ; $7e80: $bb
	inc  e                                           ; $7e81: $1c
	ld   h, c                                        ; $7e82: $61
	di                                               ; $7e83: $f3
	rra                                              ; $7e84: $1f
	add  hl, hl                                      ; $7e85: $29

jr_0ca_7e86:
	push af                                          ; $7e86: $f5
	sbc  $6b                                         ; $7e87: $de $6b
	and  c                                           ; $7e89: $a1
	or   [hl]                                        ; $7e8a: $b6
	rra                                              ; $7e8b: $1f
	ld   hl, $aff2                                   ; $7e8c: $21 $f2 $af
	ld   e, h                                        ; $7e8f: $5c
	and  $b9                                         ; $7e90: $e6 $b9
	inc  e                                           ; $7e92: $1c
	ld   d, c                                        ; $7e93: $51
	ldh  a, [c]                                      ; $7e94: $f2
	cpl                                              ; $7e95: $2f
	dec  de                                          ; $7e96: $1b
	push af                                          ; $7e97: $f5
	db   $dd                                         ; $7e98: $dd
	ld   a, e                                        ; $7e99: $7b
	sub  c                                           ; $7e9a: $91
	call nz, $131f                                   ; $7e9b: $c4 $1f $13
	pop  af                                          ; $7e9e: $f1
	adc  $6e                                         ; $7e9f: $ce $6e
	rst  $10                                         ; $7ea1: $d7
	cp   c                                           ; $7ea2: $b9
	inc  e                                           ; $7ea3: $1c
	ld   sp, $5ff1                                   ; $7ea4: $31 $f1 $5f
	ld   e, $c6                                      ; $7ea7: $1e $c6
	db   $ed                                         ; $7ea9: $ed
	ld   a, h                                        ; $7eaa: $7c
	ld   [hl], c                                     ; $7eab: $71
	pop  de                                          ; $7eac: $d1
	rra                                              ; $7ead: $1f
	rla                                              ; $7eae: $17
	pop  hl                                          ; $7eaf: $e1
	ei                                               ; $7eb0: $fb
	ld   a, [hl]                                     ; $7eb1: $7e
	cp   b                                           ; $7eb2: $b8
	or   [hl]                                        ; $7eb3: $b6
	dec  e                                           ; $7eb4: $1d
	ld   [de], a                                     ; $7eb5: $12
	pop  af                                          ; $7eb6: $f1
	xor  l                                           ; $7eb7: $ad
	cpl                                              ; $7eb8: $2f
	sbc  b                                           ; $7eb9: $98
	db   $eb                                         ; $7eba: $eb
	adc  h                                           ; $7ebb: $8c
	ld   d, d                                        ; $7ebc: $52
	pop  de                                          ; $7ebd: $d1
	ld   c, l                                        ; $7ebe: $4d
	dec  e                                           ; $7ebf: $1d
	and  e                                           ; $7ec0: $a3
	ld   sp, hl                                      ; $7ec1: $f9
	xor  [hl]                                        ; $7ec2: $ae
	cp   b                                           ; $7ec3: $b8
	or   h                                           ; $7ec4: $b4
	ld   c, l                                        ; $7ec5: $4d
	rla                                              ; $7ec6: $17
	or   c                                           ; $7ec7: $b1
	rst  $30                                         ; $7ec8: $f7
	ld   e, a                                        ; $7ec9: $5f
	ld   a, e                                        ; $7eca: $7b
	db   $eb                                         ; $7ecb: $eb
	adc  e                                           ; $7ecc: $8b
	ld   [hl], $c1                                   ; $7ecd: $36 $c1
	cp   b                                           ; $7ecf: $b8
	rra                                              ; $7ed0: $1f
	ld   c, b                                        ; $7ed1: $48
	rst  $30                                         ; $7ed2: $f7
	call c, $b2b9                                    ; $7ed3: $dc $b9 $b2
	sbc  c                                           ; $7ed6: $99
	dec  e                                           ; $7ed7: $1d
	ld   sp, $bdf2                                   ; $7ed8: $31 $f2 $bd
	ld   a, l                                        ; $7edb: $7d
	res  5, d                                        ; $7edc: $cb $aa
	ld   a, [de]                                     ; $7ede: $1a
	ld   d, c                                        ; $7edf: $51
	pop  af                                          ; $7ee0: $f1
	ld   e, [hl]                                     ; $7ee1: $5e
	dec  e                                           ; $7ee2: $1d
	xor  c                                           ; $7ee3: $a9
	call c, $92b9                                    ; $7ee4: $dc $b9 $92
	pop  de                                          ; $7ee7: $d1
	rra                                              ; $7ee8: $1f
	ld   a, [de]                                     ; $7ee9: $1a
	and  e                                           ; $7eea: $a3
	rst  $30                                         ; $7eeb: $f7
	call $a6ca                                       ; $7eec: $cd $ca $a6
	ld   c, h                                        ; $7eef: $4c
	rla                                              ; $7ef0: $17
	and  c                                           ; $7ef1: $a1
	push hl                                          ; $7ef2: $e5
	ld   l, [hl]                                     ; $7ef3: $6e
	ld   a, l                                        ; $7ef4: $7d
	cp   h                                           ; $7ef5: $bc
	xor  d                                           ; $7ef6: $aa
	ld   d, [hl]                                     ; $7ef7: $56
	or   c                                           ; $7ef8: $b1
	or   l                                           ; $7ef9: $b5
	rra                                              ; $7efa: $1f
	dec  hl                                          ; $7efb: $2b
	cp   b                                           ; $7efc: $b8
	ld   [$a3c9], a                                  ; $7efd: $ea $c9 $a3
	sub  [hl]                                        ; $7f00: $96
	ld   e, $15                                      ; $7f01: $1e $15
	pop  bc                                          ; $7f03: $c1
	reti                                             ; $7f04: $d9


	cp   h                                           ; $7f05: $bc
	call z, $2b89                                    ; $7f06: $cc $89 $2b
	ld   [hl+], a                                    ; $7f09: $22
	pop  hl                                          ; $7f0a: $e1
	xor  b                                           ; $7f0b: $a8
	ld   c, [hl]                                     ; $7f0c: $4e
	ld   a, l                                        ; $7f0d: $7d
	xor  l                                           ; $7f0e: $ad
	xor  c                                           ; $7f0f: $a9
	add  h                                           ; $7f10: $84
	pop  bc                                          ; $7f11: $c1
	sbc  b                                           ; $7f12: $98
	rra                                              ; $7f13: $1f
	add  hl, sp                                      ; $7f14: $39
	ret  z                                           ; $7f15: $c8

	jp   c, $a4e8                                    ; $7f16: $da $e8 $a4

	adc  b                                           ; $7f19: $88
	ld   e, $13                                      ; $7f1a: $1e $13
	pop  de                                          ; $7f1c: $d1
	ret  c                                           ; $7f1d: $d8

	cp   h                                           ; $7f1e: $bc
	cp   l                                           ; $7f1f: $bd
	adc  e                                           ; $7f20: $8b
	dec  sp                                          ; $7f21: $3b
	ld   [hl+], a                                    ; $7f22: $22
	pop  hl                                          ; $7f23: $e1
	or   a                                           ; $7f24: $b7
	ld   c, [hl]                                     ; $7f25: $4e
	ld   l, [hl]                                     ; $7f26: $6e
	xor  [hl]                                        ; $7f27: $ae
	xor  d                                           ; $7f28: $aa
	sub  h                                           ; $7f29: $94
	pop  de                                          ; $7f2a: $d1
	sub  a                                           ; $7f2b: $97
	dec  e                                           ; $7f2c: $1d
	ld   a, [hl+]                                    ; $7f2d: $2a
	cp   c                                           ; $7f2e: $b9
	reti                                             ; $7f2f: $d9


	ld   hl, sp-$3b                                  ; $7f30: $f8 $c5
	adc  b                                           ; $7f32: $88
	dec  e                                           ; $7f33: $1d
	inc  d                                           ; $7f34: $14
	jp   nz, $bbc7                                   ; $7f35: $c2 $c7 $bb

	call z, $3c8c                                    ; $7f38: $cc $8c $3c
	inc  hl                                          ; $7f3b: $23
	pop  de                                          ; $7f3c: $d1
	and  [hl]                                        ; $7f3d: $a6
	ld   e, h                                        ; $7f3e: $5c
	ld   a, l                                        ; $7f3f: $7d
	sbc  a                                           ; $7f40: $9f
	xor  d                                           ; $7f41: $aa
	sub  l                                           ; $7f42: $95
	pop  bc                                          ; $7f43: $c1
	and  [hl]                                        ; $7f44: $a6
	dec  e                                           ; $7f45: $1d
	ld   a, [hl+]                                    ; $7f46: $2a
	adc  d                                           ; $7f47: $8a
	reti                                             ; $7f48: $d9


	rst  $20                                         ; $7f49: $e7
	push bc                                          ; $7f4a: $c5
	sub  a                                           ; $7f4b: $97
	dec  e                                           ; $7f4c: $1d
	ld   d, $93                                      ; $7f4d: $16 $93
	add  $da                                         ; $7f4f: $c6 $da
	call c, Call_0ca_4c9b                            ; $7f51: $dc $9b $4c
	dec  d                                           ; $7f54: $15
	and  c                                           ; $7f55: $a1
	or   h                                           ; $7f56: $b4
	ld   a, d                                        ; $7f57: $7a
	ld   a, l                                        ; $7f58: $7d
	sbc  a                                           ; $7f59: $9f
	sbc  e                                           ; $7f5a: $9b
	halt                                             ; $7f5b: $76
	or   c                                           ; $7f5c: $b1
	or   e                                           ; $7f5d: $b3
	dec  hl                                          ; $7f5e: $2b
	dec  hl                                          ; $7f5f: $2b
	ld   a, d                                        ; $7f60: $7a
	cp   d                                           ; $7f61: $ba
	ret  c                                           ; $7f62: $d8

	call nz, $2da5                                   ; $7f63: $c4 $a5 $2d
	add  hl, de                                      ; $7f66: $19
	ld   [hl], h                                     ; $7f67: $74
	add  $da                                         ; $7f68: $c6 $da
	db   $eb                                         ; $7f6a: $eb
	xor  d                                           ; $7f6b: $aa
	ld   e, h                                        ; $7f6c: $5c
	add  hl, de                                      ; $7f6d: $19
	ld   [hl], c                                     ; $7f6e: $71
	or   e                                           ; $7f6f: $b3
	sbc  c                                           ; $7f70: $99
	sbc  e                                           ; $7f71: $9b
	xor  l                                           ; $7f72: $ad
	adc  h                                           ; $7f73: $8c
	ld   l, c                                        ; $7f74: $69
	add  c                                           ; $7f75: $81
	pop  de                                          ; $7f76: $d1
	ld   e, c                                        ; $7f77: $59
	ld   a, [hl+]                                    ; $7f78: $2a
	ld   a, d                                        ; $7f79: $7a
	xor  h                                           ; $7f7a: $ac
	cp   c                                           ; $7f7b: $b9
	or   h                                           ; $7f7c: $b4
	jp   $195a                                       ; $7f7d: $c3 $5a $19


	ld   d, [hl]                                     ; $7f80: $56
	sub  a                                           ; $7f81: $97
	cp   c                                           ; $7f82: $b9
	add  sp, -$48                                    ; $7f83: $e8 $b8
	ld   a, e                                        ; $7f85: $7b
	dec  de                                          ; $7f86: $1b
	ld   d, d                                        ; $7f87: $52
	and  e                                           ; $7f88: $a3
	adc  b                                           ; $7f89: $88
	sbc  d                                           ; $7f8a: $9a
	call z, Call_0ca_5a9d                            ; $7f8b: $cc $9d $5a
	ld   [hl], e                                     ; $7f8e: $73
	pop  bc                                          ; $7f8f: $c1
	ld   h, a                                        ; $7f90: $67
	ld   c, d                                        ; $7f91: $4a
	ld   a, d                                        ; $7f92: $7a
	sbc  l                                           ; $7f93: $9d
	xor  d                                           ; $7f94: $aa
	and  [hl]                                        ; $7f95: $a6
	jp   $0979                                       ; $7f96: $c3 $79 $09


	ld   d, [hl]                                     ; $7f99: $56
	sub  a                                           ; $7f9a: $97
	sbc  d                                           ; $7f9b: $9a
	ret                                              ; $7f9c: $c9


	ret  z                                           ; $7f9d: $c8

	adc  e                                           ; $7f9e: $8b
	add  hl, hl                                      ; $7f9f: $29
	ld   h, d                                        ; $7fa0: $62
	and  h                                           ; $7fa1: $a4
	ld   a, c                                        ; $7fa2: $79
	adc  d                                           ; $7fa3: $8a
	cp   e                                           ; $7fa4: $bb
	xor  e                                           ; $7fa5: $ab
	ld   a, d                                        ; $7fa6: $7a
	sub  e                                           ; $7fa7: $93
	and  h                                           ; $7fa8: $a4
	ld   c, c                                        ; $7fa9: $49
	ld   b, a                                        ; $7faa: $47
	add  a                                           ; $7fab: $87
	sbc  e                                           ; $7fac: $9b
	xor  d                                           ; $7fad: $aa
	and  a                                           ; $7fae: $a7
	and  a                                           ; $7faf: $a7
	ld   e, e                                        ; $7fb0: $5b
	ld   b, l                                        ; $7fb1: $45
	add  h                                           ; $7fb2: $84
	adc  c                                           ; $7fb3: $89
	ld   a, c                                        ; $7fb4: $79
	xor  c                                           ; $7fb5: $a9
	xor  c                                           ; $7fb6: $a9
	adc  d                                           ; $7fb7: $8a
	ld   h, [hl]                                     ; $7fb8: $66
	and  h                                           ; $7fb9: $a4
	ld   l, c                                        ; $7fba: $69
	ld   e, b                                        ; $7fbb: $58
	add  a                                           ; $7fbc: $87
	sbc  d                                           ; $7fbd: $9a
	sbc  d                                           ; $7fbe: $9a
	adc  c                                           ; $7fbf: $89
	and  a                                           ; $7fc0: $a7
	ld   a, c                                        ; $7fc1: $79
	ld   d, [hl]                                     ; $7fc2: $56
	add  [hl]                                        ; $7fc3: $86
	ld   [hl], a                                     ; $7fc4: $77
	ld   a, b                                        ; $7fc5: $78
	sbc  b                                           ; $7fc6: $98
	sbc  b                                           ; $7fc7: $98
	sbc  d                                           ; $7fc8: $9a
	ld   [hl], a                                     ; $7fc9: $77
	sub  [hl]                                        ; $7fca: $96
	ld   a, b                                        ; $7fcb: $78
	ld   h, a                                        ; $7fcc: $67
	ld   [hl], a                                     ; $7fcd: $77
	adc  b                                           ; $7fce: $88
	adc  d                                           ; $7fcf: $8a
	adc  c                                           ; $7fd0: $89
	sbc  b                                           ; $7fd1: $98
	ld   a, c                                        ; $7fd2: $79
	halt                                             ; $7fd3: $76
	add  [hl]                                        ; $7fd4: $86
	ld   [hl], a                                     ; $7fd5: $77
	ld   a, b                                        ; $7fd6: $78
	adc  b                                           ; $7fd7: $88
	sbc  c                                           ; $7fd8: $99
	sbc  c                                           ; $7fd9: $99
	sub  a                                           ; $7fda: $97
	sub  a                                           ; $7fdb: $97
	ld   l, b                                        ; $7fdc: $68
	ld   h, a                                        ; $7fdd: $67
	ld   [hl], a                                     ; $7fde: $77
	adc  b                                           ; $7fdf: $88
	adc  c                                           ; $7fe0: $89
	sbc  c                                           ; $7fe1: $99
	sbc  c                                           ; $7fe2: $99
	ld   a, c                                        ; $7fe3: $79
	ld   [hl], a                                     ; $7fe4: $77
	add  [hl]                                        ; $7fe5: $86
	ld   [hl], a                                     ; $7fe6: $77
	ld   a, b                                        ; $7fe7: $78
	adc  b                                           ; $7fe8: $88
	sbc  c                                           ; $7fe9: $99
	sbc  c                                           ; $7fea: $99
	adc  b                                           ; $7feb: $88
	sub  a                                           ; $7fec: $97
	ld   a, b                                        ; $7fed: $78
	ld   h, a                                        ; $7fee: $67
	ld   [hl], a                                     ; $7fef: $77
	adc  b                                           ; $7ff0: $88
	adc  c                                           ; $7ff1: $89
	sbc  d                                           ; $7ff2: $9a
	xor  b                                           ; $7ff3: $a8
	sbc  b                                           ; $7ff4: $98
	ld   h, a                                        ; $7ff5: $67

Call_0ca_7ff6:
	halt                                             ; $7ff6: $76
	ld   [hl], a                                     ; $7ff7: $77
	ld   a, b                                        ; $7ff8: $78
	adc  c                                           ; $7ff9: $89
	sbc  c                                           ; $7ffa: $99
	sbc  c                                           ; $7ffb: $99
	adc  c                                           ; $7ffc: $89
	sub  [hl]                                        ; $7ffd: $96
	ld   [hl], a                                     ; $7ffe: $77
	ld   h, a                                        ; $7fff: $67
