; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0d9", ROMX[$4000], BANK[$d9]

	ld   b, l                                        ; $4000: $45
	ld   h, a                                        ; $4001: $67
	sbc  d                                           ; $4002: $9a
	cp   h                                           ; $4003: $bc
	call c, $dddc                                    ; $4004: $dc $dc $dd
	res  7, c                                        ; $4007: $cb $b9
	sub  a                                           ; $4009: $97
	ld   h, [hl]                                     ; $400a: $66
	ld   d, h                                        ; $400b: $54
	ld   b, h                                        ; $400c: $44
	inc  sp                                          ; $400d: $33
	ld   b, h                                        ; $400e: $44
	ld   b, l                                        ; $400f: $45
	ld   d, [hl]                                     ; $4010: $56
	ld   a, b                                        ; $4011: $78
	sbc  d                                           ; $4012: $9a
	call z, $ccdd                                    ; $4013: $cc $dd $cc
	call z, $99bb                                    ; $4016: $cc $bb $99
	add  a                                           ; $4019: $87
	ld   h, [hl]                                     ; $401a: $66
	ld   d, l                                        ; $401b: $55
	ld   b, h                                        ; $401c: $44
	ld   b, h                                        ; $401d: $44
	ld   b, h                                        ; $401e: $44
	ld   b, l                                        ; $401f: $45
	ld   h, [hl]                                     ; $4020: $66
	ld   a, b                                        ; $4021: $78
	xor  e                                           ; $4022: $ab
	cp   e                                           ; $4023: $bb
	cp   e                                           ; $4024: $bb
	call z, $babb                                    ; $4025: $cc $bb $ba
	xor  b                                           ; $4028: $a8
	add  a                                           ; $4029: $87
	halt                                             ; $402a: $76
	ld   h, [hl]                                     ; $402b: $66
	ld   d, l                                        ; $402c: $55
	ld   d, l                                        ; $402d: $55
	ld   d, l                                        ; $402e: $55
	ld   d, l                                        ; $402f: $55
	ld   d, [hl]                                     ; $4030: $56
	ld   h, a                                        ; $4031: $67
	ld   a, b                                        ; $4032: $78
	adc  c                                           ; $4033: $89
	xor  c                                           ; $4034: $a9
	xor  d                                           ; $4035: $aa
	xor  d                                           ; $4036: $aa
	xor  d                                           ; $4037: $aa
	xor  d                                           ; $4038: $aa
	sbc  d                                           ; $4039: $9a
	sbc  c                                           ; $403a: $99
	sbc  c                                           ; $403b: $99
	sbc  b                                           ; $403c: $98
	adc  b                                           ; $403d: $88
	ld   [hl], a                                     ; $403e: $77
	ld   [hl], a                                     ; $403f: $77
	halt                                             ; $4040: $76
	ld   h, [hl]                                     ; $4041: $66
	ld   h, [hl]                                     ; $4042: $66
	ld   h, [hl]                                     ; $4043: $66
	ld   h, a                                        ; $4044: $67
	ld   [hl], a                                     ; $4045: $77
	adc  b                                           ; $4046: $88
	adc  c                                           ; $4047: $89
	adc  c                                           ; $4048: $89
	sbc  d                                           ; $4049: $9a
	sbc  d                                           ; $404a: $9a
	xor  d                                           ; $404b: $aa
	xor  d                                           ; $404c: $aa
	sbc  d                                           ; $404d: $9a
	xor  d                                           ; $404e: $aa
	sbc  b                                           ; $404f: $98
	adc  b                                           ; $4050: $88
	add  a                                           ; $4051: $87
	ld   [hl], a                                     ; $4052: $77
	ld   [hl], a                                     ; $4053: $77
	ld   [hl], a                                     ; $4054: $77
	ld   [hl], a                                     ; $4055: $77
	ld   h, a                                        ; $4056: $67
	ld   h, a                                        ; $4057: $67
	ld   [hl], a                                     ; $4058: $77
	ld   [hl], a                                     ; $4059: $77
	ld   [hl], a                                     ; $405a: $77
	adc  b                                           ; $405b: $88
	adc  c                                           ; $405c: $89
	adc  b                                           ; $405d: $88
	adc  c                                           ; $405e: $89
	sbc  c                                           ; $405f: $99
	sbc  c                                           ; $4060: $99
	sbc  c                                           ; $4061: $99
	xor  c                                           ; $4062: $a9
	adc  c                                           ; $4063: $89
	sbc  b                                           ; $4064: $98
	adc  b                                           ; $4065: $88
	adc  b                                           ; $4066: $88
	adc  b                                           ; $4067: $88
	adc  b                                           ; $4068: $88
	ld   [hl], a                                     ; $4069: $77
	adc  b                                           ; $406a: $88
	ld   [hl], a                                     ; $406b: $77
	ld   [hl], a                                     ; $406c: $77
	ld   [hl], a                                     ; $406d: $77
	ld   [hl], a                                     ; $406e: $77
	ld   [hl], a                                     ; $406f: $77
	ld   [hl], a                                     ; $4070: $77
	ld   [hl], a                                     ; $4071: $77
	ld   [hl], a                                     ; $4072: $77
	adc  b                                           ; $4073: $88
	adc  b                                           ; $4074: $88
	adc  c                                           ; $4075: $89
	sbc  c                                           ; $4076: $99
	adc  b                                           ; $4077: $88
	adc  b                                           ; $4078: $88
	adc  b                                           ; $4079: $88
	adc  c                                           ; $407a: $89
	sbc  c                                           ; $407b: $99
	sbc  c                                           ; $407c: $99
	adc  b                                           ; $407d: $88
	adc  b                                           ; $407e: $88
	adc  b                                           ; $407f: $88
	ld   [hl], a                                     ; $4080: $77
	ld   a, b                                        ; $4081: $78
	ld   [hl], a                                     ; $4082: $77
	ld   [hl], a                                     ; $4083: $77
	ld   a, b                                        ; $4084: $78
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
	adc  c                                           ; $4092: $89
	sbc  b                                           ; $4093: $98
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
	adc  c                                           ; $40ff: $89
	adc  b                                           ; $4100: $88
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	sbc  b                                           ; $4103: $98
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	adc  b                                           ; $4107: $88
	adc  b                                           ; $4108: $88
	add  a                                           ; $4109: $87
	adc  b                                           ; $410a: $88
	adc  c                                           ; $410b: $89
	adc  c                                           ; $410c: $89
	adc  b                                           ; $410d: $88
	adc  b                                           ; $410e: $88
	adc  b                                           ; $410f: $88
	adc  b                                           ; $4110: $88
	adc  b                                           ; $4111: $88
	add  a                                           ; $4112: $87
	adc  c                                           ; $4113: $89
	adc  b                                           ; $4114: $88
	adc  c                                           ; $4115: $89
	adc  b                                           ; $4116: $88
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	add  a                                           ; $4119: $87
	ld   a, b                                        ; $411a: $78
	adc  b                                           ; $411b: $88
	adc  b                                           ; $411c: $88
	adc  b                                           ; $411d: $88
	adc  b                                           ; $411e: $88
	adc  b                                           ; $411f: $88
	sbc  b                                           ; $4120: $98
	adc  b                                           ; $4121: $88
	adc  c                                           ; $4122: $89
	sbc  c                                           ; $4123: $99
	adc  b                                           ; $4124: $88
	adc  b                                           ; $4125: $88
	adc  b                                           ; $4126: $88
	adc  b                                           ; $4127: $88
	sbc  b                                           ; $4128: $98
	adc  b                                           ; $4129: $88
	adc  b                                           ; $412a: $88
	adc  b                                           ; $412b: $88
	sbc  c                                           ; $412c: $99
	sbc  b                                           ; $412d: $98
	adc  b                                           ; $412e: $88
	sbc  c                                           ; $412f: $99
	add  a                                           ; $4130: $87
	ld   a, b                                        ; $4131: $78
	adc  b                                           ; $4132: $88
	adc  c                                           ; $4133: $89
	add  a                                           ; $4134: $87
	add  a                                           ; $4135: $87
	adc  b                                           ; $4136: $88
	adc  c                                           ; $4137: $89
	adc  b                                           ; $4138: $88
	adc  b                                           ; $4139: $88
	adc  b                                           ; $413a: $88
	adc  b                                           ; $413b: $88
	ld   a, b                                        ; $413c: $78
	ld   [hl], a                                     ; $413d: $77
	adc  c                                           ; $413e: $89
	adc  b                                           ; $413f: $88
	adc  b                                           ; $4140: $88
	adc  b                                           ; $4141: $88
	adc  b                                           ; $4142: $88
	sbc  b                                           ; $4143: $98
	adc  b                                           ; $4144: $88
	adc  b                                           ; $4145: $88
	adc  b                                           ; $4146: $88
	adc  b                                           ; $4147: $88
	adc  b                                           ; $4148: $88
	add  a                                           ; $4149: $87
	adc  b                                           ; $414a: $88
	adc  c                                           ; $414b: $89
	adc  b                                           ; $414c: $88
	sbc  b                                           ; $414d: $98
	ld   a, c                                        ; $414e: $79
	sub  a                                           ; $414f: $97
	adc  c                                           ; $4150: $89
	adc  b                                           ; $4151: $88
	sbc  c                                           ; $4152: $99
	sbc  b                                           ; $4153: $98
	adc  c                                           ; $4154: $89
	ld   [hl], a                                     ; $4155: $77
	xor  b                                           ; $4156: $a8
	ld   a, c                                        ; $4157: $79
	ld   a, b                                        ; $4158: $78
	sbc  b                                           ; $4159: $98
	sbc  b                                           ; $415a: $98
	sbc  c                                           ; $415b: $99
	ld   [hl], a                                     ; $415c: $77
	adc  b                                           ; $415d: $88
	ld   [hl], a                                     ; $415e: $77
	ld   [hl], a                                     ; $415f: $77
	ld   [hl], a                                     ; $4160: $77
	ld   [hl], a                                     ; $4161: $77
	ld   [hl], a                                     ; $4162: $77
	ld   [hl], a                                     ; $4163: $77
	ld   a, b                                        ; $4164: $78
	sub  a                                           ; $4165: $97
	ld   a, b                                        ; $4166: $78
	ld   a, b                                        ; $4167: $78
	sbc  b                                           ; $4168: $98
	sbc  b                                           ; $4169: $98
	adc  b                                           ; $416a: $88
	sbc  b                                           ; $416b: $98
	adc  d                                           ; $416c: $8a
	sbc  c                                           ; $416d: $99
	xor  c                                           ; $416e: $a9
	sbc  b                                           ; $416f: $98
	adc  d                                           ; $4170: $8a
	adc  c                                           ; $4171: $89
	adc  b                                           ; $4172: $88
	xor  c                                           ; $4173: $a9
	sbc  b                                           ; $4174: $98
	sbc  b                                           ; $4175: $98
	sbc  e                                           ; $4176: $9b
	add  [hl]                                        ; $4177: $86
	ld   h, [hl]                                     ; $4178: $66
	ld   d, l                                        ; $4179: $55
	ld   h, l                                        ; $417a: $65
	ld   d, h                                        ; $417b: $54
	ld   d, h                                        ; $417c: $54
	dec  [hl]                                        ; $417d: $35
	ld   b, [hl]                                     ; $417e: $46
	add  [hl]                                        ; $417f: $86
	adc  d                                           ; $4180: $8a
	xor  e                                           ; $4181: $ab
	xor  d                                           ; $4182: $aa
	call z, $bccc                                    ; $4183: $cc $cc $bc
	call $b9aa                                       ; $4186: $cd $aa $b9
	sbc  c                                           ; $4189: $99
	halt                                             ; $418a: $76
	halt                                             ; $418b: $76
	ld   h, [hl]                                     ; $418c: $66
	inc  sp                                          ; $418d: $33
	ld   b, e                                        ; $418e: $43
	ld   de, $2211                                   ; $418f: $11 $11 $22
	inc  hl                                          ; $4192: $23
	ld   l, b                                        ; $4193: $68
	cp   [hl]                                        ; $4194: $be
	db   $dd                                         ; $4195: $dd
	rst  $38                                         ; $4196: $ff
	rst  $38                                         ; $4197: $ff
	rst  $38                                         ; $4198: $ff
	db   $ed                                         ; $4199: $ed
	cp   e                                           ; $419a: $bb
	cp   d                                           ; $419b: $ba
	add  a                                           ; $419c: $87
	halt                                             ; $419d: $76
	ld   [hl], a                                     ; $419e: $77
	ld   d, h                                        ; $419f: $54
	ld   b, e                                        ; $41a0: $43
	ld   sp, $1111                                   ; $41a1: $31 $11 $11
	ld   [de], a                                     ; $41a4: $12
	inc  d                                           ; $41a5: $14
	ld   l, l                                        ; $41a6: $6d
	rst  $38                                         ; $41a7: $ff
	rst  $38                                         ; $41a8: $ff
	rst  $38                                         ; $41a9: $ff
	rst  $38                                         ; $41aa: $ff
	cp   $c9                                         ; $41ab: $fe $c9
	ld   a, b                                        ; $41ad: $78
	add  a                                           ; $41ae: $87
	adc  c                                           ; $41af: $89
	ld   a, c                                        ; $41b0: $79
	adc  c                                           ; $41b1: $89
	add  [hl]                                        ; $41b2: $86
	ld   hl, $1111                                   ; $41b3: $21 $11 $11
	ld   de, $3b43                                   ; $41b6: $11 $43 $3b
	rst  $38                                         ; $41b9: $ff
	rst  $38                                         ; $41ba: $ff
	rst  $38                                         ; $41bb: $ff
	rst  $38                                         ; $41bc: $ff
	res  5, c                                        ; $41bd: $cb $a9
	add  h                                           ; $41bf: $84
	ld   h, a                                        ; $41c0: $67
	xor  e                                           ; $41c1: $ab
	cp   h                                           ; $41c2: $bc
	xor  $b8                                         ; $41c3: $ee $b8
	ld   b, c                                        ; $41c5: $41
	ld   de, $1111                                   ; $41c6: $11 $11 $11
	inc  d                                           ; $41c9: $14
	ld   a, e                                        ; $41ca: $7b
	rst  $38                                         ; $41cb: $ff
	rst  $38                                         ; $41cc: $ff
	rst  $38                                         ; $41cd: $ff
	ld   a, [$7a97]                                  ; $41ce: $fa $97 $7a
	ld   d, l                                        ; $41d1: $55
	ld   l, h                                        ; $41d2: $6c
	cp   a                                           ; $41d3: $bf
	rst  $38                                         ; $41d4: $ff
	rst  $38                                         ; $41d5: $ff
	ret  c                                           ; $41d6: $d8

	ld   [hl], c                                     ; $41d7: $71
	ld   de, $1111                                   ; $41d8: $11 $11 $11
	ld   de, $ffaf                                   ; $41db: $11 $af $ff
	rst  $38                                         ; $41de: $ff
	rst  $38                                         ; $41df: $ff
	cp   c                                           ; $41e0: $b9
	ld   b, d                                        ; $41e1: $42
	ld   [hl], l                                     ; $41e2: $75
	adc  c                                           ; $41e3: $89
	call c, $ffef                                    ; $41e4: $dc $ef $ff
	rst  $38                                         ; $41e7: $ff
	xor  b                                           ; $41e8: $a8
	ld   h, h                                        ; $41e9: $64
	ld   de, $1111                                   ; $41ea: $11 $11 $11
	ld   de, $ff16                                   ; $41ed: $11 $16 $ff
	rst  $38                                         ; $41f0: $ff
	rst  $38                                         ; $41f1: $ff
	ld   [$3655], a                                  ; $41f2: $ea $55 $36
	ld   a, h                                        ; $41f5: $7c
	set  7, a                                        ; $41f6: $cb $ff
	rst  $38                                         ; $41f8: $ff
	db   $fd                                         ; $41f9: $fd
	db   $fc                                         ; $41fa: $fc
	ld   h, l                                        ; $41fb: $65
	ld   sp, $1111                                   ; $41fc: $31 $11 $11
	ld   de, $1f11                                   ; $41ff: $11 $11 $1f
	cp   $ef                                         ; $4202: $fe $ef
	rst  $38                                         ; $4204: $ff
	ld   [hl], l                                     ; $4205: $75
	ld   d, e                                        ; $4206: $53
	jr   z, @-$3f                                    ; $4207: $28 $bf

	db   $fd                                         ; $4209: $fd
	rst  $38                                         ; $420a: $ff
	xor  $ee                                         ; $420b: $ee $ee
	or   [hl]                                        ; $420d: $b6
	ld   h, h                                        ; $420e: $64
	ld   hl, $1111                                   ; $420f: $21 $11 $11
	ld   de, $8f11                                   ; $4212: $11 $11 $8f
	rst  $20                                         ; $4215: $e7
	rst  $38                                         ; $4216: $ff
	ld   sp, hl                                      ; $4217: $f9
	ld   d, c                                        ; $4218: $51
	ld   a, c                                        ; $4219: $79
	ld   b, a                                        ; $421a: $47
	rst  $38                                         ; $421b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $421c: $cf
	sbc  $ee                                         ; $421d: $de $ee
	cp   h                                           ; $421f: $bc
	and  [hl]                                        ; $4220: $a6
	ld   b, c                                        ; $4221: $41
	ld   hl, $1311                                   ; $4222: $21 $11 $13
	ld   de, $fc1f                                   ; $4225: $11 $1f $fc
	db   $fd                                         ; $4228: $fd
	xor  a                                           ; $4229: $af
	pop  af                                          ; $422a: $f1
	ld   e, a                                        ; $422b: $5f
	inc  de                                          ; $422c: $13
	rst  $38                                         ; $422d: $ff
	rst  $38                                         ; $422e: $ff
	cp   e                                           ; $422f: $bb
	rst  $38                                         ; $4230: $ff
	sbc  d                                           ; $4231: $9a
	and  a                                           ; $4232: $a7
	ld   b, d                                        ; $4233: $42
	inc  sp                                          ; $4234: $33
	ld   de, $3111                                   ; $4235: $11 $11 $31
	ld   de, $d1bf                                   ; $4238: $11 $bf $d1
	rst  $38                                         ; $423b: $ff
	ld   d, h                                        ; $423c: $54
	ld   d, e                                        ; $423d: $53
	adc  d                                           ; $423e: $8a
	jr   c, @+$01                                    ; $423f: $38 $ff

	sbc  c                                           ; $4241: $99
	cp   h                                           ; $4242: $bc
	db   $eb                                         ; $4243: $eb
	adc  l                                           ; $4244: $8d
	halt                                             ; $4245: $76
	ld   d, h                                        ; $4246: $54
	ld   de, $1111                                   ; $4247: $11 $11 $11
	ld   de, $5fff                                   ; $424a: $11 $ff $5f
	rst  $38                                         ; $424d: $ff
	jr   c, @-$4b                                    ; $424e: $38 $b3

	ld   sp, $fd7f                                   ; $4250: $31 $7f $fd
	adc  $de                                         ; $4253: $ce $de
	rst  ToBoot                                         ; $4255: $c7
	xor  [hl]                                        ; $4256: $ae
	add  d                                           ; $4257: $82
	ld   hl, $1111                                   ; $4258: $21 $11 $11
	ld   de, $df13                                   ; $425b: $11 $13 $df
	rst  $38                                         ; $425e: $ff
	sbc  a                                           ; $425f: $9f
	pop  af                                          ; $4260: $f1
	ld   a, [de]                                     ; $4261: $1a
	and  h                                           ; $4262: $a4
	ld   l, d                                        ; $4263: $6a
	rst  $38                                         ; $4264: $ff
	ld   sp, hl                                      ; $4265: $f9
	sbc  e                                           ; $4266: $9b
	cp   e                                           ; $4267: $bb
	and  [hl]                                        ; $4268: $a6
	dec  [hl]                                        ; $4269: $35
	ld   de, $3111                                   ; $426a: $11 $11 $31
	ld   de, $ffbf                                   ; $426d: $11 $bf $ff
	rra                                              ; $4270: $1f
	di                                               ; $4271: $f3
	inc  e                                           ; $4272: $1c
	pop  bc                                          ; $4273: $c1
	xor  b                                           ; $4274: $a8
	xor  a                                           ; $4275: $af
	rst  $30                                         ; $4276: $f7
	sbc  a                                           ; $4277: $9f
	call z, $8766                                    ; $4278: $cc $66 $87
	ld   de, $1111                                   ; $427b: $11 $11 $11
	ld   de, $6ddf                                   ; $427e: $11 $df $6d
	db   $fd                                         ; $4281: $fd
	cp   a                                           ; $4282: $bf
	pop  af                                          ; $4283: $f1
	ld   h, $bf                                      ; $4284: $26 $bf
	ld   [hl], a                                     ; $4286: $77
	rst  JumpTable                                         ; $4287: $df
	cp   $98                                         ; $4288: $fe $98
	jp   c, Jump_0d9_5221                            ; $428a: $da $21 $52

	ld   de, $1311                                   ; $428d: $11 $11 $13
	adc  h                                           ; $4290: $8c
	sbc  a                                           ; $4291: $9f
	rst  $38                                         ; $4292: $ff
	db   $fd                                         ; $4293: $fd
	add  e                                           ; $4294: $83
	sbc  c                                           ; $4295: $99
	ld   a, b                                        ; $4296: $78
	rst  $28                                         ; $4297: $ef
	or   a                                           ; $4298: $b7
	xor  a                                           ; $4299: $af
	ld   hl, sp+$79                                  ; $429a: $f8 $79
	ld   h, h                                        ; $429c: $64
	ld   de, $1111                                   ; $429d: $11 $11 $11
	rla                                              ; $42a0: $17
	or   a                                           ; $42a1: $b7
	sbc  a                                           ; $42a2: $9f
	ld   sp, hl                                      ; $42a3: $f9
	rst  $38                                         ; $42a4: $ff
	xor  b                                           ; $42a5: $a8
	dec  de                                          ; $42a6: $1b
	jp   hl                                          ; $42a7: $e9


	ld   e, [hl]                                     ; $42a8: $5e
	db   $ec                                         ; $42a9: $ec
	ld   a, [$c36b]                                  ; $42aa: $fa $6b $c3
	ld   d, d                                        ; $42ad: $52
	ld   de, $1111                                   ; $42ae: $11 $11 $11
	inc  de                                          ; $42b1: $13
	rst  $28                                         ; $42b2: $ef
	rra                                              ; $42b3: $1f

jr_0d9_42b4:
	ld   sp, hl                                      ; $42b4: $f9
	jr   c, jr_0d9_4336                              ; $42b5: $38 $7f

	ldh  a, [c]                                      ; $42b7: $f2
	ld   a, a                                        ; $42b8: $7f
	sub  $77                                         ; $42b9: $d6 $77
	rst  JumpTable                                         ; $42bb: $df
	sub  c                                           ; $42bc: $91
	ld   a, l                                        ; $42bd: $7d
	ld   b, c                                        ; $42be: $41
	ld   de, $1811                                   ; $42bf: $11 $11 $18
	ldh  a, [c]                                      ; $42c2: $f2
	rra                                              ; $42c3: $1f
	push af                                          ; $42c4: $f5
	rst  $28                                         ; $42c5: $ef
	cp   e                                           ; $42c6: $bb
	sub  h                                           ; $42c7: $94
	rst  $38                                         ; $42c8: $ff
	ld   b, e                                        ; $42c9: $43
	rst  $28                                         ; $42ca: $ef
	ld   d, l                                        ; $42cb: $55
	bit  6, l                                        ; $42cc: $cb $75
	ld   [hl+], a                                    ; $42ce: $22
	add  c                                           ; $42cf: $81
	ld   de, $8611                                   ; $42d0: $11 $11 $86
	ld   e, a                                        ; $42d3: $5f
	call c, $bced                                    ; $42d4: $dc $ed $bc
	ld   sp, hl                                      ; $42d7: $f9
	ld   e, [hl]                                     ; $42d8: $5e
	rst  $20                                         ; $42d9: $e7
	adc  e                                           ; $42da: $8b
	sbc  e                                           ; $42db: $9b
	and  d                                           ; $42dc: $a2
	ld   l, h                                        ; $42dd: $6c
	ld   d, c                                        ; $42de: $51
	inc  h                                           ; $42df: $24
	ld   b, c                                        ; $42e0: $41
	ld   [de], a                                     ; $42e1: $12
	call nz, $ef18                                   ; $42e2: $c4 $18 $ef
	ld   [hl], e                                     ; $42e5: $73
	rst  $38                                         ; $42e6: $ff
	sbc  e                                           ; $42e7: $9b
	ld   e, h                                        ; $42e8: $5c
	or   $1d                                         ; $42e9: $f6 $1d

jr_0d9_42eb:
	rst  $30                                         ; $42eb: $f7
	ld   h, l                                        ; $42ec: $65
	ld   e, [hl]                                     ; $42ed: $5e
	ld   [hl], c                                     ; $42ee: $71
	ld   d, $93                                      ; $42ef: $16 $93
	ld   de, $b927                                   ; $42f1: $11 $27 $b9
	ld   [de], a                                     ; $42f4: $12
	rst  $38                                         ; $42f5: $ff
	ld   hl, $dcff                                   ; $42f6: $21 $ff $dc
	add  hl, de                                      ; $42f9: $19
	db   $fd                                         ; $42fa: $fd
	ld   d, $ea                                      ; $42fb: $16 $ea
	ld   h, c                                        ; $42fd: $61
	ld   c, d                                        ; $42fe: $4a
	or   c                                           ; $42ff: $b1
	ld   [de], a                                     ; $4300: $12
	adc  c                                           ; $4301: $89
	ld   [hl-], a                                    ; $4302: $32
	ld   d, l                                        ; $4303: $55
	xor  a                                           ; $4304: $af
	add  c                                           ; $4305: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4306: $cf
	add  $9f                                         ; $4307: $c6 $9f
	ei                                               ; $4309: $fb
	ld   h, a                                        ; $430a: $67
	rst  $28                                         ; $430b: $ef
	ld   d, c                                        ; $430c: $51
	ld   c, e                                        ; $430d: $4b
	sub  d                                           ; $430e: $92
	jr   jr_0d9_42b4                                 ; $430f: $18 $a3

	daa                                              ; $4311: $27
	ld   h, [hl]                                     ; $4312: $66
	sub  [hl]                                        ; $4313: $96
	ld   e, b                                        ; $4314: $58
	xor  d                                           ; $4315: $aa
	and  l                                           ; $4316: $a5
	ld   a, h                                        ; $4317: $7c
	ld   a, [$fe2b]                                  ; $4318: $fa $2b $fe
	ld   d, [hl]                                     ; $431b: $56
	call c, $8963                                    ; $431c: $dc $63 $89
	ld   h, a                                        ; $431f: $67
	ld   b, [hl]                                     ; $4320: $46
	sub  [hl]                                        ; $4321: $96
	ld   d, a                                        ; $4322: $57
	ld   [hl], l                                     ; $4323: $75
	ld   e, b                                        ; $4324: $58
	call nz, $e71b                                   ; $4325: $c4 $1b $e7
	add  hl, hl                                      ; $4328: $29
	cp   $42                                         ; $4329: $fe $42
	rst  $38                                         ; $432b: $ff
	ld   b, c                                        ; $432c: $41
	xor  a                                           ; $432d: $af
	sub  c                                           ; $432e: $91
	ld   e, [hl]                                     ; $432f: $5e
	push bc                                          ; $4330: $c5
	ld   a, [hl-]                                    ; $4331: $3a
	rst  $20                                         ; $4332: $e7
	jr   jr_0d9_42eb                                 ; $4333: $18 $b6

	inc  [hl]                                        ; $4335: $34

jr_0d9_4336:
	sbc  c                                           ; $4336: $99
	ld   d, l                                        ; $4337: $55
	ld   a, c                                        ; $4338: $79
	sbc  b                                           ; $4339: $98
	ld   l, c                                        ; $433a: $69
	xor  e                                           ; $433b: $ab
	cp   d                                           ; $433c: $ba
	ld   a, b                                        ; $433d: $78
	and  a                                           ; $433e: $a7
	adc  e                                           ; $433f: $8b
	push bc                                          ; $4340: $c5
	ld   c, d                                        ; $4341: $4a
	ret                                              ; $4342: $c9


	ld   b, l                                        ; $4343: $45
	adc  c                                           ; $4344: $89
	ld   d, h                                        ; $4345: $54
	cp   a                                           ; $4346: $bf
	sub  e                                           ; $4347: $93
	ld   a, e                                        ; $4348: $7b
	add  l                                           ; $4349: $85
	ld   e, e                                        ; $434a: $5b
	jp   $c41a                                       ; $434b: $c3 $1a $c4


	ld   c, h                                        ; $434e: $4c
	ld   hl, sp+$3a                                  ; $434f: $f8 $3a
	db   $ec                                         ; $4351: $ec
	sbc  d                                           ; $4352: $9a
	reti                                             ; $4353: $d9


	ld   c, b                                        ; $4354: $48
	or   [hl]                                        ; $4355: $b6
	ld   [de], a                                     ; $4356: $12
	ld   a, e                                        ; $4357: $7b
	ld   h, [hl]                                     ; $4358: $66
	xor  d                                           ; $4359: $aa
	ld   d, a                                        ; $435a: $57
	cp   l                                           ; $435b: $bd
	add  a                                           ; $435c: $87
	sbc  b                                           ; $435d: $98
	sbc  c                                           ; $435e: $99
	ld   h, [hl]                                     ; $435f: $66
	xor  h                                           ; $4360: $ac
	ld   h, h                                        ; $4361: $64
	sbc  e                                           ; $4362: $9b
	ld   h, e                                        ; $4363: $63
	ld   a, e                                        ; $4364: $7b
	ld   [hl], l                                     ; $4365: $75
	sbc  d                                           ; $4366: $9a
	add  l                                           ; $4367: $85
	adc  h                                           ; $4368: $8c
	and  a                                           ; $4369: $a7
	adc  l                                           ; $436a: $8d
	or   [hl]                                        ; $436b: $b6
	ld   e, d                                        ; $436c: $5a
	or   l                                           ; $436d: $b5
	ld   l, d                                        ; $436e: $6a
	and  l                                           ; $436f: $a5
	ld   a, c                                        ; $4370: $79
	halt                                             ; $4371: $76
	sbc  d                                           ; $4372: $9a
	add  a                                           ; $4373: $87
	adc  b                                           ; $4374: $88

Jump_0d9_4375:
	ld   a, b                                        ; $4375: $78
	adc  b                                           ; $4376: $88
	add  a                                           ; $4377: $87
	add  a                                           ; $4378: $87
	adc  c                                           ; $4379: $89
	add  [hl]                                        ; $437a: $86
	ld   l, b                                        ; $437b: $68
	adc  b                                           ; $437c: $88
	adc  b                                           ; $437d: $88
	adc  c                                           ; $437e: $89
	sub  a                                           ; $437f: $97
	ld   a, e                                        ; $4380: $7b
	jp   c, $9778                                    ; $4381: $da $78 $97

	ld   d, a                                        ; $4384: $57

Jump_0d9_4385:
	sub  [hl]                                        ; $4385: $96
	ld   h, a                                        ; $4386: $67
	add  a                                           ; $4387: $87
	ld   a, d                                        ; $4388: $7a
	and  a                                           ; $4389: $a7
	ld   l, b                                        ; $438a: $68
	ret                                              ; $438b: $c9


	ld   l, b                                        ; $438c: $68
	and  a                                           ; $438d: $a7
	ld   l, c                                        ; $438e: $69
	sub  a                                           ; $438f: $97
	adc  c                                           ; $4390: $89
	add  [hl]                                        ; $4391: $86
	sbc  e                                           ; $4392: $9b
	ld   h, l                                        ; $4393: $65
	sbc  e                                           ; $4394: $9b
	ld   [hl], l                                     ; $4395: $75
	sbc  d                                           ; $4396: $9a

Call_0d9_4397:
	halt                                             ; $4397: $76
	adc  c                                           ; $4398: $89
	halt                                             ; $4399: $76
	adc  d                                           ; $439a: $8a
	halt                                             ; $439b: $76
	adc  d                                           ; $439c: $8a
	add  [hl]                                        ; $439d: $86
	adc  d                                           ; $439e: $8a
	halt                                             ; $439f: $76
	adc  c                                           ; $43a0: $89
	ld   a, c                                        ; $43a1: $79
	xor  b                                           ; $43a2: $a8
	ld   l, b                                        ; $43a3: $68
	and  a                                           ; $43a4: $a7
	ld   l, c                                        ; $43a5: $69
	sbc  b                                           ; $43a6: $98
	adc  c                                           ; $43a7: $89
	halt                                             ; $43a8: $76
	sbc  e                                           ; $43a9: $9b
	add  l                                           ; $43aa: $85
	ld   a, d                                        ; $43ab: $7a
	ld   [hl], a                                     ; $43ac: $77
	xor  c                                           ; $43ad: $a9
	ld   h, a                                        ; $43ae: $67
	adc  b                                           ; $43af: $88
	ld   a, b                                        ; $43b0: $78
	add  a                                           ; $43b1: $87
	ld   a, b                                        ; $43b2: $78
	sbc  b                                           ; $43b3: $98
	ld   [hl], a                                     ; $43b4: $77
	sbc  c                                           ; $43b5: $99
	add  a                                           ; $43b6: $87
	sbc  c                                           ; $43b7: $99
	ld   [hl], a                                     ; $43b8: $77
	sbc  c                                           ; $43b9: $99
	ld   [hl], a                                     ; $43ba: $77
	sbc  c                                           ; $43bb: $99
	ld   [hl], a                                     ; $43bc: $77
	sbc  c                                           ; $43bd: $99
	ld   [hl], a                                     ; $43be: $77
	adc  b                                           ; $43bf: $88
	ld   [hl], a                                     ; $43c0: $77
	adc  c                                           ; $43c1: $89
	ld   [hl], a                                     ; $43c2: $77
	adc  c                                           ; $43c3: $89
	sbc  b                                           ; $43c4: $98
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	sbc  b                                           ; $43c7: $98
	ld   [hl], a                                     ; $43c8: $77
	sbc  c                                           ; $43c9: $99
	ld   a, b                                        ; $43ca: $78
	add  a                                           ; $43cb: $87
	ld   a, b                                        ; $43cc: $78
	add  a                                           ; $43cd: $87
	ld   a, c                                        ; $43ce: $79
	sbc  b                                           ; $43cf: $98
	ld   a, b                                        ; $43d0: $78
	sbc  c                                           ; $43d1: $99
	ld   a, b                                        ; $43d2: $78
	adc  c                                           ; $43d3: $89
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	ld   [hl], a                                     ; $43d7: $77
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
	add  a                                           ; $43db: $87
	ld   [hl], a                                     ; $43dc: $77
	adc  d                                           ; $43dd: $8a
	add  h                                           ; $43de: $84
	adc  d                                           ; $43df: $8a
	sub  a                                           ; $43e0: $97
	ld   a, c                                        ; $43e1: $79
	sub  a                                           ; $43e2: $97
	ld   a, b                                        ; $43e3: $78
	sub  a                                           ; $43e4: $97
	adc  b                                           ; $43e5: $88
	add  a                                           ; $43e6: $87
	sbc  c                                           ; $43e7: $99
	add  a                                           ; $43e8: $87
	sbc  b                                           ; $43e9: $98
	ld   a, b                                        ; $43ea: $78
	adc  b                                           ; $43eb: $88
	adc  b                                           ; $43ec: $88
	add  a                                           ; $43ed: $87
	adc  b                                           ; $43ee: $88
	adc  b                                           ; $43ef: $88
	ld   a, b                                        ; $43f0: $78
	adc  b                                           ; $43f1: $88
	adc  b                                           ; $43f2: $88
	adc  b                                           ; $43f3: $88
	adc  b                                           ; $43f4: $88
	ld   a, b                                        ; $43f5: $78
	sbc  b                                           ; $43f6: $98
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  b                                           ; $43f9: $88
	adc  b                                           ; $43fa: $88
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	adc  b                                           ; $43fd: $88
	adc  d                                           ; $43fe: $8a
	sub  [hl]                                        ; $43ff: $96
	ld   a, d                                        ; $4400: $7a
	add  [hl]                                        ; $4401: $86
	ld   a, d                                        ; $4402: $7a
	add  a                                           ; $4403: $87
	adc  b                                           ; $4404: $88
	add  a                                           ; $4405: $87
	ld   a, c                                        ; $4406: $79
	sub  a                                           ; $4407: $97
	ld   a, b                                        ; $4408: $78
	add  a                                           ; $4409: $87
	ld   a, c                                        ; $440a: $79
	add  a                                           ; $440b: $87
	ld   a, b                                        ; $440c: $78
	adc  c                                           ; $440d: $89
	add  a                                           ; $440e: $87
	adc  c                                           ; $440f: $89
	add  a                                           ; $4410: $87
	sbc  c                                           ; $4411: $99
	add  a                                           ; $4412: $87
	adc  b                                           ; $4413: $88
	ld   [hl], a                                     ; $4414: $77
	adc  b                                           ; $4415: $88
	ld   a, b                                        ; $4416: $78
	adc  c                                           ; $4417: $89
	sub  a                                           ; $4418: $97
	adc  c                                           ; $4419: $89
	ld   [hl], a                                     ; $441a: $77
	sbc  b                                           ; $441b: $98
	ld   [hl], a                                     ; $441c: $77
	adc  b                                           ; $441d: $88
	ld   a, b                                        ; $441e: $78
	sbc  b                                           ; $441f: $98
	ld   a, c                                        ; $4420: $79
	add  a                                           ; $4421: $87
	ld   a, b                                        ; $4422: $78
	sub  a                                           ; $4423: $97
	adc  b                                           ; $4424: $88
	add  a                                           ; $4425: $87
	adc  b                                           ; $4426: $88
	ld   [hl], a                                     ; $4427: $77
	adc  b                                           ; $4428: $88
	add  a                                           ; $4429: $87
	sbc  b                                           ; $442a: $98
	ld   a, b                                        ; $442b: $78
	adc  c                                           ; $442c: $89
	adc  b                                           ; $442d: $88
	ld   a, b                                        ; $442e: $78
	ld   a, b                                        ; $442f: $78
	sbc  b                                           ; $4430: $98
	adc  c                                           ; $4431: $89
	ld   a, b                                        ; $4432: $78
	add  a                                           ; $4433: $87
	adc  b                                           ; $4434: $88
	adc  b                                           ; $4435: $88
	adc  b                                           ; $4436: $88
	ld   a, c                                        ; $4437: $79
	add  a                                           ; $4438: $87
	ld   a, b                                        ; $4439: $78
	adc  c                                           ; $443a: $89
	xor  c                                           ; $443b: $a9
	ld   [hl], a                                     ; $443c: $77
	add  a                                           ; $443d: $87
	halt                                             ; $443e: $76
	ld   a, $f1                                      ; $443f: $3e $f1
	xor  a                                           ; $4441: $af
	inc  de                                          ; $4442: $13
	ld   [$a948], a                                  ; $4443: $ea $48 $a9
	ld   h, a                                        ; $4446: $67
	sub  a                                           ; $4447: $97
	ld   a, b                                        ; $4448: $78
	sub  a                                           ; $4449: $97
	ld   [hl], l                                     ; $444a: $75
	ld   a, h                                        ; $444b: $7c
	sub  e                                           ; $444c: $93
	sbc  [hl]                                        ; $444d: $9e
	ld   l, d                                        ; $444e: $6a
	push bc                                          ; $444f: $c5
	ld   d, a                                        ; $4450: $57
	sbc  c                                           ; $4451: $99
	ld   [hl], a                                     ; $4452: $77
	sbc  b                                           ; $4453: $98
	add  [hl]                                        ; $4454: $86
	ld   a, c                                        ; $4455: $79
	ld   h, a                                        ; $4456: $67
	adc  b                                           ; $4457: $88
	adc  d                                           ; $4458: $8a
	add  [hl]                                        ; $4459: $86
	sbc  b                                           ; $445a: $98
	add  a                                           ; $445b: $87
	sbc  b                                           ; $445c: $98
	ld   a, c                                        ; $445d: $79
	sub  a                                           ; $445e: $97
	adc  c                                           ; $445f: $89
	add  [hl]                                        ; $4460: $86
	adc  l                                           ; $4461: $8d
	ld   [hl], l                                     ; $4462: $75
	sub  a                                           ; $4463: $97
	ld   [hl], a                                     ; $4464: $77
	adc  b                                           ; $4465: $88
	add  [hl]                                        ; $4466: $86
	ld   [hl], a                                     ; $4467: $77
	ld   e, c                                        ; $4468: $59
	or   [hl]                                        ; $4469: $b6
	ld   e, [hl]                                     ; $446a: $5e
	db   $d3                                         ; $446b: $d3
	ld   a, l                                        ; $446c: $7d
	ld   a, b                                        ; $446d: $78
	and  [hl]                                        ; $446e: $a6
	adc  c                                           ; $446f: $89
	ld   d, [hl]                                     ; $4470: $56
	sub  a                                           ; $4471: $97
	ld   d, a                                        ; $4472: $57
	add  a                                           ; $4473: $87
	adc  c                                           ; $4474: $89
	sbc  c                                           ; $4475: $99
	sbc  b                                           ; $4476: $98
	ld   a, c                                        ; $4477: $79
	add  a                                           ; $4478: $87
	adc  b                                           ; $4479: $88
	adc  b                                           ; $447a: $88
	add  a                                           ; $447b: $87
	adc  b                                           ; $447c: $88
	ld   [hl], a                                     ; $447d: $77
	adc  b                                           ; $447e: $88
	ld   a, c                                        ; $447f: $79
	add  a                                           ; $4480: $87
	sub  a                                           ; $4481: $97
	ld   a, c                                        ; $4482: $79
	adc  b                                           ; $4483: $88
	adc  c                                           ; $4484: $89
	add  a                                           ; $4485: $87
	adc  b                                           ; $4486: $88
	sub  a                                           ; $4487: $97
	ld   a, b                                        ; $4488: $78
	add  a                                           ; $4489: $87
	ld   a, b                                        ; $448a: $78
	adc  b                                           ; $448b: $88
	ld   a, c                                        ; $448c: $79
	add  a                                           ; $448d: $87
	adc  c                                           ; $448e: $89
	ld   [hl], a                                     ; $448f: $77
	and  a                                           ; $4490: $a7
	adc  b                                           ; $4491: $88
	ld   a, c                                        ; $4492: $79
	add  a                                           ; $4493: $87
	sub  a                                           ; $4494: $97

Call_0d9_4495:
	ld   a, b                                        ; $4495: $78
	ld   a, c                                        ; $4496: $79
	add  a                                           ; $4497: $87
	adc  b                                           ; $4498: $88
	add  a                                           ; $4499: $87
	sbc  c                                           ; $449a: $99
	sbc  b                                           ; $449b: $98
	ld   a, d                                        ; $449c: $7a
	add  a                                           ; $449d: $87
	sub  a                                           ; $449e: $97
	adc  d                                           ; $449f: $8a
	ld   a, b                                        ; $44a0: $78
	sbc  c                                           ; $44a1: $99
	ld   a, b                                        ; $44a2: $78
	sub  a                                           ; $44a3: $97
	sbc  b                                           ; $44a4: $98
	ld   a, c                                        ; $44a5: $79
	sub  a                                           ; $44a6: $97
	adc  b                                           ; $44a7: $88
	adc  c                                           ; $44a8: $89
	adc  b                                           ; $44a9: $88
	ld   a, c                                        ; $44aa: $79
	ld   a, b                                        ; $44ab: $78
	add  a                                           ; $44ac: $87
	adc  b                                           ; $44ad: $88
	sub  a                                           ; $44ae: $97
	sbc  b                                           ; $44af: $98
	adc  c                                           ; $44b0: $89
	ld   a, c                                        ; $44b1: $79
	sbc  b                                           ; $44b2: $98
	adc  c                                           ; $44b3: $89
	adc  b                                           ; $44b4: $88
	ld   a, c                                        ; $44b5: $79
	sub  a                                           ; $44b6: $97
	adc  d                                           ; $44b7: $8a
	ld   [hl], a                                     ; $44b8: $77
	sbc  b                                           ; $44b9: $98
	ld   [hl], a                                     ; $44ba: $77
	ld   a, c                                        ; $44bb: $79
	adc  b                                           ; $44bc: $88
	adc  c                                           ; $44bd: $89
	ld   a, b                                        ; $44be: $78
	ld   a, b                                        ; $44bf: $78
	sbc  b                                           ; $44c0: $98
	add  a                                           ; $44c1: $87
	sub  a                                           ; $44c2: $97
	adc  b                                           ; $44c3: $88
	ld   a, c                                        ; $44c4: $79
	ld   a, b                                        ; $44c5: $78
	adc  b                                           ; $44c6: $88
	ld   a, c                                        ; $44c7: $79
	sub  a                                           ; $44c8: $97
	sbc  b                                           ; $44c9: $98
	ld   a, c                                        ; $44ca: $79
	add  [hl]                                        ; $44cb: $86
	adc  d                                           ; $44cc: $8a
	ld   h, a                                        ; $44cd: $67
	sbc  b                                           ; $44ce: $98
	add  a                                           ; $44cf: $87
	sbc  b                                           ; $44d0: $98
	adc  b                                           ; $44d1: $88
	ld   a, d                                        ; $44d2: $7a
	ld   [hl], a                                     ; $44d3: $77
	sbc  b                                           ; $44d4: $98
	adc  b                                           ; $44d5: $88
	add  a                                           ; $44d6: $87
	sbc  b                                           ; $44d7: $98
	adc  b                                           ; $44d8: $88
	sbc  c                                           ; $44d9: $99
	ld   a, b                                        ; $44da: $78
	adc  b                                           ; $44db: $88
	adc  c                                           ; $44dc: $89
	adc  c                                           ; $44dd: $89
	add  a                                           ; $44de: $87
	adc  b                                           ; $44df: $88
	ld   a, c                                        ; $44e0: $79
	add  a                                           ; $44e1: $87
	sbc  c                                           ; $44e2: $99
	adc  c                                           ; $44e3: $89
	ld   a, b                                        ; $44e4: $78
	add  a                                           ; $44e5: $87
	adc  b                                           ; $44e6: $88
	sbc  b                                           ; $44e7: $98
	sub  a                                           ; $44e8: $97
	ld   a, b                                        ; $44e9: $78
	ld   a, c                                        ; $44ea: $79
	add  a                                           ; $44eb: $87
	sbc  c                                           ; $44ec: $99
	adc  b                                           ; $44ed: $88
	sbc  b                                           ; $44ee: $98
	adc  b                                           ; $44ef: $88
	add  a                                           ; $44f0: $87
	adc  c                                           ; $44f1: $89
	ld   a, b                                        ; $44f2: $78
	sbc  b                                           ; $44f3: $98
	ld   a, c                                        ; $44f4: $79
	sub  a                                           ; $44f5: $97
	sbc  c                                           ; $44f6: $99
	adc  b                                           ; $44f7: $88
	sub  a                                           ; $44f8: $97
	adc  c                                           ; $44f9: $89
	ld   [hl], a                                     ; $44fa: $77
	sbc  b                                           ; $44fb: $98
	ld   a, b                                        ; $44fc: $78
	add  a                                           ; $44fd: $87
	adc  b                                           ; $44fe: $88
	sbc  b                                           ; $44ff: $98
	adc  b                                           ; $4500: $88
	adc  b                                           ; $4501: $88
	adc  b                                           ; $4502: $88
	adc  b                                           ; $4503: $88
	ld   a, b                                        ; $4504: $78
	sub  a                                           ; $4505: $97
	adc  b                                           ; $4506: $88
	sub  a                                           ; $4507: $97
	ld   a, c                                        ; $4508: $79
	adc  b                                           ; $4509: $88
	sbc  c                                           ; $450a: $99
	ld   a, c                                        ; $450b: $79
	add  a                                           ; $450c: $87
	sbc  c                                           ; $450d: $99
	ld   a, b                                        ; $450e: $78
	add  a                                           ; $450f: $87
	add  a                                           ; $4510: $87
	sbc  c                                           ; $4511: $99
	ld   a, b                                        ; $4512: $78
	add  a                                           ; $4513: $87
	ld   a, b                                        ; $4514: $78
	adc  b                                           ; $4515: $88
	add  a                                           ; $4516: $87
	sbc  c                                           ; $4517: $99
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	ld   a, b                                        ; $451a: $78
	ld   a, c                                        ; $451b: $79
	add  a                                           ; $451c: $87
	ld   a, c                                        ; $451d: $79
	add  a                                           ; $451e: $87
	adc  b                                           ; $451f: $88
	adc  b                                           ; $4520: $88
	adc  b                                           ; $4521: $88
	sub  a                                           ; $4522: $97
	ld   a, b                                        ; $4523: $78
	adc  b                                           ; $4524: $88
	ld   a, b                                        ; $4525: $78
	sbc  b                                           ; $4526: $98
	ld   a, b                                        ; $4527: $78
	add  a                                           ; $4528: $87
	adc  c                                           ; $4529: $89
	add  a                                           ; $452a: $87
	adc  c                                           ; $452b: $89
	ld   a, b                                        ; $452c: $78
	adc  b                                           ; $452d: $88
	adc  b                                           ; $452e: $88
	adc  c                                           ; $452f: $89
	add  a                                           ; $4530: $87
	adc  b                                           ; $4531: $88
	add  a                                           ; $4532: $87
	adc  b                                           ; $4533: $88
	adc  b                                           ; $4534: $88
	adc  b                                           ; $4535: $88
	adc  b                                           ; $4536: $88

Call_0d9_4537:
	ld   a, c                                        ; $4537: $79
	add  a                                           ; $4538: $87
	adc  b                                           ; $4539: $88
	adc  b                                           ; $453a: $88
	adc  b                                           ; $453b: $88
	ld   a, b                                        ; $453c: $78
	adc  b                                           ; $453d: $88
	ld   a, c                                        ; $453e: $79
	adc  b                                           ; $453f: $88
	add  a                                           ; $4540: $87
	add  a                                           ; $4541: $87
	adc  b                                           ; $4542: $88
	adc  c                                           ; $4543: $89
	ld   a, c                                        ; $4544: $79
	adc  b                                           ; $4545: $88
	adc  b                                           ; $4546: $88
	adc  b                                           ; $4547: $88
	adc  b                                           ; $4548: $88
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	add  a                                           ; $454c: $87
	adc  b                                           ; $454d: $88
	adc  b                                           ; $454e: $88
	adc  c                                           ; $454f: $89
	adc  b                                           ; $4550: $88
	adc  b                                           ; $4551: $88
	adc  b                                           ; $4552: $88
	adc  b                                           ; $4553: $88
	adc  b                                           ; $4554: $88
	adc  b                                           ; $4555: $88
	adc  b                                           ; $4556: $88
	adc  b                                           ; $4557: $88
	adc  b                                           ; $4558: $88
	adc  c                                           ; $4559: $89
	adc  b                                           ; $455a: $88
	ld   a, b                                        ; $455b: $78
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	adc  b                                           ; $455e: $88
	adc  b                                           ; $455f: $88
	adc  c                                           ; $4560: $89
	add  a                                           ; $4561: $87
	adc  b                                           ; $4562: $88
	add  a                                           ; $4563: $87
	adc  b                                           ; $4564: $88

Jump_0d9_4565:
	adc  b                                           ; $4565: $88
	adc  c                                           ; $4566: $89
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
	adc  c                                           ; $4572: $89
	adc  b                                           ; $4573: $88
	adc  b                                           ; $4574: $88
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	adc  c                                           ; $4579: $89
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
	sbc  b                                           ; $4589: $98
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
	sbc  b                                           ; $4598: $98
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
	ld   a, b                                        ; $4616: $78
	sbc  b                                           ; $4617: $98
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
	sbc  b                                           ; $466a: $98
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
	adc  c                                           ; $469d: $89
	adc  b                                           ; $469e: $88
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	sbc  b                                           ; $46a4: $98
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
	adc  c                                           ; $46b3: $89
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
	adc  c                                           ; $46da: $89
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
	adc  c                                           ; $46e6: $89
	adc  b                                           ; $46e7: $88
	adc  b                                           ; $46e8: $88
	sbc  b                                           ; $46e9: $98
	adc  b                                           ; $46ea: $88
	adc  b                                           ; $46eb: $88
	adc  b                                           ; $46ec: $88
	adc  c                                           ; $46ed: $89
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
	add  a                                           ; $46f8: $87
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
	adc  c                                           ; $4717: $89
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
	adc  c                                           ; $4722: $89
	adc  b                                           ; $4723: $88
	adc  b                                           ; $4724: $88
	adc  b                                           ; $4725: $88
	adc  b                                           ; $4726: $88
	sbc  b                                           ; $4727: $98
	adc  c                                           ; $4728: $89
	add  a                                           ; $4729: $87
	adc  b                                           ; $472a: $88
	adc  c                                           ; $472b: $89
	adc  b                                           ; $472c: $88
	adc  b                                           ; $472d: $88
	adc  b                                           ; $472e: $88
	adc  b                                           ; $472f: $88
	add  a                                           ; $4730: $87
	adc  b                                           ; $4731: $88
	adc  c                                           ; $4732: $89
	adc  b                                           ; $4733: $88
	add  a                                           ; $4734: $87
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
	add  a                                           ; $473f: $87
	sbc  c                                           ; $4740: $99
	ld   a, c                                        ; $4741: $79
	adc  b                                           ; $4742: $88
	adc  b                                           ; $4743: $88
	adc  c                                           ; $4744: $89
	adc  b                                           ; $4745: $88
	sub  a                                           ; $4746: $97
	adc  b                                           ; $4747: $88
	adc  b                                           ; $4748: $88
	adc  b                                           ; $4749: $88
	adc  b                                           ; $474a: $88
	ld   a, b                                        ; $474b: $78
	adc  b                                           ; $474c: $88
	adc  b                                           ; $474d: $88
	adc  b                                           ; $474e: $88
	adc  b                                           ; $474f: $88
	adc  b                                           ; $4750: $88
	sbc  b                                           ; $4751: $98
	adc  b                                           ; $4752: $88
	adc  b                                           ; $4753: $88
	adc  b                                           ; $4754: $88
	adc  c                                           ; $4755: $89
	adc  b                                           ; $4756: $88
	adc  b                                           ; $4757: $88
	sbc  b                                           ; $4758: $98
	adc  b                                           ; $4759: $88
	adc  c                                           ; $475a: $89
	adc  b                                           ; $475b: $88
	sbc  b                                           ; $475c: $98
	adc  b                                           ; $475d: $88
	sbc  b                                           ; $475e: $98
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
	sbc  b                                           ; $476a: $98
	adc  b                                           ; $476b: $88
	adc  b                                           ; $476c: $88
	adc  b                                           ; $476d: $88
	adc  b                                           ; $476e: $88
	adc  b                                           ; $476f: $88
	adc  b                                           ; $4770: $88
	adc  b                                           ; $4771: $88
	adc  c                                           ; $4772: $89
	add  a                                           ; $4773: $87
	ld   [hl], a                                     ; $4774: $77
	ld   a, c                                        ; $4775: $79
	sbc  c                                           ; $4776: $99
	adc  b                                           ; $4777: $88
	add  a                                           ; $4778: $87
	adc  c                                           ; $4779: $89
	sbc  b                                           ; $477a: $98
	adc  b                                           ; $477b: $88
	add  a                                           ; $477c: $87
	adc  b                                           ; $477d: $88
	adc  c                                           ; $477e: $89
	adc  b                                           ; $477f: $88
	adc  b                                           ; $4780: $88
	adc  b                                           ; $4781: $88
	adc  b                                           ; $4782: $88
	adc  b                                           ; $4783: $88
	adc  b                                           ; $4784: $88
	adc  b                                           ; $4785: $88
	adc  b                                           ; $4786: $88
	adc  b                                           ; $4787: $88
	sbc  b                                           ; $4788: $98
	adc  b                                           ; $4789: $88
	adc  b                                           ; $478a: $88
	adc  b                                           ; $478b: $88
	ld   a, c                                        ; $478c: $79
	adc  b                                           ; $478d: $88
	adc  b                                           ; $478e: $88
	adc  b                                           ; $478f: $88
	adc  b                                           ; $4790: $88
	adc  b                                           ; $4791: $88
	adc  b                                           ; $4792: $88
	adc  b                                           ; $4793: $88
	adc  b                                           ; $4794: $88
	adc  b                                           ; $4795: $88
	sbc  b                                           ; $4796: $98
	adc  b                                           ; $4797: $88
	adc  c                                           ; $4798: $89
	add  a                                           ; $4799: $87
	adc  b                                           ; $479a: $88
	adc  c                                           ; $479b: $89
	add  a                                           ; $479c: $87
	adc  c                                           ; $479d: $89
	adc  b                                           ; $479e: $88
	adc  b                                           ; $479f: $88
	adc  b                                           ; $47a0: $88
	adc  b                                           ; $47a1: $88
	adc  b                                           ; $47a2: $88
	ld   a, b                                        ; $47a3: $78
	adc  b                                           ; $47a4: $88
	adc  c                                           ; $47a5: $89
	adc  c                                           ; $47a6: $89
	sub  a                                           ; $47a7: $97
	ld   [hl], a                                     ; $47a8: $77
	ld   a, c                                        ; $47a9: $79
	adc  b                                           ; $47aa: $88
	add  a                                           ; $47ab: $87
	add  a                                           ; $47ac: $87
	adc  b                                           ; $47ad: $88
	sbc  c                                           ; $47ae: $99
	adc  b                                           ; $47af: $88
	adc  b                                           ; $47b0: $88
	adc  b                                           ; $47b1: $88
	adc  b                                           ; $47b2: $88
	ld   a, b                                        ; $47b3: $78
	adc  c                                           ; $47b4: $89
	adc  b                                           ; $47b5: $88
	add  a                                           ; $47b6: $87
	sbc  b                                           ; $47b7: $98
	adc  b                                           ; $47b8: $88
	add  a                                           ; $47b9: $87
	ld   [hl], a                                     ; $47ba: $77
	adc  b                                           ; $47bb: $88
	sbc  b                                           ; $47bc: $98
	adc  b                                           ; $47bd: $88
	adc  b                                           ; $47be: $88
	adc  b                                           ; $47bf: $88
	sbc  b                                           ; $47c0: $98
	adc  b                                           ; $47c1: $88
	adc  c                                           ; $47c2: $89
	adc  b                                           ; $47c3: $88
	adc  b                                           ; $47c4: $88
	ld   [hl], a                                     ; $47c5: $77
	ld   a, b                                        ; $47c6: $78
	adc  c                                           ; $47c7: $89
	sbc  c                                           ; $47c8: $99
	add  a                                           ; $47c9: $87
	ld   [hl], a                                     ; $47ca: $77
	add  a                                           ; $47cb: $87
	adc  b                                           ; $47cc: $88
	adc  c                                           ; $47cd: $89
	adc  b                                           ; $47ce: $88
	adc  b                                           ; $47cf: $88
	adc  b                                           ; $47d0: $88
	adc  b                                           ; $47d1: $88
	adc  b                                           ; $47d2: $88
	adc  b                                           ; $47d3: $88
	adc  b                                           ; $47d4: $88
	sbc  b                                           ; $47d5: $98
	add  a                                           ; $47d6: $87
	adc  c                                           ; $47d7: $89
	ld   a, b                                        ; $47d8: $78
	adc  b                                           ; $47d9: $88
	add  a                                           ; $47da: $87
	add  a                                           ; $47db: $87
	adc  c                                           ; $47dc: $89
	adc  c                                           ; $47dd: $89
	adc  b                                           ; $47de: $88
	adc  b                                           ; $47df: $88
	adc  b                                           ; $47e0: $88
	add  a                                           ; $47e1: $87
	sbc  b                                           ; $47e2: $98
	ld   a, b                                        ; $47e3: $78
	ld   a, b                                        ; $47e4: $78
	adc  b                                           ; $47e5: $88
	add  a                                           ; $47e6: $87
	adc  b                                           ; $47e7: $88
	adc  b                                           ; $47e8: $88
	adc  b                                           ; $47e9: $88
	adc  c                                           ; $47ea: $89
	ld   a, b                                        ; $47eb: $78
	sbc  b                                           ; $47ec: $98
	sbc  b                                           ; $47ed: $98
	ld   a, b                                        ; $47ee: $78
	sbc  b                                           ; $47ef: $98
	adc  c                                           ; $47f0: $89
	adc  b                                           ; $47f1: $88
	ld   [hl], a                                     ; $47f2: $77
	adc  b                                           ; $47f3: $88
	adc  c                                           ; $47f4: $89
	sbc  c                                           ; $47f5: $99
	adc  b                                           ; $47f6: $88
	add  a                                           ; $47f7: $87
	adc  b                                           ; $47f8: $88
	ld   a, b                                        ; $47f9: $78
	adc  b                                           ; $47fa: $88
	sbc  c                                           ; $47fb: $99
	ld   a, c                                        ; $47fc: $79
	adc  b                                           ; $47fd: $88
	ld   a, b                                        ; $47fe: $78
	adc  b                                           ; $47ff: $88
	sbc  b                                           ; $4800: $98
	adc  b                                           ; $4801: $88
	add  a                                           ; $4802: $87
	adc  b                                           ; $4803: $88
	ld   a, b                                        ; $4804: $78
	adc  b                                           ; $4805: $88
	sbc  b                                           ; $4806: $98
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	add  a                                           ; $4809: $87
	adc  b                                           ; $480a: $88
	adc  b                                           ; $480b: $88
	ld   a, b                                        ; $480c: $78
	sbc  b                                           ; $480d: $98
	adc  c                                           ; $480e: $89
	add  a                                           ; $480f: $87
	add  a                                           ; $4810: $87
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	ld   a, b                                        ; $4814: $78
	ld   a, b                                        ; $4815: $78
	adc  b                                           ; $4816: $88
	add  a                                           ; $4817: $87
	sbc  b                                           ; $4818: $98
	adc  b                                           ; $4819: $88
	ld   a, b                                        ; $481a: $78
	ld   a, c                                        ; $481b: $79
	ld   a, b                                        ; $481c: $78
	adc  c                                           ; $481d: $89
	adc  b                                           ; $481e: $88
	adc  b                                           ; $481f: $88
	sub  a                                           ; $4820: $97
	adc  c                                           ; $4821: $89
	add  a                                           ; $4822: $87
	sbc  c                                           ; $4823: $99
	ld   a, c                                        ; $4824: $79
	ld   [hl], a                                     ; $4825: $77
	add  a                                           ; $4826: $87
	ld   a, c                                        ; $4827: $79
	sub  a                                           ; $4828: $97
	adc  b                                           ; $4829: $88
	sbc  b                                           ; $482a: $98
	ld   a, b                                        ; $482b: $78
	sbc  b                                           ; $482c: $98
	adc  c                                           ; $482d: $89
	ld   [hl], a                                     ; $482e: $77
	add  a                                           ; $482f: $87
	sbc  b                                           ; $4830: $98
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	ld   a, b                                        ; $4833: $78
	adc  b                                           ; $4834: $88
	sbc  b                                           ; $4835: $98
	ld   [hl], a                                     ; $4836: $77
	adc  b                                           ; $4837: $88
	add  a                                           ; $4838: $87
	sbc  b                                           ; $4839: $98
	sbc  b                                           ; $483a: $98
	ld   a, b                                        ; $483b: $78
	adc  b                                           ; $483c: $88
	ld   a, b                                        ; $483d: $78
	add  a                                           ; $483e: $87
	sub  a                                           ; $483f: $97
	sbc  b                                           ; $4840: $98
	ld   a, b                                        ; $4841: $78
	adc  c                                           ; $4842: $89
	sbc  b                                           ; $4843: $98
	adc  c                                           ; $4844: $89
	add  a                                           ; $4845: $87
	ld   a, b                                        ; $4846: $78
	sbc  c                                           ; $4847: $99
	sub  a                                           ; $4848: $97
	adc  b                                           ; $4849: $88
	ld   [hl], a                                     ; $484a: $77
	adc  c                                           ; $484b: $89
	adc  b                                           ; $484c: $88
	adc  b                                           ; $484d: $88
	add  a                                           ; $484e: $87
	ld   [hl], a                                     ; $484f: $77
	adc  c                                           ; $4850: $89
	adc  b                                           ; $4851: $88
	ld   a, b                                        ; $4852: $78
	adc  b                                           ; $4853: $88
	ld   a, b                                        ; $4854: $78
	add  a                                           ; $4855: $87
	add  a                                           ; $4856: $87
	adc  c                                           ; $4857: $89
	adc  b                                           ; $4858: $88
	ld   a, b                                        ; $4859: $78
	sbc  c                                           ; $485a: $99
	ld   [hl], a                                     ; $485b: $77
	adc  b                                           ; $485c: $88
	add  a                                           ; $485d: $87
	ld   a, b                                        ; $485e: $78
	sub  a                                           ; $485f: $97
	adc  b                                           ; $4860: $88
	adc  c                                           ; $4861: $89
	ld   a, c                                        ; $4862: $79
	adc  b                                           ; $4863: $88
	adc  c                                           ; $4864: $89
	ld   a, b                                        ; $4865: $78
	sub  a                                           ; $4866: $97
	sbc  c                                           ; $4867: $99
	adc  c                                           ; $4868: $89
	add  a                                           ; $4869: $87
	adc  c                                           ; $486a: $89
	ld   a, c                                        ; $486b: $79
	adc  b                                           ; $486c: $88
	sbc  b                                           ; $486d: $98
	add  a                                           ; $486e: $87
	adc  c                                           ; $486f: $89
	sbc  b                                           ; $4870: $98
	adc  c                                           ; $4871: $89
	add  a                                           ; $4872: $87
	adc  b                                           ; $4873: $88
	ld   a, b                                        ; $4874: $78
	sub  a                                           ; $4875: $97
	ld   [hl], a                                     ; $4876: $77
	adc  b                                           ; $4877: $88
	adc  b                                           ; $4878: $88
	adc  b                                           ; $4879: $88
	add  a                                           ; $487a: $87
	ld   [hl], a                                     ; $487b: $77
	adc  c                                           ; $487c: $89
	ld   a, b                                        ; $487d: $78
	adc  b                                           ; $487e: $88
	adc  b                                           ; $487f: $88
	ld   [hl], a                                     ; $4880: $77
	sbc  b                                           ; $4881: $98
	sbc  c                                           ; $4882: $99
	adc  b                                           ; $4883: $88
	sbc  c                                           ; $4884: $99
	adc  c                                           ; $4885: $89
	adc  c                                           ; $4886: $89
	adc  b                                           ; $4887: $88
	sbc  b                                           ; $4888: $98
	add  a                                           ; $4889: $87
	xor  c                                           ; $488a: $a9
	adc  b                                           ; $488b: $88
	ld   a, c                                        ; $488c: $79
	adc  b                                           ; $488d: $88
	ld   a, b                                        ; $488e: $78
	ld   a, b                                        ; $488f: $78
	add  a                                           ; $4890: $87
	add  a                                           ; $4891: $87
	halt                                             ; $4892: $76
	ld   d, l                                        ; $4893: $55
	ld   d, h                                        ; $4894: $54
	ld   b, [hl]                                     ; $4895: $46
	ld   h, [hl]                                     ; $4896: $66
	ld   d, [hl]                                     ; $4897: $56
	ld   [hl], a                                     ; $4898: $77
	sbc  c                                           ; $4899: $99
	cp   l                                           ; $489a: $bd
	db   $dd                                         ; $489b: $dd
	xor  $ee                                         ; $489c: $ee $ee
	db   $dd                                         ; $489e: $dd
	db   $dd                                         ; $489f: $dd
	ret                                              ; $48a0: $c9


	adc  b                                           ; $48a1: $88
	halt                                             ; $48a2: $76
	ld   d, d                                        ; $48a3: $52
	ld   de, $4111                                   ; $48a4: $11 $11 $41
	ld   de, $3513                                   ; $48a7: $11 $13 $35
	ld   l, c                                        ; $48aa: $69
	db   $ed                                         ; $48ab: $ed
	rst  $38                                         ; $48ac: $ff
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	xor  $da                                         ; $48b0: $ee $da
	xor  b                                           ; $48b2: $a8
	and  a                                           ; $48b3: $a7
	ld   d, l                                        ; $48b4: $55
	ld   b, h                                        ; $48b5: $44
	ld   sp, $1511                                   ; $48b6: $31 $11 $15
	ld   hl, $1211                                   ; $48b9: $21 $11 $12
	ld   b, [hl]                                     ; $48bc: $46
	ld   a, a                                        ; $48bd: $7f
	rst  $38                                         ; $48be: $ff
	rst  $38                                         ; $48bf: $ff
	rst  $38                                         ; $48c0: $ff
	rst  $38                                         ; $48c1: $ff
	rst  $38                                         ; $48c2: $ff
	db   $ec                                         ; $48c3: $ec
	sbc  c                                           ; $48c4: $99
	halt                                             ; $48c5: $76
	ld   h, e                                        ; $48c6: $63
	ld   b, l                                        ; $48c7: $45
	ld   [hl-], a                                    ; $48c8: $32
	ld   de, $3611                                   ; $48c9: $11 $11 $36
	ld   de, $2211                                   ; $48cc: $11 $11 $22
	halt                                             ; $48cf: $76
	rst  $28                                         ; $48d0: $ef
	rst  $38                                         ; $48d1: $ff
	rst  $38                                         ; $48d2: $ff
	rst  $38                                         ; $48d3: $ff
	cp   $fe                                         ; $48d4: $fe $fe
	and  a                                           ; $48d6: $a7
	ld   a, c                                        ; $48d7: $79
	dec  h                                           ; $48d8: $25
	inc  de                                          ; $48d9: $13
	ld   b, c                                        ; $48da: $41
	ld   hl, $1a11                                   ; $48db: $21 $11 $1a
	ld   de, $1112                                   ; $48de: $11 $12 $11
	add  hl, sp                                      ; $48e1: $39
	adc  a                                           ; $48e2: $8f
	rst  $38                                         ; $48e3: $ff
	rst  $38                                         ; $48e4: $ff
	rst  $38                                         ; $48e5: $ff
	rst  $38                                         ; $48e6: $ff
	rst  $38                                         ; $48e7: $ff
	ld   a, b                                        ; $48e8: $78
	ld   e, c                                        ; $48e9: $59
	ld   hl, $6141                                   ; $48ea: $21 $41 $61
	ld   de, $1511                                   ; $48ed: $11 $11 $15
	add  c                                           ; $48f0: $81
	inc  de                                          ; $48f1: $13
	ld   de, $8f1a                                   ; $48f2: $11 $1a $8f
	cp   $ff                                         ; $48f5: $fe $ff
	rst  $38                                         ; $48f7: $ff
	rst  $38                                         ; $48f8: $ff
	rst  $38                                         ; $48f9: $ff
	rst  ToBoot                                         ; $48fa: $c7
	add  l                                           ; $48fb: $85
	ld   d, c                                        ; $48fc: $51
	ld   d, c                                        ; $48fd: $51
	inc  d                                           ; $48fe: $14
	ld   [de], a                                     ; $48ff: $12
	ld   de, $d111                                   ; $4900: $11 $11 $d1
	inc  de                                          ; $4903: $13
	ld   hl, $b813                                   ; $4904: $21 $13 $b8
	rst  $38                                         ; $4907: $ff
	rst  $38                                         ; $4908: $ff
	rst  $38                                         ; $4909: $ff
	rst  $38                                         ; $490a: $ff
	rst  $38                                         ; $490b: $ff
	or   $b6                                         ; $490c: $f6 $b6
	ld   [hl], c                                     ; $490e: $71
	ld   d, $13                                      ; $490f: $16 $13
	ld   de, $1111                                   ; $4911: $11 $11 $11
	adc  c                                           ; $4914: $89
	ld   de, $1142                                   ; $4915: $11 $42 $11
	xor  b                                           ; $4918: $a8
	rst  $38                                         ; $4919: $ff
	cp   a                                           ; $491a: $bf
	rst  $38                                         ; $491b: $ff
	rst  $38                                         ; $491c: $ff
	rst  $38                                         ; $491d: $ff
	db   $fc                                         ; $491e: $fc
	cp   e                                           ; $491f: $bb
	ld   d, l                                        ; $4920: $55
	dec  d                                           ; $4921: $15
	ld   de, $3111                                   ; $4922: $11 $11 $31
	ld   de, $111d                                   ; $4925: $11 $1d $11
	ld   d, h                                        ; $4928: $54
	ld   b, c                                        ; $4929: $41
	ld   a, [hl]                                     ; $492a: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $492b: $cf
	rst  $38                                         ; $492c: $ff
	rst  $38                                         ; $492d: $ff
	rst  $38                                         ; $492e: $ff
	rst  $38                                         ; $492f: $ff
	rst  $38                                         ; $4930: $ff
	sbc  l                                           ; $4931: $9d
	ld   b, h                                        ; $4932: $44
	ld   [de], a                                     ; $4933: $12
	ld   b, c                                        ; $4934: $41
	ld   hl, $1141                                   ; $4935: $21 $41 $11
	ld   a, [de]                                     ; $4938: $1a
	ld   sp, $3116                                   ; $4939: $31 $16 $31
	rra                                              ; $493c: $1f
	xor  a                                           ; $493d: $af
	rst  $38                                         ; $493e: $ff
	rst  $38                                         ; $493f: $ff
	rst  $38                                         ; $4940: $ff
	rst  $38                                         ; $4941: $ff
	rst  $28                                         ; $4942: $ef
	cp   a                                           ; $4943: $bf
	and  e                                           ; $4944: $a3
	ld   hl, $1171                                   ; $4945: $21 $71 $11
	inc  de                                          ; $4948: $13
	ld   de, $b111                                   ; $4949: $11 $11 $b1
	ld   d, $11                                      ; $494c: $16 $11
	rla                                              ; $494e: $17
	ld   a, [$ffff]                                  ; $494f: $fa $ff $ff
	rst  $38                                         ; $4952: $ff
	rst  $38                                         ; $4953: $ff
	rst  $38                                         ; $4954: $ff
	db   $fc                                         ; $4955: $fc
	di                                               ; $4956: $f3
	ld   sp, $1125                                   ; $4957: $31 $25 $11
	inc  de                                          ; $495a: $13
	ld   de, $7111                                   ; $495b: $11 $11 $71
	ld   [de], a                                     ; $495e: $12
	ld   b, c                                        ; $495f: $41
	ld   de, $effa                                   ; $4960: $11 $fa $ef
	rst  $38                                         ; $4963: $ff
	rst  $38                                         ; $4964: $ff
	rst  $38                                         ; $4965: $ff
	cp   $ff                                         ; $4966: $fe $ff
	ld   a, [$1413]                                  ; $4968: $fa $13 $14
	ld   de, $1121                                   ; $496b: $11 $21 $11
	ld   de, $1117                                   ; $496e: $11 $17 $11
	ld   h, c                                        ; $4971: $61
	ld   de, $af3f                                   ; $4972: $11 $3f $af
	rst  $38                                         ; $4975: $ff
	rst  $38                                         ; $4976: $ff
	rst  $38                                         ; $4977: $ff
	rst  $38                                         ; $4978: $ff
	rst  $38                                         ; $4979: $ff
	db   $fd                                         ; $497a: $fd
	ld   [hl], e                                     ; $497b: $73
	ld   hl, $1131                                   ; $497c: $21 $31 $11
	ld   hl, $1411                                   ; $497f: $21 $11 $14
	ld   de, $1112                                   ; $4982: $11 $12 $11
	ld   a, [de]                                     ; $4985: $1a
	db   $db                                         ; $4986: $db
	rst  $38                                         ; $4987: $ff
	rst  $38                                         ; $4988: $ff
	rst  $38                                         ; $4989: $ff
	rst  $38                                         ; $498a: $ff
	rst  $38                                         ; $498b: $ff
	rst  $38                                         ; $498c: $ff
	and  a                                           ; $498d: $a7
	ld   d, c                                        ; $498e: $51
	ld   de, $1111                                   ; $498f: $11 $11 $11
	ld   de, $5111                                   ; $4992: $11 $11 $51
	ld   de, $1111                                   ; $4995: $11 $11 $11
	jp   z, $ffff                                    ; $4998: $ca $ff $ff

	rst  $38                                         ; $499b: $ff
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	rst  $38                                         ; $499e: $ff
	ret  c                                           ; $499f: $d8

	add  h                                           ; $49a0: $84
	ld   [de], a                                     ; $49a1: $12
	inc  hl                                          ; $49a2: $23
	ld   de, $1111                                   ; $49a3: $11 $11 $11
	ld   [de], a                                     ; $49a6: $12
	ld   de, $1111                                   ; $49a7: $11 $11 $11
	ld   c, b                                        ; $49aa: $48
	adc  a                                           ; $49ab: $8f
	rst  $38                                         ; $49ac: $ff
	rst  $38                                         ; $49ad: $ff
	rst  $38                                         ; $49ae: $ff
	rst  $38                                         ; $49af: $ff
	rst  $38                                         ; $49b0: $ff
	db   $fd                                         ; $49b1: $fd
	cp   d                                           ; $49b2: $ba
	ld   h, a                                        ; $49b3: $67
	ld   h, [hl]                                     ; $49b4: $66
	ld   h, e                                        ; $49b5: $63
	ld   sp, $1211                                   ; $49b6: $31 $11 $12
	ld   de, $1111                                   ; $49b9: $11 $11 $11
	inc  d                                           ; $49bc: $14
	ld   e, c                                        ; $49bd: $59
	rst  $28                                         ; $49be: $ef
	rst  $38                                         ; $49bf: $ff
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	rst  $38                                         ; $49c3: $ff
	rst  $38                                         ; $49c4: $ff
	call z, $86a9                                    ; $49c5: $cc $a9 $86
	ld   sp, $1111                                   ; $49c8: $31 $11 $11
	ld   de, $1111                                   ; $49cb: $11 $11 $11
	ld   de, $ad46                                   ; $49ce: $11 $46 $ad
	rst  $38                                         ; $49d1: $ff
	rst  $38                                         ; $49d2: $ff
	rst  $38                                         ; $49d3: $ff
	rst  $38                                         ; $49d4: $ff
	rst  $38                                         ; $49d5: $ff
	rst  $38                                         ; $49d6: $ff
	db   $fd                                         ; $49d7: $fd
	res  2, [hl]                                     ; $49d8: $cb $96
	ld   sp, $1111                                   ; $49da: $31 $11 $11
	ld   de, $1111                                   ; $49dd: $11 $11 $11
	ld   de, $9e47                                   ; $49e0: $11 $47 $9e
	rst  $38                                         ; $49e3: $ff
	rst  $38                                         ; $49e4: $ff
	rst  $38                                         ; $49e5: $ff
	rst  $38                                         ; $49e6: $ff
	rst  $38                                         ; $49e7: $ff
	rst  $38                                         ; $49e8: $ff
	rst  $38                                         ; $49e9: $ff
	db   $db                                         ; $49ea: $db
	ld   [hl], l                                     ; $49eb: $75
	ld   hl, $1111                                   ; $49ec: $21 $11 $11
	ld   de, $1111                                   ; $49ef: $11 $11 $11
	ld   de, $ae47                                   ; $49f2: $11 $47 $ae
	rst  $38                                         ; $49f5: $ff
	rst  $38                                         ; $49f6: $ff
	rst  $38                                         ; $49f7: $ff
	rst  $38                                         ; $49f8: $ff
	rst  $38                                         ; $49f9: $ff
	rst  $38                                         ; $49fa: $ff
	cp   $c8                                         ; $49fb: $fe $c8
	ld   h, e                                        ; $49fd: $63
	ld   de, $1111                                   ; $49fe: $11 $11 $11
	ld   de, $1111                                   ; $4a01: $11 $11 $11
	inc  de                                          ; $4a04: $13
	ld   l, d                                        ; $4a05: $6a
	rst  JumpTable                                         ; $4a06: $df
	rst  $38                                         ; $4a07: $ff
	rst  $38                                         ; $4a08: $ff
	rst  $38                                         ; $4a09: $ff
	rst  $38                                         ; $4a0a: $ff
	rst  $38                                         ; $4a0b: $ff
	rst  $38                                         ; $4a0c: $ff
	db   $ec                                         ; $4a0d: $ec
	sub  [hl]                                        ; $4a0e: $96
	ld   b, c                                        ; $4a0f: $41
	ld   de, $1111                                   ; $4a10: $11 $11 $11
	ld   de, $1111                                   ; $4a13: $11 $11 $11
	ld   d, $9d                                      ; $4a16: $16 $9d
	rst  $38                                         ; $4a18: $ff
	rst  $38                                         ; $4a19: $ff
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	rst  $38                                         ; $4a1c: $ff
	rst  $38                                         ; $4a1d: $ff
	cp   $d9                                         ; $4a1e: $fe $d9
	ld   h, h                                        ; $4a20: $64
	ld   de, $1111                                   ; $4a21: $11 $11 $11
	ld   de, $1111                                   ; $4a24: $11 $11 $11
	ld   de, $cf69                                   ; $4a27: $11 $69 $cf
	rst  $38                                         ; $4a2a: $ff
	rst  $38                                         ; $4a2b: $ff
	rst  $38                                         ; $4a2c: $ff
	rst  $38                                         ; $4a2d: $ff
	rst  $38                                         ; $4a2e: $ff
	rst  $38                                         ; $4a2f: $ff
	db   $ec                                         ; $4a30: $ec
	sub  [hl]                                        ; $4a31: $96
	ld   b, c                                        ; $4a32: $41
	ld   de, $1111                                   ; $4a33: $11 $11 $11
	ld   de, $1111                                   ; $4a36: $11 $11 $11
	dec  d                                           ; $4a39: $15
	sbc  h                                           ; $4a3a: $9c
	rst  $38                                         ; $4a3b: $ff
	rst  $38                                         ; $4a3c: $ff
	rst  $38                                         ; $4a3d: $ff
	rst  $38                                         ; $4a3e: $ff
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	cp   $c9                                         ; $4a41: $fe $c9
	ld   h, h                                        ; $4a43: $64
	ld   de, $1111                                   ; $4a44: $11 $11 $11
	ld   de, $1111                                   ; $4a47: $11 $11 $11
	ld   de, $df58                                   ; $4a4a: $11 $58 $df
	rst  $38                                         ; $4a4d: $ff
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	rst  $38                                         ; $4a50: $ff
	rst  $38                                         ; $4a51: $ff
	rst  $38                                         ; $4a52: $ff
	db   $fc                                         ; $4a53: $fc
	and  a                                           ; $4a54: $a7
	ld   d, d                                        ; $4a55: $52
	ld   de, $1111                                   ; $4a56: $11 $11 $11
	ld   de, $1111                                   ; $4a59: $11 $11 $11
	inc  d                                           ; $4a5c: $14
	ld   a, e                                        ; $4a5d: $7b
	rst  $38                                         ; $4a5e: $ff
	rst  $38                                         ; $4a5f: $ff
	rst  $38                                         ; $4a60: $ff
	rst  $38                                         ; $4a61: $ff
	rst  $38                                         ; $4a62: $ff
	rst  $38                                         ; $4a63: $ff
	rst  $38                                         ; $4a64: $ff
	db   $db                                         ; $4a65: $db
	add  [hl]                                        ; $4a66: $86
	ld   sp, $1111                                   ; $4a67: $31 $11 $11
	ld   de, $1111                                   ; $4a6a: $11 $11 $11
	ld   de, $af36                                   ; $4a6d: $11 $36 $af
	rst  $38                                         ; $4a70: $ff
	rst  $38                                         ; $4a71: $ff
	rst  $38                                         ; $4a72: $ff
	rst  $38                                         ; $4a73: $ff
	rst  $38                                         ; $4a74: $ff
	rst  $38                                         ; $4a75: $ff
	rst  $38                                         ; $4a76: $ff
	ret                                              ; $4a77: $c9


	ld   [hl], h                                     ; $4a78: $74
	ld   de, $1111                                   ; $4a79: $11 $11 $11
	ld   de, $1111                                   ; $4a7c: $11 $11 $11
	inc  de                                          ; $4a7f: $13
	ld   l, c                                        ; $4a80: $69
	rst  $28                                         ; $4a81: $ef
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	rst  $38                                         ; $4a86: $ff
	rst  $38                                         ; $4a87: $ff
	db   $fc                                         ; $4a88: $fc
	sub  a                                           ; $4a89: $97
	ld   b, c                                        ; $4a8a: $41
	ld   de, $1111                                   ; $4a8b: $11 $11 $11
	ld   de, $1111                                   ; $4a8e: $11 $11 $11
	dec  h                                           ; $4a91: $25
	xor  [hl]                                        ; $4a92: $ae
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	rst  $38                                         ; $4a97: $ff
	rst  $38                                         ; $4a98: $ff
	cp   $c9                                         ; $4a99: $fe $c9
	ld   [hl], h                                     ; $4a9b: $74
	ld   de, $1111                                   ; $4a9c: $11 $11 $11
	ld   de, $1111                                   ; $4a9f: $11 $11 $11
	ld   [de], a                                     ; $4aa2: $12
	ld   e, c                                        ; $4aa3: $59
	rst  $28                                         ; $4aa4: $ef
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	rst  $38                                         ; $4aa8: $ff
	rst  $38                                         ; $4aa9: $ff
	rst  $38                                         ; $4aaa: $ff
	db   $fc                                         ; $4aab: $fc
	add  [hl]                                        ; $4aac: $86
	ld   sp, $1111                                   ; $4aad: $31 $11 $11
	ld   de, $1111                                   ; $4ab0: $11 $11 $11
	ld   de, $bf37                                   ; $4ab3: $11 $37 $bf
	rst  $38                                         ; $4ab6: $ff
	rst  $38                                         ; $4ab7: $ff
	rst  $38                                         ; $4ab8: $ff
	rst  $38                                         ; $4ab9: $ff
	rst  $38                                         ; $4aba: $ff
	rst  $38                                         ; $4abb: $ff
	cp   $a8                                         ; $4abc: $fe $a8
	ld   d, d                                        ; $4abe: $52
	ld   de, $1111                                   ; $4abf: $11 $11 $11
	ld   de, $1111                                   ; $4ac2: $11 $11 $11
	ld   h, $af                                      ; $4ac5: $26 $af
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	rst  $38                                         ; $4ac9: $ff
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	rst  $38                                         ; $4acc: $ff
	db   $fd                                         ; $4acd: $fd
	or   a                                           ; $4ace: $b7
	ld   h, d                                        ; $4acf: $62
	ld   de, $1111                                   ; $4ad0: $11 $11 $11
	ld   de, $1111                                   ; $4ad3: $11 $11 $11
	ld   [hl], $df                                   ; $4ad6: $36 $df
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	rst  $38                                         ; $4ada: $ff
	rst  $38                                         ; $4adb: $ff
	rst  $38                                         ; $4adc: $ff
	rst  $38                                         ; $4add: $ff
	ret                                              ; $4ade: $c9


	add  e                                           ; $4adf: $83
	ld   hl, $1111                                   ; $4ae0: $21 $11 $11
	ld   de, $1111                                   ; $4ae3: $11 $11 $11
	ld   de, $ff58                                   ; $4ae6: $11 $58 $ff
	rst  $38                                         ; $4ae9: $ff
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	rst  $38                                         ; $4aec: $ff
	rst  $38                                         ; $4aed: $ff
	db   $fd                                         ; $4aee: $fd
	sub  l                                           ; $4aef: $95
	ld   b, c                                        ; $4af0: $41
	ld   de, $1111                                   ; $4af1: $11 $11 $11
	ld   de, $1111                                   ; $4af4: $11 $11 $11
	dec  d                                           ; $4af7: $15
	ld   a, a                                        ; $4af8: $7f
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	rst  $38                                         ; $4afd: $ff
	rst  $38                                         ; $4afe: $ff
	ret                                              ; $4aff: $c9


	ld   b, e                                        ; $4b00: $43
	ld   de, $1111                                   ; $4b01: $11 $11 $11
	ld   de, $1111                                   ; $4b04: $11 $11 $11
	ld   de, $ff58                                   ; $4b07: $11 $58 $ff
	rst  $38                                         ; $4b0a: $ff
	rst  $38                                         ; $4b0b: $ff
	rst  $38                                         ; $4b0c: $ff
	rst  $38                                         ; $4b0d: $ff
	rst  $38                                         ; $4b0e: $ff
	db   $fc                                         ; $4b0f: $fc
	sub  e                                           ; $4b10: $93
	ld   hl, $1111                                   ; $4b11: $21 $11 $11
	ld   de, $1111                                   ; $4b14: $11 $11 $11
	ld   de, $bf16                                   ; $4b17: $11 $16 $bf
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	rst  $38                                         ; $4b1c: $ff
	rst  $38                                         ; $4b1d: $ff
	rst  $38                                         ; $4b1e: $ff
	cp   $b6                                         ; $4b1f: $fe $b6
	ld   hl, $1111                                   ; $4b21: $21 $11 $11
	ld   de, $1111                                   ; $4b24: $11 $11 $11
	ld   de, $8f13                                   ; $4b27: $11 $13 $8f
	rst  $38                                         ; $4b2a: $ff
	rst  $38                                         ; $4b2b: $ff
	rst  $38                                         ; $4b2c: $ff
	rst  $38                                         ; $4b2d: $ff
	rst  $38                                         ; $4b2e: $ff
	rst  $38                                         ; $4b2f: $ff
	or   [hl]                                        ; $4b30: $b6
	ld   b, c                                        ; $4b31: $41
	ld   de, $1111                                   ; $4b32: $11 $11 $11
	ld   de, $1111                                   ; $4b35: $11 $11 $11
	inc  h                                           ; $4b38: $24
	ld   a, [hl]                                     ; $4b39: $7e
	rst  $38                                         ; $4b3a: $ff
	rst  $38                                         ; $4b3b: $ff
	rst  $38                                         ; $4b3c: $ff
	rst  $38                                         ; $4b3d: $ff
	rst  $38                                         ; $4b3e: $ff
	rst  $38                                         ; $4b3f: $ff
	rst  ToBoot                                         ; $4b40: $c7
	ld   d, c                                        ; $4b41: $51
	ld   de, $1111                                   ; $4b42: $11 $11 $11
	ld   de, $1111                                   ; $4b45: $11 $11 $11
	dec  d                                           ; $4b48: $15
	ld   l, h                                        ; $4b49: $6c
	rst  $38                                         ; $4b4a: $ff
	rst  $38                                         ; $4b4b: $ff
	rst  $38                                         ; $4b4c: $ff
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	rst  $38                                         ; $4b4f: $ff
	ret  c                                           ; $4b50: $d8

	ld   d, c                                        ; $4b51: $51
	ld   de, $1111                                   ; $4b52: $11 $11 $11
	ld   de, $1111                                   ; $4b55: $11 $11 $11
	dec  d                                           ; $4b58: $15
	ld   l, a                                        ; $4b59: $6f
	rst  $38                                         ; $4b5a: $ff
	rst  $38                                         ; $4b5b: $ff
	rst  $38                                         ; $4b5c: $ff
	rst  $38                                         ; $4b5d: $ff
	rst  $38                                         ; $4b5e: $ff
	rst  $38                                         ; $4b5f: $ff
	cp   b                                           ; $4b60: $b8
	ld   b, c                                        ; $4b61: $41
	ld   de, $1111                                   ; $4b62: $11 $11 $11
	ld   de, $1111                                   ; $4b65: $11 $11 $11
	ld   h, $8f                                      ; $4b68: $26 $8f
	rst  $38                                         ; $4b6a: $ff
	rst  $38                                         ; $4b6b: $ff
	rst  $38                                         ; $4b6c: $ff
	rst  $38                                         ; $4b6d: $ff
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	sub  l                                           ; $4b70: $95
	ld   hl, $1111                                   ; $4b71: $21 $11 $11
	ld   de, $1111                                   ; $4b74: $11 $11 $11
	ld   de, $df56                                   ; $4b77: $11 $56 $df
	rst  $38                                         ; $4b7a: $ff
	rst  $38                                         ; $4b7b: $ff
	rst  $38                                         ; $4b7c: $ff
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	ei                                               ; $4b7f: $fb
	ld   h, e                                        ; $4b80: $63
	ld   de, $1111                                   ; $4b81: $11 $11 $11
	ld   de, $1111                                   ; $4b84: $11 $11 $11
	inc  d                                           ; $4b87: $14
	ld   a, e                                        ; $4b88: $7b
	rst  $38                                         ; $4b89: $ff
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	rst  $38                                         ; $4b8e: $ff
	rst  ToBoot                                         ; $4b8f: $c7
	ld   b, c                                        ; $4b90: $41
	ld   de, $1111                                   ; $4b91: $11 $11 $11
	ld   de, $1111                                   ; $4b94: $11 $11 $11
	ld   d, a                                        ; $4b97: $57
	adc  a                                           ; $4b98: $8f
	rst  $38                                         ; $4b99: $ff
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	rst  $38                                         ; $4b9c: $ff
	rst  $38                                         ; $4b9d: $ff
	db   $fd                                         ; $4b9e: $fd
	ld   [hl], h                                     ; $4b9f: $74
	ld   de, $1111                                   ; $4ba0: $11 $11 $11
	ld   de, $1111                                   ; $4ba3: $11 $11 $11
	inc  de                                          ; $4ba6: $13
	ld   a, d                                        ; $4ba7: $7a
	rst  $38                                         ; $4ba8: $ff
	rst  $38                                         ; $4ba9: $ff
	rst  $38                                         ; $4baa: $ff
	rst  $38                                         ; $4bab: $ff
	rst  $38                                         ; $4bac: $ff
	rst  $38                                         ; $4bad: $ff
	or   a                                           ; $4bae: $b7
	ld   b, c                                        ; $4baf: $41
	ld   de, $1111                                   ; $4bb0: $11 $11 $11
	ld   de, $1211                                   ; $4bb3: $11 $11 $12
	ld   e, b                                        ; $4bb6: $58
	xor  a                                           ; $4bb7: $af
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	rst  $38                                         ; $4bba: $ff
	rst  $38                                         ; $4bbb: $ff
	rst  $38                                         ; $4bbc: $ff
	ld   a, [$1163]                                  ; $4bbd: $fa $63 $11
	ld   de, $1111                                   ; $4bc0: $11 $11 $11
	ld   de, $4411                                   ; $4bc3: $11 $11 $44
	xor  h                                           ; $4bc6: $ac
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	rst  $38                                         ; $4bc9: $ff
	rst  $38                                         ; $4bca: $ff
	rst  $38                                         ; $4bcb: $ff
	db   $fd                                         ; $4bcc: $fd
	sub  l                                           ; $4bcd: $95
	ld   hl, $1111                                   ; $4bce: $21 $11 $11
	ld   de, $1111                                   ; $4bd1: $11 $11 $11
	ld   b, l                                        ; $4bd4: $45
	ld   l, d                                        ; $4bd5: $6a
	rst  JumpTable                                         ; $4bd6: $df
	rst  $38                                         ; $4bd7: $ff
	rst  $38                                         ; $4bd8: $ff
	rst  $38                                         ; $4bd9: $ff
	rst  $38                                         ; $4bda: $ff
	rst  $38                                         ; $4bdb: $ff
	rst  $10                                         ; $4bdc: $d7
	ld   b, c                                        ; $4bdd: $41
	ld   de, $1111                                   ; $4bde: $11 $11 $11
	ld   de, $1411                                   ; $4be1: $11 $11 $14
	halt                                             ; $4be4: $76
	cp   a                                           ; $4be5: $bf
	rst  $38                                         ; $4be6: $ff
	rst  $38                                         ; $4be7: $ff
	rst  $38                                         ; $4be8: $ff
	rst  $38                                         ; $4be9: $ff
	rst  $38                                         ; $4bea: $ff
	ei                                               ; $4beb: $fb
	ld   h, h                                        ; $4bec: $64
	ld   de, $1111                                   ; $4bed: $11 $11 $11
	ld   de, $1111                                   ; $4bf0: $11 $11 $11
	ld   e, b                                        ; $4bf3: $58
	ld   a, h                                        ; $4bf4: $7c
	rst  $38                                         ; $4bf5: $ff
	rst  $38                                         ; $4bf6: $ff
	rst  $38                                         ; $4bf7: $ff
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	and  l                                           ; $4bfb: $a5
	ld   sp, $1111                                   ; $4bfc: $31 $11 $11
	ld   de, $1111                                   ; $4bff: $11 $11 $11
	ld   a, [de]                                     ; $4c02: $1a
	ld   l, c                                        ; $4c03: $69
	rst  $38                                         ; $4c04: $ff
	rst  $38                                         ; $4c05: $ff
	rst  $38                                         ; $4c06: $ff
	rst  $38                                         ; $4c07: $ff
	rst  $38                                         ; $4c08: $ff
	rst  $38                                         ; $4c09: $ff
	rst  $20                                         ; $4c0a: $e7
	ld   sp, $1111                                   ; $4c0b: $31 $11 $11
	ld   de, $1111                                   ; $4c0e: $11 $11 $11
	dec  d                                           ; $4c11: $15
	adc  c                                           ; $4c12: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c13: $cf
	rst  $38                                         ; $4c14: $ff
	rst  $38                                         ; $4c15: $ff
	rst  $38                                         ; $4c16: $ff
	rst  $38                                         ; $4c17: $ff
	rst  $38                                         ; $4c18: $ff
	ld   [$1151], a                                  ; $4c19: $ea $51 $11
	ld   de, $1111                                   ; $4c1c: $11 $11 $11
	ld   de, $6b11                                   ; $4c1f: $11 $11 $6b
	xor  [hl]                                        ; $4c22: $ae
	rst  $38                                         ; $4c23: $ff
	rst  $38                                         ; $4c24: $ff
	rst  $38                                         ; $4c25: $ff
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	db   $db                                         ; $4c28: $db
	ld   [hl], d                                     ; $4c29: $72
	ld   de, $1111                                   ; $4c2a: $11 $11 $11
	ld   de, $2111                                   ; $4c2d: $11 $11 $21
	dec  sp                                          ; $4c30: $3b
	cp   h                                           ; $4c31: $bc
	rst  $38                                         ; $4c32: $ff
	rst  $38                                         ; $4c33: $ff
	rst  $38                                         ; $4c34: $ff
	rst  $38                                         ; $4c35: $ff
	rst  $38                                         ; $4c36: $ff
	db   $fc                                         ; $4c37: $fc
	and  l                                           ; $4c38: $a5
	ld   de, $1111                                   ; $4c39: $11 $11 $11
	ld   de, $2111                                   ; $4c3c: $11 $11 $21
	rla                                              ; $4c3f: $17
	db   $dd                                         ; $4c40: $dd
	rst  JumpTable                                         ; $4c41: $df
	rst  $38                                         ; $4c42: $ff
	rst  $38                                         ; $4c43: $ff
	rst  $38                                         ; $4c44: $ff
	rst  $38                                         ; $4c45: $ff
	db   $fc                                         ; $4c46: $fc
	xor  b                                           ; $4c47: $a8
	ld   hl, $1111                                   ; $4c48: $21 $11 $11
	ld   de, $1211                                   ; $4c4b: $11 $11 $12
	ld   [hl+], a                                    ; $4c4e: $22
	xor  a                                           ; $4c4f: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c50: $cf
	rst  $38                                         ; $4c51: $ff
	rst  $38                                         ; $4c52: $ff
	rst  $38                                         ; $4c53: $ff
	rst  $38                                         ; $4c54: $ff
	rst  $38                                         ; $4c55: $ff
	or   a                                           ; $4c56: $b7
	ld   b, d                                        ; $4c57: $42
	ld   de, $1111                                   ; $4c58: $11 $11 $11
	ld   de, $4211                                   ; $4c5b: $11 $11 $42
	ld   c, e                                        ; $4c5e: $4b
	db   $fd                                         ; $4c5f: $fd
	rst  $38                                         ; $4c60: $ff
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	rst  $38                                         ; $4c63: $ff
	rst  $38                                         ; $4c64: $ff
	ld   a, [$2163]                                  ; $4c65: $fa $63 $21
	ld   de, $1111                                   ; $4c68: $11 $11 $11
	ld   de, $4415                                   ; $4c6b: $11 $15 $44
	xor  [hl]                                        ; $4c6e: $ae
	rst  JumpTable                                         ; $4c6f: $df
	rst  $38                                         ; $4c70: $ff
	rst  $38                                         ; $4c71: $ff
	rst  $38                                         ; $4c72: $ff
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	sub  [hl]                                        ; $4c75: $96
	inc  [hl]                                        ; $4c76: $34
	ld   de, $1111                                   ; $4c77: $11 $11 $11
	ld   de, $4611                                   ; $4c7a: $11 $11 $46
	ld   b, [hl]                                     ; $4c7d: $46
	xor  h                                           ; $4c7e: $ac
	cp   h                                           ; $4c7f: $bc
	rst  $38                                         ; $4c80: $ff
	rst  $38                                         ; $4c81: $ff
	rst  $38                                         ; $4c82: $ff
	db   $fd                                         ; $4c83: $fd
	db   $ed                                         ; $4c84: $ed
	sbc  c                                           ; $4c85: $99
	ld   d, h                                        ; $4c86: $54
	ld   d, d                                        ; $4c87: $52
	inc  de                                          ; $4c88: $13
	ld   hl, $3112                                   ; $4c89: $21 $12 $31
	dec  h                                           ; $4c8c: $25
	ld   b, h                                        ; $4c8d: $44
	ld   e, c                                        ; $4c8e: $59
	xor  d                                           ; $4c8f: $aa
	xor  [hl]                                        ; $4c90: $ae
	cp   $ff                                         ; $4c91: $fe $ff
	rst  $38                                         ; $4c93: $ff
	call c, Call_0d9_78db                            ; $4c94: $dc $db $78
	ld   [hl], a                                     ; $4c97: $77
	ld   b, l                                        ; $4c98: $45
	ld   d, e                                        ; $4c99: $53
	ld   b, c                                        ; $4c9a: $41
	inc  [hl]                                        ; $4c9b: $34
	ld   [de], a                                     ; $4c9c: $12
	inc  h                                           ; $4c9d: $24
	ld   [hl-], a                                    ; $4c9e: $32
	ld   b, [hl]                                     ; $4c9f: $46
	ld   [hl], a                                     ; $4ca0: $77
	sbc  h                                           ; $4ca1: $9c
	db   $dd                                         ; $4ca2: $dd
	rst  $28                                         ; $4ca3: $ef
	rst  $38                                         ; $4ca4: $ff
	xor  $ec                                         ; $4ca5: $ee $ec
	jp   z, Jump_0d9_77aa                            ; $4ca7: $ca $aa $77

	ld   h, [hl]                                     ; $4caa: $66
	ld   h, l                                        ; $4cab: $65
	ld   b, e                                        ; $4cac: $43
	ld   b, e                                        ; $4cad: $43
	ld   [hl+], a                                    ; $4cae: $22
	inc  sp                                          ; $4caf: $33
	inc  hl                                          ; $4cb0: $23
	ld   b, l                                        ; $4cb1: $45
	ld   h, [hl]                                     ; $4cb2: $66
	adc  d                                           ; $4cb3: $8a
	cp   h                                           ; $4cb4: $bc
	db   $dd                                         ; $4cb5: $dd
	xor  $dd                                         ; $4cb6: $ee $dd
	db   $ec                                         ; $4cb8: $ec
	cp   d                                           ; $4cb9: $ba
	xor  d                                           ; $4cba: $aa
	adc  b                                           ; $4cbb: $88
	add  a                                           ; $4cbc: $87
	halt                                             ; $4cbd: $76
	ld   d, h                                        ; $4cbe: $54
	ld   b, h                                        ; $4cbf: $44
	ld   b, h                                        ; $4cc0: $44
	inc  sp                                          ; $4cc1: $33
	ld   b, h                                        ; $4cc2: $44
	ld   b, h                                        ; $4cc3: $44
	ld   d, [hl]                                     ; $4cc4: $56
	ld   l, b                                        ; $4cc5: $68
	sbc  d                                           ; $4cc6: $9a
	xor  d                                           ; $4cc7: $aa
	cp   e                                           ; $4cc8: $bb
	call z, $accc                                    ; $4cc9: $cc $cc $ac
	cp   d                                           ; $4ccc: $ba
	xor  d                                           ; $4ccd: $aa
	sbc  d                                           ; $4cce: $9a
	xor  e                                           ; $4ccf: $ab
	xor  c                                           ; $4cd0: $a9
	sbc  c                                           ; $4cd1: $99
	adc  b                                           ; $4cd2: $88
	ld   [hl], a                                     ; $4cd3: $77
	ld   h, l                                        ; $4cd4: $65
	ld   d, h                                        ; $4cd5: $54
	inc  sp                                          ; $4cd6: $33
	ld   b, h                                        ; $4cd7: $44
	ld   b, e                                        ; $4cd8: $43
	ld   b, l                                        ; $4cd9: $45
	ld   d, l                                        ; $4cda: $55
	ld   a, c                                        ; $4cdb: $79
	adc  d                                           ; $4cdc: $8a
	xor  d                                           ; $4cdd: $aa
	xor  d                                           ; $4cde: $aa
	cp   h                                           ; $4cdf: $bc
	set  1, e                                        ; $4ce0: $cb $cb
	cp   d                                           ; $4ce2: $ba
	xor  d                                           ; $4ce3: $aa
	cp   d                                           ; $4ce4: $ba
	xor  e                                           ; $4ce5: $ab
	xor  c                                           ; $4ce6: $a9
	ld   [hl], a                                     ; $4ce7: $77
	ld   d, l                                        ; $4ce8: $55
	ld   h, l                                        ; $4ce9: $65
	ld   d, h                                        ; $4cea: $54
	ld   [hl-], a                                    ; $4ceb: $32
	inc  hl                                          ; $4cec: $23
	inc  [hl]                                        ; $4ced: $34
	ld   b, l                                        ; $4cee: $45
	ld   d, [hl]                                     ; $4cef: $56
	ld   a, b                                        ; $4cf0: $78
	xor  d                                           ; $4cf1: $aa
	call z, $ddcc                                    ; $4cf2: $cc $cc $dd
	call c, $bcbc                                    ; $4cf5: $dc $bc $bc
	cp   e                                           ; $4cf8: $bb
	xor  d                                           ; $4cf9: $aa
	sbc  c                                           ; $4cfa: $99
	add  a                                           ; $4cfb: $87
	add  a                                           ; $4cfc: $87
	halt                                             ; $4cfd: $76
	ld   d, h                                        ; $4cfe: $54
	inc  sp                                          ; $4cff: $33
	inc  sp                                          ; $4d00: $33
	inc  hl                                          ; $4d01: $23
	inc  [hl]                                        ; $4d02: $34
	inc  [hl]                                        ; $4d03: $34
	ld   d, [hl]                                     ; $4d04: $56
	adc  b                                           ; $4d05: $88
	xor  e                                           ; $4d06: $ab
	set  1, h                                        ; $4d07: $cb $cc
	call $bcbd                                       ; $4d09: $cd $bd $bc
	cp   d                                           ; $4d0c: $ba
	cp   d                                           ; $4d0d: $ba
	sbc  c                                           ; $4d0e: $99
	adc  b                                           ; $4d0f: $88
	add  a                                           ; $4d10: $87
	ld   [hl], a                                     ; $4d11: $77
	ld   [hl], a                                     ; $4d12: $77
	ld   h, [hl]                                     ; $4d13: $66
	ld   d, l                                        ; $4d14: $55
	ld   b, l                                        ; $4d15: $45
	ld   b, e                                        ; $4d16: $43
	ld   b, h                                        ; $4d17: $44
	ld   b, e                                        ; $4d18: $43
	ld   b, l                                        ; $4d19: $45
	ld   d, [hl]                                     ; $4d1a: $56
	ld   a, b                                        ; $4d1b: $78
	cp   h                                           ; $4d1c: $bc
	xor  h                                           ; $4d1d: $ac
	db   $ed                                         ; $4d1e: $ed
	sbc  $de                                         ; $4d1f: $de $de
	call z, $b9bc                                    ; $4d21: $cc $bc $b9
	xor  c                                           ; $4d24: $a9
	sub  a                                           ; $4d25: $97
	ld   [hl], a                                     ; $4d26: $77
	ld   h, l                                        ; $4d27: $65
	ld   b, h                                        ; $4d28: $44
	inc  sp                                          ; $4d29: $33
	ld   de, $1242                                   ; $4d2a: $11 $42 $12
	ld   b, h                                        ; $4d2d: $44
	ld   d, [hl]                                     ; $4d2e: $56
	ld   a, c                                        ; $4d2f: $79
	xor  d                                           ; $4d30: $aa
	adc  $ee                                         ; $4d31: $ce $ee
	sbc  $ff                                         ; $4d33: $de $ff
	call c, $98dc                                    ; $4d35: $dc $dc $98
	sbc  c                                           ; $4d38: $99
	halt                                             ; $4d39: $76
	ld   h, [hl]                                     ; $4d3a: $66
	ld   h, h                                        ; $4d3b: $64
	ld   b, h                                        ; $4d3c: $44
	inc  [hl]                                        ; $4d3d: $34
	ld   de, $3133                                   ; $4d3e: $11 $33 $31
	ld   b, l                                        ; $4d41: $45
	ld   d, [hl]                                     ; $4d42: $56
	ld   a, d                                        ; $4d43: $7a
	xor  h                                           ; $4d44: $ac
	cp   [hl]                                        ; $4d45: $be
	rst  $38                                         ; $4d46: $ff
	xor  $ff                                         ; $4d47: $ee $ff
	call c, $98cb                                    ; $4d49: $dc $cb $98
	add  a                                           ; $4d4c: $87
	halt                                             ; $4d4d: $76
	ld   d, [hl]                                     ; $4d4e: $56
	ld   d, h                                        ; $4d4f: $54
	inc  sp                                          ; $4d50: $33
	ld   sp, $2101                                   ; $4d51: $31 $01 $21
	inc  bc                                          ; $4d54: $03
	ld   d, l                                        ; $4d55: $55
	ld   l, b                                        ; $4d56: $68
	cp   e                                           ; $4d57: $bb
	call $ffef                                       ; $4d58: $cd $ef $ff
	rst  $38                                         ; $4d5b: $ff
	xor  $ca                                         ; $4d5c: $ee $ca
	xor  c                                           ; $4d5e: $a9
	ld   [hl], a                                     ; $4d5f: $77
	add  [hl]                                        ; $4d60: $86
	ld   h, l                                        ; $4d61: $65
	ld   b, l                                        ; $4d62: $45
	inc  sp                                          ; $4d63: $33
	ld   de, $2111                                   ; $4d64: $11 $11 $21
	inc  de                                          ; $4d67: $13
	ld   h, [hl]                                     ; $4d68: $66
	adc  d                                           ; $4d69: $8a
	db   $dd                                         ; $4d6a: $dd
	rst  $38                                         ; $4d6b: $ff
	rst  $38                                         ; $4d6c: $ff
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	call c, $97ba                                    ; $4d6f: $dc $ba $97
	ld   h, l                                        ; $4d72: $65
	ld   h, h                                        ; $4d73: $64
	ld   d, h                                        ; $4d74: $54
	ld   [hl-], a                                    ; $4d75: $32
	ld   hl, $1211                                   ; $4d76: $21 $11 $12
	inc  d                                           ; $4d79: $14
	ld   h, [hl]                                     ; $4d7a: $66
	sbc  e                                           ; $4d7b: $9b
	db   $dd                                         ; $4d7c: $dd
	rst  $38                                         ; $4d7d: $ff
	rst  $28                                         ; $4d7e: $ef
	rst  $38                                         ; $4d7f: $ff
	cp   $cb                                         ; $4d80: $fe $cb
	and  a                                           ; $4d82: $a7
	add  [hl]                                        ; $4d83: $86
	ld   d, h                                        ; $4d84: $54
	ld   d, l                                        ; $4d85: $55
	ld   b, h                                        ; $4d86: $44
	inc  sp                                          ; $4d87: $33
	ld   hl, $1411                                   ; $4d88: $21 $11 $14
	ld   [hl-], a                                    ; $4d8b: $32
	ld   l, e                                        ; $4d8c: $6b
	cp   e                                           ; $4d8d: $bb
	cp   $ff                                         ; $4d8e: $fe $ff
	rst  $28                                         ; $4d90: $ef
	rst  $38                                         ; $4d91: $ff
	db   $dd                                         ; $4d92: $dd
	cp   c                                           ; $4d93: $b9
	ld   [hl], l                                     ; $4d94: $75
	ld   h, l                                        ; $4d95: $65
	ld   b, e                                        ; $4d96: $43
	ld   d, [hl]                                     ; $4d97: $56
	ld   d, h                                        ; $4d98: $54
	inc  sp                                          ; $4d99: $33
	ld   sp, $2411                                   ; $4d9a: $31 $11 $24
	ld   h, $99                                      ; $4d9d: $26 $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d9f: $cf
	db   $fd                                         ; $4da0: $fd

jr_0d9_4da1:
	rst  $38                                         ; $4da1: $ff
	rst  $28                                         ; $4da2: $ef
	rst  $38                                         ; $4da3: $ff
	call z, Call_0d9_7599                            ; $4da4: $cc $99 $75
	ld   h, l                                        ; $4da7: $65
	ld   b, e                                        ; $4da8: $43
	ld   d, h                                        ; $4da9: $54
	ld   d, l                                        ; $4daa: $55
	inc  sp                                          ; $4dab: $33
	ld   de, $3511                                   ; $4dac: $11 $11 $35
	ld   b, a                                        ; $4daf: $47
	sbc  h                                           ; $4db0: $9c
	rst  $38                                         ; $4db1: $ff
	rst  $28                                         ; $4db2: $ef
	db   $fc                                         ; $4db3: $fc
	rst  $28                                         ; $4db4: $ef
	db   $fd                                         ; $4db5: $fd
	jp   z, Jump_0d9_6699                            ; $4db6: $ca $99 $66

	halt                                             ; $4db9: $76
	ld   d, h                                        ; $4dba: $54
	ld   h, l                                        ; $4dbb: $65
	ld   d, e                                        ; $4dbc: $53
	ld   [hl+], a                                    ; $4dbd: $22
	ld   de, $1711                                   ; $4dbe: $11 $11 $17
	ld   b, l                                        ; $4dc1: $45
	sbc  $ff                                         ; $4dc2: $de $ff
	rst  $38                                         ; $4dc4: $ff
	db   $fd                                         ; $4dc5: $fd
	rst  $28                                         ; $4dc6: $ef
	db   $fc                                         ; $4dc7: $fc
	cp   d                                           ; $4dc8: $ba
	xor  c                                           ; $4dc9: $a9
	ld   [hl], a                                     ; $4dca: $77
	add  a                                           ; $4dcb: $87
	ld   h, [hl]                                     ; $4dcc: $66
	halt                                             ; $4dcd: $76
	ld   b, d                                        ; $4dce: $42
	ld   de, $1111                                   ; $4dcf: $11 $11 $11
	ld   d, [hl]                                     ; $4dd2: $56
	add  hl, hl                                      ; $4dd3: $29
	rst  JumpTable                                         ; $4dd4: $df
	rst  $38                                         ; $4dd5: $ff
	rst  $38                                         ; $4dd6: $ff
	ei                                               ; $4dd7: $fb
	cp   a                                           ; $4dd8: $bf
	ld   [$9a9a], a                                  ; $4dd9: $ea $9a $9a
	adc  c                                           ; $4ddc: $89
	xor  b                                           ; $4ddd: $a8
	ld   [hl], a                                     ; $4dde: $77
	sub  [hl]                                        ; $4ddf: $96
	ld   b, d                                        ; $4de0: $42
	ld   de, $1111                                   ; $4de1: $11 $11 $11
	daa                                              ; $4de4: $27
	ld   a, [hl-]                                    ; $4de5: $3a
	db   $fc                                         ; $4de6: $fc
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	call z, $cabd                                    ; $4de9: $cc $bd $ca
	xor  c                                           ; $4dec: $a9
	cp   d                                           ; $4ded: $ba
	adc  e                                           ; $4dee: $8b
	cp   d                                           ; $4def: $ba
	ld   [hl], a                                     ; $4df0: $77
	add  [hl]                                        ; $4df1: $86
	ld   b, c                                        ; $4df2: $41
	ld   bc, $1111                                   ; $4df3: $01 $11 $11
	ld   d, $49                                      ; $4df6: $16 $49
	cp   $ff                                         ; $4df8: $fe $ff
	sbc  $fc                                         ; $4dfa: $de $fc
	ld   a, h                                        ; $4dfc: $7c
	db   $ed                                         ; $4dfd: $ed
	xor  c                                           ; $4dfe: $a9
	xor  h                                           ; $4dff: $ac
	cp   c                                           ; $4e00: $b9
	xor  d                                           ; $4e01: $aa
	and  a                                           ; $4e02: $a7
	ld   h, l                                        ; $4e03: $65
	ld   d, d                                        ; $4e04: $52
	ld   de, $1111                                   ; $4e05: $11 $11 $11
	jr   jr_0d9_4da1                                 ; $4e08: $18 $97

	db   $ec                                         ; $4e0a: $ec
	rst  $38                                         ; $4e0b: $ff
	db   $fc                                         ; $4e0c: $fc
	xor  $8a                                         ; $4e0d: $ee $8a
	db   $db                                         ; $4e0f: $db
	cp   e                                           ; $4e10: $bb
	xor  d                                           ; $4e11: $aa
	cp   e                                           ; $4e12: $bb
	xor  e                                           ; $4e13: $ab
	and  a                                           ; $4e14: $a7
	ld   [hl], l                                     ; $4e15: $75
	ld   [hl-], a                                    ; $4e16: $32
	ld   de, $1111                                   ; $4e17: $11 $11 $11
	add  hl, de                                      ; $4e1a: $19
	ld   [hl], h                                     ; $4e1b: $74
	rst  $28                                         ; $4e1c: $ef
	rst  JumpTable                                         ; $4e1d: $df
	db   $fd                                         ; $4e1e: $fd
	db   $db                                         ; $4e1f: $db
	ld   l, d                                        ; $4e20: $6a
	db   $ec                                         ; $4e21: $ec
	cp   e                                           ; $4e22: $bb
	call $acba                                       ; $4e23: $cd $ba $ac
	and  [hl]                                        ; $4e26: $a6
	ld   h, l                                        ; $4e27: $65
	ld   d, d                                        ; $4e28: $52
	ld   de, $1112                                   ; $4e29: $11 $12 $11
	ld   [de], a                                     ; $4e2c: $12
	and  [hl]                                        ; $4e2d: $a6
	ld   e, a                                        ; $4e2e: $5f
	call c, $fdfc                                    ; $4e2f: $dc $fc $fd
	adc  c                                           ; $4e32: $89
	call $cdbb                                       ; $4e33: $cd $bb $cd
	res  5, e                                        ; $4e36: $cb $ab
	sbc  b                                           ; $4e38: $98
	ld   h, [hl]                                     ; $4e39: $66
	ld   h, e                                        ; $4e3a: $63
	ld   de, $1121                                   ; $4e3b: $11 $21 $11
	ld   de, $7b17                                   ; $4e3e: $11 $17 $7b
	db   $dd                                         ; $4e41: $dd
	sbc  $dc                                         ; $4e42: $de $dc
	jp   z, $cbac                                    ; $4e44: $ca $ac $cb

	call c, $babd                                    ; $4e47: $dc $bd $ba
	xor  e                                           ; $4e4a: $ab
	add  [hl]                                        ; $4e4b: $86
	ld   d, e                                        ; $4e4c: $53
	ld   b, d                                        ; $4e4d: $42
	ld   de, $1111                                   ; $4e4e: $11 $11 $11
	dec  d                                           ; $4e51: $15
	halt                                             ; $4e52: $76
	call z, $edcf                                    ; $4e53: $cc $cf $ed
	cp   l                                           ; $4e56: $bd
	cp   d                                           ; $4e57: $ba
	cp   h                                           ; $4e58: $bc
	sbc  $bc                                         ; $4e59: $de $bc
	call $97c8                                       ; $4e5b: $cd $c8 $97
	ld   [hl], l                                     ; $4e5e: $75
	inc  sp                                          ; $4e5f: $33
	ld   hl, $1111                                   ; $4e60: $21 $11 $11
	ld   de, $5958                                   ; $4e63: $11 $58 $59
	call c, $adfd                                    ; $4e66: $dc $fd $ad
	jp   hl                                          ; $4e69: $e9


	sbc  [hl]                                        ; $4e6a: $9e
	call c, $cccb                                    ; $4e6b: $dc $cb $cc
	ret                                              ; $4e6e: $c9


	cp   d                                           ; $4e6f: $ba
	halt                                             ; $4e70: $76
	ld   d, h                                        ; $4e71: $54
	ld   b, e                                        ; $4e72: $43
	ld   [hl+], a                                    ; $4e73: $22
	ld   de, $1411                                   ; $4e74: $11 $11 $14
	add  h                                           ; $4e77: $84
	sbc  [hl]                                        ; $4e78: $9e
	cp   [hl]                                        ; $4e79: $be
	db   $ec                                         ; $4e7a: $ec
	cp   [hl]                                        ; $4e7b: $be
	cp   d                                           ; $4e7c: $ba
	sbc  $bd                                         ; $4e7d: $de $bd
	set  3, h                                        ; $4e7f: $cb $dc
	jp   z, $67b7                                    ; $4e81: $ca $b7 $67

	ld   d, d                                        ; $4e84: $52
	ld   [hl+], a                                    ; $4e85: $22
	ld   [hl+], a                                    ; $4e86: $22
	ld   [de], a                                     ; $4e87: $12
	ld   de, $741a                                   ; $4e88: $11 $1a $74
	call z, $cacf                                    ; $4e8b: $cc $cf $ca
	db   $fc                                         ; $4e8e: $fc
	ld   a, d                                        ; $4e8f: $7a
	xor  $cd                                         ; $4e90: $ee $cd
	cp   [hl]                                        ; $4e92: $be
	jp   z, $859b                                    ; $4e93: $ca $9b $85

	ld   [hl], l                                     ; $4e96: $75
	ld   d, e                                        ; $4e97: $53
	inc  sp                                          ; $4e98: $33
	ld   sp, $1111                                   ; $4e99: $31 $11 $11
	ld   d, h                                        ; $4e9c: $54
	ld   c, h                                        ; $4e9d: $4c
	xor  d                                           ; $4e9e: $aa
	db   $ed                                         ; $4e9f: $ed
	call z, $ceca                                    ; $4ea0: $cc $ca $ce
	db   $ec                                         ; $4ea3: $ec
	call c, $a9cc                                    ; $4ea4: $dc $cc $a9
	sbc  c                                           ; $4ea7: $99
	ld   [hl], a                                     ; $4ea8: $77
	ld   h, l                                        ; $4ea9: $65
	ld   d, h                                        ; $4eaa: $54
	ld   b, e                                        ; $4eab: $43
	ld   hl, $1121                                   ; $4eac: $21 $21 $11
	ld   [hl], h                                     ; $4eaf: $74
	ld   e, h                                        ; $4eb0: $5c
	cp   e                                           ; $4eb1: $bb
	call c, $bbde                                    ; $4eb2: $dc $de $bb
	call $dcec                                       ; $4eb5: $cd $ec $dc
	jp   z, $a99a                                    ; $4eb8: $ca $9a $a9

	ld   [hl], a                                     ; $4ebb: $77
	ld   h, l                                        ; $4ebc: $65
	inc  sp                                          ; $4ebd: $33
	inc  sp                                          ; $4ebe: $33
	ld   [hl+], a                                    ; $4ebf: $22
	ld   de, $6216                                   ; $4ec0: $11 $16 $62
	sbc  e                                           ; $4ec3: $9b
	cp   h                                           ; $4ec4: $bc
	call c, $abce                                    ; $4ec5: $dc $ce $ab
	rst  $28                                         ; $4ec8: $ef
	cp   [hl]                                        ; $4ec9: $be
	cp   d                                           ; $4eca: $ba
	reti                                             ; $4ecb: $d9


	xor  d                                           ; $4ecc: $aa
	and  a                                           ; $4ecd: $a7
	add  a                                           ; $4ece: $87
	ld   d, l                                        ; $4ecf: $55
	inc  [hl]                                        ; $4ed0: $34
	inc  sp                                          ; $4ed1: $33
	ld   [de], a                                     ; $4ed2: $12
	ld   de, $5513                                   ; $4ed3: $11 $13 $55
	ld   a, c                                        ; $4ed6: $79
	xor  d                                           ; $4ed7: $aa
	db   $db                                         ; $4ed8: $db
	call c, $decc                                    ; $4ed9: $dc $cc $de
	db   $dd                                         ; $4edc: $dd
	cp   h                                           ; $4edd: $bc
	xor  e                                           ; $4ede: $ab
	xor  b                                           ; $4edf: $a8
	and  a                                           ; $4ee0: $a7
	add  [hl]                                        ; $4ee1: $86
	ld   h, h                                        ; $4ee2: $64
	ld   d, h                                        ; $4ee3: $54
	ld   b, h                                        ; $4ee4: $44
	ld   [hl+], a                                    ; $4ee5: $22
	ld   de, $3414                                   ; $4ee6: $11 $14 $34
	sbc  d                                           ; $4ee9: $9a
	sbc  c                                           ; $4eea: $99
	set  3, e                                        ; $4eeb: $cb $db
	adc  $ed                                         ; $4eed: $ce $ed
	adc  $cc                                         ; $4eef: $ce $cc
	cp   c                                           ; $4ef1: $b9
	sbc  d                                           ; $4ef2: $9a
	sub  a                                           ; $4ef3: $97
	add  [hl]                                        ; $4ef4: $86
	ld   [hl], l                                     ; $4ef5: $75
	ld   d, l                                        ; $4ef6: $55
	ld   d, l                                        ; $4ef7: $55
	inc  sp                                          ; $4ef8: $33
	ld   sp, $4312                                   ; $4ef9: $31 $12 $43
	ld   d, [hl]                                     ; $4efc: $56
	ld   l, b                                        ; $4efd: $68
	res  7, h                                        ; $4efe: $cb $bc
	call c, $eedd                                    ; $4f00: $dc $dd $ee
	call c, $a9bb                                    ; $4f03: $dc $bb $a9
	sub  a                                           ; $4f06: $97
	adc  b                                           ; $4f07: $88
	ld   [hl], a                                     ; $4f08: $77
	ld   h, [hl]                                     ; $4f09: $66
	ld   h, [hl]                                     ; $4f0a: $66
	ld   d, h                                        ; $4f0b: $54
	ld   b, e                                        ; $4f0c: $43
	ld   hl, $2422                                   ; $4f0d: $21 $22 $24
	ld   h, l                                        ; $4f10: $65
	ld   l, b                                        ; $4f11: $68
	xor  d                                           ; $4f12: $aa
	cp   e                                           ; $4f13: $bb
	call $dcdd                                       ; $4f14: $cd $dd $dc
	call z, $a9ba                                    ; $4f17: $cc $ba $a9
	xor  b                                           ; $4f1a: $a8
	adc  b                                           ; $4f1b: $88
	adc  b                                           ; $4f1c: $88
	add  a                                           ; $4f1d: $87
	ld   a, b                                        ; $4f1e: $78
	ld   h, [hl]                                     ; $4f1f: $66
	ld   d, h                                        ; $4f20: $54
	ld   [hl-], a                                    ; $4f21: $32
	inc  [hl]                                        ; $4f22: $34
	inc  hl                                          ; $4f23: $23
	inc  [hl]                                        ; $4f24: $34
	ld   d, l                                        ; $4f25: $55
	ld   l, b                                        ; $4f26: $68
	sbc  d                                           ; $4f27: $9a
	xor  e                                           ; $4f28: $ab
	call $ddcc                                       ; $4f29: $cd $cc $dd
	db   $dd                                         ; $4f2c: $dd
	call z, $aabb                                    ; $4f2d: $cc $bb $aa
	cp   c                                           ; $4f30: $b9
	xor  c                                           ; $4f31: $a9
	adc  b                                           ; $4f32: $88
	halt                                             ; $4f33: $76
	ld   h, l                                        ; $4f34: $65
	ld   b, h                                        ; $4f35: $44
	inc  sp                                          ; $4f36: $33
	ld   [hl+], a                                    ; $4f37: $22
	ld   [hl+], a                                    ; $4f38: $22
	inc  sp                                          ; $4f39: $33
	inc  [hl]                                        ; $4f3a: $34
	ld   d, l                                        ; $4f3b: $55
	ld   a, b                                        ; $4f3c: $78
	xor  d                                           ; $4f3d: $aa
	call $fede                                       ; $4f3e: $cd $de $fe
	rst  $38                                         ; $4f41: $ff
	cp   $ec                                         ; $4f42: $fe $ec
	res  7, c                                        ; $4f44: $cb $b9
	sbc  b                                           ; $4f46: $98
	halt                                             ; $4f47: $76
	ld   d, l                                        ; $4f48: $55
	ld   b, h                                        ; $4f49: $44
	inc  sp                                          ; $4f4a: $33
	ld   [hl-], a                                    ; $4f4b: $32
	ld   [hl+], a                                    ; $4f4c: $22
	inc  sp                                          ; $4f4d: $33
	inc  sp                                          ; $4f4e: $33
	ld   b, h                                        ; $4f4f: $44
	ld   b, l                                        ; $4f50: $45
	ld   h, a                                        ; $4f51: $67
	sbc  d                                           ; $4f52: $9a
	xor  h                                           ; $4f53: $ac
	sbc  $ef                                         ; $4f54: $de $ef
	rst  $38                                         ; $4f56: $ff
	rst  $38                                         ; $4f57: $ff
	xor  $cb                                         ; $4f58: $ee $cb
	cp   c                                           ; $4f5a: $b9
	sbc  b                                           ; $4f5b: $98
	halt                                             ; $4f5c: $76
	ld   d, l                                        ; $4f5d: $55
	ld   b, h                                        ; $4f5e: $44
	ld   b, e                                        ; $4f5f: $43
	inc  sp                                          ; $4f60: $33
	ld   [hl-], a                                    ; $4f61: $32
	inc  sp                                          ; $4f62: $33
	ld   [hl-], a                                    ; $4f63: $32
	inc  sp                                          ; $4f64: $33
	ld   b, h                                        ; $4f65: $44
	ld   d, [hl]                                     ; $4f66: $56
	ld   a, c                                        ; $4f67: $79
	xor  e                                           ; $4f68: $ab
	call $ffde                                       ; $4f69: $cd $de $ff
	rst  $38                                         ; $4f6c: $ff
	cp   $ec                                         ; $4f6d: $fe $ec
	cp   e                                           ; $4f6f: $bb
	xor  c                                           ; $4f70: $a9
	add  a                                           ; $4f71: $87
	ld   h, [hl]                                     ; $4f72: $66
	ld   d, h                                        ; $4f73: $54
	ld   b, h                                        ; $4f74: $44
	ld   b, h                                        ; $4f75: $44
	inc  sp                                          ; $4f76: $33
	inc  sp                                          ; $4f77: $33
	inc  sp                                          ; $4f78: $33
	inc  sp                                          ; $4f79: $33
	inc  [hl]                                        ; $4f7a: $34
	ld   b, l                                        ; $4f7b: $45
	ld   h, [hl]                                     ; $4f7c: $66
	ld   a, c                                        ; $4f7d: $79
	sbc  e                                           ; $4f7e: $9b
	call $ffef                                       ; $4f7f: $cd $ef $ff
	rst  $38                                         ; $4f82: $ff
	db   $fd                                         ; $4f83: $fd
	call c, $a9cb                                    ; $4f84: $dc $cb $a9
	add  a                                           ; $4f87: $87
	ld   h, [hl]                                     ; $4f88: $66
	ld   d, h                                        ; $4f89: $54
	ld   b, h                                        ; $4f8a: $44
	ld   b, h                                        ; $4f8b: $44
	inc  sp                                          ; $4f8c: $33
	ld   [hl-], a                                    ; $4f8d: $32
	inc  sp                                          ; $4f8e: $33
	inc  sp                                          ; $4f8f: $33
	ld   b, h                                        ; $4f90: $44
	ld   b, l                                        ; $4f91: $45
	ld   h, a                                        ; $4f92: $67
	sbc  c                                           ; $4f93: $99
	xor  h                                           ; $4f94: $ac
	call $ffef                                       ; $4f95: $cd $ef $ff
	cp   $ed                                         ; $4f98: $fe $ed
	res  7, d                                        ; $4f9a: $cb $ba
	sbc  b                                           ; $4f9c: $98
	ld   [hl], a                                     ; $4f9d: $77
	ld   h, l                                        ; $4f9e: $65
	ld   d, h                                        ; $4f9f: $54
	ld   b, h                                        ; $4fa0: $44
	ld   b, e                                        ; $4fa1: $43
	inc  sp                                          ; $4fa2: $33
	inc  sp                                          ; $4fa3: $33
	inc  [hl]                                        ; $4fa4: $34
	ld   b, e                                        ; $4fa5: $43
	ld   b, h                                        ; $4fa6: $44
	ld   d, l                                        ; $4fa7: $55
	ld   h, a                                        ; $4fa8: $67
	adc  c                                           ; $4fa9: $89
	xor  h                                           ; $4faa: $ac
	call $ffee                                       ; $4fab: $cd $ee $ff
	cp   $fd                                         ; $4fae: $fe $fd
	call c, $99ba                                    ; $4fb0: $dc $ba $99
	ld   [hl], a                                     ; $4fb3: $77
	ld   d, l                                        ; $4fb4: $55
	ld   b, h                                        ; $4fb5: $44
	ld   b, h                                        ; $4fb6: $44
	ld   b, e                                        ; $4fb7: $43
	inc  sp                                          ; $4fb8: $33
	inc  sp                                          ; $4fb9: $33
	inc  sp                                          ; $4fba: $33
	ld   b, e                                        ; $4fbb: $43
	inc  [hl]                                        ; $4fbc: $34
	ld   d, l                                        ; $4fbd: $55
	ld   h, a                                        ; $4fbe: $67
	adc  d                                           ; $4fbf: $8a
	xor  e                                           ; $4fc0: $ab
	call $ffef                                       ; $4fc1: $cd $ef $ff
	cp   $ed                                         ; $4fc4: $fe $ed
	res  7, d                                        ; $4fc6: $cb $ba
	sbc  b                                           ; $4fc8: $98
	halt                                             ; $4fc9: $76
	ld   h, l                                        ; $4fca: $65
	ld   d, h                                        ; $4fcb: $54
	ld   b, h                                        ; $4fcc: $44
	ld   b, e                                        ; $4fcd: $43
	inc  sp                                          ; $4fce: $33
	inc  sp                                          ; $4fcf: $33
	inc  sp                                          ; $4fd0: $33
	ld   b, e                                        ; $4fd1: $43
	ld   b, h                                        ; $4fd2: $44
	ld   b, l                                        ; $4fd3: $45
	ld   h, a                                        ; $4fd4: $67
	ld   a, c                                        ; $4fd5: $79
	xor  e                                           ; $4fd6: $ab
	sbc  $ef                                         ; $4fd7: $de $ef
	rst  $38                                         ; $4fd9: $ff
	rst  $38                                         ; $4fda: $ff
	db   $fd                                         ; $4fdb: $fd
	call c, $98ba                                    ; $4fdc: $dc $ba $98
	halt                                             ; $4fdf: $76
	ld   h, l                                        ; $4fe0: $65
	ld   d, h                                        ; $4fe1: $54
	ld   b, h                                        ; $4fe2: $44
	ld   b, h                                        ; $4fe3: $44
	ld   b, e                                        ; $4fe4: $43
	inc  sp                                          ; $4fe5: $33
	inc  sp                                          ; $4fe6: $33
	ld   b, h                                        ; $4fe7: $44
	ld   b, h                                        ; $4fe8: $44
	ld   b, l                                        ; $4fe9: $45
	ld   d, [hl]                                     ; $4fea: $56
	ld   a, b                                        ; $4feb: $78
	sbc  e                                           ; $4fec: $9b
	cp   h                                           ; $4fed: $bc
	rst  JumpTable                                         ; $4fee: $df
	rst  $38                                         ; $4fef: $ff
	rst  $38                                         ; $4ff0: $ff
	xor  $dd                                         ; $4ff1: $ee $dd
	jp   z, $8798                                    ; $4ff3: $ca $98 $87

	ld   h, l                                        ; $4ff6: $65
	ld   d, h                                        ; $4ff7: $54
	ld   b, h                                        ; $4ff8: $44
	ld   b, h                                        ; $4ff9: $44
	ld   b, h                                        ; $4ffa: $44
	ld   b, e                                        ; $4ffb: $43
	inc  sp                                          ; $4ffc: $33
	ld   b, h                                        ; $4ffd: $44
	ld   b, h                                        ; $4ffe: $44
	ld   b, h                                        ; $4fff: $44
	ld   d, l                                        ; $5000: $55
	ld   h, a                                        ; $5001: $67
	sbc  c                                           ; $5002: $99
	xor  h                                           ; $5003: $ac
	sbc  $ff                                         ; $5004: $de $ff
	rst  $38                                         ; $5006: $ff
	cp   $ed                                         ; $5007: $fe $ed
	call c, $87b9                                    ; $5009: $dc $b9 $87
	ld   h, [hl]                                     ; $500c: $66
	ld   d, l                                        ; $500d: $55
	ld   b, h                                        ; $500e: $44
	inc  sp                                          ; $500f: $33
	inc  sp                                          ; $5010: $33
	inc  sp                                          ; $5011: $33
	ld   [hl-], a                                    ; $5012: $32
	inc  sp                                          ; $5013: $33
	ld   b, h                                        ; $5014: $44
	ld   b, h                                        ; $5015: $44
	ld   b, [hl]                                     ; $5016: $46
	ld   a, b                                        ; $5017: $78
	xor  e                                           ; $5018: $ab
	cp   l                                           ; $5019: $bd
	xor  $ef                                         ; $501a: $ee $ef
	rst  $38                                         ; $501c: $ff
	rst  $38                                         ; $501d: $ff
	cp   $dd                                         ; $501e: $fe $dd
	xor  b                                           ; $5020: $a8
	ld   [hl], a                                     ; $5021: $77
	ld   h, h                                        ; $5022: $64
	inc  sp                                          ; $5023: $33
	ld   [hl-], a                                    ; $5024: $32
	ld   [hl+], a                                    ; $5025: $22
	ld   de, $1111                                   ; $5026: $11 $11 $11
	inc  de                                          ; $5029: $13
	ld   b, l                                        ; $502a: $45
	ld   l, b                                        ; $502b: $68
	cp   h                                           ; $502c: $bc
	xor  $ff                                         ; $502d: $ee $ff
	rst  $38                                         ; $502f: $ff
	rst  $38                                         ; $5030: $ff
	cp   $ed                                         ; $5031: $fe $ed
	jp   z, $6687                                    ; $5033: $ca $87 $66

	ld   h, [hl]                                     ; $5036: $66
	ld   d, h                                        ; $5037: $54
	ld   b, h                                        ; $5038: $44
	ld   b, e                                        ; $5039: $43
	inc  sp                                          ; $503a: $33
	ld   hl, $1111                                   ; $503b: $21 $11 $11
	inc  de                                          ; $503e: $13
	ld   d, a                                        ; $503f: $57
	sbc  e                                           ; $5040: $9b
	sbc  $ff                                         ; $5041: $de $ff
	rst  $38                                         ; $5043: $ff
	rst  $38                                         ; $5044: $ff
	rst  $38                                         ; $5045: $ff
	db   $ed                                         ; $5046: $ed
	cp   e                                           ; $5047: $bb
	xor  b                                           ; $5048: $a8
	ld   [hl], l                                     ; $5049: $75
	ld   d, l                                        ; $504a: $55
	ld   h, [hl]                                     ; $504b: $66
	ld   b, e                                        ; $504c: $43
	ld   [hl+], a                                    ; $504d: $22
	inc  sp                                          ; $504e: $33
	ld   sp, $1111                                   ; $504f: $31 $11 $11
	ld   [de], a                                     ; $5052: $12
	ld   b, [hl]                                     ; $5053: $46
	sbc  h                                           ; $5054: $9c
	sbc  $ff                                         ; $5055: $de $ff
	rst  $38                                         ; $5057: $ff
	rst  $38                                         ; $5058: $ff
	rst  $38                                         ; $5059: $ff
	cp   $ca                                         ; $505a: $fe $ca
	xor  c                                           ; $505c: $a9
	add  a                                           ; $505d: $87
	ld   h, [hl]                                     ; $505e: $66
	ld   h, l                                        ; $505f: $65
	ld   b, e                                        ; $5060: $43
	ld   [hl+], a                                    ; $5061: $22
	ld   [hl-], a                                    ; $5062: $32
	ld   de, $1111                                   ; $5063: $11 $11 $11
	inc  de                                          ; $5066: $13
	ld   d, [hl]                                     ; $5067: $56
	xor  h                                           ; $5068: $ac
	rst  $28                                         ; $5069: $ef
	rst  $38                                         ; $506a: $ff
	rst  $38                                         ; $506b: $ff
	rst  $38                                         ; $506c: $ff
	rst  $38                                         ; $506d: $ff
	db   $fd                                         ; $506e: $fd
	res  7, d                                        ; $506f: $cb $ba
	sub  a                                           ; $5071: $97
	ld   h, [hl]                                     ; $5072: $66
	ld   h, [hl]                                     ; $5073: $66
	ld   d, e                                        ; $5074: $53
	ld   [hl+], a                                    ; $5075: $22
	inc  sp                                          ; $5076: $33
	ld   hl, $1111                                   ; $5077: $21 $11 $11
	ld   [de], a                                     ; $507a: $12
	ld   d, a                                        ; $507b: $57
	sbc  e                                           ; $507c: $9b
	rst  $38                                         ; $507d: $ff
	rst  $38                                         ; $507e: $ff
	rst  $38                                         ; $507f: $ff
	rst  $38                                         ; $5080: $ff
	rst  $38                                         ; $5081: $ff
	db   $fc                                         ; $5082: $fc
	call c, $88bb                                    ; $5083: $dc $bb $88
	adc  b                                           ; $5086: $88
	add  a                                           ; $5087: $87
	ld   d, h                                        ; $5088: $54
	ld   [hl+], a                                    ; $5089: $22
	ld   [hl+], a                                    ; $508a: $22
	ld   hl, $1111                                   ; $508b: $21 $11 $11
	ld   de, $bc68                                   ; $508e: $11 $68 $bc
	rst  $38                                         ; $5091: $ff
	rst  $38                                         ; $5092: $ff
	rst  $38                                         ; $5093: $ff
	rst  $38                                         ; $5094: $ff
	rst  $38                                         ; $5095: $ff
	db   $fd                                         ; $5096: $fd
	res  7, d                                        ; $5097: $cb $ba
	xor  c                                           ; $5099: $a9
	sub  a                                           ; $509a: $97
	add  a                                           ; $509b: $87
	halt                                             ; $509c: $76
	ld   [hl-], a                                    ; $509d: $32
	ld   de, $1121                                   ; $509e: $11 $21 $11
	ld   de, $5911                                   ; $50a1: $11 $11 $59
	xor  e                                           ; $50a4: $ab
	rst  $38                                         ; $50a5: $ff
	rst  $38                                         ; $50a6: $ff
	rst  $38                                         ; $50a7: $ff
	db   $dd                                         ; $50a8: $dd
	rst  $38                                         ; $50a9: $ff
	cp   $cb                                         ; $50aa: $fe $cb
	xor  e                                           ; $50ac: $ab
	cp   e                                           ; $50ad: $bb
	sbc  b                                           ; $50ae: $98
	ld   h, a                                        ; $50af: $67
	halt                                             ; $50b0: $76
	ld   b, c                                        ; $50b1: $41
	ld   de, $1111                                   ; $50b2: $11 $11 $11
	ld   de, $7b11                                   ; $50b5: $11 $11 $7b
	adc  $df                                         ; $50b8: $ce $df
	rst  $38                                         ; $50ba: $ff
	rst  $38                                         ; $50bb: $ff
	db   $dd                                         ; $50bc: $dd
	rst  JumpTable                                         ; $50bd: $df
	cp   $ca                                         ; $50be: $fe $ca
	xor  e                                           ; $50c0: $ab
	call z, Call_0d9_77a8                            ; $50c1: $cc $a8 $77
	sbc  b                                           ; $50c4: $98
	ld   h, e                                        ; $50c5: $63
	ld   de, $1111                                   ; $50c6: $11 $11 $11
	ld   de, $3a11                                   ; $50c9: $11 $11 $3a
	rst  $28                                         ; $50cc: $ef
	cp   $ef                                         ; $50cd: $fe $ef
	rst  $38                                         ; $50cf: $ff
	db   $fc                                         ; $50d0: $fc
	db   $dd                                         ; $50d1: $dd
	rst  $28                                         ; $50d2: $ef
	db   $eb                                         ; $50d3: $eb
	xor  c                                           ; $50d4: $a9
	xor  d                                           ; $50d5: $aa
	res  3, c                                        ; $50d6: $cb $99
	halt                                             ; $50d8: $76
	ld   h, h                                        ; $50d9: $64
	ld   hl, $1111                                   ; $50da: $21 $11 $11
	ld   de, $1611                                   ; $50dd: $11 $11 $16
	rst  JumpTable                                         ; $50e0: $df
	rst  $38                                         ; $50e1: $ff
	db   $fd                                         ; $50e2: $fd
	rst  $38                                         ; $50e3: $ff
	cp   $de                                         ; $50e4: $fe $de
	rst  JumpTable                                         ; $50e6: $df
	db   $ed                                         ; $50e7: $ed
	ret                                              ; $50e8: $c9


	xor  c                                           ; $50e9: $a9
	xor  h                                           ; $50ea: $ac
	cp   d                                           ; $50eb: $ba
	add  [hl]                                        ; $50ec: $86
	ld   d, h                                        ; $50ed: $54
	ld   sp, $1111                                   ; $50ee: $31 $11 $11
	ld   de, $1211                                   ; $50f1: $11 $11 $12
	sbc  [hl]                                        ; $50f4: $9e
	rst  $38                                         ; $50f5: $ff
	rst  $38                                         ; $50f6: $ff
	xor  $ef                                         ; $50f7: $ee $ef
	db   $ed                                         ; $50f9: $ed
	db   $dd                                         ; $50fa: $dd
	db   $dd                                         ; $50fb: $dd
	call z, $9a9b                                    ; $50fc: $cc $9b $9a
	cp   c                                           ; $50ff: $b9
	and  a                                           ; $5100: $a7
	ld   h, l                                        ; $5101: $65
	ld   b, e                                        ; $5102: $43
	ld   de, $1111                                   ; $5103: $11 $11 $11
	ld   de, $4b11                                   ; $5106: $11 $11 $4b
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	call c, $fedd                                    ; $510b: $dc $dd $fe
	cp   $cd                                         ; $510e: $fe $cd
	call z, $a9ca                                    ; $5110: $cc $ca $a9
	xor  e                                           ; $5113: $ab
	sbc  c                                           ; $5114: $99
	add  a                                           ; $5115: $87
	ld   d, e                                        ; $5116: $53
	ld   hl, $1111                                   ; $5117: $21 $11 $11
	ld   de, $1311                                   ; $511a: $11 $11 $13
	cp   a                                           ; $511d: $bf
	rst  $38                                         ; $511e: $ff
	rst  $38                                         ; $511f: $ff
	cp   e                                           ; $5120: $bb
	adc  $ef                                         ; $5121: $ce $ef
	db   $ed                                         ; $5123: $ed
	call z, $bacc                                    ; $5124: $cc $cc $ba
	xor  d                                           ; $5127: $aa
	xor  c                                           ; $5128: $a9
	xor  c                                           ; $5129: $a9
	adc  b                                           ; $512a: $88
	ld   d, e                                        ; $512b: $53
	ld   de, $1111                                   ; $512c: $11 $11 $11
	ld   de, $1811                                   ; $512f: $11 $11 $18
	rst  $38                                         ; $5132: $ff
	rst  $38                                         ; $5133: $ff
	ld   a, [$cf89]                                  ; $5134: $fa $89 $cf
	rst  $38                                         ; $5137: $ff
	call c, $bbaa                                    ; $5138: $dc $aa $bb
	call z, $88a9                                    ; $513b: $cc $a9 $88
	adc  d                                           ; $513e: $8a
	and  a                                           ; $513f: $a7
	ld   d, c                                        ; $5140: $51
	ld   de, $1111                                   ; $5141: $11 $11 $11
	ld   de, $4d11                                   ; $5144: $11 $11 $4d
	rst  $38                                         ; $5147: $ff
	rst  $38                                         ; $5148: $ff
	or   l                                           ; $5149: $b5
	ld   l, b                                        ; $514a: $68
	rst  $28                                         ; $514b: $ef
	rst  $38                                         ; $514c: $ff
	cp   c                                           ; $514d: $b9
	adc  c                                           ; $514e: $89
	call $b8ee                                       ; $514f: $cd $ee $b8
	adc  b                                           ; $5152: $88
	sbc  e                                           ; $5153: $9b
	xor  b                                           ; $5154: $a8
	ld   b, c                                        ; $5155: $41
	ld   de, $1111                                   ; $5156: $11 $11 $11
	ld   de, $1811                                   ; $5159: $11 $11 $18
	rst  $38                                         ; $515c: $ff
	rst  $38                                         ; $515d: $ff
	ld   a, [$8e66]                                  ; $515e: $fa $66 $8e
	rst  $38                                         ; $5161: $ff
	add  sp, $55                                     ; $5162: $e8 $55
	ld   a, h                                        ; $5164: $7c
	rst  $38                                         ; $5165: $ff
	db   $fd                                         ; $5166: $fd
	cp   c                                           ; $5167: $b9
	ld   a, c                                        ; $5168: $79
	xor  d                                           ; $5169: $aa
	add  l                                           ; $516a: $85
	ld   hl, $1111                                   ; $516b: $21 $11 $11
	ld   de, $1111                                   ; $516e: $11 $11 $11
	dec  de                                          ; $5171: $1b
	rst  $38                                         ; $5172: $ff
	rst  $38                                         ; $5173: $ff
	ld   sp, hl                                      ; $5174: $f9
	ld   d, [hl]                                     ; $5175: $56
	adc  [hl]                                        ; $5176: $8e
	rst  $38                                         ; $5177: $ff
	or   [hl]                                        ; $5178: $b6
	ld   [hl+], a                                    ; $5179: $22
	ld   e, e                                        ; $517a: $5b
	rst  $38                                         ; $517b: $ff
	rst  $38                                         ; $517c: $ff
	ld   [$6755], a                                  ; $517d: $ea $55 $67
	sub  [hl]                                        ; $5180: $96
	ld   d, e                                        ; $5181: $53
	ld   [de], a                                     ; $5182: $12
	ld   de, $1111                                   ; $5183: $11 $11 $11
	ld   de, $ff17                                   ; $5186: $11 $17 $ff
	rst  $38                                         ; $5189: $ff
	rst  $38                                         ; $518a: $ff
	ld   de, $ff56                                   ; $518b: $11 $56 $ff
	rst  ToBoot                                         ; $518e: $c7
	ld   de, $ff1a                                   ; $518f: $11 $1a $ff
	rst  $38                                         ; $5192: $ff
	ld   a, [$5631]                                  ; $5193: $fa $31 $56
	cp   [hl]                                        ; $5196: $be
	sub  a                                           ; $5197: $97

Jump_0d9_5198:
	ld   sp, $2111                                   ; $5198: $31 $11 $21
	ld   de, $1111                                   ; $519b: $11 $11 $11
	rst  $38                                         ; $519e: $ff
	rst  $38                                         ; $519f: $ff
	rst  $38                                         ; $51a0: $ff
	sub  c                                           ; $51a1: $91
	ld   de, $cb6f                                   ; $51a2: $11 $6f $cb
	ld   sp, $ef11                                   ; $51a5: $31 $11 $ef
	rst  $38                                         ; $51a8: $ff
	cp   $71                                         ; $51a9: $fe $71
	inc  d                                           ; $51ab: $14
	ld   l, a                                        ; $51ac: $6f
	db   $eb                                         ; $51ad: $eb
	add  c                                           ; $51ae: $81
	ld   de, $1124                                   ; $51af: $11 $24 $11
	ld   de, $1f11                                   ; $51b2: $11 $11 $1f
	rst  $38                                         ; $51b5: $ff
	rst  $38                                         ; $51b6: $ff
	push af                                          ; $51b7: $f5
	ld   de, $fc17                                   ; $51b8: $11 $17 $fc
	or   c                                           ; $51bb: $b1
	ld   de, $ff1f                                   ; $51bc: $11 $1f $ff
	rst  $38                                         ; $51bf: $ff
	db   $e4                                         ; $51c0: $e4
	ld   de, $ff38                                   ; $51c1: $11 $38 $ff
	sub  $11                                         ; $51c4: $d6 $11
	inc  d                                           ; $51c6: $14
	ld   b, d                                        ; $51c7: $42
	ld   hl, $1111                                   ; $51c8: $21 $11 $11
	rst  $38                                         ; $51cb: $ff
	rst  $38                                         ; $51cc: $ff
	rst  $38                                         ; $51cd: $ff
	ld   de, $cd11                                   ; $51ce: $11 $11 $cd
	ld   [$1411], a                                  ; $51d1: $ea $11 $14
	rst  $38                                         ; $51d4: $ff
	rst  $38                                         ; $51d5: $ff
	db   $fd                                         ; $51d6: $fd
	ld   de, rAUDVOL                                   ; $51d7: $11 $24 $ff
	db   $ec                                         ; $51da: $ec
	ld   sp, $7512                                   ; $51db: $31 $12 $75
	ld   d, c                                        ; $51de: $51
	ld   de, $3f11                                   ; $51df: $11 $11 $3f
	rst  $38                                         ; $51e2: $ff
	rst  $38                                         ; $51e3: $ff
	pop  de                                          ; $51e4: $d1
	ld   de, $ee1a                                   ; $51e5: $11 $1a $ee
	add  c                                           ; $51e8: $81
	ld   de, $ff8f                                   ; $51e9: $11 $8f $ff
	cp   $51                                         ; $51ec: $fe $51
	dec  d                                           ; $51ee: $15
	rst  JumpTable                                         ; $51ef: $df
	rst  $38                                         ; $51f0: $ff
	or   c                                           ; $51f1: $b1
	ld   de, $dc4d                                   ; $51f2: $11 $4d $dc
	ld   hl, $1111                                   ; $51f5: $21 $11 $11
	rst  JumpTable                                         ; $51f8: $df
	rst  $38                                         ; $51f9: $ff
	rst  $38                                         ; $51fa: $ff
	ld   sp, $4f11                                   ; $51fb: $31 $11 $4f
	ld   [$1141], a                                  ; $51fe: $ea $41 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5201: $cf
	rst  $38                                         ; $5202: $ff
	push af                                          ; $5203: $f5
	ld   de, $ef11                                   ; $5204: $11 $11 $ef
	rst  $38                                         ; $5207: $ff
	push af                                          ; $5208: $f5
	ld   de, $ff16                                   ; $5209: $11 $16 $ff
	and  c                                           ; $520c: $a1
	ld   de, $1f11                                   ; $520d: $11 $11 $1f
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	add  c                                           ; $5212: $81
	ld   de, $ff18                                   ; $5213: $11 $18 $ff
	jp   nz, $1f11                                   ; $5216: $c2 $11 $1f

	rst  $38                                         ; $5219: $ff
	rst  $38                                         ; $521a: $ff
	ld   sp, $1c11                                   ; $521b: $31 $11 $1c
	rst  $38                                         ; $521e: $ff
	rst  $38                                         ; $521f: $ff
	ld   sp, hl                                      ; $5220: $f9

Jump_0d9_5221:
	ld   [hl+], a                                    ; $5221: $22
	inc  d                                           ; $5222: $14
	ld   [hl], h                                     ; $5223: $74
	ld   hl, $1111                                   ; $5224: $21 $11 $11
	ccf                                              ; $5227: $3f
	rst  $38                                         ; $5228: $ff
	rst  $38                                         ; $5229: $ff
	and  c                                           ; $522a: $a1
	ld   de, $de13                                   ; $522b: $11 $13 $de
	ret  z                                           ; $522e: $c8

	inc  sp                                          ; $522f: $33
	ld   e, l                                        ; $5230: $5d
	rst  $38                                         ; $5231: $ff
	db   $fc                                         ; $5232: $fc
	ld   b, c                                        ; $5233: $41
	ld   de, $ff1b                                   ; $5234: $11 $1b $ff
	rst  $38                                         ; $5237: $ff
	rst  $38                                         ; $5238: $ff
	reti                                             ; $5239: $d9


	ld   sp, $1111                                   ; $523a: $31 $11 $11
	ld   de, $1c11                                   ; $523d: $11 $11 $1c
	rst  $38                                         ; $5240: $ff
	rst  $38                                         ; $5241: $ff
	rst  $30                                         ; $5242: $f7
	ld   de, $6b11                                   ; $5243: $11 $11 $6b
	rst  $38                                         ; $5246: $ff
	cp   c                                           ; $5247: $b9
	ld   l, c                                        ; $5248: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5249: $cf
	cp   $a3                                         ; $524a: $fe $a3
	ld   de, $cf13                                   ; $524c: $11 $13 $cf
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	db   $fd                                         ; $5251: $fd
	ld   [hl], h                                     ; $5252: $74
	ld   de, $1111                                   ; $5253: $11 $11 $11
	ld   de, $ff16                                   ; $5256: $11 $16 $ff
	rst  $38                                         ; $5259: $ff
	rst  $38                                         ; $525a: $ff
	ld   de, $1711                                   ; $525b: $11 $11 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $525e: $cf
	db   $fd                                         ; $525f: $fd
	adc  c                                           ; $5260: $89
	cp   h                                           ; $5261: $bc
	cp   $b7                                         ; $5262: $fe $b7
	ld   de, $7e11                                   ; $5264: $11 $11 $7e
	rst  $38                                         ; $5267: $ff
	rst  $38                                         ; $5268: $ff
	rst  $38                                         ; $5269: $ff
	cp   b                                           ; $526a: $b8
	ld   d, c                                        ; $526b: $51
	ld   de, $1111                                   ; $526c: $11 $11 $11
	ld   d, $ef                                      ; $526f: $16 $ef
	rst  $38                                         ; $5271: $ff
	rst  $38                                         ; $5272: $ff
	ld   h, c                                        ; $5273: $61
	ld   de, $8c14                                   ; $5274: $11 $14 $8c
	call z, $ddbb                                    ; $5277: $cc $bb $dd
	cp   $a7                                         ; $527a: $fe $a7
	ld   de, $6b11                                   ; $527c: $11 $11 $6b
	rst  $38                                         ; $527f: $ff
	rst  $38                                         ; $5280: $ff
	cp   $ca                                         ; $5281: $fe $ca
	sub  h                                           ; $5283: $94
	ld   de, $1111                                   ; $5284: $11 $11 $11
	inc  d                                           ; $5287: $14
	rst  JumpTable                                         ; $5288: $df
	rst  $38                                         ; $5289: $ff
	rst  $38                                         ; $528a: $ff
	add  c                                           ; $528b: $81
	ld   de, $7a14                                   ; $528c: $11 $14 $7a
	xor  d                                           ; $528f: $aa
	sbc  d                                           ; $5290: $9a
	sbc  $ff                                         ; $5291: $de $ff
	cp   b                                           ; $5293: $b8
	ld   de, $6a11                                   ; $5294: $11 $11 $6a
	rst  $38                                         ; $5297: $ff
	rst  $38                                         ; $5298: $ff
	db   $dd                                         ; $5299: $dd
	cp   e                                           ; $529a: $bb
	ret  z                                           ; $529b: $c8

	ld   h, d                                        ; $529c: $62
	ld   de, $1311                                   ; $529d: $11 $11 $13
	xor  a                                           ; $52a0: $af
	rst  $38                                         ; $52a1: $ff
	rst  $38                                         ; $52a2: $ff
	sub  e                                           ; $52a3: $93
	ld   de, $6814                                   ; $52a4: $11 $14 $68
	adc  b                                           ; $52a7: $88
	adc  c                                           ; $52a8: $89
	cp   [hl]                                        ; $52a9: $be
	rst  $38                                         ; $52aa: $ff
	ret  c                                           ; $52ab: $d8

	ld   b, c                                        ; $52ac: $41
	ld   de, $ce59                                   ; $52ad: $11 $59 $ce
	db   $ed                                         ; $52b0: $ed
	cp   e                                           ; $52b1: $bb
	cp   e                                           ; $52b2: $bb
	res  4, [hl]                                     ; $52b3: $cb $a6
	ld   hl, $1211                                   ; $52b5: $21 $11 $12
	ld   b, a                                        ; $52b8: $47
	xor  [hl]                                        ; $52b9: $ae
	rst  $38                                         ; $52ba: $ff
	db   $eb                                         ; $52bb: $eb
	sub  h                                           ; $52bc: $94
	ld   [hl-], a                                    ; $52bd: $32
	dec  h                                           ; $52be: $25
	ld   l, b                                        ; $52bf: $68
	adc  d                                           ; $52c0: $8a
	xor  d                                           ; $52c1: $aa
	cp   e                                           ; $52c2: $bb
	call c, Call_0d9_53a8                            ; $52c3: $dc $a8 $53
	inc  [hl]                                        ; $52c6: $34
	ld   l, c                                        ; $52c7: $69
	call z, $99db                                    ; $52c8: $cc $db $99
	add  a                                           ; $52cb: $87
	sbc  b                                           ; $52cc: $98
	sbc  c                                           ; $52cd: $99
	sbc  c                                           ; $52ce: $99
	add  a                                           ; $52cf: $87
	ld   h, [hl]                                     ; $52d0: $66
	ld   b, d                                        ; $52d1: $42
	ld   hl, $ac26                                   ; $52d2: $21 $26 $ac
	rst  $38                                         ; $52d5: $ff
	jp   z, Jump_0d9_4565                            ; $52d6: $ca $65 $45

	ld   a, b                                        ; $52d9: $78
	sbc  b                                           ; $52da: $98
	halt                                             ; $52db: $76
	ld   a, b                                        ; $52dc: $78
	cp   l                                           ; $52dd: $bd
	db   $ec                                         ; $52de: $ec
	and  [hl]                                        ; $52df: $a6
	ld   b, e                                        ; $52e0: $43
	ld   b, [hl]                                     ; $52e1: $46
	sbc  c                                           ; $52e2: $99
	xor  c                                           ; $52e3: $a9
	add  a                                           ; $52e4: $87
	ld   a, b                                        ; $52e5: $78
	sbc  e                                           ; $52e6: $9b
	xor  d                                           ; $52e7: $aa
	add  [hl]                                        ; $52e8: $86
	ld   d, [hl]                                     ; $52e9: $56
	adc  d                                           ; $52ea: $8a
	call Call_0d9_75b9                               ; $52eb: $cd $b9 $75
	ld   [hl-], a                                    ; $52ee: $32
	ld   [hl+], a                                    ; $52ef: $22
	dec  [hl]                                        ; $52f0: $35
	adc  e                                           ; $52f1: $8b
	rst  JumpTable                                         ; $52f2: $df
	db   $ed                                         ; $52f3: $ed
	sub  a                                           ; $52f4: $97
	ld   d, h                                        ; $52f5: $54
	ld   d, [hl]                                     ; $52f6: $56
	ld   [hl], a                                     ; $52f7: $77
	ld   [hl], a                                     ; $52f8: $77
	ld   a, c                                        ; $52f9: $79
	sbc  e                                           ; $52fa: $9b
	res  5, b                                        ; $52fb: $cb $a8
	ld   d, h                                        ; $52fd: $54
	inc  [hl]                                        ; $52fe: $34
	ld   l, b                                        ; $52ff: $68
	xor  d                                           ; $5300: $aa
	cp   d                                           ; $5301: $ba
	xor  d                                           ; $5302: $aa
	sbc  c                                           ; $5303: $99
	adc  b                                           ; $5304: $88
	ld   [hl], l                                     ; $5305: $75
	ld   b, h                                        ; $5306: $44
	ld   d, [hl]                                     ; $5307: $56
	adc  d                                           ; $5308: $8a
	cp   e                                           ; $5309: $bb
	xor  d                                           ; $530a: $aa
	add  a                                           ; $530b: $87
	ld   [hl], a                                     ; $530c: $77
	ld   [hl], a                                     ; $530d: $77
	adc  b                                           ; $530e: $88
	xor  d                                           ; $530f: $aa
	cp   e                                           ; $5310: $bb
	xor  c                                           ; $5311: $a9
	ld   [hl], l                                     ; $5312: $75
	ld   [hl-], a                                    ; $5313: $32
	ld   [de], a                                     ; $5314: $12
	ld   b, a                                        ; $5315: $47
	xor  l                                           ; $5316: $ad
	db   $ed                                         ; $5317: $ed
	cp   c                                           ; $5318: $b9
	add  a                                           ; $5319: $87
	ld   h, a                                        ; $531a: $67
	ld   h, [hl]                                     ; $531b: $66
	ld   d, l                                        ; $531c: $55
	ld   d, [hl]                                     ; $531d: $56
	sbc  e                                           ; $531e: $9b
	call c, Call_0d9_76ba                            ; $531f: $dc $ba $76
	ld   d, l                                        ; $5322: $55
	ld   h, a                                        ; $5323: $67
	ld   a, b                                        ; $5324: $78
	adc  c                                           ; $5325: $89
	sbc  d                                           ; $5326: $9a
	cp   e                                           ; $5327: $bb
	jp   z, Jump_0d9_5496                            ; $5328: $ca $96 $54

	ld   d, [hl]                                     ; $532b: $56
	ld   a, c                                        ; $532c: $79
	xor  d                                           ; $532d: $aa
	sbc  b                                           ; $532e: $98
	adc  b                                           ; $532f: $88
	sbc  c                                           ; $5330: $99
	sbc  b                                           ; $5331: $98
	halt                                             ; $5332: $76
	ld   d, [hl]                                     ; $5333: $56
	ld   a, c                                        ; $5334: $79
	sbc  d                                           ; $5335: $9a
	xor  c                                           ; $5336: $a9
	sub  a                                           ; $5337: $97
	ld   a, b                                        ; $5338: $78
	sbc  c                                           ; $5339: $99
	sbc  c                                           ; $533a: $99
	adc  b                                           ; $533b: $88
	adc  b                                           ; $533c: $88
	sbc  c                                           ; $533d: $99
	sbc  b                                           ; $533e: $98
	add  [hl]                                        ; $533f: $86
	ld   d, h                                        ; $5340: $54
	inc  [hl]                                        ; $5341: $34
	ld   b, [hl]                                     ; $5342: $46
	sbc  e                                           ; $5343: $9b
	call c, Call_0d9_76a9                            ; $5344: $dc $a9 $76
	ld   h, a                                        ; $5347: $67
	ld   a, b                                        ; $5348: $78
	ld   [hl], a                                     ; $5349: $77
	ld   [hl], a                                     ; $534a: $77
	ld   a, c                                        ; $534b: $79
	xor  e                                           ; $534c: $ab
	cp   c                                           ; $534d: $b9
	add  [hl]                                        ; $534e: $86
	ld   h, [hl]                                     ; $534f: $66
	ld   h, a                                        ; $5350: $67
	adc  c                                           ; $5351: $89
	adc  b                                           ; $5352: $88
	adc  b                                           ; $5353: $88
	xor  d                                           ; $5354: $aa
	xor  c                                           ; $5355: $a9
	add  a                                           ; $5356: $87
	ld   h, l                                        ; $5357: $65
	ld   d, [hl]                                     ; $5358: $56
	adc  c                                           ; $5359: $89
	xor  d                                           ; $535a: $aa
	sbc  b                                           ; $535b: $98
	sbc  c                                           ; $535c: $99
	adc  c                                           ; $535d: $89
	adc  b                                           ; $535e: $88
	halt                                             ; $535f: $76
	ld   h, a                                        ; $5360: $67
	adc  b                                           ; $5361: $88
	sbc  c                                           ; $5362: $99
	sbc  c                                           ; $5363: $99
	adc  b                                           ; $5364: $88
	adc  b                                           ; $5365: $88
	sbc  c                                           ; $5366: $99
	sub  a                                           ; $5367: $97
	ld   [hl], a                                     ; $5368: $77
	ld   a, b                                        ; $5369: $78
	sbc  c                                           ; $536a: $99
	sbc  c                                           ; $536b: $99
	sbc  b                                           ; $536c: $98
	adc  b                                           ; $536d: $88
	ld   a, b                                        ; $536e: $78
	ld   [hl], a                                     ; $536f: $77
	ld   [hl], a                                     ; $5370: $77
	ld   a, b                                        ; $5371: $78
	sbc  b                                           ; $5372: $98
	sbc  c                                           ; $5373: $99
	add  a                                           ; $5374: $87
	ld   [hl], a                                     ; $5375: $77

Jump_0d9_5376:
	ld   a, b                                        ; $5376: $78
	adc  b                                           ; $5377: $88
	sbc  b                                           ; $5378: $98
	ld   [hl], a                                     ; $5379: $77
	ld   a, b                                        ; $537a: $78
	adc  b                                           ; $537b: $88
	add  a                                           ; $537c: $87
	ld   h, [hl]                                     ; $537d: $66
	ld   h, [hl]                                     ; $537e: $66
	ld   h, a                                        ; $537f: $67
	ld   a, b                                        ; $5380: $78
	xor  d                                           ; $5381: $aa
	xor  d                                           ; $5382: $aa
	sbc  b                                           ; $5383: $98
	ld   [hl], a                                     ; $5384: $77
	ld   [hl], a                                     ; $5385: $77
	adc  b                                           ; $5386: $88

Jump_0d9_5387:
	adc  b                                           ; $5387: $88
	adc  c                                           ; $5388: $89
	adc  c                                           ; $5389: $89
	xor  c                                           ; $538a: $a9
	sbc  b                                           ; $538b: $98
	ld   [hl], a                                     ; $538c: $77
	ld   [hl], a                                     ; $538d: $77
	adc  b                                           ; $538e: $88
	adc  b                                           ; $538f: $88
	adc  c                                           ; $5390: $89
	adc  c                                           ; $5391: $89
	sbc  c                                           ; $5392: $99
	adc  c                                           ; $5393: $89
	adc  b                                           ; $5394: $88
	adc  b                                           ; $5395: $88
	adc  b                                           ; $5396: $88
	adc  b                                           ; $5397: $88
	adc  b                                           ; $5398: $88
	adc  c                                           ; $5399: $89
	adc  c                                           ; $539a: $89
	sbc  b                                           ; $539b: $98
	add  a                                           ; $539c: $87
	ld   a, b                                        ; $539d: $78
	adc  b                                           ; $539e: $88
	add  a                                           ; $539f: $87
	ld   [hl], a                                     ; $53a0: $77
	ld   a, b                                        ; $53a1: $78
	adc  c                                           ; $53a2: $89
	sbc  b                                           ; $53a3: $98
	add  a                                           ; $53a4: $87
	ld   [hl], a                                     ; $53a5: $77
	adc  b                                           ; $53a6: $88
	adc  b                                           ; $53a7: $88

Call_0d9_53a8:
	add  a                                           ; $53a8: $87
	adc  b                                           ; $53a9: $88
	adc  b                                           ; $53aa: $88
	sbc  b                                           ; $53ab: $98
	adc  b                                           ; $53ac: $88
	adc  b                                           ; $53ad: $88
	adc  b                                           ; $53ae: $88
	adc  b                                           ; $53af: $88
	adc  b                                           ; $53b0: $88
	adc  b                                           ; $53b1: $88
	adc  b                                           ; $53b2: $88
	adc  b                                           ; $53b3: $88
	adc  b                                           ; $53b4: $88
	adc  c                                           ; $53b5: $89
	sbc  c                                           ; $53b6: $99
	adc  b                                           ; $53b7: $88
	add  a                                           ; $53b8: $87
	ld   a, b                                        ; $53b9: $78
	adc  b                                           ; $53ba: $88
	adc  b                                           ; $53bb: $88
	add  a                                           ; $53bc: $87
	ld   a, b                                        ; $53bd: $78
	adc  b                                           ; $53be: $88
	sbc  c                                           ; $53bf: $99
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
	add  a                                           ; $53ca: $87
	ld   [hl], a                                     ; $53cb: $77
	ld   a, b                                        ; $53cc: $78
	adc  b                                           ; $53cd: $88
	adc  b                                           ; $53ce: $88
	adc  b                                           ; $53cf: $88
	ld   a, b                                        ; $53d0: $78
	adc  b                                           ; $53d1: $88
	sbc  c                                           ; $53d2: $99
	sbc  c                                           ; $53d3: $99
	sbc  b                                           ; $53d4: $98
	adc  b                                           ; $53d5: $88
	adc  c                                           ; $53d6: $89
	sbc  c                                           ; $53d7: $99
	sbc  c                                           ; $53d8: $99
	sbc  c                                           ; $53d9: $99
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

Jump_0d9_5496:
	adc  b                                           ; $5496: $88

Jump_0d9_5497:
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

Call_0d9_5652:
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
	adc  d                                           ; $5f31: $8a
	adc  b                                           ; $5f32: $88
	adc  b                                           ; $5f33: $88
	sbc  c                                           ; $5f34: $99
	sbc  b                                           ; $5f35: $98
	sbc  b                                           ; $5f36: $98
	ld   [hl], a                                     ; $5f37: $77
	ld   h, a                                        ; $5f38: $67
	ld   a, b                                        ; $5f39: $78
	adc  c                                           ; $5f3a: $89
	sbc  b                                           ; $5f3b: $98
	add  a                                           ; $5f3c: $87
	ld   [hl], a                                     ; $5f3d: $77
	sbc  c                                           ; $5f3e: $99
	xor  c                                           ; $5f3f: $a9
	add  a                                           ; $5f40: $87
	ld   [hl], a                                     ; $5f41: $77
	adc  d                                           ; $5f42: $8a
	cp   l                                           ; $5f43: $bd
	cp   b                                           ; $5f44: $b8
	ld   d, h                                        ; $5f45: $54
	ld   b, [hl]                                     ; $5f46: $46
	sbc  d                                           ; $5f47: $9a
	cp   b                                           ; $5f48: $b8
	ld   h, l                                        ; $5f49: $65
	ld   h, a                                        ; $5f4a: $67
	xor  d                                           ; $5f4b: $aa
	cp   c                                           ; $5f4c: $b9
	add  a                                           ; $5f4d: $87
	ld   h, [hl]                                     ; $5f4e: $66
	ld   l, b                                        ; $5f4f: $68
	sbc  c                                           ; $5f50: $99
	xor  d                                           ; $5f51: $aa
	add  a                                           ; $5f52: $87
	adc  c                                           ; $5f53: $89
	xor  d                                           ; $5f54: $aa
	and  [hl]                                        ; $5f55: $a6
	ld   b, c                                        ; $5f56: $41
	dec  [hl]                                        ; $5f57: $35
	ld   a, b                                        ; $5f58: $78
	adc  e                                           ; $5f59: $8b
	cp   h                                           ; $5f5a: $bc
	xor  b                                           ; $5f5b: $a8
	ld   [hl], a                                     ; $5f5c: $77
	adc  h                                           ; $5f5d: $8c
	jp   c, $2562                                    ; $5f5e: $da $62 $25

	xor  h                                           ; $5f61: $ac
	or   a                                           ; $5f62: $b7
	ld   d, h                                        ; $5f63: $54
	ld   b, a                                        ; $5f64: $47
	sbc  d                                           ; $5f65: $9a
	add  a                                           ; $5f66: $87
	ld   h, a                                        ; $5f67: $67
	ld   [hl], a                                     ; $5f68: $77
	ld   a, c                                        ; $5f69: $79
	cp   d                                           ; $5f6a: $ba
	sbc  b                                           ; $5f6b: $98
	sbc  c                                           ; $5f6c: $99
	sbc  b                                           ; $5f6d: $98
	ld   a, b                                        ; $5f6e: $78
	sbc  e                                           ; $5f6f: $9b
	or   [hl]                                        ; $5f70: $b6
	ld   hl, $df49                                   ; $5f71: $21 $49 $df
	or   e                                           ; $5f74: $b3
	ld   de, $fd6c                                   ; $5f75: $11 $6c $fd
	sub  l                                           ; $5f78: $95
	ld   d, [hl]                                     ; $5f79: $56
	xor  h                                           ; $5f7a: $ac
	jp   c, $1263                                    ; $5f7b: $da $63 $12

	ld   l, h                                        ; $5f7e: $6c
	db   $fc                                         ; $5f7f: $fc
	ld   [hl], l                                     ; $5f80: $75
	ld   e, c                                        ; $5f81: $59
	sbc  c                                           ; $5f82: $99
	sub  a                                           ; $5f83: $97
	sub  a                                           ; $5f84: $97
	sbc  e                                           ; $5f85: $9b
	ld   [hl], a                                     ; $5f86: $77
	ld   [hl], a                                     ; $5f87: $77
	cp   b                                           ; $5f88: $b8
	adc  d                                           ; $5f89: $8a
	add  a                                           ; $5f8a: $87
	ld   d, a                                        ; $5f8b: $57
	ld   [hl], l                                     ; $5f8c: $75
	ld   l, c                                        ; $5f8d: $69
	cp   h                                           ; $5f8e: $bc
	and  a                                           ; $5f8f: $a7
	ld   b, e                                        ; $5f90: $43
	ld   d, [hl]                                     ; $5f91: $56
	sbc  [hl]                                        ; $5f92: $9e
	push bc                                          ; $5f93: $c5
	ld   de, $ffaf                                   ; $5f94: $11 $af $ff
	ld   d, c                                        ; $5f97: $51
	ld   de, $fbff                                   ; $5f98: $11 $ff $fb
	ld   de, $df17                                   ; $5f9b: $11 $17 $df
	rst  ToBoot                                         ; $5f9e: $c7
	ld   hl, $ff59                                   ; $5f9f: $21 $59 $ff
	or   [hl]                                        ; $5fa2: $b6
	ld   de, $ef6a                                   ; $5fa3: $11 $6a $ef
	or   [hl]                                        ; $5fa6: $b6
	inc  h                                           ; $5fa7: $24
	sbc  b                                           ; $5fa8: $98
	ld   h, d                                        ; $5fa9: $62
	ld   h, $8b                                      ; $5faa: $26 $8b
	db   $fd                                         ; $5fac: $fd
	db   $db                                         ; $5fad: $db
	ld   a, c                                        ; $5fae: $79
	ld   [hl], a                                     ; $5faf: $77
	ld   a, d                                        ; $5fb0: $7a
	db   $db                                         ; $5fb1: $db
	ld   sp, $8a11                                   ; $5fb2: $31 $11 $8a
	db   $fc                                         ; $5fb5: $fc
	and  [hl]                                        ; $5fb6: $a6
	ld   b, a                                        ; $5fb7: $47
	rst  JumpTable                                         ; $5fb8: $df
	rst  $38                                         ; $5fb9: $ff
	ld   hl, sp+$11                                  ; $5fba: $f8 $11
	rla                                              ; $5fbc: $17
	rst  $28                                         ; $5fbd: $ef
	push hl                                          ; $5fbe: $e5
	ld   de, $ff18                                   ; $5fbf: $11 $18 $ff
	and  h                                           ; $5fc2: $a4
	ld   de, wMainConvoScriptSong                                   ; $5fc3: $11 $26 $cb
	ld   d, c                                        ; $5fc6: $51
	ld   de, $db49                                   ; $5fc7: $11 $49 $db
	ld   b, d                                        ; $5fca: $42
	ld   de, $f95c                                   ; $5fcb: $11 $5c $f9
	ld   a, c                                        ; $5fce: $79
	ld   a, b                                        ; $5fcf: $78
	xor  h                                           ; $5fd0: $ac
	rst  $38                                         ; $5fd1: $ff
	rst  $38                                         ; $5fd2: $ff
	ld   a, [$6754]                                  ; $5fd3: $fa $54 $67
	adc  [hl]                                        ; $5fd6: $8e
	call nz, $1431                                   ; $5fd7: $c4 $31 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fda: $cf
	rst  $38                                         ; $5fdb: $ff
	rst  ToBoot                                         ; $5fdc: $c7
	inc  [hl]                                        ; $5fdd: $34
	xor  l                                           ; $5fde: $ad
	db   $fc                                         ; $5fdf: $fc
	ld   d, c                                        ; $5fe0: $51
	ld   de, $1111                                   ; $5fe1: $11 $11 $11
	ld   sp, $9f11                                   ; $5fe4: $31 $11 $9f
	rst  $38                                         ; $5fe7: $ff
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	rst  JumpTable                                         ; $5fea: $df
	ei                                               ; $5feb: $fb
	ld   sp, hl                                      ; $5fec: $f9
	ld   a, e                                        ; $5fed: $7b
	inc  [hl]                                        ; $5fee: $34
	halt                                             ; $5fef: $76
	db   $fd                                         ; $5ff0: $fd
	ld   l, e                                        ; $5ff1: $6b
	ld   d, c                                        ; $5ff2: $51
	and  l                                           ; $5ff3: $a5
	sbc  [hl]                                        ; $5ff4: $9e
	ld   e, d                                        ; $5ff5: $5a
	ld   sp, $9d53                                   ; $5ff6: $31 $53 $9d
	ld   h, a                                        ; $5ff9: $67
	ld   sp, $1711                                   ; $5ffa: $31 $11 $17
	and  a                                           ; $5ffd: $a7
	sub  l                                           ; $5ffe: $95
	adc  b                                           ; $5fff: $88
	ld   l, a                                        ; $6000: $6f
	rst  $38                                         ; $6001: $ff
	rst  $38                                         ; $6002: $ff
	rst  $38                                         ; $6003: $ff
	adc  $ee                                         ; $6004: $ce $ee
	db   $db                                         ; $6006: $db
	ld   a, b                                        ; $6007: $78
	sub  l                                           ; $6008: $95
	adc  d                                           ; $6009: $8a
	sbc  h                                           ; $600a: $9c
	sbc  d                                           ; $600b: $9a
	ld   h, e                                        ; $600c: $63
	scf                                              ; $600d: $37
	sub  l                                           ; $600e: $95
	ld   d, c                                        ; $600f: $51
	ld   de, $4239                                   ; $6010: $11 $39 $42
	ld   de, $1311                                   ; $6013: $11 $11 $13
	cp   d                                           ; $6016: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6017: $cf
	rst  JumpTable                                         ; $6018: $df
	rst  $38                                         ; $6019: $ff
	rst  $38                                         ; $601a: $ff
	rst  $38                                         ; $601b: $ff
	rst  ToBoot                                         ; $601c: $c7
	cp   b                                           ; $601d: $b8
	cp   [hl]                                        ; $601e: $be
	and  [hl]                                        ; $601f: $a6
	ld   d, c                                        ; $6020: $51
	add  hl, hl                                      ; $6021: $29
	sbc  a                                           ; $6022: $9f
	db   $fd                                         ; $6023: $fd
	and  l                                           ; $6024: $a5
	ld   sp, $1111                                   ; $6025: $31 $11 $11
	ld   de, $1111                                   ; $6028: $11 $11 $11
	ld   de, $cf14                                   ; $602b: $11 $14 $cf
	rst  $38                                         ; $602e: $ff
	rst  $38                                         ; $602f: $ff
	rst  $38                                         ; $6030: $ff
	db   $db                                         ; $6031: $db
	rst  $38                                         ; $6032: $ff
	rst  $38                                         ; $6033: $ff
	add  sp, $24                                     ; $6034: $e8 $24
	ld   [de], a                                     ; $6036: $12
	ld   c, c                                        ; $6037: $49
	sbc  c                                           ; $6038: $99
	add  $53                                         ; $6039: $c6 $53
	ld   de, $1111                                   ; $603b: $11 $11 $11
	ld   de, $1111                                   ; $603e: $11 $11 $11
	ld   d, $ff                                      ; $6041: $16 $ff
	rst  $38                                         ; $6043: $ff
	rst  $38                                         ; $6044: $ff
	rst  $38                                         ; $6045: $ff
	db   $fd                                         ; $6046: $fd
	rst  $38                                         ; $6047: $ff
	rst  $38                                         ; $6048: $ff
	rst  $10                                         ; $6049: $d7
	ld   hl, $4f13                                   ; $604a: $21 $13 $4f
	reti                                             ; $604d: $d9


	and  h                                           ; $604e: $a4
	ld   de, $1111                                   ; $604f: $11 $11 $11
	ld   de, $1111                                   ; $6052: $11 $11 $11
	xor  a                                           ; $6055: $af
	rst  $38                                         ; $6056: $ff
	rst  $38                                         ; $6057: $ff
	rst  $38                                         ; $6058: $ff
	ld   [hl], c                                     ; $6059: $71
	ld   l, h                                        ; $605a: $6c
	rst  JumpTable                                         ; $605b: $df
	ei                                               ; $605c: $fb
	add  c                                           ; $605d: $81
	ld   de, $ff2c                                   ; $605e: $11 $2c $ff
	ei                                               ; $6061: $fb
	ld   de, $1111                                   ; $6062: $11 $11 $11
	ld   de, $ad11                                   ; $6065: $11 $11 $ad
	rst  $38                                         ; $6068: $ff
	rst  $38                                         ; $6069: $ff
	rst  $38                                         ; $606a: $ff
	ld   hl, sp+$35                                  ; $606b: $f8 $35
	ld   l, e                                        ; $606d: $6b
	db   $ec                                         ; $606e: $ec
	sub  l                                           ; $606f: $95
	ld   de, $ff49                                   ; $6070: $11 $49 $ff
	db   $fd                                         ; $6073: $fd
	ld   d, c                                        ; $6074: $51
	ld   de, $1111                                   ; $6075: $11 $11 $11
	add  hl, de                                      ; $6078: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6079: $cf
	rst  $38                                         ; $607a: $ff
	rst  $38                                         ; $607b: $ff
	rst  $38                                         ; $607c: $ff
	or   h                                           ; $607d: $b4
	halt                                             ; $607e: $76
	xor  a                                           ; $607f: $af
	add  a                                           ; $6080: $87
	ld   d, c                                        ; $6081: $51
	ld   d, $8f                                      ; $6082: $16 $8f
	rst  $38                                         ; $6084: $ff
	ld   sp, hl                                      ; $6085: $f9
	ld   de, $1111                                   ; $6086: $11 $11 $11
	ld   de, $ff9f                                   ; $6089: $11 $9f $ff
	rst  $38                                         ; $608c: $ff
	rst  $38                                         ; $608d: $ff
	ret                                              ; $608e: $c9


	ld   [hl], $9a                                   ; $608f: $36 $9a
	sub  [hl]                                        ; $6091: $96
	ld   hl, $af13                                   ; $6092: $21 $13 $af
	rst  $38                                         ; $6095: $ff
	db   $fc                                         ; $6096: $fc
	ld   d, c                                        ; $6097: $51
	ld   de, $1111                                   ; $6098: $11 $11 $11
	ld   a, a                                        ; $609b: $7f
	rst  $38                                         ; $609c: $ff
	rst  $38                                         ; $609d: $ff
	rst  $38                                         ; $609e: $ff
	or   [hl]                                        ; $609f: $b6
	ld   b, e                                        ; $60a0: $43
	ld   e, e                                        ; $60a1: $5b
	ld   h, d                                        ; $60a2: $62
	ld   sp, $9f14                                   ; $60a3: $31 $14 $9f
	rst  $38                                         ; $60a6: $ff
	db   $fd                                         ; $60a7: $fd
	ld   b, c                                        ; $60a8: $41
	ld   de, $1111                                   ; $60a9: $11 $11 $11
	inc  e                                           ; $60ac: $1c
	rst  $38                                         ; $60ad: $ff
	rst  $38                                         ; $60ae: $ff
	rst  $38                                         ; $60af: $ff
	db   $fd                                         ; $60b0: $fd
	ld   b, c                                        ; $60b1: $41
	ld   h, $53                                      ; $60b2: $26 $53
	ld   b, c                                        ; $60b4: $41
	inc  de                                          ; $60b5: $13
	sbc  h                                           ; $60b6: $9c
	rst  $38                                         ; $60b7: $ff
	cp   $61                                         ; $60b8: $fe $61
	ld   de, $1111                                   ; $60ba: $11 $11 $11
	rla                                              ; $60bd: $17
	rst  $38                                         ; $60be: $ff
	rst  $38                                         ; $60bf: $ff
	rst  $38                                         ; $60c0: $ff
	ld   sp, hl                                      ; $60c1: $f9
	ld   hl, $6317                                   ; $60c2: $21 $17 $63
	ld   [hl], d                                     ; $60c5: $72
	inc  d                                           ; $60c6: $14
	adc  l                                           ; $60c7: $8d
	rst  $38                                         ; $60c8: $ff
	rst  $38                                         ; $60c9: $ff
	sub  c                                           ; $60ca: $91
	ld   de, $1111                                   ; $60cb: $11 $11 $11
	ld   [de], a                                     ; $60ce: $12
	rst  $38                                         ; $60cf: $ff
	rst  $38                                         ; $60d0: $ff
	rst  $38                                         ; $60d1: $ff
	cp   $51                                         ; $60d2: $fe $51
	ld   de, $4642                                   ; $60d4: $11 $42 $46
	inc  d                                           ; $60d7: $14
	call $ffff                                       ; $60d8: $cd $ff $ff
	or   e                                           ; $60db: $b3
	ld   de, $1111                                   ; $60dc: $11 $11 $11
	ld   de, $ff8f                                   ; $60df: $11 $8f $ff
	rst  $38                                         ; $60e2: $ff
	rst  $38                                         ; $60e3: $ff
	add  c                                           ; $60e4: $81
	ld   de, $1612                                   ; $60e5: $11 $12 $16
	ld   [hl-], a                                    ; $60e8: $32
	call $ffff                                       ; $60e9: $cd $ff $ff
	rst  $30                                         ; $60ec: $f7
	ld   de, $1111                                   ; $60ed: $11 $11 $11
	ld   de, $ff1c                                   ; $60f0: $11 $1c $ff
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	pop  hl                                          ; $60f5: $e1
	ld   de, $2311                                   ; $60f6: $11 $11 $23
	ld   a, b                                        ; $60f9: $78
	sbc  a                                           ; $60fa: $9f
	rst  $38                                         ; $60fb: $ff
	rst  $38                                         ; $60fc: $ff
	cp   $51                                         ; $60fd: $fe $51
	ld   de, $1111                                   ; $60ff: $11 $11 $11
	ld   de, $ffdf                                   ; $6102: $11 $df $ff
	rst  $38                                         ; $6105: $ff
	ld   hl, sp+$11                                  ; $6106: $f8 $11
	ld   de, $4912                                   ; $6108: $11 $12 $49
	xor  d                                           ; $610b: $aa
	rst  $38                                         ; $610c: $ff
	rst  $38                                         ; $610d: $ff
	rst  $38                                         ; $610e: $ff
	push de                                          ; $610f: $d5
	ld   de, $1111                                   ; $6110: $11 $11 $11
	ld   de, $ff1a                                   ; $6113: $11 $1a $ff
	rst  $38                                         ; $6116: $ff
	rst  $38                                         ; $6117: $ff
	or   c                                           ; $6118: $b1
	ld   de, $1211                                   ; $6119: $11 $11 $12
	ld   a, e                                        ; $611c: $7b
	cp   a                                           ; $611d: $bf
	rst  $38                                         ; $611e: $ff
	rst  $38                                         ; $611f: $ff
	db   $fd                                         ; $6120: $fd
	ld   b, c                                        ; $6121: $41
	ld   de, $1111                                   ; $6122: $11 $11 $11
	ld   de, $ff1b                                   ; $6125: $11 $1b $ff
	rst  $38                                         ; $6128: $ff
	rst  $38                                         ; $6129: $ff
	ld   b, c                                        ; $612a: $41
	ld   de, $5311                                   ; $612b: $11 $11 $53
	xor  h                                           ; $612e: $ac
	xor  a                                           ; $612f: $af
	rst  $38                                         ; $6130: $ff
	rst  $38                                         ; $6131: $ff
	ld   a, [$1111]                                  ; $6132: $fa $11 $11
	ld   de, $1111                                   ; $6135: $11 $11 $11
	dec  de                                          ; $6138: $1b
	rst  $38                                         ; $6139: $ff
	rst  $38                                         ; $613a: $ff
	rst  $38                                         ; $613b: $ff
	ld   sp, $1111                                   ; $613c: $31 $11 $11
	ld   h, [hl]                                     ; $613f: $66
	sbc  l                                           ; $6140: $9d
	cp   a                                           ; $6141: $bf
	rst  $38                                         ; $6142: $ff
	rst  $38                                         ; $6143: $ff
	ld   a, [$1111]                                  ; $6144: $fa $11 $11
	ld   de, $1111                                   ; $6147: $11 $11 $11
	dec  d                                           ; $614a: $15
	rst  $38                                         ; $614b: $ff
	rst  $38                                         ; $614c: $ff
	rst  $38                                         ; $614d: $ff
	ld   d, c                                        ; $614e: $51
	ld   de, $8a11                                   ; $614f: $11 $11 $8a
	cp   [hl]                                        ; $6152: $be
	xor  l                                           ; $6153: $ad
	rst  $38                                         ; $6154: $ff
	rst  $38                                         ; $6155: $ff
	rst  $38                                         ; $6156: $ff
	ld   de, $1111                                   ; $6157: $11 $11 $11
	ld   de, $1111                                   ; $615a: $11 $11 $11
	adc  a                                           ; $615d: $8f
	rst  $38                                         ; $615e: $ff
	rst  $38                                         ; $615f: $ff
	pop  af                                          ; $6160: $f1
	ld   de, $1c11                                   ; $6161: $11 $11 $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6164: $cf
	jp   hl                                          ; $6165: $e9


	rst  $38                                         ; $6166: $ff
	rst  $38                                         ; $6167: $ff
	rst  $38                                         ; $6168: $ff
	pop  hl                                          ; $6169: $e1
	ld   de, $1111                                   ; $616a: $11 $11 $11
	ld   de, $1711                                   ; $616d: $11 $11 $17
	rst  $38                                         ; $6170: $ff
	rst  $38                                         ; $6171: $ff
	rst  $38                                         ; $6172: $ff
	ld   de, $1111                                   ; $6173: $11 $11 $11
	rst  JumpTable                                         ; $6176: $df
	db   $fc                                         ; $6177: $fc
	ld   a, [hl]                                     ; $6178: $7e
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	rst  $38                                         ; $617b: $ff
	ld   de, $1111                                   ; $617c: $11 $11 $11
	ld   de, $1111                                   ; $617f: $11 $11 $11
	ld   c, a                                        ; $6182: $4f
	rst  $38                                         ; $6183: $ff
	rst  $38                                         ; $6184: $ff
	ldh  a, [c]                                      ; $6185: $f2
	ld   de, $1a11                                   ; $6186: $11 $11 $1a
	rst  $38                                         ; $6189: $ff
	rst  $20                                         ; $618a: $e7
	rst  JumpTable                                         ; $618b: $df
	rst  $38                                         ; $618c: $ff
	rst  $38                                         ; $618d: $ff
	db   $f4                                         ; $618e: $f4
	ld   de, $1111                                   ; $618f: $11 $11 $11
	ld   hl, $1111                                   ; $6192: $21 $11 $11
	cp   a                                           ; $6195: $bf
	rst  $38                                         ; $6196: $ff
	rst  $38                                         ; $6197: $ff
	ld   [hl], c                                     ; $6198: $71
	ld   de, $6e11                                   ; $6199: $11 $11 $6e
	rst  $38                                         ; $619c: $ff
	sbc  d                                           ; $619d: $9a
	rst  $38                                         ; $619e: $ff
	rst  $38                                         ; $619f: $ff
	rst  $38                                         ; $61a0: $ff
	pop  bc                                          ; $61a1: $c1
	ld   de, $1411                                   ; $61a2: $11 $11 $14
	ld   de, $1511                                   ; $61a5: $11 $11 $15
	rst  $38                                         ; $61a8: $ff
	rst  $38                                         ; $61a9: $ff
	rst  $38                                         ; $61aa: $ff
	ld   de, $1111                                   ; $61ab: $11 $11 $11
	cp   a                                           ; $61ae: $bf
	rst  $38                                         ; $61af: $ff
	xor  a                                           ; $61b0: $af
	rst  $38                                         ; $61b1: $ff
	rst  $38                                         ; $61b2: $ff
	rst  $38                                         ; $61b3: $ff
	ld   hl, $1111                                   ; $61b4: $21 $11 $11
	inc  h                                           ; $61b7: $24
	ld   de, $1a11                                   ; $61b8: $11 $11 $1a
	rst  $38                                         ; $61bb: $ff
	rst  $38                                         ; $61bc: $ff
	ld   sp, hl                                      ; $61bd: $f9
	ld   de, $1611                                   ; $61be: $11 $11 $16
	rst  $38                                         ; $61c1: $ff
	db   $fd                                         ; $61c2: $fd
	xor  l                                           ; $61c3: $ad
	rst  $38                                         ; $61c4: $ff
	rst  $38                                         ; $61c5: $ff
	rst  $38                                         ; $61c6: $ff
	ld   de, $1111                                   ; $61c7: $11 $11 $11
	ld   b, c                                        ; $61ca: $41
	ld   de, $1f11                                   ; $61cb: $11 $11 $1f
	rst  $38                                         ; $61ce: $ff
	rst  $38                                         ; $61cf: $ff
	push af                                          ; $61d0: $f5
	ld   de, $1811                                   ; $61d1: $11 $11 $18
	rst  $38                                         ; $61d4: $ff
	ei                                               ; $61d5: $fb
	cp   l                                           ; $61d6: $bd
	rst  $38                                         ; $61d7: $ff
	rst  $38                                         ; $61d8: $ff
	db   $fd                                         ; $61d9: $fd
	ld   de, $1111                                   ; $61da: $11 $11 $11
	ld   sp, $1111                                   ; $61dd: $31 $11 $11
	rra                                              ; $61e0: $1f
	rst  $38                                         ; $61e1: $ff
	rst  $38                                         ; $61e2: $ff
	db   $f4                                         ; $61e3: $f4
	ld   de, $1911                                   ; $61e4: $11 $11 $19
	rst  $38                                         ; $61e7: $ff
	ld   [$ffad], a                                  ; $61e8: $ea $ad $ff
	rst  $38                                         ; $61eb: $ff
	db   $fc                                         ; $61ec: $fc
	ld   de, $1111                                   ; $61ed: $11 $11 $11
	ld   hl, $1111                                   ; $61f0: $21 $11 $11
	rra                                              ; $61f3: $1f
	rst  $38                                         ; $61f4: $ff
	rst  $38                                         ; $61f5: $ff
	db   $e3                                         ; $61f6: $e3
	ld   de, $1811                                   ; $61f7: $11 $11 $18
	rst  $38                                         ; $61fa: $ff
	db   $ec                                         ; $61fb: $ec
	cp   a                                           ; $61fc: $bf
	rst  $38                                         ; $61fd: $ff
	rst  $38                                         ; $61fe: $ff
	ei                                               ; $61ff: $fb
	ld   de, $1111                                   ; $6200: $11 $11 $11
	ld   de, $1111                                   ; $6203: $11 $11 $11
	ccf                                              ; $6206: $3f
	rst  $38                                         ; $6207: $ff
	rst  $38                                         ; $6208: $ff
	pop  bc                                          ; $6209: $c1
	ld   de, $1811                                   ; $620a: $11 $11 $18
	rst  $38                                         ; $620d: $ff
	db   $fd                                         ; $620e: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $620f: $cf
	rst  $38                                         ; $6210: $ff
	rst  $38                                         ; $6211: $ff
	or   $11                                         ; $6212: $f6 $11
	ld   de, $2111                                   ; $6214: $11 $11 $21
	ld   de, $8f11                                   ; $6217: $11 $11 $8f
	rst  $38                                         ; $621a: $ff
	rst  $38                                         ; $621b: $ff
	sub  c                                           ; $621c: $91
	ld   de, $3a11                                   ; $621d: $11 $11 $3a
	rst  $38                                         ; $6220: $ff
	sbc  $cf                                         ; $6221: $de $cf
	rst  $38                                         ; $6223: $ff
	rst  $38                                         ; $6224: $ff
	pop  af                                          ; $6225: $f1
	ld   de, $1111                                   ; $6226: $11 $11 $11
	ld   hl, $1311                                   ; $6229: $21 $11 $13
	rst  $38                                         ; $622c: $ff
	rst  $38                                         ; $622d: $ff
	rst  $38                                         ; $622e: $ff
	ld   b, c                                        ; $622f: $41
	ld   de, $6f11                                   ; $6230: $11 $11 $6f
	cp   $fd                                         ; $6233: $fe $fd
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	sub  c                                           ; $6238: $91
	ld   de, $1111                                   ; $6239: $11 $11 $11
	ld   de, $2d11                                   ; $623c: $11 $11 $2d
	rst  $38                                         ; $623f: $ff
	rst  $38                                         ; $6240: $ff
	ld   hl, sp+$11                                  ; $6241: $f8 $11
	ld   de, $bf15                                   ; $6243: $11 $15 $bf
	rst  $38                                         ; $6246: $ff
	rst  $38                                         ; $6247: $ff
	rst  $38                                         ; $6248: $ff
	rst  $38                                         ; $6249: $ff
	ei                                               ; $624a: $fb
	ld   de, $1111                                   ; $624b: $11 $11 $11
	ld   de, $1311                                   ; $624e: $11 $11 $13
	rst  $38                                         ; $6251: $ff
	rst  $38                                         ; $6252: $ff
	rst  $38                                         ; $6253: $ff
	ld   d, c                                        ; $6254: $51
	ld   de, $7d11                                   ; $6255: $11 $11 $7d
	rst  $38                                         ; $6258: $ff
	rst  $38                                         ; $6259: $ff
	rst  $38                                         ; $625a: $ff
	rst  $38                                         ; $625b: $ff
	cp   $51                                         ; $625c: $fe $51
	ld   de, $1111                                   ; $625e: $11 $11 $11
	ld   de, $9f12                                   ; $6261: $11 $12 $9f
	rst  $38                                         ; $6264: $ff
	rst  $38                                         ; $6265: $ff
	ld   d, c                                        ; $6266: $51
	ld   de, $2c11                                   ; $6267: $11 $11 $2c
	rst  $38                                         ; $626a: $ff
	rst  $28                                         ; $626b: $ef
	rst  $38                                         ; $626c: $ff
	rst  $38                                         ; $626d: $ff
	rst  $38                                         ; $626e: $ff
	sub  c                                           ; $626f: $91
	ld   de, $1111                                   ; $6270: $11 $11 $11
	ld   de, $7f11                                   ; $6273: $11 $11 $7f
	rst  $38                                         ; $6276: $ff
	rst  $38                                         ; $6277: $ff
	add  c                                           ; $6278: $81
	ld   de, $1e11                                   ; $6279: $11 $11 $1e
	rst  $38                                         ; $627c: $ff
	rst  $38                                         ; $627d: $ff
	rst  $28                                         ; $627e: $ef
	rst  $38                                         ; $627f: $ff
	rst  $38                                         ; $6280: $ff
	sub  c                                           ; $6281: $91
	ld   de, $1111                                   ; $6282: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $6285: $11 $13 $ff
	rst  $38                                         ; $6288: $ff
	rst  $38                                         ; $6289: $ff
	ld   b, c                                        ; $628a: $41
	ld   de, $4f11                                   ; $628b: $11 $11 $4f
	rst  $38                                         ; $628e: $ff
	rst  $38                                         ; $628f: $ff
	rst  $38                                         ; $6290: $ff
	rst  $38                                         ; $6291: $ff
	ei                                               ; $6292: $fb
	ld   de, $1111                                   ; $6293: $11 $11 $11
	ld   de, $2c11                                   ; $6296: $11 $11 $2c
	rst  $38                                         ; $6299: $ff
	rst  $38                                         ; $629a: $ff
	push af                                          ; $629b: $f5
	ld   de, $1311                                   ; $629c: $11 $11 $13
	rst  JumpTable                                         ; $629f: $df
	rst  $38                                         ; $62a0: $ff
	rst  $38                                         ; $62a1: $ff
	rst  $38                                         ; $62a2: $ff
	rst  $38                                         ; $62a3: $ff
	or   d                                           ; $62a4: $b2
	ld   de, $1111                                   ; $62a5: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $62a8: $11 $14 $ff
	rst  $38                                         ; $62ab: $ff
	rst  $38                                         ; $62ac: $ff
	ld   de, $1111                                   ; $62ad: $11 $11 $11
	ld   e, a                                        ; $62b0: $5f
	rst  $38                                         ; $62b1: $ff
	rst  $38                                         ; $62b2: $ff
	rst  $38                                         ; $62b3: $ff
	rst  $38                                         ; $62b4: $ff
	sub  l                                           ; $62b5: $95
	ld   de, $1111                                   ; $62b6: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $62b9: $11 $14 $ff
	rst  $38                                         ; $62bc: $ff
	rst  $38                                         ; $62bd: $ff
	ld   de, $1111                                   ; $62be: $11 $11 $11
	sbc  a                                           ; $62c1: $9f
	rst  $38                                         ; $62c2: $ff
	rst  $38                                         ; $62c3: $ff
	rst  $38                                         ; $62c4: $ff
	rst  $38                                         ; $62c5: $ff
	ld   [hl], e                                     ; $62c6: $73
	ld   de, $1111                                   ; $62c7: $11 $11 $11
	ld   de, $ff18                                   ; $62ca: $11 $18 $ff
	rst  $38                                         ; $62cd: $ff
	ei                                               ; $62ce: $fb
	ld   de, $1311                                   ; $62cf: $11 $11 $13
	cp   a                                           ; $62d2: $bf
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	rst  $38                                         ; $62d5: $ff
	db   $fd                                         ; $62d6: $fd
	ld   b, c                                        ; $62d7: $41
	ld   de, $1111                                   ; $62d8: $11 $11 $11
	ld   de, $ff7f                                   ; $62db: $11 $7f $ff
	rst  $38                                         ; $62de: $ff
	pop  bc                                          ; $62df: $c1
	ld   de, $2b11                                   ; $62e0: $11 $11 $2b
	rst  $38                                         ; $62e3: $ff
	rst  $38                                         ; $62e4: $ff
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	push bc                                          ; $62e7: $c5
	ld   de, $1111                                   ; $62e8: $11 $11 $11
	ld   de, $ff1f                                   ; $62eb: $11 $1f $ff
	rst  $38                                         ; $62ee: $ff
	jp   hl                                          ; $62ef: $e9


	ld   de, $1711                                   ; $62f0: $11 $11 $17
	rst  $38                                         ; $62f3: $ff
	rst  $38                                         ; $62f4: $ff
	rst  $38                                         ; $62f5: $ff
	rst  $38                                         ; $62f6: $ff
	push hl                                          ; $62f7: $e5
	ld   hl, $1111                                   ; $62f8: $21 $11 $11
	ld   de, $ff1f                                   ; $62fb: $11 $1f $ff
	rst  $38                                         ; $62fe: $ff
	ld   sp, hl                                      ; $62ff: $f9
	ld   de, $1511                                   ; $6300: $11 $11 $15
	rst  $38                                         ; $6303: $ff
	rst  $38                                         ; $6304: $ff
	rst  $38                                         ; $6305: $ff
	db   $fd                                         ; $6306: $fd
	add  $21                                         ; $6307: $c6 $21
	ld   de, $1111                                   ; $6309: $11 $11 $11
	ld   a, a                                        ; $630c: $7f
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	sub  d                                           ; $630f: $92
	ld   de, $2d11                                   ; $6310: $11 $11 $2d
	ld   sp, hl                                      ; $6313: $f9
	rst  $38                                         ; $6314: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6315: $cf
	db   $fd                                         ; $6316: $fd
	or   a                                           ; $6317: $b7
	ld   de, $1111                                   ; $6318: $11 $11 $11
	inc  d                                           ; $631b: $14
	rst  $38                                         ; $631c: $ff
	rst  $38                                         ; $631d: $ff
	ei                                               ; $631e: $fb
	ld   de, $1111                                   ; $631f: $11 $11 $11
	rst  $28                                         ; $6322: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6323: $cf
	ld   a, [$96ff]                                  ; $6324: $fa $ff $96
	add  c                                           ; $6327: $81
	ld   de, $1111                                   ; $6328: $11 $11 $11
	rst  $38                                         ; $632b: $ff
	rst  $38                                         ; $632c: $ff
	rst  $38                                         ; $632d: $ff
	ld   b, c                                        ; $632e: $41
	ld   de, $8f12                                   ; $632f: $11 $12 $8f
	rst  $38                                         ; $6332: $ff
	db   $fc                                         ; $6333: $fc
	cp   d                                           ; $6334: $ba
	xor  b                                           ; $6335: $a8
	ld   [hl], e                                     ; $6336: $73
	ld   de, $1311                                   ; $6337: $11 $11 $13
	rst  $38                                         ; $633a: $ff
	rst  $38                                         ; $633b: $ff
	rst  $38                                         ; $633c: $ff
	ld   de, $1511                                   ; $633d: $11 $11 $15
	rst  $38                                         ; $6340: $ff
	call z, Call_0d9_5652                            ; $6341: $cc $52 $56
	sbc  l                                           ; $6344: $9d
	jp   nz, $1111                                   ; $6345: $c2 $11 $11

	xor  a                                           ; $6348: $af
	rst  $38                                         ; $6349: $ff
	rst  $38                                         ; $634a: $ff
	pop  bc                                          ; $634b: $c1
	ld   de, $ff49                                   ; $634c: $11 $49 $ff
	or   a                                           ; $634f: $b7
	ld   de, $1411                                   ; $6350: $11 $11 $14
	cp   a                                           ; $6353: $bf
	rst  $38                                         ; $6354: $ff
	rst  $38                                         ; $6355: $ff
	rst  $28                                         ; $6356: $ef
	xor  d                                           ; $6357: $aa
	ld   [hl], e                                     ; $6358: $73
	ld   [hl+], a                                    ; $6359: $22
	ld   b, a                                        ; $635a: $47
	adc  $ff                                         ; $635b: $ce $ff
	ret                                              ; $635d: $c9


	ld   sp, $1111                                   ; $635e: $31 $11 $11
	dec  a                                           ; $6361: $3d
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	ld   a, [$1131]                                  ; $6364: $fa $31 $11
	ld   e, b                                        ; $6367: $58
	xor  e                                           ; $6368: $ab
	add  [hl]                                        ; $6369: $86
	ld   d, d                                        ; $636a: $52
	ld   de, $1411                                   ; $636b: $11 $11 $14
	adc  a                                           ; $636e: $8f
	rst  $38                                         ; $636f: $ff
	rst  $38                                         ; $6370: $ff
	or   l                                           ; $6371: $b5
	ld   de, $af17                                   ; $6372: $11 $17 $af
	ei                                               ; $6375: $fb
	add  d                                           ; $6376: $82
	ld   de, $1911                                   ; $6377: $11 $11 $19
	rst  $28                                         ; $637a: $ef
	rst  $38                                         ; $637b: $ff
	rst  $38                                         ; $637c: $ff
	ld   [hl], e                                     ; $637d: $73
	ld   de, $9c28                                   ; $637e: $11 $28 $9c
	rst  $10                                         ; $6381: $d7
	ld   d, c                                        ; $6382: $51
	ld   de, $3d11                                   ; $6383: $11 $11 $3d
	rst  $38                                         ; $6386: $ff
	rst  $38                                         ; $6387: $ff
	rst  $30                                         ; $6388: $f7
	ld   d, c                                        ; $6389: $51
	inc  d                                           ; $638a: $14
	adc  h                                           ; $638b: $8c
	call $1171                                       ; $638c: $cd $71 $11
	ld   de, $ff19                                   ; $638f: $11 $19 $ff
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	ld   d, c                                        ; $6394: $51
	ld   de, $be19                                   ; $6395: $11 $19 $be
	rst  $30                                         ; $6398: $f7
	ld   hl, $1311                                   ; $6399: $21 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $639c: $cf
	rst  $38                                         ; $639d: $ff
	rst  $38                                         ; $639e: $ff
	ld   b, c                                        ; $639f: $41
	ld   de, $dd19                                   ; $63a0: $11 $19 $dd
	ld   hl, sp+$11                                  ; $63a3: $f8 $11
	ld   de, $df15                                   ; $63a5: $11 $15 $df
	rst  $38                                         ; $63a8: $ff
	rst  $38                                         ; $63a9: $ff
	ld   de, $3d11                                   ; $63aa: $11 $11 $3d
	call $11f3                                       ; $63ad: $cd $f3 $11
	ld   de, $ff1b                                   ; $63b0: $11 $1b $ff
	rst  $38                                         ; $63b3: $ff
	ld   a, [$1111]                                  ; $63b4: $fa $11 $11
	ld   l, h                                        ; $63b7: $6c
	adc  l                                           ; $63b8: $8d
	and  c                                           ; $63b9: $a1
	ld   de, $8f11                                   ; $63ba: $11 $11 $8f
	rst  $38                                         ; $63bd: $ff
	rst  $38                                         ; $63be: $ff
	pop  hl                                          ; $63bf: $e1
	ld   de, $da15                                   ; $63c0: $11 $15 $da
	sbc  c                                           ; $63c3: $99
	ld   de, $1811                                   ; $63c4: $11 $11 $18
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	ei                                               ; $63c9: $fb
	ld   de, $6e12                                   ; $63ca: $11 $12 $6e
	db   $eb                                         ; $63cd: $eb
	sub  c                                           ; $63ce: $91
	ld   de, $7f11                                   ; $63cf: $11 $11 $7f
	rst  $38                                         ; $63d2: $ff
	rst  $38                                         ; $63d3: $ff
	sub  c                                           ; $63d4: $91
	ld   de, $eb38                                   ; $63d5: $11 $38 $eb
	and  l                                           ; $63d8: $a5
	ld   de, $1c11                                   ; $63d9: $11 $11 $1c
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	push af                                          ; $63de: $f5
	ld   de, $8e11                                   ; $63df: $11 $11 $8e
	swap c                                           ; $63e2: $cb $31
	ld   de, rAUD1HIGH                                   ; $63e4: $11 $14 $ff
	rst  $38                                         ; $63e7: $ff
	db   $fc                                         ; $63e8: $fc
	ld   de, $5b11                                   ; $63e9: $11 $11 $5b
	bit  4, c                                        ; $63ec: $cb $61
	ld   de, $df11                                   ; $63ee: $11 $11 $df
	rst  $38                                         ; $63f1: $ff
	rst  $38                                         ; $63f2: $ff
	ld   d, c                                        ; $63f3: $51
	ld   de, $ba29                                   ; $63f4: $11 $29 $ba
	sub  c                                           ; $63f7: $91
	ld   de, $7f11                                   ; $63f8: $11 $11 $7f
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	and  c                                           ; $63fd: $a1
	ld   de, $a916                                   ; $63fe: $11 $16 $a9
	sub  c                                           ; $6401: $91
	ld   de, $6f11                                   ; $6402: $11 $11 $6f
	rst  $38                                         ; $6405: $ff
	rst  $38                                         ; $6406: $ff
	pop  bc                                          ; $6407: $c1
	ld   de, $a916                                   ; $6408: $11 $16 $a9
	add  c                                           ; $640b: $81
	ld   de, $5f11                                   ; $640c: $11 $11 $5f
	rst  $38                                         ; $640f: $ff
	rst  $38                                         ; $6410: $ff
	pop  de                                          ; $6411: $d1
	ld   de, $9816                                   ; $6412: $11 $16 $98
	ld   h, c                                        ; $6415: $61
	ld   de, $7f11                                   ; $6416: $11 $11 $7f
	rst  $38                                         ; $6419: $ff
	rst  $38                                         ; $641a: $ff
	or   c                                           ; $641b: $b1
	ld   de, $8615                                   ; $641c: $11 $15 $86
	ld   d, c                                        ; $641f: $51
	ld   de, $bf11                                   ; $6420: $11 $11 $bf
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	ld   [hl], c                                     ; $6425: $71
	ld   de, $8628                                   ; $6426: $11 $28 $86
	ld   sp, $1111                                   ; $6429: $31 $11 $11
	rst  $28                                         ; $642c: $ef
	rst  $38                                         ; $642d: $ff
	rst  $38                                         ; $642e: $ff
	ld   d, c                                        ; $642f: $51
	ld   de, $6548                                   ; $6430: $11 $48 $65
	ld   de, $1311                                   ; $6433: $11 $11 $13
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	ld   d, c                                        ; $6439: $51
	ld   [de], a                                     ; $643a: $12
	ld   h, a                                        ; $643b: $67
	ld   d, e                                        ; $643c: $53
	ld   de, $1811                                   ; $643d: $11 $11 $18
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	ei                                               ; $6442: $fb
	ld   hl, $9624                                   ; $6443: $21 $24 $96
	ld   b, c                                        ; $6446: $41
	ld   de, $1f11                                   ; $6447: $11 $11 $1f
	rst  $38                                         ; $644a: $ff
	rst  $38                                         ; $644b: $ff
	rst  $30                                         ; $644c: $f7
	ld   [hl+], a                                    ; $644d: $22
	daa                                              ; $644e: $27
	sub  l                                           ; $644f: $95
	ld   sp, $1111                                   ; $6450: $31 $11 $11
	ld   e, a                                        ; $6453: $5f
	rst  $38                                         ; $6454: $ff
	rst  $38                                         ; $6455: $ff
	and  $44                                         ; $6456: $e6 $44
	ld   l, c                                        ; $6458: $69
	ld   [hl], l                                     ; $6459: $75
	ld   de, $1111                                   ; $645a: $11 $11 $11
	cp   a                                           ; $645d: $bf
	rst  $38                                         ; $645e: $ff
	rst  $38                                         ; $645f: $ff
	ret  z                                           ; $6460: $c8

	ld   h, l                                        ; $6461: $65
	adc  c                                           ; $6462: $89
	ld   h, e                                        ; $6463: $63
	ld   de, $1111                                   ; $6464: $11 $11 $11
	rst  $38                                         ; $6467: $ff
	rst  $38                                         ; $6468: $ff
	rst  $38                                         ; $6469: $ff
	cp   b                                           ; $646a: $b8
	ld   d, [hl]                                     ; $646b: $56
	sbc  b                                           ; $646c: $98
	ld   [hl], e                                     ; $646d: $73
	ld   de, $1311                                   ; $646e: $11 $11 $13
	rst  $38                                         ; $6471: $ff
	rst  $38                                         ; $6472: $ff
	rst  $38                                         ; $6473: $ff
	or   a                                           ; $6474: $b7

Call_0d9_6475:
	ld   l, b                                        ; $6475: $68
	xor  d                                           ; $6476: $aa
	add  e                                           ; $6477: $83
	ld   de, $1611                                   ; $6478: $11 $11 $16
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	db   $fd                                         ; $647d: $fd
	sub  a                                           ; $647e: $97
	sbc  e                                           ; $647f: $9b
	call z, $11a4                                    ; $6480: $cc $a4 $11
	ld   de, $ff17                                   ; $6483: $11 $17 $ff
	rst  $38                                         ; $6486: $ff
	ld   a, [$9c88]                                  ; $6487: $fa $88 $9c
	db   $ed                                         ; $648a: $ed
	or   [hl]                                        ; $648b: $b6
	ld   de, $1611                                   ; $648c: $11 $11 $16
	rst  JumpTable                                         ; $648f: $df
	rst  $38                                         ; $6490: $ff
	reti                                             ; $6491: $d9


	halt                                             ; $6492: $76
	ld   a, c                                        ; $6493: $79
	db   $dd                                         ; $6494: $dd
	ret                                              ; $6495: $c9


	ld   d, c                                        ; $6496: $51
	ld   de, $ad27                                   ; $6497: $11 $27 $ad
	db   $ed                                         ; $649a: $ed
	or   [hl]                                        ; $649b: $b6
	ld   b, e                                        ; $649c: $43
	ld   e, c                                        ; $649d: $59
	call z, $86ca                                    ; $649e: $cc $ca $86
	ld   b, h                                        ; $64a1: $44
	ld   d, a                                        ; $64a2: $57
	xor  e                                           ; $64a3: $ab
	call z, Call_0d9_4397                            ; $64a4: $cc $97 $43
	dec  [hl]                                        ; $64a7: $35
	ld   a, c                                        ; $64a8: $79
	xor  e                                           ; $64a9: $ab
	xor  c                                           ; $64aa: $a9
	add  a                                           ; $64ab: $87
	ld   a, b                                        ; $64ac: $78
	adc  e                                           ; $64ad: $8b
	cp   e                                           ; $64ae: $bb
	cp   c                                           ; $64af: $b9
	ld   h, h                                        ; $64b0: $64
	ld   b, e                                        ; $64b1: $43
	ld   d, [hl]                                     ; $64b2: $56
	adc  c                                           ; $64b3: $89
	xor  c                                           ; $64b4: $a9
	sbc  b                                           ; $64b5: $98
	adc  c                                           ; $64b6: $89
	xor  e                                           ; $64b7: $ab
	xor  e                                           ; $64b8: $ab
	cp   d                                           ; $64b9: $ba
	sub  a                                           ; $64ba: $97
	ld   d, h                                        ; $64bb: $54
	ld   b, e                                        ; $64bc: $43
	ld   b, [hl]                                     ; $64bd: $46
	ld   a, b                                        ; $64be: $78
	adc  b                                           ; $64bf: $88
	sbc  d                                           ; $64c0: $9a
	xor  e                                           ; $64c1: $ab
	xor  e                                           ; $64c2: $ab
	xor  c                                           ; $64c3: $a9
	xor  c                                           ; $64c4: $a9
	add  a                                           ; $64c5: $87
	halt                                             ; $64c6: $76
	ld   h, l                                        ; $64c7: $65
	ld   d, l                                        ; $64c8: $55
	ld   d, [hl]                                     ; $64c9: $56
	ld   a, b                                        ; $64ca: $78
	adc  c                                           ; $64cb: $89
	xor  d                                           ; $64cc: $aa
	xor  d                                           ; $64cd: $aa
	xor  d                                           ; $64ce: $aa
	sbc  c                                           ; $64cf: $99
	adc  b                                           ; $64d0: $88
	adc  b                                           ; $64d1: $88
	halt                                             ; $64d2: $76
	ld   h, [hl]                                     ; $64d3: $66
	ld   d, [hl]                                     ; $64d4: $56
	ld   h, [hl]                                     ; $64d5: $66
	ld   a, b                                        ; $64d6: $78
	adc  c                                           ; $64d7: $89
	xor  c                                           ; $64d8: $a9
	sbc  c                                           ; $64d9: $99
	xor  d                                           ; $64da: $aa
	xor  c                                           ; $64db: $a9
	adc  b                                           ; $64dc: $88
	sbc  b                                           ; $64dd: $98
	add  a                                           ; $64de: $87
	halt                                             ; $64df: $76
	ld   h, [hl]                                     ; $64e0: $66
	ld   h, [hl]                                     ; $64e1: $66
	ld   [hl], a                                     ; $64e2: $77
	adc  b                                           ; $64e3: $88
	sbc  b                                           ; $64e4: $98
	sbc  c                                           ; $64e5: $99
	sbc  c                                           ; $64e6: $99
	xor  d                                           ; $64e7: $aa
	xor  d                                           ; $64e8: $aa
	xor  c                                           ; $64e9: $a9
	add  a                                           ; $64ea: $87
	ld   [hl], a                                     ; $64eb: $77
	ld   h, [hl]                                     ; $64ec: $66
	ld   h, [hl]                                     ; $64ed: $66
	ld   h, [hl]                                     ; $64ee: $66
	ld   h, a                                        ; $64ef: $67
	ld   a, c                                        ; $64f0: $79
	sbc  d                                           ; $64f1: $9a
	xor  e                                           ; $64f2: $ab
	xor  d                                           ; $64f3: $aa
	sbc  c                                           ; $64f4: $99
	sbc  b                                           ; $64f5: $98
	adc  b                                           ; $64f6: $88
	adc  b                                           ; $64f7: $88
	halt                                             ; $64f8: $76
	ld   h, l                                        ; $64f9: $65
	ld   d, l                                        ; $64fa: $55
	ld   h, a                                        ; $64fb: $67
	adc  b                                           ; $64fc: $88
	sbc  c                                           ; $64fd: $99
	xor  d                                           ; $64fe: $aa
	xor  d                                           ; $64ff: $aa
	sbc  c                                           ; $6500: $99
	sbc  d                                           ; $6501: $9a
	sbc  c                                           ; $6502: $99
	sbc  b                                           ; $6503: $98
	ld   [hl], a                                     ; $6504: $77
	ld   [hl], a                                     ; $6505: $77
	ld   h, [hl]                                     ; $6506: $66
	ld   h, [hl]                                     ; $6507: $66
	ld   h, a                                        ; $6508: $67
	ld   a, b                                        ; $6509: $78
	adc  c                                           ; $650a: $89
	sbc  c                                           ; $650b: $99
	sbc  c                                           ; $650c: $99
	sbc  c                                           ; $650d: $99
	sbc  c                                           ; $650e: $99
	sbc  c                                           ; $650f: $99
	sbc  b                                           ; $6510: $98
	sbc  b                                           ; $6511: $98
	ld   [hl], a                                     ; $6512: $77
	halt                                             ; $6513: $76
	ld   h, [hl]                                     ; $6514: $66
	ld   h, [hl]                                     ; $6515: $66
	ld   [hl], a                                     ; $6516: $77
	adc  b                                           ; $6517: $88
	adc  c                                           ; $6518: $89
	xor  c                                           ; $6519: $a9
	sbc  c                                           ; $651a: $99
	sbc  c                                           ; $651b: $99
	xor  d                                           ; $651c: $aa
	sbc  b                                           ; $651d: $98
	sbc  b                                           ; $651e: $98
	ld   [hl], a                                     ; $651f: $77
	ld   h, [hl]                                     ; $6520: $66
	ld   h, l                                        ; $6521: $65
	ld   d, [hl]                                     ; $6522: $56
	ld   h, a                                        ; $6523: $67
	adc  c                                           ; $6524: $89
	adc  c                                           ; $6525: $89
	xor  c                                           ; $6526: $a9
	xor  d                                           ; $6527: $aa
	sbc  c                                           ; $6528: $99
	xor  c                                           ; $6529: $a9
	sbc  b                                           ; $652a: $98
	adc  c                                           ; $652b: $89
	add  a                                           ; $652c: $87
	halt                                             ; $652d: $76
	ld   h, l                                        ; $652e: $65
	ld   d, [hl]                                     ; $652f: $56
	ld   h, a                                        ; $6530: $67
	adc  c                                           ; $6531: $89
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	sbc  d                                           ; $6534: $9a
	sbc  d                                           ; $6535: $9a
	xor  c                                           ; $6536: $a9
	sbc  b                                           ; $6537: $98
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	add  a                                           ; $653a: $87
	halt                                             ; $653b: $76
	ld   h, l                                        ; $653c: $65
	ld   d, [hl]                                     ; $653d: $56
	ld   h, a                                        ; $653e: $67
	adc  b                                           ; $653f: $88
	sbc  c                                           ; $6540: $99
	sbc  c                                           ; $6541: $99
	sbc  c                                           ; $6542: $99
	xor  c                                           ; $6543: $a9
	sbc  d                                           ; $6544: $9a
	sbc  d                                           ; $6545: $9a
	sbc  b                                           ; $6546: $98
	add  a                                           ; $6547: $87
	halt                                             ; $6548: $76
	ld   h, l                                        ; $6549: $65
	ld   d, [hl]                                     ; $654a: $56
	ld   h, [hl]                                     ; $654b: $66
	ld   [hl], a                                     ; $654c: $77
	adc  c                                           ; $654d: $89
	sbc  c                                           ; $654e: $99
	xor  d                                           ; $654f: $aa
	xor  d                                           ; $6550: $aa
	sbc  d                                           ; $6551: $9a
	sbc  c                                           ; $6552: $99
	adc  b                                           ; $6553: $88
	adc  c                                           ; $6554: $89
	add  a                                           ; $6555: $87
	ld   h, l                                        ; $6556: $65
	ld   d, l                                        ; $6557: $55
	ld   h, [hl]                                     ; $6558: $66
	ld   [hl], a                                     ; $6559: $77
	adc  b                                           ; $655a: $88
	adc  c                                           ; $655b: $89
	adc  c                                           ; $655c: $89
	sbc  d                                           ; $655d: $9a
	xor  d                                           ; $655e: $aa
	sbc  c                                           ; $655f: $99
	adc  c                                           ; $6560: $89
	sbc  b                                           ; $6561: $98
	adc  b                                           ; $6562: $88
	add  a                                           ; $6563: $87
	ld   h, [hl]                                     ; $6564: $66
	ld   d, l                                        ; $6565: $55
	ld   d, [hl]                                     ; $6566: $56
	ld   [hl], a                                     ; $6567: $77
	adc  b                                           ; $6568: $88
	sbc  b                                           ; $6569: $98
	sbc  d                                           ; $656a: $9a
	sbc  d                                           ; $656b: $9a
	xor  d                                           ; $656c: $aa
	xor  c                                           ; $656d: $a9
	sbc  c                                           ; $656e: $99
	adc  b                                           ; $656f: $88
	adc  b                                           ; $6570: $88
	halt                                             ; $6571: $76
	ld   h, l                                        ; $6572: $65
	ld   d, l                                        ; $6573: $55
	ld   d, [hl]                                     ; $6574: $56
	ld   [hl], a                                     ; $6575: $77
	sbc  c                                           ; $6576: $99
	sbc  d                                           ; $6577: $9a
	sbc  c                                           ; $6578: $99
	sbc  c                                           ; $6579: $99
	sbc  d                                           ; $657a: $9a
	sbc  c                                           ; $657b: $99
	sbc  b                                           ; $657c: $98
	adc  c                                           ; $657d: $89
	add  a                                           ; $657e: $87
	halt                                             ; $657f: $76
	ld   h, [hl]                                     ; $6580: $66
	ld   h, [hl]                                     ; $6581: $66
	ld   h, [hl]                                     ; $6582: $66
	ld   [hl], a                                     ; $6583: $77
	adc  b                                           ; $6584: $88
	sbc  c                                           ; $6585: $99
	sbc  d                                           ; $6586: $9a
	xor  d                                           ; $6587: $aa
	xor  d                                           ; $6588: $aa
	xor  d                                           ; $6589: $aa
	sbc  c                                           ; $658a: $99
	xor  c                                           ; $658b: $a9
	adc  b                                           ; $658c: $88
	halt                                             ; $658d: $76
	ld   d, l                                        ; $658e: $55
	ld   d, l                                        ; $658f: $55
	ld   h, [hl]                                     ; $6590: $66
	ld   h, a                                        ; $6591: $67
	ld   a, b                                        ; $6592: $78
	adc  c                                           ; $6593: $89
	sbc  d                                           ; $6594: $9a
	xor  d                                           ; $6595: $aa
	xor  c                                           ; $6596: $a9
	xor  d                                           ; $6597: $aa
	sbc  c                                           ; $6598: $99
	sbc  b                                           ; $6599: $98
	sub  a                                           ; $659a: $97
	halt                                             ; $659b: $76
	ld   d, l                                        ; $659c: $55
	ld   d, l                                        ; $659d: $55
	ld   h, [hl]                                     ; $659e: $66
	ld   [hl], a                                     ; $659f: $77
	adc  b                                           ; $65a0: $88
	adc  c                                           ; $65a1: $89
	xor  c                                           ; $65a2: $a9
	xor  d                                           ; $65a3: $aa
	sbc  d                                           ; $65a4: $9a
	xor  c                                           ; $65a5: $a9
	sbc  c                                           ; $65a6: $99
	sbc  c                                           ; $65a7: $99
	sbc  b                                           ; $65a8: $98

Call_0d9_65a9:
	halt                                             ; $65a9: $76
	ld   h, l                                        ; $65aa: $65
	ld   d, l                                        ; $65ab: $55
	ld   d, [hl]                                     ; $65ac: $56
	ld   h, a                                        ; $65ad: $67
	ld   a, b                                        ; $65ae: $78
	sbc  b                                           ; $65af: $98
	sbc  c                                           ; $65b0: $99
	xor  d                                           ; $65b1: $aa
	xor  d                                           ; $65b2: $aa
	sbc  d                                           ; $65b3: $9a
	xor  d                                           ; $65b4: $aa
	xor  c                                           ; $65b5: $a9
	sbc  c                                           ; $65b6: $99
	ld   [hl], a                                     ; $65b7: $77
	ld   h, l                                        ; $65b8: $65
	ld   d, l                                        ; $65b9: $55
	ld   d, [hl]                                     ; $65ba: $56
	ld   h, a                                        ; $65bb: $67
	ld   a, b                                        ; $65bc: $78
	adc  b                                           ; $65bd: $88
	sbc  c                                           ; $65be: $99
	xor  d                                           ; $65bf: $aa
	xor  d                                           ; $65c0: $aa
	sbc  d                                           ; $65c1: $9a
	xor  d                                           ; $65c2: $aa
	xor  d                                           ; $65c3: $aa
	sbc  c                                           ; $65c4: $99
	sub  a                                           ; $65c5: $97
	ld   h, [hl]                                     ; $65c6: $66
	ld   d, l                                        ; $65c7: $55
	ld   d, l                                        ; $65c8: $55
	ld   h, [hl]                                     ; $65c9: $66
	ld   [hl], a                                     ; $65ca: $77
	adc  c                                           ; $65cb: $89
	sbc  d                                           ; $65cc: $9a
	sbc  d                                           ; $65cd: $9a
	xor  d                                           ; $65ce: $aa
	xor  d                                           ; $65cf: $aa
	sbc  c                                           ; $65d0: $99
	xor  d                                           ; $65d1: $aa
	sbc  c                                           ; $65d2: $99
	adc  b                                           ; $65d3: $88
	halt                                             ; $65d4: $76
	ld   d, l                                        ; $65d5: $55
	ld   d, l                                        ; $65d6: $55
	ld   d, [hl]                                     ; $65d7: $56
	ld   h, a                                        ; $65d8: $67
	ld   a, b                                        ; $65d9: $78
	adc  c                                           ; $65da: $89
	xor  c                                           ; $65db: $a9
	xor  d                                           ; $65dc: $aa
	cp   d                                           ; $65dd: $ba
	sbc  c                                           ; $65de: $99
	xor  c                                           ; $65df: $a9
	sbc  c                                           ; $65e0: $99
	sbc  c                                           ; $65e1: $99
	ld   [hl], a                                     ; $65e2: $77
	ld   h, l                                        ; $65e3: $65
	ld   d, l                                        ; $65e4: $55
	ld   d, l                                        ; $65e5: $55
	ld   h, [hl]                                     ; $65e6: $66
	ld   [hl], a                                     ; $65e7: $77
	ld   a, c                                        ; $65e8: $79
	sbc  d                                           ; $65e9: $9a
	xor  e                                           ; $65ea: $ab
	res  3, e                                        ; $65eb: $cb $9b
	xor  c                                           ; $65ed: $a9
	xor  h                                           ; $65ee: $ac
	and  a                                           ; $65ef: $a7
	adc  b                                           ; $65f0: $88
	sub  l                                           ; $65f1: $95
	inc  sp                                          ; $65f2: $33
	inc  [hl]                                        ; $65f3: $34
	ld   b, l                                        ; $65f4: $45
	ld   h, a                                        ; $65f5: $67
	ld   [hl], a                                     ; $65f6: $77
	adc  c                                           ; $65f7: $89
	xor  e                                           ; $65f8: $ab
	cp   d                                           ; $65f9: $ba
	xor  c                                           ; $65fa: $a9
	adc  c                                           ; $65fb: $89
	adc  c                                           ; $65fc: $89
	sbc  d                                           ; $65fd: $9a
	sbc  b                                           ; $65fe: $98
	ld   h, h                                        ; $65ff: $64
	ld   b, h                                        ; $6600: $44
	ld   b, l                                        ; $6601: $45
	ld   h, a                                        ; $6602: $67
	ld   a, b                                        ; $6603: $78
	sbc  c                                           ; $6604: $99
	xor  e                                           ; $6605: $ab
	call z, $98bb                                    ; $6606: $cc $bb $98
	add  a                                           ; $6609: $87
	sbc  e                                           ; $660a: $9b
	xor  b                                           ; $660b: $a8
	ld   [hl], h                                     ; $660c: $74
	ld   [hl+], a                                    ; $660d: $22
	inc  [hl]                                        ; $660e: $34
	ld   h, a                                        ; $660f: $67
	ld   [hl], a                                     ; $6610: $77
	adc  c                                           ; $6611: $89
	xor  e                                           ; $6612: $ab
	db   $dd                                         ; $6613: $dd
	res  2, a                                        ; $6614: $cb $97
	halt                                             ; $6616: $76
	ld   l, b                                        ; $6617: $68
	xor  c                                           ; $6618: $a9
	halt                                             ; $6619: $76
	ld   hl, $5724                                   ; $661a: $21 $24 $57
	sbc  b                                           ; $661d: $98
	sbc  c                                           ; $661e: $99
	xor  h                                           ; $661f: $ac
	db   $dd                                         ; $6620: $dd
	jp   z, Jump_0d9_6787                            ; $6621: $ca $87 $67

	ld   a, d                                        ; $6624: $7a
	sbc  b                                           ; $6625: $98
	ld   [hl], h                                     ; $6626: $74
	ld   hl, $6824                                   ; $6627: $21 $24 $68
	sbc  b                                           ; $662a: $98
	adc  c                                           ; $662b: $89
	cp   [hl]                                        ; $662c: $be
	db   $ed                                         ; $662d: $ed
	ret                                              ; $662e: $c9


	add  a                                           ; $662f: $87
	ld   [hl], a                                     ; $6630: $77
	adc  d                                           ; $6631: $8a
	sbc  b                                           ; $6632: $98
	ld   [hl], h                                     ; $6633: $74
	ld   hl, $6925                                   ; $6634: $21 $25 $69
	adc  b                                           ; $6637: $88
	xor  e                                           ; $6638: $ab
	sbc  $ed                                         ; $6639: $de $ed
	cp   b                                           ; $663b: $b8
	halt                                             ; $663c: $76
	ld   d, [hl]                                     ; $663d: $56
	ld   a, c                                        ; $663e: $79
	add  a                                           ; $663f: $87
	ld   d, d                                        ; $6640: $52
	ld   de, $8936                                   ; $6641: $11 $36 $89
	sbc  d                                           ; $6644: $9a
	cp   l                                           ; $6645: $bd
	rst  $38                                         ; $6646: $ff
	db   $eb                                         ; $6647: $eb
	add  [hl]                                        ; $6648: $86
	ld   d, h                                        ; $6649: $54
	ld   d, [hl]                                     ; $664a: $56
	adc  b                                           ; $664b: $88
	ld   [hl], l                                     ; $664c: $75
	ld   hl, $6823                                   ; $664d: $21 $23 $68
	xor  e                                           ; $6650: $ab
	cp   l                                           ; $6651: $bd
	rst  $28                                         ; $6652: $ef
	cp   $b8                                         ; $6653: $fe $b8
	ld   d, h                                        ; $6655: $54
	inc  sp                                          ; $6656: $33
	ld   d, a                                        ; $6657: $57
	ld   h, [hl]                                     ; $6658: $66
	ld   b, c                                        ; $6659: $41
	ld   de, $ab47                                   ; $665a: $11 $47 $ab
	call z, $ffef                                    ; $665d: $cc $ef $ff
	ld   [$2153], a                                  ; $6660: $ea $53 $21
	inc  h                                           ; $6663: $24
	ld   d, h                                        ; $6664: $54
	ld   b, d                                        ; $6665: $42
	ld   [de], a                                     ; $6666: $12
	ld   b, a                                        ; $6667: $47
	cp   l                                           ; $6668: $bd
	xor  $ff                                         ; $6669: $ee $ff
	rst  $38                                         ; $666b: $ff
	ld   a, [$1163]                                  ; $666c: $fa $63 $11
	ld   [de], a                                     ; $666f: $12
	inc  [hl]                                        ; $6670: $34
	ld   b, d                                        ; $6671: $42
	ld   [hl+], a                                    ; $6672: $22
	ld   e, c                                        ; $6673: $59
	rst  JumpTable                                         ; $6674: $df
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	ld   sp, hl                                      ; $6678: $f9
	ld   b, c                                        ; $6679: $41
	ld   de, $2211                                   ; $667a: $11 $11 $22
	ld   b, e                                        ; $667d: $43
	dec  [hl]                                        ; $667e: $35
	adc  l                                           ; $667f: $8d
	rst  $38                                         ; $6680: $ff
	rst  $38                                         ; $6681: $ff
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	push de                                          ; $6684: $d5
	ld   de, $1111                                   ; $6685: $11 $11 $11
	inc  de                                          ; $6688: $13
	ld   b, e                                        ; $6689: $43
	ld   e, c                                        ; $668a: $59
	rst  $28                                         ; $668b: $ef
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	cp   $61                                         ; $668f: $fe $61
	ld   de, $1111                                   ; $6691: $11 $11 $11
	inc  d                                           ; $6694: $14
	ld   b, l                                        ; $6695: $45
	cp   a                                           ; $6696: $bf
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff

Jump_0d9_6699:
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	push af                                          ; $669b: $f5
	ld   de, $1111                                   ; $669c: $11 $11 $11
	ld   de, $7c35                                   ; $669f: $11 $35 $7c
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	db   $fd                                         ; $66a6: $fd
	ld   sp, $1111                                   ; $66a7: $31 $11 $11
	ld   de, $6814                                   ; $66aa: $11 $14 $68
	rst  $38                                         ; $66ad: $ff
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	and  c                                           ; $66b2: $a1
	ld   de, $1111                                   ; $66b3: $11 $11 $11
	ld   de, $cf58                                   ; $66b6: $11 $58 $cf
	rst  $38                                         ; $66b9: $ff
	rst  $38                                         ; $66ba: $ff
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	push de                                          ; $66bd: $d5
	ld   de, $1111                                   ; $66be: $11 $11 $11
	ld   de, $df38                                   ; $66c1: $11 $38 $df
	rst  $38                                         ; $66c4: $ff
	rst  $38                                         ; $66c5: $ff
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	rst  $30                                         ; $66c8: $f7

jr_0d9_66c9:
	ld   de, $1111                                   ; $66c9: $11 $11 $11
	ld   de, $df17                                   ; $66cc: $11 $17 $df
	rst  $38                                         ; $66cf: $ff
	rst  $38                                         ; $66d0: $ff
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	or   $11                                         ; $66d3: $f6 $11
	ld   de, $1111                                   ; $66d5: $11 $11 $11
	jr   c, jr_0d9_66c9                              ; $66d8: $38 $ef

	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	push hl                                          ; $66de: $e5
	ld   de, $1111                                   ; $66df: $11 $11 $11
	ld   de, $ff3a                                   ; $66e2: $11 $3a $ff
	rst  $38                                         ; $66e5: $ff
	rst  $38                                         ; $66e6: $ff
	rst  $38                                         ; $66e7: $ff
	rst  $38                                         ; $66e8: $ff
	jp   $1111                                       ; $66e9: $c3 $11 $11


	ld   de, $6c11                                   ; $66ec: $11 $11 $6c
	rst  $38                                         ; $66ef: $ff
	rst  $38                                         ; $66f0: $ff
	rst  $38                                         ; $66f1: $ff
	rst  $38                                         ; $66f2: $ff
	rst  $38                                         ; $66f3: $ff
	add  c                                           ; $66f4: $81
	ld   de, $1111                                   ; $66f5: $11 $11 $11
	ld   de, $ff8e                                   ; $66f8: $11 $8e $ff
	rst  $38                                         ; $66fb: $ff
	rst  $38                                         ; $66fc: $ff
	rst  $38                                         ; $66fd: $ff
	cp   $51                                         ; $66fe: $fe $51
	ld   de, $1111                                   ; $6700: $11 $11 $11
	inc  d                                           ; $6703: $14
	cp   a                                           ; $6704: $bf
	rst  $38                                         ; $6705: $ff
	rst  $38                                         ; $6706: $ff
	rst  $38                                         ; $6707: $ff
	rst  $38                                         ; $6708: $ff
	ld   sp, hl                                      ; $6709: $f9
	ld   de, $1111                                   ; $670a: $11 $11 $11
	ld   de, $df17                                   ; $670d: $11 $17 $df
	rst  $38                                         ; $6710: $ff
	rst  $38                                         ; $6711: $ff
	rst  $38                                         ; $6712: $ff
	rst  $38                                         ; $6713: $ff
	push hl                                          ; $6714: $e5
	ld   de, $1111                                   ; $6715: $11 $11 $11
	ld   [de], a                                     ; $6718: $12
	ld   c, e                                        ; $6719: $4b
	rst  $38                                         ; $671a: $ff
	rst  $38                                         ; $671b: $ff
	rst  $38                                         ; $671c: $ff
	rst  $38                                         ; $671d: $ff
	rst  $38                                         ; $671e: $ff
	sub  c                                           ; $671f: $91
	ld   de, $1111                                   ; $6720: $11 $11 $11
	ld   [hl+], a                                    ; $6723: $22
	adc  a                                           ; $6724: $8f
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	rst  $38                                         ; $6727: $ff
	rst  $38                                         ; $6728: $ff
	ei                                               ; $6729: $fb
	ld   sp, $1111                                   ; $672a: $31 $11 $11
	ld   de, $df34                                   ; $672d: $11 $34 $df
	rst  $38                                         ; $6730: $ff
	rst  $38                                         ; $6731: $ff
	rst  $38                                         ; $6732: $ff
	rst  $38                                         ; $6733: $ff
	push de                                          ; $6734: $d5
	ld   de, $1111                                   ; $6735: $11 $11 $11
	inc  d                                           ; $6738: $14
	jr   c, @+$01                                    ; $6739: $38 $ff

	rst  $38                                         ; $673b: $ff
	rst  $38                                         ; $673c: $ff
	rst  $38                                         ; $673d: $ff
	db   $fd                                         ; $673e: $fd
	ld   [hl], c                                     ; $673f: $71
	ld   de, $1111                                   ; $6740: $11 $11 $11
	ld   [hl-], a                                    ; $6743: $32
	ld   e, a                                        ; $6744: $5f
	rst  $38                                         ; $6745: $ff
	rst  $38                                         ; $6746: $ff
	rst  $38                                         ; $6747: $ff
	rst  $38                                         ; $6748: $ff
	reti                                             ; $6749: $d9


	ld   b, c                                        ; $674a: $41
	ld   de, $1211                                   ; $674b: $11 $11 $12
	ld   hl, $ffdf                                   ; $674e: $21 $df $ff
	rst  $38                                         ; $6751: $ff
	rst  $38                                         ; $6752: $ff
	ei                                               ; $6753: $fb
	sub  [hl]                                        ; $6754: $96
	ld   de, $1111                                   ; $6755: $11 $11 $11
	ld   [de], a                                     ; $6758: $12
	dec  de                                          ; $6759: $1b
	rst  $38                                         ; $675a: $ff
	rst  $38                                         ; $675b: $ff
	rst  $38                                         ; $675c: $ff
	rst  $38                                         ; $675d: $ff
	xor  d                                           ; $675e: $aa
	sub  e                                           ; $675f: $93
	ld   de, $1111                                   ; $6760: $11 $11 $11
	ld   hl, $ff9f                                   ; $6763: $21 $9f $ff
	rst  $38                                         ; $6766: $ff
	rst  $38                                         ; $6767: $ff
	ei                                               ; $6768: $fb
	cp   e                                           ; $6769: $bb
	ld   b, c                                        ; $676a: $41
	ld   de, $1111                                   ; $676b: $11 $11 $11
	ld   d, $ff                                      ; $676e: $16 $ff
	rst  $38                                         ; $6770: $ff
	rst  $38                                         ; $6771: $ff
	rst  $38                                         ; $6772: $ff
	call $11d6                                       ; $6773: $cd $d6 $11
	ld   de, $1111                                   ; $6776: $11 $11 $11
	ccf                                              ; $6779: $3f
	rst  $38                                         ; $677a: $ff
	rst  $38                                         ; $677b: $ff
	rst  $38                                         ; $677c: $ff
	cp   $dd                                         ; $677d: $fe $dd
	add  c                                           ; $677f: $81
	ld   de, $1111                                   ; $6780: $11 $11 $11
	ld   de, $ffcf                                   ; $6783: $11 $cf $ff
	rst  $38                                         ; $6786: $ff

Jump_0d9_6787:
	rst  $38                                         ; $6787: $ff
	cp   $ea                                         ; $6788: $fe $ea
	ld   de, $1111                                   ; $678a: $11 $11 $11
	ld   de, $ff16                                   ; $678d: $11 $16 $ff
	rst  $38                                         ; $6790: $ff
	rst  $38                                         ; $6791: $ff
	rst  $38                                         ; $6792: $ff
	rst  $38                                         ; $6793: $ff
	sub  $11                                         ; $6794: $d6 $11
	ld   de, $1111                                   ; $6796: $11 $11 $11
	dec  e                                           ; $6799: $1d
	rst  $38                                         ; $679a: $ff
	rst  $38                                         ; $679b: $ff
	rst  $38                                         ; $679c: $ff
	rst  $38                                         ; $679d: $ff
	rst  $38                                         ; $679e: $ff
	or   d                                           ; $679f: $b2
	ld   de, $1111                                   ; $67a0: $11 $11 $11
	ld   de, $ff2e                                   ; $67a3: $11 $2e $ff
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	rst  $38                                         ; $67a8: $ff
	rst  $38                                         ; $67a9: $ff
	or   d                                           ; $67aa: $b2
	ld   de, $1111                                   ; $67ab: $11 $11 $11
	ld   de, $ff2e                                   ; $67ae: $11 $2e $ff
	rst  $38                                         ; $67b1: $ff
	rst  $38                                         ; $67b2: $ff
	rst  $38                                         ; $67b3: $ff
	rst  $38                                         ; $67b4: $ff
	pop  bc                                          ; $67b5: $c1
	ld   de, $1111                                   ; $67b6: $11 $11 $11
	ld   de, $bf1c                                   ; $67b9: $11 $1c $bf
	rst  $38                                         ; $67bc: $ff
	rst  $38                                         ; $67bd: $ff
	rst  $38                                         ; $67be: $ff
	rst  $38                                         ; $67bf: $ff
	ret  c                                           ; $67c0: $d8

	ld   de, $1111                                   ; $67c1: $11 $11 $11
	ld   de, $6e13                                   ; $67c4: $11 $13 $6e
	rst  $38                                         ; $67c7: $ff
	rst  $38                                         ; $67c8: $ff
	rst  $38                                         ; $67c9: $ff
	rst  $38                                         ; $67ca: $ff
	ld   a, [$1151]                                  ; $67cb: $fa $51 $11
	ld   de, $1111                                   ; $67ce: $11 $11 $11
	dec  d                                           ; $67d1: $15
	xor  d                                           ; $67d2: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d3: $cf
	rst  $38                                         ; $67d4: $ff
	rst  $38                                         ; $67d5: $ff
	cp   $b8                                         ; $67d6: $fe $b8
	ld   h, a                                        ; $67d8: $67
	ld   d, e                                        ; $67d9: $53
	inc  h                                           ; $67da: $24
	ld   d, c                                        ; $67db: $51
	inc  de                                          ; $67dc: $13
	ld   b, e                                        ; $67dd: $43
	ld   h, [hl]                                     ; $67de: $66
	ld   l, d                                        ; $67df: $6a
	cp   e                                           ; $67e0: $bb
	adc  $dd                                         ; $67e1: $ce $dd
	db   $ed                                         ; $67e3: $ed
	cp   e                                           ; $67e4: $bb
	or   a                                           ; $67e5: $b7
	ld   l, c                                        ; $67e6: $69
	add  [hl]                                        ; $67e7: $86
	ld   d, h                                        ; $67e8: $54
	ld   b, e                                        ; $67e9: $43
	inc  [hl]                                        ; $67ea: $34
	ld   d, h                                        ; $67eb: $54
	ld   l, b                                        ; $67ec: $68
	sbc  d                                           ; $67ed: $9a
	cp   h                                           ; $67ee: $bc
	call z, $b9bb                                    ; $67ef: $cc $bb $b9
	adc  d                                           ; $67f2: $8a
	add  a                                           ; $67f3: $87
	sbc  c                                           ; $67f4: $99
	ld   d, l                                        ; $67f5: $55
	ld   h, h                                        ; $67f6: $64
	ld   b, [hl]                                     ; $67f7: $46
	ld   b, l                                        ; $67f8: $45
	ld   [hl], a                                     ; $67f9: $77
	ld   a, c                                        ; $67fa: $79
	sbc  d                                           ; $67fb: $9a
	cp   e                                           ; $67fc: $bb
	sbc  d                                           ; $67fd: $9a
	xor  c                                           ; $67fe: $a9
	adc  c                                           ; $67ff: $89
	xor  b                                           ; $6800: $a8
	sbc  d                                           ; $6801: $9a
	halt                                             ; $6802: $76
	ld   h, l                                        ; $6803: $65
	ld   d, l                                        ; $6804: $55
	ld   b, l                                        ; $6805: $45
	ld   h, [hl]                                     ; $6806: $66
	ld   l, b                                        ; $6807: $68
	sbc  c                                           ; $6808: $99
	call z, $aaaa                                    ; $6809: $cc $aa $aa
	sbc  c                                           ; $680c: $99
	adc  d                                           ; $680d: $8a
	sbc  b                                           ; $680e: $98
	ld   [hl], a                                     ; $680f: $77
	ld   d, h                                        ; $6810: $54
	ld   d, l                                        ; $6811: $55
	ld   d, h                                        ; $6812: $54
	ld   d, [hl]                                     ; $6813: $56
	ld   l, b                                        ; $6814: $68
	xor  e                                           ; $6815: $ab
	xor  e                                           ; $6816: $ab
	xor  h                                           ; $6817: $ac
	cp   c                                           ; $6818: $b9
	sbc  d                                           ; $6819: $9a
	sbc  c                                           ; $681a: $99
	sub  a                                           ; $681b: $97
	ld   [hl], l                                     ; $681c: $75
	ld   d, h                                        ; $681d: $54
	dec  [hl]                                        ; $681e: $35
	ld   b, h                                        ; $681f: $44
	ld   h, a                                        ; $6820: $67
	ld   a, c                                        ; $6821: $79
	cp   h                                           ; $6822: $bc
	rst  $28                                         ; $6823: $ef
	db   $ed                                         ; $6824: $ed
	ret                                              ; $6825: $c9


	ld   a, c                                        ; $6826: $79
	ld   h, l                                        ; $6827: $65
	add  a                                           ; $6828: $87
	ld   b, h                                        ; $6829: $44
	ld   b, e                                        ; $682a: $43
	ld   b, l                                        ; $682b: $45
	ld   b, [hl]                                     ; $682c: $46
	adc  c                                           ; $682d: $89
	xor  e                                           ; $682e: $ab
	db   $dd                                         ; $682f: $dd
	db   $ed                                         ; $6830: $ed
	res  2, l                                        ; $6831: $cb $95
	ld   d, l                                        ; $6833: $55
	ld   b, l                                        ; $6834: $45
	ld   [hl], h                                     ; $6835: $74
	inc  h                                           ; $6836: $24
	ld   b, l                                        ; $6837: $45
	ld   h, a                                        ; $6838: $67
	sbc  d                                           ; $6839: $9a
	cp   e                                           ; $683a: $bb
	rst  JumpTable                                         ; $683b: $df
	cp   $ec                                         ; $683c: $fe $ec
	sub  a                                           ; $683e: $97
	ld   sp, $3422                                   ; $683f: $31 $22 $34
	ld   [de], a                                     ; $6842: $12
	ld   d, [hl]                                     ; $6843: $56
	ld   a, c                                        ; $6844: $79
	xor  e                                           ; $6845: $ab
	sbc  $ef                                         ; $6846: $de $ef
	cp   $ed                                         ; $6848: $fe $ed
	and  l                                           ; $684a: $a5
	ld   de, $1411                                   ; $684b: $11 $11 $14
	ld   [de], a                                     ; $684e: $12
	ld   h, a                                        ; $684f: $67
	cp   h                                           ; $6850: $bc
	sbc  $ff                                         ; $6851: $de $ff
	rst  $38                                         ; $6853: $ff
	xor  $ec                                         ; $6854: $ee $ec
	ld   h, e                                        ; $6856: $63
	ld   de, $2211                                   ; $6857: $11 $11 $22
	dec  d                                           ; $685a: $15
	xor  e                                           ; $685b: $ab
	rst  $28                                         ; $685c: $ef
	rst  $38                                         ; $685d: $ff
	rst  $38                                         ; $685e: $ff
	rst  $28                                         ; $685f: $ef
	db   $db                                         ; $6860: $db
	cp   b                                           ; $6861: $b8
	ld   sp, $1111                                   ; $6862: $31 $11 $11
	ld   [hl-], a                                    ; $6865: $32
	ld   c, d                                        ; $6866: $4a
	rst  JumpTable                                         ; $6867: $df
	rst  $38                                         ; $6868: $ff
	rst  $38                                         ; $6869: $ff
	rst  $38                                         ; $686a: $ff
	db   $ed                                         ; $686b: $ed
	xor  c                                           ; $686c: $a9
	ld   h, c                                        ; $686d: $61
	ld   de, $1211                                   ; $686e: $11 $11 $12
	ld   b, h                                        ; $6871: $44
	cp   a                                           ; $6872: $bf
	rst  $38                                         ; $6873: $ff
	rst  $38                                         ; $6874: $ff
	rst  $38                                         ; $6875: $ff
	db   $dd                                         ; $6876: $dd
	ret                                              ; $6877: $c9


	ld   h, e                                        ; $6878: $63
	ld   de, $1111                                   ; $6879: $11 $11 $11
	ld   l, c                                        ; $687c: $69
	ld   l, a                                        ; $687d: $6f
	rst  $38                                         ; $687e: $ff
	rst  $38                                         ; $687f: $ff
	rst  $38                                         ; $6880: $ff
	ld   sp, hl                                      ; $6881: $f9
	xor  c                                           ; $6882: $a9
	ld   h, l                                        ; $6883: $65
	ld   hl, $1111                                   ; $6884: $21 $11 $11
	ld   a, [de]                                     ; $6887: $1a
	call c, $ffff                                    ; $6888: $dc $ff $ff
	cp   $fc                                         ; $688b: $fe $fc
	ld   h, [hl]                                     ; $688d: $66
	ld   h, l                                        ; $688e: $65
	ld   d, c                                        ; $688f: $51
	ld   de, $1111                                   ; $6890: $11 $11 $11
	xor  $ff                                         ; $6893: $ee $ff
	rst  $38                                         ; $6895: $ff
	rst  $38                                         ; $6896: $ff
	sbc  [hl]                                        ; $6897: $9e
	add  e                                           ; $6898: $83
	ld   d, [hl]                                     ; $6899: $56
	ld   h, [hl]                                     ; $689a: $66
	ld   hl, $1111                                   ; $689b: $21 $11 $11
	ld   e, a                                        ; $689e: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $689f: $cf
	rst  $38                                         ; $68a0: $ff
	rst  $38                                         ; $68a1: $ff
	xor  c                                           ; $68a2: $a9
	db   $d3                                         ; $68a3: $d3
	ld   h, $78                                      ; $68a4: $26 $78
	ld   [hl], c                                     ; $68a6: $71
	ld   de, $1d11                                   ; $68a7: $11 $11 $1d
	db   $fd                                         ; $68aa: $fd
	rst  $38                                         ; $68ab: $ff
	rst  $38                                         ; $68ac: $ff
	push af                                          ; $68ad: $f5
	sbc  c                                           ; $68ae: $99
	inc  de                                          ; $68af: $13
	sbc  c                                           ; $68b0: $99
	sub  a                                           ; $68b1: $97
	ld   de, $1111                                   ; $68b2: $11 $11 $11
	rst  $38                                         ; $68b5: $ff
	rst  $28                                         ; $68b6: $ef
	rst  $38                                         ; $68b7: $ff
	ei                                               ; $68b8: $fb
	jr   jr_0d9_68fc                                 ; $68b9: $18 $41

	ld   l, e                                        ; $68bb: $6b
	cp   e                                           ; $68bc: $bb
	ld   b, c                                        ; $68bd: $41
	ld   de, $6f11                                   ; $68be: $11 $11 $6f
	rst  $38                                         ; $68c1: $ff
	rst  $38                                         ; $68c2: $ff
	rst  $38                                         ; $68c3: $ff
	ld   [hl+], a                                    ; $68c4: $22
	ld   [hl], c                                     ; $68c5: $71
	ld   a, [bc]                                     ; $68c6: $0a
	db   $dd                                         ; $68c7: $dd
	jp   nz, $1111                                   ; $68c8: $c2 $11 $11

	rra                                              ; $68cb: $1f
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	rst  $38                                         ; $68ce: $ff
	and  c                                           ; $68cf: $a1
	inc  sp                                          ; $68d0: $33
	ld   d, $ef                                      ; $68d1: $16 $ef
	ld   sp, hl                                      ; $68d3: $f9
	ld   de, $1711                                   ; $68d4: $11 $11 $17
	rst  $38                                         ; $68d7: $ff
	rst  $38                                         ; $68d8: $ff
	rst  $38                                         ; $68d9: $ff
	pop  af                                          ; $68da: $f1
	inc  de                                          ; $68db: $13
	ld   de, $ffcf                                   ; $68dc: $11 $cf $ff
	ld   de, $1111                                   ; $68df: $11 $11 $11
	rst  $38                                         ; $68e2: $ff
	rst  $38                                         ; $68e3: $ff
	rst  $38                                         ; $68e4: $ff
	or   $11                                         ; $68e5: $f6 $11
	ld   hl, $ff9f                                   ; $68e7: $21 $9f $ff
	sub  c                                           ; $68ea: $91
	ld   de, $6f11                                   ; $68eb: $11 $11 $6f
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	db   $fc                                         ; $68f0: $fc
	ld   de, $5f12                                   ; $68f1: $11 $12 $5f
	rst  $38                                         ; $68f4: $ff
	pop  af                                          ; $68f5: $f1
	ld   de, $1f11                                   ; $68f6: $11 $11 $1f
	rst  $38                                         ; $68f9: $ff
	rst  $38                                         ; $68fa: $ff
	rst  $38                                         ; $68fb: $ff

jr_0d9_68fc:
	ld   de, $bf14                                   ; $68fc: $11 $14 $bf
	rst  $38                                         ; $68ff: $ff
	di                                               ; $6900: $f3
	ld   de, $1711                                   ; $6901: $11 $11 $17
	rst  $38                                         ; $6904: $ff
	rst  $38                                         ; $6905: $ff
	rst  $38                                         ; $6906: $ff
	ld   de, $cf13                                   ; $6907: $11 $13 $cf
	rst  $38                                         ; $690a: $ff
	ld   sp, hl                                      ; $690b: $f9
	ld   de, $1111                                   ; $690c: $11 $11 $11
	rst  $38                                         ; $690f: $ff
	rst  $38                                         ; $6910: $ff
	rst  $38                                         ; $6911: $ff
	ld   b, c                                        ; $6912: $41
	ld   de, $ffef                                   ; $6913: $11 $ef $ff
	cp   $11                                         ; $6916: $fe $11
	ld   de, rAUD1LEN                                   ; $6918: $11 $11 $ff
	rst  $38                                         ; $691b: $ff
	db   $fc                                         ; $691c: $fc
	ld   h, c                                        ; $691d: $61
	ld   de, $ffdf                                   ; $691e: $11 $df $ff
	cp   $31                                         ; $6921: $fe $31
	ld   de, $1f11                                   ; $6923: $11 $11 $1f
	rst  $38                                         ; $6926: $ff
	rst  $38                                         ; $6927: $ff
	add  c                                           ; $6928: $81
	ld   de, $ff6f                                   ; $6929: $11 $6f $ff
	rst  $38                                         ; $692c: $ff
	ld   [hl], c                                     ; $692d: $71
	ld   de, $1f11                                   ; $692e: $11 $11 $1f
	rst  $38                                         ; $6931: $ff
	rst  $38                                         ; $6932: $ff
	ld   sp, $1f11                                   ; $6933: $31 $11 $1f
	rst  $38                                         ; $6936: $ff
	rst  $38                                         ; $6937: $ff
	and  c                                           ; $6938: $a1
	ld   de, $1111                                   ; $6939: $11 $11 $11
	rst  $38                                         ; $693c: $ff
	rst  $38                                         ; $693d: $ff
	pop  bc                                          ; $693e: $c1
	ld   de, rAUD1LEN                                   ; $693f: $11 $11 $ff
	rst  $38                                         ; $6942: $ff
	ld   sp, hl                                      ; $6943: $f9
	ld   de, $1111                                   ; $6944: $11 $11 $11
	jr   @+$01                                       ; $6947: $18 $ff

	cp   $11                                         ; $6949: $fe $11
	ld   de, $ff4f                                   ; $694b: $11 $4f $ff
	rst  $38                                         ; $694e: $ff
	ld   d, c                                        ; $694f: $51
	ld   de, $1111                                   ; $6950: $11 $11 $11
	rra                                              ; $6953: $1f
	rst  $38                                         ; $6954: $ff
	di                                               ; $6955: $f3
	ld   de, $8f12                                   ; $6956: $11 $12 $8f
	rst  $38                                         ; $6959: $ff
	ld   hl, sp+$11                                  ; $695a: $f8 $11
	ld   de, $1111                                   ; $695c: $11 $11 $11
	ccf                                              ; $695f: $3f
	rst  $38                                         ; $6960: $ff
	or   c                                           ; $6961: $b1
	ld   de, $ff16                                   ; $6962: $11 $16 $ff
	cp   $e4                                         ; $6965: $fe $e4
	ld   de, $6111                                   ; $6967: $11 $11 $61
	ld   de, $ffdf                                   ; $696a: $11 $df $ff
	add  c                                           ; $696d: $81
	ld   de, $ff46                                   ; $696e: $11 $46 $ff
	rst  $38                                         ; $6971: $ff
	sub  c                                           ; $6972: $91
	ld   de, $4113                                   ; $6973: $11 $13 $41
	ld   de, $ffff                                   ; $6976: $11 $ff $ff
	ld   de, $6f11                                   ; $6979: $11 $11 $6f
	rst  $38                                         ; $697c: $ff
	xor  $61                                         ; $697d: $ee $61
	ld   de, $4126                                   ; $697f: $11 $26 $41
	inc  de                                          ; $6982: $13
	rst  $38                                         ; $6983: $ff
	ld   sp, hl                                      ; $6984: $f9
	ld   de, $bf13                                   ; $6985: $11 $13 $bf
	rst  $38                                         ; $6988: $ff
	jp   hl                                          ; $6989: $e9


	ld   b, c                                        ; $698a: $41
	ld   de, $2146                                   ; $698b: $11 $46 $21
	ld   e, $ff                                      ; $698e: $1e $ff
	db   $f4                                         ; $6990: $f4
	ld   de, $bf27                                   ; $6991: $11 $27 $bf
	cp   $b7                                         ; $6994: $fe $b7
	ld   d, c                                        ; $6996: $51
	ld   [de], a                                     ; $6997: $12
	ld   d, e                                        ; $6998: $53
	ld   de, $ff1f                                   ; $6999: $11 $1f $ff
	di                                               ; $699c: $f3
	ld   de, $ff47                                   ; $699d: $11 $47 $ff
	cp   $bb                                         ; $69a0: $fe $bb
	ld   de, $7113                                   ; $69a2: $11 $13 $71
	ld   de, $ff5f                                   ; $69a5: $11 $5f $ff
	and  c                                           ; $69a8: $a1
	inc  d                                           ; $69a9: $14
	ld   l, d                                        ; $69aa: $6a
	rst  $28                                         ; $69ab: $ef
	db   $fd                                         ; $69ac: $fd
	and  [hl]                                        ; $69ad: $a6
	ld   sp, $5112                                   ; $69ae: $31 $12 $51
	ld   de, $ffff                                   ; $69b1: $11 $ff $ff
	ld   b, c                                        ; $69b4: $41
	inc  de                                          ; $69b5: $13
	sbc  e                                           ; $69b6: $9b
	rst  $38                                         ; $69b7: $ff
	cp   e                                           ; $69b8: $bb
	db   $d3                                         ; $69b9: $d3
	ld   de, $1114                                   ; $69ba: $11 $14 $11
	ld   [de], a                                     ; $69bd: $12
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	ld   de, $9f33                                   ; $69c0: $11 $33 $9f
	db   $fd                                         ; $69c3: $fd
	bit  4, e                                        ; $69c4: $cb $63
	ld   de, $1122                                   ; $69c6: $11 $22 $11
	rra                                              ; $69c9: $1f
	rst  $38                                         ; $69ca: $ff
	di                                               ; $69cb: $f3
	inc  de                                          ; $69cc: $13
	ld   b, [hl]                                     ; $69cd: $46
	rst  JumpTable                                         ; $69ce: $df
	cp   $b8                                         ; $69cf: $fe $b8
	ld   d, h                                        ; $69d1: $54
	ld   de, $1111                                   ; $69d2: $11 $11 $11
	xor  a                                           ; $69d5: $af
	rst  $38                                         ; $69d6: $ff
	add  c                                           ; $69d7: $81
	inc  d                                           ; $69d8: $14
	adc  d                                           ; $69d9: $8a
	rst  $38                                         ; $69da: $ff
	db   $ed                                         ; $69db: $ed
	and  a                                           ; $69dc: $a7
	ld   hl, $1111                                   ; $69dd: $21 $11 $11
	ld   a, [de]                                     ; $69e0: $1a
	rst  $38                                         ; $69e1: $ff
	db   $fc                                         ; $69e2: $fc
	ld   hl, $9f75                                   ; $69e3: $21 $75 $9f
	db   $fc                                         ; $69e6: $fc
	adc  $53                                         ; $69e7: $ce $53
	ld   sp, $1112                                   ; $69e9: $31 $12 $11
	ld   e, a                                        ; $69ec: $5f
	rst  $38                                         ; $69ed: $ff
	jp   nc, $8616                                   ; $69ee: $d2 $16 $86

	rst  JumpTable                                         ; $69f1: $df
	rst  $28                                         ; $69f2: $ef
	and  a                                           ; $69f3: $a7
	ld   d, c                                        ; $69f4: $51
	ld   de, $1111                                   ; $69f5: $11 $11 $11
	rst  $38                                         ; $69f8: $ff
	db   $fc                                         ; $69f9: $fc
	daa                                              ; $69fa: $27
	ld   b, e                                        ; $69fb: $43
	ld   l, a                                        ; $69fc: $6f
	db   $fc                                         ; $69fd: $fc
	cp   e                                           ; $69fe: $bb
	xor  d                                           ; $69ff: $aa
	ld   de, $1111                                   ; $6a00: $11 $11 $11
	ld   e, a                                        ; $6a03: $5f
	rst  $38                                         ; $6a04: $ff
	and  e                                           ; $6a05: $a3
	ld   h, [hl]                                     ; $6a06: $66
	ld   d, [hl]                                     ; $6a07: $56
	rst  JumpTable                                         ; $6a08: $df
	db   $db                                         ; $6a09: $db
	db   $fd                                         ; $6a0a: $fd
	ld   de, $1111                                   ; $6a0b: $11 $11 $11
	rla                                              ; $6a0e: $17
	rst  $38                                         ; $6a0f: $ff
	ld   hl, sp+$17                                  ; $6a10: $f8 $17
	and  h                                           ; $6a12: $a4
	ld   l, h                                        ; $6a13: $6c
	rst  $38                                         ; $6a14: $ff
	db   $ed                                         ; $6a15: $ed
	ld   [hl], h                                     ; $6a16: $74
	ld   de, $1111                                   ; $6a17: $11 $11 $11
	sbc  a                                           ; $6a1a: $9f
	rst  $38                                         ; $6a1b: $ff
	ld   h, d                                        ; $6a1c: $62
	adc  b                                           ; $6a1d: $88
	ld   c, b                                        ; $6a1e: $48
	rst  $38                                         ; $6a1f: $ff
	db   $ed                                         ; $6a20: $ed
	ret                                              ; $6a21: $c9


	ld   b, c                                        ; $6a22: $41
	ld   de, $1f11                                   ; $6a23: $11 $11 $1f
	rst  $38                                         ; $6a26: $ff
	ld   sp, hl                                      ; $6a27: $f9
	inc  d                                           ; $6a28: $14
	ld   d, a                                        ; $6a29: $57
	cp   a                                           ; $6a2a: $bf
	db   $ed                                         ; $6a2b: $ed
	db   $fd                                         ; $6a2c: $fd
	ld   h, c                                        ; $6a2d: $61
	ld   de, $1211                                   ; $6a2e: $11 $11 $12
	rst  $38                                         ; $6a31: $ff
	db   $fc                                         ; $6a32: $fc
	ld   de, $7f77                                   ; $6a33: $11 $77 $7f
	db   $eb                                         ; $6a36: $eb
	rst  $38                                         ; $6a37: $ff
	and  h                                           ; $6a38: $a4
	ld   de, $1111                                   ; $6a39: $11 $11 $11
	xor  a                                           ; $6a3c: $af
	rst  $38                                         ; $6a3d: $ff
	and  c                                           ; $6a3e: $a1
	ld   [hl], h                                     ; $6a3f: $74
	ld   c, c                                        ; $6a40: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a41: $cf
	rst  $38                                         ; $6a42: $ff
	db   $db                                         ; $6a43: $db
	ld   b, c                                        ; $6a44: $41
	ld   de, $1f11                                   ; $6a45: $11 $11 $1f
	rst  $38                                         ; $6a48: $ff
	ld   a, [$8521]                                  ; $6a49: $fa $21 $85
	adc  a                                           ; $6a4c: $8f
	rst  $28                                         ; $6a4d: $ef
	db   $fc                                         ; $6a4e: $fc
	sub  c                                           ; $6a4f: $91
	ld   de, $1211                                   ; $6a50: $11 $11 $12
	rst  $38                                         ; $6a53: $ff
	ei                                               ; $6a54: $fb
	ld   d, a                                        ; $6a55: $57
	ld   [hl], e                                     ; $6a56: $73
	dec  de                                          ; $6a57: $1b
	rst  $38                                         ; $6a58: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a59: $cf
	push hl                                          ; $6a5a: $e5
	ld   de, $1111                                   ; $6a5b: $11 $11 $11
	ld   e, a                                        ; $6a5e: $5f
	rst  $38                                         ; $6a5f: $ff
	call nz, Call_0d9_4537                           ; $6a60: $c4 $37 $45
	cp   [hl]                                        ; $6a63: $be
	rst  $38                                         ; $6a64: $ff
	ld   a, [$1121]                                  ; $6a65: $fa $21 $11
	ld   de, $ff1f                                   ; $6a68: $11 $1f $ff
	ld   sp, hl                                      ; $6a6b: $f9
	ld   a, [hl+]                                    ; $6a6c: $2a
	ld   sp, $dfbf                                   ; $6a6d: $31 $bf $df
	db   $fd                                         ; $6a70: $fd
	or   c                                           ; $6a71: $b1
	ld   de, $1211                                   ; $6a72: $11 $11 $12
	rst  $38                                         ; $6a75: $ff
	rst  $38                                         ; $6a76: $ff
	inc  [hl]                                        ; $6a77: $34
	sub  d                                           ; $6a78: $92
	inc  a                                           ; $6a79: $3c
	db   $fd                                         ; $6a7a: $fd
	rst  $38                                         ; $6a7b: $ff
	ret  c                                           ; $6a7c: $d8

	ld   de, $1111                                   ; $6a7d: $11 $11 $11
	rst  $28                                         ; $6a80: $ef
	rst  $38                                         ; $6a81: $ff
	ld   [hl], e                                     ; $6a82: $73
	sbc  b                                           ; $6a83: $98
	ld   [hl-], a                                    ; $6a84: $32
	cp   [hl]                                        ; $6a85: $be
	rst  $38                                         ; $6a86: $ff
	xor  e                                           ; $6a87: $ab
	ld   sp, $1111                                   ; $6a88: $31 $11 $11
	cpl                                              ; $6a8b: $2f
	rst  $38                                         ; $6a8c: $ff
	rst  $30                                         ; $6a8d: $f7
	ld   h, a                                        ; $6a8e: $67
	inc  d                                           ; $6a8f: $14
	xor  h                                           ; $6a90: $ac
	rst  $28                                         ; $6a91: $ef
	rst  $38                                         ; $6a92: $ff
	add  c                                           ; $6a93: $81
	ld   de, $1911                                   ; $6a94: $11 $11 $19
	rst  $38                                         ; $6a97: $ff
	ld   a, [$419a]                                  ; $6a98: $fa $9a $41
	ld   l, $fa                                      ; $6a9b: $2e $fa
	rst  $38                                         ; $6a9d: $ff
	add  $11                                         ; $6a9e: $c6 $11
	ld   de, rAUD1LEN                                   ; $6aa0: $11 $11 $ff
	rst  $38                                         ; $6aa3: $ff
	add  sp, $73                                     ; $6aa4: $e8 $73
	ld   a, [de]                                     ; $6aa6: $1a
	db   $db                                         ; $6aa7: $db
	rst  $38                                         ; $6aa8: $ff
	sbc  $11                                         ; $6aa9: $de $11
	ld   de, $6f11                                   ; $6aab: $11 $11 $6f
	rst  $38                                         ; $6aae: $ff
	jp   c, $1289                                    ; $6aaf: $da $89 $12

	ret  z                                           ; $6ab2: $c8

	rst  $38                                         ; $6ab3: $ff
	db   $fd                                         ; $6ab4: $fd
	ld   de, $1111                                   ; $6ab5: $11 $11 $11
	rra                                              ; $6ab8: $1f
	rst  $38                                         ; $6ab9: $ff
	ei                                               ; $6aba: $fb
	push bc                                          ; $6abb: $c5
	ld   h, e                                        ; $6abc: $63
	ld   a, $cf                                      ; $6abd: $3e $cf
	rst  $38                                         ; $6abf: $ff
	ld   [hl], d                                     ; $6ac0: $72
	ld   de, $1711                                   ; $6ac1: $11 $11 $17
	rst  $38                                         ; $6ac4: $ff
	rst  $38                                         ; $6ac5: $ff
	adc  $41                                         ; $6ac6: $ce $41
	dec  e                                           ; $6ac8: $1d
	ld   a, [$f7fe]                                  ; $6ac9: $fa $fe $f7
	ld   de, $1111                                   ; $6acc: $11 $11 $11
	rst  $38                                         ; $6acf: $ff
	cp   $df                                         ; $6ad0: $fe $df
	and  c                                           ; $6ad2: $a1
	dec  de                                          ; $6ad3: $1b
	adc  $ff                                         ; $6ad4: $ce $ff
	ld   a, [$1111]                                  ; $6ad6: $fa $11 $11
	ld   de, $ff6f                                   ; $6ad9: $11 $6f $ff
	ld   a, [$41bb]                                  ; $6adc: $fa $bb $41
	call $cbcf                                       ; $6adf: $cd $cf $cb
	and  c                                           ; $6ae2: $a1
	ld   de, $1f11                                   ; $6ae3: $11 $11 $1f
	rst  $38                                         ; $6ae6: $ff
	cp   $fc                                         ; $6ae7: $fe $fc
	ld   [de], a                                     ; $6ae9: $12
	adc  l                                           ; $6aea: $8d
	sbc  [hl]                                        ; $6aeb: $9e
	rst  $38                                         ; $6aec: $ff
	pop  af                                          ; $6aed: $f1
	ld   de, $1611                                   ; $6aee: $11 $11 $16
	rst  $38                                         ; $6af1: $ff
	rst  $38                                         ; $6af2: $ff
	rst  $28                                         ; $6af3: $ef
	and  c                                           ; $6af4: $a1
	inc  e                                           ; $6af5: $1c
	cp   l                                           ; $6af6: $bd
	rst  $38                                         ; $6af7: $ff
	ld   a, [$1111]                                  ; $6af8: $fa $11 $11
	ld   de, $ffff                                   ; $6afb: $11 $ff $ff
	rst  $38                                         ; $6afe: $ff
	ldh  a, [c]                                      ; $6aff: $f2
	rla                                              ; $6b00: $17
	jp   z, $ffff                                    ; $6b01: $ca $ff $ff

	ld   de, $1111                                   ; $6b04: $11 $11 $11
	ld   l, a                                        ; $6b07: $6f
	rst  $38                                         ; $6b08: $ff
	rst  $38                                         ; $6b09: $ff
	ei                                               ; $6b0a: $fb
	ld   de, $cfbe                                   ; $6b0b: $11 $be $cf
	rst  $38                                         ; $6b0e: $ff
	and  c                                           ; $6b0f: $a1
	ld   de, $1f11                                   ; $6b10: $11 $11 $1f
	ei                                               ; $6b13: $fb
	rst  $38                                         ; $6b14: $ff
	cp   $41                                         ; $6b15: $fe $41
	sbc  [hl]                                        ; $6b17: $9e
	ld   l, a                                        ; $6b18: $6f
	rst  $38                                         ; $6b19: $ff
	pop  hl                                          ; $6b1a: $e1
	ld   de, $1511                                   ; $6b1b: $11 $11 $15
	db   $fd                                         ; $6b1e: $fd
	rst  $38                                         ; $6b1f: $ff
	rst  $38                                         ; $6b20: $ff
	sub  c                                           ; $6b21: $91
	ld   l, [hl]                                     ; $6b22: $6e
	xor  c                                           ; $6b23: $a9
	rst  $38                                         ; $6b24: $ff
	rst  $30                                         ; $6b25: $f7
	ld   [de], a                                     ; $6b26: $12
	ld   de, $ce11                                   ; $6b27: $11 $11 $ce

jr_0d9_6b2a:
	sbc  $ff                                         ; $6b2a: $de $ff
	push af                                          ; $6b2c: $f5
	add  hl, sp                                      ; $6b2d: $39
	ret  c                                           ; $6b2e: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b2f: $cf
	rst  $38                                         ; $6b30: $ff
	ld   sp, $1111                                   ; $6b31: $31 $11 $11
	ld   a, $de                                      ; $6b34: $3e $de
	rst  JumpTable                                         ; $6b36: $df
	db   $fc                                         ; $6b37: $fc
	ld   h, e                                        ; $6b38: $63
	call z, $ffaf                                    ; $6b39: $cc $af $ff
	sub  e                                           ; $6b3c: $93
	ld   de, $1811                                   ; $6b3d: $11 $11 $18
	db   $db                                         ; $6b40: $db
	xor  a                                           ; $6b41: $af
	rst  $38                                         ; $6b42: $ff
	ld   [hl], l                                     ; $6b43: $75
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b44: $cf
	ld   a, c                                        ; $6b45: $79
	rst  $38                                         ; $6b46: $ff
	pop  af                                          ; $6b47: $f1
	ld   de, $1211                                   ; $6b48: $11 $11 $12
	xor  c                                           ; $6b4b: $a9
	db   $dd                                         ; $6b4c: $dd
	rst  $38                                         ; $6b4d: $ff
	rst  $30                                         ; $6b4e: $f7
	ld   a, [hl]                                     ; $6b4f: $7e
	cp   e                                           ; $6b50: $bb
	adc  $f9                                         ; $6b51: $ce $f9
	ld   bc, $1111                                   ; $6b53: $01 $11 $11
	ld   e, c                                        ; $6b56: $59
	xor  b                                           ; $6b57: $a8
	rst  $28                                         ; $6b58: $ef
	ei                                               ; $6b59: $fb
	ld   a, l                                        ; $6b5a: $7d
	ei                                               ; $6b5b: $fb
	cp   [hl]                                        ; $6b5c: $be
	db   $fd                                         ; $6b5d: $fd
	ld   b, e                                        ; $6b5e: $43
	ld   de, $1711                                   ; $6b5f: $11 $11 $17
	ld   d, [hl]                                     ; $6b62: $56
	sbc  a                                           ; $6b63: $9f
	db   $fd                                         ; $6b64: $fd
	cp   l                                           ; $6b65: $bd
	db   $fc                                         ; $6b66: $fc
	cp   [hl]                                        ; $6b67: $be
	rst  $38                                         ; $6b68: $ff
	add  [hl]                                        ; $6b69: $86
	ld   d, c                                        ; $6b6a: $51
	ld   de, $4313                                   ; $6b6b: $11 $13 $43
	adc  e                                           ; $6b6e: $8b
	rst  $38                                         ; $6b6f: $ff
	db   $dd                                         ; $6b70: $dd
	rst  $28                                         ; $6b71: $ef
	call $f8ef                                       ; $6b72: $cd $ef $f8
	ld   [hl], d                                     ; $6b75: $72
	ld   de, $3111                                   ; $6b76: $11 $11 $31
	jr   c, jr_0d9_6b2a                              ; $6b79: $38 $af

	db   $ed                                         ; $6b7b: $ed
	rst  $28                                         ; $6b7c: $ef
	cp   $ef                                         ; $6b7d: $fe $ef
	db   $fc                                         ; $6b7f: $fc
	xor  b                                           ; $6b80: $a8
	ld   hl, $1211                                   ; $6b81: $21 $11 $12
	ld   de, $db8b                                   ; $6b84: $11 $8b $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b87: $cf
	cp   $ef                                         ; $6b88: $fe $ef
	rst  $38                                         ; $6b8a: $ff
	db   $db                                         ; $6b8b: $db
	add  e                                           ; $6b8c: $83
	ld   de, $1111                                   ; $6b8d: $11 $11 $11
	ld   h, $9b                                      ; $6b90: $26 $9b
	xor  h                                           ; $6b92: $ac
	rst  $38                                         ; $6b93: $ff
	rst  $38                                         ; $6b94: $ff
	rst  $38                                         ; $6b95: $ff
	db   $fc                                         ; $6b96: $fc
	ret                                              ; $6b97: $c9


	ld   d, c                                        ; $6b98: $51
	ld   de, $1111                                   ; $6b99: $11 $11 $11
	ld   b, [hl]                                     ; $6b9c: $46
	adc  b                                           ; $6b9d: $88
	cp   l                                           ; $6b9e: $bd
	rst  $28                                         ; $6b9f: $ef
	rst  $38                                         ; $6ba0: $ff
	rst  $38                                         ; $6ba1: $ff
	db   $ec                                         ; $6ba2: $ec
	cp   c                                           ; $6ba3: $b9
	ld   b, c                                        ; $6ba4: $41
	ld   de, $2321                                   ; $6ba5: $11 $21 $23
	ld   b, l                                        ; $6ba8: $45
	ld   d, [hl]                                     ; $6ba9: $56
	xor  d                                           ; $6baa: $aa
	cp   h                                           ; $6bab: $bc
	rst  $28                                         ; $6bac: $ef
	rst  $38                                         ; $6bad: $ff
	xor  $cb                                         ; $6bae: $ee $cb
	sub  [hl]                                        ; $6bb0: $96
	ld   d, h                                        ; $6bb1: $54
	ld   b, h                                        ; $6bb2: $44
	ld   [hl-], a                                    ; $6bb3: $32
	ld   [hl+], a                                    ; $6bb4: $22
	inc  hl                                          ; $6bb5: $23
	ld   d, a                                        ; $6bb6: $57
	sbc  e                                           ; $6bb7: $9b
	call $ffff                                       ; $6bb8: $cd $ff $ff
	xor  $ca                                         ; $6bbb: $ee $ca
	add  [hl]                                        ; $6bbd: $86
	ld   d, h                                        ; $6bbe: $54
	ld   sp, $1111                                   ; $6bbf: $31 $11 $11
	inc  h                                           ; $6bc2: $24
	ld   h, a                                        ; $6bc3: $67
	xor  e                                           ; $6bc4: $ab
	sbc  $ff                                         ; $6bc5: $de $ff
	rst  $38                                         ; $6bc7: $ff
	db   $ed                                         ; $6bc8: $ed
	jp   z, Jump_0d9_4375                            ; $6bc9: $ca $75 $43

	ld   bc, $1211                                   ; $6bcc: $01 $11 $12
	dec  [hl]                                        ; $6bcf: $35
	ld   a, c                                        ; $6bd0: $79
	cp   [hl]                                        ; $6bd1: $be
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	rst  $38                                         ; $6bd4: $ff
	db   $eb                                         ; $6bd5: $eb
	sub  a                                           ; $6bd6: $97
	ld   d, h                                        ; $6bd7: $54
	ld   hl, $1111                                   ; $6bd8: $21 $11 $11
	inc  hl                                          ; $6bdb: $23
	ld   d, [hl]                                     ; $6bdc: $56
	sbc  e                                           ; $6bdd: $9b
	rst  JumpTable                                         ; $6bde: $df
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	db   $fd                                         ; $6be1: $fd
	jp   z, Jump_0d9_4375                            ; $6be2: $ca $75 $43

	ld   de, $1111                                   ; $6be5: $11 $11 $11
	inc  [hl]                                        ; $6be8: $34
	ld   l, b                                        ; $6be9: $68
	cp   h                                           ; $6bea: $bc
	rst  $28                                         ; $6beb: $ef
	rst  $38                                         ; $6bec: $ff
	rst  $38                                         ; $6bed: $ff
	db   $dd                                         ; $6bee: $dd
	xor  b                                           ; $6bef: $a8
	ld   d, h                                        ; $6bf0: $54
	ld   [hl-], a                                    ; $6bf1: $32
	ld   de, $1211                                   ; $6bf2: $11 $11 $12
	ld   b, [hl]                                     ; $6bf5: $46
	adc  d                                           ; $6bf6: $8a
	adc  $ff                                         ; $6bf7: $ce $ff
	rst  $38                                         ; $6bf9: $ff
	cp   $cb                                         ; $6bfa: $fe $cb
	sub  [hl]                                        ; $6bfc: $96
	ld   d, h                                        ; $6bfd: $54
	ld   hl, $1111                                   ; $6bfe: $21 $11 $11
	inc  h                                           ; $6c01: $24
	ld   d, a                                        ; $6c02: $57
	sbc  h                                           ; $6c03: $9c
	rst  $28                                         ; $6c04: $ef
	rst  $38                                         ; $6c05: $ff
	rst  $38                                         ; $6c06: $ff
	db   $fd                                         ; $6c07: $fd
	ret                                              ; $6c08: $c9


	ld   [hl], l                                     ; $6c09: $75
	ld   b, e                                        ; $6c0a: $43
	ld   de, $0211                                   ; $6c0b: $11 $11 $02
	dec  [hl]                                        ; $6c0e: $35
	ld   l, c                                        ; $6c0f: $69
	cp   l                                           ; $6c10: $bd
	rst  $38                                         ; $6c11: $ff
	rst  $38                                         ; $6c12: $ff
	rst  $38                                         ; $6c13: $ff
	db   $ec                                         ; $6c14: $ec
	and  a                                           ; $6c15: $a7
	ld   d, h                                        ; $6c16: $54
	ld   [hl-], a                                    ; $6c17: $32
	ld   de, $1211                                   ; $6c18: $11 $11 $12
	ld   b, l                                        ; $6c1b: $45
	ld   a, c                                        ; $6c1c: $79
	adc  $ff                                         ; $6c1d: $ce $ff
	rst  $38                                         ; $6c1f: $ff
	cp   $db                                         ; $6c20: $fe $db
	add  [hl]                                        ; $6c22: $86
	ld   d, h                                        ; $6c23: $54
	ld   sp, $1111                                   ; $6c24: $31 $11 $11
	inc  de                                          ; $6c27: $13
	ld   d, [hl]                                     ; $6c28: $56
	adc  d                                           ; $6c29: $8a
	rst  JumpTable                                         ; $6c2a: $df
	rst  $38                                         ; $6c2b: $ff
	rst  $38                                         ; $6c2c: $ff
	db   $fd                                         ; $6c2d: $fd
	jp   z, Jump_0d9_4385                            ; $6c2e: $ca $85 $43

	ld   hl, $1111                                   ; $6c31: $21 $11 $11
	inc  h                                           ; $6c34: $24
	ld   h, a                                        ; $6c35: $67
	xor  l                                           ; $6c36: $ad
	rst  $38                                         ; $6c37: $ff
	rst  $38                                         ; $6c38: $ff
	rst  $38                                         ; $6c39: $ff
	db   $ed                                         ; $6c3a: $ed
	cp   c                                           ; $6c3b: $b9
	ld   h, l                                        ; $6c3c: $65
	ld   b, d                                        ; $6c3d: $42
	ld   de, $1111                                   ; $6c3e: $11 $11 $11
	dec  [hl]                                        ; $6c41: $35
	ld   a, b                                        ; $6c42: $78
	call $ffff                                       ; $6c43: $cd $ff $ff
	rst  $38                                         ; $6c46: $ff
	db   $ec                                         ; $6c47: $ec
	and  a                                           ; $6c48: $a7
	ld   d, h                                        ; $6c49: $54
	ld   sp, $1111                                   ; $6c4a: $31 $11 $11
	ld   [de], a                                     ; $6c4d: $12
	ld   b, [hl]                                     ; $6c4e: $46
	ld   a, d                                        ; $6c4f: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c50: $cf
	rst  $38                                         ; $6c51: $ff
	rst  $38                                         ; $6c52: $ff
	cp   $db                                         ; $6c53: $fe $db
	sub  [hl]                                        ; $6c55: $96
	ld   b, e                                        ; $6c56: $43
	ld   hl, $1111                                   ; $6c57: $21 $11 $11
	inc  de                                          ; $6c5a: $13
	ld   d, a                                        ; $6c5b: $57
	sbc  e                                           ; $6c5c: $9b
	rst  $28                                         ; $6c5d: $ef
	rst  $38                                         ; $6c5e: $ff
	rst  $38                                         ; $6c5f: $ff
	cp   $ca                                         ; $6c60: $fe $ca
	ld   [hl], l                                     ; $6c62: $75
	ld   b, e                                        ; $6c63: $43
	ld   de, $1111                                   ; $6c64: $11 $11 $11
	inc  h                                           ; $6c67: $24
	ld   l, b                                        ; $6c68: $68
	xor  h                                           ; $6c69: $ac
	rst  $38                                         ; $6c6a: $ff
	rst  $38                                         ; $6c6b: $ff
	rst  $38                                         ; $6c6c: $ff
	db   $fd                                         ; $6c6d: $fd
	ret                                              ; $6c6e: $c9


	ld   h, l                                        ; $6c6f: $65
	ld   b, d                                        ; $6c70: $42
	ld   de, $1111                                   ; $6c71: $11 $11 $11
	dec  [hl]                                        ; $6c74: $35
	ld   l, b                                        ; $6c75: $68
	cp   [hl]                                        ; $6c76: $be
	rst  $38                                         ; $6c77: $ff
	rst  $38                                         ; $6c78: $ff
	rst  $38                                         ; $6c79: $ff
	db   $fd                                         ; $6c7a: $fd
	xor  b                                           ; $6c7b: $a8
	ld   h, h                                        ; $6c7c: $64
	ld   [hl-], a                                    ; $6c7d: $32
	ld   de, $1111                                   ; $6c7e: $11 $11 $11
	dec  [hl]                                        ; $6c81: $35
	ld   l, b                                        ; $6c82: $68
	cp   [hl]                                        ; $6c83: $be
	rst  $38                                         ; $6c84: $ff
	rst  $38                                         ; $6c85: $ff
	rst  $38                                         ; $6c86: $ff
	db   $fc                                         ; $6c87: $fc
	and  a                                           ; $6c88: $a7
	ld   d, h                                        ; $6c89: $54
	ld   sp, $1111                                   ; $6c8a: $31 $11 $11
	ld   de, $7a35                                   ; $6c8d: $11 $35 $7a
	sbc  $ff                                         ; $6c90: $de $ff
	rst  $38                                         ; $6c92: $ff
	rst  $38                                         ; $6c93: $ff
	db   $ec                                         ; $6c94: $ec
	sub  a                                           ; $6c95: $97
	ld   d, h                                        ; $6c96: $54
	ld   sp, $1111                                   ; $6c97: $31 $11 $11
	ld   [de], a                                     ; $6c9a: $12
	ld   b, [hl]                                     ; $6c9b: $46
	adc  e                                           ; $6c9c: $8b
	rst  JumpTable                                         ; $6c9d: $df
	rst  $38                                         ; $6c9e: $ff
	rst  $38                                         ; $6c9f: $ff
	rst  $38                                         ; $6ca0: $ff
	db   $ec                                         ; $6ca1: $ec
	sub  [hl]                                        ; $6ca2: $96
	ld   b, e                                        ; $6ca3: $43
	ld   hl, $1111                                   ; $6ca4: $21 $11 $11
	ld   [de], a                                     ; $6ca7: $12
	ld   b, [hl]                                     ; $6ca8: $46
	adc  e                                           ; $6ca9: $8b
	rst  JumpTable                                         ; $6caa: $df
	rst  $38                                         ; $6cab: $ff
	rst  $38                                         ; $6cac: $ff
	rst  $38                                         ; $6cad: $ff
	db   $eb                                         ; $6cae: $eb
	sub  [hl]                                        ; $6caf: $96
	ld   b, e                                        ; $6cb0: $43
	ld   de, $1111                                   ; $6cb1: $11 $11 $11
	ld   [de], a                                     ; $6cb4: $12
	ld   b, [hl]                                     ; $6cb5: $46
	sbc  h                                           ; $6cb6: $9c
	rst  $28                                         ; $6cb7: $ef
	rst  $38                                         ; $6cb8: $ff
	rst  $38                                         ; $6cb9: $ff
	rst  $38                                         ; $6cba: $ff
	db   $eb                                         ; $6cbb: $eb
	add  l                                           ; $6cbc: $85
	ld   b, e                                        ; $6cbd: $43
	ld   hl, $1111                                   ; $6cbe: $21 $11 $11
	inc  de                                          ; $6cc1: $13
	ld   d, a                                        ; $6cc2: $57
	adc  e                                           ; $6cc3: $8b
	rst  $28                                         ; $6cc4: $ef
	rst  $38                                         ; $6cc5: $ff
	rst  $38                                         ; $6cc6: $ff
	rst  $38                                         ; $6cc7: $ff
	db   $eb                                         ; $6cc8: $eb
	add  l                                           ; $6cc9: $85
	ld   b, e                                        ; $6cca: $43
	ld   de, $1111                                   ; $6ccb: $11 $11 $11
	inc  de                                          ; $6cce: $13
	ld   d, a                                        ; $6ccf: $57
	adc  h                                           ; $6cd0: $8c
	rst  $28                                         ; $6cd1: $ef
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	rst  $38                                         ; $6cd4: $ff
	db   $db                                         ; $6cd5: $db
	add  l                                           ; $6cd6: $85
	ld   b, e                                        ; $6cd7: $43
	ld   de, $1111                                   ; $6cd8: $11 $11 $11
	ld   [de], a                                     ; $6cdb: $12
	ld   d, [hl]                                     ; $6cdc: $56
	adc  e                                           ; $6cdd: $8b
	rst  $28                                         ; $6cde: $ef
	rst  $38                                         ; $6cdf: $ff
	rst  $38                                         ; $6ce0: $ff
	rst  $38                                         ; $6ce1: $ff
	db   $eb                                         ; $6ce2: $eb
	add  [hl]                                        ; $6ce3: $86
	ld   b, e                                        ; $6ce4: $43
	ld   hl, $1111                                   ; $6ce5: $21 $11 $11
	ld   [de], a                                     ; $6ce8: $12
	ld   b, [hl]                                     ; $6ce9: $46
	ld   a, e                                        ; $6cea: $7b
	rst  $28                                         ; $6ceb: $ef
	rst  $38                                         ; $6cec: $ff
	rst  $38                                         ; $6ced: $ff
	rst  $38                                         ; $6cee: $ff
	db   $ed                                         ; $6cef: $ed
	sub  a                                           ; $6cf0: $97
	ld   b, e                                        ; $6cf1: $43
	ld   hl, $1111                                   ; $6cf2: $21 $11 $11
	ld   de, $7a35                                   ; $6cf5: $11 $35 $7a
	rst  JumpTable                                         ; $6cf8: $df
	rst  $38                                         ; $6cf9: $ff
	rst  $38                                         ; $6cfa: $ff
	rst  $38                                         ; $6cfb: $ff
	db   $fd                                         ; $6cfc: $fd
	cp   b                                           ; $6cfd: $b8
	ld   d, e                                        ; $6cfe: $53
	ld   hl, $1111                                   ; $6cff: $21 $11 $11
	ld   de, $6824                                   ; $6d02: $11 $24 $68
	cp   [hl]                                        ; $6d05: $be
	rst  $38                                         ; $6d06: $ff
	rst  $38                                         ; $6d07: $ff
	rst  $38                                         ; $6d08: $ff
	rst  $38                                         ; $6d09: $ff
	reti                                             ; $6d0a: $d9


	ld   h, h                                        ; $6d0b: $64
	ld   [hl-], a                                    ; $6d0c: $32
	ld   de, $1111                                   ; $6d0d: $11 $11 $11
	inc  de                                          ; $6d10: $13
	ld   d, a                                        ; $6d11: $57
	sbc  h                                           ; $6d12: $9c
	rst  $38                                         ; $6d13: $ff
	rst  $38                                         ; $6d14: $ff
	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	ei                                               ; $6d17: $fb
	add  [hl]                                        ; $6d18: $86
	ld   [hl-], a                                    ; $6d19: $32
	ld   hl, $1111                                   ; $6d1a: $21 $11 $11
	ld   de, $7a46                                   ; $6d1d: $11 $46 $7a
	rst  JumpTable                                         ; $6d20: $df
	rst  $38                                         ; $6d21: $ff
	rst  $38                                         ; $6d22: $ff
	rst  $38                                         ; $6d23: $ff
	cp   $b8                                         ; $6d24: $fe $b8
	ld   d, e                                        ; $6d26: $53
	ld   hl, $1111                                   ; $6d27: $21 $11 $11
	ld   de, $6714                                   ; $6d2a: $11 $14 $67
	xor  l                                           ; $6d2d: $ad
	rst  $38                                         ; $6d2e: $ff
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	rst  $38                                         ; $6d31: $ff
	db   $db                                         ; $6d32: $db
	ld   [hl], h                                     ; $6d33: $74
	ld   [hl-], a                                    ; $6d34: $32
	ld   de, $1111                                   ; $6d35: $11 $11 $11
	ld   [de], a                                     ; $6d38: $12
	ld   b, [hl]                                     ; $6d39: $46
	adc  e                                           ; $6d3a: $8b
	rst  $28                                         ; $6d3b: $ef
	rst  $38                                         ; $6d3c: $ff
	rst  $38                                         ; $6d3d: $ff
	rst  $38                                         ; $6d3e: $ff
	cp   $a7                                         ; $6d3f: $fe $a7
	ld   b, d                                        ; $6d41: $42
	ld   hl, $1111                                   ; $6d42: $21 $11 $11
	ld   de, $6924                                   ; $6d45: $11 $24 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d48: $cf
	rst  $38                                         ; $6d49: $ff
	rst  $38                                         ; $6d4a: $ff
	rst  $38                                         ; $6d4b: $ff
	rst  $38                                         ; $6d4c: $ff
	ld   [$2274], a                                  ; $6d4d: $ea $74 $22
	ld   de, $1111                                   ; $6d50: $11 $11 $11
	ld   [de], a                                     ; $6d53: $12
	ld   b, [hl]                                     ; $6d54: $46
	adc  e                                           ; $6d55: $8b
	rst  $28                                         ; $6d56: $ef
	rst  $38                                         ; $6d57: $ff
	rst  $38                                         ; $6d58: $ff
	rst  $38                                         ; $6d59: $ff
	db   $fd                                         ; $6d5a: $fd
	and  a                                           ; $6d5b: $a7
	ld   b, d                                        ; $6d5c: $42
	ld   hl, $1111                                   ; $6d5d: $21 $11 $11
	ld   de, $6714                                   ; $6d60: $11 $14 $67
	xor  l                                           ; $6d63: $ad
	rst  $38                                         ; $6d64: $ff
	rst  $38                                         ; $6d65: $ff
	rst  $38                                         ; $6d66: $ff
	rst  $38                                         ; $6d67: $ff
	ei                                               ; $6d68: $fb
	sub  l                                           ; $6d69: $95
	ld   [hl-], a                                    ; $6d6a: $32
	ld   hl, $1111                                   ; $6d6b: $21 $11 $11
	ld   de, $7a35                                   ; $6d6e: $11 $35 $7a
	rst  JumpTable                                         ; $6d71: $df
	rst  $38                                         ; $6d72: $ff
	rst  $38                                         ; $6d73: $ff
	rst  $38                                         ; $6d74: $ff
	rst  $38                                         ; $6d75: $ff
	jp   c, $2264                                    ; $6d76: $da $64 $22

	ld   de, $1111                                   ; $6d79: $11 $11 $11
	ld   de, $8b46                                   ; $6d7c: $11 $46 $8b
	rst  JumpTable                                         ; $6d7f: $df
	rst  $38                                         ; $6d80: $ff
	rst  $38                                         ; $6d81: $ff
	rst  $38                                         ; $6d82: $ff
	rst  $38                                         ; $6d83: $ff
	reti                                             ; $6d84: $d9


	ld   h, e                                        ; $6d85: $63
	ld   [hl+], a                                    ; $6d86: $22
	ld   de, $1111                                   ; $6d87: $11 $11 $11
	ld   [de], a                                     ; $6d8a: $12
	ld   b, [hl]                                     ; $6d8b: $46
	sbc  h                                           ; $6d8c: $9c
	rst  $28                                         ; $6d8d: $ef
	rst  $38                                         ; $6d8e: $ff
	rst  $38                                         ; $6d8f: $ff
	rst  $38                                         ; $6d90: $ff
	cp   $b8                                         ; $6d91: $fe $b8
	ld   d, e                                        ; $6d93: $53
	ld   hl, $1111                                   ; $6d94: $21 $11 $11
	ld   de, $5612                                   ; $6d97: $11 $12 $56
	sbc  h                                           ; $6d9a: $9c
	rst  $38                                         ; $6d9b: $ff
	rst  $38                                         ; $6d9c: $ff
	rst  $38                                         ; $6d9d: $ff
	rst  $38                                         ; $6d9e: $ff
	cp   $b9                                         ; $6d9f: $fe $b9
	ld   d, e                                        ; $6da1: $53
	ld   hl, $1111                                   ; $6da2: $21 $11 $11
	ld   de, $4611                                   ; $6da5: $11 $11 $46
	adc  e                                           ; $6da8: $8b
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	rst  $38                                         ; $6dab: $ff
	rst  $38                                         ; $6dac: $ff
	rst  $38                                         ; $6dad: $ff
	ret                                              ; $6dae: $c9


	ld   h, e                                        ; $6daf: $63
	ld   [hl+], a                                    ; $6db0: $22
	ld   de, $1111                                   ; $6db1: $11 $11 $11
	ld   de, $8b46                                   ; $6db4: $11 $46 $8b
	rst  $28                                         ; $6db7: $ef
	rst  $38                                         ; $6db8: $ff
	rst  $38                                         ; $6db9: $ff
	rst  $38                                         ; $6dba: $ff
	rst  $38                                         ; $6dbb: $ff
	ld   [$2174], a                                  ; $6dbc: $ea $74 $21
	ld   de, $1111                                   ; $6dbf: $11 $11 $11
	ld   de, $6824                                   ; $6dc2: $11 $24 $68
	cp   [hl]                                        ; $6dc5: $be
	rst  $38                                         ; $6dc6: $ff
	rst  $38                                         ; $6dc7: $ff
	rst  $38                                         ; $6dc8: $ff
	rst  $38                                         ; $6dc9: $ff
	db   $fd                                         ; $6dca: $fd
	sub  [hl]                                        ; $6dcb: $96
	ld   b, d                                        ; $6dcc: $42
	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   de, $5712                                   ; $6dd0: $11 $12 $57
	sbc  l                                           ; $6dd3: $9d
	rst  $38                                         ; $6dd4: $ff
	rst  $38                                         ; $6dd5: $ff
	rst  $38                                         ; $6dd6: $ff
	rst  $38                                         ; $6dd7: $ff
	rst  $38                                         ; $6dd8: $ff
	reti                                             ; $6dd9: $d9


	ld   h, h                                        ; $6dda: $64
	ld   hl, $1111                                   ; $6ddb: $21 $11 $11
	ld   de, $2411                                   ; $6dde: $11 $11 $24
	ld   l, b                                        ; $6de1: $68
	adc  $ff                                         ; $6de2: $ce $ff
	rst  $38                                         ; $6de4: $ff
	rst  $38                                         ; $6de5: $ff
	rst  $38                                         ; $6de6: $ff
	cp   $a7                                         ; $6de7: $fe $a7
	ld   d, d                                        ; $6de9: $52
	ld   de, $1111                                   ; $6dea: $11 $11 $11
	ld   de, $3511                                   ; $6ded: $11 $11 $35
	ld   a, e                                        ; $6df0: $7b
	rst  JumpTable                                         ; $6df1: $df
	rst  $38                                         ; $6df2: $ff
	rst  $38                                         ; $6df3: $ff
	rst  $38                                         ; $6df4: $ff
	rst  $38                                         ; $6df5: $ff
	db   $fc                                         ; $6df6: $fc
	sub  [hl]                                        ; $6df7: $96
	ld   b, d                                        ; $6df8: $42
	ld   de, $1111                                   ; $6df9: $11 $11 $11
	ld   de, $4611                                   ; $6dfc: $11 $11 $46
	sbc  e                                           ; $6dff: $9b
	rst  $38                                         ; $6e00: $ff
	rst  $38                                         ; $6e01: $ff
	rst  $38                                         ; $6e02: $ff
	rst  $38                                         ; $6e03: $ff
	rst  $38                                         ; $6e04: $ff
	db   $ec                                         ; $6e05: $ec
	add  [hl]                                        ; $6e06: $86
	ld   sp, $1111                                   ; $6e07: $31 $11 $11
	ld   de, $1111                                   ; $6e0a: $11 $11 $11
	ld   b, [hl]                                     ; $6e0d: $46
	xor  h                                           ; $6e0e: $ac
	rst  $38                                         ; $6e0f: $ff
	rst  $38                                         ; $6e10: $ff
	rst  $38                                         ; $6e11: $ff
	rst  $38                                         ; $6e12: $ff
	rst  $38                                         ; $6e13: $ff
	db   $eb                                         ; $6e14: $eb
	add  l                                           ; $6e15: $85
	ld   sp, $1111                                   ; $6e16: $31 $11 $11
	ld   de, $1111                                   ; $6e19: $11 $11 $11
	ld   b, a                                        ; $6e1c: $47
	xor  l                                           ; $6e1d: $ad
	rst  $38                                         ; $6e1e: $ff
	rst  $38                                         ; $6e1f: $ff
	rst  $38                                         ; $6e20: $ff
	rst  $38                                         ; $6e21: $ff
	rst  $38                                         ; $6e22: $ff
	ld   [$3185], a                                  ; $6e23: $ea $85 $31
	ld   de, $1111                                   ; $6e26: $11 $11 $11
	ld   de, $4711                                   ; $6e29: $11 $11 $47
	xor  l                                           ; $6e2c: $ad
	rst  $38                                         ; $6e2d: $ff
	rst  $38                                         ; $6e2e: $ff
	rst  $38                                         ; $6e2f: $ff
	rst  $38                                         ; $6e30: $ff
	rst  $38                                         ; $6e31: $ff
	db   $eb                                         ; $6e32: $eb
	add  [hl]                                        ; $6e33: $86
	ld   sp, $1111                                   ; $6e34: $31 $11 $11
	ld   de, $1111                                   ; $6e37: $11 $11 $11
	ld   b, [hl]                                     ; $6e3a: $46
	sbc  e                                           ; $6e3b: $9b
	rst  $38                                         ; $6e3c: $ff
	rst  $38                                         ; $6e3d: $ff
	rst  $38                                         ; $6e3e: $ff
	rst  $38                                         ; $6e3f: $ff
	rst  $38                                         ; $6e40: $ff
	db   $eb                                         ; $6e41: $eb
	sub  [hl]                                        ; $6e42: $96
	ld   sp, $1111                                   ; $6e43: $31 $11 $11
	ld   de, $1111                                   ; $6e46: $11 $11 $11
	scf                                              ; $6e49: $37
	sbc  h                                           ; $6e4a: $9c
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	rst  $38                                         ; $6e4d: $ff
	rst  $38                                         ; $6e4e: $ff
	rst  $38                                         ; $6e4f: $ff
	ld   [$3195], a                                  ; $6e50: $ea $95 $31
	ld   de, $1111                                   ; $6e53: $11 $11 $11
	ld   de, $3812                                   ; $6e56: $11 $12 $38
	xor  e                                           ; $6e59: $ab
	rst  $38                                         ; $6e5a: $ff
	rst  $38                                         ; $6e5b: $ff
	rst  $38                                         ; $6e5c: $ff
	rst  $38                                         ; $6e5d: $ff
	rst  $38                                         ; $6e5e: $ff
	jp   z, $2185                                    ; $6e5f: $ca $85 $21

	ld   de, $1111                                   ; $6e62: $11 $11 $11
	ld   de, $3712                                   ; $6e65: $11 $12 $37
	cp   h                                           ; $6e68: $bc
	rst  $28                                         ; $6e69: $ef
	rst  $38                                         ; $6e6a: $ff
	rst  $38                                         ; $6e6b: $ff
	rst  $38                                         ; $6e6c: $ff
	rst  $38                                         ; $6e6d: $ff
	ld   [$2195], a                                  ; $6e6e: $ea $95 $21
	ld   de, $1111                                   ; $6e71: $11 $11 $11
	ld   de, $3512                                   ; $6e74: $11 $12 $35
	cp   h                                           ; $6e77: $bc
	rst  JumpTable                                         ; $6e78: $df
	rst  $38                                         ; $6e79: $ff
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	rst  $38                                         ; $6e7c: $ff
	ld   [$2185], a                                  ; $6e7d: $ea $85 $21
	ld   de, $1111                                   ; $6e80: $11 $11 $11
	ld   de, $3411                                   ; $6e83: $11 $11 $34
	cp   l                                           ; $6e86: $bd
	rst  JumpTable                                         ; $6e87: $df
	rst  $38                                         ; $6e88: $ff
	rst  $38                                         ; $6e89: $ff
	rst  $38                                         ; $6e8a: $ff
	rst  $38                                         ; $6e8b: $ff
	ld   a, [$2196]                                  ; $6e8c: $fa $96 $21
	ld   de, $1111                                   ; $6e8f: $11 $11 $11
	ld   de, $4411                                   ; $6e92: $11 $11 $44
	cp   l                                           ; $6e95: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e96: $cf
	rst  $38                                         ; $6e97: $ff
	rst  $38                                         ; $6e98: $ff
	rst  $38                                         ; $6e99: $ff
	rst  $38                                         ; $6e9a: $ff
	ld   a, [$2196]                                  ; $6e9b: $fa $96 $21
	ld   de, $1111                                   ; $6e9e: $11 $11 $11
	ld   de, $4411                                   ; $6ea1: $11 $11 $44
	xor  [hl]                                        ; $6ea4: $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ea5: $cf
	rst  $38                                         ; $6ea6: $ff
	rst  $38                                         ; $6ea7: $ff
	rst  $38                                         ; $6ea8: $ff
	rst  $38                                         ; $6ea9: $ff
	ld   a, [$1196]                                  ; $6eaa: $fa $96 $11
	ld   de, $1111                                   ; $6ead: $11 $11 $11
	ld   de, $4411                                   ; $6eb0: $11 $11 $44
	cp   [hl]                                        ; $6eb3: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eb4: $cf
	rst  $38                                         ; $6eb5: $ff
	rst  $38                                         ; $6eb6: $ff
	rst  $38                                         ; $6eb7: $ff
	rst  $38                                         ; $6eb8: $ff
	ld   sp, hl                                      ; $6eb9: $f9
	sub  [hl]                                        ; $6eba: $96
	ld   bc, $1111                                   ; $6ebb: $01 $11 $11
	ld   de, $1111                                   ; $6ebe: $11 $11 $11
	ld   b, h                                        ; $6ec1: $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ec2: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ec3: $cf
	rst  $38                                         ; $6ec4: $ff
	rst  $38                                         ; $6ec5: $ff
	rst  $38                                         ; $6ec6: $ff
	rst  $38                                         ; $6ec7: $ff
	ld   sp, hl                                      ; $6ec8: $f9
	sub  [hl]                                        ; $6ec9: $96
	ld   de, $1111                                   ; $6eca: $11 $11 $11
	ld   de, $1111                                   ; $6ecd: $11 $11 $11
	ld   d, h                                        ; $6ed0: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ed1: $cf
	cp   a                                           ; $6ed2: $bf
	rst  $38                                         ; $6ed3: $ff
	rst  $38                                         ; $6ed4: $ff
	rst  $38                                         ; $6ed5: $ff
	rst  $38                                         ; $6ed6: $ff
	ld   sp, hl                                      ; $6ed7: $f9
	and  l                                           ; $6ed8: $a5
	ld   de, $1111                                   ; $6ed9: $11 $11 $11
	ld   de, $1111                                   ; $6edc: $11 $11 $11
	ld   d, h                                        ; $6edf: $54
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ee0: $cf
	cp   a                                           ; $6ee1: $bf
	rst  $38                                         ; $6ee2: $ff
	rst  $38                                         ; $6ee3: $ff
	rst  $38                                         ; $6ee4: $ff
	rst  $38                                         ; $6ee5: $ff
	ld   sp, hl                                      ; $6ee6: $f9
	sub  [hl]                                        ; $6ee7: $96
	ld   de, $1111                                   ; $6ee8: $11 $11 $11
	ld   de, $2111                                   ; $6eeb: $11 $11 $21
	ld   h, h                                        ; $6eee: $64
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eef: $cf
	cp   a                                           ; $6ef0: $bf
	rst  $38                                         ; $6ef1: $ff
	rst  $38                                         ; $6ef2: $ff
	rst  $38                                         ; $6ef3: $ff
	rst  $38                                         ; $6ef4: $ff
	ld   hl, sp-$5a                                  ; $6ef5: $f8 $a6
	ld   de, $1111                                   ; $6ef7: $11 $11 $11
	ld   de, $3111                                   ; $6efa: $11 $11 $31
	ld   h, h                                        ; $6efd: $64
	cp   a                                           ; $6efe: $bf
	xor  a                                           ; $6eff: $af
	rst  $38                                         ; $6f00: $ff
	rst  $38                                         ; $6f01: $ff
	rst  $38                                         ; $6f02: $ff
	rst  $38                                         ; $6f03: $ff
	rst  $30                                         ; $6f04: $f7
	sub  [hl]                                        ; $6f05: $96
	ld   de, $1111                                   ; $6f06: $11 $11 $11
	ld   [de], a                                     ; $6f09: $12
	ld   de, $7531                                   ; $6f0a: $11 $31 $75
	cp   a                                           ; $6f0d: $bf
	cp   a                                           ; $6f0e: $bf
	rst  $38                                         ; $6f0f: $ff
	rst  $38                                         ; $6f10: $ff
	rst  $38                                         ; $6f11: $ff
	rst  $38                                         ; $6f12: $ff
	rst  $30                                         ; $6f13: $f7
	and  [hl]                                        ; $6f14: $a6
	ld   de, $1111                                   ; $6f15: $11 $11 $11
	ld   [de], a                                     ; $6f18: $12
	ld   de, $8541                                   ; $6f19: $11 $41 $85
	cp   a                                           ; $6f1c: $bf
	xor  a                                           ; $6f1d: $af
	rst  $38                                         ; $6f1e: $ff
	rst  $38                                         ; $6f1f: $ff
	rst  $38                                         ; $6f20: $ff
	rst  $38                                         ; $6f21: $ff
	or   $a6                                         ; $6f22: $f6 $a6
	ld   de, $1111                                   ; $6f24: $11 $11 $11
	ld   [de], a                                     ; $6f27: $12
	ld   de, $8541                                   ; $6f28: $11 $41 $85
	cp   a                                           ; $6f2b: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f2c: $cf
	rst  $38                                         ; $6f2d: $ff
	rst  $38                                         ; $6f2e: $ff
	rst  $38                                         ; $6f2f: $ff
	rst  $38                                         ; $6f30: $ff
	or   $95                                         ; $6f31: $f6 $95
	ld   de, $1111                                   ; $6f33: $11 $11 $11
	ld   [de], a                                     ; $6f36: $12
	ld   de, $8651                                   ; $6f37: $11 $51 $86
	rst  JumpTable                                         ; $6f3a: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f3b: $cf
	rst  $38                                         ; $6f3c: $ff
	rst  $38                                         ; $6f3d: $ff
	rst  $38                                         ; $6f3e: $ff
	rst  $38                                         ; $6f3f: $ff
	or   $85                                         ; $6f40: $f6 $85
	ld   de, $1111                                   ; $6f42: $11 $11 $11
	ld   de, $4111                                   ; $6f45: $11 $11 $41
	sub  [hl]                                        ; $6f48: $96
	rst  $28                                         ; $6f49: $ef
	cp   a                                           ; $6f4a: $bf
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	rst  $38                                         ; $6f4e: $ff
	or   $93                                         ; $6f4f: $f6 $93
	ld   de, $1111                                   ; $6f51: $11 $11 $11
	ld   de, $3112                                   ; $6f54: $11 $12 $31
	and  l                                           ; $6f57: $a5
	rst  $38                                         ; $6f58: $ff
	cp   a                                           ; $6f59: $bf
	rst  $38                                         ; $6f5a: $ff
	rst  $38                                         ; $6f5b: $ff
	rst  $38                                         ; $6f5c: $ff
	rst  $38                                         ; $6f5d: $ff
	push hl                                          ; $6f5e: $e5
	sub  d                                           ; $6f5f: $92
	ld   de, $1111                                   ; $6f60: $11 $11 $11
	ld   de, $1114                                   ; $6f63: $11 $14 $11
	or   [hl]                                        ; $6f66: $b6
	rst  $38                                         ; $6f67: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f68: $cf
	rst  $38                                         ; $6f69: $ff
	rst  $38                                         ; $6f6a: $ff
	rst  $38                                         ; $6f6b: $ff
	rst  $38                                         ; $6f6c: $ff
	and  $91                                         ; $6f6d: $e6 $91
	ld   de, $1111                                   ; $6f6f: $11 $11 $11
	ld   de, $1115                                   ; $6f72: $11 $15 $11
	push bc                                          ; $6f75: $c5
	rst  $38                                         ; $6f76: $ff
	rst  $28                                         ; $6f77: $ef
	rst  $38                                         ; $6f78: $ff
	rst  $38                                         ; $6f79: $ff
	rst  $38                                         ; $6f7a: $ff
	rst  $38                                         ; $6f7b: $ff
	push bc                                          ; $6f7c: $c5
	sub  c                                           ; $6f7d: $91
	ld   de, $1111                                   ; $6f7e: $11 $11 $11
	ld   de, $1116                                   ; $6f81: $11 $16 $11
	or   [hl]                                        ; $6f84: $b6
	rst  $38                                         ; $6f85: $ff
	rst  $38                                         ; $6f86: $ff
	rst  $38                                         ; $6f87: $ff
	rst  $38                                         ; $6f88: $ff
	rst  $38                                         ; $6f89: $ff
	rst  $38                                         ; $6f8a: $ff
	add  $81                                         ; $6f8b: $c6 $81
	ld   de, $1111                                   ; $6f8d: $11 $11 $11
	ld   de, $1415                                   ; $6f90: $11 $15 $14
	and  a                                           ; $6f93: $a7
	rst  $38                                         ; $6f94: $ff
	rst  $38                                         ; $6f95: $ff
	rst  $38                                         ; $6f96: $ff
	rst  $38                                         ; $6f97: $ff
	rst  $38                                         ; $6f98: $ff
	rst  $38                                         ; $6f99: $ff
	and  [hl]                                        ; $6f9a: $a6
	ld   [hl], c                                     ; $6f9b: $71
	ld   de, $1111                                   ; $6f9c: $11 $11 $11
	ld   de, $1416                                   ; $6f9f: $11 $16 $14
	sbc  c                                           ; $6fa2: $99
	rst  $38                                         ; $6fa3: $ff
	rst  $38                                         ; $6fa4: $ff
	rst  $38                                         ; $6fa5: $ff
	rst  $38                                         ; $6fa6: $ff
	rst  $38                                         ; $6fa7: $ff
	rst  $38                                         ; $6fa8: $ff
	and  a                                           ; $6fa9: $a7
	ld   d, c                                        ; $6faa: $51
	ld   de, $1111                                   ; $6fab: $11 $11 $11
	ld   de, $1714                                   ; $6fae: $11 $14 $17
	sbc  e                                           ; $6fb1: $9b
	cp   $ff                                         ; $6fb2: $fe $ff
	rst  $38                                         ; $6fb4: $ff
	rst  $38                                         ; $6fb5: $ff
	rst  $38                                         ; $6fb6: $ff

jr_0d9_6fb7:
	rst  $38                                         ; $6fb7: $ff
	sub  a                                           ; $6fb8: $97
	ld   b, c                                        ; $6fb9: $41
	ld   de, $1111                                   ; $6fba: $11 $11 $11
	ld   de, $1913                                   ; $6fbd: $11 $13 $19
	ld   a, h                                        ; $6fc0: $7c
	cp   $ff                                         ; $6fc1: $fe $ff
	rst  $38                                         ; $6fc3: $ff
	rst  $38                                         ; $6fc4: $ff
	rst  $38                                         ; $6fc5: $ff
	rst  $38                                         ; $6fc6: $ff
	add  [hl]                                        ; $6fc7: $86
	ld   sp, $1111                                   ; $6fc8: $31 $11 $11
	ld   de, $1211                                   ; $6fcb: $11 $11 $12
	add  hl, de                                      ; $6fce: $19
	adc  [hl]                                        ; $6fcf: $8e
	rst  $38                                         ; $6fd0: $ff
	rst  $38                                         ; $6fd1: $ff
	rst  $38                                         ; $6fd2: $ff
	rst  $38                                         ; $6fd3: $ff
	rst  $38                                         ; $6fd4: $ff
	xor  $86                                         ; $6fd5: $ee $86
	ld   hl, $1111                                   ; $6fd7: $21 $11 $11
	ld   de, $2111                                   ; $6fda: $11 $11 $21
	add  hl, de                                      ; $6fdd: $19
	adc  a                                           ; $6fde: $8f
	rst  $38                                         ; $6fdf: $ff
	rst  $38                                         ; $6fe0: $ff
	rst  $38                                         ; $6fe1: $ff
	rst  $38                                         ; $6fe2: $ff
	rst  $38                                         ; $6fe3: $ff
	xor  $75                                         ; $6fe4: $ee $75
	ld   de, $1111                                   ; $6fe6: $11 $11 $11
	ld   de, $4111                                   ; $6fe9: $11 $11 $41
	ld   a, [de]                                     ; $6fec: $1a
	ld   a, a                                        ; $6fed: $7f
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	rst  $38                                         ; $6ff0: $ff
	rst  $38                                         ; $6ff1: $ff
	rst  $38                                         ; $6ff2: $ff
	db   $fd                                         ; $6ff3: $fd
	ld   [hl], l                                     ; $6ff4: $75
	ld   de, $1111                                   ; $6ff5: $11 $11 $11
	ld   de, $3111                                   ; $6ff8: $11 $11 $31
	dec  de                                          ; $6ffb: $1b
	adc  a                                           ; $6ffc: $8f
	rst  $38                                         ; $6ffd: $ff
	rst  $38                                         ; $6ffe: $ff
	rst  $38                                         ; $6fff: $ff
	rst  $38                                         ; $7000: $ff
	rst  $38                                         ; $7001: $ff
	xor  $75                                         ; $7002: $ee $75
	ld   de, $1111                                   ; $7004: $11 $11 $11
	ld   de, $2211                                   ; $7007: $11 $11 $22
	add  hl, de                                      ; $700a: $19
	adc  [hl]                                        ; $700b: $8e
	rst  $38                                         ; $700c: $ff
	rst  $38                                         ; $700d: $ff
	rst  $38                                         ; $700e: $ff
	rst  $38                                         ; $700f: $ff
	rst  $38                                         ; $7010: $ff
	db   $ed                                         ; $7011: $ed
	add  h                                           ; $7012: $84
	ld   hl, $1111                                   ; $7013: $21 $11 $11
	ld   de, $1511                                   ; $7016: $11 $11 $15
	jr   jr_0d9_6fb7                                 ; $7019: $18 $9c

	rst  $38                                         ; $701b: $ff
	rst  $38                                         ; $701c: $ff
	rst  $38                                         ; $701d: $ff
	rst  $38                                         ; $701e: $ff
	rst  $38                                         ; $701f: $ff
	xor  $a4                                         ; $7020: $ee $a4
	ld   sp, $1111                                   ; $7022: $31 $11 $11
	ld   de, $1611                                   ; $7025: $11 $11 $16
	inc  d                                           ; $7028: $14
	xor  d                                           ; $7029: $aa
	rst  $38                                         ; $702a: $ff
	rst  $38                                         ; $702b: $ff
	rst  $38                                         ; $702c: $ff
	rst  $38                                         ; $702d: $ff
	rst  $38                                         ; $702e: $ff
	db   $fc                                         ; $702f: $fc
	sub  $31                                         ; $7030: $d6 $31
	ld   de, $1111                                   ; $7032: $11 $11 $11
	ld   de, $4113                                   ; $7035: $11 $13 $41
	sbc  c                                           ; $7038: $99
	rst  JumpTable                                         ; $7039: $df
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	rst  $38                                         ; $703c: $ff
	rst  $38                                         ; $703d: $ff
	db   $fc                                         ; $703e: $fc
	jp   c, $1142                                    ; $703f: $da $42 $11

	ld   de, $1211                                   ; $7042: $11 $11 $12
	ld   de, $1a72                                   ; $7045: $11 $72 $1a
	cp   l                                           ; $7048: $bd
	rst  JumpTable                                         ; $7049: $df
	rst  $38                                         ; $704a: $ff
	rst  $38                                         ; $704b: $ff
	rst  $38                                         ; $704c: $ff
	rst  $38                                         ; $704d: $ff
	call $3273                                       ; $704e: $cd $73 $32
	ld   de, $1111                                   ; $7051: $11 $11 $11
	ld   sp, $1219                                   ; $7054: $31 $19 $12
	cp   h                                           ; $7057: $bc
	cp   [hl]                                        ; $7058: $be
	rst  $38                                         ; $7059: $ff
	rst  $38                                         ; $705a: $ff
	rst  $38                                         ; $705b: $ff
	rst  $38                                         ; $705c: $ff
	db   $ed                                         ; $705d: $ed
	rst  ToBoot                                         ; $705e: $c7
	ld   b, h                                        ; $705f: $44
	ld   sp, $1111                                   ; $7060: $31 $11 $11
	inc  de                                          ; $7063: $13
	ld   de, $1872                                   ; $7064: $11 $72 $18
	ret                                              ; $7067: $c9


	rst  JumpTable                                         ; $7068: $df
	rst  $28                                         ; $7069: $ef
	rst  $38                                         ; $706a: $ff
	rst  $38                                         ; $706b: $ff
	cp   $ed                                         ; $706c: $fe $ed
	ld   [hl], l                                     ; $706e: $75
	ld   d, h                                        ; $706f: $54
	ld   de, $1111                                   ; $7070: $11 $11 $11
	ld   [de], a                                     ; $7073: $12
	inc  de                                          ; $7074: $13
	ld   d, c                                        ; $7075: $51
	ld   e, e                                        ; $7076: $5b
	sbc  e                                           ; $7077: $9b
	rst  $38                                         ; $7078: $ff
	rst  $38                                         ; $7079: $ff
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	cp   $f8                                         ; $707c: $fe $f8
	ld   h, a                                        ; $707e: $67
	ld   d, c                                        ; $707f: $51
	ld   de, $1111                                   ; $7080: $11 $11 $11
	ld   sp, $1115                                   ; $7083: $31 $15 $11
	adc  e                                           ; $7086: $8b
	adc  l                                           ; $7087: $8d
	cp   $ff                                         ; $7088: $fe $ff
	rst  $38                                         ; $708a: $ff
	rst  $38                                         ; $708b: $ff
	rst  JumpTable                                         ; $708c: $df
	rst  $10                                         ; $708d: $d7
	add  a                                           ; $708e: $87
	ld   [hl-], a                                    ; $708f: $32
	ld   sp, $1112                                   ; $7090: $31 $12 $11
	ld   sp, $1114                                   ; $7093: $31 $14 $11
	sbc  d                                           ; $7096: $9a
	adc  [hl]                                        ; $7097: $8e
	db   $fd                                         ; $7098: $fd
	rst  $38                                         ; $7099: $ff
	rst  $38                                         ; $709a: $ff
	rst  $38                                         ; $709b: $ff
	rst  $28                                         ; $709c: $ef
	ret  z                                           ; $709d: $c8

	sub  a                                           ; $709e: $97
	ld   b, e                                        ; $709f: $43
	ld   sp, $1111                                   ; $70a0: $31 $11 $11
	ld   hl, $1114                                   ; $70a3: $21 $14 $11
	adc  c                                           ; $70a6: $89
	adc  [hl]                                        ; $70a7: $8e
	db   $fd                                         ; $70a8: $fd
	rst  $38                                         ; $70a9: $ff
	rst  $38                                         ; $70aa: $ff
	rst  $38                                         ; $70ab: $ff
	rst  JumpTable                                         ; $70ac: $df
	reti                                             ; $70ad: $d9


	xor  c                                           ; $70ae: $a9
	ld   b, h                                        ; $70af: $44
	ld   b, c                                        ; $70b0: $41
	ld   de, $2111                                   ; $70b1: $11 $11 $21
	inc  de                                          ; $70b4: $13
	ld   de, $7d79                                   ; $70b5: $11 $79 $7d
	cp   $ff                                         ; $70b8: $fe $ff
	rst  $38                                         ; $70ba: $ff
	rst  $38                                         ; $70bb: $ff
	rst  $28                                         ; $70bc: $ef
	ld   [$54a9], a                                  ; $70bd: $ea $a9 $54
	ld   b, c                                        ; $70c0: $41
	ld   de, $1111                                   ; $70c1: $11 $11 $11
	ld   [de], a                                     ; $70c4: $12
	ld   de, $8a49                                   ; $70c5: $11 $49 $8a
	rst  $38                                         ; $70c8: $ff
	rst  $28                                         ; $70c9: $ef
	rst  $38                                         ; $70ca: $ff
	rst  $38                                         ; $70cb: $ff
	rst  $38                                         ; $70cc: $ff
	db   $fc                                         ; $70cd: $fc
	cp   d                                           ; $70ce: $ba
	ld   h, l                                        ; $70cf: $65
	ld   d, d                                        ; $70d0: $52
	ld   de, $1111                                   ; $70d1: $11 $11 $11
	ld   de, $1721                                   ; $70d4: $11 $21 $17
	adc  c                                           ; $70d7: $89
	rst  $28                                         ; $70d8: $ef
	rst  $28                                         ; $70d9: $ef
	rst  $38                                         ; $70da: $ff
	rst  $38                                         ; $70db: $ff
	rst  $38                                         ; $70dc: $ff
	db   $fd                                         ; $70dd: $fd
	bit  6, [hl]                                     ; $70de: $cb $76
	ld   h, e                                        ; $70e0: $63
	ld   de, $1111                                   ; $70e1: $11 $11 $11
	ld   de, $1311                                   ; $70e4: $11 $11 $13
	ld   [hl], a                                     ; $70e7: $77
	cp   [hl]                                        ; $70e8: $be
	rst  $28                                         ; $70e9: $ef
	rst  $38                                         ; $70ea: $ff
	rst  $38                                         ; $70eb: $ff
	rst  $38                                         ; $70ec: $ff
	rst  $38                                         ; $70ed: $ff
	db   $fd                                         ; $70ee: $fd
	xor  b                                           ; $70ef: $a8
	ld   [hl], l                                     ; $70f0: $75
	ld   hl, $1111                                   ; $70f1: $21 $11 $11
	ld   de, $1111                                   ; $70f4: $11 $11 $11
	scf                                              ; $70f7: $37
	adc  e                                           ; $70f8: $8b
	rst  $28                                         ; $70f9: $ef
	rst  $38                                         ; $70fa: $ff
	rst  $38                                         ; $70fb: $ff
	rst  $38                                         ; $70fc: $ff
	rst  $38                                         ; $70fd: $ff
	cp   $c9                                         ; $70fe: $fe $c9
	halt                                             ; $7100: $76
	ld   b, d                                        ; $7101: $42
	ld   de, $1111                                   ; $7102: $11 $11 $11
	ld   de, $1411                                   ; $7105: $11 $11 $14
	ld   a, c                                        ; $7108: $79
	cp   l                                           ; $7109: $bd
	rst  $38                                         ; $710a: $ff
	rst  $38                                         ; $710b: $ff
	rst  $38                                         ; $710c: $ff
	rst  $38                                         ; $710d: $ff
	rst  $38                                         ; $710e: $ff
	db   $eb                                         ; $710f: $eb
	sub  a                                           ; $7110: $97
	ld   h, h                                        ; $7111: $64
	ld   hl, $1111                                   ; $7112: $21 $11 $11
	ld   de, $1111                                   ; $7115: $11 $11 $11
	ld   b, [hl]                                     ; $7118: $46
	sbc  h                                           ; $7119: $9c
	rst  $28                                         ; $711a: $ef
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	rst  $38                                         ; $711e: $ff
	db   $fd                                         ; $711f: $fd
	ret                                              ; $7120: $c9


	halt                                             ; $7121: $76
	ld   b, d                                        ; $7122: $42
	ld   de, $1111                                   ; $7123: $11 $11 $11
	ld   de, $1311                                   ; $7126: $11 $11 $13
	ld   l, d                                        ; $7129: $6a
	cp   l                                           ; $712a: $bd
	rst  $38                                         ; $712b: $ff
	rst  $38                                         ; $712c: $ff
	rst  $38                                         ; $712d: $ff
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	db   $db                                         ; $7130: $db
	and  a                                           ; $7131: $a7
	ld   h, h                                        ; $7132: $64
	ld   hl, $1111                                   ; $7133: $21 $11 $11
	ld   de, $1111                                   ; $7136: $11 $11 $11
	dec  [hl]                                        ; $7139: $35
	adc  e                                           ; $713a: $8b
	sbc  $ff                                         ; $713b: $de $ff
	rst  $38                                         ; $713d: $ff
	rst  $38                                         ; $713e: $ff
	rst  $38                                         ; $713f: $ff
	db   $fd                                         ; $7140: $fd
	jp   c, Jump_0d9_5376                            ; $7141: $da $76 $53

	ld   de, $1111                                   ; $7144: $11 $11 $11
	ld   de, $1211                                   ; $7147: $11 $11 $12
	ld   b, a                                        ; $714a: $47
	cp   l                                           ; $714b: $bd
	rst  $28                                         ; $714c: $ef
	rst  $38                                         ; $714d: $ff
	rst  $38                                         ; $714e: $ff
	rst  $38                                         ; $714f: $ff
	rst  $38                                         ; $7150: $ff
	db   $fd                                         ; $7151: $fd
	xor  b                                           ; $7152: $a8
	ld   [hl], l                                     ; $7153: $75
	ld   [hl-], a                                    ; $7154: $32
	ld   bc, $1111                                   ; $7155: $01 $11 $11
	ld   de, $1311                                   ; $7158: $11 $11 $13
	ld   l, d                                        ; $715b: $6a
	cp   l                                           ; $715c: $bd
	rst  $38                                         ; $715d: $ff
	rst  $38                                         ; $715e: $ff
	rst  $38                                         ; $715f: $ff
	rst  $38                                         ; $7160: $ff
	rst  $38                                         ; $7161: $ff
	db   $ec                                         ; $7162: $ec
	xor  b                                           ; $7163: $a8
	ld   h, h                                        ; $7164: $64
	ld   [hl-], a                                    ; $7165: $32
	ld   de, $1111                                   ; $7166: $11 $11 $11
	ld   de, $2411                                   ; $7169: $11 $11 $24
	ld   a, d                                        ; $716c: $7a
	call $ffff                                       ; $716d: $cd $ff $ff
	rst  $38                                         ; $7170: $ff
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	jp   c, Jump_0d9_5497                            ; $7173: $da $97 $54

	ld   hl, $1111                                   ; $7176: $21 $11 $11
	ld   de, $1111                                   ; $7179: $11 $11 $11
	dec  [hl]                                        ; $717c: $35
	sbc  e                                           ; $717d: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $717e: $cf
	rst  $38                                         ; $717f: $ff
	rst  $38                                         ; $7180: $ff
	rst  $38                                         ; $7181: $ff
	rst  $38                                         ; $7182: $ff
	cp   $da                                         ; $7183: $fe $da
	add  a                                           ; $7185: $87
	ld   d, e                                        ; $7186: $53
	ld   hl, $1111                                   ; $7187: $21 $11 $11
	ld   de, $1111                                   ; $718a: $11 $11 $11
	ld   [hl], $9c                                   ; $718d: $36 $9c
	rst  $28                                         ; $718f: $ef
	rst  $38                                         ; $7190: $ff
	rst  $38                                         ; $7191: $ff
	rst  $38                                         ; $7192: $ff
	rst  $38                                         ; $7193: $ff
	cp   $ba                                         ; $7194: $fe $ba
	halt                                             ; $7196: $76
	ld   b, e                                        ; $7197: $43
	ld   de, $1111                                   ; $7198: $11 $11 $11
	ld   de, $1211                                   ; $719b: $11 $11 $12
	ld   b, a                                        ; $719e: $47
	cp   h                                           ; $719f: $bc
	rst  $28                                         ; $71a0: $ef
	rst  $38                                         ; $71a1: $ff
	rst  $38                                         ; $71a2: $ff
	rst  $38                                         ; $71a3: $ff
	rst  $38                                         ; $71a4: $ff
	db   $fd                                         ; $71a5: $fd
	cp   c                                           ; $71a6: $b9
	halt                                             ; $71a7: $76
	ld   b, e                                        ; $71a8: $43
	ld   de, $1111                                   ; $71a9: $11 $11 $11
	ld   de, $1211                                   ; $71ac: $11 $11 $12
	ld   b, a                                        ; $71af: $47
	xor  l                                           ; $71b0: $ad
	rst  $28                                         ; $71b1: $ef
	rst  $38                                         ; $71b2: $ff
	rst  $38                                         ; $71b3: $ff
	rst  $38                                         ; $71b4: $ff
	rst  $38                                         ; $71b5: $ff
	db   $fd                                         ; $71b6: $fd
	cp   c                                           ; $71b7: $b9
	ld   [hl], l                                     ; $71b8: $75
	ld   b, d                                        ; $71b9: $42
	ld   de, $1111                                   ; $71ba: $11 $11 $11
	ld   de, $1211                                   ; $71bd: $11 $11 $12
	ld   b, a                                        ; $71c0: $47
	cp   l                                           ; $71c1: $bd
	rst  $28                                         ; $71c2: $ef
	rst  $38                                         ; $71c3: $ff
	rst  $38                                         ; $71c4: $ff
	rst  $38                                         ; $71c5: $ff
	rst  $38                                         ; $71c6: $ff
	db   $fd                                         ; $71c7: $fd
	cp   b                                           ; $71c8: $b8
	ld   [hl], l                                     ; $71c9: $75
	ld   b, d                                        ; $71ca: $42
	ld   de, $1111                                   ; $71cb: $11 $11 $11
	ld   de, $1211                                   ; $71ce: $11 $11 $12
	ld   b, a                                        ; $71d1: $47
	xor  l                                           ; $71d2: $ad
	rst  $28                                         ; $71d3: $ef
	rst  $38                                         ; $71d4: $ff
	rst  $38                                         ; $71d5: $ff
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	db   $fd                                         ; $71d8: $fd
	cp   c                                           ; $71d9: $b9
	halt                                             ; $71da: $76
	ld   b, d                                        ; $71db: $42
	ld   de, $1111                                   ; $71dc: $11 $11 $11
	ld   de, $1111                                   ; $71df: $11 $11 $11
	ld   b, [hl]                                     ; $71e2: $46
	xor  h                                           ; $71e3: $ac
	rst  $28                                         ; $71e4: $ef
	rst  $38                                         ; $71e5: $ff
	rst  $38                                         ; $71e6: $ff
	rst  $38                                         ; $71e7: $ff
	rst  $38                                         ; $71e8: $ff
	cp   $b9                                         ; $71e9: $fe $b9
	halt                                             ; $71eb: $76
	ld   b, e                                        ; $71ec: $43
	ld   de, $1111                                   ; $71ed: $11 $11 $11
	ld   de, $1111                                   ; $71f0: $11 $11 $11
	dec  [hl]                                        ; $71f3: $35
	sbc  h                                           ; $71f4: $9c
	rst  JumpTable                                         ; $71f5: $df
	rst  $38                                         ; $71f6: $ff
	rst  $38                                         ; $71f7: $ff
	rst  $38                                         ; $71f8: $ff
	rst  $38                                         ; $71f9: $ff
	rst  $38                                         ; $71fa: $ff
	jp   z, Jump_0d9_5387                            ; $71fb: $ca $87 $53

	ld   hl, $1111                                   ; $71fe: $21 $11 $11
	ld   de, $1111                                   ; $7201: $11 $11 $11
	inc  h                                           ; $7204: $24
	ld   a, e                                        ; $7205: $7b
	rst  JumpTable                                         ; $7206: $df
	rst  $38                                         ; $7207: $ff
	rst  $38                                         ; $7208: $ff
	rst  $38                                         ; $7209: $ff
	rst  $38                                         ; $720a: $ff
	rst  $38                                         ; $720b: $ff
	db   $db                                         ; $720c: $db
	sub  a                                           ; $720d: $97
	ld   h, h                                        ; $720e: $64
	ld   sp, $1111                                   ; $720f: $31 $11 $11
	ld   de, $1111                                   ; $7212: $11 $11 $11
	inc  d                                           ; $7215: $14
	ld   e, c                                        ; $7216: $59
	sbc  $ff                                         ; $7217: $de $ff
	rst  $38                                         ; $7219: $ff
	rst  $38                                         ; $721a: $ff
	rst  $38                                         ; $721b: $ff
	rst  $38                                         ; $721c: $ff
	db   $fd                                         ; $721d: $fd
	cp   c                                           ; $721e: $b9
	ld   [hl], l                                     ; $721f: $75
	ld   b, e                                        ; $7220: $43
	ld   de, $1111                                   ; $7221: $11 $11 $11
	ld   de, $1211                                   ; $7224: $11 $11 $12
	ld   b, [hl]                                     ; $7227: $46
	xor  h                                           ; $7228: $ac
	rst  $28                                         ; $7229: $ef
	rst  $38                                         ; $722a: $ff
	rst  $38                                         ; $722b: $ff
	rst  $38                                         ; $722c: $ff
	rst  $38                                         ; $722d: $ff
	cp   $da                                         ; $722e: $fe $da
	sub  a                                           ; $7230: $97
	ld   d, h                                        ; $7231: $54
	ld   sp, $1111                                   ; $7232: $31 $11 $11
	ld   de, $1111                                   ; $7235: $11 $11 $11
	inc  h                                           ; $7238: $24
	ld   l, d                                        ; $7239: $6a
	sbc  $ff                                         ; $723a: $de $ff
	rst  $38                                         ; $723c: $ff
	rst  $38                                         ; $723d: $ff
	rst  $38                                         ; $723e: $ff
	rst  $38                                         ; $723f: $ff
	db   $ed                                         ; $7240: $ed
	xor  c                                           ; $7241: $a9
	ld   [hl], l                                     ; $7242: $75
	ld   b, e                                        ; $7243: $43
	ld   de, $1111                                   ; $7244: $11 $11 $11
	ld   de, $1211                                   ; $7247: $11 $11 $12
	ld   b, [hl]                                     ; $724a: $46
	xor  h                                           ; $724b: $ac
	rst  $28                                         ; $724c: $ef
	rst  $38                                         ; $724d: $ff
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	rst  $38                                         ; $7250: $ff
	rst  $38                                         ; $7251: $ff
	res  3, b                                        ; $7252: $cb $98
	ld   h, h                                        ; $7254: $64
	ld   sp, $1111                                   ; $7255: $31 $11 $11
	ld   de, $1111                                   ; $7258: $11 $11 $11
	inc  de                                          ; $725b: $13
	ld   l, d                                        ; $725c: $6a
	adc  $ff                                         ; $725d: $ce $ff
	rst  $38                                         ; $725f: $ff
	rst  $38                                         ; $7260: $ff
	rst  $38                                         ; $7261: $ff
	rst  $38                                         ; $7262: $ff
	db   $ed                                         ; $7263: $ed
	cp   c                                           ; $7264: $b9
	add  [hl]                                        ; $7265: $86
	ld   b, e                                        ; $7266: $43
	ld   hl, $1111                                   ; $7267: $21 $11 $11
	ld   de, $1111                                   ; $726a: $11 $11 $11
	dec  [hl]                                        ; $726d: $35
	sbc  e                                           ; $726e: $9b
	rst  JumpTable                                         ; $726f: $df
	rst  $38                                         ; $7270: $ff
	rst  $38                                         ; $7271: $ff
	rst  $38                                         ; $7272: $ff
	rst  $38                                         ; $7273: $ff
	rst  $38                                         ; $7274: $ff
	db   $eb                                         ; $7275: $eb
	sbc  b                                           ; $7276: $98
	ld   [hl], l                                     ; $7277: $75
	ld   b, d                                        ; $7278: $42
	ld   de, $1111                                   ; $7279: $11 $11 $11
	ld   de, $1211                                   ; $727c: $11 $11 $12
	ld   b, [hl]                                     ; $727f: $46
	xor  h                                           ; $7280: $ac
	rst  JumpTable                                         ; $7281: $df
	rst  $38                                         ; $7282: $ff
	rst  $38                                         ; $7283: $ff
	rst  $38                                         ; $7284: $ff
	rst  $38                                         ; $7285: $ff
	rst  $38                                         ; $7286: $ff
	db   $eb                                         ; $7287: $eb
	sbc  c                                           ; $7288: $99
	ld   h, h                                        ; $7289: $64
	ld   [hl-], a                                    ; $728a: $32
	ld   de, $1111                                   ; $728b: $11 $11 $11
	ld   de, $1311                                   ; $728e: $11 $11 $13
	ld   b, a                                        ; $7291: $47
	xor  e                                           ; $7292: $ab
	rst  JumpTable                                         ; $7293: $df
	rst  $38                                         ; $7294: $ff
	rst  $38                                         ; $7295: $ff
	rst  $38                                         ; $7296: $ff
	rst  $38                                         ; $7297: $ff
	cp   $db                                         ; $7298: $fe $db
	sbc  c                                           ; $729a: $99
	ld   h, l                                        ; $729b: $65
	ld   b, d                                        ; $729c: $42
	ld   de, $1111                                   ; $729d: $11 $11 $11
	ld   de, $1211                                   ; $72a0: $11 $11 $12
	ld   b, [hl]                                     ; $72a3: $46
	sbc  d                                           ; $72a4: $9a
	adc  $ff                                         ; $72a5: $ce $ff
	rst  $38                                         ; $72a7: $ff
	rst  $38                                         ; $72a8: $ff
	rst  $38                                         ; $72a9: $ff
	rst  $38                                         ; $72aa: $ff
	db   $db                                         ; $72ab: $db
	xor  c                                           ; $72ac: $a9
	halt                                             ; $72ad: $76
	ld   d, h                                        ; $72ae: $54
	ld   hl, $1111                                   ; $72af: $21 $11 $11
	ld   de, $1111                                   ; $72b2: $11 $11 $11
	inc  [hl]                                        ; $72b5: $34
	ld   l, b                                        ; $72b6: $68
	sbc  e                                           ; $72b7: $9b
	xor  $ff                                         ; $72b8: $ee $ff
	rst  $38                                         ; $72ba: $ff
	rst  $38                                         ; $72bb: $ff
	rst  $38                                         ; $72bc: $ff
	db   $ed                                         ; $72bd: $ed
	jp   z, Jump_0d9_76a9                            ; $72be: $ca $a9 $76

	ld   d, e                                        ; $72c1: $53
	ld   [hl-], a                                    ; $72c2: $32
	ld   [de], a                                     ; $72c3: $12
	ld   hl, $1111                                   ; $72c4: $21 $11 $11
	ld   [de], a                                     ; $72c7: $12
	inc  [hl]                                        ; $72c8: $34
	ld   a, b                                        ; $72c9: $78
	adc  d                                           ; $72ca: $8a
	adc  $ef                                         ; $72cb: $ce $ef
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	rst  $38                                         ; $72cf: $ff
	db   $ec                                         ; $72d0: $ec
	cp   h                                           ; $72d1: $bc
	cp   c                                           ; $72d2: $b9
	add  a                                           ; $72d3: $87
	ld   h, l                                        ; $72d4: $65
	ld   d, h                                        ; $72d5: $54
	inc  [hl]                                        ; $72d6: $34
	ld   sp, $1101                                   ; $72d7: $31 $01 $11
	ld   [de], a                                     ; $72da: $12
	inc  hl                                          ; $72db: $23
	ld   d, [hl]                                     ; $72dc: $56
	ld   a, c                                        ; $72dd: $79
	cp   h                                           ; $72de: $bc
	rst  JumpTable                                         ; $72df: $df
	rst  $38                                         ; $72e0: $ff
	rst  $38                                         ; $72e1: $ff
	cp   $ee                                         ; $72e2: $fe $ee
	call $a9cb                                       ; $72e4: $cd $cb $a9
	add  a                                           ; $72e7: $87
	ld   h, [hl]                                     ; $72e8: $66
	ld   d, h                                        ; $72e9: $54
	ld   b, e                                        ; $72ea: $43
	ld   hl, $1111                                   ; $72eb: $21 $11 $11
	ld   [de], a                                     ; $72ee: $12
	inc  [hl]                                        ; $72ef: $34
	ld   d, a                                        ; $72f0: $57
	adc  d                                           ; $72f1: $8a
	xor  e                                           ; $72f2: $ab
	adc  $ee                                         ; $72f3: $ce $ee
	xor  $dd                                         ; $72f5: $ee $dd
	db   $ed                                         ; $72f7: $ed
	db   $dd                                         ; $72f8: $dd
	res  5, d                                        ; $72f9: $cb $aa
	sbc  c                                           ; $72fb: $99
	add  a                                           ; $72fc: $87
	ld   h, l                                        ; $72fd: $65
	ld   d, h                                        ; $72fe: $54
	ld   [hl-], a                                    ; $72ff: $32
	ld   hl, $1211                                   ; $7300: $21 $11 $12
	inc  hl                                          ; $7303: $23
	ld   b, l                                        ; $7304: $45
	ld   h, a                                        ; $7305: $67
	sbc  d                                           ; $7306: $9a
	xor  e                                           ; $7307: $ab
	call c, $eede                                    ; $7308: $dc $de $ee
	sbc  $dd                                         ; $730b: $de $dd
	db   $dd                                         ; $730d: $dd
	cp   e                                           ; $730e: $bb
	xor  d                                           ; $730f: $aa
	sbc  c                                           ; $7310: $99
	add  a                                           ; $7311: $87
	ld   h, l                                        ; $7312: $65
	ld   d, h                                        ; $7313: $54
	ld   b, e                                        ; $7314: $43
	ld   [hl+], a                                    ; $7315: $22
	ld   de, $2312                                   ; $7316: $11 $12 $23
	ld   b, l                                        ; $7319: $45
	ld   h, a                                        ; $731a: $67
	sbc  c                                           ; $731b: $99
	xor  e                                           ; $731c: $ab
	cp   h                                           ; $731d: $bc
	db   $dd                                         ; $731e: $dd
	db   $dd                                         ; $731f: $dd
	xor  $ed                                         ; $7320: $ee $ed
	db   $ed                                         ; $7322: $ed
	call $aabb                                       ; $7323: $cd $bb $aa
	adc  b                                           ; $7326: $88
	ld   [hl], a                                     ; $7327: $77
	ld   h, l                                        ; $7328: $65
	ld   b, e                                        ; $7329: $43
	ld   [hl+], a                                    ; $732a: $22
	ld   de, $1211                                   ; $732b: $11 $11 $12
	inc  [hl]                                        ; $732e: $34
	ld   d, [hl]                                     ; $732f: $56
	ld   a, b                                        ; $7330: $78
	sbc  c                                           ; $7331: $99
	xor  h                                           ; $7332: $ac
	cp   h                                           ; $7333: $bc
	call $dddd                                       ; $7334: $cd $dd $dd
	db   $dd                                         ; $7337: $dd
	call c, $bbcb                                    ; $7338: $dc $cb $bb
	sbc  b                                           ; $733b: $98
	ld   [hl], a                                     ; $733c: $77
	ld   h, [hl]                                     ; $733d: $66
	ld   d, h                                        ; $733e: $54
	ld   b, e                                        ; $733f: $43
	ld   [hl+], a                                    ; $7340: $22
	ld   de, $2312                                   ; $7341: $11 $12 $23
	inc  [hl]                                        ; $7344: $34
	ld   d, [hl]                                     ; $7345: $56
	ld   a, b                                        ; $7346: $78
	xor  d                                           ; $7347: $aa
	xor  e                                           ; $7348: $ab
	cp   h                                           ; $7349: $bc
	call z, $dddd                                    ; $734a: $cc $dd $dd
	db   $dd                                         ; $734d: $dd
	call c, $bacc                                    ; $734e: $dc $cc $ba
	sbc  b                                           ; $7351: $98
	sbc  c                                           ; $7352: $99
	ld   [hl], h                                     ; $7353: $74
	ld   b, l                                        ; $7354: $45
	ld   h, l                                        ; $7355: $65
	inc  sp                                          ; $7356: $33
	inc  sp                                          ; $7357: $33
	ld   [hl-], a                                    ; $7358: $32
	inc  hl                                          ; $7359: $23
	ld   b, h                                        ; $735a: $44
	ld   b, l                                        ; $735b: $45
	ld   a, b                                        ; $735c: $78
	adc  b                                           ; $735d: $88
	xor  e                                           ; $735e: $ab
	cp   e                                           ; $735f: $bb
	cp   e                                           ; $7360: $bb
	res  7, d                                        ; $7361: $cb $ba
	cp   e                                           ; $7363: $bb
	cp   e                                           ; $7364: $bb
	cp   e                                           ; $7365: $bb
	xor  e                                           ; $7366: $ab
	xor  d                                           ; $7367: $aa
	sbc  c                                           ; $7368: $99
	sbc  b                                           ; $7369: $98
	ld   [hl], a                                     ; $736a: $77
	ld   [hl], a                                     ; $736b: $77
	ld   h, l                                        ; $736c: $65
	ld   d, [hl]                                     ; $736d: $56
	ld   d, h                                        ; $736e: $54
	ld   b, h                                        ; $736f: $44
	ld   b, e                                        ; $7370: $43
	inc  [hl]                                        ; $7371: $34
	ld   d, l                                        ; $7372: $55
	ld   h, a                                        ; $7373: $67
	ld   a, b                                        ; $7374: $78
	sbc  c                                           ; $7375: $99
	xor  d                                           ; $7376: $aa
	cp   e                                           ; $7377: $bb
	xor  d                                           ; $7378: $aa
	cp   e                                           ; $7379: $bb
	xor  c                                           ; $737a: $a9
	xor  l                                           ; $737b: $ad
	cp   $a7                                         ; $737c: $fe $a7
	xor  l                                           ; $737e: $ad
	cp   c                                           ; $737f: $b9
	sbc  c                                           ; $7380: $99
	sub  a                                           ; $7381: $97
	ld   h, [hl]                                     ; $7382: $66
	ld   h, [hl]                                     ; $7383: $66
	ld   d, e                                        ; $7384: $53
	ld   b, [hl]                                     ; $7385: $46
	ld   d, e                                        ; $7386: $53
	inc  sp                                          ; $7387: $33
	ld   b, h                                        ; $7388: $44
	ld   b, h                                        ; $7389: $44
	ld   d, [hl]                                     ; $738a: $56
	adc  b                                           ; $738b: $88
	adc  d                                           ; $738c: $8a
	cp   d                                           ; $738d: $ba
	xor  e                                           ; $738e: $ab
	cp   e                                           ; $738f: $bb
	cp   e                                           ; $7390: $bb
	xor  d                                           ; $7391: $aa
	cp   e                                           ; $7392: $bb
	xor  d                                           ; $7393: $aa
	cp   e                                           ; $7394: $bb
	xor  d                                           ; $7395: $aa
	xor  c                                           ; $7396: $a9
	sbc  b                                           ; $7397: $98
	adc  c                                           ; $7398: $89
	add  l                                           ; $7399: $85
	inc  [hl]                                        ; $739a: $34
	ld   h, l                                        ; $739b: $65
	ld   b, h                                        ; $739c: $44
	inc  sp                                          ; $739d: $33
	ld   [hl-], a                                    ; $739e: $32
	inc  hl                                          ; $739f: $23
	ld   d, [hl]                                     ; $73a0: $56
	ld   d, [hl]                                     ; $73a1: $56
	adc  d                                           ; $73a2: $8a
	xor  d                                           ; $73a3: $aa
	cp   h                                           ; $73a4: $bc
	call z, $ccbb                                    ; $73a5: $cc $bb $cc
	cp   d                                           ; $73a8: $ba
	xor  e                                           ; $73a9: $ab
	cp   h                                           ; $73aa: $bc
	cp   h                                           ; $73ab: $bc
	xor  b                                           ; $73ac: $a8
	ld   [hl], a                                     ; $73ad: $77
	ld   [hl], a                                     ; $73ae: $77
	halt                                             ; $73af: $76
	ld   b, h                                        ; $73b0: $44
	ld   [hl-], a                                    ; $73b1: $32
	ld   b, [hl]                                     ; $73b2: $46
	ld   hl, $3234                                   ; $73b3: $21 $34 $32
	ld   b, [hl]                                     ; $73b6: $46
	ld   h, a                                        ; $73b7: $67
	sbc  d                                           ; $73b8: $9a
	cp   h                                           ; $73b9: $bc
	db   $ed                                         ; $73ba: $ed
	rst  JumpTable                                         ; $73bb: $df
	cp   $cc                                         ; $73bc: $fe $cc
	jp   z, $99aa                                    ; $73be: $ca $aa $99

	sbc  b                                           ; $73c1: $98
	ld   h, [hl]                                     ; $73c2: $66
	halt                                             ; $73c3: $76
	ld   d, [hl]                                     ; $73c4: $56
	ld   d, l                                        ; $73c5: $55
	ld   h, l                                        ; $73c6: $65
	ld   [hl+], a                                    ; $73c7: $22
	ld   d, l                                        ; $73c8: $55
	inc  [hl]                                        ; $73c9: $34
	ld   b, h                                        ; $73ca: $44
	ld   [hl], $76                                   ; $73cb: $36 $76
	adc  e                                           ; $73cd: $8b
	jp   z, $edce                                    ; $73ce: $ca $ce $ed

	sbc  $dd                                         ; $73d1: $de $dd
	db   $db                                         ; $73d3: $db
	sbc  c                                           ; $73d4: $99
	xor  b                                           ; $73d5: $a8
	ld   a, b                                        ; $73d6: $78
	add  a                                           ; $73d7: $87
	ld   [hl], a                                     ; $73d8: $77
	ld   h, l                                        ; $73d9: $65
	ld   h, [hl]                                     ; $73da: $66
	ld   b, e                                        ; $73db: $43
	inc  [hl]                                        ; $73dc: $34
	ld   d, e                                        ; $73dd: $53
	ld   [de], a                                     ; $73de: $12
	ld   [hl-], a                                    ; $73df: $32
	inc  d                                           ; $73e0: $14
	ld   h, [hl]                                     ; $73e1: $66
	adc  d                                           ; $73e2: $8a
	call z, $ffef                                    ; $73e3: $cc $ef $ff
	rst  $38                                         ; $73e6: $ff
	cp   $dc                                         ; $73e7: $fe $dc
	sbc  c                                           ; $73e9: $99
	add  a                                           ; $73ea: $87
	add  a                                           ; $73eb: $87
	ld   h, l                                        ; $73ec: $65
	ld   b, l                                        ; $73ed: $45
	ld   b, h                                        ; $73ee: $44
	ld   b, c                                        ; $73ef: $41
	ld   [de], a                                     ; $73f0: $12
	ld   [hl], e                                     ; $73f1: $73
	ld   de, $1133                                   ; $73f2: $11 $33 $11
	ld   [hl], a                                     ; $73f5: $77
	adc  e                                           ; $73f6: $8b
	rst  JumpTable                                         ; $73f7: $df
	rst  $38                                         ; $73f8: $ff
	rst  $38                                         ; $73f9: $ff
	rst  $38                                         ; $73fa: $ff
	rst  $38                                         ; $73fb: $ff
	db   $fd                                         ; $73fc: $fd
	xor  b                                           ; $73fd: $a8
	ld   [hl], h                                     ; $73fe: $74
	ld   b, [hl]                                     ; $73ff: $46
	ld   hl, $1111                                   ; $7400: $21 $11 $11
	ld   de, $2115                                   ; $7403: $11 $15 $21
	inc  d                                           ; $7406: $14
	ld   h, c                                        ; $7407: $61
	ld   e, e                                        ; $7408: $5b
	call $ffff                                       ; $7409: $cd $ff $ff
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	call c, Call_0d9_4495                            ; $740f: $dc $95 $44
	ld   de, $1121                                   ; $7412: $11 $21 $11
	ld   de, $1611                                   ; $7415: $11 $11 $16
	ld   de, $6435                                   ; $7418: $11 $35 $64
	sbc  l                                           ; $741b: $9d
	rst  JumpTable                                         ; $741c: $df
	rst  $38                                         ; $741d: $ff
	rst  $38                                         ; $741e: $ff
	rst  $38                                         ; $741f: $ff
	rst  $38                                         ; $7420: $ff
	cp   $c8                                         ; $7421: $fe $c8
	ld   d, h                                        ; $7423: $54
	ld   [hl-], a                                    ; $7424: $32
	ld   de, $1111                                   ; $7425: $11 $11 $11
	ld   de, $6211                                   ; $7428: $11 $11 $62
	inc  d                                           ; $742b: $14
	halt                                             ; $742c: $76
	ld   l, c                                        ; $742d: $69
	xor  $ff                                         ; $742e: $ee $ff
	rst  $38                                         ; $7430: $ff
	rst  $38                                         ; $7431: $ff
	rst  $38                                         ; $7432: $ff
	rst  $38                                         ; $7433: $ff
	cp   e                                           ; $7434: $bb
	ld   [hl], e                                     ; $7435: $73
	ld   [hl-], a                                    ; $7436: $32
	ld   de, $1111                                   ; $7437: $11 $11 $11
	ld   de, $5811                                   ; $743a: $11 $11 $58
	ld   de, $6868                                   ; $743d: $11 $68 $68
	adc  $ff                                         ; $7440: $ce $ff
	rst  $38                                         ; $7442: $ff
	rst  $38                                         ; $7443: $ff
	rst  $38                                         ; $7444: $ff
	cp   $c9                                         ; $7445: $fe $c9
	add  h                                           ; $7447: $84
	ld   [de], a                                     ; $7448: $12
	ld   hl, $1112                                   ; $7449: $21 $12 $11
	ld   de, $1711                                   ; $744c: $11 $11 $17
	add  c                                           ; $744f: $81
	rla                                              ; $7450: $17
	ld   a, b                                        ; $7451: $78
	sbc  h                                           ; $7452: $9c
	rst  $28                                         ; $7453: $ef
	rst  $38                                         ; $7454: $ff
	rst  $38                                         ; $7455: $ff
	rst  $38                                         ; $7456: $ff
	rst  $38                                         ; $7457: $ff
	jp   z, $3197                                    ; $7458: $ca $97 $31

	ld   hl, $3111                                   ; $745b: $21 $11 $31
	inc  hl                                          ; $745e: $23
	ld   de, $7811                                   ; $745f: $11 $11 $78
	ld   de, $9867                                   ; $7462: $11 $67 $98
	db   $dd                                         ; $7465: $dd
	rst  $38                                         ; $7466: $ff
	rst  $38                                         ; $7467: $ff
	rst  $38                                         ; $7468: $ff
	rst  $38                                         ; $7469: $ff
	db   $fc                                         ; $746a: $fc
	sbc  c                                           ; $746b: $99
	ld   [hl], h                                     ; $746c: $74
	ld   [de], a                                     ; $746d: $12
	ld   hl, $2223                                   ; $746e: $21 $23 $22
	ld   [hl-], a                                    ; $7471: $32
	ld   de, $9115                                   ; $7472: $11 $15 $91
	dec  d                                           ; $7475: $15
	ld   l, c                                        ; $7476: $69
	adc  l                                           ; $7477: $8d
	rst  JumpTable                                         ; $7478: $df
	rst  $38                                         ; $7479: $ff
	rst  $38                                         ; $747a: $ff
	rst  $38                                         ; $747b: $ff
	rst  $38                                         ; $747c: $ff
	jp   c, Jump_0d9_5198                            ; $747d: $da $98 $51

	ld   [hl+], a                                    ; $7480: $22
	ld   [de], a                                     ; $7481: $12
	inc  sp                                          ; $7482: $33
	inc  h                                           ; $7483: $24
	ld   sp, $4a11                                   ; $7484: $31 $11 $4a
	ld   de, $8746                                   ; $7487: $11 $46 $87
	call z, $ffef                                    ; $748a: $cc $ef $ff
	rst  $38                                         ; $748d: $ff
	rst  $38                                         ; $748e: $ff
	db   $fc                                         ; $748f: $fc
	sbc  b                                           ; $7490: $98
	sub  l                                           ; $7491: $95
	ld   de, $3421                                   ; $7492: $11 $21 $34
	ld   b, h                                        ; $7495: $44
	ld   d, [hl]                                     ; $7496: $56
	ld   de, $9611                                   ; $7497: $11 $11 $96
	ld   de, $7848                                   ; $749a: $11 $48 $78
	call z, $ffff                                    ; $749d: $cc $ff $ff
	rst  $38                                         ; $74a0: $ff
	rst  $38                                         ; $74a1: $ff
	db   $db                                         ; $74a2: $db
	adc  c                                           ; $74a3: $89
	add  e                                           ; $74a4: $83
	ld   [de], a                                     ; $74a5: $12
	inc  hl                                          ; $74a6: $23
	ld   b, h                                        ; $74a7: $44
	ld   b, l                                        ; $74a8: $45
	ld   [hl], h                                     ; $74a9: $74
	ld   de, $9115                                   ; $74aa: $11 $15 $91
	ld   [de], a                                     ; $74ad: $12
	ld   h, a                                        ; $74ae: $67
	ld   a, e                                        ; $74af: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74b0: $cf
	rst  $38                                         ; $74b1: $ff
	rst  $38                                         ; $74b2: $ff
	rst  $38                                         ; $74b3: $ff
	cp   $b8                                         ; $74b4: $fe $b8
	adc  c                                           ; $74b6: $89
	ld   d, c                                        ; $74b7: $51
	ld   [hl+], a                                    ; $74b8: $22
	inc  [hl]                                        ; $74b9: $34
	ld   d, l                                        ; $74ba: $55
	ld   d, a                                        ; $74bb: $57
	ld   [hl], d                                     ; $74bc: $72
	ld   de, $6119                                   ; $74bd: $11 $19 $61
	inc  d                                           ; $74c0: $14
	ld   [hl], a                                     ; $74c1: $77
	sbc  e                                           ; $74c2: $9b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74c3: $cf
	rst  $38                                         ; $74c4: $ff
	rst  $38                                         ; $74c5: $ff
	rst  $38                                         ; $74c6: $ff
	db   $fc                                         ; $74c7: $fc
	and  a                                           ; $74c8: $a7
	sbc  b                                           ; $74c9: $98
	ld   [hl-], a                                    ; $74ca: $32
	inc  sp                                          ; $74cb: $33
	ld   d, [hl]                                     ; $74cc: $56
	ld   h, [hl]                                     ; $74cd: $66
	ld   a, c                                        ; $74ce: $79
	ld   d, c                                        ; $74cf: $51
	ld   de, $2119                                   ; $74d0: $11 $19 $21
	dec  d                                           ; $74d3: $15
	ld   h, a                                        ; $74d4: $67
	sbc  e                                           ; $74d5: $9b
	rst  JumpTable                                         ; $74d6: $df
	rst  $38                                         ; $74d7: $ff
	rst  $38                                         ; $74d8: $ff
	rst  $38                                         ; $74d9: $ff
	jp   c, $9677                                    ; $74da: $da $77 $96

	inc  hl                                          ; $74dd: $23
	ld   b, h                                        ; $74de: $44
	ld   l, b                                        ; $74df: $68
	ld   [hl], a                                     ; $74e0: $77
	sbc  d                                           ; $74e1: $9a
	ld   d, c                                        ; $74e2: $51
	ld   de, $1138                                   ; $74e3: $11 $38 $11
	dec  d                                           ; $74e6: $15
	ld   d, [hl]                                     ; $74e7: $56
	sbc  e                                           ; $74e8: $9b
	rst  JumpTable                                         ; $74e9: $df
	rst  $38                                         ; $74ea: $ff
	rst  $38                                         ; $74eb: $ff
	rst  $38                                         ; $74ec: $ff
	jp   z, $8667                                    ; $74ed: $ca $67 $86

	inc  sp                                          ; $74f0: $33
	ld   d, l                                        ; $74f1: $55
	ld   a, b                                        ; $74f2: $78
	sbc  b                                           ; $74f3: $98
	xor  d                                           ; $74f4: $aa
	ld   h, d                                        ; $74f5: $62
	ld   de, $1127                                   ; $74f6: $11 $27 $11
	inc  d                                           ; $74f9: $14
	ld   d, [hl]                                     ; $74fa: $56
	adc  e                                           ; $74fb: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74fc: $cf
	rst  $38                                         ; $74fd: $ff
	rst  $38                                         ; $74fe: $ff
	cp   $ca                                         ; $74ff: $fe $ca
	ld   d, [hl]                                     ; $7501: $56
	add  [hl]                                        ; $7502: $86
	ld   b, l                                        ; $7503: $45
	ld   d, l                                        ; $7504: $55
	adc  c                                           ; $7505: $89
	xor  d                                           ; $7506: $aa
	xor  e                                           ; $7507: $ab
	ld   [hl], h                                     ; $7508: $74
	ld   de, $1116                                   ; $7509: $11 $16 $11
	inc  de                                          ; $750c: $13
	ld   b, [hl]                                     ; $750d: $46
	adc  e                                           ; $750e: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $750f: $cf
	rst  $38                                         ; $7510: $ff
	rst  $38                                         ; $7511: $ff
	cp   $cb                                         ; $7512: $fe $cb
	ld   d, [hl]                                     ; $7514: $56
	add  [hl]                                        ; $7515: $86
	ld   b, l                                        ; $7516: $45
	ld   h, l                                        ; $7517: $65
	adc  e                                           ; $7518: $8b
	xor  c                                           ; $7519: $a9
	bit  6, l                                        ; $751a: $cb $75
	ld   de, $1116                                   ; $751c: $11 $16 $11
	inc  de                                          ; $751f: $13
	dec  [hl]                                        ; $7520: $35
	adc  d                                           ; $7521: $8a
	cp   a                                           ; $7522: $bf
	rst  $38                                         ; $7523: $ff
	rst  $38                                         ; $7524: $ff
	db   $fd                                         ; $7525: $fd
	cp   c                                           ; $7526: $b9
	ld   d, l                                        ; $7527: $55
	ld   h, l                                        ; $7528: $65
	ld   d, [hl]                                     ; $7529: $56
	halt                                             ; $752a: $76
	sbc  e                                           ; $752b: $9b
	cp   h                                           ; $752c: $bc
	res  2, a                                        ; $752d: $cb $97
	ld   hl, $2114                                   ; $752f: $21 $14 $21
	ld   de, $7925                                   ; $7532: $11 $25 $79
	xor  a                                           ; $7535: $af
	rst  $38                                         ; $7536: $ff
	rst  $38                                         ; $7537: $ff
	cp   $da                                         ; $7538: $fe $da
	ld   h, [hl]                                     ; $753a: $66
	ld   h, e                                        ; $753b: $63
	ld   [hl], $66                                   ; $753c: $36 $66
	sbc  e                                           ; $753e: $9b
	cp   h                                           ; $753f: $bc
	db   $eb                                         ; $7540: $eb
	xor  d                                           ; $7541: $aa
	ld   h, c                                        ; $7542: $61
	ld   [de], a                                     ; $7543: $12
	ld   sp, $1311                                   ; $7544: $31 $11 $13
	ld   h, a                                        ; $7547: $67
	adc  h                                           ; $7548: $8c
	rst  $38                                         ; $7549: $ff
	rst  $38                                         ; $754a: $ff
	rst  $38                                         ; $754b: $ff
	call c, Call_0d9_6475                            ; $754c: $dc $75 $64
	dec  [hl]                                        ; $754f: $35
	halt                                             ; $7550: $76
	adc  d                                           ; $7551: $8a
	cp   e                                           ; $7552: $bb
	db   $ed                                         ; $7553: $ed
	xor  e                                           ; $7554: $ab
	and  h                                           ; $7555: $a4
	ld   de, $1131                                   ; $7556: $11 $31 $11
	ld   de, $7a46                                   ; $7559: $11 $46 $7a
	rst  $28                                         ; $755c: $ef
	rst  $38                                         ; $755d: $ff
	rst  $38                                         ; $755e: $ff
	db   $ed                                         ; $755f: $ed
	sub  [hl]                                        ; $7560: $96
	ld   h, l                                        ; $7561: $65
	inc  sp                                          ; $7562: $33
	ld   b, [hl]                                     ; $7563: $46
	adc  d                                           ; $7564: $8a
	cp   e                                           ; $7565: $bb
	sbc  $cb                                         ; $7566: $de $cb
	xor  b                                           ; $7568: $a8
	ld   b, c                                        ; $7569: $41
	ld   [hl+], a                                    ; $756a: $22
	ld   de, $1411                                   ; $756b: $11 $11 $14
	ld   l, b                                        ; $756e: $68
	xor  [hl]                                        ; $756f: $ae
	rst  $38                                         ; $7570: $ff
	rst  $38                                         ; $7571: $ff
	cp   $d9                                         ; $7572: $fe $d9
	halt                                             ; $7574: $76
	ld   b, e                                        ; $7575: $43
	inc  [hl]                                        ; $7576: $34
	ld   d, a                                        ; $7577: $57
	sbc  d                                           ; $7578: $9a
	cp   l                                           ; $7579: $bd
	db   $ec                                         ; $757a: $ec
	jp   z, $2296                                    ; $757b: $ca $96 $22

	ld   sp, $1211                                   ; $757e: $31 $11 $12
	ld   b, [hl]                                     ; $7581: $46
	ld   a, d                                        ; $7582: $7a
	sbc  $ff                                         ; $7583: $de $ff
	rst  $38                                         ; $7585: $ff
	call c, $75a8                                    ; $7586: $dc $a8 $75
	inc  [hl]                                        ; $7589: $34
	ld   d, l                                        ; $758a: $55
	ld   l, b                                        ; $758b: $68
	sbc  e                                           ; $758c: $9b
	adc  $cc                                         ; $758d: $ce $cc
	cp   c                                           ; $758f: $b9
	ld   [hl], e                                     ; $7590: $73
	inc  sp                                          ; $7591: $33
	ld   hl, $2411                                   ; $7592: $21 $11 $24
	ld   h, a                                        ; $7595: $67
	sbc  e                                           ; $7596: $9b
	rst  JumpTable                                         ; $7597: $df
	rst  $28                                         ; $7598: $ef

Call_0d9_7599:
	xor  $ca                                         ; $7599: $ee $ca
	sub  a                                           ; $759b: $97
	ld   h, l                                        ; $759c: $65
	ld   b, h                                        ; $759d: $44
	ld   d, [hl]                                     ; $759e: $56
	adc  d                                           ; $759f: $8a
	cp   h                                           ; $75a0: $bc
	db   $dd                                         ; $75a1: $dd
	res  0, [hl]                                     ; $75a2: $cb $86
	ld   d, e                                        ; $75a4: $53
	ld   b, e                                        ; $75a5: $43
	ld   de, $3513                                   ; $75a6: $11 $13 $35
	ld   a, b                                        ; $75a9: $78
	cp   h                                           ; $75aa: $bc
	xor  $ee                                         ; $75ab: $ee $ee
	call z, Call_0d9_76b8                            ; $75ad: $cc $b8 $76
	ld   d, h                                        ; $75b0: $54
	ld   d, l                                        ; $75b1: $55
	ld   d, a                                        ; $75b2: $57
	adc  d                                           ; $75b3: $8a
	call z, $dbdd                                    ; $75b4: $cc $dd $db
	add  a                                           ; $75b7: $87
	ld   d, d                                        ; $75b8: $52

Call_0d9_75b9:
	inc  sp                                          ; $75b9: $33
	ld   de, $3513                                   ; $75ba: $11 $13 $35
	adc  c                                           ; $75bd: $89
	call $feee                                       ; $75be: $cd $ee $fe
	call c, Call_0d9_65a9                            ; $75c1: $dc $a9 $65
	ld   b, e                                        ; $75c4: $43
	ld   b, h                                        ; $75c5: $44
	ld   d, [hl]                                     ; $75c6: $56
	adc  d                                           ; $75c7: $8a
	cp   l                                           ; $75c8: $bd
	xor  $ed                                         ; $75c9: $ee $ed
	jp   z, $3174                                    ; $75cb: $ca $74 $31

	ld   hl, $1311                                   ; $75ce: $21 $11 $13
	ld   b, a                                        ; $75d1: $47
	sbc  e                                           ; $75d2: $9b
	xor  $ff                                         ; $75d3: $ee $ff
	cp   $db                                         ; $75d5: $fe $db
	sub  a                                           ; $75d7: $97
	ld   d, h                                        ; $75d8: $54
	ld   [hl+], a                                    ; $75d9: $22
	inc  sp                                          ; $75da: $33
	ld   d, [hl]                                     ; $75db: $56
	adc  d                                           ; $75dc: $8a
	call $efef                                       ; $75dd: $cd $ef $ef
	db   $db                                         ; $75e0: $db
	sub  [hl]                                        ; $75e1: $96
	ld   b, d                                        ; $75e2: $42
	ld   de, $1111                                   ; $75e3: $11 $11 $11
	dec  [hl]                                        ; $75e6: $35
	ld   a, c                                        ; $75e7: $79
	cp   l                                           ; $75e8: $bd
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	db   $ec                                         ; $75eb: $ec
	cp   c                                           ; $75ec: $b9
	ld   [hl], l                                     ; $75ed: $75
	ld   b, e                                        ; $75ee: $43
	ld   [hl+], a                                    ; $75ef: $22
	inc  [hl]                                        ; $75f0: $34
	ld   d, [hl]                                     ; $75f1: $56
	sbc  d                                           ; $75f2: $9a
	call $eedf                                       ; $75f3: $cd $df $ee
	db   $ec                                         ; $75f6: $ec
	xor  b                                           ; $75f7: $a8
	ld   [hl], l                                     ; $75f8: $75
	ld   sp, $1111                                   ; $75f9: $31 $11 $11
	inc  hl                                          ; $75fc: $23
	ld   b, a                                        ; $75fd: $47
	xor  e                                           ; $75fe: $ab
	call $feff                                       ; $75ff: $cd $ff $fe
	db   $db                                         ; $7602: $db
	xor  b                                           ; $7603: $a8
	ld   h, h                                        ; $7604: $64
	inc  sp                                          ; $7605: $33
	ld   [hl+], a                                    ; $7606: $22
	inc  [hl]                                        ; $7607: $34
	ld   d, [hl]                                     ; $7608: $56
	adc  d                                           ; $7609: $8a
	xor  h                                           ; $760a: $ac
	call $ccdc                                       ; $760b: $cd $dc $cc
	xor  c                                           ; $760e: $a9
	add  [hl]                                        ; $760f: $86
	ld   h, l                                        ; $7610: $65
	ld   d, h                                        ; $7611: $54
	ld   d, l                                        ; $7612: $55
	ld   d, [hl]                                     ; $7613: $56
	ld   [hl], a                                     ; $7614: $77
	adc  b                                           ; $7615: $88
	adc  c                                           ; $7616: $89
	sbc  c                                           ; $7617: $99
	sbc  c                                           ; $7618: $99
	sbc  b                                           ; $7619: $98
	sbc  b                                           ; $761a: $98
	ld   a, b                                        ; $761b: $78
	adc  b                                           ; $761c: $88
	adc  b                                           ; $761d: $88
	adc  b                                           ; $761e: $88
	sbc  b                                           ; $761f: $98
	adc  b                                           ; $7620: $88
	adc  b                                           ; $7621: $88
	adc  b                                           ; $7622: $88
	ld   a, b                                        ; $7623: $78
	adc  b                                           ; $7624: $88
	adc  b                                           ; $7625: $88
	sbc  c                                           ; $7626: $99
	adc  c                                           ; $7627: $89
	sbc  c                                           ; $7628: $99
	sbc  c                                           ; $7629: $99
	adc  b                                           ; $762a: $88
	adc  b                                           ; $762b: $88
	adc  b                                           ; $762c: $88
	adc  b                                           ; $762d: $88
	adc  c                                           ; $762e: $89
	adc  b                                           ; $762f: $88
	sbc  c                                           ; $7630: $99
	sbc  c                                           ; $7631: $99
	sbc  c                                           ; $7632: $99
	sbc  b                                           ; $7633: $98
	sbc  b                                           ; $7634: $98
	ld   [hl], a                                     ; $7635: $77
	halt                                             ; $7636: $76
	ld   h, l                                        ; $7637: $65
	ld   d, l                                        ; $7638: $55
	ld   h, [hl]                                     ; $7639: $66
	ld   [hl], a                                     ; $763a: $77
	adc  b                                           ; $763b: $88
	sbc  d                                           ; $763c: $9a
	sbc  d                                           ; $763d: $9a
	xor  e                                           ; $763e: $ab
	xor  d                                           ; $763f: $aa
	sbc  c                                           ; $7640: $99
	add  a                                           ; $7641: $87
	halt                                             ; $7642: $76
	ld   h, [hl]                                     ; $7643: $66
	ld   h, [hl]                                     ; $7644: $66
	ld   [hl], a                                     ; $7645: $77
	adc  c                                           ; $7646: $89
	adc  c                                           ; $7647: $89
	xor  c                                           ; $7648: $a9
	sbc  d                                           ; $7649: $9a
	xor  c                                           ; $764a: $a9
	adc  b                                           ; $764b: $88
	add  a                                           ; $764c: $87
	ld   [hl], a                                     ; $764d: $77
	ld   [hl], a                                     ; $764e: $77
	ld   [hl], a                                     ; $764f: $77
	ld   a, b                                        ; $7650: $78
	sbc  b                                           ; $7651: $98
	sbc  c                                           ; $7652: $99
	sbc  c                                           ; $7653: $99
	sbc  c                                           ; $7654: $99
	sbc  b                                           ; $7655: $98
	add  a                                           ; $7656: $87
	ld   [hl], a                                     ; $7657: $77
	halt                                             ; $7658: $76
	ld   [hl], a                                     ; $7659: $77
	ld   a, b                                        ; $765a: $78
	adc  c                                           ; $765b: $89
	adc  c                                           ; $765c: $89
	sbc  c                                           ; $765d: $99
	sbc  c                                           ; $765e: $99
	sbc  c                                           ; $765f: $99
	add  a                                           ; $7660: $87
	ld   [hl], a                                     ; $7661: $77
	ld   h, [hl]                                     ; $7662: $66
	ld   h, a                                        ; $7663: $67
	ld   [hl], a                                     ; $7664: $77
	ld   [hl], a                                     ; $7665: $77
	ld   [hl], a                                     ; $7666: $77
	adc  b                                           ; $7667: $88
	adc  b                                           ; $7668: $88
	adc  c                                           ; $7669: $89
	sbc  c                                           ; $766a: $99
	adc  b                                           ; $766b: $88
	sbc  c                                           ; $766c: $99
	sbc  b                                           ; $766d: $98
	adc  b                                           ; $766e: $88
	add  a                                           ; $766f: $87
	adc  b                                           ; $7670: $88
	adc  c                                           ; $7671: $89
	adc  c                                           ; $7672: $89
	adc  b                                           ; $7673: $88
	adc  b                                           ; $7674: $88
	sbc  c                                           ; $7675: $99
	sbc  b                                           ; $7676: $98
	add  a                                           ; $7677: $87
	ld   [hl], a                                     ; $7678: $77
	ld   [hl], a                                     ; $7679: $77
	ld   [hl], a                                     ; $767a: $77
	ld   a, b                                        ; $767b: $78
	adc  c                                           ; $767c: $89
	adc  c                                           ; $767d: $89
	sbc  c                                           ; $767e: $99
	sbc  c                                           ; $767f: $99
	adc  b                                           ; $7680: $88
	sbc  b                                           ; $7681: $98
	ld   [hl], a                                     ; $7682: $77
	ld   [hl], a                                     ; $7683: $77
	ld   [hl], a                                     ; $7684: $77
	ld   [hl], a                                     ; $7685: $77
	adc  b                                           ; $7686: $88
	sbc  c                                           ; $7687: $99
	sbc  c                                           ; $7688: $99
	sbc  c                                           ; $7689: $99
	sbc  b                                           ; $768a: $98
	adc  b                                           ; $768b: $88
	ld   [hl], a                                     ; $768c: $77
	ld   [hl], a                                     ; $768d: $77
	ld   [hl], a                                     ; $768e: $77
	ld   [hl], a                                     ; $768f: $77
	adc  b                                           ; $7690: $88
	sbc  c                                           ; $7691: $99
	adc  b                                           ; $7692: $88
	adc  b                                           ; $7693: $88
	sbc  b                                           ; $7694: $98
	ld   [hl], a                                     ; $7695: $77
	ld   [hl], a                                     ; $7696: $77
	ld   [hl], a                                     ; $7697: $77
	ld   [hl], a                                     ; $7698: $77
	ld   a, b                                        ; $7699: $78
	adc  c                                           ; $769a: $89
	sbc  c                                           ; $769b: $99
	sbc  d                                           ; $769c: $9a
	sbc  c                                           ; $769d: $99
	sbc  b                                           ; $769e: $98
	adc  b                                           ; $769f: $88
	add  a                                           ; $76a0: $87
	ld   [hl], a                                     ; $76a1: $77
	ld   [hl], a                                     ; $76a2: $77
	ld   [hl], a                                     ; $76a3: $77
	ld   a, b                                        ; $76a4: $78
	adc  b                                           ; $76a5: $88
	adc  b                                           ; $76a6: $88
	adc  c                                           ; $76a7: $89
	sbc  b                                           ; $76a8: $98

Call_0d9_76a9:
Jump_0d9_76a9:
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	ld   [hl], a                                     ; $76ac: $77
	ld   [hl], a                                     ; $76ad: $77
	ld   [hl], a                                     ; $76ae: $77
	ld   a, b                                        ; $76af: $78
	adc  b                                           ; $76b0: $88
	adc  c                                           ; $76b1: $89
	sbc  c                                           ; $76b2: $99
	sbc  c                                           ; $76b3: $99
	sbc  c                                           ; $76b4: $99
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88

Call_0d9_76b8:
	add  a                                           ; $76b8: $87
	ld   [hl], a                                     ; $76b9: $77

Call_0d9_76ba:
	ld   a, b                                        ; $76ba: $78
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  c                                           ; $76bf: $89
	sbc  c                                           ; $76c0: $99
	sbc  c                                           ; $76c1: $99
	adc  c                                           ; $76c2: $89
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	ld   [hl], a                                     ; $76c6: $77
	ld   [hl], a                                     ; $76c7: $77
	ld   [hl], a                                     ; $76c8: $77
	ld   [hl], a                                     ; $76c9: $77
	adc  b                                           ; $76ca: $88
	adc  c                                           ; $76cb: $89
	sbc  b                                           ; $76cc: $98
	adc  b                                           ; $76cd: $88
	sbc  c                                           ; $76ce: $99
	sbc  c                                           ; $76cf: $99
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	add  a                                           ; $76d2: $87
	ld   [hl], a                                     ; $76d3: $77
	ld   a, b                                        ; $76d4: $78
	adc  b                                           ; $76d5: $88
	adc  b                                           ; $76d6: $88
	sbc  b                                           ; $76d7: $98
	adc  b                                           ; $76d8: $88
	adc  b                                           ; $76d9: $88
	adc  c                                           ; $76da: $89
	adc  b                                           ; $76db: $88
	add  a                                           ; $76dc: $87
	ld   [hl], a                                     ; $76dd: $77
	ld   [hl], a                                     ; $76de: $77
	ld   [hl], a                                     ; $76df: $77
	ld   [hl], a                                     ; $76e0: $77
	adc  b                                           ; $76e1: $88
	sbc  c                                           ; $76e2: $99
	sbc  b                                           ; $76e3: $98
	adc  b                                           ; $76e4: $88
	adc  c                                           ; $76e5: $89
	sbc  c                                           ; $76e6: $99
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	ld   a, b                                        ; $76e9: $78
	add  a                                           ; $76ea: $87
	ld   a, b                                        ; $76eb: $78
	adc  b                                           ; $76ec: $88
	adc  b                                           ; $76ed: $88
	adc  b                                           ; $76ee: $88
	adc  b                                           ; $76ef: $88
	sbc  b                                           ; $76f0: $98
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

Call_0d9_77a8:
	adc  b                                           ; $77a8: $88
	adc  b                                           ; $77a9: $88

Jump_0d9_77aa:
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
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88

Call_0d9_78db:
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	adc  b                                           ; $78f0: $88
	adc  b                                           ; $78f1: $88
	adc  b                                           ; $78f2: $88
	adc  b                                           ; $78f3: $88
	adc  b                                           ; $78f4: $88
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  b                                           ; $78fc: $88
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	adc  b                                           ; $7905: $88
	adc  b                                           ; $7906: $88
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	adc  b                                           ; $790a: $88
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	adc  b                                           ; $7911: $88
	adc  b                                           ; $7912: $88
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	adc  b                                           ; $7939: $88
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	adc  b                                           ; $7947: $88
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	adc  b                                           ; $795e: $88
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	adc  b                                           ; $7973: $88
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	adc  b                                           ; $7978: $88
	adc  b                                           ; $7979: $88
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88
	adc  b                                           ; $79b6: $88
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	adc  b                                           ; $79c5: $88
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  b                                           ; $79d7: $88
	adc  b                                           ; $79d8: $88
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	adc  b                                           ; $79de: $88
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	adc  b                                           ; $79e1: $88
	adc  b                                           ; $79e2: $88
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	adc  b                                           ; $79e5: $88
	adc  b                                           ; $79e6: $88
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	adc  b                                           ; $79e9: $88
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  b                                           ; $79ee: $88
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	adc  b                                           ; $79f1: $88
	adc  b                                           ; $79f2: $88
	adc  b                                           ; $79f3: $88
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	adc  b                                           ; $79fd: $88
	adc  b                                           ; $79fe: $88
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	adc  b                                           ; $7a02: $88
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
	adc  b                                           ; $7a09: $88
	adc  b                                           ; $7a0a: $88
	adc  b                                           ; $7a0b: $88
	adc  b                                           ; $7a0c: $88
	adc  b                                           ; $7a0d: $88
	adc  b                                           ; $7a0e: $88
	adc  b                                           ; $7a0f: $88
	adc  b                                           ; $7a10: $88
	adc  b                                           ; $7a11: $88
	adc  b                                           ; $7a12: $88
	adc  b                                           ; $7a13: $88
	adc  b                                           ; $7a14: $88
	adc  b                                           ; $7a15: $88
	adc  b                                           ; $7a16: $88
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	adc  b                                           ; $7a1a: $88
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	adc  b                                           ; $7a54: $88
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	adc  b                                           ; $7a59: $88
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	adc  b                                           ; $7a64: $88
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	adc  b                                           ; $7a69: $88
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  b                                           ; $7a7d: $88
	adc  b                                           ; $7a7e: $88
	adc  b                                           ; $7a7f: $88
	adc  b                                           ; $7a80: $88
	adc  b                                           ; $7a81: $88
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  b                                           ; $7a85: $88
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  b                                           ; $7a89: $88
	adc  b                                           ; $7a8a: $88
	adc  b                                           ; $7a8b: $88
	adc  b                                           ; $7a8c: $88
	adc  b                                           ; $7a8d: $88
	adc  b                                           ; $7a8e: $88
	adc  b                                           ; $7a8f: $88
	adc  b                                           ; $7a90: $88
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	adc  b                                           ; $7a99: $88
	adc  b                                           ; $7a9a: $88
	adc  b                                           ; $7a9b: $88
	adc  b                                           ; $7a9c: $88
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	adc  b                                           ; $7aa0: $88
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  b                                           ; $7abc: $88
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	adc  b                                           ; $7abf: $88
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
	adc  b                                           ; $7ac3: $88
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  b                                           ; $7ae2: $88
	adc  b                                           ; $7ae3: $88
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	adc  b                                           ; $7af3: $88
	adc  b                                           ; $7af4: $88
	adc  b                                           ; $7af5: $88
	adc  b                                           ; $7af6: $88
	adc  b                                           ; $7af7: $88
	adc  b                                           ; $7af8: $88
	adc  b                                           ; $7af9: $88
	adc  b                                           ; $7afa: $88
	adc  b                                           ; $7afb: $88
	adc  b                                           ; $7afc: $88
	adc  b                                           ; $7afd: $88
	adc  b                                           ; $7afe: $88
	adc  b                                           ; $7aff: $88
	adc  b                                           ; $7b00: $88
	adc  b                                           ; $7b01: $88
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	adc  b                                           ; $7b06: $88
	adc  b                                           ; $7b07: $88
	adc  b                                           ; $7b08: $88
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  b                                           ; $7b0e: $88
	adc  b                                           ; $7b0f: $88
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	adc  b                                           ; $7b12: $88
	adc  b                                           ; $7b13: $88
	adc  b                                           ; $7b14: $88
	adc  b                                           ; $7b15: $88
	adc  b                                           ; $7b16: $88
	adc  b                                           ; $7b17: $88
	adc  b                                           ; $7b18: $88
	adc  b                                           ; $7b19: $88
	adc  b                                           ; $7b1a: $88
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	adc  b                                           ; $7b1e: $88
	adc  b                                           ; $7b1f: $88
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
	adc  b                                           ; $7b22: $88
	adc  b                                           ; $7b23: $88
	adc  b                                           ; $7b24: $88
	adc  b                                           ; $7b25: $88
	adc  b                                           ; $7b26: $88
	adc  b                                           ; $7b27: $88
	adc  b                                           ; $7b28: $88
	adc  b                                           ; $7b29: $88
	adc  b                                           ; $7b2a: $88
	adc  b                                           ; $7b2b: $88
	adc  b                                           ; $7b2c: $88
	adc  b                                           ; $7b2d: $88
	adc  b                                           ; $7b2e: $88
	adc  b                                           ; $7b2f: $88
	adc  b                                           ; $7b30: $88
	adc  b                                           ; $7b31: $88
	adc  b                                           ; $7b32: $88
	adc  b                                           ; $7b33: $88
	adc  b                                           ; $7b34: $88
	adc  b                                           ; $7b35: $88
	adc  b                                           ; $7b36: $88
	adc  b                                           ; $7b37: $88
	adc  b                                           ; $7b38: $88
	adc  b                                           ; $7b39: $88
	adc  b                                           ; $7b3a: $88
	adc  b                                           ; $7b3b: $88
	adc  b                                           ; $7b3c: $88
	adc  b                                           ; $7b3d: $88
	adc  b                                           ; $7b3e: $88
	adc  b                                           ; $7b3f: $88
	adc  b                                           ; $7b40: $88
	adc  b                                           ; $7b41: $88
	adc  b                                           ; $7b42: $88
	adc  b                                           ; $7b43: $88
	adc  b                                           ; $7b44: $88
	adc  b                                           ; $7b45: $88
	adc  b                                           ; $7b46: $88
	adc  b                                           ; $7b47: $88
	adc  b                                           ; $7b48: $88
	adc  b                                           ; $7b49: $88
	adc  b                                           ; $7b4a: $88
	adc  b                                           ; $7b4b: $88
	adc  b                                           ; $7b4c: $88
	adc  b                                           ; $7b4d: $88
	adc  b                                           ; $7b4e: $88
	adc  b                                           ; $7b4f: $88
	adc  b                                           ; $7b50: $88
	adc  b                                           ; $7b51: $88
	adc  b                                           ; $7b52: $88
	adc  b                                           ; $7b53: $88
	adc  b                                           ; $7b54: $88
	adc  b                                           ; $7b55: $88
	adc  b                                           ; $7b56: $88
	adc  b                                           ; $7b57: $88
	adc  b                                           ; $7b58: $88
	adc  b                                           ; $7b59: $88
	adc  b                                           ; $7b5a: $88
	adc  b                                           ; $7b5b: $88
	adc  b                                           ; $7b5c: $88
	adc  b                                           ; $7b5d: $88
	adc  b                                           ; $7b5e: $88
	adc  b                                           ; $7b5f: $88
	adc  b                                           ; $7b60: $88
	adc  b                                           ; $7b61: $88
	adc  b                                           ; $7b62: $88
	adc  b                                           ; $7b63: $88
	adc  b                                           ; $7b64: $88
	adc  b                                           ; $7b65: $88
	adc  b                                           ; $7b66: $88
	adc  b                                           ; $7b67: $88
	adc  b                                           ; $7b68: $88
	adc  b                                           ; $7b69: $88
	adc  b                                           ; $7b6a: $88
	adc  b                                           ; $7b6b: $88
	adc  b                                           ; $7b6c: $88
	adc  b                                           ; $7b6d: $88
	adc  b                                           ; $7b6e: $88
	adc  b                                           ; $7b6f: $88
	adc  b                                           ; $7b70: $88
	adc  b                                           ; $7b71: $88
	adc  b                                           ; $7b72: $88
	adc  b                                           ; $7b73: $88
	adc  b                                           ; $7b74: $88
	adc  b                                           ; $7b75: $88
	adc  b                                           ; $7b76: $88
	adc  b                                           ; $7b77: $88
	adc  b                                           ; $7b78: $88
	adc  b                                           ; $7b79: $88
	adc  b                                           ; $7b7a: $88
	adc  b                                           ; $7b7b: $88
	adc  b                                           ; $7b7c: $88
	adc  b                                           ; $7b7d: $88
	adc  b                                           ; $7b7e: $88
	adc  b                                           ; $7b7f: $88
	adc  b                                           ; $7b80: $88
	adc  b                                           ; $7b81: $88
	adc  b                                           ; $7b82: $88
	adc  b                                           ; $7b83: $88
	adc  b                                           ; $7b84: $88
	adc  b                                           ; $7b85: $88
	adc  b                                           ; $7b86: $88
	adc  b                                           ; $7b87: $88
	adc  b                                           ; $7b88: $88
	adc  b                                           ; $7b89: $88
	adc  b                                           ; $7b8a: $88
	adc  b                                           ; $7b8b: $88
	adc  b                                           ; $7b8c: $88
	adc  b                                           ; $7b8d: $88
	adc  b                                           ; $7b8e: $88
	adc  b                                           ; $7b8f: $88
	adc  b                                           ; $7b90: $88
	adc  b                                           ; $7b91: $88
	adc  b                                           ; $7b92: $88
	adc  b                                           ; $7b93: $88
	adc  b                                           ; $7b94: $88
	adc  b                                           ; $7b95: $88
	adc  b                                           ; $7b96: $88
	adc  b                                           ; $7b97: $88
	adc  b                                           ; $7b98: $88
	adc  b                                           ; $7b99: $88
	adc  b                                           ; $7b9a: $88
	adc  b                                           ; $7b9b: $88
	adc  b                                           ; $7b9c: $88
	adc  b                                           ; $7b9d: $88
	adc  b                                           ; $7b9e: $88
	adc  b                                           ; $7b9f: $88
	adc  b                                           ; $7ba0: $88
	adc  b                                           ; $7ba1: $88
	adc  b                                           ; $7ba2: $88
	adc  b                                           ; $7ba3: $88
	adc  b                                           ; $7ba4: $88
	adc  b                                           ; $7ba5: $88
	adc  b                                           ; $7ba6: $88
	adc  b                                           ; $7ba7: $88
	adc  b                                           ; $7ba8: $88
	adc  b                                           ; $7ba9: $88
	adc  b                                           ; $7baa: $88
	adc  b                                           ; $7bab: $88
	adc  b                                           ; $7bac: $88
	adc  b                                           ; $7bad: $88
	adc  b                                           ; $7bae: $88
	adc  b                                           ; $7baf: $88
	adc  b                                           ; $7bb0: $88
	adc  b                                           ; $7bb1: $88
	adc  b                                           ; $7bb2: $88
	adc  b                                           ; $7bb3: $88
	adc  b                                           ; $7bb4: $88
	adc  b                                           ; $7bb5: $88
	adc  b                                           ; $7bb6: $88
	adc  b                                           ; $7bb7: $88
	adc  b                                           ; $7bb8: $88
	adc  b                                           ; $7bb9: $88
	adc  b                                           ; $7bba: $88
	adc  b                                           ; $7bbb: $88
	adc  b                                           ; $7bbc: $88
	adc  b                                           ; $7bbd: $88
	adc  b                                           ; $7bbe: $88
	adc  b                                           ; $7bbf: $88
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
	ld   [hl], a                                     ; $7bf0: $77
	ld   [hl], a                                     ; $7bf1: $77
	ld   [hl], a                                     ; $7bf2: $77
	ld   [hl], a                                     ; $7bf3: $77
	ld   [hl], a                                     ; $7bf4: $77
	ld   [hl], a                                     ; $7bf5: $77
	adc  b                                           ; $7bf6: $88
	adc  b                                           ; $7bf7: $88
	sbc  c                                           ; $7bf8: $99
	adc  b                                           ; $7bf9: $88
	sbc  c                                           ; $7bfa: $99
	sbc  c                                           ; $7bfb: $99
	sbc  c                                           ; $7bfc: $99
	sbc  c                                           ; $7bfd: $99
	adc  b                                           ; $7bfe: $88
	sbc  c                                           ; $7bff: $99
	adc  b                                           ; $7c00: $88
	add  a                                           ; $7c01: $87
	ld   [hl], a                                     ; $7c02: $77
	ld   [hl], a                                     ; $7c03: $77
	ld   h, [hl]                                     ; $7c04: $66
	ld   h, [hl]                                     ; $7c05: $66
	ld   h, [hl]                                     ; $7c06: $66
	ld   h, a                                        ; $7c07: $67
	ld   [hl], a                                     ; $7c08: $77
	adc  b                                           ; $7c09: $88
	adc  c                                           ; $7c0a: $89
	adc  b                                           ; $7c0b: $88
	adc  b                                           ; $7c0c: $88
	adc  b                                           ; $7c0d: $88
	adc  b                                           ; $7c0e: $88
	adc  b                                           ; $7c0f: $88
	sbc  c                                           ; $7c10: $99
	sbc  d                                           ; $7c11: $9a
	sbc  c                                           ; $7c12: $99
	xor  d                                           ; $7c13: $aa
	xor  c                                           ; $7c14: $a9
	xor  c                                           ; $7c15: $a9
	sbc  b                                           ; $7c16: $98
	adc  b                                           ; $7c17: $88
	ld   [hl], a                                     ; $7c18: $77
	halt                                             ; $7c19: $76
	ld   h, [hl]                                     ; $7c1a: $66
	ld   d, l                                        ; $7c1b: $55
	ld   d, l                                        ; $7c1c: $55
	ld   d, l                                        ; $7c1d: $55
	ld   h, [hl]                                     ; $7c1e: $66
	ld   [hl], a                                     ; $7c1f: $77
	ld   a, b                                        ; $7c20: $78
	adc  c                                           ; $7c21: $89
	adc  c                                           ; $7c22: $89
	sbc  c                                           ; $7c23: $99
	sbc  c                                           ; $7c24: $99
	sbc  c                                           ; $7c25: $99
	sbc  c                                           ; $7c26: $99
	sbc  d                                           ; $7c27: $9a
	sbc  d                                           ; $7c28: $9a
	xor  e                                           ; $7c29: $ab
	cp   e                                           ; $7c2a: $bb
	cp   d                                           ; $7c2b: $ba
	sbc  d                                           ; $7c2c: $9a
	sbc  b                                           ; $7c2d: $98
	add  a                                           ; $7c2e: $87
	ld   [hl], a                                     ; $7c2f: $77
	halt                                             ; $7c30: $76
	ld   d, l                                        ; $7c31: $55
	ld   b, h                                        ; $7c32: $44
	ld   b, h                                        ; $7c33: $44
	ld   b, h                                        ; $7c34: $44
	ld   d, l                                        ; $7c35: $55
	ld   h, a                                        ; $7c36: $67
	ld   a, b                                        ; $7c37: $78
	sbc  c                                           ; $7c38: $99
	sbc  d                                           ; $7c39: $9a
	sbc  c                                           ; $7c3a: $99
	sbc  c                                           ; $7c3b: $99
	xor  d                                           ; $7c3c: $aa
	sbc  d                                           ; $7c3d: $9a
	xor  d                                           ; $7c3e: $aa
	xor  e                                           ; $7c3f: $ab
	cp   h                                           ; $7c40: $bc
	cp   e                                           ; $7c41: $bb
	cp   e                                           ; $7c42: $bb
	xor  c                                           ; $7c43: $a9
	adc  b                                           ; $7c44: $88
	add  a                                           ; $7c45: $87
	halt                                             ; $7c46: $76
	ld   h, l                                        ; $7c47: $65
	ld   d, h                                        ; $7c48: $54
	ld   b, e                                        ; $7c49: $43
	inc  sp                                          ; $7c4a: $33
	inc  [hl]                                        ; $7c4b: $34
	ld   b, l                                        ; $7c4c: $45
	ld   h, a                                        ; $7c4d: $67
	ld   a, b                                        ; $7c4e: $78
	adc  d                                           ; $7c4f: $8a
	sbc  d                                           ; $7c50: $9a
	xor  d                                           ; $7c51: $aa
	xor  d                                           ; $7c52: $aa
	xor  d                                           ; $7c53: $aa
	xor  e                                           ; $7c54: $ab
	xor  e                                           ; $7c55: $ab
	cp   h                                           ; $7c56: $bc
	cp   h                                           ; $7c57: $bc
	cp   e                                           ; $7c58: $bb
	cp   d                                           ; $7c59: $ba
	sbc  c                                           ; $7c5a: $99
	add  a                                           ; $7c5b: $87
	halt                                             ; $7c5c: $76
	ld   h, [hl]                                     ; $7c5d: $66
	ld   d, l                                        ; $7c5e: $55
	ld   b, h                                        ; $7c5f: $44
	inc  sp                                          ; $7c60: $33
	inc  sp                                          ; $7c61: $33
	inc  [hl]                                        ; $7c62: $34
	ld   b, l                                        ; $7c63: $45
	ld   h, a                                        ; $7c64: $67
	adc  b                                           ; $7c65: $88
	sbc  c                                           ; $7c66: $99
	xor  e                                           ; $7c67: $ab
	cp   e                                           ; $7c68: $bb
	cp   e                                           ; $7c69: $bb
	cp   e                                           ; $7c6a: $bb
	cp   e                                           ; $7c6b: $bb
	cp   h                                           ; $7c6c: $bc
	cp   e                                           ; $7c6d: $bb
	cp   e                                           ; $7c6e: $bb
	cp   e                                           ; $7c6f: $bb
	sbc  c                                           ; $7c70: $99
	sbc  b                                           ; $7c71: $98
	ld   [hl], a                                     ; $7c72: $77
	ld   h, [hl]                                     ; $7c73: $66
	ld   h, l                                        ; $7c74: $65
	ld   d, h                                        ; $7c75: $54
	ld   b, e                                        ; $7c76: $43
	inc  sp                                          ; $7c77: $33
	inc  sp                                          ; $7c78: $33
	inc  [hl]                                        ; $7c79: $34
	ld   d, l                                        ; $7c7a: $55
	ld   h, a                                        ; $7c7b: $67
	sbc  c                                           ; $7c7c: $99
	sbc  d                                           ; $7c7d: $9a
	xor  e                                           ; $7c7e: $ab
	cp   e                                           ; $7c7f: $bb
	cp   e                                           ; $7c80: $bb
	xor  e                                           ; $7c81: $ab
	cp   h                                           ; $7c82: $bc
	cp   h                                           ; $7c83: $bc
	call z, $aabb                                    ; $7c84: $cc $bb $aa
	xor  b                                           ; $7c87: $a8
	add  a                                           ; $7c88: $87
	halt                                             ; $7c89: $76
	ld   h, [hl]                                     ; $7c8a: $66
	ld   d, l                                        ; $7c8b: $55
	ld   d, h                                        ; $7c8c: $54
	inc  sp                                          ; $7c8d: $33
	inc  sp                                          ; $7c8e: $33
	inc  hl                                          ; $7c8f: $23
	inc  [hl]                                        ; $7c90: $34
	ld   d, [hl]                                     ; $7c91: $56
	ld   a, b                                        ; $7c92: $78
	adc  d                                           ; $7c93: $8a
	xor  e                                           ; $7c94: $ab
	cp   e                                           ; $7c95: $bb
	cp   e                                           ; $7c96: $bb
	cp   e                                           ; $7c97: $bb
	cp   e                                           ; $7c98: $bb
	cp   h                                           ; $7c99: $bc
	call z, $cbcc                                    ; $7c9a: $cc $cc $cb
	xor  c                                           ; $7c9d: $a9
	sbc  b                                           ; $7c9e: $98
	ld   [hl], a                                     ; $7c9f: $77
	ld   h, [hl]                                     ; $7ca0: $66
	ld   h, l                                        ; $7ca1: $65
	ld   d, l                                        ; $7ca2: $55
	ld   d, h                                        ; $7ca3: $54
	inc  sp                                          ; $7ca4: $33
	ld   [hl-], a                                    ; $7ca5: $32
	ld   [hl+], a                                    ; $7ca6: $22
	inc  [hl]                                        ; $7ca7: $34
	ld   d, l                                        ; $7ca8: $55
	ld   a, b                                        ; $7ca9: $78
	adc  d                                           ; $7caa: $8a
	xor  d                                           ; $7cab: $aa
	cp   h                                           ; $7cac: $bc
	call z, $cccc                                    ; $7cad: $cc $cc $cc
	call z, $cccc                                    ; $7cb0: $cc $cc $cc
	jp   z, $88aa                                    ; $7cb3: $ca $aa $88

	ld   [hl], a                                     ; $7cb6: $77
	ld   h, [hl]                                     ; $7cb7: $66
	ld   h, l                                        ; $7cb8: $65
	ld   d, l                                        ; $7cb9: $55
	ld   d, h                                        ; $7cba: $54
	ld   b, e                                        ; $7cbb: $43
	inc  sp                                          ; $7cbc: $33
	ld   [hl+], a                                    ; $7cbd: $22
	inc  sp                                          ; $7cbe: $33
	ld   b, l                                        ; $7cbf: $45
	ld   h, a                                        ; $7cc0: $67
	adc  d                                           ; $7cc1: $8a
	xor  d                                           ; $7cc2: $aa
	cp   h                                           ; $7cc3: $bc
	cp   e                                           ; $7cc4: $bb
	cp   h                                           ; $7cc5: $bc
	call z, $ddcd                                    ; $7cc6: $cc $cd $dd
	call z, $aacb                                    ; $7cc9: $cc $cb $aa
	adc  b                                           ; $7ccc: $88
	ld   [hl], a                                     ; $7ccd: $77
	ld   h, [hl]                                     ; $7cce: $66
	ld   h, l                                        ; $7ccf: $65
	ld   d, l                                        ; $7cd0: $55
	ld   d, l                                        ; $7cd1: $55
	ld   b, e                                        ; $7cd2: $43
	inc  sp                                          ; $7cd3: $33
	ld   [hl+], a                                    ; $7cd4: $22
	inc  hl                                          ; $7cd5: $23
	ld   b, l                                        ; $7cd6: $45
	ld   h, a                                        ; $7cd7: $67
	adc  c                                           ; $7cd8: $89
	sbc  e                                           ; $7cd9: $9b
	cp   h                                           ; $7cda: $bc
	call z, $cccc                                    ; $7cdb: $cc $cc $cc
	db   $dd                                         ; $7cde: $dd
	call z, $bbdc                                    ; $7cdf: $cc $dc $bb
	cp   c                                           ; $7ce2: $b9
	sbc  b                                           ; $7ce3: $98
	ld   [hl], a                                     ; $7ce4: $77
	halt                                             ; $7ce5: $76
	ld   h, [hl]                                     ; $7ce6: $66
	ld   d, l                                        ; $7ce7: $55
	ld   d, l                                        ; $7ce8: $55
	ld   b, h                                        ; $7ce9: $44
	inc  sp                                          ; $7cea: $33
	inc  hl                                          ; $7ceb: $23
	ld   [hl+], a                                    ; $7cec: $22
	inc  [hl]                                        ; $7ced: $34
	ld   d, [hl]                                     ; $7cee: $56
	ld   a, c                                        ; $7cef: $79
	xor  d                                           ; $7cf0: $aa
	xor  e                                           ; $7cf1: $ab
	cp   h                                           ; $7cf2: $bc
	call z, $ccdc                                    ; $7cf3: $cc $dc $cc
	db   $dd                                         ; $7cf6: $dd
	call c, $bbcb                                    ; $7cf7: $dc $cb $bb
	xor  b                                           ; $7cfa: $a8
	add  a                                           ; $7cfb: $87
	halt                                             ; $7cfc: $76
	ld   h, [hl]                                     ; $7cfd: $66
	ld   d, l                                        ; $7cfe: $55
	ld   d, l                                        ; $7cff: $55
	ld   d, h                                        ; $7d00: $54
	ld   b, e                                        ; $7d01: $43
	ld   [hl-], a                                    ; $7d02: $32
	ld   [hl+], a                                    ; $7d03: $22
	inc  hl                                          ; $7d04: $23
	ld   b, l                                        ; $7d05: $45
	ld   h, a                                        ; $7d06: $67
	sbc  d                                           ; $7d07: $9a
	xor  e                                           ; $7d08: $ab
	call z, $dccd                                    ; $7d09: $cc $cd $dc
	db   $dd                                         ; $7d0c: $dd
	db   $dd                                         ; $7d0d: $dd
	db   $dd                                         ; $7d0e: $dd
	db   $dd                                         ; $7d0f: $dd
	cp   e                                           ; $7d10: $bb
	xor  d                                           ; $7d11: $aa
	adc  b                                           ; $7d12: $88
	ld   [hl], a                                     ; $7d13: $77
	ld   h, [hl]                                     ; $7d14: $66
	ld   d, l                                        ; $7d15: $55
	ld   d, l                                        ; $7d16: $55
	ld   b, h                                        ; $7d17: $44
	ld   b, e                                        ; $7d18: $43
	ld   [hl-], a                                    ; $7d19: $32
	ld   [hl+], a                                    ; $7d1a: $22
	ld   [hl+], a                                    ; $7d1b: $22
	inc  [hl]                                        ; $7d1c: $34
	ld   d, [hl]                                     ; $7d1d: $56
	ld   a, b                                        ; $7d1e: $78
	xor  d                                           ; $7d1f: $aa
	cp   h                                           ; $7d20: $bc
	call $cdcc                                       ; $7d21: $cd $cc $cd
	sbc  $ee                                         ; $7d24: $de $ee
	db   $ed                                         ; $7d26: $ed
	call z, $98bb                                    ; $7d27: $cc $bb $98
	add  a                                           ; $7d2a: $87
	halt                                             ; $7d2b: $76
	ld   h, l                                        ; $7d2c: $65
	ld   d, l                                        ; $7d2d: $55
	ld   b, h                                        ; $7d2e: $44
	ld   b, h                                        ; $7d2f: $44
	inc  sp                                          ; $7d30: $33
	ld   [hl+], a                                    ; $7d31: $22
	ld   [hl+], a                                    ; $7d32: $22
	inc  hl                                          ; $7d33: $23
	ld   b, l                                        ; $7d34: $45
	ld   h, a                                        ; $7d35: $67
	adc  c                                           ; $7d36: $89
	xor  d                                           ; $7d37: $aa
	cp   e                                           ; $7d38: $bb
	call z, $ddcc                                    ; $7d39: $cc $cc $dd
	xor  $de                                         ; $7d3c: $ee $de
	db   $dd                                         ; $7d3e: $dd
	call z, $99aa                                    ; $7d3f: $cc $aa $99
	ld   [hl], a                                     ; $7d42: $77
	ld   h, [hl]                                     ; $7d43: $66
	ld   d, l                                        ; $7d44: $55
	ld   d, h                                        ; $7d45: $54
	ld   b, h                                        ; $7d46: $44
	ld   b, e                                        ; $7d47: $43
	ld   [hl-], a                                    ; $7d48: $32
	ld   [hl+], a                                    ; $7d49: $22
	ld   [hl+], a                                    ; $7d4a: $22
	inc  hl                                          ; $7d4b: $23
	ld   b, l                                        ; $7d4c: $45
	ld   h, a                                        ; $7d4d: $67
	adc  c                                           ; $7d4e: $89
	cp   e                                           ; $7d4f: $bb
	call z, $ccdc                                    ; $7d50: $cc $dc $cc
	sbc  $ed                                         ; $7d53: $de $ed
	sbc  $dc                                         ; $7d55: $de $dc
	res  7, c                                        ; $7d57: $cb $b9
	sbc  b                                           ; $7d59: $98
	ld   [hl], a                                     ; $7d5a: $77
	ld   h, [hl]                                     ; $7d5b: $66
	ld   d, l                                        ; $7d5c: $55
	ld   b, h                                        ; $7d5d: $44
	ld   b, h                                        ; $7d5e: $44
	inc  sp                                          ; $7d5f: $33
	ld   [hl+], a                                    ; $7d60: $22
	ld   [hl+], a                                    ; $7d61: $22
	ld   [hl+], a                                    ; $7d62: $22
	inc  h                                           ; $7d63: $24
	ld   d, [hl]                                     ; $7d64: $56
	ld   a, b                                        ; $7d65: $78
	sbc  d                                           ; $7d66: $9a
	xor  e                                           ; $7d67: $ab
	call z, $ccdc                                    ; $7d68: $cc $dc $cc
	sbc  $dd                                         ; $7d6b: $de $dd
	sbc  $dc                                         ; $7d6d: $de $dc
	res  7, c                                        ; $7d6f: $cb $b9
	sbc  b                                           ; $7d71: $98
	ld   [hl], a                                     ; $7d72: $77
	ld   h, [hl]                                     ; $7d73: $66
	ld   d, l                                        ; $7d74: $55
	ld   b, h                                        ; $7d75: $44
	ld   b, h                                        ; $7d76: $44
	inc  sp                                          ; $7d77: $33
	ld   [hl+], a                                    ; $7d78: $22
	ld   [hl+], a                                    ; $7d79: $22
	ld   [hl+], a                                    ; $7d7a: $22
	inc  hl                                          ; $7d7b: $23
	ld   d, [hl]                                     ; $7d7c: $56
	ld   [hl], a                                     ; $7d7d: $77
	adc  c                                           ; $7d7e: $89
	xor  e                                           ; $7d7f: $ab
	set  1, h                                        ; $7d80: $cb $cc
	call $dedd                                       ; $7d82: $cd $dd $de
	db   $ed                                         ; $7d85: $ed
	db   $dd                                         ; $7d86: $dd
	db   $db                                         ; $7d87: $db
	cp   d                                           ; $7d88: $ba
	sbc  c                                           ; $7d89: $99
	add  a                                           ; $7d8a: $87
	ld   h, [hl]                                     ; $7d8b: $66
	ld   d, l                                        ; $7d8c: $55
	ld   b, h                                        ; $7d8d: $44
	ld   b, e                                        ; $7d8e: $43
	inc  sp                                          ; $7d8f: $33
	ld   [hl+], a                                    ; $7d90: $22
	ld   de, $2322                                   ; $7d91: $11 $22 $23
	ld   b, [hl]                                     ; $7d94: $46
	ld   a, b                                        ; $7d95: $78
	sbc  d                                           ; $7d96: $9a
	xor  h                                           ; $7d97: $ac
	rst  JumpTable                                         ; $7d98: $df
	db   $ec                                         ; $7d99: $ec
	call $dfcc                                       ; $7d9a: $cd $cc $df
	xor  $db                                         ; $7d9d: $ee $db
	call z, $b8ba                                    ; $7d9f: $cc $ba $b8
	adc  b                                           ; $7da2: $88
	ld   [hl], a                                     ; $7da3: $77
	ld   d, h                                        ; $7da4: $54
	ld   de, $1124                                   ; $7da5: $11 $24 $11
	ld   de, $1211                                   ; $7da8: $11 $11 $12
	add  hl, sp                                      ; $7dab: $39
	jp   z, $ffcf                                    ; $7dac: $ca $cf $ff

	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	cp   d                                           ; $7db2: $ba
	ld   [$9656], a                                  ; $7db3: $ea $56 $96
	ld   d, l                                        ; $7db6: $55
	ld   [hl+], a                                    ; $7db7: $22
	ld   b, e                                        ; $7db8: $43
	ld   de, $1111                                   ; $7db9: $11 $11 $11
	ld   h, $11                                      ; $7dbc: $26 $11
	ld   a, d                                        ; $7dbe: $7a
	ld   h, [hl]                                     ; $7dbf: $66
	rst  $38                                         ; $7dc0: $ff
	rst  $38                                         ; $7dc1: $ff
	rst  $38                                         ; $7dc2: $ff
	rst  $38                                         ; $7dc3: $ff
	db   $fd                                         ; $7dc4: $fd
	db   $fd                                         ; $7dc5: $fd
	ld   d, d                                        ; $7dc6: $52
	ld   de, $1111                                   ; $7dc7: $11 $11 $11
	ld   [hl], a                                     ; $7dca: $77
	ld   h, $a8                                      ; $7dcb: $26 $a8
	sub  [hl]                                        ; $7dcd: $96
	ld   hl, $1711                                   ; $7dce: $21 $11 $17
	ld   de, $734b                                   ; $7dd1: $11 $4b $73
	rst  $38                                         ; $7dd4: $ff
	rst  $38                                         ; $7dd5: $ff
	rst  $38                                         ; $7dd6: $ff
	rst  $38                                         ; $7dd7: $ff
	ld   a, [$21fe]                                  ; $7dd8: $fa $fe $21
	ld   [hl+], a                                    ; $7ddb: $22
	ld   de, $a812                                   ; $7ddc: $11 $12 $a8
	dec  [hl]                                        ; $7ddf: $35
	jp   z, $1141                                    ; $7de0: $ca $41 $11

	ld   de, $1971                                   ; $7de3: $11 $71 $19
	or   $6f                                         ; $7de6: $f6 $6f
	rst  $38                                         ; $7de8: $ff
	rst  $38                                         ; $7de9: $ff
	rst  $38                                         ; $7dea: $ff
	ld   a, [$915e]                                  ; $7deb: $fa $5e $91
	ld   de, $4235                                   ; $7dee: $11 $35 $42
	xor  a                                           ; $7df1: $af
	ei                                               ; $7df2: $fb
	rst  $28                                         ; $7df3: $ef
	db   $eb                                         ; $7df4: $eb
	ld   h, c                                        ; $7df5: $61
	ld   de, $1311                                   ; $7df6: $11 $11 $13
	ld   de, $efef                                   ; $7df9: $11 $ef $ef
	rst  $38                                         ; $7dfc: $ff
	rst  $38                                         ; $7dfd: $ff
	rst  $38                                         ; $7dfe: $ff
	rst  $38                                         ; $7dff: $ff
	ld   de, $1131                                   ; $7e00: $11 $31 $11
	ld   d, $cd                                      ; $7e03: $16 $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e05: $cf
	rst  $38                                         ; $7e06: $ff
	rst  $38                                         ; $7e07: $ff
	rst  $38                                         ; $7e08: $ff
	and  e                                           ; $7e09: $a3
	ld   de, $1111                                   ; $7e0a: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7e0d: $11 $13 $ff
	rst  $38                                         ; $7e10: $ff
	rst  $38                                         ; $7e11: $ff
	rst  $38                                         ; $7e12: $ff
	rst  $38                                         ; $7e13: $ff
	pop  af                                          ; $7e14: $f1
	ld   de, $1111                                   ; $7e15: $11 $11 $11
	ld   l, a                                        ; $7e18: $6f
	rst  $38                                         ; $7e19: $ff
	rst  $38                                         ; $7e1a: $ff
	rst  $38                                         ; $7e1b: $ff
	rst  $38                                         ; $7e1c: $ff
	db   $fd                                         ; $7e1d: $fd
	ld   hl, $1111                                   ; $7e1e: $21 $11 $11
	ld   de, $2a17                                   ; $7e21: $11 $17 $2a
	rst  $38                                         ; $7e24: $ff
	rst  $38                                         ; $7e25: $ff
	rst  $38                                         ; $7e26: $ff
	rst  $38                                         ; $7e27: $ff
	ld   h, e                                        ; $7e28: $63
	ld   d, c                                        ; $7e29: $51
	ld   de, $1111                                   ; $7e2a: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e2d: $cf
	rst  $38                                         ; $7e2e: $ff
	rst  $38                                         ; $7e2f: $ff
	rst  $38                                         ; $7e30: $ff
	cp   l                                           ; $7e31: $bd
	rst  $30                                         ; $7e32: $f7
	ld   de, $1111                                   ; $7e33: $11 $11 $11
	ld   de, $fc1f                                   ; $7e36: $11 $1f $fc
	rst  $38                                         ; $7e39: $ff
	rst  $38                                         ; $7e3a: $ff
	rst  $38                                         ; $7e3b: $ff
	ei                                               ; $7e3c: $fb
	ld   de, $1111                                   ; $7e3d: $11 $11 $11
	inc  de                                          ; $7e40: $13
	jr   @+$01                                       ; $7e41: $18 $ff

	rst  $38                                         ; $7e43: $ff
	rst  $38                                         ; $7e44: $ff
	rst  $38                                         ; $7e45: $ff
	dec  [hl]                                        ; $7e46: $35
	ld   [hl], d                                     ; $7e47: $72
	ld   de, $1111                                   ; $7e48: $11 $11 $11
	ld   de, $fe5f                                   ; $7e4b: $11 $5f $fe
	rst  $38                                         ; $7e4e: $ff
	rst  $38                                         ; $7e4f: $ff
	rst  $38                                         ; $7e50: $ff
	add  $11                                         ; $7e51: $c6 $11
	ld   de, $1a11                                   ; $7e53: $11 $11 $1a
	sbc  a                                           ; $7e56: $9f
	rst  $38                                         ; $7e57: $ff
	rst  $38                                         ; $7e58: $ff
	rst  $38                                         ; $7e59: $ff
	cp   $11                                         ; $7e5a: $fe $11
	ld   sp, $1111                                   ; $7e5c: $31 $11 $11
	ld   de, $bf11                                   ; $7e5f: $11 $11 $bf
	db   $fc                                         ; $7e62: $fc
	rst  $38                                         ; $7e63: $ff
	cp   $ff                                         ; $7e64: $fe $ff
	push bc                                          ; $7e66: $c5
	ld   de, $1111                                   ; $7e67: $11 $11 $11
	ld   c, l                                        ; $7e6a: $4d
	rst  JumpTable                                         ; $7e6b: $df
	rst  $38                                         ; $7e6c: $ff
	rst  $38                                         ; $7e6d: $ff
	rst  $38                                         ; $7e6e: $ff
	ld   a, [$3211]                                  ; $7e6f: $fa $11 $32
	ld   de, $1111                                   ; $7e72: $11 $11 $11
	ld   de, $afff                                   ; $7e75: $11 $ff $af
	rst  $38                                         ; $7e78: $ff
	db   $fc                                         ; $7e79: $fc
	db   $fd                                         ; $7e7a: $fd
	or   c                                           ; $7e7b: $b1
	ld   de, $1151                                   ; $7e7c: $11 $51 $11
	cp   [hl]                                        ; $7e7f: $be
	rst  $28                                         ; $7e80: $ef
	rst  $38                                         ; $7e81: $ff
	rst  $38                                         ; $7e82: $ff
	cp   a                                           ; $7e83: $bf
	ldh  a, [c]                                      ; $7e84: $f2
	ld   [de], a                                     ; $7e85: $12
	ld   sp, $1111                                   ; $7e86: $31 $11 $11
	ld   de, $ff1b                                   ; $7e89: $11 $1b $ff
	cp   a                                           ; $7e8c: $bf
	rst  $38                                         ; $7e8d: $ff
	db   $dd                                         ; $7e8e: $dd
	db   $ed                                         ; $7e8f: $ed
	ld   h, c                                        ; $7e90: $61
	ld   [de], a                                     ; $7e91: $12
	ld   hl, $de16                                   ; $7e92: $21 $16 $de
	rst  $38                                         ; $7e95: $ff
	rst  $38                                         ; $7e96: $ff
	cp   $ef                                         ; $7e97: $fe $ef
	add  c                                           ; $7e99: $81
	ld   [de], a                                     ; $7e9a: $12
	ld   de, $1111                                   ; $7e9b: $11 $11 $11
	ld   de, $fc8f                                   ; $7e9e: $11 $8f $fc
	rst  $38                                         ; $7ea1: $ff
	rst  $38                                         ; $7ea2: $ff
	db   $ec                                         ; $7ea3: $ec
	or   [hl]                                        ; $7ea4: $b6
	ld   de, $1112                                   ; $7ea5: $11 $12 $11
	ld   e, l                                        ; $7ea8: $5d
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	rst  $38                                         ; $7eab: $ff
	db   $fd                                         ; $7eac: $fd
	ld   sp, hl                                      ; $7ead: $f9
	ld   de, $1111                                   ; $7eae: $11 $11 $11
	ld   de, $1c11                                   ; $7eb1: $11 $11 $1c
	rst  $38                                         ; $7eb4: $ff
	rst  $28                                         ; $7eb5: $ef
	rst  $38                                         ; $7eb6: $ff
	rst  $38                                         ; $7eb7: $ff
	ret                                              ; $7eb8: $c9


	ld   sp, $1111                                   ; $7eb9: $31 $11 $11
	add  hl, de                                      ; $7ebc: $19
	rst  $38                                         ; $7ebd: $ff
	rst  $38                                         ; $7ebe: $ff
	rst  $38                                         ; $7ebf: $ff
	cp   $ff                                         ; $7ec0: $fe $ff
	ld   d, c                                        ; $7ec2: $51
	ld   de, $1111                                   ; $7ec3: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $7ec6: $11 $12 $ff
	rst  JumpTable                                         ; $7ec9: $df
	rst  $38                                         ; $7eca: $ff
	rst  $38                                         ; $7ecb: $ff
	jp   hl                                          ; $7ecc: $e9


	ld   b, c                                        ; $7ecd: $41
	ld   de, $1511                                   ; $7ece: $11 $11 $15
	rst  $28                                         ; $7ed1: $ef
	rst  $38                                         ; $7ed2: $ff
	rst  $38                                         ; $7ed3: $ff
	rst  $38                                         ; $7ed4: $ff
	rst  $28                                         ; $7ed5: $ef
	sub  c                                           ; $7ed6: $91
	ld   de, $1111                                   ; $7ed7: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7eda: $11 $13 $ff
	rst  JumpTable                                         ; $7edd: $df
	rst  $38                                         ; $7ede: $ff
	rst  $38                                         ; $7edf: $ff
	jp   hl                                          ; $7ee0: $e9


	ld   sp, $1111                                   ; $7ee1: $31 $11 $11
	ld   d, $df                                      ; $7ee4: $16 $df
	rst  $38                                         ; $7ee6: $ff
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	ld   [hl], c                                     ; $7eea: $71
	ld   de, $1111                                   ; $7eeb: $11 $11 $11
	ld   de, $ff19                                   ; $7eee: $11 $19 $ff
	rst  $38                                         ; $7ef1: $ff
	rst  $38                                         ; $7ef2: $ff
	rst  $38                                         ; $7ef3: $ff
	ret  c                                           ; $7ef4: $d8

	ld   de, $1111                                   ; $7ef5: $11 $11 $11
	jr   @+$01                                       ; $7ef8: $18 $ff

	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	rst  $38                                         ; $7efc: $ff
	db   $fd                                         ; $7efd: $fd
	ld   d, c                                        ; $7efe: $51
	ld   de, $1111                                   ; $7eff: $11 $11 $11
	ld   de, $f91f                                   ; $7f02: $11 $1f $f9
	rst  $38                                         ; $7f05: $ff
	rst  $38                                         ; $7f06: $ff
	rst  $38                                         ; $7f07: $ff
	call nz, $1111                                   ; $7f08: $c4 $11 $11
	ld   de, $ef4b                                   ; $7f0b: $11 $4b $ef
	rst  $38                                         ; $7f0e: $ff
	rst  $38                                         ; $7f0f: $ff
	rst  $38                                         ; $7f10: $ff
	rst  $30                                         ; $7f11: $f7
	ld   de, $1111                                   ; $7f12: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7f15: $11 $11 $ff
	ld   l, a                                        ; $7f18: $6f
	rst  $38                                         ; $7f19: $ff
	rst  $38                                         ; $7f1a: $ff
	cp   $61                                         ; $7f1b: $fe $61
	ld   de, $1411                                   ; $7f1d: $11 $11 $14
	sbc  h                                           ; $7f20: $9c
	rst  $38                                         ; $7f21: $ff
	rst  $38                                         ; $7f22: $ff
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff

jr_0d9_7f25:
	ld   [hl], c                                     ; $7f25: $71
	ld   de, $1111                                   ; $7f26: $11 $11 $11
	ld   de, $1edf                                   ; $7f29: $11 $df $1e
	rst  $38                                         ; $7f2c: $ff
	rst  $38                                         ; $7f2d: $ff
	rst  $38                                         ; $7f2e: $ff
	ldh  a, [c]                                      ; $7f2f: $f2
	ld   de, $1161                                   ; $7f30: $11 $61 $11
	ld   h, a                                        ; $7f33: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f34: $cf
	rst  $38                                         ; $7f35: $ff
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	db   $f4                                         ; $7f38: $f4
	ld   de, $1111                                   ; $7f39: $11 $11 $11
	ld   de, $168f                                   ; $7f3c: $11 $8f $16
	rst  $38                                         ; $7f3f: $ff
	rst  $38                                         ; $7f40: $ff
	rst  $38                                         ; $7f41: $ff
	di                                               ; $7f42: $f3
	ld   de, $1191                                   ; $7f43: $11 $91 $11
	ld   h, h                                        ; $7f46: $64
	ld   a, a                                        ; $7f47: $7f
	rst  $38                                         ; $7f48: $ff
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	or   $11                                         ; $7f4b: $f6 $11
	ld   de, $1111                                   ; $7f4d: $11 $11 $11
	ld   a, [$ff1f]                                  ; $7f50: $fa $1f $ff
	rst  $38                                         ; $7f53: $ff
	rst  $38                                         ; $7f54: $ff
	pop  af                                          ; $7f55: $f1
	dec  de                                          ; $7f56: $1b
	ld   b, c                                        ; $7f57: $41
	ld   de, $7f43                                   ; $7f58: $11 $43 $7f
	rst  $38                                         ; $7f5b: $ff
	rst  $38                                         ; $7f5c: $ff
	rst  $38                                         ; $7f5d: $ff
	jp   $1111                                       ; $7f5e: $c3 $11 $11


	ld   de, $111f                                   ; $7f61: $11 $1f $11
	rst  $38                                         ; $7f64: $ff
	rst  $38                                         ; $7f65: $ff
	rst  $38                                         ; $7f66: $ff
	rst  $38                                         ; $7f67: $ff
	dec  d                                           ; $7f68: $15
	di                                               ; $7f69: $f3
	ld   de, $2511                                   ; $7f6a: $11 $11 $25
	xor  a                                           ; $7f6d: $af
	cp   $bf                                         ; $7f6e: $fe $bf
	ld   hl, sp+$42                                  ; $7f70: $f8 $42
	ld   de, $1a11                                   ; $7f72: $11 $11 $1a
	ld   [de], a                                     ; $7f75: $12
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	rst  $38                                         ; $7f79: $ff
	sbc  h                                           ; $7f7a: $9c
	push af                                          ; $7f7b: $f5
	ld   de, $3223                                   ; $7f7c: $11 $23 $32
	ld   e, l                                        ; $7f7f: $5d
	rst  ToBoot                                         ; $7f80: $c7
	adc  h                                           ; $7f81: $8c
	sub  l                                           ; $7f82: $95
	ld   hl, $a911                                   ; $7f83: $21 $11 $a9
	ld   d, $fe                                      ; $7f86: $16 $fe
	sbc  [hl]                                        ; $7f88: $9e
	rst  $38                                         ; $7f89: $ff
	ld   a, [$f67f]                                  ; $7f8a: $fa $7f $f6
	jr   z, jr_0d9_7f25                              ; $7f8d: $28 $96

	ld   b, d                                        ; $7f8f: $42
	ld   l, e                                        ; $7f90: $6b
	ld   [hl], d                                     ; $7f91: $72
	ld   b, a                                        ; $7f92: $47
	ld   sp, $1611                                   ; $7f93: $31 $11 $16
	sub  e                                           ; $7f96: $93
	xor  a                                           ; $7f97: $af
	rst  $38                                         ; $7f98: $ff
	cp   $ff                                         ; $7f99: $fe $ff
	cp   b                                           ; $7f9b: $b8
	rst  $28                                         ; $7f9c: $ef
	sub  [hl]                                        ; $7f9d: $96
	ld   a, b                                        ; $7f9e: $78
	halt                                             ; $7f9f: $76
	ld   b, [hl]                                     ; $7fa0: $46
	add  l                                           ; $7fa1: $85
	ld   [hl+], a                                    ; $7fa2: $22
	ld   de, $1611                                   ; $7fa3: $11 $11 $16
	call nc, $ff8f                                   ; $7fa6: $d4 $8f $ff
	db   $fd                                         ; $7fa9: $fd
	rst  $38                                         ; $7faa: $ff
	ret  c                                           ; $7fab: $d8

	rst  $28                                         ; $7fac: $ef
	cp   b                                           ; $7fad: $b8
	add  a                                           ; $7fae: $87
	add  a                                           ; $7faf: $87
	inc  [hl]                                        ; $7fb0: $34
	ld   h, e                                        ; $7fb1: $63
	ld   de, $1111                                   ; $7fb2: $11 $11 $11
	ld   c, e                                        ; $7fb5: $4b
	ld   a, c                                        ; $7fb6: $79
	rst  $38                                         ; $7fb7: $ff
	rst  $38                                         ; $7fb8: $ff
	cp   $fe                                         ; $7fb9: $fe $fe
	xor  l                                           ; $7fbb: $ad
	db   $eb                                         ; $7fbc: $eb
	adc  b                                           ; $7fbd: $88
	ld   [hl], a                                     ; $7fbe: $77
	ld   [hl], h                                     ; $7fbf: $74
	dec  [hl]                                        ; $7fc0: $35
	ld   sp, $1111                                   ; $7fc1: $31 $11 $11
	scf                                              ; $7fc4: $37
	ld   e, c                                        ; $7fc5: $59
	xor  $ff                                         ; $7fc6: $ee $ff
	rst  $38                                         ; $7fc8: $ff
	db   $fd                                         ; $7fc9: $fd
	call $a9da                                       ; $7fca: $cd $da $a9
	halt                                             ; $7fcd: $76
	ld   h, e                                        ; $7fce: $63
	inc  hl                                          ; $7fcf: $23
	ld   de, $1111                                   ; $7fd0: $11 $11 $11
	ld   a, b                                        ; $7fd3: $78
	ld   e, d                                        ; $7fd4: $5a
	xor  $fe                                         ; $7fd5: $ee $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fd7: $cf
	ld   a, [$dcce]                                  ; $7fd8: $fa $ce $dc
	sub  a                                           ; $7fdb: $97
	ld   [hl], a                                     ; $7fdc: $77
	ld   sp, $1122                                   ; $7fdd: $31 $22 $11
	ld   de, $7428                                   ; $7fe0: $11 $28 $74
	xor  [hl]                                        ; $7fe3: $ae
	db   $dd                                         ; $7fe4: $dd
	db   $dd                                         ; $7fe5: $dd
	db   $fd                                         ; $7fe6: $fd
	xor  e                                           ; $7fe7: $ab
	db   $ed                                         ; $7fe8: $ed
	cp   d                                           ; $7fe9: $ba
	xor  b                                           ; $7fea: $a8
	ld   d, e                                        ; $7feb: $53
	ld   [hl+], a                                    ; $7fec: $22
	ld   de, $1411                                   ; $7fed: $11 $11 $14
	halt                                             ; $7ff0: $76
	ld   a, d                                        ; $7ff1: $7a
	call c, $efcd                                    ; $7ff2: $dc $cd $ef
	db   $db                                         ; $7ff5: $db
	call $b9dc                                       ; $7ff6: $cd $dc $b9
	add  l                                           ; $7ff9: $85
	ld   [hl-], a                                    ; $7ffa: $32
	ld   de, $1211                                   ; $7ffb: $11 $11 $12
	ld   h, a                                        ; $7ffe: $67
	ld   l, b                                        ; $7fff: $68
