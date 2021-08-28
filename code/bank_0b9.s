; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b9", ROMX[$4000], BANK[$b9]

	rst  $20                                         ; $4000: $e7
	rst  $38                                         ; $4001: $ff
	and  h                                           ; $4002: $a4
	di                                               ; $4003: $f3
	ld   c, b                                        ; $4004: $48
	ld   b, h                                        ; $4005: $44
	ld   de, $2e5b                                   ; $4006: $11 $5b $2e
	rst  $30                                         ; $4009: $f7
	rst  JumpTable                                         ; $400a: $df
	db   $d3                                         ; $400b: $d3
	rst  $10                                         ; $400c: $d7
	ld   a, [hl+]                                    ; $400d: $2a
	ld   b, h                                        ; $400e: $44
	ld   de, $3a3b                                   ; $400f: $11 $3b $3a
	ld   hl, sp-$31                                  ; $4012: $f8 $cf
	db   $f4                                         ; $4014: $f4
	rrc  d                                           ; $4015: $cb $0a
	ld   b, h                                        ; $4017: $44
	ld   de, $572a                                   ; $4018: $11 $2a $57
	ld   a, [$f6cf]                                  ; $401b: $fa $cf $f6
	xor  l                                           ; $401e: $ad
	add  hl, de                                      ; $401f: $19
	ld   b, e                                        ; $4020: $43
	ld   de, $4829                                   ; $4021: $11 $29 $48
	ld   a, [$f6cf]                                  ; $4024: $fa $cf $f6
	rr   c                                           ; $4027: $cb $19
	ld   b, d                                        ; $4029: $42
	ld   de, $4929                                   ; $402a: $11 $29 $49
	ld   sp, hl                                      ; $402d: $f9
	rst  $28                                         ; $402e: $ef
	or   $cb                                         ; $402f: $f6 $cb
	ld   a, [de]                                     ; $4031: $1a
	ld   [hl-], a                                    ; $4032: $32
	ld   de, $4c47                                   ; $4033: $11 $47 $4c
	ld   sp, hl                                      ; $4036: $f9
	rst  $38                                         ; $4037: $ff
	rst  $30                                         ; $4038: $f7
	add  sp, $1a                                     ; $4039: $e8 $1a
	ld   hl, $6511                                   ; $403b: $21 $11 $65
	ccf                                              ; $403e: $3f
	ld   sp, hl                                      ; $403f: $f9
	rst  $38                                         ; $4040: $ff
	ret  c                                           ; $4041: $d8

	db   $f4                                         ; $4042: $f4
	ld   c, c                                        ; $4043: $49
	ld   de, $6311                                   ; $4044: $11 $11 $63
	ld   e, a                                        ; $4047: $5f
	jp   c, $bbff                                    ; $4048: $da $ff $bb

	ldh  a, [c]                                      ; $404b: $f2
	halt                                             ; $404c: $76
	ld   de, $6312                                   ; $404d: $11 $12 $63
	ld   a, a                                        ; $4050: $7f
	xor  l                                           ; $4051: $ad
	rst  $38                                         ; $4052: $ff
	xor  l                                           ; $4053: $ad
	jp   nc, $3194                                   ; $4054: $d2 $94 $31

	inc  de                                          ; $4057: $13
	ld   d, d                                        ; $4058: $52
	sbc  a                                           ; $4059: $9f
	adc  a                                           ; $405a: $8f
	rst  $38                                         ; $405b: $ff
	xor  a                                           ; $405c: $af
	or   h                                           ; $405d: $b4
	and  e                                           ; $405e: $a3
	ld   sp, $4113                                   ; $405f: $31 $13 $41
	xor  a                                           ; $4062: $af
	adc  a                                           ; $4063: $8f
	rst  $38                                         ; $4064: $ff
	xor  a                                           ; $4065: $af
	and  [hl]                                        ; $4066: $a6
	and  e                                           ; $4067: $a3
	ld   sp, $4112                                   ; $4068: $31 $12 $41
	cp   l                                           ; $406b: $bd
	sbc  a                                           ; $406c: $9f
	rst  $38                                         ; $406d: $ff
	xor  a                                           ; $406e: $af
	sub  a                                           ; $406f: $97
	sub  h                                           ; $4070: $94
	ld   sp, $4111                                   ; $4071: $31 $11 $41
	xor  e                                           ; $4074: $ab
	adc  [hl]                                        ; $4075: $8e
	rst  $38                                         ; $4076: $ff
	cp   a                                           ; $4077: $bf
	xor  c                                           ; $4078: $a9
	and  l                                           ; $4079: $a5
	ld   b, c                                        ; $407a: $41
	ld   de, $7a51                                   ; $407b: $11 $51 $7a
	adc  h                                           ; $407e: $8c
	rst  $38                                         ; $407f: $ff
	cp   a                                           ; $4080: $bf
	ret                                              ; $4081: $c9


	and  [hl]                                        ; $4082: $a6
	ld   h, c                                        ; $4083: $61
	ld   [hl+], a                                    ; $4084: $22
	ld   d, e                                        ; $4085: $53
	ld   e, d                                        ; $4086: $5a
	ld   a, d                                        ; $4087: $7a
	adc  $bd                                         ; $4088: $ce $bd
	reti                                             ; $408a: $d9


	and  a                                           ; $408b: $a7
	ld   [hl], h                                     ; $408c: $74
	ld   d, h                                        ; $408d: $54
	ld   d, l                                        ; $408e: $55
	ld   c, b                                        ; $408f: $48
	ld   a, b                                        ; $4090: $78
	xor  e                                           ; $4091: $ab
	cp   e                                           ; $4092: $bb
	cp   c                                           ; $4093: $b9
	adc  b                                           ; $4094: $88
	ld   [hl], a                                     ; $4095: $77
	ld   [hl], a                                     ; $4096: $77
	ld   [hl], a                                     ; $4097: $77
	ld   h, a                                        ; $4098: $67
	add  a                                           ; $4099: $87
	sbc  c                                           ; $409a: $99
	sbc  c                                           ; $409b: $99
	adc  b                                           ; $409c: $88
	ld   a, b                                        ; $409d: $78
	sbc  b                                           ; $409e: $98
	adc  b                                           ; $409f: $88
	adc  c                                           ; $40a0: $89
	sbc  c                                           ; $40a1: $99
	adc  b                                           ; $40a2: $88
	adc  b                                           ; $40a3: $88
	ld   [hl], a                                     ; $40a4: $77
	ld   [hl], a                                     ; $40a5: $77
	ld   [hl], a                                     ; $40a6: $77
	sbc  c                                           ; $40a7: $99
	adc  d                                           ; $40a8: $8a
	sbc  c                                           ; $40a9: $99
	sbc  c                                           ; $40aa: $99
	sbc  b                                           ; $40ab: $98
	add  a                                           ; $40ac: $87
	ld   [hl], a                                     ; $40ad: $77
	ld   [hl], a                                     ; $40ae: $77
	ld   [hl], a                                     ; $40af: $77
	adc  b                                           ; $40b0: $88
	sbc  c                                           ; $40b1: $99
	sbc  c                                           ; $40b2: $99
	xor  c                                           ; $40b3: $a9
	adc  c                                           ; $40b4: $89
	add  a                                           ; $40b5: $87
	ld   [hl], a                                     ; $40b6: $77
	ld   [hl], a                                     ; $40b7: $77
	ld   [hl], a                                     ; $40b8: $77
	ld   a, b                                        ; $40b9: $78
	adc  c                                           ; $40ba: $89
	adc  c                                           ; $40bb: $89
	sbc  c                                           ; $40bc: $99
	sbc  b                                           ; $40bd: $98
	sbc  b                                           ; $40be: $98
	add  a                                           ; $40bf: $87
	ld   [hl], a                                     ; $40c0: $77
	ld   [hl], a                                     ; $40c1: $77
	ld   [hl], a                                     ; $40c2: $77
	adc  c                                           ; $40c3: $89
	sbc  c                                           ; $40c4: $99
	sbc  b                                           ; $40c5: $98
	sbc  c                                           ; $40c6: $99
	sbc  c                                           ; $40c7: $99
	sub  a                                           ; $40c8: $97
	ld   [hl], a                                     ; $40c9: $77
	ld   [hl], a                                     ; $40ca: $77
	ld   [hl], a                                     ; $40cb: $77
	ld   a, b                                        ; $40cc: $78
	adc  b                                           ; $40cd: $88
	sbc  b                                           ; $40ce: $98
	adc  c                                           ; $40cf: $89
	sbc  b                                           ; $40d0: $98
	adc  b                                           ; $40d1: $88
	adc  b                                           ; $40d2: $88
	ld   [hl], a                                     ; $40d3: $77
	ld   [hl], a                                     ; $40d4: $77
	ld   a, b                                        ; $40d5: $78
	adc  b                                           ; $40d6: $88
	adc  b                                           ; $40d7: $88
	sbc  b                                           ; $40d8: $98
	sbc  b                                           ; $40d9: $98
	sbc  b                                           ; $40da: $98
	adc  b                                           ; $40db: $88
	ld   [hl], a                                     ; $40dc: $77
	ld   [hl], a                                     ; $40dd: $77
	ld   a, b                                        ; $40de: $78
	adc  b                                           ; $40df: $88
	adc  b                                           ; $40e0: $88
	adc  b                                           ; $40e1: $88
	adc  c                                           ; $40e2: $89
	sbc  b                                           ; $40e3: $98
	adc  b                                           ; $40e4: $88
	adc  b                                           ; $40e5: $88
	add  a                                           ; $40e6: $87
	ld   a, b                                        ; $40e7: $78
	adc  b                                           ; $40e8: $88
	adc  b                                           ; $40e9: $88
	adc  b                                           ; $40ea: $88
	adc  c                                           ; $40eb: $89
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	add  a                                           ; $40ef: $87
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
	sbc  b                                           ; $41e1: $98
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
	sbc  b                                           ; $4203: $98
	adc  b                                           ; $4204: $88
	sbc  b                                           ; $4205: $98
	adc  b                                           ; $4206: $88
	adc  b                                           ; $4207: $88
	add  a                                           ; $4208: $87
	adc  c                                           ; $4209: $89
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	sbc  b                                           ; $420c: $98
	add  a                                           ; $420d: $87
	adc  c                                           ; $420e: $89
	sbc  b                                           ; $420f: $98
	ld   a, b                                        ; $4210: $78
	adc  b                                           ; $4211: $88
	adc  b                                           ; $4212: $88
	add  a                                           ; $4213: $87
	add  a                                           ; $4214: $87
	adc  b                                           ; $4215: $88
	adc  c                                           ; $4216: $89
	add  a                                           ; $4217: $87
	adc  c                                           ; $4218: $89
	sbc  b                                           ; $4219: $98
	ld   [hl], a                                     ; $421a: $77
	add  a                                           ; $421b: $87
	adc  c                                           ; $421c: $89
	add  a                                           ; $421d: $87
	adc  b                                           ; $421e: $88
	adc  c                                           ; $421f: $89
	adc  b                                           ; $4220: $88
	add  a                                           ; $4221: $87
	ld   [hl], a                                     ; $4222: $77
	ld   [hl], a                                     ; $4223: $77
	adc  c                                           ; $4224: $89
	sbc  c                                           ; $4225: $99
	sbc  c                                           ; $4226: $99
	add  [hl]                                        ; $4227: $86
	ld   d, h                                        ; $4228: $54
	ld   d, [hl]                                     ; $4229: $56
	ld   h, a                                        ; $422a: $67
	ld   a, c                                        ; $422b: $79
	cp   e                                           ; $422c: $bb
	call $98db                                       ; $422d: $cd $db $98
	ld   sp, $5116                                   ; $4230: $31 $16 $51
	adc  l                                           ; $4233: $8d
	jp   hl                                          ; $4234: $e9


	rst  $28                                         ; $4235: $ef
	ret                                              ; $4236: $c9


	xor  h                                           ; $4237: $ac
	ld   [hl], e                                     ; $4238: $73
	ld   h, l                                        ; $4239: $65
	ld   de, $441f                                   ; $423a: $11 $1f $44
	rst  $38                                         ; $423d: $ff
	call nz, Call_0b9_44ff                           ; $423e: $c4 $ff $44
	adc  [hl]                                        ; $4241: $8e
	inc  de                                          ; $4242: $13
	sub  l                                           ; $4243: $95
	ld   de, $1bfd                                   ; $4244: $11 $fd $1b
	rst  $38                                         ; $4247: $ff
	add  hl, sp                                      ; $4248: $39
	ld   hl, sp+$25                                  ; $4249: $f8 $25
	ld   hl, sp+$18                                  ; $424b: $f8 $18
	add  c                                           ; $424d: $81
	dec  e                                           ; $424e: $1d
	pop  af                                          ; $424f: $f1
	sbc  a                                           ; $4250: $9f
	db   $f4                                         ; $4251: $f4
	ld   e, a                                        ; $4252: $5f
	and  d                                           ; $4253: $a2
	rra                                              ; $4254: $1f
	or   c                                           ; $4255: $b1
	ld   l, e                                        ; $4256: $6b
	ld   sp, $633f                                   ; $4257: $31 $3f $63
	rst  $38                                         ; $425a: $ff
	and  c                                           ; $425b: $a1
	rst  $38                                         ; $425c: $ff
	ld   sp, $13cf                                   ; $425d: $31 $cf $13
	or   a                                           ; $4260: $b7
	ld   de, $1efe                                   ; $4261: $11 $fe $1e
	rst  $38                                         ; $4264: $ff
	dec  de                                          ; $4265: $1b
	or   $16                                         ; $4266: $f6 $16
	or   $1a                                         ; $4268: $f6 $1a
	and  c                                           ; $426a: $a1
	dec  de                                          ; $426b: $1b
	di                                               ; $426c: $f3
	ld   l, a                                        ; $426d: $6f
	di                                               ; $426e: $f3
	rra                                              ; $426f: $1f
	pop  bc                                          ; $4270: $c1
	rra                                              ; $4271: $1f
	pop  af                                          ; $4272: $f1
	ld   e, e                                        ; $4273: $5b
	ld   b, c                                        ; $4274: $41
	rra                                              ; $4275: $1f
	or   d                                           ; $4276: $b2
	rst  $38                                         ; $4277: $ff
	or   c                                           ; $4278: $b1
	cp   a                                           ; $4279: $bf
	ld   d, c                                        ; $427a: $51
	xor  a                                           ; $427b: $af
	ld   b, d                                        ; $427c: $42
	xor  b                                           ; $427d: $a8
	ld   de, $3bff                                   ; $427e: $11 $ff $3b
	rst  $38                                         ; $4281: $ff

jr_0b9_4282:
	inc  d                                           ; $4282: $14
	ld   a, [$fb13]                                  ; $4283: $fa $13 $fb
	ld   d, $a1                                      ; $4286: $16 $a1
	jr   jr_0b9_4282                                 ; $4288: $18 $f8

	ld   a, a                                        ; $428a: $7f
	db   $f4                                         ; $428b: $f4
	dec  e                                           ; $428c: $1d
	db   $d3                                         ; $428d: $d3
	rra                                              ; $428e: $1f
	di                                               ; $428f: $f3
	jr   c, jr_0b9_42c3                              ; $4290: $38 $31

	rra                                              ; $4292: $1f
	rst  ToBoot                                         ; $4293: $c7
	rst  $38                                         ; $4294: $ff
	and  c                                           ; $4295: $a1
	adc  [hl]                                        ; $4296: $8e
	ld   [hl], c                                     ; $4297: $71
	cp   a                                           ; $4298: $bf
	ld   [hl], c                                     ; $4299: $71
	ld   h, [hl]                                     ; $429a: $66
	ld   de, $8dff                                   ; $429b: $11 $ff $8d
	rst  $38                                         ; $429e: $ff
	inc  de                                          ; $429f: $13
	jp   c, $fb17                                    ; $42a0: $da $17 $fb

	inc  de                                          ; $42a3: $13
	ld   d, c                                        ; $42a4: $51
	rra                                              ; $42a5: $1f
	db   $fc                                         ; $42a6: $fc

Call_0b9_42a7:
	rst  $28                                         ; $42a7: $ef
	pop  af                                          ; $42a8: $f1
	dec  hl                                          ; $42a9: $2b
	or   h                                           ; $42aa: $b4
	ld   l, a                                        ; $42ab: $6f
	jp   nc, $1113                                   ; $42ac: $d2 $13 $11

	rst  $38                                         ; $42af: $ff
	xor  $fe                                         ; $42b0: $ee $fe
	ld   [de], a                                     ; $42b2: $12
	xor  e                                           ; $42b3: $ab
	ld   l, b                                        ; $42b4: $68
	db   $fc                                         ; $42b5: $fc
	ld   sp, $1f11                                   ; $42b6: $31 $11 $1f
	rst  $38                                         ; $42b9: $ff
	rst  $38                                         ; $42ba: $ff
	pop  de                                          ; $42bb: $d1
	ld   c, c                                        ; $42bc: $49
	and  a                                           ; $42bd: $a7
	xor  a                                           ; $42be: $af
	and  e                                           ; $42bf: $a3
	ld   de, rAUD1LEN                                   ; $42c0: $11 $11 $ff

jr_0b9_42c3:
	rst  $38                                         ; $42c3: $ff
	ld   hl, sp+$16                                  ; $42c4: $f8 $16
	sbc  d                                           ; $42c6: $9a
	ld   l, l                                        ; $42c7: $6d
	rst  $30                                         ; $42c8: $f7
	ld   hl, $3f11                                   ; $42c9: $21 $11 $3f
	rst  $38                                         ; $42cc: $ff
	rst  $38                                         ; $42cd: $ff
	ld   b, c                                        ; $42ce: $41
	ld   l, b                                        ; $42cf: $68
	rst  ToBoot                                         ; $42d0: $c7
	rst  $38                                         ; $42d1: $ff
	ld   d, c                                        ; $42d2: $51
	ld   de, $ff1b                                   ; $42d3: $11 $1b $ff
	rst  $38                                         ; $42d6: $ff
	pop  hl                                          ; $42d7: $e1
	rla                                              ; $42d8: $17
	sbc  e                                           ; $42d9: $9b
	sbc  a                                           ; $42da: $9f

jr_0b9_42db:
	or   h                                           ; $42db: $b4
	ld   de, rAUD1LEN                                   ; $42dc: $11 $11 $ff
	rst  $38                                         ; $42df: $ff
	ld   sp, hl                                      ; $42e0: $f9
	ld   d, $8c                                      ; $42e1: $16 $8c
	xor  e                                           ; $42e3: $ab
	push af                                          ; $42e4: $f5
	ld   de, $7f11                                   ; $42e5: $11 $11 $7f
	rst  $38                                         ; $42e8: $ff
	db   $dd                                         ; $42e9: $dd
	ld   de, $fa8b                                   ; $42ea: $11 $8b $fa
	jp   hl                                          ; $42ed: $e9


	ld   de, $1f11                                   ; $42ee: $11 $11 $1f
	rst  $38                                         ; $42f1: $ff
	ld   a, [$4a81]                                  ; $42f2: $fa $81 $4a
	rst  $28                                         ; $42f5: $ef
	xor  [hl]                                        ; $42f6: $ae
	ld   b, c                                        ; $42f7: $41
	ld   de, rAUD1LEN                                   ; $42f8: $11 $11 $ff
	db   $fc                                         ; $42fb: $fc
	and  l                                           ; $42fc: $a5
	ld   d, $bf                                      ; $42fd: $16 $bf
	jp   c, $11b2                                    ; $42ff: $da $b2 $11

	ld   de, $ff7f                                   ; $4302: $11 $7f $ff
	sbc  c                                           ; $4305: $99
	ld   de, $faad                                   ; $4306: $11 $ad $fa
	or   [hl]                                        ; $4309: $b6
	ld   de, $1f11                                   ; $430a: $11 $11 $1f
	rst  $38                                         ; $430d: $ff
	add  sp, $71                                     ; $430e: $e8 $71
	ld   a, c                                        ; $4310: $79
	rst  $38                                         ; $4311: $ff
	adc  c                                           ; $4312: $89
	ld   [hl+], a                                    ; $4313: $22
	ld   de, $ff16                                   ; $4314: $11 $16 $ff
	ld   sp, hl                                      ; $4317: $f9
	sub  d                                           ; $4318: $92
	ld   a, [hl-]                                    ; $4319: $3a
	cp   a                                           ; $431a: $bf
	xor  d                                           ; $431b: $aa
	ld   b, c                                        ; $431c: $41
	ld   de, rAUD1LEN                                   ; $431d: $11 $11 $ff
	db   $fd                                         ; $4320: $fd
	sub  a                                           ; $4321: $97
	add  hl, de                                      ; $4322: $19
	sbc  a                                           ; $4323: $9f
	ret  c                                           ; $4324: $d8

	ld   h, d                                        ; $4325: $62
	ld   de, rAUD1LEN                                   ; $4326: $11 $11 $ff
	rst  $38                                         ; $4329: $ff
	adc  c                                           ; $432a: $89
	jr   c, jr_0b9_42db                              ; $432b: $38 $ae

	ret  z                                           ; $432d: $c8

	ld   [hl], c                                     ; $432e: $71
	ld   de, rAUD1ENV                                   ; $432f: $11 $12 $ff
	rst  $38                                         ; $4332: $ff
	xor  c                                           ; $4333: $a9
	jr   c, @-$41                                    ; $4334: $38 $bd

	rst  $10                                         ; $4336: $d7
	ld   h, c                                        ; $4337: $61
	ld   de, $ff19                                   ; $4338: $11 $19 $ff
	xor  $b7                                         ; $433b: $ee $b7
	ld   c, h                                        ; $433d: $4c
	call c, $2174                                    ; $433e: $dc $74 $21
	ld   de, $fdcf                                   ; $4341: $11 $cf $fd
	db   $ed                                         ; $4344: $ed
	ld   h, a                                        ; $4345: $67
	xor  $a2                                         ; $4346: $ee $a2
	ld   de, $4f11                                   ; $4348: $11 $11 $4f
	db   $fd                                         ; $434b: $fd
	call c, $ff97                                    ; $434c: $dc $97 $ff
	or   [hl]                                        ; $434f: $b6
	ld   de, $1c11                                   ; $4350: $11 $11 $1c
	cp   $dc                                         ; $4353: $fe $dc
	and  a                                           ; $4355: $a7
	xor  a                                           ; $4356: $af
	ld   [$1121], a                                  ; $4357: $ea $21 $11
	rla                                              ; $435a: $17
	rst  $38                                         ; $435b: $ff
	db   $dd                                         ; $435c: $dd
	ret                                              ; $435d: $c9


	adc  a                                           ; $435e: $8f
	db   $fc                                         ; $435f: $fc
	ld   b, c                                        ; $4360: $41
	ld   de, rAUD1ENV                                   ; $4361: $11 $12 $ff
	call z, Call_0b9_7dca                            ; $4364: $cc $ca $7d
	db   $fc                                         ; $4367: $fc
	add  d                                           ; $4368: $82
	ld   bc, $8f11                                   ; $4369: $01 $11 $8f
	db   $dd                                         ; $436c: $dd
	call z, $fd89                                    ; $436d: $cc $89 $fd
	or   h                                           ; $4370: $b4
	ld   hl, $1e11                                   ; $4371: $21 $11 $1e
	db   $fd                                         ; $4374: $fd
	call c, $ddb9                                    ; $4375: $dc $b9 $dd
	rst  ToBoot                                         ; $4378: $c7
	ld   sp, $1711                                   ; $4379: $31 $11 $17
	cp   $cd                                         ; $437c: $fe $cd
	reti                                             ; $437e: $d9


	sbc  [hl]                                        ; $437f: $9e
	ld   [$1142], a                                  ; $4380: $ea $42 $11
	ld   de, $dddf                                   ; $4383: $11 $df $dd
	db   $ec                                         ; $4386: $ec
	adc  h                                           ; $4387: $8c
	db   $fc                                         ; $4388: $fc
	add  e                                           ; $4389: $83
	ld   hl, $5f11                                   ; $438a: $21 $11 $5f
	cp   $de                                         ; $438d: $fe $de
	xor  b                                           ; $438f: $a8
	db   $dd                                         ; $4390: $dd
	or   [hl]                                        ; $4391: $b6
	ld   sp, $1a11                                   ; $4392: $31 $11 $1a
	cp   $cd                                         ; $4395: $fe $cd
	ret  c                                           ; $4397: $d8

	xor  l                                           ; $4398: $ad
	jp   c, $1142                                    ; $4399: $da $42 $11

	inc  d                                           ; $439c: $14
	rst  $38                                         ; $439d: $ff
	db   $dd                                         ; $439e: $dd
	ld   [$db9d], a                                  ; $439f: $ea $9d $db
	ld   h, h                                        ; $43a2: $64
	ld   hl, $7f11                                   ; $43a3: $21 $11 $7f
	db   $ed                                         ; $43a6: $ed
	db   $ed                                         ; $43a7: $ed
	xor  d                                           ; $43a8: $aa
	db   $dd                                         ; $43a9: $dd
	sub  [hl]                                        ; $43aa: $96
	ld   sp, $1b11                                   ; $43ab: $31 $11 $1b
	db   $fc                                         ; $43ae: $fc
	xor  $c8                                         ; $43af: $ee $c8
	adc  $b8                                         ; $43b1: $ce $b8
	ld   d, e                                        ; $43b3: $53
	ld   de, $de14                                   ; $43b4: $11 $14 $de
	adc  $ec                                         ; $43b7: $ce $ec
	sbc  h                                           ; $43b9: $9c
	jp   c, $3175                                    ; $43ba: $da $75 $31

	ld   de, $dd5c                                   ; $43bd: $11 $5c $dd
	xor  $ba                                         ; $43c0: $ee $ba
	call z, Call_0b9_42a7                            ; $43c2: $cc $a7 $42
	ld   de, $de15                                   ; $43c5: $11 $15 $de
	db   $dd                                         ; $43c8: $dd
	ei                                               ; $43c9: $fb
	xor  h                                           ; $43ca: $ac
	ret                                              ; $43cb: $c9


	ld   h, h                                        ; $43cc: $64
	ld   sp, $5b11                                   ; $43cd: $31 $11 $5b
	call $dbef                                       ; $43d0: $cd $ef $db
	res  2, [hl]                                     ; $43d3: $cb $96
	ld   b, d                                        ; $43d5: $42
	ld   de, $dd16                                   ; $43d6: $11 $16 $dd
	sbc  $fb                                         ; $43d9: $de $fb
	cp   l                                           ; $43db: $bd
	ret                                              ; $43dc: $c9


	ld   d, h                                        ; $43dd: $54
	ld   hl, $8d11                                   ; $43de: $21 $11 $8d
	call $bcfe                                       ; $43e1: $cd $fe $bc
	jp   z, $4285                                    ; $43e4: $ca $85 $42

	ld   de, wDayPassedMiscCounterIdx                                   ; $43e7: $11 $19 $cc
	rst  JumpTable                                         ; $43ea: $df
	db   $fc                                         ; $43eb: $fc
	call Call_0b9_44a7                               ; $43ec: $cd $a7 $44
	ld   de, $ab12                                   ; $43ef: $11 $12 $ab
	cp   [hl]                                        ; $43f2: $be
	cp   $cc                                         ; $43f3: $fe $cc
	cp   d                                           ; $43f5: $ba
	ld   [hl], l                                     ; $43f6: $75
	ld   b, c                                        ; $43f7: $41
	ld   de, $bc3a                                   ; $43f8: $11 $3a $bc
	rst  JumpTable                                         ; $43fb: $df
	call c, $96db                                    ; $43fc: $dc $db $96
	ld   d, h                                        ; $43ff: $54
	ld   de, $9a13                                   ; $4400: $11 $13 $9a
	call $cdfe                                       ; $4403: $cd $fe $cd
	xor  b                                           ; $4406: $a8
	ld   h, l                                        ; $4407: $65
	ld   sp, $4a11                                   ; $4408: $31 $11 $4a
	xor  h                                           ; $440b: $ac
	rst  JumpTable                                         ; $440c: $df
	db   $ec                                         ; $440d: $ec
	jp   c, Jump_0b9_5386                            ; $440e: $da $86 $53

	ld   hl, $8a14                                   ; $4411: $21 $14 $8a
	adc  $fe                                         ; $4414: $ce $fe
	db   $dd                                         ; $4416: $dd
	xor  b                                           ; $4417: $a8
	ld   h, h                                        ; $4418: $64
	ld   [hl-], a                                    ; $4419: $32
	ld   de, $9b58                                   ; $441a: $11 $58 $9b
	rst  JumpTable                                         ; $441d: $df
	sbc  $db                                         ; $441e: $de $db
	add  [hl]                                        ; $4420: $86
	ld   d, e                                        ; $4421: $53
	ld   hl, $7915                                   ; $4422: $21 $15 $79
	cp   h                                           ; $4425: $bc
	sbc  $dc                                         ; $4426: $de $dc
	cp   b                                           ; $4428: $b8
	ld   [hl], l                                     ; $4429: $75
	ld   b, e                                        ; $442a: $43
	ld   [hl+], a                                    ; $442b: $22
	ld   b, a                                        ; $442c: $47
	adc  c                                           ; $442d: $89
	cp   l                                           ; $442e: $bd
	db   $dd                                         ; $442f: $dd
	jp   z, Jump_0b9_6597                            ; $4430: $ca $97 $65

	ld   b, e                                        ; $4433: $43
	inc  [hl]                                        ; $4434: $34
	ld   h, a                                        ; $4435: $67
	adc  d                                           ; $4436: $8a
	cp   e                                           ; $4437: $bb
	call z, $97ba                                    ; $4438: $cc $ba $97
	ld   h, [hl]                                     ; $443b: $66
	ld   b, h                                        ; $443c: $44
	ld   b, [hl]                                     ; $443d: $46
	ld   [hl], a                                     ; $443e: $77
	sbc  d                                           ; $443f: $9a
	xor  d                                           ; $4440: $aa
	cp   e                                           ; $4441: $bb
	xor  d                                           ; $4442: $aa
	sbc  b                                           ; $4443: $98
	halt                                             ; $4444: $76
	ld   d, l                                        ; $4445: $55
	ld   d, [hl]                                     ; $4446: $56
	ld   [hl], a                                     ; $4447: $77
	adc  c                                           ; $4448: $89
	sbc  d                                           ; $4449: $9a
	cp   d                                           ; $444a: $ba
	sbc  c                                           ; $444b: $99
	sbc  b                                           ; $444c: $98
	add  a                                           ; $444d: $87
	ld   h, [hl]                                     ; $444e: $66
	ld   h, [hl]                                     ; $444f: $66
	ld   h, a                                        ; $4450: $67
	ld   [hl], a                                     ; $4451: $77
	sbc  c                                           ; $4452: $99
	sbc  c                                           ; $4453: $99
	sbc  d                                           ; $4454: $9a
	sbc  b                                           ; $4455: $98
	add  a                                           ; $4456: $87
	ld   h, [hl]                                     ; $4457: $66
	ld   h, [hl]                                     ; $4458: $66
	ld   h, [hl]                                     ; $4459: $66
	ld   [hl], a                                     ; $445a: $77
	adc  c                                           ; $445b: $89
	sbc  c                                           ; $445c: $99
	xor  d                                           ; $445d: $aa
	xor  c                                           ; $445e: $a9
	add  a                                           ; $445f: $87
	halt                                             ; $4460: $76
	ld   h, [hl]                                     ; $4461: $66
	ld   h, [hl]                                     ; $4462: $66
	ld   l, b                                        ; $4463: $68
	sbc  b                                           ; $4464: $98
	sbc  d                                           ; $4465: $9a
	xor  d                                           ; $4466: $aa
	sbc  d                                           ; $4467: $9a
	add  a                                           ; $4468: $87
	halt                                             ; $4469: $76
	ld   h, [hl]                                     ; $446a: $66
	ld   d, [hl]                                     ; $446b: $56
	ld   [hl], a                                     ; $446c: $77
	adc  b                                           ; $446d: $88
	sbc  e                                           ; $446e: $9b
	xor  d                                           ; $446f: $aa
	xor  c                                           ; $4470: $a9
	add  a                                           ; $4471: $87
	ld   h, [hl]                                     ; $4472: $66
	ld   h, l                                        ; $4473: $65
	ld   d, [hl]                                     ; $4474: $56
	ld   [hl], a                                     ; $4475: $77
	adc  c                                           ; $4476: $89
	xor  d                                           ; $4477: $aa
	xor  d                                           ; $4478: $aa
	xor  d                                           ; $4479: $aa
	add  a                                           ; $447a: $87
	halt                                             ; $447b: $76
	ld   h, l                                        ; $447c: $65
	ld   d, [hl]                                     ; $447d: $56
	ld   [hl], a                                     ; $447e: $77
	sbc  d                                           ; $447f: $9a
	cp   e                                           ; $4480: $bb
	xor  d                                           ; $4481: $aa
	xor  c                                           ; $4482: $a9
	add  a                                           ; $4483: $87
	ld   h, [hl]                                     ; $4484: $66
	ld   h, l                                        ; $4485: $65
	ld   d, [hl]                                     ; $4486: $56
	ld   a, b                                        ; $4487: $78
	adc  c                                           ; $4488: $89
	xor  e                                           ; $4489: $ab
	cp   d                                           ; $448a: $ba
	sbc  c                                           ; $448b: $99
	ld   [hl], a                                     ; $448c: $77
	ld   h, [hl]                                     ; $448d: $66
	ld   d, l                                        ; $448e: $55
	ld   d, [hl]                                     ; $448f: $56
	ld   a, b                                        ; $4490: $78
	sbc  d                                           ; $4491: $9a
	cp   e                                           ; $4492: $bb
	xor  d                                           ; $4493: $aa
	xor  c                                           ; $4494: $a9
	ld   [hl], a                                     ; $4495: $77
	ld   h, [hl]                                     ; $4496: $66
	ld   d, l                                        ; $4497: $55
	ld   d, [hl]                                     ; $4498: $56
	ld   a, b                                        ; $4499: $78
	sbc  d                                           ; $449a: $9a
	xor  d                                           ; $449b: $aa
	cp   d                                           ; $449c: $ba
	sbc  b                                           ; $449d: $98
	ld   [hl], a                                     ; $449e: $77
	ld   h, [hl]                                     ; $449f: $66
	ld   d, l                                        ; $44a0: $55
	ld   d, [hl]                                     ; $44a1: $56
	ld   a, c                                        ; $44a2: $79
	sbc  d                                           ; $44a3: $9a
	xor  e                                           ; $44a4: $ab
	cp   d                                           ; $44a5: $ba
	sbc  b                                           ; $44a6: $98

Call_0b9_44a7:
	halt                                             ; $44a7: $76
	ld   h, [hl]                                     ; $44a8: $66
	ld   d, l                                        ; $44a9: $55
	ld   d, a                                        ; $44aa: $57
	ld   a, b                                        ; $44ab: $78
	sbc  d                                           ; $44ac: $9a
	xor  d                                           ; $44ad: $aa
	cp   e                                           ; $44ae: $bb
	xor  c                                           ; $44af: $a9
	halt                                             ; $44b0: $76
	ld   h, [hl]                                     ; $44b1: $66
	ld   d, l                                        ; $44b2: $55
	ld   h, a                                        ; $44b3: $67
	ld   a, b                                        ; $44b4: $78
	sbc  d                                           ; $44b5: $9a
	cp   e                                           ; $44b6: $bb
	cp   e                                           ; $44b7: $bb
	sbc  c                                           ; $44b8: $99
	halt                                             ; $44b9: $76
	ld   h, [hl]                                     ; $44ba: $66
	ld   d, l                                        ; $44bb: $55
	ld   h, [hl]                                     ; $44bc: $66
	ld   a, b                                        ; $44bd: $78
	sbc  d                                           ; $44be: $9a
	cp   e                                           ; $44bf: $bb
	cp   d                                           ; $44c0: $ba
	sbc  b                                           ; $44c1: $98
	halt                                             ; $44c2: $76
	ld   h, [hl]                                     ; $44c3: $66
	ld   d, l                                        ; $44c4: $55
	ld   d, [hl]                                     ; $44c5: $56
	ld   a, b                                        ; $44c6: $78
	sbc  d                                           ; $44c7: $9a
	cp   d                                           ; $44c8: $ba
	xor  d                                           ; $44c9: $aa
	xor  c                                           ; $44ca: $a9
	halt                                             ; $44cb: $76
	ld   h, [hl]                                     ; $44cc: $66
	ld   d, l                                        ; $44cd: $55
	ld   d, [hl]                                     ; $44ce: $56
	ld   a, b                                        ; $44cf: $78
	adc  d                                           ; $44d0: $8a
	cp   e                                           ; $44d1: $bb
	cp   d                                           ; $44d2: $ba
	xor  c                                           ; $44d3: $a9
	add  [hl]                                        ; $44d4: $86
	ld   h, [hl]                                     ; $44d5: $66
	ld   d, l                                        ; $44d6: $55
	ld   d, [hl]                                     ; $44d7: $56
	ld   a, b                                        ; $44d8: $78
	sbc  c                                           ; $44d9: $99
	xor  e                                           ; $44da: $ab
	cp   d                                           ; $44db: $ba
	xor  d                                           ; $44dc: $aa
	add  [hl]                                        ; $44dd: $86
	ld   h, [hl]                                     ; $44de: $66
	ld   d, l                                        ; $44df: $55
	ld   d, [hl]                                     ; $44e0: $56
	ld   a, b                                        ; $44e1: $78
	sbc  c                                           ; $44e2: $99
	cp   e                                           ; $44e3: $bb
	xor  d                                           ; $44e4: $aa
	xor  d                                           ; $44e5: $aa
	add  a                                           ; $44e6: $87
	ld   h, [hl]                                     ; $44e7: $66
	ld   h, l                                        ; $44e8: $65
	ld   d, l                                        ; $44e9: $55
	ld   a, b                                        ; $44ea: $78
	sbc  c                                           ; $44eb: $99
	xor  e                                           ; $44ec: $ab
	cp   e                                           ; $44ed: $bb
	xor  c                                           ; $44ee: $a9
	sub  a                                           ; $44ef: $97
	ld   h, [hl]                                     ; $44f0: $66
	ld   h, l                                        ; $44f1: $65
	ld   d, l                                        ; $44f2: $55
	ld   h, a                                        ; $44f3: $67
	adc  c                                           ; $44f4: $89
	xor  d                                           ; $44f5: $aa
	cp   d                                           ; $44f6: $ba
	xor  d                                           ; $44f7: $aa
	xor  b                                           ; $44f8: $a8
	ld   h, [hl]                                     ; $44f9: $66
	ld   h, [hl]                                     ; $44fa: $66
	ld   d, l                                        ; $44fb: $55
	ld   h, a                                        ; $44fc: $67
	adc  c                                           ; $44fd: $89
	sbc  d                                           ; $44fe: $9a

Call_0b9_44ff:
	cp   e                                           ; $44ff: $bb
	xor  c                                           ; $4500: $a9
	xor  c                                           ; $4501: $a9
	halt                                             ; $4502: $76
	ld   h, [hl]                                     ; $4503: $66
	ld   h, l                                        ; $4504: $65
	ld   d, [hl]                                     ; $4505: $56
	adc  b                                           ; $4506: $88
	adc  d                                           ; $4507: $8a
	xor  d                                           ; $4508: $aa
	cp   c                                           ; $4509: $b9
	xor  c                                           ; $450a: $a9
	sub  a                                           ; $450b: $97
	ld   h, [hl]                                     ; $450c: $66
	ld   h, [hl]                                     ; $450d: $66
	ld   d, [hl]                                     ; $450e: $56
	ld   a, b                                        ; $450f: $78
	adc  c                                           ; $4510: $89
	sbc  e                                           ; $4511: $9b
	cp   c                                           ; $4512: $b9
	xor  d                                           ; $4513: $aa
	sbc  b                                           ; $4514: $98
	ld   h, [hl]                                     ; $4515: $66
	ld   h, [hl]                                     ; $4516: $66
	ld   h, [hl]                                     ; $4517: $66
	ld   h, a                                        ; $4518: $67
	adc  b                                           ; $4519: $88
	sbc  c                                           ; $451a: $99
	xor  d                                           ; $451b: $aa
	sbc  d                                           ; $451c: $9a
	sbc  c                                           ; $451d: $99
	halt                                             ; $451e: $76
	ld   h, [hl]                                     ; $451f: $66
	ld   h, [hl]                                     ; $4520: $66
	ld   h, a                                        ; $4521: $67
	adc  b                                           ; $4522: $88
	adc  c                                           ; $4523: $89
	sbc  d                                           ; $4524: $9a
	xor  c                                           ; $4525: $a9
	sbc  c                                           ; $4526: $99
	add  a                                           ; $4527: $87
	ld   h, [hl]                                     ; $4528: $66
	halt                                             ; $4529: $76
	ld   h, [hl]                                     ; $452a: $66
	ld   a, b                                        ; $452b: $78
	adc  b                                           ; $452c: $88
	sbc  c                                           ; $452d: $99
	xor  c                                           ; $452e: $a9
	sbc  c                                           ; $452f: $99
	adc  b                                           ; $4530: $88
	halt                                             ; $4531: $76
	ld   h, [hl]                                     ; $4532: $66
	ld   h, [hl]                                     ; $4533: $66
	ld   [hl], a                                     ; $4534: $77
	sbc  c                                           ; $4535: $99
	sbc  c                                           ; $4536: $99
	xor  c                                           ; $4537: $a9
	xor  c                                           ; $4538: $a9
	sbc  b                                           ; $4539: $98
	add  a                                           ; $453a: $87
	ld   h, [hl]                                     ; $453b: $66
	ld   h, [hl]                                     ; $453c: $66
	ld   [hl], a                                     ; $453d: $77
	adc  c                                           ; $453e: $89
	xor  d                                           ; $453f: $aa
	xor  d                                           ; $4540: $aa
	sbc  c                                           ; $4541: $99
	sbc  b                                           ; $4542: $98
	add  a                                           ; $4543: $87
	ld   h, l                                        ; $4544: $65
	ld   h, [hl]                                     ; $4545: $66
	ld   [hl], a                                     ; $4546: $77
	ld   a, c                                        ; $4547: $79
	sbc  c                                           ; $4548: $99
	sbc  c                                           ; $4549: $99
	xor  c                                           ; $454a: $a9
	adc  c                                           ; $454b: $89
	sbc  b                                           ; $454c: $98
	halt                                             ; $454d: $76
	ld   d, [hl]                                     ; $454e: $56
	ld   h, a                                        ; $454f: $67
	ld   a, b                                        ; $4550: $78
	adc  d                                           ; $4551: $8a
	xor  d                                           ; $4552: $aa
	xor  c                                           ; $4553: $a9
	sbc  b                                           ; $4554: $98
	ld   [hl], a                                     ; $4555: $77
	ld   [hl], a                                     ; $4556: $77
	ld   h, l                                        ; $4557: $65
	ld   d, [hl]                                     ; $4558: $56
	ld   a, c                                        ; $4559: $79
	sbc  d                                           ; $455a: $9a
	xor  d                                           ; $455b: $aa
	cp   c                                           ; $455c: $b9
	sbc  b                                           ; $455d: $98
	ld   [hl], a                                     ; $455e: $77
	ld   h, [hl]                                     ; $455f: $66
	ld   h, l                                        ; $4560: $65
	ld   d, l                                        ; $4561: $55
	ld   l, b                                        ; $4562: $68
	sbc  e                                           ; $4563: $9b
	cp   h                                           ; $4564: $bc
	jp   z, Jump_0b9_76a8                            ; $4565: $ca $a8 $76

	ld   h, l                                        ; $4568: $65
	ld   d, l                                        ; $4569: $55
	ld   d, h                                        ; $456a: $54
	ld   d, [hl]                                     ; $456b: $56
	adc  e                                           ; $456c: $8b
	cp   l                                           ; $456d: $bd
	call z, $87b9                                    ; $456e: $cc $b9 $87
	ld   h, l                                        ; $4571: $65
	ld   d, l                                        ; $4572: $55
	ld   d, l                                        ; $4573: $55
	ld   b, l                                        ; $4574: $45
	ld   l, c                                        ; $4575: $69
	xor  e                                           ; $4576: $ab
	call c, $a9da                                    ; $4577: $dc $da $a9
	halt                                             ; $457a: $76
	ld   d, l                                        ; $457b: $55
	ld   b, l                                        ; $457c: $45
	ld   d, h                                        ; $457d: $54
	ld   d, [hl]                                     ; $457e: $56
	sbc  e                                           ; $457f: $9b
	db   $dd                                         ; $4580: $dd
	call c, $88ba                                    ; $4581: $dc $ba $88
	ld   h, l                                        ; $4584: $65
	ld   b, h                                        ; $4585: $44
	ld   b, l                                        ; $4586: $45
	ld   d, h                                        ; $4587: $54
	ld   d, a                                        ; $4588: $57
	cp   h                                           ; $4589: $bc
	call $a9dc                                       ; $458a: $cd $dc $a9
	sub  [hl]                                        ; $458d: $96
	ld   d, e                                        ; $458e: $53
	ld   b, h                                        ; $458f: $44
	ld   d, l                                        ; $4590: $55
	ld   d, l                                        ; $4591: $55
	ld   a, d                                        ; $4592: $7a
	adc  $dc                                         ; $4593: $ce $dc
	jp   z, Jump_0b9_6499                            ; $4595: $ca $99 $64

	ld   b, h                                        ; $4598: $44
	ld   d, h                                        ; $4599: $54
	ld   d, l                                        ; $459a: $55
	ld   d, a                                        ; $459b: $57
	adc  e                                           ; $459c: $8b
	db   $dd                                         ; $459d: $dd
	call c, $87a9                                    ; $459e: $dc $a9 $87
	ld   h, h                                        ; $45a1: $64
	ld   b, h                                        ; $45a2: $44
	ld   d, l                                        ; $45a3: $55
	ld   d, h                                        ; $45a4: $54
	ld   l, b                                        ; $45a5: $68
	call $cbdd                                       ; $45a6: $cd $dd $cb
	sbc  c                                           ; $45a9: $99
	add  [hl]                                        ; $45aa: $86
	ld   d, e                                        ; $45ab: $53
	ld   b, h                                        ; $45ac: $44
	ld   d, l                                        ; $45ad: $55
	ld   b, h                                        ; $45ae: $44
	ld   a, e                                        ; $45af: $7b
	sbc  $ed                                         ; $45b0: $de $ed
	cp   e                                           ; $45b2: $bb
	xor  b                                           ; $45b3: $a8
	ld   [hl], l                                     ; $45b4: $75
	ld   d, h                                        ; $45b5: $54
	ld   d, l                                        ; $45b6: $55
	ld   d, l                                        ; $45b7: $55
	ld   d, [hl]                                     ; $45b8: $56
	adc  h                                           ; $45b9: $8c
	sbc  $dc                                         ; $45ba: $de $dc
	xor  c                                           ; $45bc: $a9
	adc  b                                           ; $45bd: $88
	ld   [hl], l                                     ; $45be: $75
	ld   b, h                                        ; $45bf: $44
	ld   h, l                                        ; $45c0: $65
	ld   b, h                                        ; $45c1: $44
	ld   e, c                                        ; $45c2: $59
	xor  l                                           ; $45c3: $ad
	db   $ed                                         ; $45c4: $ed
	jp   z, $87a9                                    ; $45c5: $ca $a9 $87

	ld   d, l                                        ; $45c8: $55
	ld   b, l                                        ; $45c9: $45
	ld   d, l                                        ; $45ca: $55
	ld   d, h                                        ; $45cb: $54
	ld   a, c                                        ; $45cc: $79
	cp   l                                           ; $45cd: $bd
	adc  $db                                         ; $45ce: $ce $db
	sub  a                                           ; $45d0: $97
	halt                                             ; $45d1: $76
	ld   d, h                                        ; $45d2: $54
	ld   d, l                                        ; $45d3: $55
	ld   b, [hl]                                     ; $45d4: $46
	ld   d, l                                        ; $45d5: $55
	ld   l, d                                        ; $45d6: $6a
	call z, $badd                                    ; $45d7: $cc $dd $ba
	sbc  b                                           ; $45da: $98
	add  [hl]                                        ; $45db: $86
	ld   h, l                                        ; $45dc: $65
	ld   b, l                                        ; $45dd: $45
	ld   b, l                                        ; $45de: $45
	ld   b, [hl]                                     ; $45df: $46
	adc  d                                           ; $45e0: $8a
	db   $dd                                         ; $45e1: $dd
	call c, $88b9                                    ; $45e2: $dc $b9 $88
	halt                                             ; $45e5: $76
	ld   d, l                                        ; $45e6: $55
	ld   h, l                                        ; $45e7: $65
	ld   d, h                                        ; $45e8: $54
	ld   b, [hl]                                     ; $45e9: $46
	adc  e                                           ; $45ea: $8b
	sbc  $ed                                         ; $45eb: $de $ed
	xor  c                                           ; $45ed: $a9
	adc  b                                           ; $45ee: $88
	halt                                             ; $45ef: $76
	ld   d, l                                        ; $45f0: $55
	ld   h, l                                        ; $45f1: $65
	ld   d, h                                        ; $45f2: $54
	ld   b, [hl]                                     ; $45f3: $46
	sbc  h                                           ; $45f4: $9c
	db   $ed                                         ; $45f5: $ed
	call c, $8999                                    ; $45f6: $dc $99 $89
	ld   h, [hl]                                     ; $45f9: $66
	ld   h, l                                        ; $45fa: $65
	ld   h, h                                        ; $45fb: $64
	ld   b, h                                        ; $45fc: $44
	ld   d, a                                        ; $45fd: $57
	sbc  h                                           ; $45fe: $9c
	call $99db                                       ; $45ff: $cd $db $99
	sbc  c                                           ; $4602: $99
	ld   h, [hl]                                     ; $4603: $66
	ld   d, l                                        ; $4604: $55
	ld   h, l                                        ; $4605: $65
	ld   d, h                                        ; $4606: $54
	ld   b, [hl]                                     ; $4607: $46
	sbc  l                                           ; $4608: $9d
	sbc  $ca                                         ; $4609: $de $ca
	sbc  b                                           ; $460b: $98
	adc  b                                           ; $460c: $88
	ld   h, [hl]                                     ; $460d: $66
	ld   b, l                                        ; $460e: $45
	ld   h, l                                        ; $460f: $65
	ld   d, h                                        ; $4610: $54
	ld   d, a                                        ; $4611: $57
	xor  e                                           ; $4612: $ab
	call z, $a8cb                                    ; $4613: $cc $cb $a8
	ld   a, b                                        ; $4616: $78
	add  a                                           ; $4617: $87
	ld   d, h                                        ; $4618: $54
	ld   d, l                                        ; $4619: $55
	ld   h, h                                        ; $461a: $64
	ld   b, [hl]                                     ; $461b: $46
	sbc  h                                           ; $461c: $9c
	db   $db                                         ; $461d: $db
	call z, Call_0b9_77aa                            ; $461e: $cc $aa $77
	ld   [hl], a                                     ; $4621: $77
	ld   [hl], l                                     ; $4622: $75
	ld   d, h                                        ; $4623: $54
	ld   d, l                                        ; $4624: $55
	ld   d, [hl]                                     ; $4625: $56
	adc  h                                           ; $4626: $8c
	db   $dd                                         ; $4627: $dd
	res  3, d                                        ; $4628: $cb $9a
	sbc  b                                           ; $462a: $98
	ld   [hl], l                                     ; $462b: $75
	ld   h, [hl]                                     ; $462c: $66
	ld   h, l                                        ; $462d: $65
	ld   d, h                                        ; $462e: $54
	ld   d, [hl]                                     ; $462f: $56
	sbc  d                                           ; $4630: $9a
	cp   l                                           ; $4631: $bd
	cp   h                                           ; $4632: $bc
	xor  d                                           ; $4633: $aa
	sbc  b                                           ; $4634: $98
	sub  a                                           ; $4635: $97
	halt                                             ; $4636: $76
	ld   h, l                                        ; $4637: $65
	ld   d, h                                        ; $4638: $54
	ld   b, l                                        ; $4639: $45
	ld   a, e                                        ; $463a: $7b
	call $babc                                       ; $463b: $cd $bc $ba
	and  a                                           ; $463e: $a7
	add  a                                           ; $463f: $87
	ld   [hl], a                                     ; $4640: $77
	ld   d, [hl]                                     ; $4641: $56
	ld   b, l                                        ; $4642: $45
	ld   d, [hl]                                     ; $4643: $56
	ld   a, b                                        ; $4644: $78
	xor  h                                           ; $4645: $ac
	call z, $97ca                                    ; $4646: $cc $ca $97
	add  a                                           ; $4649: $87
	halt                                             ; $464a: $76
	ld   d, l                                        ; $464b: $55
	ld   d, l                                        ; $464c: $55
	ld   b, l                                        ; $464d: $45
	ld   a, c                                        ; $464e: $79
	cp   h                                           ; $464f: $bc
	set  1, d                                        ; $4650: $cb $ca
	sbc  c                                           ; $4652: $99
	ld   a, c                                        ; $4653: $79
	ld   a, b                                        ; $4654: $78
	ld   d, l                                        ; $4655: $55
	ld   d, l                                        ; $4656: $55
	ld   h, l                                        ; $4657: $65
	ld   h, [hl]                                     ; $4658: $66
	xor  e                                           ; $4659: $ab
	set  1, h                                        ; $465a: $cb $cc
	xor  c                                           ; $465c: $a9
	ld   h, a                                        ; $465d: $67
	ld   h, a                                        ; $465e: $67
	halt                                             ; $465f: $76
	ld   h, h                                        ; $4660: $64
	ld   d, l                                        ; $4661: $55
	ld   h, [hl]                                     ; $4662: $66
	ld   a, d                                        ; $4663: $7a
	cp   l                                           ; $4664: $bd
	db   $dd                                         ; $4665: $dd
	xor  c                                           ; $4666: $a9
	add  a                                           ; $4667: $87
	sbc  b                                           ; $4668: $98
	add  [hl]                                        ; $4669: $86
	ld   h, [hl]                                     ; $466a: $66
	ld   d, l                                        ; $466b: $55
	ld   d, [hl]                                     ; $466c: $56
	ld   l, c                                        ; $466d: $69
	xor  h                                           ; $466e: $ac
	call z, $87b9                                    ; $466f: $cc $b9 $87
	ld   a, b                                        ; $4672: $78
	ld   [hl], a                                     ; $4673: $77
	ld   d, l                                        ; $4674: $55
	ld   b, h                                        ; $4675: $44
	ld   d, [hl]                                     ; $4676: $56
	ld   [hl], a                                     ; $4677: $77
	sbc  e                                           ; $4678: $9b
	call z, $97cb                                    ; $4679: $cc $cb $97
	ld   l, b                                        ; $467c: $68
	adc  b                                           ; $467d: $88
	halt                                             ; $467e: $76
	ld   d, l                                        ; $467f: $55
	ld   d, h                                        ; $4680: $54
	ld   h, [hl]                                     ; $4681: $66
	sbc  d                                           ; $4682: $9a
	cp   h                                           ; $4683: $bc
	cp   e                                           ; $4684: $bb
	adc  c                                           ; $4685: $89
	sbc  c                                           ; $4686: $99
	sub  a                                           ; $4687: $97
	add  [hl]                                        ; $4688: $86
	ld   [hl], l                                     ; $4689: $75
	ld   b, h                                        ; $468a: $44
	ld   b, a                                        ; $468b: $47
	ld   a, d                                        ; $468c: $7a
	sbc  d                                           ; $468d: $9a
	set  1, b                                        ; $468e: $cb $c8
	add  [hl]                                        ; $4690: $86
	ld   a, c                                        ; $4691: $79
	sbc  c                                           ; $4692: $99
	ld   h, [hl]                                     ; $4693: $66
	ld   d, l                                        ; $4694: $55
	ld   d, l                                        ; $4695: $55
	ld   h, [hl]                                     ; $4696: $66
	xor  d                                           ; $4697: $aa
	call z, Call_0b9_79ba                            ; $4698: $cc $ba $79
	adc  c                                           ; $469b: $89
	sbc  b                                           ; $469c: $98
	ld   [hl], l                                     ; $469d: $75
	ld   d, h                                        ; $469e: $54
	ld   b, l                                        ; $469f: $45
	ld   h, a                                        ; $46a0: $67
	ld   a, d                                        ; $46a1: $7a
	cp   h                                           ; $46a2: $bc
	res  4, a                                        ; $46a3: $cb $a7
	add  a                                           ; $46a5: $87
	adc  c                                           ; $46a6: $89
	add  a                                           ; $46a7: $87
	ld   h, [hl]                                     ; $46a8: $66
	ld   d, l                                        ; $46a9: $55
	ld   d, [hl]                                     ; $46aa: $56
	ld   a, c                                        ; $46ab: $79
	xor  c                                           ; $46ac: $a9
	xor  d                                           ; $46ad: $aa
	cp   h                                           ; $46ae: $bc
	sbc  b                                           ; $46af: $98
	ld   l, b                                        ; $46b0: $68
	adc  c                                           ; $46b1: $89
	add  l                                           ; $46b2: $85
	ld   b, e                                        ; $46b3: $43
	ld   d, [hl]                                     ; $46b4: $56
	ld   h, [hl]                                     ; $46b5: $66
	ld   a, c                                        ; $46b6: $79
	cp   [hl]                                        ; $46b7: $be
	res  1, b                                        ; $46b8: $cb $88
	xor  b                                           ; $46ba: $a8
	and  a                                           ; $46bb: $a7
	ld   [hl], a                                     ; $46bc: $77
	ld   h, [hl]                                     ; $46bd: $66
	ld   d, l                                        ; $46be: $55
	ld   b, [hl]                                     ; $46bf: $46
	ld   l, b                                        ; $46c0: $68
	sbc  c                                           ; $46c1: $99
	jp   z, $97ba                                    ; $46c2: $ca $ba $97

	ld   l, b                                        ; $46c5: $68
	sbc  d                                           ; $46c6: $9a
	add  [hl]                                        ; $46c7: $86
	ld   h, h                                        ; $46c8: $64
	ld   h, h                                        ; $46c9: $64
	ld   h, [hl]                                     ; $46ca: $66
	ld   a, d                                        ; $46cb: $7a
	sbc  h                                           ; $46cc: $9c
	sbc  e                                           ; $46cd: $9b
	xor  c                                           ; $46ce: $a9
	and  a                                           ; $46cf: $a7
	sbc  b                                           ; $46d0: $98
	sbc  b                                           ; $46d1: $98
	ld   h, [hl]                                     ; $46d2: $66
	ld   b, l                                        ; $46d3: $45
	ld   b, [hl]                                     ; $46d4: $46
	ld   [hl], a                                     ; $46d5: $77
	xor  c                                           ; $46d6: $a9
	cp   e                                           ; $46d7: $bb
	cp   d                                           ; $46d8: $ba
	adc  c                                           ; $46d9: $89
	adc  c                                           ; $46da: $89
	sbc  b                                           ; $46db: $98
	sub  a                                           ; $46dc: $97
	halt                                             ; $46dd: $76
	ld   d, l                                        ; $46de: $55
	ld   b, [hl]                                     ; $46df: $46
	ld   l, d                                        ; $46e0: $6a
	xor  d                                           ; $46e1: $aa
	xor  c                                           ; $46e2: $a9
	xor  d                                           ; $46e3: $aa
	xor  b                                           ; $46e4: $a8
	ld   a, b                                        ; $46e5: $78
	sbc  d                                           ; $46e6: $9a
	add  a                                           ; $46e7: $87
	ld   d, l                                        ; $46e8: $55
	ld   d, l                                        ; $46e9: $55
	ld   h, [hl]                                     ; $46ea: $66
	adc  c                                           ; $46eb: $89
	xor  h                                           ; $46ec: $ac
	cp   e                                           ; $46ed: $bb
	sub  a                                           ; $46ee: $97
	ld   [hl], a                                     ; $46ef: $77
	sbc  c                                           ; $46f0: $99
	sbc  b                                           ; $46f1: $98
	halt                                             ; $46f2: $76
	ld   b, h                                        ; $46f3: $44
	ld   b, l                                        ; $46f4: $45
	ld   h, a                                        ; $46f5: $67
	sbc  d                                           ; $46f6: $9a
	res  5, c                                        ; $46f7: $cb $a9
	adc  c                                           ; $46f9: $89
	sbc  d                                           ; $46fa: $9a
	xor  b                                           ; $46fb: $a8
	add  a                                           ; $46fc: $87
	ld   [hl], l                                     ; $46fd: $75
	ld   d, l                                        ; $46fe: $55
	ld   b, l                                        ; $46ff: $45
	ld   l, b                                        ; $4700: $68
	sbc  e                                           ; $4701: $9b
	cp   d                                           ; $4702: $ba
	xor  b                                           ; $4703: $a8
	sbc  d                                           ; $4704: $9a
	xor  c                                           ; $4705: $a9
	adc  c                                           ; $4706: $89
	add  a                                           ; $4707: $87
	ld   [hl], l                                     ; $4708: $75
	ld   d, h                                        ; $4709: $54
	ld   d, [hl]                                     ; $470a: $56
	ld   a, c                                        ; $470b: $79
	xor  e                                           ; $470c: $ab
	xor  c                                           ; $470d: $a9
	sbc  b                                           ; $470e: $98
	sbc  c                                           ; $470f: $99
	sbc  c                                           ; $4710: $99
	adc  c                                           ; $4711: $89
	ld   [hl], a                                     ; $4712: $77
	ld   h, l                                        ; $4713: $65
	ld   d, h                                        ; $4714: $54
	ld   d, [hl]                                     ; $4715: $56
	sbc  c                                           ; $4716: $99
	sbc  d                                           ; $4717: $9a
	sbc  c                                           ; $4718: $99
	sbc  d                                           ; $4719: $9a
	xor  c                                           ; $471a: $a9
	adc  b                                           ; $471b: $88
	ld   a, b                                        ; $471c: $78
	adc  b                                           ; $471d: $88
	halt                                             ; $471e: $76
	ld   b, e                                        ; $471f: $43
	ld   d, [hl]                                     ; $4720: $56
	adc  c                                           ; $4721: $89
	sbc  d                                           ; $4722: $9a
	xor  e                                           ; $4723: $ab
	cp   c                                           ; $4724: $b9
	sub  a                                           ; $4725: $97
	adc  b                                           ; $4726: $88
	sbc  c                                           ; $4727: $99
	add  a                                           ; $4728: $87
	ld   h, l                                        ; $4729: $65
	ld   b, h                                        ; $472a: $44
	ld   d, [hl]                                     ; $472b: $56
	adc  c                                           ; $472c: $89
	cp   d                                           ; $472d: $ba
	xor  d                                           ; $472e: $aa
	xor  c                                           ; $472f: $a9
	adc  b                                           ; $4730: $88
	sbc  b                                           ; $4731: $98
	adc  c                                           ; $4732: $89
	add  a                                           ; $4733: $87
	ld   h, [hl]                                     ; $4734: $66
	ld   b, h                                        ; $4735: $44
	ld   b, [hl]                                     ; $4736: $46
	sbc  e                                           ; $4737: $9b
	xor  d                                           ; $4738: $aa
	sbc  b                                           ; $4739: $98
	sbc  c                                           ; $473a: $99
	sbc  c                                           ; $473b: $99
	sbc  b                                           ; $473c: $98
	adc  c                                           ; $473d: $89
	adc  c                                           ; $473e: $89
	ld   h, [hl]                                     ; $473f: $66
	ld   d, l                                        ; $4740: $55
	ld   d, l                                        ; $4741: $55
	ld   a, b                                        ; $4742: $78
	xor  c                                           ; $4743: $a9
	xor  e                                           ; $4744: $ab
	xor  c                                           ; $4745: $a9
	sbc  c                                           ; $4746: $99
	adc  c                                           ; $4747: $89
	adc  c                                           ; $4748: $89
	adc  b                                           ; $4749: $88
	halt                                             ; $474a: $76
	ld   d, h                                        ; $474b: $54
	ld   d, l                                        ; $474c: $55
	ld   a, b                                        ; $474d: $78
	xor  c                                           ; $474e: $a9
	sbc  d                                           ; $474f: $9a
	sbc  c                                           ; $4750: $99
	sbc  d                                           ; $4751: $9a
	sbc  b                                           ; $4752: $98
	adc  b                                           ; $4753: $88
	sbc  c                                           ; $4754: $99
	add  a                                           ; $4755: $87
	ld   h, l                                        ; $4756: $65
	ld   b, h                                        ; $4757: $44
	ld   d, a                                        ; $4758: $57
	sbc  c                                           ; $4759: $99
	xor  d                                           ; $475a: $aa
	xor  c                                           ; $475b: $a9
	sbc  c                                           ; $475c: $99
	sbc  b                                           ; $475d: $98
	sbc  c                                           ; $475e: $99
	sbc  c                                           ; $475f: $99
	sub  a                                           ; $4760: $97
	ld   h, h                                        ; $4761: $64
	ld   b, h                                        ; $4762: $44
	ld   d, a                                        ; $4763: $57
	sbc  d                                           ; $4764: $9a
	xor  d                                           ; $4765: $aa
	sbc  c                                           ; $4766: $99
	xor  c                                           ; $4767: $a9
	xor  b                                           ; $4768: $a8
	sbc  b                                           ; $4769: $98
	sbc  b                                           ; $476a: $98
	sbc  c                                           ; $476b: $99
	halt                                             ; $476c: $76
	ld   d, l                                        ; $476d: $55
	ld   d, l                                        ; $476e: $55
	ld   l, b                                        ; $476f: $68
	xor  d                                           ; $4770: $aa
	cp   e                                           ; $4771: $bb
	xor  c                                           ; $4772: $a9
	adc  b                                           ; $4773: $88
	sbc  c                                           ; $4774: $99
	sbc  d                                           ; $4775: $9a
	sbc  b                                           ; $4776: $98
	ld   [hl], a                                     ; $4777: $77
	ld   d, l                                        ; $4778: $55
	ld   b, l                                        ; $4779: $45
	ld   h, a                                        ; $477a: $67
	adc  c                                           ; $477b: $89
	xor  d                                           ; $477c: $aa
	xor  c                                           ; $477d: $a9
	sbc  c                                           ; $477e: $99
	adc  c                                           ; $477f: $89
	sbc  b                                           ; $4780: $98
	adc  c                                           ; $4781: $89
	adc  b                                           ; $4782: $88
	halt                                             ; $4783: $76
	ld   b, h                                        ; $4784: $44
	ld   b, l                                        ; $4785: $45
	ld   a, c                                        ; $4786: $79
	xor  d                                           ; $4787: $aa
	xor  d                                           ; $4788: $aa
	xor  c                                           ; $4789: $a9
	sbc  c                                           ; $478a: $99
	sbc  b                                           ; $478b: $98
	adc  c                                           ; $478c: $89
	xor  d                                           ; $478d: $aa
	add  a                                           ; $478e: $87
	ld   d, l                                        ; $478f: $55
	ld   b, h                                        ; $4790: $44
	ld   d, [hl]                                     ; $4791: $56
	sbc  d                                           ; $4792: $9a
	cp   d                                           ; $4793: $ba
	xor  c                                           ; $4794: $a9
	sbc  c                                           ; $4795: $99
	sbc  c                                           ; $4796: $99
	sbc  c                                           ; $4797: $99
	sbc  b                                           ; $4798: $98
	sbc  b                                           ; $4799: $98
	halt                                             ; $479a: $76
	ld   b, h                                        ; $479b: $44
	ld   b, [hl]                                     ; $479c: $46
	ld   a, c                                        ; $479d: $79
	xor  d                                           ; $479e: $aa
	sbc  c                                           ; $479f: $99
	xor  d                                           ; $47a0: $aa
	sbc  b                                           ; $47a1: $98
	ld   [hl], a                                     ; $47a2: $77
	adc  c                                           ; $47a3: $89
	sbc  c                                           ; $47a4: $99
	sub  a                                           ; $47a5: $97
	ld   h, h                                        ; $47a6: $64
	ld   b, h                                        ; $47a7: $44
	ld   d, a                                        ; $47a8: $57
	sbc  c                                           ; $47a9: $99
	sbc  e                                           ; $47aa: $9b
	xor  e                                           ; $47ab: $ab
	xor  c                                           ; $47ac: $a9
	add  a                                           ; $47ad: $87
	adc  c                                           ; $47ae: $89
	xor  c                                           ; $47af: $a9
	sbc  b                                           ; $47b0: $98
	halt                                             ; $47b1: $76
	ld   d, l                                        ; $47b2: $55
	ld   b, l                                        ; $47b3: $45
	ld   a, b                                        ; $47b4: $78
	sbc  c                                           ; $47b5: $99
	xor  c                                           ; $47b6: $a9
	cp   c                                           ; $47b7: $b9
	sbc  b                                           ; $47b8: $98
	ld   a, b                                        ; $47b9: $78
	sbc  d                                           ; $47ba: $9a
	xor  c                                           ; $47bb: $a9
	sub  a                                           ; $47bc: $97
	ld   [hl], l                                     ; $47bd: $75
	ld   b, h                                        ; $47be: $44
	ld   b, [hl]                                     ; $47bf: $46
	ld   a, d                                        ; $47c0: $7a
	sbc  d                                           ; $47c1: $9a
	sbc  d                                           ; $47c2: $9a
	xor  d                                           ; $47c3: $aa
	xor  b                                           ; $47c4: $a8
	adc  b                                           ; $47c5: $88
	sbc  c                                           ; $47c6: $99
	sbc  c                                           ; $47c7: $99
	add  a                                           ; $47c8: $87
	ld   d, h                                        ; $47c9: $54
	ld   b, e                                        ; $47ca: $43
	ld   d, a                                        ; $47cb: $57
	sbc  d                                           ; $47cc: $9a
	xor  d                                           ; $47cd: $aa
	sbc  d                                           ; $47ce: $9a
	sbc  c                                           ; $47cf: $99
	sbc  b                                           ; $47d0: $98
	sbc  c                                           ; $47d1: $99
	xor  c                                           ; $47d2: $a9
	sbc  c                                           ; $47d3: $99
	ld   [hl], a                                     ; $47d4: $77
	ld   d, h                                        ; $47d5: $54
	inc  [hl]                                        ; $47d6: $34
	ld   d, a                                        ; $47d7: $57
	sbc  c                                           ; $47d8: $99
	xor  d                                           ; $47d9: $aa
	cp   d                                           ; $47da: $ba
	sbc  c                                           ; $47db: $99
	ld   a, b                                        ; $47dc: $78
	adc  c                                           ; $47dd: $89
	xor  c                                           ; $47de: $a9
	xor  b                                           ; $47df: $a8
	ld   [hl], l                                     ; $47e0: $75
	ld   b, h                                        ; $47e1: $44
	ld   b, l                                        ; $47e2: $45
	ld   l, c                                        ; $47e3: $69
	sbc  c                                           ; $47e4: $99
	xor  d                                           ; $47e5: $aa
	xor  c                                           ; $47e6: $a9
	sbc  c                                           ; $47e7: $99
	sbc  b                                           ; $47e8: $98
	adc  d                                           ; $47e9: $8a
	xor  c                                           ; $47ea: $a9
	sbc  b                                           ; $47eb: $98
	add  [hl]                                        ; $47ec: $86
	ld   d, e                                        ; $47ed: $53
	inc  [hl]                                        ; $47ee: $34
	ld   l, c                                        ; $47ef: $69
	sbc  e                                           ; $47f0: $9b
	sbc  c                                           ; $47f1: $99
	xor  d                                           ; $47f2: $aa
	xor  c                                           ; $47f3: $a9
	sbc  b                                           ; $47f4: $98
	adc  d                                           ; $47f5: $8a
	xor  e                                           ; $47f6: $ab
	add  a                                           ; $47f7: $87
	ld   h, l                                        ; $47f8: $65
	ld   d, h                                        ; $47f9: $54
	ld   b, l                                        ; $47fa: $45
	ld   l, b                                        ; $47fb: $68
	xor  d                                           ; $47fc: $aa
	xor  c                                           ; $47fd: $a9
	sbc  c                                           ; $47fe: $99
	sbc  c                                           ; $47ff: $99
	adc  c                                           ; $4800: $89
	adc  d                                           ; $4801: $8a
	xor  d                                           ; $4802: $aa
	sbc  b                                           ; $4803: $98
	ld   [hl], l                                     ; $4804: $75
	ld   b, h                                        ; $4805: $44
	ld   b, l                                        ; $4806: $45
	ld   a, c                                        ; $4807: $79
	xor  d                                           ; $4808: $aa
	sbc  c                                           ; $4809: $99
	xor  c                                           ; $480a: $a9
	xor  c                                           ; $480b: $a9
	adc  c                                           ; $480c: $89
	xor  d                                           ; $480d: $aa
	xor  d                                           ; $480e: $aa
	adc  b                                           ; $480f: $88
	ld   [hl], l                                     ; $4810: $75
	ld   d, h                                        ; $4811: $54
	ld   b, l                                        ; $4812: $45
	ld   a, c                                        ; $4813: $79
	sbc  d                                           ; $4814: $9a
	sbc  e                                           ; $4815: $9b
	cp   d                                           ; $4816: $ba
	xor  b                                           ; $4817: $a8
	adc  c                                           ; $4818: $89
	xor  c                                           ; $4819: $a9
	xor  d                                           ; $481a: $aa
	sbc  b                                           ; $481b: $98
	ld   [hl], l                                     ; $481c: $75
	ld   b, h                                        ; $481d: $44
	ld   b, l                                        ; $481e: $45
	ld   a, c                                        ; $481f: $79
	xor  c                                           ; $4820: $a9
	xor  d                                           ; $4821: $aa
	cp   d                                           ; $4822: $ba
	xor  b                                           ; $4823: $a8
	adc  c                                           ; $4824: $89
	xor  d                                           ; $4825: $aa
	xor  c                                           ; $4826: $a9
	adc  b                                           ; $4827: $88
	halt                                             ; $4828: $76
	ld   d, h                                        ; $4829: $54
	ld   b, h                                        ; $482a: $44
	ld   l, b                                        ; $482b: $68
	sbc  d                                           ; $482c: $9a
	sbc  c                                           ; $482d: $99
	xor  d                                           ; $482e: $aa
	xor  c                                           ; $482f: $a9
	adc  b                                           ; $4830: $88
	sbc  d                                           ; $4831: $9a
	sbc  c                                           ; $4832: $99
	sbc  b                                           ; $4833: $98
	halt                                             ; $4834: $76
	ld   h, l                                        ; $4835: $65
	ld   b, h                                        ; $4836: $44
	ld   h, a                                        ; $4837: $67
	adc  c                                           ; $4838: $89
	sbc  d                                           ; $4839: $9a
	sbc  d                                           ; $483a: $9a
	xor  c                                           ; $483b: $a9
	adc  b                                           ; $483c: $88
	adc  c                                           ; $483d: $89
	xor  c                                           ; $483e: $a9
	adc  b                                           ; $483f: $88
	add  a                                           ; $4840: $87
	ld   h, [hl]                                     ; $4841: $66
	ld   b, h                                        ; $4842: $44
	ld   d, a                                        ; $4843: $57
	adc  d                                           ; $4844: $8a
	xor  c                                           ; $4845: $a9
	sbc  d                                           ; $4846: $9a
	xor  d                                           ; $4847: $aa
	xor  c                                           ; $4848: $a9
	sbc  c                                           ; $4849: $99
	sbc  c                                           ; $484a: $99
	sbc  c                                           ; $484b: $99
	add  a                                           ; $484c: $87
	halt                                             ; $484d: $76
	ld   d, l                                        ; $484e: $55
	ld   d, [hl]                                     ; $484f: $56
	ld   a, b                                        ; $4850: $78
	sbc  b                                           ; $4851: $98
	sbc  d                                           ; $4852: $9a
	xor  e                                           ; $4853: $ab
	xor  b                                           ; $4854: $a8
	adc  b                                           ; $4855: $88
	adc  d                                           ; $4856: $8a
	sbc  c                                           ; $4857: $99
	add  a                                           ; $4858: $87
	ld   [hl], a                                     ; $4859: $77
	ld   h, l                                        ; $485a: $65
	ld   d, l                                        ; $485b: $55
	ld   a, b                                        ; $485c: $78
	xor  c                                           ; $485d: $a9
	sbc  b                                           ; $485e: $98
	adc  d                                           ; $485f: $8a
	xor  d                                           ; $4860: $aa
	adc  c                                           ; $4861: $89
	sbc  c                                           ; $4862: $99
	xor  c                                           ; $4863: $a9
	adc  b                                           ; $4864: $88
	add  a                                           ; $4865: $87
	halt                                             ; $4866: $76
	ld   d, l                                        ; $4867: $55
	ld   d, [hl]                                     ; $4868: $56
	ld   a, c                                        ; $4869: $79
	sbc  c                                           ; $486a: $99
	sbc  c                                           ; $486b: $99
	xor  d                                           ; $486c: $aa
	sbc  b                                           ; $486d: $98
	sbc  c                                           ; $486e: $99
	adc  c                                           ; $486f: $89
	adc  c                                           ; $4870: $89
	add  a                                           ; $4871: $87
	ld   [hl], a                                     ; $4872: $77
	halt                                             ; $4873: $76
	ld   h, [hl]                                     ; $4874: $66
	ld   l, b                                        ; $4875: $68
	adc  c                                           ; $4876: $89
	sbc  b                                           ; $4877: $98
	adc  c                                           ; $4878: $89
	xor  d                                           ; $4879: $aa
	sbc  c                                           ; $487a: $99
	sbc  c                                           ; $487b: $99
	sbc  b                                           ; $487c: $98
	sbc  b                                           ; $487d: $98
	ld   [hl], a                                     ; $487e: $77
	ld   [hl], a                                     ; $487f: $77
	ld   h, [hl]                                     ; $4880: $66
	ld   h, [hl]                                     ; $4881: $66
	ld   a, b                                        ; $4882: $78
	adc  c                                           ; $4883: $89
	adc  c                                           ; $4884: $89
	xor  c                                           ; $4885: $a9
	xor  c                                           ; $4886: $a9
	adc  b                                           ; $4887: $88
	adc  c                                           ; $4888: $89
	adc  c                                           ; $4889: $89
	adc  b                                           ; $488a: $88
	add  a                                           ; $488b: $87
	ld   [hl], a                                     ; $488c: $77
	ld   h, [hl]                                     ; $488d: $66
	ld   h, a                                        ; $488e: $67
	sbc  c                                           ; $488f: $99
	adc  b                                           ; $4890: $88
	adc  c                                           ; $4891: $89
	sbc  c                                           ; $4892: $99
	sbc  b                                           ; $4893: $98
	adc  b                                           ; $4894: $88
	adc  b                                           ; $4895: $88
	sbc  c                                           ; $4896: $99
	adc  b                                           ; $4897: $88
	adc  b                                           ; $4898: $88
	ld   [hl], a                                     ; $4899: $77
	ld   h, [hl]                                     ; $489a: $66
	ld   h, a                                        ; $489b: $67
	sbc  b                                           ; $489c: $98
	adc  b                                           ; $489d: $88
	sbc  c                                           ; $489e: $99
	sbc  c                                           ; $489f: $99
	adc  b                                           ; $48a0: $88
	adc  c                                           ; $48a1: $89
	adc  b                                           ; $48a2: $88
	sbc  b                                           ; $48a3: $98
	adc  b                                           ; $48a4: $88
	add  a                                           ; $48a5: $87
	ld   [hl], a                                     ; $48a6: $77
	ld   h, [hl]                                     ; $48a7: $66
	ld   a, b                                        ; $48a8: $78
	adc  b                                           ; $48a9: $88
	sbc  b                                           ; $48aa: $98
	adc  c                                           ; $48ab: $89
	sbc  c                                           ; $48ac: $99
	sbc  c                                           ; $48ad: $99
	adc  b                                           ; $48ae: $88
	sbc  c                                           ; $48af: $99
	sbc  b                                           ; $48b0: $98
	adc  b                                           ; $48b1: $88
	add  a                                           ; $48b2: $87
	ld   [hl], a                                     ; $48b3: $77
	ld   [hl], a                                     ; $48b4: $77
	ld   a, b                                        ; $48b5: $78
	adc  c                                           ; $48b6: $89
	adc  b                                           ; $48b7: $88
	adc  c                                           ; $48b8: $89
	sbc  c                                           ; $48b9: $99
	sbc  c                                           ; $48ba: $99
	adc  b                                           ; $48bb: $88
	sbc  b                                           ; $48bc: $98
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	ld   [hl], a                                     ; $48c0: $77
	ld   [hl], a                                     ; $48c1: $77
	ld   a, b                                        ; $48c2: $78
	adc  c                                           ; $48c3: $89
	add  a                                           ; $48c4: $87
	ld   a, b                                        ; $48c5: $78
	adc  c                                           ; $48c6: $89
	sbc  b                                           ; $48c7: $98
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	ld   [hl], a                                     ; $48cd: $77
	ld   [hl], a                                     ; $48ce: $77
	ld   a, b                                        ; $48cf: $78
	sbc  c                                           ; $48d0: $99
	add  a                                           ; $48d1: $87
	ld   a, b                                        ; $48d2: $78
	adc  c                                           ; $48d3: $89
	sbc  b                                           ; $48d4: $98
	adc  b                                           ; $48d5: $88
	adc  c                                           ; $48d6: $89
	sbc  b                                           ; $48d7: $98
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	ld   [hl], a                                     ; $48da: $77
	ld   [hl], a                                     ; $48db: $77
	ld   [hl], a                                     ; $48dc: $77
	adc  c                                           ; $48dd: $89
	sbc  b                                           ; $48de: $98
	ld   a, b                                        ; $48df: $78
	adc  b                                           ; $48e0: $88
	sbc  b                                           ; $48e1: $98
	sbc  b                                           ; $48e2: $98
	adc  b                                           ; $48e3: $88
	sbc  b                                           ; $48e4: $98
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	add  a                                           ; $48e7: $87
	ld   [hl], a                                     ; $48e8: $77
	ld   [hl], a                                     ; $48e9: $77
	adc  b                                           ; $48ea: $88
	sbc  c                                           ; $48eb: $99
	adc  b                                           ; $48ec: $88
	adc  b                                           ; $48ed: $88
	adc  c                                           ; $48ee: $89
	adc  b                                           ; $48ef: $88
	sbc  b                                           ; $48f0: $98
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	add  a                                           ; $48f5: $87
	ld   [hl], a                                     ; $48f6: $77
	ld   a, b                                        ; $48f7: $78
	adc  c                                           ; $48f8: $89
	sbc  b                                           ; $48f9: $98
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  c                                           ; $48fc: $89
	sbc  b                                           ; $48fd: $98
	adc  b                                           ; $48fe: $88
	adc  c                                           ; $48ff: $89
	adc  b                                           ; $4900: $88
	adc  b                                           ; $4901: $88
	adc  b                                           ; $4902: $88
	add  a                                           ; $4903: $87
	ld   [hl], a                                     ; $4904: $77
	ld   a, b                                        ; $4905: $78
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	adc  b                                           ; $4908: $88
	adc  b                                           ; $4909: $88
	adc  b                                           ; $490a: $88
	sbc  c                                           ; $490b: $99
	adc  b                                           ; $490c: $88
	adc  b                                           ; $490d: $88
	adc  b                                           ; $490e: $88
	adc  b                                           ; $490f: $88
	adc  b                                           ; $4910: $88
	adc  b                                           ; $4911: $88
	ld   [hl], a                                     ; $4912: $77
	ld   a, b                                        ; $4913: $78
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

Jump_0b9_4967:
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

Call_0b9_5177:
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
	adc  b                                           ; $521d: $88
	adc  b                                           ; $521e: $88
	adc  b                                           ; $521f: $88
	adc  b                                           ; $5220: $88
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	adc  b                                           ; $5224: $88
	adc  b                                           ; $5225: $88
	adc  b                                           ; $5226: $88
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	adc  b                                           ; $5230: $88
	adc  b                                           ; $5231: $88
	adc  b                                           ; $5232: $88
	adc  b                                           ; $5233: $88
	adc  b                                           ; $5234: $88
	adc  b                                           ; $5235: $88
	adc  b                                           ; $5236: $88
	adc  b                                           ; $5237: $88
	adc  b                                           ; $5238: $88
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	adc  b                                           ; $523b: $88
	adc  b                                           ; $523c: $88
	adc  b                                           ; $523d: $88
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	adc  b                                           ; $5240: $88
	adc  b                                           ; $5241: $88
	adc  b                                           ; $5242: $88
	adc  b                                           ; $5243: $88
	adc  b                                           ; $5244: $88
	adc  b                                           ; $5245: $88
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	adc  b                                           ; $5248: $88
	adc  b                                           ; $5249: $88
	adc  b                                           ; $524a: $88
	adc  b                                           ; $524b: $88
	adc  b                                           ; $524c: $88
	adc  b                                           ; $524d: $88
	adc  b                                           ; $524e: $88
	adc  b                                           ; $524f: $88
	adc  b                                           ; $5250: $88
	adc  b                                           ; $5251: $88
	adc  b                                           ; $5252: $88
	adc  b                                           ; $5253: $88
	adc  b                                           ; $5254: $88
	adc  b                                           ; $5255: $88
	adc  b                                           ; $5256: $88
	adc  b                                           ; $5257: $88
	adc  b                                           ; $5258: $88
	adc  b                                           ; $5259: $88
	adc  b                                           ; $525a: $88
	adc  b                                           ; $525b: $88
	adc  b                                           ; $525c: $88
	adc  b                                           ; $525d: $88
	adc  b                                           ; $525e: $88
	adc  b                                           ; $525f: $88
	adc  b                                           ; $5260: $88
	adc  b                                           ; $5261: $88
	adc  b                                           ; $5262: $88
	adc  b                                           ; $5263: $88
	adc  b                                           ; $5264: $88
	adc  b                                           ; $5265: $88
	adc  b                                           ; $5266: $88
	adc  b                                           ; $5267: $88
	adc  b                                           ; $5268: $88
	adc  b                                           ; $5269: $88
	adc  b                                           ; $526a: $88
	adc  b                                           ; $526b: $88
	adc  b                                           ; $526c: $88
	adc  b                                           ; $526d: $88
	adc  b                                           ; $526e: $88
	adc  b                                           ; $526f: $88
	adc  b                                           ; $5270: $88
	adc  b                                           ; $5271: $88
	adc  b                                           ; $5272: $88
	adc  b                                           ; $5273: $88
	adc  b                                           ; $5274: $88
	adc  b                                           ; $5275: $88
	adc  b                                           ; $5276: $88
	adc  b                                           ; $5277: $88
	adc  b                                           ; $5278: $88
	adc  b                                           ; $5279: $88
	adc  b                                           ; $527a: $88
	adc  b                                           ; $527b: $88
	adc  b                                           ; $527c: $88
	adc  b                                           ; $527d: $88
	adc  b                                           ; $527e: $88
	adc  b                                           ; $527f: $88
	adc  b                                           ; $5280: $88
	adc  b                                           ; $5281: $88
	adc  b                                           ; $5282: $88
	adc  b                                           ; $5283: $88
	adc  b                                           ; $5284: $88
	adc  b                                           ; $5285: $88
	adc  b                                           ; $5286: $88
	adc  b                                           ; $5287: $88
	adc  b                                           ; $5288: $88
	adc  b                                           ; $5289: $88
	adc  b                                           ; $528a: $88
	adc  b                                           ; $528b: $88
	adc  b                                           ; $528c: $88
	adc  b                                           ; $528d: $88
	adc  b                                           ; $528e: $88
	adc  b                                           ; $528f: $88
	adc  b                                           ; $5290: $88
	adc  b                                           ; $5291: $88
	adc  b                                           ; $5292: $88
	adc  b                                           ; $5293: $88
	adc  b                                           ; $5294: $88
	adc  b                                           ; $5295: $88
	adc  b                                           ; $5296: $88
	adc  b                                           ; $5297: $88
	adc  b                                           ; $5298: $88
	adc  b                                           ; $5299: $88
	adc  b                                           ; $529a: $88
	adc  b                                           ; $529b: $88
	adc  b                                           ; $529c: $88
	adc  b                                           ; $529d: $88
	adc  b                                           ; $529e: $88
	adc  b                                           ; $529f: $88
	adc  b                                           ; $52a0: $88
	adc  b                                           ; $52a1: $88
	adc  b                                           ; $52a2: $88
	adc  b                                           ; $52a3: $88
	adc  b                                           ; $52a4: $88
	adc  b                                           ; $52a5: $88
	adc  b                                           ; $52a6: $88
	adc  b                                           ; $52a7: $88
	adc  b                                           ; $52a8: $88
	adc  b                                           ; $52a9: $88
	adc  b                                           ; $52aa: $88
	adc  b                                           ; $52ab: $88
	adc  b                                           ; $52ac: $88
	adc  b                                           ; $52ad: $88
	adc  b                                           ; $52ae: $88
	adc  b                                           ; $52af: $88
	adc  b                                           ; $52b0: $88
	adc  b                                           ; $52b1: $88
	adc  b                                           ; $52b2: $88
	adc  b                                           ; $52b3: $88
	adc  b                                           ; $52b4: $88
	adc  b                                           ; $52b5: $88
	adc  b                                           ; $52b6: $88
	adc  b                                           ; $52b7: $88
	adc  b                                           ; $52b8: $88
	adc  b                                           ; $52b9: $88
	adc  b                                           ; $52ba: $88
	adc  b                                           ; $52bb: $88
	adc  b                                           ; $52bc: $88
	adc  b                                           ; $52bd: $88
	adc  b                                           ; $52be: $88
	adc  b                                           ; $52bf: $88
	adc  b                                           ; $52c0: $88
	adc  b                                           ; $52c1: $88
	adc  b                                           ; $52c2: $88
	adc  b                                           ; $52c3: $88
	adc  b                                           ; $52c4: $88
	adc  b                                           ; $52c5: $88
	adc  b                                           ; $52c6: $88
	adc  b                                           ; $52c7: $88
	adc  b                                           ; $52c8: $88
	adc  b                                           ; $52c9: $88
	adc  b                                           ; $52ca: $88
	adc  b                                           ; $52cb: $88
	adc  b                                           ; $52cc: $88
	adc  b                                           ; $52cd: $88
	adc  b                                           ; $52ce: $88
	adc  b                                           ; $52cf: $88
	adc  b                                           ; $52d0: $88
	adc  b                                           ; $52d1: $88
	adc  b                                           ; $52d2: $88
	adc  b                                           ; $52d3: $88
	adc  b                                           ; $52d4: $88
	adc  b                                           ; $52d5: $88
	adc  b                                           ; $52d6: $88
	adc  b                                           ; $52d7: $88
	adc  b                                           ; $52d8: $88
	adc  b                                           ; $52d9: $88
	adc  b                                           ; $52da: $88
	adc  b                                           ; $52db: $88
	adc  b                                           ; $52dc: $88
	adc  b                                           ; $52dd: $88
	adc  b                                           ; $52de: $88
	adc  b                                           ; $52df: $88
	adc  b                                           ; $52e0: $88
	adc  b                                           ; $52e1: $88
	adc  b                                           ; $52e2: $88
	adc  b                                           ; $52e3: $88
	adc  b                                           ; $52e4: $88
	adc  b                                           ; $52e5: $88
	adc  b                                           ; $52e6: $88
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	adc  b                                           ; $52ea: $88
	adc  b                                           ; $52eb: $88
	adc  b                                           ; $52ec: $88
	adc  b                                           ; $52ed: $88
	adc  b                                           ; $52ee: $88
	adc  b                                           ; $52ef: $88
	adc  b                                           ; $52f0: $88
	adc  b                                           ; $52f1: $88
	adc  b                                           ; $52f2: $88
	adc  b                                           ; $52f3: $88
	adc  b                                           ; $52f4: $88
	adc  b                                           ; $52f5: $88
	adc  b                                           ; $52f6: $88
	adc  b                                           ; $52f7: $88
	adc  b                                           ; $52f8: $88
	adc  b                                           ; $52f9: $88
	adc  b                                           ; $52fa: $88
	adc  b                                           ; $52fb: $88
	adc  b                                           ; $52fc: $88
	adc  b                                           ; $52fd: $88
	adc  b                                           ; $52fe: $88
	adc  b                                           ; $52ff: $88
	adc  b                                           ; $5300: $88
	adc  b                                           ; $5301: $88
	adc  b                                           ; $5302: $88
	adc  b                                           ; $5303: $88
	adc  b                                           ; $5304: $88
	adc  b                                           ; $5305: $88
	adc  b                                           ; $5306: $88
	adc  b                                           ; $5307: $88
	adc  b                                           ; $5308: $88
	adc  b                                           ; $5309: $88
	adc  b                                           ; $530a: $88
	adc  b                                           ; $530b: $88
	adc  b                                           ; $530c: $88
	adc  b                                           ; $530d: $88
	adc  b                                           ; $530e: $88
	adc  b                                           ; $530f: $88
	adc  b                                           ; $5310: $88
	adc  b                                           ; $5311: $88
	adc  b                                           ; $5312: $88
	adc  b                                           ; $5313: $88
	adc  b                                           ; $5314: $88
	adc  b                                           ; $5315: $88
	adc  b                                           ; $5316: $88
	adc  b                                           ; $5317: $88
	adc  b                                           ; $5318: $88
	adc  b                                           ; $5319: $88
	adc  b                                           ; $531a: $88
	adc  b                                           ; $531b: $88
	adc  b                                           ; $531c: $88
	adc  b                                           ; $531d: $88
	adc  b                                           ; $531e: $88
	adc  b                                           ; $531f: $88
	adc  b                                           ; $5320: $88
	adc  b                                           ; $5321: $88
	adc  b                                           ; $5322: $88
	adc  b                                           ; $5323: $88
	adc  b                                           ; $5324: $88
	adc  b                                           ; $5325: $88
	adc  b                                           ; $5326: $88
	adc  b                                           ; $5327: $88
	adc  b                                           ; $5328: $88
	adc  b                                           ; $5329: $88
	adc  b                                           ; $532a: $88
	adc  b                                           ; $532b: $88
	adc  b                                           ; $532c: $88
	adc  b                                           ; $532d: $88
	adc  b                                           ; $532e: $88
	adc  b                                           ; $532f: $88
	adc  b                                           ; $5330: $88
	adc  b                                           ; $5331: $88
	adc  b                                           ; $5332: $88
	adc  b                                           ; $5333: $88
	adc  b                                           ; $5334: $88
	adc  b                                           ; $5335: $88
	adc  b                                           ; $5336: $88
	adc  b                                           ; $5337: $88
	adc  b                                           ; $5338: $88
	adc  b                                           ; $5339: $88
	adc  b                                           ; $533a: $88
	adc  b                                           ; $533b: $88
	adc  b                                           ; $533c: $88
	adc  b                                           ; $533d: $88
	adc  b                                           ; $533e: $88
	adc  b                                           ; $533f: $88
	adc  b                                           ; $5340: $88
	adc  b                                           ; $5341: $88
	adc  b                                           ; $5342: $88
	adc  b                                           ; $5343: $88
	adc  b                                           ; $5344: $88
	adc  b                                           ; $5345: $88
	adc  b                                           ; $5346: $88
	adc  b                                           ; $5347: $88
	adc  b                                           ; $5348: $88
	adc  b                                           ; $5349: $88
	adc  b                                           ; $534a: $88
	adc  b                                           ; $534b: $88
	adc  b                                           ; $534c: $88
	adc  b                                           ; $534d: $88
	adc  b                                           ; $534e: $88
	adc  b                                           ; $534f: $88
	adc  b                                           ; $5350: $88
	adc  b                                           ; $5351: $88
	adc  b                                           ; $5352: $88
	adc  b                                           ; $5353: $88
	adc  b                                           ; $5354: $88
	adc  b                                           ; $5355: $88
	adc  b                                           ; $5356: $88
	adc  b                                           ; $5357: $88
	adc  b                                           ; $5358: $88
	adc  b                                           ; $5359: $88
	adc  b                                           ; $535a: $88
	adc  b                                           ; $535b: $88
	adc  b                                           ; $535c: $88
	adc  b                                           ; $535d: $88
	adc  b                                           ; $535e: $88
	adc  b                                           ; $535f: $88
	adc  b                                           ; $5360: $88
	adc  b                                           ; $5361: $88
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
	adc  b                                           ; $536f: $88
	adc  b                                           ; $5370: $88
	adc  b                                           ; $5371: $88
	adc  b                                           ; $5372: $88
	adc  b                                           ; $5373: $88
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
	adc  b                                           ; $537e: $88
	adc  b                                           ; $537f: $88
	adc  b                                           ; $5380: $88
	adc  b                                           ; $5381: $88
	adc  b                                           ; $5382: $88
	adc  b                                           ; $5383: $88
	adc  b                                           ; $5384: $88
	adc  b                                           ; $5385: $88

Jump_0b9_5386:
	adc  b                                           ; $5386: $88
	adc  b                                           ; $5387: $88
	adc  b                                           ; $5388: $88
	adc  b                                           ; $5389: $88
	adc  b                                           ; $538a: $88
	adc  b                                           ; $538b: $88
	adc  b                                           ; $538c: $88
	adc  b                                           ; $538d: $88
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
	adc  b                                           ; $539b: $88
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
	adc  c                                           ; $54af: $89
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
	sbc  b                                           ; $54ba: $98
	adc  c                                           ; $54bb: $89
	adc  b                                           ; $54bc: $88
	adc  b                                           ; $54bd: $88
	adc  b                                           ; $54be: $88
	adc  b                                           ; $54bf: $88
	sub  a                                           ; $54c0: $97
	adc  b                                           ; $54c1: $88
	adc  b                                           ; $54c2: $88
	adc  b                                           ; $54c3: $88
	adc  b                                           ; $54c4: $88
	adc  b                                           ; $54c5: $88
	adc  b                                           ; $54c6: $88
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	adc  c                                           ; $54c9: $89
	adc  b                                           ; $54ca: $88
	adc  b                                           ; $54cb: $88
	adc  b                                           ; $54cc: $88
	sbc  b                                           ; $54cd: $98
	adc  b                                           ; $54ce: $88
	sbc  b                                           ; $54cf: $98
	adc  c                                           ; $54d0: $89
	adc  b                                           ; $54d1: $88
	adc  c                                           ; $54d2: $89
	adc  b                                           ; $54d3: $88
	adc  b                                           ; $54d4: $88
	adc  b                                           ; $54d5: $88
	adc  b                                           ; $54d6: $88
	adc  b                                           ; $54d7: $88
	adc  b                                           ; $54d8: $88
	sbc  b                                           ; $54d9: $98
	sbc  b                                           ; $54da: $98
	adc  b                                           ; $54db: $88
	adc  b                                           ; $54dc: $88
	ld   a, c                                        ; $54dd: $79
	adc  b                                           ; $54de: $88
	adc  b                                           ; $54df: $88
	add  a                                           ; $54e0: $87
	sbc  b                                           ; $54e1: $98
	adc  b                                           ; $54e2: $88
	ld   a, c                                        ; $54e3: $79
	ld   a, b                                        ; $54e4: $78
	adc  b                                           ; $54e5: $88
	adc  b                                           ; $54e6: $88
	add  a                                           ; $54e7: $87
	add  a                                           ; $54e8: $87
	adc  b                                           ; $54e9: $88
	ld   a, c                                        ; $54ea: $79
	adc  b                                           ; $54eb: $88
	sbc  b                                           ; $54ec: $98
	ld   a, b                                        ; $54ed: $78
	ld   a, c                                        ; $54ee: $79
	adc  b                                           ; $54ef: $88
	adc  b                                           ; $54f0: $88
	adc  c                                           ; $54f1: $89
	ld   a, b                                        ; $54f2: $78
	sub  [hl]                                        ; $54f3: $96
	sbc  c                                           ; $54f4: $99
	add  a                                           ; $54f5: $87
	adc  c                                           ; $54f6: $89
	ld   a, b                                        ; $54f7: $78
	adc  c                                           ; $54f8: $89
	ld   a, b                                        ; $54f9: $78
	sub  a                                           ; $54fa: $97
	sbc  c                                           ; $54fb: $99
	ld   a, b                                        ; $54fc: $78
	sub  a                                           ; $54fd: $97
	sbc  c                                           ; $54fe: $99
	ld   a, c                                        ; $54ff: $79
	add  a                                           ; $5500: $87
	sbc  b                                           ; $5501: $98
	ld   a, c                                        ; $5502: $79
	adc  c                                           ; $5503: $89
	adc  b                                           ; $5504: $88
	adc  b                                           ; $5505: $88
	ld   a, b                                        ; $5506: $78
	add  a                                           ; $5507: $87
	sbc  b                                           ; $5508: $98
	adc  b                                           ; $5509: $88
	sub  a                                           ; $550a: $97
	adc  c                                           ; $550b: $89
	adc  b                                           ; $550c: $88
	adc  b                                           ; $550d: $88
	adc  c                                           ; $550e: $89
	ld   a, b                                        ; $550f: $78
	adc  c                                           ; $5510: $89
	ld   a, b                                        ; $5511: $78
	adc  b                                           ; $5512: $88
	adc  b                                           ; $5513: $88
	add  a                                           ; $5514: $87
	adc  c                                           ; $5515: $89
	add  a                                           ; $5516: $87
	sub  a                                           ; $5517: $97
	sub  a                                           ; $5518: $97
	adc  c                                           ; $5519: $89
	adc  c                                           ; $551a: $89
	ld   l, c                                        ; $551b: $69
	ld   a, c                                        ; $551c: $79
	adc  b                                           ; $551d: $88
	sub  [hl]                                        ; $551e: $96
	xor  b                                           ; $551f: $a8
	add  a                                           ; $5520: $87
	adc  c                                           ; $5521: $89
	ld   a, c                                        ; $5522: $79
	adc  c                                           ; $5523: $89
	ld   a, c                                        ; $5524: $79
	add  [hl]                                        ; $5525: $86
	sbc  b                                           ; $5526: $98
	adc  b                                           ; $5527: $88
	adc  c                                           ; $5528: $89
	adc  b                                           ; $5529: $88
	adc  b                                           ; $552a: $88
	adc  b                                           ; $552b: $88
	sub  a                                           ; $552c: $97
	ld   a, c                                        ; $552d: $79
	ld   a, b                                        ; $552e: $78
	ld   a, c                                        ; $552f: $79
	ld   a, b                                        ; $5530: $78
	adc  b                                           ; $5531: $88
	sub  a                                           ; $5532: $97
	sub  a                                           ; $5533: $97
	adc  c                                           ; $5534: $89
	ld   a, b                                        ; $5535: $78
	adc  b                                           ; $5536: $88
	adc  b                                           ; $5537: $88
	adc  b                                           ; $5538: $88
	adc  c                                           ; $5539: $89
	add  a                                           ; $553a: $87
	sbc  c                                           ; $553b: $99
	ld   a, b                                        ; $553c: $78
	sbc  b                                           ; $553d: $98
	ld   a, b                                        ; $553e: $78
	add  a                                           ; $553f: $87
	sub  a                                           ; $5540: $97
	sbc  b                                           ; $5541: $98
	ld   a, c                                        ; $5542: $79
	ld   a, c                                        ; $5543: $79
	ld   a, b                                        ; $5544: $78
	add  a                                           ; $5545: $87
	add  a                                           ; $5546: $87
	and  a                                           ; $5547: $a7
	sbc  c                                           ; $5548: $99
	ld   a, c                                        ; $5549: $79
	adc  c                                           ; $554a: $89
	ld   a, c                                        ; $554b: $79
	adc  b                                           ; $554c: $88
	sub  a                                           ; $554d: $97
	adc  b                                           ; $554e: $88
	adc  b                                           ; $554f: $88
	sbc  b                                           ; $5550: $98
	adc  c                                           ; $5551: $89
	ld   a, b                                        ; $5552: $78
	adc  b                                           ; $5553: $88
	sbc  b                                           ; $5554: $98
	adc  b                                           ; $5555: $88
	ld   a, b                                        ; $5556: $78
	adc  b                                           ; $5557: $88
	ld   a, b                                        ; $5558: $78
	sub  a                                           ; $5559: $97
	adc  b                                           ; $555a: $88
	adc  b                                           ; $555b: $88
	sbc  b                                           ; $555c: $98
	add  a                                           ; $555d: $87
	adc  b                                           ; $555e: $88
	adc  b                                           ; $555f: $88
	adc  b                                           ; $5560: $88
	ld   a, b                                        ; $5561: $78
	adc  b                                           ; $5562: $88
	adc  b                                           ; $5563: $88
	adc  b                                           ; $5564: $88
	adc  b                                           ; $5565: $88
	add  a                                           ; $5566: $87
	adc  b                                           ; $5567: $88
	adc  b                                           ; $5568: $88
	adc  b                                           ; $5569: $88
	adc  c                                           ; $556a: $89
	adc  b                                           ; $556b: $88
	ld   a, b                                        ; $556c: $78
	ld   [hl], a                                     ; $556d: $77
	adc  b                                           ; $556e: $88
	ld   [hl], a                                     ; $556f: $77
	sub  a                                           ; $5570: $97
	ld   a, b                                        ; $5571: $78
	add  a                                           ; $5572: $87
	adc  c                                           ; $5573: $89
	adc  d                                           ; $5574: $8a
	sbc  c                                           ; $5575: $99
	sbc  c                                           ; $5576: $99
	sub  a                                           ; $5577: $97
	ld   [hl], a                                     ; $5578: $77
	ld   h, a                                        ; $5579: $67
	ld   [hl], l                                     ; $557a: $75
	ld   h, [hl]                                     ; $557b: $66
	ld   l, b                                        ; $557c: $68
	sbc  d                                           ; $557d: $9a
	xor  e                                           ; $557e: $ab
	cp   e                                           ; $557f: $bb
	cp   d                                           ; $5580: $ba
	xor  b                                           ; $5581: $a8
	add  a                                           ; $5582: $87
	ld   h, l                                        ; $5583: $65
	ld   d, l                                        ; $5584: $55
	ld   d, l                                        ; $5585: $55
	ld   h, a                                        ; $5586: $67
	ld   a, c                                        ; $5587: $79
	cp   d                                           ; $5588: $ba
	call z, $aabc                                    ; $5589: $cc $bc $aa
	sbc  b                                           ; $558c: $98
	ld   [hl], h                                     ; $558d: $74
	ld   d, h                                        ; $558e: $54
	inc  [hl]                                        ; $558f: $34
	ld   b, l                                        ; $5590: $45
	ld   l, b                                        ; $5591: $68
	xor  e                                           ; $5592: $ab
	call $dddd                                       ; $5593: $cd $dd $dd
	cp   c                                           ; $5596: $b9
	add  l                                           ; $5597: $85
	ld   b, h                                        ; $5598: $44
	ld   b, c                                        ; $5599: $41
	inc  [hl]                                        ; $559a: $34
	dec  [hl]                                        ; $559b: $35
	adc  c                                           ; $559c: $89
	cp   h                                           ; $559d: $bc
	xor  $ed                                         ; $559e: $ee $ed
	res  3, b                                        ; $55a0: $cb $98
	ld   d, d                                        ; $55a2: $52
	ld   [hl-], a                                    ; $55a3: $32
	ld   [de], a                                     ; $55a4: $12
	inc  sp                                          ; $55a5: $33
	ld   l, b                                        ; $55a6: $68
	sbc  e                                           ; $55a7: $9b
	rst  JumpTable                                         ; $55a8: $df
	rst  $38                                         ; $55a9: $ff
	db   $dd                                         ; $55aa: $dd
	ret                                              ; $55ab: $c9


	ld   [hl], h                                     ; $55ac: $74
	ld   [hl+], a                                    ; $55ad: $22
	ld   de, $3622                                   ; $55ae: $11 $22 $36
	ld   a, e                                        ; $55b1: $7b
	cp   [hl]                                        ; $55b2: $be
	rst  $28                                         ; $55b3: $ef
	cp   $ec                                         ; $55b4: $fe $ec
	or   a                                           ; $55b6: $b7
	ld   d, d                                        ; $55b7: $52
	ld   de, $2311                                   ; $55b8: $11 $11 $23
	ld   d, a                                        ; $55bb: $57
	xor  e                                           ; $55bc: $ab
	rst  $28                                         ; $55bd: $ef
	rst  $38                                         ; $55be: $ff
	cp   $db                                         ; $55bf: $fe $db
	sub  [hl]                                        ; $55c1: $96
	ld   hl, $1111                                   ; $55c2: $21 $11 $11
	inc  h                                           ; $55c5: $24
	ld   l, b                                        ; $55c6: $68
	cp   l                                           ; $55c7: $bd
	rst  $38                                         ; $55c8: $ff
	rst  $38                                         ; $55c9: $ff
	db   $fd                                         ; $55ca: $fd
	jp   z, $1164                                    ; $55cb: $ca $64 $11

	ld   de, $2612                                   ; $55ce: $11 $12 $26
	ld   a, e                                        ; $55d1: $7b
	sbc  $ff                                         ; $55d2: $de $ff
	rst  $38                                         ; $55d4: $ff
	db   $fc                                         ; $55d5: $fc
	cp   b                                           ; $55d6: $b8
	ld   d, d                                        ; $55d7: $52
	ld   de, $2111                                   ; $55d8: $11 $11 $21
	ld   b, a                                        ; $55db: $47
	sbc  l                                           ; $55dc: $9d
	rst  $28                                         ; $55dd: $ef
	rst  $38                                         ; $55de: $ff
	rst  $38                                         ; $55df: $ff
	db   $db                                         ; $55e0: $db
	sub  [hl]                                        ; $55e1: $96
	ld   sp, $1111                                   ; $55e2: $31 $11 $11
	ld   [hl-], a                                    ; $55e5: $32
	ld   l, b                                        ; $55e6: $68
	cp   l                                           ; $55e7: $bd
	rst  $38                                         ; $55e8: $ff
	rst  $38                                         ; $55e9: $ff
	cp   $ca                                         ; $55ea: $fe $ca
	ld   [hl], l                                     ; $55ec: $75
	ld   de, $1211                                   ; $55ed: $11 $11 $12
	inc  h                                           ; $55f0: $24
	adc  d                                           ; $55f1: $8a
	sbc  $ff                                         ; $55f2: $de $ff
	rst  $38                                         ; $55f4: $ff
	xor  $a8                                         ; $55f5: $ee $a8
	ld   d, d                                        ; $55f7: $52
	ld   de, $2211                                   ; $55f8: $11 $11 $22
	scf                                              ; $55fb: $37
	xor  [hl]                                        ; $55fc: $ae
	rst  $28                                         ; $55fd: $ef
	rst  $38                                         ; $55fe: $ff
	cp   $db                                         ; $55ff: $fe $db
	ld   [hl], l                                     ; $5601: $75
	ld   hl, $1111                                   ; $5602: $21 $11 $11
	ld   [hl-], a                                    ; $5605: $32
	ld   a, e                                        ; $5606: $7b
	adc  $ff                                         ; $5607: $ce $ff
	rst  $38                                         ; $5609: $ff
	xor  $b8                                         ; $560a: $ee $b8
	ld   d, e                                        ; $560c: $53
	ld   de, $1411                                   ; $560d: $11 $11 $14
	ld   h, $bc                                      ; $5610: $26 $bc
	rst  $28                                         ; $5612: $ef
	rst  $38                                         ; $5613: $ff
	rst  $38                                         ; $5614: $ff
	db   $ec                                         ; $5615: $ec
	add  h                                           ; $5616: $84
	ld   sp, $1111                                   ; $5617: $31 $11 $11
	ld   d, d                                        ; $561a: $52
	ld   l, h                                        ; $561b: $6c
	sbc  $ff                                         ; $561c: $de $ff
	rst  $38                                         ; $561e: $ff
	db   $fc                                         ; $561f: $fc
	ret  z                                           ; $5620: $c8

	ld   b, e                                        ; $5621: $43
	ld   de, $1621                                   ; $5622: $11 $21 $16
	ld   d, $cb                                      ; $5625: $16 $cb
	rst  $38                                         ; $5627: $ff
	rst  $38                                         ; $5628: $ff
	cp   $cb                                         ; $5629: $fe $cb
	ld   [hl], h                                     ; $562b: $74
	ld   sp, $1112                                   ; $562c: $31 $12 $11
	ld   h, c                                        ; $562f: $61
	ld   l, [hl]                                     ; $5630: $6e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5631: $cf
	rst  $38                                         ; $5632: $ff
	rst  $38                                         ; $5633: $ff
	db   $ec                                         ; $5634: $ec
	add  $32                                         ; $5635: $c6 $32
	ld   de, $1621                                   ; $5637: $11 $21 $16
	add  hl, de                                      ; $563a: $19
	db   $ec                                         ; $563b: $ec
	rst  $38                                         ; $563c: $ff
	rst  $38                                         ; $563d: $ff
	db   $fd                                         ; $563e: $fd
	call z, $1163                                    ; $563f: $cc $63 $11
	ld   [de], a                                     ; $5642: $12
	ld   de, $ae71                                   ; $5643: $11 $71 $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5646: $cf
	rst  $38                                         ; $5647: $ff
	rst  $38                                         ; $5648: $ff
	db   $db                                         ; $5649: $db
	and  l                                           ; $564a: $a5
	ld   hl, $1111                                   ; $564b: $21 $11 $11
	ld   b, l                                        ; $564e: $45
	inc  e                                           ; $564f: $1c
	db   $dd                                         ; $5650: $dd
	rst  $38                                         ; $5651: $ff
	rst  $38                                         ; $5652: $ff
	db   $fc                                         ; $5653: $fc
	xor  e                                           ; $5654: $ab
	inc  sp                                          ; $5655: $33
	ld   de, $1711                                   ; $5656: $11 $11 $17
	ld   b, e                                        ; $5659: $43
	db   $ec                                         ; $565a: $ec
	rst  $38                                         ; $565b: $ff
	rst  $38                                         ; $565c: $ff
	rst  $38                                         ; $565d: $ff
	cp   d                                           ; $565e: $ba
	sub  d                                           ; $565f: $92
	ld   hl, $1112                                   ; $5660: $21 $12 $11
	sub  d                                           ; $5663: $92
	ld   l, a                                        ; $5664: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5665: $cf
	rst  $38                                         ; $5666: $ff
	rst  $38                                         ; $5667: $ff
	ld   sp, hl                                      ; $5668: $f9
	add  $11                                         ; $5669: $c6 $11
	ld   de, $1921                                   ; $566b: $11 $21 $19
	inc  e                                           ; $566e: $1c
	cp   $ff                                         ; $566f: $fe $ff
	cp   $fd                                         ; $5671: $fe $fd
	sbc  e                                           ; $5673: $9b
	ld   sp, $1111                                   ; $5674: $31 $11 $11
	ld   d, $62                                      ; $5677: $16 $62
	db   $fd                                         ; $5679: $fd
	rst  $38                                         ; $567a: $ff
	rst  $38                                         ; $567b: $ff
	rst  $28                                         ; $567c: $ef
	xor  d                                           ; $567d: $aa
	sub  d                                           ; $567e: $92
	ld   hl, $1112                                   ; $567f: $21 $12 $11
	sub  d                                           ; $5682: $92
	ld   l, a                                        ; $5683: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5684: $cf
	rst  $38                                         ; $5685: $ff
	rst  $38                                         ; $5686: $ff
	ld   sp, hl                                      ; $5687: $f9
	or   [hl]                                        ; $5688: $b6
	ld   de, $2111                                   ; $5689: $11 $11 $21
	add  hl, de                                      ; $568c: $19
	inc  e                                           ; $568d: $1c
	db   $fd                                         ; $568e: $fd
	rst  $38                                         ; $568f: $ff
	rst  $38                                         ; $5690: $ff
	db   $fd                                         ; $5691: $fd
	sbc  d                                           ; $5692: $9a
	ld   sp, $1111                                   ; $5693: $31 $11 $11
	rla                                              ; $5696: $17
	ld   d, h                                        ; $5697: $54
	db   $fd                                         ; $5698: $fd
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	rst  $28                                         ; $569b: $ef
	cp   c                                           ; $569c: $b9
	add  c                                           ; $569d: $81
	ld   de, $1112                                   ; $569e: $11 $12 $11
	sub  d                                           ; $56a1: $92
	sbc  a                                           ; $56a2: $9f
	rst  $28                                         ; $56a3: $ef
	rst  $38                                         ; $56a4: $ff
	rst  $38                                         ; $56a5: $ff
	ld   hl, sp-$5b                                  ; $56a6: $f8 $a5
	ld   bc, $1111                                   ; $56a8: $01 $11 $11
	ld   b, a                                        ; $56ab: $47
	ld   l, $ef                                      ; $56ac: $2e $ef
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	db   $fc                                         ; $56b0: $fc
	adc  c                                           ; $56b1: $89
	ld   hl, $1111                                   ; $56b2: $21 $11 $11
	add  hl, de                                      ; $56b5: $19
	ld   [hl], $fd                                   ; $56b6: $36 $fd
	rst  $38                                         ; $56b8: $ff
	rst  $38                                         ; $56b9: $ff
	rst  $38                                         ; $56ba: $ff
	sbc  c                                           ; $56bb: $99
	ld   h, c                                        ; $56bc: $61
	ld   de, $1212                                   ; $56bd: $11 $12 $12
	sub  d                                           ; $56c0: $92
	cp   a                                           ; $56c1: $bf
	rst  JumpTable                                         ; $56c2: $df
	rst  $38                                         ; $56c3: $ff
	rst  $38                                         ; $56c4: $ff
	add  sp, -$6c                                    ; $56c5: $e8 $94
	ld   de, $1111                                   ; $56c7: $11 $11 $11
	ld   [hl], l                                     ; $56ca: $75
	ld   c, a                                        ; $56cb: $4f
	rst  JumpTable                                         ; $56cc: $df
	rst  $38                                         ; $56cd: $ff
	rst  $38                                         ; $56ce: $ff
	ei                                               ; $56cf: $fb
	sbc  b                                           ; $56d0: $98
	ld   de, $2111                                   ; $56d1: $11 $11 $21
	jr   jr_0b9_570f                                 ; $56d4: $18 $39

	cp   $ff                                         ; $56d6: $fe $ff
	rst  $38                                         ; $56d8: $ff
	cp   $99                                         ; $56d9: $fe $99
	ld   d, c                                        ; $56db: $51
	ld   de, $1411                                   ; $56dc: $11 $11 $14
	add  e                                           ; $56df: $83
	rst  JumpTable                                         ; $56e0: $df
	rst  $28                                         ; $56e1: $ef
	rst  $38                                         ; $56e2: $ff
	rst  $28                                         ; $56e3: $ef
	ret  z                                           ; $56e4: $c8

	sub  d                                           ; $56e5: $92
	ld   de, $1111                                   ; $56e6: $11 $11 $11
	add  l                                           ; $56e9: $85
	ld   l, a                                        ; $56ea: $6f
	rst  JumpTable                                         ; $56eb: $df
	rst  $38                                         ; $56ec: $ff
	db   $fd                                         ; $56ed: $fd
	ld   sp, hl                                      ; $56ee: $f9
	sub  a                                           ; $56ef: $97
	ld   de, $2111                                   ; $56f0: $11 $11 $21
	ld   c, b                                        ; $56f3: $48
	ld   c, h                                        ; $56f4: $4c
	xor  $ff                                         ; $56f5: $ee $ff
	cp   $ec                                         ; $56f7: $fe $ec
	adc  c                                           ; $56f9: $89
	ld   b, c                                        ; $56fa: $41
	ld   de, $1921                                   ; $56fb: $11 $21 $19
	ld   h, a                                        ; $56fe: $67
	db   $fd                                         ; $56ff: $fd
	rst  $38                                         ; $5700: $ff
	rst  $38                                         ; $5701: $ff
	adc  $98                                         ; $5702: $ce $98
	ld   [hl], c                                     ; $5704: $71
	ld   de, $1413                                   ; $5705: $11 $13 $14
	sub  l                                           ; $5708: $95
	adc  $cf                                         ; $5709: $ce $cf
	rst  $38                                         ; $570b: $ff
	call $94c7                                       ; $570c: $cd $c7 $94

jr_0b9_570f:
	ld   de, $1113                                   ; $570f: $11 $13 $11
	sub  l                                           ; $5712: $95
	adc  a                                           ; $5713: $8f
	adc  $ef                                         ; $5714: $ce $ef
	db   $ec                                         ; $5716: $ec
	reti                                             ; $5717: $d9


	add  [hl]                                        ; $5718: $86
	ld   de, $3112                                   ; $5719: $11 $12 $31
	ld   a, b                                        ; $571c: $78
	ld   l, l                                        ; $571d: $6d
	db   $ed                                         ; $571e: $ed
	cp   $eb                                         ; $571f: $fe $eb
	jp   z, $3178                                    ; $5721: $ca $78 $31

	ld   de, $5a41                                   ; $5724: $11 $41 $5a
	ld   e, e                                        ; $5727: $5b
	db   $fd                                         ; $5728: $fd
	cp   $eb                                         ; $5729: $fe $eb
	call z, Call_0b9_5177                            ; $572b: $cc $77 $51
	ld   de, $3a42                                   ; $572e: $11 $42 $3a
	ld   l, c                                        ; $5731: $69
	db   $fc                                         ; $5732: $fc
	db   $ed                                         ; $5733: $ed
	db   $ed                                         ; $5734: $ed
	xor  h                                           ; $5735: $ac
	add  a                                           ; $5736: $87
	ld   h, d                                        ; $5737: $62
	ld   de, $2a42                                   ; $5738: $11 $42 $2a
	ld   a, b                                        ; $573b: $78
	db   $ed                                         ; $573c: $ed
	xor  $ec                                         ; $573d: $ee $ec
	xor  e                                           ; $573f: $ab
	add  [hl]                                        ; $5740: $86
	ld   h, d                                        ; $5741: $62
	ld   de, $1934                                   ; $5742: $11 $34 $19
	sub  [hl]                                        ; $5745: $96
	xor  $ce                                         ; $5746: $ee $ce
	db   $dd                                         ; $5748: $dd
	xor  h                                           ; $5749: $ac
	sub  a                                           ; $574a: $97
	ld   [hl], e                                     ; $574b: $73
	ld   de, $1725                                   ; $574c: $11 $25 $17
	or   [hl]                                        ; $574f: $b6
	rst  JumpTable                                         ; $5750: $df
	adc  $ee                                         ; $5751: $ce $ee
	xor  d                                           ; $5753: $aa
	and  [hl]                                        ; $5754: $a6
	ld   [hl], h                                     ; $5755: $74
	ld   de, $1515                                   ; $5756: $11 $15 $15
	push bc                                          ; $5759: $c5
	cp   a                                           ; $575a: $bf
	adc  $dd                                         ; $575b: $ce $dd
	xor  c                                           ; $575d: $a9
	or   [hl]                                        ; $575e: $b6
	ld   [hl], l                                     ; $575f: $75
	ld   de, $2415                                   ; $5760: $11 $15 $24
	add  $af                                         ; $5763: $c6 $af
	call $bade                                       ; $5765: $cd $de $ba
	or   a                                           ; $5768: $b7
	ld   [hl], l                                     ; $5769: $75
	ld   de, $3214                                   ; $576a: $11 $14 $32
	cp   b                                           ; $576d: $b8
	ld   a, a                                        ; $576e: $7f
	db   $dd                                         ; $576f: $dd
	db   $ec                                         ; $5770: $ec
	jp   z, Jump_0b9_66a8                            ; $5771: $ca $a8 $66

	ld   hl, $5114                                   ; $5774: $21 $14 $51
	xor  d                                           ; $5777: $aa
	ld   l, [hl]                                     ; $5778: $6e
	db   $ec                                         ; $5779: $ec
	db   $ed                                         ; $577a: $ed
	jp   z, Jump_0b9_67a8                            ; $577b: $ca $a8 $67

	ld   sp, $6112                                   ; $577e: $31 $12 $61
	adc  h                                           ; $5781: $8c
	ld   l, l                                        ; $5782: $6d
	db   $eb                                         ; $5783: $eb
	db   $ed                                         ; $5784: $ed
	reti                                             ; $5785: $d9


	xor  c                                           ; $5786: $a9
	ld   h, a                                        ; $5787: $67
	ld   b, d                                        ; $5788: $42
	ld   de, $5c62                                   ; $5789: $11 $62 $5c
	ld   l, d                                        ; $578c: $6a
	ei                                               ; $578d: $fb
	db   $dd                                         ; $578e: $dd
	jp   z, Jump_0b9_679b                            ; $578f: $ca $9b $67

	ld   d, d                                        ; $5792: $52
	ld   de, $2c64                                   ; $5793: $11 $64 $2c
	adc  b                                           ; $5796: $88
	db   $fc                                         ; $5797: $fc
	call $9bcb                                       ; $5798: $cd $cb $9b
	halt                                             ; $579b: $76
	ld   [hl], e                                     ; $579c: $73
	ld   hl, $1b46                                   ; $579d: $21 $46 $1b
	and  [hl]                                        ; $57a0: $a6
	db   $fd                                         ; $57a1: $fd
	cp   l                                           ; $57a2: $bd
	call z, $869a                                    ; $57a3: $cc $9a $86
	ld   [hl], h                                     ; $57a6: $74
	ld   hl, $2727                                   ; $57a7: $21 $27 $27
	add  $cf                                         ; $57aa: $c6 $cf
	cp   l                                           ; $57ac: $bd
	call z, $96a9                                    ; $57ad: $cc $a9 $96
	ld   [hl], l                                     ; $57b0: $75
	ld   [hl+], a                                    ; $57b1: $22
	rla                                              ; $57b2: $17
	ld   b, e                                        ; $57b3: $43
	ret  c                                           ; $57b4: $d8

	adc  a                                           ; $57b5: $8f
	call z, $b9cb                                    ; $57b6: $cc $cb $b9
	and  a                                           ; $57b9: $a7
	ld   h, a                                        ; $57ba: $67
	inc  sp                                          ; $57bb: $33
	inc  d                                           ; $57bc: $14
	ld   [hl], d                                     ; $57bd: $72
	sbc  h                                           ; $57be: $9c
	ld   e, l                                        ; $57bf: $5d
	jp   c, $badc                                    ; $57c0: $da $dc $ba

	sbc  c                                           ; $57c3: $99
	ld   h, a                                        ; $57c4: $67
	ld   d, e                                        ; $57c5: $53
	ld   hl, $3d74                                   ; $57c6: $21 $74 $3d
	ld   a, b                                        ; $57c9: $78
	ei                                               ; $57ca: $fb
	call $9aba                                       ; $57cb: $cd $ba $9a
	ld   [hl], a                                     ; $57ce: $77
	ld   [hl], e                                     ; $57cf: $73
	ld   b, c                                        ; $57d0: $41
	ld   c, b                                        ; $57d1: $48
	add  hl, hl                                      ; $57d2: $29
	add  $ce                                         ; $57d3: $c6 $ce
	xor  l                                           ; $57d5: $ad
	res  5, c                                        ; $57d6: $cb $a9
	sub  [hl]                                        ; $57d8: $96
	ld   [hl], l                                     ; $57d9: $75
	ld   [hl-], a                                    ; $57da: $32
	jr   jr_0b9_5821                                 ; $57db: $18 $44

	rst  $10                                         ; $57dd: $d7
	sbc  a                                           ; $57de: $9f
	xor  e                                           ; $57df: $ab
	db   $db                                         ; $57e0: $db
	xor  c                                           ; $57e1: $a9
	sub  a                                           ; $57e2: $97
	ld   [hl], a                                     ; $57e3: $77
	ld   b, h                                        ; $57e4: $44
	inc  d                                           ; $57e5: $14
	add  d                                           ; $57e6: $82
	sbc  e                                           ; $57e7: $9b
	ld   e, l                                        ; $57e8: $5d
	ld   [$bacc], a                                  ; $57e9: $ea $cc $ba
	xor  b                                           ; $57ec: $a8
	ld   a, b                                        ; $57ed: $78
	ld   d, h                                        ; $57ee: $54
	ld   sp, $3c75                                   ; $57ef: $31 $75 $3c
	adc  b                                           ; $57f2: $88
	db   $ec                                         ; $57f3: $ec
	cp   h                                           ; $57f4: $bc
	cp   d                                           ; $57f5: $ba
	sbc  d                                           ; $57f6: $9a
	add  a                                           ; $57f7: $87
	ld   [hl], h                                     ; $57f8: $74
	ld   b, d                                        ; $57f9: $42
	ld   c, b                                        ; $57fa: $48
	daa                                              ; $57fb: $27
	add  $be                                         ; $57fc: $c6 $be
	xor  h                                           ; $57fe: $ac
	jp   z, $97aa                                    ; $57ff: $ca $aa $97

	add  [hl]                                        ; $5802: $86
	ld   b, h                                        ; $5803: $44
	ld   d, $62                                      ; $5804: $16 $62
	cp   d                                           ; $5806: $ba
	ld   l, [hl]                                     ; $5807: $6e
	jp   z, $b9ca                                    ; $5808: $ca $ca $b9

	sbc  b                                           ; $580b: $98
	ld   a, b                                        ; $580c: $78
	ld   d, l                                        ; $580d: $55
	ld   [hl-], a                                    ; $580e: $32
	add  h                                           ; $580f: $84
	ld   e, h                                        ; $5810: $5c
	ld   a, b                                        ; $5811: $78
	db   $db                                         ; $5812: $db
	cp   e                                           ; $5813: $bb
	cp   d                                           ; $5814: $ba
	sbc  d                                           ; $5815: $9a
	ld   a, b                                        ; $5816: $78
	ld   [hl], h                                     ; $5817: $74
	ld   d, d                                        ; $5818: $52
	ld   b, a                                        ; $5819: $47
	jr   c, @-$58                                    ; $581a: $38 $a6

	cp   h                                           ; $581c: $bc
	cp   h                                           ; $581d: $bc
	xor  d                                           ; $581e: $aa
	xor  c                                           ; $581f: $a9
	sub  a                                           ; $5820: $97

jr_0b9_5821:
	add  [hl]                                        ; $5821: $86
	ld   d, h                                        ; $5822: $54
	ld   h, $63                                      ; $5823: $26 $63
	xor  c                                           ; $5825: $a9
	ld   a, l                                        ; $5826: $7d
	cp   e                                           ; $5827: $bb
	res  7, b                                        ; $5828: $cb $b8
	xor  b                                           ; $582a: $a8
	ld   a, b                                        ; $582b: $78
	ld   d, l                                        ; $582c: $55
	inc  sp                                          ; $582d: $33
	ld   [hl], h                                     ; $582e: $74
	ld   e, e                                        ; $582f: $5b
	ld   l, d                                        ; $5830: $6a
	jp   z, $a9ca                                    ; $5831: $ca $ca $a9

	xor  d                                           ; $5834: $aa
	ld   a, c                                        ; $5835: $79
	ld   [hl], l                                     ; $5836: $75
	ld   d, d                                        ; $5837: $52
	ld   b, a                                        ; $5838: $47
	ld   b, a                                        ; $5839: $47
	and  a                                           ; $583a: $a7
	xor  h                                           ; $583b: $ac
	xor  h                                           ; $583c: $ac
	xor  d                                           ; $583d: $aa
	xor  c                                           ; $583e: $a9
	and  a                                           ; $583f: $a7
	add  [hl]                                        ; $5840: $86
	ld   d, h                                        ; $5841: $54
	ld   h, $64                                      ; $5842: $26 $64
	adc  c                                           ; $5844: $89
	ld   a, h                                        ; $5845: $7c
	cp   e                                           ; $5846: $bb
	cp   d                                           ; $5847: $ba
	xor  c                                           ; $5848: $a9
	xor  c                                           ; $5849: $a9
	adc  b                                           ; $584a: $88
	ld   d, l                                        ; $584b: $55
	inc  sp                                          ; $584c: $33
	ld   [hl], l                                     ; $584d: $75
	ld   e, d                                        ; $584e: $5a
	ld   a, c                                        ; $584f: $79
	set  1, e                                        ; $5850: $cb $cb
	cp   d                                           ; $5852: $ba
	sbc  d                                           ; $5853: $9a
	adc  b                                           ; $5854: $88
	ld   [hl], l                                     ; $5855: $75
	ld   d, e                                        ; $5856: $53
	ld   b, a                                        ; $5857: $47
	ld   b, [hl]                                     ; $5858: $46
	sub  a                                           ; $5859: $97
	xor  h                                           ; $585a: $ac
	xor  e                                           ; $585b: $ab
	cp   e                                           ; $585c: $bb
	sbc  d                                           ; $585d: $9a
	sbc  b                                           ; $585e: $98
	add  [hl]                                        ; $585f: $86
	ld   h, h                                        ; $5860: $64
	ld   [hl], $64                                   ; $5861: $36 $64
	sbc  c                                           ; $5863: $99
	ld   a, e                                        ; $5864: $7b
	cp   e                                           ; $5865: $bb
	xor  d                                           ; $5866: $aa
	xor  c                                           ; $5867: $a9
	cp   c                                           ; $5868: $b9
	adc  c                                           ; $5869: $89
	ld   d, [hl]                                     ; $586a: $56
	ld   b, e                                        ; $586b: $43
	ld   h, l                                        ; $586c: $65
	ld   c, d                                        ; $586d: $4a
	add  a                                           ; $586e: $87
	jp   z, $aabb                                    ; $586f: $ca $bb $aa

	sbc  d                                           ; $5872: $9a
	adc  c                                           ; $5873: $89
	halt                                             ; $5874: $76
	ld   h, e                                        ; $5875: $63
	ld   b, a                                        ; $5876: $47
	ld   b, [hl]                                     ; $5877: $46
	and  a                                           ; $5878: $a7
	sbc  e                                           ; $5879: $9b
	xor  d                                           ; $587a: $aa
	cp   e                                           ; $587b: $bb
	xor  d                                           ; $587c: $aa
	xor  c                                           ; $587d: $a9
	add  [hl]                                        ; $587e: $86
	ld   h, l                                        ; $587f: $65
	dec  [hl]                                        ; $5880: $35
	ld   h, h                                        ; $5881: $64
	ld   a, c                                        ; $5882: $79
	ld   a, d                                        ; $5883: $7a
	cp   d                                           ; $5884: $ba
	cp   e                                           ; $5885: $bb
	xor  c                                           ; $5886: $a9
	xor  c                                           ; $5887: $a9
	sbc  c                                           ; $5888: $99
	ld   h, [hl]                                     ; $5889: $66
	ld   d, h                                        ; $588a: $54
	ld   h, [hl]                                     ; $588b: $66
	ld   c, b                                        ; $588c: $48
	add  a                                           ; $588d: $87
	cp   d                                           ; $588e: $ba
	xor  d                                           ; $588f: $aa
	xor  d                                           ; $5890: $aa
	sbc  d                                           ; $5891: $9a
	sbc  c                                           ; $5892: $99
	add  [hl]                                        ; $5893: $86
	ld   h, h                                        ; $5894: $64
	ld   b, [hl]                                     ; $5895: $46
	ld   h, h                                        ; $5896: $64
	adc  c                                           ; $5897: $89
	ld   a, d                                        ; $5898: $7a
	xor  d                                           ; $5899: $aa
	xor  d                                           ; $589a: $aa
	xor  c                                           ; $589b: $a9
	cp   c                                           ; $589c: $b9
	sbc  b                                           ; $589d: $98
	ld   h, [hl]                                     ; $589e: $66
	ld   b, h                                        ; $589f: $44
	ld   h, [hl]                                     ; $58a0: $66
	ld   c, b                                        ; $58a1: $48
	add  a                                           ; $58a2: $87
	xor  d                                           ; $58a3: $aa
	xor  d                                           ; $58a4: $aa
	cp   c                                           ; $58a5: $b9
	sbc  d                                           ; $58a6: $9a
	adc  b                                           ; $58a7: $88
	add  a                                           ; $58a8: $87
	ld   h, l                                        ; $58a9: $65
	ld   d, [hl]                                     ; $58aa: $56
	ld   d, l                                        ; $58ab: $55
	sub  a                                           ; $58ac: $97
	adc  e                                           ; $58ad: $8b
	sbc  d                                           ; $58ae: $9a
	xor  e                                           ; $58af: $ab
	sbc  c                                           ; $58b0: $99
	xor  b                                           ; $58b1: $a8
	add  a                                           ; $58b2: $87
	halt                                             ; $58b3: $76
	ld   d, l                                        ; $58b4: $55
	ld   [hl], l                                     ; $58b5: $75
	ld   e, c                                        ; $58b6: $59
	ld   a, b                                        ; $58b7: $78
	cp   d                                           ; $58b8: $ba
	sbc  c                                           ; $58b9: $99
	xor  c                                           ; $58ba: $a9
	sbc  d                                           ; $58bb: $9a
	adc  b                                           ; $58bc: $88
	ld   [hl], a                                     ; $58bd: $77
	ld   h, l                                        ; $58be: $65
	ld   d, a                                        ; $58bf: $57
	ld   h, l                                        ; $58c0: $65
	sub  a                                           ; $58c1: $97
	adc  d                                           ; $58c2: $8a
	sbc  d                                           ; $58c3: $9a
	xor  e                                           ; $58c4: $ab
	sbc  d                                           ; $58c5: $9a
	xor  b                                           ; $58c6: $a8
	adc  b                                           ; $58c7: $88
	halt                                             ; $58c8: $76
	ld   h, l                                        ; $58c9: $65
	halt                                             ; $58ca: $76
	ld   e, c                                        ; $58cb: $59
	ld   [hl], a                                     ; $58cc: $77
	sbc  c                                           ; $58cd: $99
	sbc  c                                           ; $58ce: $99
	xor  c                                           ; $58cf: $a9
	sbc  d                                           ; $58d0: $9a
	sbc  b                                           ; $58d1: $98
	add  a                                           ; $58d2: $87
	halt                                             ; $58d3: $76
	ld   h, a                                        ; $58d4: $67
	ld   h, l                                        ; $58d5: $65
	add  a                                           ; $58d6: $87
	ld   a, c                                        ; $58d7: $79
	sbc  c                                           ; $58d8: $99
	sbc  c                                           ; $58d9: $99
	xor  c                                           ; $58da: $a9
	xor  c                                           ; $58db: $a9
	adc  c                                           ; $58dc: $89
	ld   [hl], a                                     ; $58dd: $77
	halt                                             ; $58de: $76
	ld   [hl], a                                     ; $58df: $77
	ld   d, a                                        ; $58e0: $57
	ld   [hl], a                                     ; $58e1: $77
	sbc  b                                           ; $58e2: $98
	sbc  b                                           ; $58e3: $98
	sbc  d                                           ; $58e4: $9a
	sbc  c                                           ; $58e5: $99
	sbc  b                                           ; $58e6: $98
	adc  b                                           ; $58e7: $88
	add  a                                           ; $58e8: $87
	ld   h, a                                        ; $58e9: $67
	halt                                             ; $58ea: $76
	ld   h, a                                        ; $58eb: $67
	ld   l, b                                        ; $58ec: $68
	sbc  b                                           ; $58ed: $98
	sbc  b                                           ; $58ee: $98
	xor  c                                           ; $58ef: $a9
	xor  c                                           ; $58f0: $a9
	sbc  c                                           ; $58f1: $99
	adc  b                                           ; $58f2: $88
	add  a                                           ; $58f3: $87
	ld   [hl], a                                     ; $58f4: $77
	ld   h, [hl]                                     ; $58f5: $66
	ld   [hl], a                                     ; $58f6: $77
	ld   a, b                                        ; $58f7: $78
	adc  b                                           ; $58f8: $88
	adc  c                                           ; $58f9: $89
	sbc  c                                           ; $58fa: $99
	xor  d                                           ; $58fb: $aa
	sbc  c                                           ; $58fc: $99
	adc  c                                           ; $58fd: $89
	add  a                                           ; $58fe: $87
	ld   [hl], a                                     ; $58ff: $77
	ld   h, [hl]                                     ; $5900: $66
	halt                                             ; $5901: $76
	ld   [hl], a                                     ; $5902: $77
	ld   a, b                                        ; $5903: $78
	sbc  c                                           ; $5904: $99
	sbc  c                                           ; $5905: $99
	xor  d                                           ; $5906: $aa
	sbc  c                                           ; $5907: $99
	adc  c                                           ; $5908: $89
	add  a                                           ; $5909: $87
	halt                                             ; $590a: $76
	ld   h, [hl]                                     ; $590b: $66
	ld   h, [hl]                                     ; $590c: $66
	ld   [hl], a                                     ; $590d: $77
	ld   a, b                                        ; $590e: $78
	sbc  d                                           ; $590f: $9a
	xor  d                                           ; $5910: $aa
	xor  d                                           ; $5911: $aa
	xor  c                                           ; $5912: $a9
	adc  b                                           ; $5913: $88
	ld   [hl], a                                     ; $5914: $77
	ld   h, [hl]                                     ; $5915: $66
	ld   h, [hl]                                     ; $5916: $66
	ld   h, a                                        ; $5917: $67
	ld   [hl], a                                     ; $5918: $77
	adc  b                                           ; $5919: $88
	xor  d                                           ; $591a: $aa
	xor  d                                           ; $591b: $aa
	xor  d                                           ; $591c: $aa
	xor  c                                           ; $591d: $a9
	sub  a                                           ; $591e: $97
	ld   [hl], a                                     ; $591f: $77
	ld   h, [hl]                                     ; $5920: $66
	ld   h, [hl]                                     ; $5921: $66
	ld   h, a                                        ; $5922: $67
	ld   [hl], a                                     ; $5923: $77
	sbc  d                                           ; $5924: $9a
	sbc  c                                           ; $5925: $99
	cp   d                                           ; $5926: $ba
	sbc  c                                           ; $5927: $99
	sbc  b                                           ; $5928: $98
	add  a                                           ; $5929: $87
	halt                                             ; $592a: $76
	ld   d, [hl]                                     ; $592b: $56
	ld   h, [hl]                                     ; $592c: $66
	ld   [hl], a                                     ; $592d: $77
	ld   a, b                                        ; $592e: $78
	sbc  c                                           ; $592f: $99
	sbc  e                                           ; $5930: $9b
	xor  c                                           ; $5931: $a9
	sbc  c                                           ; $5932: $99
	adc  b                                           ; $5933: $88
	ld   [hl], a                                     ; $5934: $77
	ld   h, [hl]                                     ; $5935: $66
	ld   h, [hl]                                     ; $5936: $66
	ld   h, [hl]                                     ; $5937: $66
	ld   [hl], a                                     ; $5938: $77
	adc  b                                           ; $5939: $88
	xor  d                                           ; $593a: $aa
	xor  d                                           ; $593b: $aa
	xor  c                                           ; $593c: $a9
	sbc  c                                           ; $593d: $99
	add  a                                           ; $593e: $87
	halt                                             ; $593f: $76
	ld   h, l                                        ; $5940: $65
	ld   h, [hl]                                     ; $5941: $66
	ld   h, a                                        ; $5942: $67
	ld   a, b                                        ; $5943: $78
	sbc  c                                           ; $5944: $99
	sbc  d                                           ; $5945: $9a
	xor  d                                           ; $5946: $aa
	xor  d                                           ; $5947: $aa
	sbc  c                                           ; $5948: $99
	add  a                                           ; $5949: $87
	halt                                             ; $594a: $76
	ld   d, [hl]                                     ; $594b: $56
	ld   h, [hl]                                     ; $594c: $66
	ld   [hl], a                                     ; $594d: $77
	ld   a, b                                        ; $594e: $78
	sbc  c                                           ; $594f: $99
	xor  d                                           ; $5950: $aa
	xor  d                                           ; $5951: $aa
	sbc  c                                           ; $5952: $99
	sbc  b                                           ; $5953: $98
	ld   [hl], a                                     ; $5954: $77
	ld   h, l                                        ; $5955: $65
	ld   h, [hl]                                     ; $5956: $66
	ld   h, a                                        ; $5957: $67
	ld   [hl], a                                     ; $5958: $77
	adc  b                                           ; $5959: $88
	sbc  d                                           ; $595a: $9a
	xor  d                                           ; $595b: $aa
	xor  c                                           ; $595c: $a9
	sbc  c                                           ; $595d: $99
	sub  a                                           ; $595e: $97
	halt                                             ; $595f: $76
	ld   d, l                                        ; $5960: $55
	ld   h, [hl]                                     ; $5961: $66
	ld   h, a                                        ; $5962: $67
	ld   a, b                                        ; $5963: $78
	adc  d                                           ; $5964: $8a
	xor  d                                           ; $5965: $aa
	xor  d                                           ; $5966: $aa
	xor  d                                           ; $5967: $aa
	sbc  b                                           ; $5968: $98
	ld   [hl], a                                     ; $5969: $77
	ld   h, [hl]                                     ; $596a: $66
	ld   d, [hl]                                     ; $596b: $56
	ld   h, [hl]                                     ; $596c: $66
	ld   [hl], a                                     ; $596d: $77
	ld   a, c                                        ; $596e: $79
	sbc  c                                           ; $596f: $99
	xor  e                                           ; $5970: $ab
	xor  d                                           ; $5971: $aa
	sbc  c                                           ; $5972: $99
	sbc  b                                           ; $5973: $98
	ld   [hl], a                                     ; $5974: $77
	ld   h, l                                        ; $5975: $65
	ld   h, [hl]                                     ; $5976: $66
	ld   h, [hl]                                     ; $5977: $66
	ld   [hl], a                                     ; $5978: $77
	adc  c                                           ; $5979: $89
	sbc  d                                           ; $597a: $9a
	xor  d                                           ; $597b: $aa
	xor  c                                           ; $597c: $a9
	sbc  c                                           ; $597d: $99
	add  a                                           ; $597e: $87
	halt                                             ; $597f: $76
	ld   d, [hl]                                     ; $5980: $56
	ld   h, [hl]                                     ; $5981: $66
	ld   [hl], a                                     ; $5982: $77
	ld   a, b                                        ; $5983: $78
	adc  c                                           ; $5984: $89
	xor  d                                           ; $5985: $aa
	xor  d                                           ; $5986: $aa
	sbc  c                                           ; $5987: $99
	sbc  c                                           ; $5988: $99
	ld   [hl], a                                     ; $5989: $77
	ld   h, l                                        ; $598a: $65
	ld   h, [hl]                                     ; $598b: $66
	ld   h, [hl]                                     ; $598c: $66
	ld   [hl], a                                     ; $598d: $77
	adc  c                                           ; $598e: $89
	xor  d                                           ; $598f: $aa
	xor  e                                           ; $5990: $ab
	xor  d                                           ; $5991: $aa
	sbc  c                                           ; $5992: $99
	add  a                                           ; $5993: $87
	halt                                             ; $5994: $76
	ld   d, l                                        ; $5995: $55
	ld   h, [hl]                                     ; $5996: $66
	ld   h, a                                        ; $5997: $67
	ld   a, b                                        ; $5998: $78
	sbc  d                                           ; $5999: $9a
	xor  d                                           ; $599a: $aa
	cp   d                                           ; $599b: $ba
	xor  d                                           ; $599c: $aa
	sbc  b                                           ; $599d: $98
	ld   [hl], a                                     ; $599e: $77
	ld   h, l                                        ; $599f: $65
	ld   d, [hl]                                     ; $59a0: $56
	ld   h, [hl]                                     ; $59a1: $66
	ld   [hl], a                                     ; $59a2: $77
	adc  c                                           ; $59a3: $89
	xor  d                                           ; $59a4: $aa
	xor  e                                           ; $59a5: $ab
	xor  d                                           ; $59a6: $aa
	xor  c                                           ; $59a7: $a9
	sub  a                                           ; $59a8: $97
	halt                                             ; $59a9: $76
	ld   d, l                                        ; $59aa: $55
	ld   h, [hl]                                     ; $59ab: $66
	ld   h, a                                        ; $59ac: $67
	ld   [hl], a                                     ; $59ad: $77
	adc  c                                           ; $59ae: $89
	xor  d                                           ; $59af: $aa
	cp   d                                           ; $59b0: $ba
	xor  c                                           ; $59b1: $a9
	sbc  c                                           ; $59b2: $99
	add  a                                           ; $59b3: $87
	halt                                             ; $59b4: $76
	ld   d, [hl]                                     ; $59b5: $56
	ld   h, [hl]                                     ; $59b6: $66
	ld   [hl], a                                     ; $59b7: $77
	ld   a, b                                        ; $59b8: $78
	sbc  d                                           ; $59b9: $9a
	xor  e                                           ; $59ba: $ab
	cp   d                                           ; $59bb: $ba
	sbc  d                                           ; $59bc: $9a
	sbc  b                                           ; $59bd: $98
	ld   [hl], a                                     ; $59be: $77
	ld   h, l                                        ; $59bf: $65
	ld   h, [hl]                                     ; $59c0: $66
	ld   h, a                                        ; $59c1: $67
	ld   [hl], a                                     ; $59c2: $77
	adc  c                                           ; $59c3: $89
	sbc  d                                           ; $59c4: $9a
	cp   e                                           ; $59c5: $bb
	xor  c                                           ; $59c6: $a9
	xor  c                                           ; $59c7: $a9
	add  a                                           ; $59c8: $87
	halt                                             ; $59c9: $76
	ld   d, [hl]                                     ; $59ca: $56
	ld   h, [hl]                                     ; $59cb: $66
	ld   [hl], a                                     ; $59cc: $77
	ld   a, b                                        ; $59cd: $78
	sbc  c                                           ; $59ce: $99
	xor  e                                           ; $59cf: $ab
	cp   d                                           ; $59d0: $ba
	sbc  d                                           ; $59d1: $9a
	sbc  b                                           ; $59d2: $98
	ld   [hl], a                                     ; $59d3: $77
	ld   h, l                                        ; $59d4: $65
	ld   h, [hl]                                     ; $59d5: $66
	ld   h, a                                        ; $59d6: $67
	ld   [hl], a                                     ; $59d7: $77
	adc  c                                           ; $59d8: $89
	sbc  d                                           ; $59d9: $9a
	cp   e                                           ; $59da: $bb
	xor  c                                           ; $59db: $a9
	xor  c                                           ; $59dc: $a9
	add  a                                           ; $59dd: $87
	halt                                             ; $59de: $76
	ld   d, [hl]                                     ; $59df: $56
	ld   h, [hl]                                     ; $59e0: $66
	ld   [hl], a                                     ; $59e1: $77
	ld   a, b                                        ; $59e2: $78
	sbc  c                                           ; $59e3: $99
	xor  e                                           ; $59e4: $ab
	cp   d                                           ; $59e5: $ba
	sbc  d                                           ; $59e6: $9a
	sbc  b                                           ; $59e7: $98
	ld   [hl], a                                     ; $59e8: $77
	ld   h, l                                        ; $59e9: $65
	ld   h, [hl]                                     ; $59ea: $66
	ld   h, a                                        ; $59eb: $67
	ld   [hl], a                                     ; $59ec: $77
	adc  c                                           ; $59ed: $89
	sbc  d                                           ; $59ee: $9a
	xor  e                                           ; $59ef: $ab
	xor  c                                           ; $59f0: $a9
	sbc  c                                           ; $59f1: $99
	add  a                                           ; $59f2: $87
	halt                                             ; $59f3: $76
	ld   d, [hl]                                     ; $59f4: $56
	ld   h, [hl]                                     ; $59f5: $66
	ld   [hl], a                                     ; $59f6: $77
	ld   a, b                                        ; $59f7: $78
	adc  d                                           ; $59f8: $8a
	sbc  d                                           ; $59f9: $9a
	xor  d                                           ; $59fa: $aa
	xor  c                                           ; $59fb: $a9
	sbc  c                                           ; $59fc: $99
	ld   [hl], a                                     ; $59fd: $77
	ld   [hl], l                                     ; $59fe: $75
	ld   h, [hl]                                     ; $59ff: $66
	ld   h, a                                        ; $5a00: $67
	ld   [hl], a                                     ; $5a01: $77
	ld   a, b                                        ; $5a02: $78
	xor  c                                           ; $5a03: $a9
	xor  d                                           ; $5a04: $aa
	xor  c                                           ; $5a05: $a9
	sbc  c                                           ; $5a06: $99
	add  a                                           ; $5a07: $87
	halt                                             ; $5a08: $76
	ld   d, a                                        ; $5a09: $57
	ld   h, [hl]                                     ; $5a0a: $66
	ld   [hl], a                                     ; $5a0b: $77
	adc  b                                           ; $5a0c: $88
	sbc  d                                           ; $5a0d: $9a
	xor  d                                           ; $5a0e: $aa
	xor  d                                           ; $5a0f: $aa
	adc  c                                           ; $5a10: $89
	sub  a                                           ; $5a11: $97
	ld   h, a                                        ; $5a12: $67
	ld   h, h                                        ; $5a13: $64
	halt                                             ; $5a14: $76
	ld   l, b                                        ; $5a15: $68
	ld   a, b                                        ; $5a16: $78
	adc  d                                           ; $5a17: $8a
	xor  d                                           ; $5a18: $aa
	xor  d                                           ; $5a19: $aa
	xor  c                                           ; $5a1a: $a9
	adc  b                                           ; $5a1b: $88
	halt                                             ; $5a1c: $76
	halt                                             ; $5a1d: $76
	ld   b, a                                        ; $5a1e: $47
	ld   h, [hl]                                     ; $5a1f: $66
	adc  b                                           ; $5a20: $88
	sbc  c                                           ; $5a21: $99
	xor  e                                           ; $5a22: $ab
	xor  d                                           ; $5a23: $aa
	cp   c                                           ; $5a24: $b9
	adc  b                                           ; $5a25: $88
	halt                                             ; $5a26: $76
	ld   h, a                                        ; $5a27: $67
	ld   d, l                                        ; $5a28: $55
	add  l                                           ; $5a29: $85
	ld   a, b                                        ; $5a2a: $78
	sbc  c                                           ; $5a2b: $99
	sbc  e                                           ; $5a2c: $9b
	xor  d                                           ; $5a2d: $aa
	xor  d                                           ; $5a2e: $aa
	sbc  b                                           ; $5a2f: $98
	add  a                                           ; $5a30: $87
	ld   h, [hl]                                     ; $5a31: $66
	ld   [hl], h                                     ; $5a32: $74
	ld   h, a                                        ; $5a33: $67
	ld   e, b                                        ; $5a34: $58
	ld   a, c                                        ; $5a35: $79
	sbc  c                                           ; $5a36: $99
	cp   d                                           ; $5a37: $ba
	xor  d                                           ; $5a38: $aa
	xor  b                                           ; $5a39: $a8
	sbc  b                                           ; $5a3a: $98
	ld   h, l                                        ; $5a3b: $65
	ld   h, a                                        ; $5a3c: $67
	scf                                              ; $5a3d: $37
	halt                                             ; $5a3e: $76
	sub  a                                           ; $5a3f: $97
	xor  b                                           ; $5a40: $a8
	sbc  e                                           ; $5a41: $9b
	xor  d                                           ; $5a42: $aa
	cp   d                                           ; $5a43: $ba
	ld   a, b                                        ; $5a44: $78
	halt                                             ; $5a45: $76
	ld   d, a                                        ; $5a46: $57
	ld   d, e                                        ; $5a47: $53
	sub  l                                           ; $5a48: $95
	ld   a, b                                        ; $5a49: $78
	sbc  e                                           ; $5a4a: $9b
	adc  e                                           ; $5a4b: $8b
	cp   e                                           ; $5a4c: $bb
	xor  e                                           ; $5a4d: $ab
	sbc  b                                           ; $5a4e: $98
	add  [hl]                                        ; $5a4f: $86
	ld   d, l                                        ; $5a50: $55
	ld   [hl], e                                     ; $5a51: $73
	ld   e, b                                        ; $5a52: $58
	ld   e, c                                        ; $5a53: $59
	ld   a, d                                        ; $5a54: $7a
	xor  c                                           ; $5a55: $a9
	cp   e                                           ; $5a56: $bb
	cp   d                                           ; $5a57: $ba
	cp   b                                           ; $5a58: $b8
	add  a                                           ; $5a59: $87
	ld   h, l                                        ; $5a5a: $65
	ld   d, a                                        ; $5a5b: $57
	jr   z, jr_0b9_5ac4                              ; $5a5c: $28 $66

	sub  a                                           ; $5a5e: $97
	cp   c                                           ; $5a5f: $b9
	cp   h                                           ; $5a60: $bc
	xor  e                                           ; $5a61: $ab
	cp   e                                           ; $5a62: $bb
	ld   a, c                                        ; $5a63: $79
	ld   h, l                                        ; $5a64: $65
	ld   b, a                                        ; $5a65: $47
	ld   d, e                                        ; $5a66: $53
	sub  h                                           ; $5a67: $94
	adc  b                                           ; $5a68: $88
	adc  e                                           ; $5a69: $8b
	adc  h                                           ; $5a6a: $8c
	xor  d                                           ; $5a6b: $aa
	xor  e                                           ; $5a6c: $ab
	adc  b                                           ; $5a6d: $88
	sub  l                                           ; $5a6e: $95
	ld   d, h                                        ; $5a6f: $54
	sub  d                                           ; $5a70: $92
	ld   e, c                                        ; $5a71: $59
	ld   c, d                                        ; $5a72: $4a
	ld   a, d                                        ; $5a73: $7a
	xor  b                                           ; $5a74: $a8
	jp   z, $c7ba                                    ; $5a75: $ca $ba $c7

	sub  a                                           ; $5a78: $97
	ld   d, h                                        ; $5a79: $54
	ld   e, b                                        ; $5a7a: $58
	add  hl, de                                      ; $5a7b: $19
	ld   h, l                                        ; $5a7c: $65
	and  [hl]                                        ; $5a7d: $a6
	ret  c                                           ; $5a7e: $d8

	xor  h                                           ; $5a7f: $ac
	xor  e                                           ; $5a80: $ab
	cp   d                                           ; $5a81: $ba
	ld   a, d                                        ; $5a82: $7a
	ld   h, [hl]                                     ; $5a83: $66
	scf                                              ; $5a84: $37
	ld   h, c                                        ; $5a85: $61
	or   h                                           ; $5a86: $b4
	adc  c                                           ; $5a87: $89
	ld   a, h                                        ; $5a88: $7c
	ld   a, h                                        ; $5a89: $7c
	cp   e                                           ; $5a8a: $bb
	xor  e                                           ; $5a8b: $ab
	sub  a                                           ; $5a8c: $97
	sub  l                                           ; $5a8d: $95
	ld   h, d                                        ; $5a8e: $62
	add  h                                           ; $5a8f: $84
	dec  hl                                          ; $5a90: $2b
	ld   a, [hl-]                                    ; $5a91: $3a
	adc  c                                           ; $5a92: $89
	rst  ToBoot                                         ; $5a93: $c7
	jp   c, $b9a9                                    ; $5a94: $da $a9 $b9

	ld   a, b                                        ; $5a97: $78
	ld   d, [hl]                                     ; $5a98: $56
	ld   a, [hl+]                                    ; $5a99: $2a
	inc  h                                           ; $5a9a: $24
	or   e                                           ; $5a9b: $b3
	add  $bb                                         ; $5a9c: $c6 $bb
	adc  [hl]                                        ; $5a9e: $8e
	xor  e                                           ; $5a9f: $ab
	xor  h                                           ; $5aa0: $ac
	ld   a, b                                        ; $5aa1: $78
	add  l                                           ; $5aa2: $85
	ld   d, e                                        ; $5aa3: $53
	and  c                                           ; $5aa4: $a1
	ld   l, d                                        ; $5aa5: $6a
	inc  a                                           ; $5aa6: $3c
	ld   l, h                                        ; $5aa7: $6c
	xor  c                                           ; $5aa8: $a9
	jp   hl                                          ; $5aa9: $e9


	cp   c                                           ; $5aaa: $b9
	rst  ToBoot                                         ; $5aab: $c7
	add  a                                           ; $5aac: $87
	ld   d, l                                        ; $5aad: $55
	ld   a, [hl-]                                    ; $5aae: $3a
	rla                                              ; $5aaf: $17
	sub  e                                           ; $5ab0: $93
	push de                                          ; $5ab1: $d5
	jp   z, $8c9d                                    ; $5ab2: $ca $9d $8c

	sbc  e                                           ; $5ab5: $9b
	ld   l, c                                        ; $5ab6: $69
	ld   [hl], l                                     ; $5ab7: $75
	ld   d, e                                        ; $5ab8: $53
	or   c                                           ; $5ab9: $b1
	sbc  b                                           ; $5aba: $98
	ld   a, $5e                                      ; $5abb: $3e $5e
	sbc  c                                           ; $5abd: $99
	reti                                             ; $5abe: $d9


	ret                                              ; $5abf: $c9


	add  $96                                         ; $5ac0: $c6 $96
	ld   d, l                                        ; $5ac2: $55
	dec  sp                                          ; $5ac3: $3b

jr_0b9_5ac4:
	ld   a, [de]                                     ; $5ac4: $1a

jr_0b9_5ac5:
	add  e                                           ; $5ac5: $83
	call nc, $9de8                                   ; $5ac6: $d4 $e8 $9d
	adc  e                                           ; $5ac9: $8b
	adc  e                                           ; $5aca: $8b
	ld   l, d                                        ; $5acb: $6a
	ld   h, l                                        ; $5acc: $65
	ld   b, e                                        ; $5acd: $43
	or   c                                           ; $5ace: $b1
	and  a                                           ; $5acf: $a7
	ld   a, $3f                                      ; $5ad0: $3e $3f
	adc  d                                           ; $5ad2: $8a
	ret  c                                           ; $5ad3: $d8

	ret  z                                           ; $5ad4: $c8

	push bc                                          ; $5ad5: $c5
	sub  l                                           ; $5ad6: $95
	ld   d, h                                        ; $5ad7: $54
	ld   c, d                                        ; $5ad8: $4a
	inc  e                                           ; $5ad9: $1c
	ld   d, l                                        ; $5ada: $55
	db   $e3                                         ; $5adb: $e3
	or   $ad                                         ; $5adc: $f6 $ad
	adc  h                                           ; $5ade: $8c
	sbc  e                                           ; $5adf: $9b
	ld   e, d                                        ; $5ae0: $5a
	ld   d, [hl]                                     ; $5ae1: $56
	dec  [hl]                                        ; $5ae2: $35
	and  c                                           ; $5ae3: $a1
	call nc, $3f6e                                   ; $5ae4: $d4 $6e $3f
	ld   l, e                                        ; $5ae7: $6b
	ret  c                                           ; $5ae8: $d8

	cp   c                                           ; $5ae9: $b9
	or   l                                           ; $5aea: $b5
	and  h                                           ; $5aeb: $a4
	ld   h, d                                        ; $5aec: $62
	ld   l, c                                        ; $5aed: $69
	rra                                              ; $5aee: $1f
	jr   z, jr_0b9_5ac5                              ; $5aef: $28 $d4

	db   $f4                                         ; $5af1: $f4
	call c, $8a8b                                    ; $5af2: $dc $8b $8a
	ld   e, d                                        ; $5af5: $5a
	ld   b, [hl]                                     ; $5af6: $46
	jr   jr_0b9_5b5a                                 ; $5af7: $18 $61

	pop  af                                          ; $5af9: $f1
	cp   e                                           ; $5afa: $bb
	ld   e, a                                        ; $5afb: $5f
	ld   a, $aa                                      ; $5afc: $3e $aa
	cp   c                                           ; $5afe: $b9
	and  l                                           ; $5aff: $a5
	sub  e                                           ; $5b00: $93
	ld   h, c                                        ; $5b01: $61
	and  h                                           ; $5b02: $a4
	rra                                              ; $5b03: $1f
	dec  e                                           ; $5b04: $1d
	add  a                                           ; $5b05: $87
	di                                               ; $5b06: $f3
	ld   sp, hl                                      ; $5b07: $f9
	cp   e                                           ; $5b08: $bb
	sbc  d                                           ; $5b09: $9a
	ld   l, c                                        ; $5b0a: $69
	ld   [hl], $1b                                   ; $5b0b: $36 $1b
	inc  d                                           ; $5b0d: $14
	pop  hl                                          ; $5b0e: $e1
	push af                                          ; $5b0f: $f5
	cp   a                                           ; $5b10: $bf
	ld   c, a                                        ; $5b11: $4f
	ld   a, e                                        ; $5b12: $7b
	xor  d                                           ; $5b13: $aa
	sub  a                                           ; $5b14: $97
	add  e                                           ; $5b15: $83
	ld   h, c                                        ; $5b16: $61
	or   c                                           ; $5b17: $b1
	adc  h                                           ; $5b18: $8c
	rra                                              ; $5b19: $1f
	ld   l, $c5                                      ; $5b1a: $2e $c5
	or   $d9                                         ; $5b1c: $f6 $d9
	or   a                                           ; $5b1e: $b7
	add  a                                           ; $5b1f: $87
	ld   b, l                                        ; $5b20: $45
	dec  sp                                          ; $5b21: $3b
	inc  e                                           ; $5b22: $1c
	ld   [hl], d                                     ; $5b23: $72
	pop  af                                          ; $5b24: $f1
	rst  $30                                         ; $5b25: $f7
	sbc  a                                           ; $5b26: $9f
	ld   l, l                                        ; $5b27: $6d
	ld   a, e                                        ; $5b28: $7b
	ld   l, b                                        ; $5b29: $68
	ld   d, h                                        ; $5b2a: $54
	dec  [hl]                                        ; $5b2b: $35
	sub  c                                           ; $5b2c: $91
	ldh  a, [c]                                      ; $5b2d: $f2
	adc  [hl]                                        ; $5b2e: $8e
	rra                                              ; $5b2f: $1f
	ld   c, l                                        ; $5b30: $4d
	rst  ToBoot                                         ; $5b31: $c7
	rst  $10                                         ; $5b32: $d7
	and  [hl]                                        ; $5b33: $a6
	sub  h                                           ; $5b34: $94
	ld   d, d                                        ; $5b35: $52
	add  l                                           ; $5b36: $85
	rra                                              ; $5b37: $1f
	dec  e                                           ; $5b38: $1d
	and  h                                           ; $5b39: $a4
	ldh  a, [c]                                      ; $5b3a: $f2
	ld   a, [$7b8d]                                  ; $5b3b: $fa $8d $7b
	ld   l, b                                        ; $5b3e: $68
	dec  [hl]                                        ; $5b3f: $35
	ld   a, [hl+]                                    ; $5b40: $2a
	dec  d                                           ; $5b41: $15
	pop  af                                          ; $5b42: $f1
	push af                                          ; $5b43: $f5
	xor  a                                           ; $5b44: $af
	ccf                                              ; $5b45: $3f
	ld   l, h                                        ; $5b46: $6c
	cp   c                                           ; $5b47: $b9
	sub  [hl]                                        ; $5b48: $96
	ld   [hl], e                                     ; $5b49: $73

jr_0b9_5b4a:
	ld   d, e                                        ; $5b4a: $53
	or   c                                           ; $5b4b: $b1
	cp   c                                           ; $5b4c: $b9
	rra                                              ; $5b4d: $1f
	rra                                              ; $5b4e: $1f
	or   [hl]                                        ; $5b4f: $b6
	push af                                          ; $5b50: $f5
	jp   hl                                          ; $5b51: $e9


	sbc  b                                           ; $5b52: $98
	halt                                             ; $5b53: $76
	ld   b, e                                        ; $5b54: $43
	ld   h, a                                        ; $5b55: $67
	rra                                              ; $5b56: $1f
	jr   z, jr_0b9_5b4a                              ; $5b57: $28 $f1

	push af                                          ; $5b59: $f5

jr_0b9_5b5a:
	adc  $6e                                         ; $5b5a: $ce $6e
	ld   a, d                                        ; $5b5c: $7a
	ld   l, b                                        ; $5b5d: $68
	ld   b, h                                        ; $5b5e: $44
	jr   z, jr_0b9_5ba2                              ; $5b5f: $28 $41

	pop  af                                          ; $5b61: $f1
	ei                                               ; $5b62: $fb
	ld   c, a                                        ; $5b63: $4f
	cpl                                              ; $5b64: $2f

Jump_0b9_5b65:
	xor  b                                           ; $5b65: $a8
	rst  $10                                         ; $5b66: $d7

jr_0b9_5b67:
	and  [hl]                                        ; $5b67: $a6
	ld   [hl], h                                     ; $5b68: $74
	ld   b, e                                        ; $5b69: $43
	and  c                                           ; $5b6a: $a1
	ld   a, h                                        ; $5b6b: $7c
	rra                                              ; $5b6c: $1f
	ld   c, e                                        ; $5b6d: $4b
	di                                               ; $5b6e: $f3
	or   $ba                                         ; $5b6f: $f6 $ba
	ld   a, c                                        ; $5b71: $79
	ld   h, [hl]                                     ; $5b72: $66
	inc  sp                                          ; $5b73: $33
	ld   e, c                                        ; $5b74: $59
	ld   e, $53                                      ; $5b75: $1e $53
	pop  af                                          ; $5b77: $f1
	ld   sp, hl                                      ; $5b78: $f9
	ld   a, a                                        ; $5b79: $7f
	ld   c, [hl]                                     ; $5b7a: $4e
	adc  c                                           ; $5b7b: $89
	add  a                                           ; $5b7c: $87
	ld   d, h                                        ; $5b7d: $54
	daa                                              ; $5b7e: $27
	ld   h, c                                        ; $5b7f: $61
	pop  af                                          ; $5b80: $f1
	xor  a                                           ; $5b81: $af
	rra                                              ; $5b82: $1f
	ld   c, l                                        ; $5b83: $4d
	sub  $e7                                         ; $5b84: $d6 $e7
	and  a                                           ; $5b86: $a7
	ld   [hl], h                                     ; $5b87: $74
	ld   b, d                                        ; $5b88: $42
	sub  d                                           ; $5b89: $92
	ccf                                              ; $5b8a: $3f
	rra                                              ; $5b8b: $1f
	and  l                                           ; $5b8c: $a5
	ldh  a, [c]                                      ; $5b8d: $f2
	ld   sp, hl                                      ; $5b8e: $f9
	adc  l                                           ; $5b8f: $8d
	ld   l, d                                        ; $5b90: $6a
	ld   h, a                                        ; $5b91: $67
	ld   b, h                                        ; $5b92: $44
	ld   a, [hl-]                                    ; $5b93: $3a
	jr   jr_0b9_5b67                                 ; $5b94: $18 $d1

	push af                                          ; $5b96: $f5
	sbc  a                                           ; $5b97: $9f
	ccf                                              ; $5b98: $3f
	ld   a, d                                        ; $5b99: $7a
	or   a                                           ; $5b9a: $b7
	sub  [hl]                                        ; $5b9b: $96
	ld   h, h                                        ; $5b9c: $64
	inc  [hl]                                        ; $5b9d: $34
	sub  c                                           ; $5b9e: $91
	reti                                             ; $5b9f: $d9


	rrca                                             ; $5ba0: $0f
	rra                                              ; $5ba1: $1f

jr_0b9_5ba2:
	push de                                          ; $5ba2: $d5
	push af                                          ; $5ba3: $f5
	ret                                              ; $5ba4: $c9


	adc  c                                           ; $5ba5: $89
	ld   h, l                                        ; $5ba6: $65
	inc  sp                                          ; $5ba7: $33
	halt                                             ; $5ba8: $76
	rra                                              ; $5ba9: $1f
	daa                                              ; $5baa: $27
	pop  af                                          ; $5bab: $f1
	rst  $30                                         ; $5bac: $f7
	xor  a                                           ; $5bad: $af
	ld   e, l                                        ; $5bae: $5d
	ld   a, b                                        ; $5baf: $78
	halt                                             ; $5bb0: $76
	ld   b, e                                        ; $5bb1: $43
	add  hl, sp                                      ; $5bb2: $39
	ld   [hl-], a                                    ; $5bb3: $32
	pop  af                                          ; $5bb4: $f1
	db   $ed                                         ; $5bb5: $ed
	ccf                                              ; $5bb6: $3f
	ld   c, [hl]                                     ; $5bb7: $4e
	or   a                                           ; $5bb8: $b7
	add  $97                                         ; $5bb9: $c6 $97
	ld   h, e                                        ; $5bbb: $63
	dec  [hl]                                        ; $5bbc: $35
	sub  c                                           ; $5bbd: $91
	cp   e                                           ; $5bbe: $bb
	rra                                              ; $5bbf: $1f
	ld   e, e                                        ; $5bc0: $5b
	db   $f4                                         ; $5bc1: $f4
	rst  $30                                         ; $5bc2: $f7
	xor  d                                           ; $5bc3: $aa
	ld   a, c                                        ; $5bc4: $79
	ld   h, l                                        ; $5bc5: $65
	inc  sp                                          ; $5bc6: $33
	halt                                             ; $5bc7: $76
	rra                                              ; $5bc8: $1f
	ld   [hl], $f1                                   ; $5bc9: $36 $f1
	ld   sp, hl                                      ; $5bcb: $f9
	sbc  a                                           ; $5bcc: $9f
	ld   l, l                                        ; $5bcd: $6d
	add  a                                           ; $5bce: $87
	add  [hl]                                        ; $5bcf: $86
	ld   b, e                                        ; $5bd0: $43
	ld   c, d                                        ; $5bd1: $4a
	dec  d                                           ; $5bd2: $15
	pop  af                                          ; $5bd3: $f1
	ld   a, [$4e5f]                                  ; $5bd4: $fa $5f $4e
	xor  b                                           ; $5bd7: $a8
	or   a                                           ; $5bd8: $b7
	add  a                                           ; $5bd9: $87
	ld   h, e                                        ; $5bda: $63
	ld   [hl], $81                                   ; $5bdb: $36 $81
	reti                                             ; $5bdd: $d9


	rra                                              ; $5bde: $1f
	dec  a                                           ; $5bdf: $3d
	and  $f7                                         ; $5be0: $e6 $f7
	cp   c                                           ; $5be2: $b9
	ld   [hl], a                                     ; $5be3: $77
	ld   h, l                                        ; $5be4: $65
	inc  h                                           ; $5be5: $24
	add  e                                           ; $5be6: $83
	cpl                                              ; $5be7: $2f
	inc  e                                           ; $5be8: $1c
	di                                               ; $5be9: $f3
	rst  $30                                         ; $5bea: $f7
	call z, Call_0b9_797c                            ; $5beb: $cc $7c $79
	ld   h, [hl]                                     ; $5bee: $66
	ld   [hl-], a                                    ; $5bef: $32
	ld   e, c                                        ; $5bf0: $59
	inc  e                                           ; $5bf1: $1c
	pop  bc                                          ; $5bf2: $c1
	push af                                          ; $5bf3: $f5
	cp   a                                           ; $5bf4: $bf
	ld   e, a                                        ; $5bf5: $5f
	ld   a, d                                        ; $5bf6: $7a
	and  a                                           ; $5bf7: $a7
	add  [hl]                                        ; $5bf8: $86
	ld   d, d                                        ; $5bf9: $52
	jr   c, jr_0b9_5c4d                              ; $5bfa: $38 $51

	ldh  a, [c]                                      ; $5bfc: $f2

jr_0b9_5bfd:
	adc  a                                           ; $5bfd: $8f
	cpl                                              ; $5bfe: $2f
	sbc  d                                           ; $5bff: $9a
	rst  $10                                         ; $5c00: $d7
	rst  ToBoot                                         ; $5c01: $c7
	sub  a                                           ; $5c02: $97
	ld   h, h                                        ; $5c03: $64
	dec  h                                           ; $5c04: $25
	and  c                                           ; $5c05: $a1
	sbc  [hl]                                        ; $5c06: $9e
	rra                                              ; $5c07: $1f
	add  a                                           ; $5c08: $87
	push af                                          ; $5c09: $f5
	add  sp, -$56                                    ; $5c0a: $e8 $aa
	ld   a, c                                        ; $5c0c: $79
	ld   h, l                                        ; $5c0d: $65
	ld   [hl+], a                                    ; $5c0e: $22
	sub  l                                           ; $5c0f: $95
	rra                                              ; $5c10: $1f
	ld   [hl], $f2                                   ; $5c11: $36 $f2
	ld   a, [$7cad]                                  ; $5c13: $fa $ad $7c
	ld   a, c                                        ; $5c16: $79
	ld   h, [hl]                                     ; $5c17: $66
	ld   b, c                                        ; $5c18: $41
	ld   e, c                                        ; $5c19: $59
	jr   jr_0b9_5bfd                                 ; $5c1a: $18 $e1

	ld   a, [$6f7f]                                  ; $5c1c: $fa $7f $6f
	sbc  d                                           ; $5c1f: $9a
	and  a                                           ; $5c20: $a7
	add  [hl]                                        ; $5c21: $86
	ld   d, d                                        ; $5c22: $52
	add  hl, hl                                      ; $5c23: $29
	ld   d, c                                        ; $5c24: $51
	di                                               ; $5c25: $f3
	ld   l, a                                        ; $5c26: $6f
	cpl                                              ; $5c27: $2f
	xor  d                                           ; $5c28: $aa
	rst  $10                                         ; $5c29: $d7
	rst  ToBoot                                         ; $5c2a: $c7
	add  [hl]                                        ; $5c2b: $86
	ld   h, h                                        ; $5c2c: $64
	dec  d                                           ; $5c2d: $15
	sub  c                                           ; $5c2e: $91
	xor  l                                           ; $5c2f: $ad
	rra                                              ; $5c30: $1f
	sbc  b                                           ; $5c31: $98
	rst  $30                                         ; $5c32: $f7
	add  sp, -$47                                    ; $5c33: $e8 $b9
	ld   a, c                                        ; $5c35: $79
	ld   d, l                                        ; $5c36: $55
	inc  de                                          ; $5c37: $13
	sub  e                                           ; $5c38: $93
	rra                                              ; $5c39: $1f
	add  hl, bc                                      ; $5c3a: $09
	di                                               ; $5c3b: $f3
	ld   hl, sp-$34                                  ; $5c3c: $f8 $cc
	sbc  h                                           ; $5c3e: $9c
	ld   l, c                                        ; $5c3f: $69
	ld   h, [hl]                                     ; $5c40: $66
	ld   sp, $1d77                                   ; $5c41: $31 $77 $1d
	and  c                                           ; $5c44: $a1
	push af                                          ; $5c45: $f5
	db   $dd                                         ; $5c46: $dd
	sbc  a                                           ; $5c47: $9f
	ld   a, h                                        ; $5c48: $7c
	ld   a, c                                        ; $5c49: $79
	ld   [hl], l                                     ; $5c4a: $75
	ld   d, c                                        ; $5c4b: $51
	ld   e, c                                        ; $5c4c: $59

jr_0b9_5c4d:
	ld   d, $f1                                      ; $5c4d: $16 $f1
	db   $fc                                         ; $5c4f: $fc
	ld   a, a                                        ; $5c50: $7f
	ld   a, [hl]                                     ; $5c51: $7e
	adc  e                                           ; $5c52: $8b
	and  a                                           ; $5c53: $a7
	sub  l                                           ; $5c54: $95
	ld   h, c                                        ; $5c55: $61
	ld   a, [hl+]                                    ; $5c56: $2a
	ld   [de], a                                     ; $5c57: $12
	pop  af                                          ; $5c58: $f1
	xor  a                                           ; $5c59: $af
	ld   e, a                                        ; $5c5a: $5f
	sbc  l                                           ; $5c5b: $9d
	cp   d                                           ; $5c5c: $ba
	add  $a5                                         ; $5c5d: $c6 $a5
	ld   h, d                                        ; $5c5f: $62
	add  hl, de                                      ; $5c60: $19
	ld   sp, $5ff4                                   ; $5c61: $31 $f4 $5f
	ld   e, a                                        ; $5c64: $5f
	cp   h                                           ; $5c65: $bc
	ret  z                                           ; $5c66: $c8

	sub  $a5                                         ; $5c67: $d6 $a5
	ld   h, h                                        ; $5c69: $64
	jr   jr_0b9_5cbd                                 ; $5c6a: $18 $51

	rst  $20                                         ; $5c6c: $e7
	cpl                                              ; $5c6d: $2f
	ld   e, a                                        ; $5c6e: $5f
	cp   e                                           ; $5c6f: $bb
	rst  $30                                         ; $5c70: $f7
	push af                                          ; $5c71: $f5
	and  a                                           ; $5c72: $a7
	ld   b, l                                        ; $5c73: $45
	rla                                              ; $5c74: $17
	ld   h, c                                        ; $5c75: $61
	cp   c                                           ; $5c76: $b9
	rra                                              ; $5c77: $1f
	ld   l, l                                        ; $5c78: $6d
	reti                                             ; $5c79: $d9


	or   $f7                                         ; $5c7a: $f6 $f7
	adc  c                                           ; $5c7c: $89
	ld   b, [hl]                                     ; $5c7d: $46
	ld   d, $61                                      ; $5c7e: $16 $61
	cp   c                                           ; $5c80: $b9
	rra                                              ; $5c81: $1f
	ld   l, l                                        ; $5c82: $6d
	jp   hl                                          ; $5c83: $e9


	or   $f8                                         ; $5c84: $f6 $f8
	adc  b                                           ; $5c86: $88
	ld   b, [hl]                                     ; $5c87: $46
	ld   d, $51                                      ; $5c88: $16 $51
	xor  b                                           ; $5c8a: $a8
	rra                                              ; $5c8b: $1f
	ld   l, h                                        ; $5c8c: $6c
	add  sp, -$09                                    ; $5c8d: $e8 $f7
	ld   sp, hl                                      ; $5c8f: $f9
	xor  b                                           ; $5c90: $a8
	ld   d, [hl]                                     ; $5c91: $56
	jr   jr_0b9_5cd5                                 ; $5c92: $18 $41

	add  $2f                                         ; $5c94: $c6 $2f
	ld   e, l                                        ; $5c96: $5d
	ld   [$e8f8], a                                  ; $5c97: $ea $f8 $e8
	or   [hl]                                        ; $5c9a: $b6
	ld   h, l                                        ; $5c9b: $65
	jr   jr_0b9_5ccf                                 ; $5c9c: $18 $31

	or   l                                           ; $5c9e: $b5
	cpl                                              ; $5c9f: $2f
	ld   e, l                                        ; $5ca0: $5d
	db   $db                                         ; $5ca1: $db
	ld   sp, hl                                      ; $5ca2: $f9
	rst  $30                                         ; $5ca3: $f7
	add  $65                                         ; $5ca4: $c6 $65
	jr   jr_0b9_5cc9                                 ; $5ca6: $18 $21

	call nz, Call_0b9_5f4f                           ; $5ca8: $c4 $4f $5f
	cp   l                                           ; $5cab: $bd
	ld   sp, hl                                      ; $5cac: $f9
	rst  $30                                         ; $5cad: $f7
	add  $73                                         ; $5cae: $c6 $73
	jr   jr_0b9_5cc3                                 ; $5cb0: $18 $11

	or   c                                           ; $5cb2: $b1
	ld   a, l                                        ; $5cb3: $7d
	ld   e, a                                        ; $5cb4: $5f
	sbc  [hl]                                        ; $5cb5: $9e
	db   $eb                                         ; $5cb6: $eb
	jp   hl                                          ; $5cb7: $e9


	push bc                                          ; $5cb8: $c5
	ld   [hl], c                                     ; $5cb9: $71
	rla                                              ; $5cba: $17
	inc  de                                          ; $5cbb: $13
	and  c                                           ; $5cbc: $a1

jr_0b9_5cbd:
	adc  e                                           ; $5cbd: $8b
	ld   l, a                                        ; $5cbe: $6f
	sbc  [hl]                                        ; $5cbf: $9e
	call c, $b6e9                                    ; $5cc0: $dc $e9 $b6

jr_0b9_5cc3:
	add  c                                           ; $5cc3: $81
	ld   [hl], $14                                   ; $5cc4: $36 $14
	sub  c                                           ; $5cc6: $91
	adc  d                                           ; $5cc7: $8a
	ld   a, [hl]                                     ; $5cc8: $7e

jr_0b9_5cc9:
	sbc  a                                           ; $5cc9: $9f
	cp   l                                           ; $5cca: $bd
	jp   c, $91a6                                    ; $5ccb: $da $a6 $91

	ld   b, l                                        ; $5cce: $45

jr_0b9_5ccf:
	inc  d                                           ; $5ccf: $14
	ld   [hl], d                                     ; $5cd0: $72
	adc  b                                           ; $5cd1: $88
	adc  l                                           ; $5cd2: $8d
	sbc  a                                           ; $5cd3: $9f
	cp   l                                           ; $5cd4: $bd

jr_0b9_5cd5:
	jp   z, $91b7                                    ; $5cd5: $ca $b7 $91

	ld   b, l                                        ; $5cd8: $45
	inc  de                                          ; $5cd9: $13
	ld   [hl], d                                     ; $5cda: $72
	ld   a, b                                        ; $5cdb: $78
	ld   a, l                                        ; $5cdc: $7d
	sbc  a                                           ; $5cdd: $9f
	cp   l                                           ; $5cde: $bd
	jp   c, $82b7                                    ; $5cdf: $da $b7 $82

	ld   d, h                                        ; $5ce2: $54
	ld   [hl+], a                                    ; $5ce3: $22
	ld   [hl], e                                     ; $5ce4: $73
	ld   l, c                                        ; $5ce5: $69
	ld   a, l                                        ; $5ce6: $7d
	sbc  [hl]                                        ; $5ce7: $9e
	cp   l                                           ; $5ce8: $bd
	jp   c, $93c8                                    ; $5ce9: $da $c8 $93

	ld   d, h                                        ; $5cec: $54
	inc  sp                                          ; $5ced: $33
	ld   h, e                                        ; $5cee: $63
	ld   e, b                                        ; $5cef: $58
	ld   a, e                                        ; $5cf0: $7b
	adc  [hl]                                        ; $5cf1: $8e
	cp   h                                           ; $5cf2: $bc
	db   $db                                         ; $5cf3: $db
	cp   b                                           ; $5cf4: $b8
	and  h                                           ; $5cf5: $a4
	ld   h, h                                        ; $5cf6: $64
	ld   d, d                                        ; $5cf7: $52
	ld   d, l                                        ; $5cf8: $55
	ld   c, b                                        ; $5cf9: $48
	ld   l, e                                        ; $5cfa: $6b
	ld   a, l                                        ; $5cfb: $7d
	set  5, e                                        ; $5cfc: $cb $eb
	ret                                              ; $5cfe: $c9


	and  [hl]                                        ; $5cff: $a6
	ld   h, h                                        ; $5d00: $64
	ld   d, h                                        ; $5d01: $54
	ld   b, [hl]                                     ; $5d02: $46
	scf                                              ; $5d03: $37
	ld   l, d                                        ; $5d04: $6a
	ld   a, e                                        ; $5d05: $7b
	jp   z, $c9eb                                    ; $5d06: $ca $eb $c9

	and  a                                           ; $5d09: $a7
	ld   h, [hl]                                     ; $5d0a: $66
	ld   d, [hl]                                     ; $5d0b: $56
	scf                                              ; $5d0c: $37
	ld   b, [hl]                                     ; $5d0d: $46
	ld   l, c                                        ; $5d0e: $69
	adc  b                                           ; $5d0f: $88
	ret  c                                           ; $5d10: $d8

	db   $db                                         ; $5d11: $db
	cp   e                                           ; $5d12: $bb
	xor  b                                           ; $5d13: $a8
	ld   [hl], a                                     ; $5d14: $77
	ld   d, a                                        ; $5d15: $57
	ld   b, [hl]                                     ; $5d16: $46
	ld   h, l                                        ; $5d17: $65
	ld   [hl], a                                     ; $5d18: $77
	add  a                                           ; $5d19: $87
	cp   c                                           ; $5d1a: $b9
	cp   h                                           ; $5d1b: $bc
	sbc  d                                           ; $5d1c: $9a
	sbc  c                                           ; $5d1d: $99
	ld   a, b                                        ; $5d1e: $78
	ld   h, a                                        ; $5d1f: $67
	ld   h, l                                        ; $5d20: $65
	ld   [hl], l                                     ; $5d21: $75
	ld   h, a                                        ; $5d22: $67
	ld   [hl], a                                     ; $5d23: $77
	xor  c                                           ; $5d24: $a9
	xor  e                                           ; $5d25: $ab
	xor  d                                           ; $5d26: $aa
	sbc  c                                           ; $5d27: $99
	adc  b                                           ; $5d28: $88
	ld   a, b                                        ; $5d29: $78
	halt                                             ; $5d2a: $76
	halt                                             ; $5d2b: $76
	ld   h, a                                        ; $5d2c: $67
	ld   [hl], a                                     ; $5d2d: $77
	sbc  b                                           ; $5d2e: $98
	sbc  d                                           ; $5d2f: $9a
	sbc  d                                           ; $5d30: $9a
	sbc  c                                           ; $5d31: $99
	sbc  b                                           ; $5d32: $98
	sbc  b                                           ; $5d33: $98
	ld   [hl], a                                     ; $5d34: $77
	halt                                             ; $5d35: $76
	ld   [hl], a                                     ; $5d36: $77
	ld   [hl], a                                     ; $5d37: $77
	adc  b                                           ; $5d38: $88
	adc  b                                           ; $5d39: $88
	sbc  c                                           ; $5d3a: $99
	sbc  c                                           ; $5d3b: $99
	adc  c                                           ; $5d3c: $89
	sbc  b                                           ; $5d3d: $98
	ld   [hl], a                                     ; $5d3e: $77
	halt                                             ; $5d3f: $76
	ld   [hl], a                                     ; $5d40: $77
	ld   [hl], a                                     ; $5d41: $77
	add  a                                           ; $5d42: $87
	adc  b                                           ; $5d43: $88
	sbc  c                                           ; $5d44: $99
	sbc  c                                           ; $5d45: $99
	sbc  c                                           ; $5d46: $99
	sbc  b                                           ; $5d47: $98
	ld   [hl], a                                     ; $5d48: $77
	ld   [hl], a                                     ; $5d49: $77
	ld   [hl], a                                     ; $5d4a: $77
	ld   [hl], a                                     ; $5d4b: $77
	ld   a, b                                        ; $5d4c: $78
	adc  b                                           ; $5d4d: $88
	sbc  d                                           ; $5d4e: $9a
	sbc  c                                           ; $5d4f: $99
	sbc  b                                           ; $5d50: $98
	sbc  b                                           ; $5d51: $98
	ld   [hl], a                                     ; $5d52: $77
	halt                                             ; $5d53: $76
	ld   [hl], a                                     ; $5d54: $77
	ld   [hl], a                                     ; $5d55: $77
	adc  b                                           ; $5d56: $88
	adc  b                                           ; $5d57: $88
	sbc  d                                           ; $5d58: $9a
	sbc  c                                           ; $5d59: $99
	sbc  b                                           ; $5d5a: $98
	adc  b                                           ; $5d5b: $88
	ld   [hl], a                                     ; $5d5c: $77
	ld   [hl], a                                     ; $5d5d: $77
	ld   [hl], a                                     ; $5d5e: $77
	ld   [hl], a                                     ; $5d5f: $77
	adc  b                                           ; $5d60: $88
	sbc  b                                           ; $5d61: $98
	adc  c                                           ; $5d62: $89
	sbc  c                                           ; $5d63: $99
	sbc  c                                           ; $5d64: $99
	adc  b                                           ; $5d65: $88
	ld   [hl], a                                     ; $5d66: $77
	ld   [hl], a                                     ; $5d67: $77
	ld   [hl], a                                     ; $5d68: $77
	ld   [hl], a                                     ; $5d69: $77
	adc  b                                           ; $5d6a: $88
	sbc  c                                           ; $5d6b: $99
	sbc  b                                           ; $5d6c: $98
	adc  b                                           ; $5d6d: $88
	sbc  c                                           ; $5d6e: $99
	adc  b                                           ; $5d6f: $88
	add  a                                           ; $5d70: $87
	ld   [hl], a                                     ; $5d71: $77
	ld   [hl], a                                     ; $5d72: $77
	ld   [hl], a                                     ; $5d73: $77
	adc  b                                           ; $5d74: $88
	adc  b                                           ; $5d75: $88
	sbc  c                                           ; $5d76: $99
	sbc  c                                           ; $5d77: $99
	adc  b                                           ; $5d78: $88
	adc  b                                           ; $5d79: $88
	adc  b                                           ; $5d7a: $88
	adc  b                                           ; $5d7b: $88
	ld   a, b                                        ; $5d7c: $78
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
	adc  c                                           ; $5ebc: $89
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
	sbc  b                                           ; $5ed2: $98
	ld   a, b                                        ; $5ed3: $78
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
	sbc  b                                           ; $5ee6: $98
	adc  b                                           ; $5ee7: $88
	adc  b                                           ; $5ee8: $88
	adc  c                                           ; $5ee9: $89
	adc  b                                           ; $5eea: $88
	adc  b                                           ; $5eeb: $88
	adc  b                                           ; $5eec: $88
	adc  b                                           ; $5eed: $88
	add  a                                           ; $5eee: $87
	adc  b                                           ; $5eef: $88
	adc  b                                           ; $5ef0: $88
	adc  b                                           ; $5ef1: $88
	ld   a, c                                        ; $5ef2: $79
	adc  b                                           ; $5ef3: $88
	adc  b                                           ; $5ef4: $88
	sbc  b                                           ; $5ef5: $98
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
	add  a                                           ; $5f06: $87
	adc  b                                           ; $5f07: $88
	ld   a, b                                        ; $5f08: $78
	adc  c                                           ; $5f09: $89
	adc  b                                           ; $5f0a: $88
	adc  b                                           ; $5f0b: $88
	sbc  b                                           ; $5f0c: $98
	adc  b                                           ; $5f0d: $88
	adc  b                                           ; $5f0e: $88
	adc  b                                           ; $5f0f: $88
	adc  b                                           ; $5f10: $88
	adc  b                                           ; $5f11: $88
	adc  b                                           ; $5f12: $88
	adc  b                                           ; $5f13: $88
	sbc  b                                           ; $5f14: $98
	adc  b                                           ; $5f15: $88
	adc  b                                           ; $5f16: $88
	ld   a, c                                        ; $5f17: $79
	add  a                                           ; $5f18: $87
	sub  a                                           ; $5f19: $97
	adc  b                                           ; $5f1a: $88
	adc  b                                           ; $5f1b: $88
	ld   a, c                                        ; $5f1c: $79
	adc  b                                           ; $5f1d: $88
	adc  b                                           ; $5f1e: $88
	add  a                                           ; $5f1f: $87
	sbc  b                                           ; $5f20: $98
	adc  c                                           ; $5f21: $89
	adc  b                                           ; $5f22: $88
	ld   a, b                                        ; $5f23: $78
	adc  b                                           ; $5f24: $88
	adc  b                                           ; $5f25: $88
	sub  a                                           ; $5f26: $97
	adc  c                                           ; $5f27: $89
	add  a                                           ; $5f28: $87
	adc  b                                           ; $5f29: $88
	ld   a, b                                        ; $5f2a: $78
	adc  b                                           ; $5f2b: $88
	ld   a, b                                        ; $5f2c: $78
	adc  b                                           ; $5f2d: $88
	sbc  b                                           ; $5f2e: $98
	add  a                                           ; $5f2f: $87
	sbc  b                                           ; $5f30: $98
	adc  b                                           ; $5f31: $88
	sbc  b                                           ; $5f32: $98
	ld   a, b                                        ; $5f33: $78
	add  a                                           ; $5f34: $87
	adc  b                                           ; $5f35: $88
	add  a                                           ; $5f36: $87
	sub  a                                           ; $5f37: $97
	adc  c                                           ; $5f38: $89
	adc  b                                           ; $5f39: $88
	adc  b                                           ; $5f3a: $88
	ld   a, b                                        ; $5f3b: $78
	sub  a                                           ; $5f3c: $97
	ld   a, b                                        ; $5f3d: $78
	add  a                                           ; $5f3e: $87
	adc  b                                           ; $5f3f: $88
	ld   a, b                                        ; $5f40: $78
	adc  b                                           ; $5f41: $88
	ld   a, c                                        ; $5f42: $79
	adc  b                                           ; $5f43: $88
	sbc  c                                           ; $5f44: $99
	sbc  b                                           ; $5f45: $98
	sbc  b                                           ; $5f46: $98
	adc  b                                           ; $5f47: $88
	ld   [hl], a                                     ; $5f48: $77
	ld   h, a                                        ; $5f49: $67
	halt                                             ; $5f4a: $76
	ld   [hl], a                                     ; $5f4b: $77
	ld   [hl], a                                     ; $5f4c: $77
	sbc  b                                           ; $5f4d: $98
	sbc  d                                           ; $5f4e: $9a

Call_0b9_5f4f:
	xor  d                                           ; $5f4f: $aa
	xor  e                                           ; $5f50: $ab
	sbc  d                                           ; $5f51: $9a
	adc  b                                           ; $5f52: $88
	ld   [hl], a                                     ; $5f53: $77
	ld   h, h                                        ; $5f54: $64
	ld   d, l                                        ; $5f55: $55
	ld   d, h                                        ; $5f56: $54
	ld   h, a                                        ; $5f57: $67
	ld   a, c                                        ; $5f58: $79
	cp   h                                           ; $5f59: $bc
	cp   h                                           ; $5f5a: $bc
	ld   [$a7bb], a                                  ; $5f5b: $ea $bb $a7
	add  [hl]                                        ; $5f5e: $86
	inc  sp                                          ; $5f5f: $33
	inc  hl                                          ; $5f60: $23
	inc  sp                                          ; $5f61: $33
	ld   d, [hl]                                     ; $5f62: $56
	sbc  c                                           ; $5f63: $99
	sbc  $cf                                         ; $5f64: $de $cf
	db   $ed                                         ; $5f66: $ed
	xor  e                                           ; $5f67: $ab
	sub  [hl]                                        ; $5f68: $96
	ld   h, h                                        ; $5f69: $64
	ld   b, c                                        ; $5f6a: $41
	ld   [de], a                                     ; $5f6b: $12
	inc  sp                                          ; $5f6c: $33
	ld   e, b                                        ; $5f6d: $58
	xor  e                                           ; $5f6e: $ab
	rst  JumpTable                                         ; $5f6f: $df
	sbc  $ec                                         ; $5f70: $de $ec
	cp   e                                           ; $5f72: $bb
	sub  l                                           ; $5f73: $95
	ld   d, h                                        ; $5f74: $54
	ld   hl, $3511                                   ; $5f75: $21 $11 $35
	ld   l, c                                        ; $5f78: $69
	cp   h                                           ; $5f79: $bc
	rst  $28                                         ; $5f7a: $ef
	db   $fd                                         ; $5f7b: $fd
	xor  $99                                         ; $5f7c: $ee $99
	sub  l                                           ; $5f7e: $95
	ld   b, e                                        ; $5f7f: $43
	ld   hl, $4412                                   ; $5f80: $21 $12 $44
	ld   l, e                                        ; $5f83: $6b
	call z, $eddf                                    ; $5f84: $cc $df $ed
	db   $ec                                         ; $5f87: $ec
	sbc  b                                           ; $5f88: $98
	sub  h                                           ; $5f89: $94

jr_0b9_5f8a:
	inc  [hl]                                        ; $5f8a: $34
	ld   hl, $4513                                   ; $5f8b: $21 $13 $45
	ld   a, e                                        ; $5f8e: $7b
	call z, $edef                                    ; $5f8f: $cc $ef $ed
	res  2, a                                        ; $5f92: $cb $97
	ld   [hl], l                                     ; $5f94: $75
	ld   b, e                                        ; $5f95: $43
	ld   [de], a                                     ; $5f96: $12
	inc  de                                          ; $5f97: $13
	ld   b, l                                        ; $5f98: $45
	adc  d                                           ; $5f99: $8a
	call z, $deef                                    ; $5f9a: $cc $ef $de
	cp   e                                           ; $5f9d: $bb
	add  a                                           ; $5f9e: $87
	ld   [hl], l                                     ; $5f9f: $75
	ld   d, e                                        ; $5fa0: $53
	ld   [hl-], a                                    ; $5fa1: $32
	ld   [hl+], a                                    ; $5fa2: $22
	ld   d, a                                        ; $5fa3: $57
	ld   a, d                                        ; $5fa4: $7a
	call $ecce                                       ; $5fa5: $cd $ce $ec
	res  4, [hl]                                     ; $5fa8: $cb $a6
	add  a                                           ; $5faa: $87
	ld   d, h                                        ; $5fab: $54
	inc  sp                                          ; $5fac: $33
	ld   [hl+], a                                    ; $5fad: $22
	scf                                              ; $5fae: $37
	ld   h, a                                        ; $5faf: $67
	cp   l                                           ; $5fb0: $bd
	adc  $fd                                         ; $5fb1: $ce $fd
	xor  h                                           ; $5fb3: $ac
	and  [hl]                                        ; $5fb4: $a6
	ld   [hl], a                                     ; $5fb5: $77
	ld   h, h                                        ; $5fb6: $64
	ld   b, h                                        ; $5fb7: $44
	inc  sp                                          ; $5fb8: $33
	ld   [hl], $57                                   ; $5fb9: $36 $57
	adc  e                                           ; $5fbb: $8b
	db   $ed                                         ; $5fbc: $ed
	xor  $eb                                         ; $5fbd: $ee $eb
	sbc  d                                           ; $5fbf: $9a
	halt                                             ; $5fc0: $76
	ld   h, a                                        ; $5fc1: $67
	ld   d, h                                        ; $5fc2: $54
	ld   d, h                                        ; $5fc3: $54
	ld   [hl-], a                                    ; $5fc4: $32
	ld   a, b                                        ; $5fc5: $78
	ld   e, b                                        ; $5fc6: $58
	call c, $fcae                                    ; $5fc7: $dc $ae $fc
	sbc  e                                           ; $5fca: $9b
	and  l                                           ; $5fcb: $a5
	ld   a, b                                        ; $5fcc: $78
	ld   d, e                                        ; $5fcd: $53
	ld   b, h                                        ; $5fce: $44
	inc  hl                                          ; $5fcf: $23
	ld   b, a                                        ; $5fd0: $47
	halt                                             ; $5fd1: $76
	sbc  e                                           ; $5fd2: $9b
	db   $db                                         ; $5fd3: $db
	sbc  $ba                                         ; $5fd4: $de $ba
	cp   c                                           ; $5fd6: $b9
	ld   d, a                                        ; $5fd7: $57
	halt                                             ; $5fd8: $76
	ld   d, l                                        ; $5fd9: $55
	ld   d, e                                        ; $5fda: $53
	ld   b, e                                        ; $5fdb: $43
	ld   h, a                                        ; $5fdc: $67
	ld   l, c                                        ; $5fdd: $69
	cp   l                                           ; $5fde: $bd
	cp   h                                           ; $5fdf: $bc
	db   $eb                                         ; $5fe0: $eb
	xor  d                                           ; $5fe1: $aa
	and  [hl]                                        ; $5fe2: $a6
	ld   [hl], a                                     ; $5fe3: $77
	ld   [hl], l                                     ; $5fe4: $75
	ld   d, l                                        ; $5fe5: $55
	ld   b, l                                        ; $5fe6: $45
	inc  [hl]                                        ; $5fe7: $34
	ld   [hl], a                                     ; $5fe8: $77
	adc  b                                           ; $5fe9: $88
	call $dcbe                                       ; $5fea: $cd $be $dc
	sbc  b                                           ; $5fed: $98
	and  a                                           ; $5fee: $a7
	ld   [hl], a                                     ; $5fef: $77
	ld   [hl], h                                     ; $5ff0: $74
	dec  [hl]                                        ; $5ff1: $35
	ld   h, h                                        ; $5ff2: $64
	jr   z, jr_0b9_5f8a                              ; $5ff3: $28 $95

	ld   a, h                                        ; $5ff5: $7c
	ret                                              ; $5ff6: $c9


	rst  JumpTable                                         ; $5ff7: $df
	cp   c                                           ; $5ff8: $b9
	xor  e                                           ; $5ff9: $ab
	ld   h, a                                        ; $5ffa: $67
	ld   [hl], a                                     ; $5ffb: $77
	ld   b, h                                        ; $5ffc: $44
	ld   h, l                                        ; $5ffd: $65
	ld   d, l                                        ; $5ffe: $55
	ld   b, [hl]                                     ; $5fff: $46
	add  [hl]                                        ; $6000: $86
	ld   e, d                                        ; $6001: $5a
	ld   [$d8af], a                                  ; $6002: $ea $af $d8
	adc  h                                           ; $6005: $8c
	ld   [hl], l                                     ; $6006: $75
	ld   a, b                                        ; $6007: $78
	add  l                                           ; $6008: $85
	halt                                             ; $6009: $76
	ld   d, e                                        ; $600a: $53
	ld   h, $86                                      ; $600b: $26 $86
	ld   e, e                                        ; $600d: $5b
	db   $eb                                         ; $600e: $eb
	cp   [hl]                                        ; $600f: $be
	ld   hl, sp-$56                                  ; $6010: $f8 $aa
	add  [hl]                                        ; $6012: $86
	ld   l, b                                        ; $6013: $68
	ld   d, h                                        ; $6014: $54
	ld   h, a                                        ; $6015: $67
	ld   h, h                                        ; $6016: $64
	ld   d, a                                        ; $6017: $57
	ld   [hl], l                                     ; $6018: $75
	ld   e, b                                        ; $6019: $58
	cp   h                                           ; $601a: $bc
	cp   a                                           ; $601b: $bf
	ld   [$86aa], a                                  ; $601c: $ea $aa $86
	ld   h, a                                        ; $601f: $67
	halt                                             ; $6020: $76
	ld   h, l                                        ; $6021: $65
	ld   h, [hl]                                     ; $6022: $66
	ld   b, h                                        ; $6023: $44
	ld   a, c                                        ; $6024: $79
	ld   b, l                                        ; $6025: $45
	sbc  $bb                                         ; $6026: $de $bb
	db   $fd                                         ; $6028: $fd
	ld   a, b                                        ; $6029: $78
	sbc  c                                           ; $602a: $99
	ld   d, a                                        ; $602b: $57
	and  [hl]                                        ; $602c: $a6
	ld   b, l                                        ; $602d: $45
	ld   [hl], l                                     ; $602e: $75
	inc  hl                                          ; $602f: $23
	adc  b                                           ; $6030: $88
	ld   [hl], $dd                                   ; $6031: $36 $dd
	xor  e                                           ; $6033: $ab
	db   $fc                                         ; $6034: $fc
	sbc  e                                           ; $6035: $9b
	ret                                              ; $6036: $c9


	ld   b, a                                        ; $6037: $47
	halt                                             ; $6038: $76
	inc  [hl]                                        ; $6039: $34
	sub  [hl]                                        ; $603a: $96
	ld   b, d                                        ; $603b: $42
	ld   a, e                                        ; $603c: $7b
	ld   d, h                                        ; $603d: $54
	ld   a, [hl]                                     ; $603e: $7e
	jp   z, $96ee                                    ; $603f: $ca $ee $96

	sbc  d                                           ; $6042: $9a
	ld   [hl], a                                     ; $6043: $77
	sbc  c                                           ; $6044: $99
	ld   b, h                                        ; $6045: $44
	ld   h, [hl]                                     ; $6046: $66
	ld   d, e                                        ; $6047: $53
	ld   b, a                                        ; $6048: $47
	and  a                                           ; $6049: $a7
	ld   c, e                                        ; $604a: $4b
	cp   d                                           ; $604b: $ba
	sbc  a                                           ; $604c: $9f
	ld   sp, hl                                      ; $604d: $f9
	sbc  c                                           ; $604e: $99
	sub  [hl]                                        ; $604f: $96
	ld   e, b                                        ; $6050: $58
	ld   h, l                                        ; $6051: $65
	ld   [hl], $54                                   ; $6052: $36 $54
	dec  [hl]                                        ; $6054: $35
	xor  b                                           ; $6055: $a8
	ld   e, b                                        ; $6056: $58
	db   $ed                                         ; $6057: $ed
	sbc  h                                           ; $6058: $9c
	ei                                               ; $6059: $fb
	adc  c                                           ; $605a: $89
	cp   b                                           ; $605b: $b8
	ld   h, l                                        ; $605c: $65
	sub  [hl]                                        ; $605d: $96
	dec  [hl]                                        ; $605e: $35
	halt                                             ; $605f: $76
	inc  sp                                          ; $6060: $33
	adc  c                                           ; $6061: $89
	ld   d, h                                        ; $6062: $54
	sbc  [hl]                                        ; $6063: $9e
	xor  h                                           ; $6064: $ac
	db   $ed                                         ; $6065: $ed
	sub  a                                           ; $6066: $97
	sbc  c                                           ; $6067: $99
	add  [hl]                                        ; $6068: $86
	adc  b                                           ; $6069: $88
	ld   d, l                                        ; $606a: $55
	ld   d, [hl]                                     ; $606b: $56
	ld   d, e                                        ; $606c: $53
	ld   c, c                                        ; $606d: $49
	and  l                                           ; $606e: $a5
	ld   e, d                                        ; $606f: $5a
	ld   [$eabe], a                                  ; $6070: $ea $be $ea
	ld   l, c                                        ; $6073: $69
	and  a                                           ; $6074: $a7
	ld   d, a                                        ; $6075: $57
	ld   [hl], h                                     ; $6076: $74
	dec  [hl]                                        ; $6077: $35
	add  a                                           ; $6078: $87
	inc  h                                           ; $6079: $24
	swap h                                           ; $607a: $cb $34
	sbc  $9b                                         ; $607c: $de $9b
	cp   $97                                         ; $607e: $fe $97
	sbc  b                                           ; $6080: $98
	ld   h, h                                        ; $6081: $64
	adc  b                                           ; $6082: $88
	ld   h, h                                        ; $6083: $64
	ld   b, [hl]                                     ; $6084: $46
	ld   b, c                                        ; $6085: $41
	ld   e, h                                        ; $6086: $5c
	sub  e                                           ; $6087: $93
	ld   e, a                                        ; $6088: $5f
	db   $fc                                         ; $6089: $fc
	sbc  h                                           ; $608a: $9c
	and  [hl]                                        ; $608b: $a6
	ld   e, c                                        ; $608c: $59
	reti                                             ; $608d: $d9


	ld   [hl], a                                     ; $608e: $77
	ld   h, e                                        ; $608f: $63
	dec  h                                           ; $6090: $25
	add  [hl]                                        ; $6091: $86
	ld   [hl], $c7                                   ; $6092: $36 $c7
	ld   [hl], $ff                                   ; $6094: $36 $ff
	xor  e                                           ; $6096: $ab
	call $8975                                       ; $6097: $cd $75 $89
	halt                                             ; $609a: $76
	sbc  c                                           ; $609b: $99
	ld   d, e                                        ; $609c: $53
	ld   b, a                                        ; $609d: $47
	ld   b, e                                        ; $609e: $43
	ld   l, e                                        ; $609f: $6b
	add  e                                           ; $60a0: $83
	ld   l, l                                        ; $60a1: $6d
	ei                                               ; $60a2: $fb
	cp   [hl]                                        ; $60a3: $be
	ret                                              ; $60a4: $c9


	ld   h, a                                        ; $60a5: $67
	add  a                                           ; $60a6: $87
	ld   d, [hl]                                     ; $60a7: $56
	ld   [hl], a                                     ; $60a8: $77
	ld   b, h                                        ; $60a9: $44
	ld   d, h                                        ; $60aa: $54
	scf                                              ; $60ab: $37
	ret                                              ; $60ac: $c9


	ld   e, d                                        ; $60ad: $5a
	db   $fd                                         ; $60ae: $fd
	xor  c                                           ; $60af: $a9
	jp   z, $9b97                                    ; $60b0: $ca $97 $9b

	halt                                             ; $60b3: $76
	ld   d, l                                        ; $60b4: $55
	ld   b, e                                        ; $60b5: $43
	ld   h, a                                        ; $60b6: $67
	ld   d, h                                        ; $60b7: $54
	adc  c                                           ; $60b8: $89
	ld   d, [hl]                                     ; $60b9: $56
	cp   [hl]                                        ; $60ba: $be
	jp   z, $b9ab                                    ; $60bb: $ca $ab $b9

	ld   a, c                                        ; $60be: $79
	sub  a                                           ; $60bf: $97
	ld   h, [hl]                                     ; $60c0: $66
	ld   h, h                                        ; $60c1: $64
	dec  [hl]                                        ; $60c2: $35
	ld   h, h                                        ; $60c3: $64
	ld   l, d                                        ; $60c4: $6a
	add  l                                           ; $60c5: $85
	ld   a, l                                        ; $60c6: $7d
	db   $ed                                         ; $60c7: $ed
	sbc  d                                           ; $60c8: $9a
	cp   b                                           ; $60c9: $b8
	add  [hl]                                        ; $60ca: $86
	cp   c                                           ; $60cb: $b9
	halt                                             ; $60cc: $76
	ld   d, [hl]                                     ; $60cd: $56
	ld   b, l                                        ; $60ce: $45
	ld   h, l                                        ; $60cf: $65
	ld   b, [hl]                                     ; $60d0: $46
	and  [hl]                                        ; $60d1: $a6
	ld   c, d                                        ; $60d2: $4a
	db   $ed                                         ; $60d3: $ed
	call z, $87c9                                    ; $60d4: $cc $c9 $87
	sbc  d                                           ; $60d7: $9a
	sbc  b                                           ; $60d8: $98
	halt                                             ; $60d9: $76
	ld   b, e                                        ; $60da: $43
	ld   b, [hl]                                     ; $60db: $46
	ld   b, h                                        ; $60dc: $44
	adc  e                                           ; $60dd: $8b
	sub  e                                           ; $60de: $93
	adc  [hl]                                        ; $60df: $8e
	ei                                               ; $60e0: $fb
	sbc  [hl]                                        ; $60e1: $9e
	cp   c                                           ; $60e2: $b9
	ld   d, a                                        ; $60e3: $57
	xor  c                                           ; $60e4: $a9
	add  [hl]                                        ; $60e5: $86
	add  a                                           ; $60e6: $87
	ld   b, e                                        ; $60e7: $43
	inc  [hl]                                        ; $60e8: $34
	ld   e, b                                        ; $60e9: $58
	and  a                                           ; $60ea: $a7
	ld   l, d                                        ; $60eb: $6a
	db   $dd                                         ; $60ec: $dd
	call z, $a7ca                                    ; $60ed: $cc $ca $a7
	ld   a, b                                        ; $60f0: $78
	add  a                                           ; $60f1: $87
	ld   h, a                                        ; $60f2: $67
	ld   h, l                                        ; $60f3: $65
	inc  [hl]                                        ; $60f4: $34
	ld   b, h                                        ; $60f5: $44
	ld   a, e                                        ; $60f6: $7b
	sbc  b                                           ; $60f7: $98
	xor  d                                           ; $60f8: $aa
	call z, $aaba                                    ; $60f9: $cc $ba $aa
	adc  b                                           ; $60fc: $88
	ld   a, c                                        ; $60fd: $79
	halt                                             ; $60fe: $76
	ld   h, l                                        ; $60ff: $65
	ld   h, h                                        ; $6100: $64
	ld   b, e                                        ; $6101: $43
	ld   b, a                                        ; $6102: $47
	and  a                                           ; $6103: $a7
	ld   a, l                                        ; $6104: $7d
	call c, $aa98                                    ; $6105: $dc $98 $aa
	sbc  b                                           ; $6108: $98
	xor  d                                           ; $6109: $aa
	sub  a                                           ; $610a: $97
	ld   d, a                                        ; $610b: $57
	ld   [hl], l                                     ; $610c: $75
	ld   b, l                                        ; $610d: $45
	ld   d, h                                        ; $610e: $54
	ld   d, a                                        ; $610f: $57
	add  a                                           ; $6110: $87
	sbc  e                                           ; $6111: $9b
	db   $ec                                         ; $6112: $ec
	sbc  c                                           ; $6113: $99
	adc  d                                           ; $6114: $8a
	sbc  d                                           ; $6115: $9a
	sbc  c                                           ; $6116: $99
	sub  l                                           ; $6117: $95
	ld   h, [hl]                                     ; $6118: $66
	ld   [hl], h                                     ; $6119: $74
	inc  sp                                          ; $611a: $33
	ld   b, a                                        ; $611b: $47
	cp   d                                           ; $611c: $ba
	ld   d, a                                        ; $611d: $57
	xor  a                                           ; $611e: $af
	jp   z, $a799                                    ; $611f: $ca $99 $a7

	ld   a, c                                        ; $6122: $79
	xor  c                                           ; $6123: $a9
	ld   [hl], a                                     ; $6124: $77
	ld   [hl], a                                     ; $6125: $77
	ld   b, e                                        ; $6126: $43
	inc  [hl]                                        ; $6127: $34
	ld   a, c                                        ; $6128: $79
	cp   b                                           ; $6129: $b8
	adc  b                                           ; $612a: $88
	sbc  e                                           ; $612b: $9b
	cp   h                                           ; $612c: $bc
	xor  c                                           ; $612d: $a9
	sub  a                                           ; $612e: $97
	sbc  c                                           ; $612f: $99
	sbc  c                                           ; $6130: $99
	ld   [hl], a                                     ; $6131: $77
	ld   h, l                                        ; $6132: $65
	ld   b, e                                        ; $6133: $43
	dec  h                                           ; $6134: $25
	sbc  e                                           ; $6135: $9b
	add  [hl]                                        ; $6136: $86
	sbc  h                                           ; $6137: $9c
	ret                                              ; $6138: $c9


	sbc  c                                           ; $6139: $99
	xor  d                                           ; $613a: $aa
	ld   a, b                                        ; $613b: $78
	sbc  c                                           ; $613c: $99
	add  a                                           ; $613d: $87
	add  a                                           ; $613e: $87
	ld   [hl], h                                     ; $613f: $74
	ld   [hl-], a                                    ; $6140: $32
	ld   e, c                                        ; $6141: $59
	xor  c                                           ; $6142: $a9
	ld   a, d                                        ; $6143: $7a
	sbc  d                                           ; $6144: $9a
	sbc  d                                           ; $6145: $9a
	xor  d                                           ; $6146: $aa
	sbc  b                                           ; $6147: $98
	adc  c                                           ; $6148: $89
	sbc  c                                           ; $6149: $99
	add  a                                           ; $614a: $87
	ld   [hl], a                                     ; $614b: $77
	ld   d, h                                        ; $614c: $54
	inc  hl                                          ; $614d: $23
	ld   l, c                                        ; $614e: $69
	cp   c                                           ; $614f: $b9
	adc  b                                           ; $6150: $88
	sbc  d                                           ; $6151: $9a
	sbc  d                                           ; $6152: $9a
	xor  e                                           ; $6153: $ab
	sbc  c                                           ; $6154: $99
	adc  c                                           ; $6155: $89
	xor  b                                           ; $6156: $a8
	adc  b                                           ; $6157: $88
	add  a                                           ; $6158: $87
	ld   b, d                                        ; $6159: $42
	inc  d                                           ; $615a: $14
	sbc  l                                           ; $615b: $9d
	and  [hl]                                        ; $615c: $a6
	adc  d                                           ; $615d: $8a
	jp   z, $aa99                                    ; $615e: $ca $99 $aa

	ld   [hl], a                                     ; $6161: $77
	adc  c                                           ; $6162: $89
	xor  c                                           ; $6163: $a9
	sbc  b                                           ; $6164: $98
	add  [hl]                                        ; $6165: $86
	ld   b, d                                        ; $6166: $42
	ld   h, $9b                                      ; $6167: $26 $9b
	add  a                                           ; $6169: $87
	xor  e                                           ; $616a: $ab
	cp   c                                           ; $616b: $b9
	adc  c                                           ; $616c: $89
	xor  d                                           ; $616d: $aa
	ld   a, b                                        ; $616e: $78
	sbc  d                                           ; $616f: $9a
	sbc  b                                           ; $6170: $98
	sbc  b                                           ; $6171: $98
	halt                                             ; $6172: $76
	ld   b, d                                        ; $6173: $42
	ld   h, $ab                                      ; $6174: $26 $ab
	add  [hl]                                        ; $6176: $86
	adc  d                                           ; $6177: $8a
	ret                                              ; $6178: $c9


	sbc  c                                           ; $6179: $99
	cp   d                                           ; $617a: $ba
	add  a                                           ; $617b: $87
	adc  c                                           ; $617c: $89
	xor  d                                           ; $617d: $aa
	sbc  b                                           ; $617e: $98
	halt                                             ; $617f: $76
	ld   b, c                                        ; $6180: $41
	ld   h, $ac                                      ; $6181: $26 $ac
	sub  [hl]                                        ; $6183: $96
	ld   a, c                                        ; $6184: $79
	cp   c                                           ; $6185: $b9
	xor  b                                           ; $6186: $a8
	xor  d                                           ; $6187: $aa
	adc  b                                           ; $6188: $88
	ld   a, d                                        ; $6189: $7a
	xor  d                                           ; $618a: $aa
	sbc  b                                           ; $618b: $98
	add  l                                           ; $618c: $85
	ld   b, c                                        ; $618d: $41
	dec  h                                           ; $618e: $25
	sbc  e                                           ; $618f: $9b
	xor  b                                           ; $6190: $a8
	adc  c                                           ; $6191: $89
	cp   c                                           ; $6192: $b9
	sbc  c                                           ; $6193: $99
	xor  d                                           ; $6194: $aa
	sbc  b                                           ; $6195: $98
	ld   a, b                                        ; $6196: $78
	xor  d                                           ; $6197: $aa
	sbc  b                                           ; $6198: $98
	add  [hl]                                        ; $6199: $86
	ld   d, d                                        ; $619a: $52
	inc  d                                           ; $619b: $14
	adc  e                                           ; $619c: $8b
	sub  a                                           ; $619d: $97
	adc  c                                           ; $619e: $89
	cp   d                                           ; $619f: $ba
	adc  b                                           ; $61a0: $88
	sbc  d                                           ; $61a1: $9a
	xor  c                                           ; $61a2: $a9
	ld   a, b                                        ; $61a3: $78
	xor  d                                           ; $61a4: $aa
	xor  b                                           ; $61a5: $a8
	add  a                                           ; $61a6: $87
	ld   h, e                                        ; $61a7: $63
	ld   [de], a                                     ; $61a8: $12
	ld   l, c                                        ; $61a9: $69
	cp   c                                           ; $61aa: $b9
	ld   a, b                                        ; $61ab: $78
	xor  e                                           ; $61ac: $ab
	sbc  b                                           ; $61ad: $98
	adc  d                                           ; $61ae: $8a
	xor  b                                           ; $61af: $a8
	ld   [hl], a                                     ; $61b0: $77
	sbc  d                                           ; $61b1: $9a
	xor  c                                           ; $61b2: $a9
	sbc  b                                           ; $61b3: $98
	halt                                             ; $61b4: $76
	ld   sp, $9b26                                   ; $61b5: $31 $26 $9b
	adc  b                                           ; $61b8: $88
	sbc  d                                           ; $61b9: $9a
	xor  c                                           ; $61ba: $a9
	sbc  c                                           ; $61bb: $99
	xor  c                                           ; $61bc: $a9
	add  a                                           ; $61bd: $87
	adc  c                                           ; $61be: $89
	xor  d                                           ; $61bf: $aa
	sbc  c                                           ; $61c0: $99
	add  a                                           ; $61c1: $87
	ld   d, d                                        ; $61c2: $52
	inc  de                                          ; $61c3: $13
	ld   a, c                                        ; $61c4: $79
	sbc  b                                           ; $61c5: $98
	adc  b                                           ; $61c6: $88
	xor  d                                           ; $61c7: $aa
	sbc  c                                           ; $61c8: $99
	adc  d                                           ; $61c9: $8a
	xor  c                                           ; $61ca: $a9
	adc  b                                           ; $61cb: $88
	xor  c                                           ; $61cc: $a9
	cp   d                                           ; $61cd: $ba
	xor  b                                           ; $61ce: $a8
	ld   [hl], l                                     ; $61cf: $75
	ld   hl, $9a26                                   ; $61d0: $21 $26 $9a
	sbc  b                                           ; $61d3: $98
	sbc  c                                           ; $61d4: $99
	xor  c                                           ; $61d5: $a9
	sbc  c                                           ; $61d6: $99
	xor  d                                           ; $61d7: $aa
	xor  b                                           ; $61d8: $a8
	adc  c                                           ; $61d9: $89
	sbc  c                                           ; $61da: $99
	xor  d                                           ; $61db: $aa
	xor  b                                           ; $61dc: $a8
	ld   h, e                                        ; $61dd: $63
	ld   de, $aa48                                   ; $61de: $11 $48 $aa
	adc  c                                           ; $61e1: $89
	sbc  e                                           ; $61e2: $9b
	xor  b                                           ; $61e3: $a8
	adc  b                                           ; $61e4: $88
	sbc  d                                           ; $61e5: $9a
	xor  b                                           ; $61e6: $a8
	ld   a, c                                        ; $61e7: $79
	xor  e                                           ; $61e8: $ab
	cp   e                                           ; $61e9: $bb
	sbc  b                                           ; $61ea: $98
	ld   h, e                                        ; $61eb: $63
	ld   [de], a                                     ; $61ec: $12
	ld   e, b                                        ; $61ed: $58
	xor  c                                           ; $61ee: $a9
	ld   a, b                                        ; $61ef: $78
	sbc  d                                           ; $61f0: $9a
	sbc  b                                           ; $61f1: $98
	ld   a, b                                        ; $61f2: $78
	sbc  c                                           ; $61f3: $99
	add  a                                           ; $61f4: $87
	adc  c                                           ; $61f5: $89
	xor  d                                           ; $61f6: $aa
	cp   d                                           ; $61f7: $ba
	sbc  b                                           ; $61f8: $98
	ld   d, e                                        ; $61f9: $53
	ld   [de], a                                     ; $61fa: $12
	ld   e, b                                        ; $61fb: $58
	xor  b                                           ; $61fc: $a8
	adc  c                                           ; $61fd: $89
	xor  d                                           ; $61fe: $aa
	xor  b                                           ; $61ff: $a8
	ld   a, b                                        ; $6200: $78
	sbc  c                                           ; $6201: $99
	sbc  b                                           ; $6202: $98
	ld   a, b                                        ; $6203: $78
	xor  d                                           ; $6204: $aa
	xor  d                                           ; $6205: $aa
	sbc  b                                           ; $6206: $98
	ld   h, h                                        ; $6207: $64
	ld   de, $a947                                   ; $6208: $11 $47 $a9
	sbc  c                                           ; $620b: $99
	sbc  e                                           ; $620c: $9b
	xor  c                                           ; $620d: $a9
	ld   [hl], a                                     ; $620e: $77
	adc  d                                           ; $620f: $8a
	xor  c                                           ; $6210: $a9
	adc  b                                           ; $6211: $88
	sbc  e                                           ; $6212: $9b
	xor  d                                           ; $6213: $aa
	sbc  b                                           ; $6214: $98
	ld   [hl], l                                     ; $6215: $75
	ld   [hl-], a                                    ; $6216: $32
	dec  [hl]                                        ; $6217: $35
	adc  c                                           ; $6218: $89
	sbc  b                                           ; $6219: $98
	adc  b                                           ; $621a: $88
	sbc  c                                           ; $621b: $99
	add  a                                           ; $621c: $87
	adc  c                                           ; $621d: $89
	sbc  c                                           ; $621e: $99
	sbc  c                                           ; $621f: $99
	sbc  c                                           ; $6220: $99
	cp   e                                           ; $6221: $bb
	xor  c                                           ; $6222: $a9
	add  a                                           ; $6223: $87
	ld   d, e                                        ; $6224: $53
	inc  h                                           ; $6225: $24
	ld   l, b                                        ; $6226: $68
	sbc  c                                           ; $6227: $99
	adc  b                                           ; $6228: $88
	sbc  d                                           ; $6229: $9a
	adc  b                                           ; $622a: $88
	ld   a, b                                        ; $622b: $78
	sbc  c                                           ; $622c: $99
	adc  b                                           ; $622d: $88
	adc  c                                           ; $622e: $89
	xor  d                                           ; $622f: $aa
	xor  d                                           ; $6230: $aa
	sbc  b                                           ; $6231: $98
	ld   [hl], l                                     ; $6232: $75
	ld   b, e                                        ; $6233: $43
	dec  [hl]                                        ; $6234: $35
	ld   a, b                                        ; $6235: $78
	adc  b                                           ; $6236: $88
	adc  c                                           ; $6237: $89
	sbc  c                                           ; $6238: $99
	adc  b                                           ; $6239: $88
	adc  b                                           ; $623a: $88
	adc  b                                           ; $623b: $88
	sbc  b                                           ; $623c: $98
	sbc  c                                           ; $623d: $99
	xor  d                                           ; $623e: $aa
	cp   d                                           ; $623f: $ba
	sbc  b                                           ; $6240: $98
	ld   [hl], l                                     ; $6241: $75
	ld   b, h                                        ; $6242: $44
	ld   b, [hl]                                     ; $6243: $46
	ld   [hl], a                                     ; $6244: $77
	ld   [hl], a                                     ; $6245: $77
	ld   a, b                                        ; $6246: $78
	adc  b                                           ; $6247: $88
	adc  b                                           ; $6248: $88
	sbc  b                                           ; $6249: $98
	sbc  c                                           ; $624a: $99
	sbc  c                                           ; $624b: $99
	sbc  d                                           ; $624c: $9a
	cp   e                                           ; $624d: $bb
	cp   d                                           ; $624e: $ba
	sbc  c                                           ; $624f: $99
	halt                                             ; $6250: $76
	ld   d, h                                        ; $6251: $54
	ld   d, [hl]                                     ; $6252: $56
	ld   a, b                                        ; $6253: $78
	ld   [hl], a                                     ; $6254: $77
	ld   h, a                                        ; $6255: $67
	adc  c                                           ; $6256: $89
	adc  b                                           ; $6257: $88
	adc  c                                           ; $6258: $89
	sbc  c                                           ; $6259: $99
	sbc  b                                           ; $625a: $98
	sbc  c                                           ; $625b: $99
	cp   e                                           ; $625c: $bb
	xor  c                                           ; $625d: $a9
	sbc  c                                           ; $625e: $99
	add  a                                           ; $625f: $87
	ld   h, [hl]                                     ; $6260: $66
	ld   d, l                                        ; $6261: $55
	ld   h, a                                        ; $6262: $67
	ld   [hl], a                                     ; $6263: $77
	halt                                             ; $6264: $76
	ld   a, c                                        ; $6265: $79
	sbc  b                                           ; $6266: $98
	add  a                                           ; $6267: $87
	adc  b                                           ; $6268: $88
	sbc  c                                           ; $6269: $99
	adc  c                                           ; $626a: $89
	xor  d                                           ; $626b: $aa
	xor  c                                           ; $626c: $a9
	sbc  c                                           ; $626d: $99
	adc  c                                           ; $626e: $89
	add  a                                           ; $626f: $87
	ld   h, [hl]                                     ; $6270: $66
	ld   h, [hl]                                     ; $6271: $66
	ld   [hl], a                                     ; $6272: $77
	ld   [hl], a                                     ; $6273: $77
	ld   [hl], a                                     ; $6274: $77
	adc  b                                           ; $6275: $88
	adc  b                                           ; $6276: $88
	adc  c                                           ; $6277: $89
	sbc  b                                           ; $6278: $98
	adc  b                                           ; $6279: $88
	sbc  c                                           ; $627a: $99
	xor  c                                           ; $627b: $a9
	xor  d                                           ; $627c: $aa
	xor  c                                           ; $627d: $a9
	sbc  c                                           ; $627e: $99
	add  a                                           ; $627f: $87
	halt                                             ; $6280: $76
	ld   h, [hl]                                     ; $6281: $66
	ld   [hl], a                                     ; $6282: $77
	ld   [hl], a                                     ; $6283: $77
	ld   h, a                                        ; $6284: $67
	ld   a, b                                        ; $6285: $78
	adc  b                                           ; $6286: $88
	ld   a, b                                        ; $6287: $78
	sbc  b                                           ; $6288: $98
	adc  b                                           ; $6289: $88
	adc  c                                           ; $628a: $89
	xor  d                                           ; $628b: $aa
	xor  d                                           ; $628c: $aa
	sbc  c                                           ; $628d: $99
	adc  c                                           ; $628e: $89
	adc  b                                           ; $628f: $88
	ld   [hl], a                                     ; $6290: $77
	ld   h, a                                        ; $6291: $67
	ld   [hl], a                                     ; $6292: $77
	ld   [hl], a                                     ; $6293: $77
	ld   h, [hl]                                     ; $6294: $66
	ld   [hl], a                                     ; $6295: $77
	adc  b                                           ; $6296: $88
	adc  b                                           ; $6297: $88
	adc  c                                           ; $6298: $89
	adc  b                                           ; $6299: $88
	sbc  c                                           ; $629a: $99
	xor  d                                           ; $629b: $aa
	xor  c                                           ; $629c: $a9
	sbc  b                                           ; $629d: $98
	adc  b                                           ; $629e: $88
	sbc  c                                           ; $629f: $99
	add  a                                           ; $62a0: $87
	ld   [hl], a                                     ; $62a1: $77
	ld   [hl], a                                     ; $62a2: $77
	ld   [hl], a                                     ; $62a3: $77
	ld   [hl], a                                     ; $62a4: $77
	ld   h, a                                        ; $62a5: $67
	ld   a, b                                        ; $62a6: $78
	adc  b                                           ; $62a7: $88
	adc  c                                           ; $62a8: $89
	adc  c                                           ; $62a9: $89
	sbc  b                                           ; $62aa: $98
	adc  c                                           ; $62ab: $89
	sbc  c                                           ; $62ac: $99
	xor  c                                           ; $62ad: $a9
	sbc  c                                           ; $62ae: $99
	adc  c                                           ; $62af: $89
	sbc  b                                           ; $62b0: $98
	add  a                                           ; $62b1: $87
	ld   [hl], a                                     ; $62b2: $77
	ld   [hl], a                                     ; $62b3: $77
	ld   [hl], a                                     ; $62b4: $77
	ld   h, [hl]                                     ; $62b5: $66
	ld   [hl], a                                     ; $62b6: $77
	adc  b                                           ; $62b7: $88
	ld   a, b                                        ; $62b8: $78
	adc  b                                           ; $62b9: $88
	adc  b                                           ; $62ba: $88
	sbc  b                                           ; $62bb: $98
	sbc  c                                           ; $62bc: $99
	sbc  c                                           ; $62bd: $99
	sbc  c                                           ; $62be: $99
	sbc  c                                           ; $62bf: $99
	adc  b                                           ; $62c0: $88
	adc  b                                           ; $62c1: $88
	add  a                                           ; $62c2: $87
	ld   [hl], a                                     ; $62c3: $77
	ld   [hl], a                                     ; $62c4: $77
	ld   [hl], a                                     ; $62c5: $77
	halt                                             ; $62c6: $76
	ld   [hl], a                                     ; $62c7: $77
	adc  b                                           ; $62c8: $88
	adc  b                                           ; $62c9: $88
	adc  b                                           ; $62ca: $88
	adc  b                                           ; $62cb: $88
	adc  b                                           ; $62cc: $88
	sbc  c                                           ; $62cd: $99
	sbc  c                                           ; $62ce: $99
	sbc  b                                           ; $62cf: $98
	adc  b                                           ; $62d0: $88
	sbc  b                                           ; $62d1: $98
	adc  b                                           ; $62d2: $88
	add  a                                           ; $62d3: $87
	ld   [hl], a                                     ; $62d4: $77
	ld   [hl], a                                     ; $62d5: $77
	ld   [hl], a                                     ; $62d6: $77
	ld   [hl], a                                     ; $62d7: $77
	ld   [hl], a                                     ; $62d8: $77
	ld   a, b                                        ; $62d9: $78
	adc  b                                           ; $62da: $88
	adc  c                                           ; $62db: $89
	adc  c                                           ; $62dc: $89
	adc  b                                           ; $62dd: $88
	sbc  c                                           ; $62de: $99
	sbc  c                                           ; $62df: $99
	adc  b                                           ; $62e0: $88
	adc  b                                           ; $62e1: $88
	sbc  c                                           ; $62e2: $99
	adc  b                                           ; $62e3: $88
	adc  b                                           ; $62e4: $88
	ld   [hl], a                                     ; $62e5: $77
	ld   [hl], a                                     ; $62e6: $77
	ld   [hl], a                                     ; $62e7: $77
	ld   [hl], a                                     ; $62e8: $77
	ld   [hl], a                                     ; $62e9: $77
	ld   a, b                                        ; $62ea: $78
	adc  b                                           ; $62eb: $88
	adc  c                                           ; $62ec: $89
	adc  c                                           ; $62ed: $89
	adc  b                                           ; $62ee: $88
	adc  c                                           ; $62ef: $89
	sbc  c                                           ; $62f0: $99
	sbc  b                                           ; $62f1: $98
	sbc  b                                           ; $62f2: $98
	sbc  c                                           ; $62f3: $99
	adc  b                                           ; $62f4: $88
	add  a                                           ; $62f5: $87
	ld   [hl], a                                     ; $62f6: $77
	ld   [hl], a                                     ; $62f7: $77
	ld   [hl], a                                     ; $62f8: $77
	ld   [hl], a                                     ; $62f9: $77
	ld   [hl], a                                     ; $62fa: $77
	ld   [hl], a                                     ; $62fb: $77
	add  a                                           ; $62fc: $87
	adc  b                                           ; $62fd: $88
	sbc  b                                           ; $62fe: $98
	adc  b                                           ; $62ff: $88
	adc  c                                           ; $6300: $89
	sbc  c                                           ; $6301: $99
	adc  c                                           ; $6302: $89
	sbc  b                                           ; $6303: $98
	adc  b                                           ; $6304: $88
	adc  b                                           ; $6305: $88
	adc  b                                           ; $6306: $88
	ld   [hl], a                                     ; $6307: $77
	ld   [hl], a                                     ; $6308: $77
	ld   [hl], a                                     ; $6309: $77
	ld   [hl], a                                     ; $630a: $77
	ld   [hl], a                                     ; $630b: $77
	ld   [hl], a                                     ; $630c: $77
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	sbc  b                                           ; $630f: $98
	sbc  c                                           ; $6310: $99
	adc  b                                           ; $6311: $88
	sbc  c                                           ; $6312: $99
	sbc  c                                           ; $6313: $99
	sbc  b                                           ; $6314: $98
	sbc  b                                           ; $6315: $98
	adc  b                                           ; $6316: $88
	add  a                                           ; $6317: $87
	ld   [hl], a                                     ; $6318: $77
	halt                                             ; $6319: $76
	ld   h, a                                        ; $631a: $67
	ld   [hl], a                                     ; $631b: $77
	ld   [hl], a                                     ; $631c: $77
	ld   [hl], a                                     ; $631d: $77
	adc  b                                           ; $631e: $88
	adc  b                                           ; $631f: $88
	sbc  b                                           ; $6320: $98
	sbc  c                                           ; $6321: $99
	adc  b                                           ; $6322: $88
	sbc  c                                           ; $6323: $99
	sbc  c                                           ; $6324: $99
	adc  b                                           ; $6325: $88
	adc  c                                           ; $6326: $89
	sbc  b                                           ; $6327: $98
	ld   [hl], a                                     ; $6328: $77
	ld   [hl], a                                     ; $6329: $77
	halt                                             ; $632a: $76
	ld   h, a                                        ; $632b: $67
	ld   [hl], a                                     ; $632c: $77
	halt                                             ; $632d: $76
	ld   [hl], a                                     ; $632e: $77
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	sbc  b                                           ; $6331: $98
	adc  c                                           ; $6332: $89
	sbc  c                                           ; $6333: $99
	sbc  d                                           ; $6334: $9a
	xor  c                                           ; $6335: $a9
	sbc  c                                           ; $6336: $99
	sbc  b                                           ; $6337: $98
	sbc  b                                           ; $6338: $98
	ld   [hl], a                                     ; $6339: $77
	halt                                             ; $633a: $76
	ld   h, l                                        ; $633b: $65
	ld   h, a                                        ; $633c: $67
	adc  b                                           ; $633d: $88
	ld   [hl], a                                     ; $633e: $77
	ld   a, b                                        ; $633f: $78
	adc  c                                           ; $6340: $89
	add  a                                           ; $6341: $87
	adc  c                                           ; $6342: $89
	xor  d                                           ; $6343: $aa
	sbc  c                                           ; $6344: $99
	xor  d                                           ; $6345: $aa
	xor  c                                           ; $6346: $a9
	sbc  c                                           ; $6347: $99
	sbc  c                                           ; $6348: $99
	sub  a                                           ; $6349: $97
	ld   [hl], a                                     ; $634a: $77
	ld   h, [hl]                                     ; $634b: $66
	ld   d, h                                        ; $634c: $54
	ld   d, [hl]                                     ; $634d: $56
	ld   a, b                                        ; $634e: $78
	ld   [hl], a                                     ; $634f: $77
	ld   a, b                                        ; $6350: $78
	sbc  b                                           ; $6351: $98
	add  a                                           ; $6352: $87
	adc  c                                           ; $6353: $89
	sbc  c                                           ; $6354: $99
	adc  c                                           ; $6355: $89
	xor  d                                           ; $6356: $aa
	xor  d                                           ; $6357: $aa
	xor  c                                           ; $6358: $a9
	sbc  c                                           ; $6359: $99
	add  a                                           ; $635a: $87
	ld   h, [hl]                                     ; $635b: $66
	ld   d, h                                        ; $635c: $54
	inc  [hl]                                        ; $635d: $34
	ld   d, a                                        ; $635e: $57
	sbc  c                                           ; $635f: $99
	adc  b                                           ; $6360: $88
	sbc  c                                           ; $6361: $99
	sbc  b                                           ; $6362: $98
	ld   [hl], a                                     ; $6363: $77
	adc  c                                           ; $6364: $89
	sbc  c                                           ; $6365: $99
	sbc  c                                           ; $6366: $99
	xor  e                                           ; $6367: $ab
	cp   d                                           ; $6368: $ba
	xor  d                                           ; $6369: $aa
	xor  b                                           ; $636a: $a8
	ld   [hl], l                                     ; $636b: $75
	ld   d, h                                        ; $636c: $54
	ld   [hl-], a                                    ; $636d: $32
	dec  [hl]                                        ; $636e: $35
	adc  d                                           ; $636f: $8a
	sbc  c                                           ; $6370: $99
	adc  c                                           ; $6371: $89
	sbc  b                                           ; $6372: $98
	halt                                             ; $6373: $76
	ld   h, a                                        ; $6374: $67
	adc  d                                           ; $6375: $8a
	sbc  d                                           ; $6376: $9a
	xor  e                                           ; $6377: $ab
	cp   h                                           ; $6378: $bc
	cp   e                                           ; $6379: $bb
	xor  d                                           ; $637a: $aa
	sub  [hl]                                        ; $637b: $96
	ld   d, h                                        ; $637c: $54
	inc  sp                                          ; $637d: $33
	inc  hl                                          ; $637e: $23
	ld   l, c                                        ; $637f: $69
	cp   e                                           ; $6380: $bb
	xor  c                                           ; $6381: $a9
	sbc  c                                           ; $6382: $99
	sub  a                                           ; $6383: $97
	ld   h, [hl]                                     ; $6384: $66
	ld   a, b                                        ; $6385: $78
	sbc  c                                           ; $6386: $99
	sbc  d                                           ; $6387: $9a
	cp   l                                           ; $6388: $bd
	res  7, d                                        ; $6389: $cb $ba
	sbc  b                                           ; $638b: $98
	ld   d, h                                        ; $638c: $54
	inc  sp                                          ; $638d: $33
	ld   [hl+], a                                    ; $638e: $22
	scf                                              ; $638f: $37
	xor  h                                           ; $6390: $ac
	cp   d                                           ; $6391: $ba
	adc  c                                           ; $6392: $89
	adc  b                                           ; $6393: $88
	ld   h, [hl]                                     ; $6394: $66
	ld   h, a                                        ; $6395: $67
	sbc  c                                           ; $6396: $99
	sbc  d                                           ; $6397: $9a
	xor  h                                           ; $6398: $ac
	call $a9cb                                       ; $6399: $cd $cb $a9
	ld   [hl], h                                     ; $639c: $74
	ld   b, e                                        ; $639d: $43
	ld   [hl-], a                                    ; $639e: $32
	inc  h                                           ; $639f: $24
	sbc  e                                           ; $63a0: $9b
	jp   z, $a899                                    ; $63a1: $ca $99 $a8

	halt                                             ; $63a4: $76
	ld   h, a                                        ; $63a5: $67
	adc  b                                           ; $63a6: $88
	adc  b                                           ; $63a7: $88
	xor  e                                           ; $63a8: $ab
	call $cadc                                       ; $63a9: $cd $dc $ca
	sub  [hl]                                        ; $63ac: $96
	ld   b, h                                        ; $63ad: $44
	ld   [hl-], a                                    ; $63ae: $32
	ld   [hl+], a                                    ; $63af: $22
	ld   c, c                                        ; $63b0: $49
	cp   e                                           ; $63b1: $bb
	cp   c                                           ; $63b2: $b9
	sbc  c                                           ; $63b3: $99
	add  a                                           ; $63b4: $87
	ld   h, [hl]                                     ; $63b5: $66
	ld   a, b                                        ; $63b6: $78
	ld   a, b                                        ; $63b7: $78
	sbc  c                                           ; $63b8: $99
	call z, $dbdd                                    ; $63b9: $cc $dd $db
	xor  b                                           ; $63bc: $a8
	ld   d, h                                        ; $63bd: $54
	ld   b, e                                        ; $63be: $43
	ld   [hl-], a                                    ; $63bf: $32
	dec  h                                           ; $63c0: $25
	adc  e                                           ; $63c1: $8b
	cp   e                                           ; $63c2: $bb
	xor  d                                           ; $63c3: $aa
	sbc  b                                           ; $63c4: $98
	ld   h, [hl]                                     ; $63c5: $66
	ld   h, a                                        ; $63c6: $67
	ld   [hl], a                                     ; $63c7: $77
	adc  c                                           ; $63c8: $89
	xor  e                                           ; $63c9: $ab
	call $cadc                                       ; $63ca: $cd $dc $ca
	add  [hl]                                        ; $63cd: $86
	ld   b, h                                        ; $63ce: $44
	ld   b, e                                        ; $63cf: $43
	ld   hl, $bb49                                   ; $63d0: $21 $49 $bb
	cp   d                                           ; $63d3: $ba
	sbc  c                                           ; $63d4: $99
	ld   [hl], a                                     ; $63d5: $77
	ld   h, [hl]                                     ; $63d6: $66
	ld   [hl], a                                     ; $63d7: $77
	ld   a, b                                        ; $63d8: $78
	adc  c                                           ; $63d9: $89
	cp   h                                           ; $63da: $bc
	db   $dd                                         ; $63db: $dd
	res  5, b                                        ; $63dc: $cb $a8
	ld   h, h                                        ; $63de: $64
	inc  sp                                          ; $63df: $33
	ld   [hl-], a                                    ; $63e0: $32
	inc  d                                           ; $63e1: $14
	sbc  h                                           ; $63e2: $9c
	res  3, c                                        ; $63e3: $cb $99
	sub  a                                           ; $63e5: $97
	ld   h, [hl]                                     ; $63e6: $66
	ld   [hl], a                                     ; $63e7: $77
	ld   [hl], a                                     ; $63e8: $77
	ld   a, c                                        ; $63e9: $79
	sbc  e                                           ; $63ea: $9b
	call $c9ec                                       ; $63eb: $cd $ec $c9
	add  [hl]                                        ; $63ee: $86
	ld   b, h                                        ; $63ef: $44
	inc  sp                                          ; $63f0: $33
	ld   [hl+], a                                    ; $63f1: $22
	ld   c, c                                        ; $63f2: $49
	res  7, c                                        ; $63f3: $cb $b9
	sbc  b                                           ; $63f5: $98
	halt                                             ; $63f6: $76
	ld   h, a                                        ; $63f7: $67
	ld   [hl], a                                     ; $63f8: $77
	ld   [hl], a                                     ; $63f9: $77
	sbc  c                                           ; $63fa: $99
	xor  e                                           ; $63fb: $ab
	sbc  $cc                                         ; $63fc: $de $cc
	sbc  b                                           ; $63fe: $98
	ld   d, h                                        ; $63ff: $54
	ld   b, h                                        ; $6400: $44
	ld   b, d                                        ; $6401: $42
	inc  d                                           ; $6402: $14
	sbc  h                                           ; $6403: $9c
	cp   d                                           ; $6404: $ba
	xor  c                                           ; $6405: $a9
	sub  a                                           ; $6406: $97
	ld   h, [hl]                                     ; $6407: $66
	ld   a, b                                        ; $6408: $78
	ld   [hl], a                                     ; $6409: $77
	ld   a, c                                        ; $640a: $79
	xor  d                                           ; $640b: $aa
	call $b9ec                                       ; $640c: $cd $ec $b9
	add  [hl]                                        ; $640f: $86
	ld   b, h                                        ; $6410: $44
	ld   b, e                                        ; $6411: $43
	ld   hl, $cc49                                   ; $6412: $21 $49 $cc
	xor  b                                           ; $6415: $a8
	adc  c                                           ; $6416: $89
	halt                                             ; $6417: $76
	ld   h, [hl]                                     ; $6418: $66
	ld   [hl], a                                     ; $6419: $77
	ld   a, b                                        ; $641a: $78
	sbc  c                                           ; $641b: $99
	cp   h                                           ; $641c: $bc
	xor  $db                                         ; $641d: $ee $db
	sub  a                                           ; $641f: $97
	ld   d, h                                        ; $6420: $54
	ld   b, h                                        ; $6421: $44
	ld   sp, $ac15                                   ; $6422: $31 $15 $ac
	cp   c                                           ; $6425: $b9
	sbc  d                                           ; $6426: $9a
	sub  a                                           ; $6427: $97
	ld   h, [hl]                                     ; $6428: $66
	ld   [hl], a                                     ; $6429: $77
	ld   h, a                                        ; $642a: $67
	adc  d                                           ; $642b: $8a
	xor  e                                           ; $642c: $ab
	adc  $dc                                         ; $642d: $ce $dc
	cp   c                                           ; $642f: $b9
	ld   [hl], l                                     ; $6430: $75
	ld   b, h                                        ; $6431: $44
	ld   b, e                                        ; $6432: $43
	inc  de                                          ; $6433: $13
	ld   l, e                                        ; $6434: $6b
	res  5, d                                        ; $6435: $cb $aa
	sub  a                                           ; $6437: $97
	ld   h, [hl]                                     ; $6438: $66
	ld   a, b                                        ; $6439: $78
	ld   [hl], a                                     ; $643a: $77
	ld   a, b                                        ; $643b: $78
	xor  d                                           ; $643c: $aa
	cp   h                                           ; $643d: $bc
	db   $ed                                         ; $643e: $ed
	cp   d                                           ; $643f: $ba
	add  [hl]                                        ; $6440: $86
	ld   b, h                                        ; $6441: $44
	ld   b, e                                        ; $6442: $43
	ld   de, $cb49                                   ; $6443: $11 $49 $cb
	sbc  d                                           ; $6446: $9a
	sbc  c                                           ; $6447: $99
	ld   h, [hl]                                     ; $6448: $66
	ld   a, b                                        ; $6449: $78
	add  [hl]                                        ; $644a: $86
	ld   [hl], a                                     ; $644b: $77
	sbc  d                                           ; $644c: $9a
	xor  h                                           ; $644d: $ac
	xor  $db                                         ; $644e: $ee $db
	sub  a                                           ; $6450: $97
	ld   d, e                                        ; $6451: $53
	inc  sp                                          ; $6452: $33
	ld   sp, $bc26                                   ; $6453: $31 $26 $bc
	xor  d                                           ; $6456: $aa
	xor  d                                           ; $6457: $aa
	sub  [hl]                                        ; $6458: $96
	ld   [hl], a                                     ; $6459: $77
	halt                                             ; $645a: $76
	ld   h, a                                        ; $645b: $67
	sbc  c                                           ; $645c: $99
	xor  e                                           ; $645d: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $645e: $cf
	db   $ec                                         ; $645f: $ec
	xor  c                                           ; $6460: $a9
	ld   h, h                                        ; $6461: $64
	inc  sp                                          ; $6462: $33
	ld   sp, $9b15                                   ; $6463: $31 $15 $9b
	xor  c                                           ; $6466: $a9
	xor  e                                           ; $6467: $ab
	and  a                                           ; $6468: $a7
	ld   h, a                                        ; $6469: $67
	ld   [hl], a                                     ; $646a: $77
	ld   h, a                                        ; $646b: $67
	adc  c                                           ; $646c: $89
	sbc  c                                           ; $646d: $99
	adc  $ec                                         ; $646e: $ce $ec
	cp   c                                           ; $6470: $b9
	ld   [hl], h                                     ; $6471: $74
	inc  [hl]                                        ; $6472: $34
	ld   sp, $9a14                                   ; $6473: $31 $14 $9a
	xor  d                                           ; $6476: $aa
	xor  e                                           ; $6477: $ab
	sbc  b                                           ; $6478: $98
	ld   [hl], a                                     ; $6479: $77
	ld   [hl], a                                     ; $647a: $77
	ld   h, a                                        ; $647b: $67
	adc  c                                           ; $647c: $89
	sbc  c                                           ; $647d: $99
	adc  $dc                                         ; $647e: $ce $dc
	bit  6, l                                        ; $6480: $cb $75
	inc  sp                                          ; $6482: $33
	ld   hl, $8b13                                   ; $6483: $21 $13 $8b
	cp   d                                           ; $6486: $ba
	xor  e                                           ; $6487: $ab
	and  a                                           ; $6488: $a7
	ld   a, b                                        ; $6489: $78
	add  a                                           ; $648a: $87
	ld   h, a                                        ; $648b: $67
	adc  b                                           ; $648c: $88
	adc  d                                           ; $648d: $8a
	call $badd                                       ; $648e: $cd $dd $ba
	ld   [hl], h                                     ; $6491: $74
	inc  sp                                          ; $6492: $33
	ld   hl, $9a14                                   ; $6493: $21 $14 $9a
	cp   d                                           ; $6496: $ba
	cp   d                                           ; $6497: $ba
	xor  b                                           ; $6498: $a8

Jump_0b9_6499:
	ld   a, b                                        ; $6499: $78
	halt                                             ; $649a: $76
	ld   h, a                                        ; $649b: $67
	adc  b                                           ; $649c: $88
	sbc  d                                           ; $649d: $9a
	call $caec                                       ; $649e: $cd $ec $ca
	ld   [hl], h                                     ; $64a1: $74
	inc  sp                                          ; $64a2: $33
	ld   de, $ab16                                   ; $64a3: $11 $16 $ab
	xor  d                                           ; $64a6: $aa
	cp   d                                           ; $64a7: $ba
	sbc  b                                           ; $64a8: $98
	adc  b                                           ; $64a9: $88
	ld   [hl], a                                     ; $64aa: $77
	ld   [hl], a                                     ; $64ab: $77
	ld   a, b                                        ; $64ac: $78
	adc  e                                           ; $64ad: $8b
	call $c9dc                                       ; $64ae: $cd $dc $c9
	ld   h, h                                        ; $64b1: $64
	ld   b, d                                        ; $64b2: $42
	ld   de, $8937                                   ; $64b3: $11 $37 $89
	cp   h                                           ; $64b6: $bc
	xor  d                                           ; $64b7: $aa
	sbc  c                                           ; $64b8: $99
	add  a                                           ; $64b9: $87
	ld   [hl], a                                     ; $64ba: $77
	ld   [hl], a                                     ; $64bb: $77
	ld   a, b                                        ; $64bc: $78
	xor  e                                           ; $64bd: $ab
	call z, $a8dc                                    ; $64be: $cc $dc $a8
	ld   h, h                                        ; $64c1: $64
	ld   hl, $5811                                   ; $64c2: $21 $11 $58
	sbc  d                                           ; $64c5: $9a
	cp   h                                           ; $64c6: $bc
	xor  d                                           ; $64c7: $aa
	adc  b                                           ; $64c8: $88
	ld   [hl], a                                     ; $64c9: $77
	ld   [hl], a                                     ; $64ca: $77
	add  a                                           ; $64cb: $87
	adc  c                                           ; $64cc: $89
	xor  h                                           ; $64cd: $ac
	call z, $96db                                    ; $64ce: $cc $db $96
	ld   d, e                                        ; $64d1: $53
	ld   de, $7914                                   ; $64d2: $11 $14 $79
	xor  h                                           ; $64d5: $ac
	cp   e                                           ; $64d6: $bb
	xor  d                                           ; $64d7: $aa
	sbc  b                                           ; $64d8: $98
	ld   [hl], a                                     ; $64d9: $77
	add  a                                           ; $64da: $87
	ld   a, b                                        ; $64db: $78
	adc  d                                           ; $64dc: $8a
	xor  h                                           ; $64dd: $ac
	db   $dd                                         ; $64de: $dd
	jp   z, $3175                                    ; $64df: $ca $75 $31

	ld   de, $7a45                                   ; $64e2: $11 $45 $7a
	cp   d                                           ; $64e5: $ba
	cp   e                                           ; $64e6: $bb
	xor  c                                           ; $64e7: $a9
	adc  c                                           ; $64e8: $89
	adc  b                                           ; $64e9: $88
	ld   a, b                                        ; $64ea: $78
	sbc  b                                           ; $64eb: $98
	xor  e                                           ; $64ec: $ab
	res  7, e                                        ; $64ed: $cb $bb
	sub  a                                           ; $64ef: $97
	ld   h, e                                        ; $64f0: $63
	ld   de, $5724                                   ; $64f1: $11 $24 $57
	xor  e                                           ; $64f4: $ab
	xor  e                                           ; $64f5: $ab
	jp   z, $9999                                    ; $64f6: $ca $99 $99

	adc  b                                           ; $64f9: $88
	sbc  b                                           ; $64fa: $98
	adc  c                                           ; $64fb: $89
	cp   d                                           ; $64fc: $ba
	cp   e                                           ; $64fd: $bb
	sbc  b                                           ; $64fe: $98
	ld   [hl], l                                     ; $64ff: $75
	ld   de, $4524                                   ; $6500: $11 $24 $45
	sbc  d                                           ; $6503: $9a
	xor  d                                           ; $6504: $aa
	cp   e                                           ; $6505: $bb
	sbc  c                                           ; $6506: $99
	sbc  c                                           ; $6507: $99
	adc  b                                           ; $6508: $88
	sbc  c                                           ; $6509: $99
	adc  c                                           ; $650a: $89
	xor  d                                           ; $650b: $aa
	xor  d                                           ; $650c: $aa
	xor  b                                           ; $650d: $a8
	ld   [hl], l                                     ; $650e: $75
	ld   hl, $4524                                   ; $650f: $21 $24 $45
	adc  d                                           ; $6512: $8a
	xor  d                                           ; $6513: $aa
	call z, $a9aa                                    ; $6514: $cc $aa $a9
	sbc  b                                           ; $6517: $98
	sbc  b                                           ; $6518: $98
	sbc  c                                           ; $6519: $99
	xor  d                                           ; $651a: $aa
	sbc  c                                           ; $651b: $99
	add  a                                           ; $651c: $87
	ld   [hl], l                                     ; $651d: $75
	inc  sp                                          ; $651e: $33
	inc  [hl]                                        ; $651f: $34
	ld   b, [hl]                                     ; $6520: $46
	adc  b                                           ; $6521: $88
	sbc  d                                           ; $6522: $9a
	cp   e                                           ; $6523: $bb
	cp   e                                           ; $6524: $bb
	xor  c                                           ; $6525: $a9
	adc  c                                           ; $6526: $89
	adc  c                                           ; $6527: $89
	adc  c                                           ; $6528: $89
	sbc  c                                           ; $6529: $99
	sbc  b                                           ; $652a: $98
	add  a                                           ; $652b: $87
	ld   [hl], l                                     ; $652c: $75
	ld   b, h                                        ; $652d: $44
	ld   d, h                                        ; $652e: $54
	ld   d, a                                        ; $652f: $57
	ld   a, c                                        ; $6530: $79
	sbc  e                                           ; $6531: $9b
	cp   d                                           ; $6532: $ba
	cp   d                                           ; $6533: $ba
	xor  c                                           ; $6534: $a9
	sbc  c                                           ; $6535: $99
	sbc  b                                           ; $6536: $98
	sbc  c                                           ; $6537: $99
	sbc  c                                           ; $6538: $99
	adc  b                                           ; $6539: $88
	ld   a, b                                        ; $653a: $78
	ld   [hl], l                                     ; $653b: $75
	ld   h, [hl]                                     ; $653c: $66
	ld   h, [hl]                                     ; $653d: $66
	ld   h, a                                        ; $653e: $67
	ld   a, c                                        ; $653f: $79
	adc  d                                           ; $6540: $8a
	sbc  d                                           ; $6541: $9a
	xor  c                                           ; $6542: $a9
	sbc  d                                           ; $6543: $9a
	sbc  c                                           ; $6544: $99
	adc  b                                           ; $6545: $88
	sbc  b                                           ; $6546: $98
	adc  b                                           ; $6547: $88
	adc  b                                           ; $6548: $88
	ld   [hl], a                                     ; $6549: $77
	ld   [hl], a                                     ; $654a: $77
	ld   [hl], a                                     ; $654b: $77
	ld   [hl], a                                     ; $654c: $77
	ld   a, b                                        ; $654d: $78
	ld   [hl], a                                     ; $654e: $77
	sbc  b                                           ; $654f: $98
	adc  c                                           ; $6550: $89
	sbc  b                                           ; $6551: $98
	adc  c                                           ; $6552: $89
	adc  b                                           ; $6553: $88
	adc  b                                           ; $6554: $88
	adc  b                                           ; $6555: $88
	adc  b                                           ; $6556: $88
	adc  b                                           ; $6557: $88
	adc  b                                           ; $6558: $88
	add  a                                           ; $6559: $87
	adc  c                                           ; $655a: $89
	ld   [hl], a                                     ; $655b: $77
	adc  b                                           ; $655c: $88
	ld   a, b                                        ; $655d: $78
	add  a                                           ; $655e: $87
	ld   a, c                                        ; $655f: $79
	add  a                                           ; $6560: $87
	sbc  b                                           ; $6561: $98
	adc  b                                           ; $6562: $88
	adc  b                                           ; $6563: $88
	adc  b                                           ; $6564: $88
	adc  b                                           ; $6565: $88
	adc  b                                           ; $6566: $88
	adc  c                                           ; $6567: $89
	adc  b                                           ; $6568: $88
	sbc  b                                           ; $6569: $98
	adc  c                                           ; $656a: $89
	sbc  b                                           ; $656b: $98
	sbc  c                                           ; $656c: $99
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	ld   [hl], a                                     ; $656f: $77
	adc  b                                           ; $6570: $88
	adc  b                                           ; $6571: $88
	adc  b                                           ; $6572: $88
	adc  b                                           ; $6573: $88
	adc  b                                           ; $6574: $88
	sbc  c                                           ; $6575: $99
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	adc  b                                           ; $6578: $88
	adc  b                                           ; $6579: $88
	adc  b                                           ; $657a: $88
	adc  c                                           ; $657b: $89
	adc  b                                           ; $657c: $88
	adc  b                                           ; $657d: $88
	adc  b                                           ; $657e: $88
	adc  b                                           ; $657f: $88
	adc  b                                           ; $6580: $88
	adc  b                                           ; $6581: $88
	adc  b                                           ; $6582: $88
	ld   a, b                                        ; $6583: $78
	sbc  b                                           ; $6584: $98
	adc  c                                           ; $6585: $89
	adc  b                                           ; $6586: $88
	sbc  b                                           ; $6587: $98
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	sbc  c                                           ; $658a: $99
	ld   a, b                                        ; $658b: $78
	add  a                                           ; $658c: $87
	ld   a, b                                        ; $658d: $78
	ld   a, b                                        ; $658e: $78
	sbc  c                                           ; $658f: $99
	add  a                                           ; $6590: $87
	sbc  c                                           ; $6591: $99
	adc  c                                           ; $6592: $89
	sub  a                                           ; $6593: $97
	adc  c                                           ; $6594: $89
	adc  b                                           ; $6595: $88
	adc  b                                           ; $6596: $88

Jump_0b9_6597:
	sbc  c                                           ; $6597: $99
	sbc  b                                           ; $6598: $98
	sbc  b                                           ; $6599: $98
	sbc  b                                           ; $659a: $98
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
	sbc  b                                           ; $65a7: $98
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

Jump_0b9_66a8:
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
	sbc  c                                           ; $66de: $99
	halt                                             ; $66df: $76
	sub  a                                           ; $66e0: $97
	ld   a, c                                        ; $66e1: $79
	ld   a, c                                        ; $66e2: $79
	sub  l                                           ; $66e3: $95
	adc  e                                           ; $66e4: $8b
	ld   h, l                                        ; $66e5: $65
	cp   b                                           ; $66e6: $b8
	ld   e, e                                        ; $66e7: $5b
	sub  [hl]                                        ; $66e8: $96
	sbc  c                                           ; $66e9: $99
	ld   b, a                                        ; $66ea: $47
	and  a                                           ; $66eb: $a7
	ld   c, c                                        ; $66ec: $49
	sub  [hl]                                        ; $66ed: $96
	adc  b                                           ; $66ee: $88
	add  [hl]                                        ; $66ef: $86
	xor  e                                           ; $66f0: $ab
	add  a                                           ; $66f1: $87
	ld   a, b                                        ; $66f2: $78
	ret  c                                           ; $66f3: $d8

	ld   e, d                                        ; $66f4: $5a
	ld   d, [hl]                                     ; $66f5: $56
	sbc  b                                           ; $66f6: $98
	ld   h, a                                        ; $66f7: $67
	and  l                                           ; $66f8: $a5
	sbc  d                                           ; $66f9: $9a
	ld   l, b                                        ; $66fa: $68
	xor  d                                           ; $66fb: $aa
	sbc  c                                           ; $66fc: $99
	ld   [hl], a                                     ; $66fd: $77
	ld   a, c                                        ; $66fe: $79
	ld   [hl], a                                     ; $66ff: $77
	ld   a, b                                        ; $6700: $78
	ld   [hl], a                                     ; $6701: $77
	and  a                                           ; $6702: $a7
	adc  b                                           ; $6703: $88
	adc  c                                           ; $6704: $89
	adc  b                                           ; $6705: $88
	sbc  d                                           ; $6706: $9a
	ld   h, a                                        ; $6707: $67
	sub  [hl]                                        ; $6708: $96
	sbc  c                                           ; $6709: $99
	ld   [hl], a                                     ; $670a: $77
	adc  b                                           ; $670b: $88
	ld   [hl], a                                     ; $670c: $77
	adc  b                                           ; $670d: $88
	sbc  b                                           ; $670e: $98
	adc  c                                           ; $670f: $89
	add  a                                           ; $6710: $87
	sbc  b                                           ; $6711: $98
	ld   [hl], a                                     ; $6712: $77
	adc  c                                           ; $6713: $89
	ld   l, b                                        ; $6714: $68
	add  a                                           ; $6715: $87
	add  a                                           ; $6716: $87
	sub  a                                           ; $6717: $97
	ld   l, c                                        ; $6718: $69
	add  [hl]                                        ; $6719: $86
	sbc  c                                           ; $671a: $99
	ld   l, b                                        ; $671b: $68
	sub  [hl]                                        ; $671c: $96
	adc  d                                           ; $671d: $8a
	ld   h, a                                        ; $671e: $67
	sub  a                                           ; $671f: $97
	adc  b                                           ; $6720: $88
	sub  a                                           ; $6721: $97
	sbc  b                                           ; $6722: $98
	ld   a, b                                        ; $6723: $78
	adc  b                                           ; $6724: $88
	adc  b                                           ; $6725: $88
	adc  b                                           ; $6726: $88
	ld   a, c                                        ; $6727: $79
	add  a                                           ; $6728: $87
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	adc  b                                           ; $672b: $88
	adc  c                                           ; $672c: $89
	adc  b                                           ; $672d: $88
	adc  b                                           ; $672e: $88
	adc  b                                           ; $672f: $88
	adc  b                                           ; $6730: $88
	sbc  b                                           ; $6731: $98
	adc  b                                           ; $6732: $88
	adc  b                                           ; $6733: $88
	ld   a, c                                        ; $6734: $79
	adc  b                                           ; $6735: $88
	adc  b                                           ; $6736: $88
	adc  b                                           ; $6737: $88
	sbc  b                                           ; $6738: $98
	adc  c                                           ; $6739: $89
	ld   a, b                                        ; $673a: $78
	adc  b                                           ; $673b: $88
	adc  b                                           ; $673c: $88
	adc  b                                           ; $673d: $88
	adc  b                                           ; $673e: $88
	adc  b                                           ; $673f: $88
	adc  c                                           ; $6740: $89
	adc  b                                           ; $6741: $88
	adc  b                                           ; $6742: $88
	adc  c                                           ; $6743: $89
	adc  b                                           ; $6744: $88
	adc  c                                           ; $6745: $89
	adc  b                                           ; $6746: $88
	sub  a                                           ; $6747: $97
	sbc  c                                           ; $6748: $99
	adc  c                                           ; $6749: $89
	ld   a, c                                        ; $674a: $79
	add  a                                           ; $674b: $87
	sbc  b                                           ; $674c: $98
	sub  a                                           ; $674d: $97
	adc  b                                           ; $674e: $88
	adc  c                                           ; $674f: $89
	adc  b                                           ; $6750: $88
	adc  c                                           ; $6751: $89
	adc  b                                           ; $6752: $88
	sub  a                                           ; $6753: $97
	sub  a                                           ; $6754: $97
	sbc  c                                           ; $6755: $99
	ld   a, b                                        ; $6756: $78
	ld   a, b                                        ; $6757: $78
	sbc  b                                           ; $6758: $98
	adc  b                                           ; $6759: $88
	sbc  b                                           ; $675a: $98
	adc  b                                           ; $675b: $88
	add  a                                           ; $675c: $87
	adc  c                                           ; $675d: $89
	ld   a, b                                        ; $675e: $78
	adc  b                                           ; $675f: $88
	ld   a, b                                        ; $6760: $78
	add  a                                           ; $6761: $87
	add  a                                           ; $6762: $87
	adc  b                                           ; $6763: $88
	ld   a, c                                        ; $6764: $79
	ld   a, b                                        ; $6765: $78
	sbc  b                                           ; $6766: $98
	sub  a                                           ; $6767: $97
	sbc  c                                           ; $6768: $99
	ld   a, b                                        ; $6769: $78
	adc  b                                           ; $676a: $88
	adc  b                                           ; $676b: $88
	adc  b                                           ; $676c: $88
	ld   a, c                                        ; $676d: $79
	adc  b                                           ; $676e: $88
	adc  b                                           ; $676f: $88
	adc  b                                           ; $6770: $88
	add  a                                           ; $6771: $87
	sbc  b                                           ; $6772: $98
	adc  c                                           ; $6773: $89
	adc  b                                           ; $6774: $88
	adc  b                                           ; $6775: $88
	add  a                                           ; $6776: $87
	adc  b                                           ; $6777: $88
	ld   a, c                                        ; $6778: $79
	ld   a, b                                        ; $6779: $78
	add  a                                           ; $677a: $87
	adc  b                                           ; $677b: $88
	add  a                                           ; $677c: $87
	sub  a                                           ; $677d: $97
	ld   a, d                                        ; $677e: $7a
	ld   a, b                                        ; $677f: $78
	or   a                                           ; $6780: $b7
	ld   a, d                                        ; $6781: $7a
	add  a                                           ; $6782: $87
	and  a                                           ; $6783: $a7
	ld   a, c                                        ; $6784: $79
	ld   [hl], a                                     ; $6785: $77
	adc  c                                           ; $6786: $89
	ld   a, c                                        ; $6787: $79
	add  a                                           ; $6788: $87
	sub  a                                           ; $6789: $97
	sbc  c                                           ; $678a: $99
	ld   a, b                                        ; $678b: $78
	add  a                                           ; $678c: $87
	adc  b                                           ; $678d: $88
	ld   a, c                                        ; $678e: $79
	ld   a, b                                        ; $678f: $78
	ld   a, c                                        ; $6790: $79
	add  a                                           ; $6791: $87
	add  a                                           ; $6792: $87
	and  a                                           ; $6793: $a7
	adc  b                                           ; $6794: $88
	ld   a, b                                        ; $6795: $78
	sbc  b                                           ; $6796: $98
	ld   a, c                                        ; $6797: $79
	ld   [hl], a                                     ; $6798: $77
	and  a                                           ; $6799: $a7
	adc  b                                           ; $679a: $88

Jump_0b9_679b:
	sub  [hl]                                        ; $679b: $96
	adc  c                                           ; $679c: $89
	ld   l, d                                        ; $679d: $6a
	add  a                                           ; $679e: $87
	adc  b                                           ; $679f: $88
	add  [hl]                                        ; $67a0: $86
	sub  a                                           ; $67a1: $97
	ld   a, c                                        ; $67a2: $79
	ld   a, b                                        ; $67a3: $78
	ld   a, c                                        ; $67a4: $79
	add  a                                           ; $67a5: $87
	sub  a                                           ; $67a6: $97
	adc  b                                           ; $67a7: $88

Jump_0b9_67a8:
	ld   a, c                                        ; $67a8: $79
	adc  b                                           ; $67a9: $88
	adc  b                                           ; $67aa: $88
	sub  [hl]                                        ; $67ab: $96
	xor  b                                           ; $67ac: $a8
	ld   l, c                                        ; $67ad: $69
	add  a                                           ; $67ae: $87
	sbc  b                                           ; $67af: $98
	adc  b                                           ; $67b0: $88
	add  a                                           ; $67b1: $87
	ld   a, c                                        ; $67b2: $79
	ld   a, b                                        ; $67b3: $78
	adc  b                                           ; $67b4: $88
	add  a                                           ; $67b5: $87
	adc  b                                           ; $67b6: $88
	add  a                                           ; $67b7: $87
	sub  a                                           ; $67b8: $97
	sbc  b                                           ; $67b9: $98
	ld   a, c                                        ; $67ba: $79
	ld   a, b                                        ; $67bb: $78
	adc  c                                           ; $67bc: $89
	ld   [hl], a                                     ; $67bd: $77
	sub  a                                           ; $67be: $97
	ld   a, d                                        ; $67bf: $7a
	halt                                             ; $67c0: $76
	sbc  c                                           ; $67c1: $99
	ld   l, c                                        ; $67c2: $69
	add  a                                           ; $67c3: $87
	add  a                                           ; $67c4: $87
	adc  b                                           ; $67c5: $88
	adc  b                                           ; $67c6: $88
	adc  d                                           ; $67c7: $8a
	ld   l, b                                        ; $67c8: $68
	sub  a                                           ; $67c9: $97
	sbc  b                                           ; $67ca: $98
	add  a                                           ; $67cb: $87
	sbc  b                                           ; $67cc: $98
	ld   a, c                                        ; $67cd: $79
	add  a                                           ; $67ce: $87
	ld   a, d                                        ; $67cf: $7a
	ld   a, c                                        ; $67d0: $79
	add  a                                           ; $67d1: $87
	sub  a                                           ; $67d2: $97
	sbc  b                                           ; $67d3: $98
	adc  b                                           ; $67d4: $88
	ld   a, b                                        ; $67d5: $78
	ld   a, d                                        ; $67d6: $7a
	ld   a, b                                        ; $67d7: $78
	sub  [hl]                                        ; $67d8: $96
	sub  a                                           ; $67d9: $97
	ld   a, c                                        ; $67da: $79
	ld   a, c                                        ; $67db: $79
	ld   l, c                                        ; $67dc: $69
	add  a                                           ; $67dd: $87
	sub  [hl]                                        ; $67de: $96
	sbc  b                                           ; $67df: $98
	ld   a, d                                        ; $67e0: $7a
	ld   a, b                                        ; $67e1: $78
	adc  b                                           ; $67e2: $88
	ld   a, b                                        ; $67e3: $78
	sub  a                                           ; $67e4: $97
	sbc  b                                           ; $67e5: $98
	ld   a, c                                        ; $67e6: $79
	add  a                                           ; $67e7: $87
	adc  c                                           ; $67e8: $89
	add  a                                           ; $67e9: $87
	and  a                                           ; $67ea: $a7
	ld   a, d                                        ; $67eb: $7a
	ld   a, b                                        ; $67ec: $78
	adc  c                                           ; $67ed: $89
	add  a                                           ; $67ee: $87
	sub  a                                           ; $67ef: $97
	sbc  d                                           ; $67f0: $9a
	ld   a, b                                        ; $67f1: $78
	adc  b                                           ; $67f2: $88
	ld   a, c                                        ; $67f3: $79
	add  a                                           ; $67f4: $87
	sbc  c                                           ; $67f5: $99
	ld   a, d                                        ; $67f6: $7a
	add  a                                           ; $67f7: $87
	sbc  b                                           ; $67f8: $98
	ld   a, b                                        ; $67f9: $78
	sub  a                                           ; $67fa: $97
	sbc  c                                           ; $67fb: $99
	ld   l, c                                        ; $67fc: $69
	add  [hl]                                        ; $67fd: $86
	sbc  c                                           ; $67fe: $99
	ld   a, b                                        ; $67ff: $78
	adc  b                                           ; $6800: $88
	ld   a, e                                        ; $6801: $7b
	ld   l, b                                        ; $6802: $68
	sub  [hl]                                        ; $6803: $96
	and  a                                           ; $6804: $a7
	sbc  b                                           ; $6805: $98
	adc  c                                           ; $6806: $89
	ld   a, d                                        ; $6807: $7a
	adc  b                                           ; $6808: $88
	sub  a                                           ; $6809: $97
	adc  c                                           ; $680a: $89
	ld   a, c                                        ; $680b: $79
	adc  b                                           ; $680c: $88
	adc  c                                           ; $680d: $89
	add  a                                           ; $680e: $87
	sbc  b                                           ; $680f: $98
	ld   a, c                                        ; $6810: $79
	add  a                                           ; $6811: $87
	add  a                                           ; $6812: $87
	adc  b                                           ; $6813: $88
	sbc  b                                           ; $6814: $98
	adc  b                                           ; $6815: $88
	sub  a                                           ; $6816: $97
	adc  b                                           ; $6817: $88
	add  a                                           ; $6818: $87
	sub  a                                           ; $6819: $97
	ld   a, c                                        ; $681a: $79
	add  a                                           ; $681b: $87
	adc  b                                           ; $681c: $88
	ld   a, c                                        ; $681d: $79
	ld   a, b                                        ; $681e: $78
	adc  b                                           ; $681f: $88
	sub  a                                           ; $6820: $97
	sbc  b                                           ; $6821: $98
	sub  a                                           ; $6822: $97
	adc  b                                           ; $6823: $88
	ld   a, b                                        ; $6824: $78
	add  a                                           ; $6825: $87
	adc  c                                           ; $6826: $89
	ld   [hl], a                                     ; $6827: $77
	and  a                                           ; $6828: $a7
	adc  c                                           ; $6829: $89
	ld   a, c                                        ; $682a: $79
	adc  b                                           ; $682b: $88
	sbc  b                                           ; $682c: $98
	adc  b                                           ; $682d: $88
	adc  b                                           ; $682e: $88
	ld   a, b                                        ; $682f: $78
	sub  a                                           ; $6830: $97
	sub  a                                           ; $6831: $97
	adc  c                                           ; $6832: $89
	ld   a, c                                        ; $6833: $79
	ld   a, c                                        ; $6834: $79
	ld   a, b                                        ; $6835: $78
	sub  a                                           ; $6836: $97
	sbc  b                                           ; $6837: $98
	adc  b                                           ; $6838: $88
	ld   a, c                                        ; $6839: $79
	ld   a, c                                        ; $683a: $79
	sub  a                                           ; $683b: $97
	sub  a                                           ; $683c: $97
	sub  a                                           ; $683d: $97
	sbc  c                                           ; $683e: $99
	ld   a, b                                        ; $683f: $78
	adc  b                                           ; $6840: $88
	adc  b                                           ; $6841: $88
	ld   a, b                                        ; $6842: $78
	add  a                                           ; $6843: $87
	adc  b                                           ; $6844: $88
	ld   a, b                                        ; $6845: $78
	add  a                                           ; $6846: $87
	sbc  b                                           ; $6847: $98
	add  a                                           ; $6848: $87
	adc  b                                           ; $6849: $88
	ld   a, b                                        ; $684a: $78
	ld   a, b                                        ; $684b: $78
	sub  a                                           ; $684c: $97
	sbc  b                                           ; $684d: $98
	adc  b                                           ; $684e: $88
	ld   a, c                                        ; $684f: $79
	ld   a, b                                        ; $6850: $78
	adc  b                                           ; $6851: $88
	sub  a                                           ; $6852: $97
	sbc  b                                           ; $6853: $98
	ld   a, c                                        ; $6854: $79
	adc  b                                           ; $6855: $88
	adc  b                                           ; $6856: $88
	add  a                                           ; $6857: $87
	sbc  b                                           ; $6858: $98
	ld   a, b                                        ; $6859: $78
	adc  b                                           ; $685a: $88
	add  a                                           ; $685b: $87
	adc  b                                           ; $685c: $88
	ld   a, b                                        ; $685d: $78
	ld   a, c                                        ; $685e: $79
	add  a                                           ; $685f: $87
	sbc  b                                           ; $6860: $98
	add  a                                           ; $6861: $87
	adc  b                                           ; $6862: $88
	ld   a, c                                        ; $6863: $79
	add  a                                           ; $6864: $87
	sbc  b                                           ; $6865: $98
	ld   a, b                                        ; $6866: $78
	adc  b                                           ; $6867: $88
	ld   a, c                                        ; $6868: $79
	add  a                                           ; $6869: $87
	add  a                                           ; $686a: $87
	adc  b                                           ; $686b: $88
	sbc  b                                           ; $686c: $98
	adc  b                                           ; $686d: $88
	adc  c                                           ; $686e: $89
	ld   a, b                                        ; $686f: $78
	adc  b                                           ; $6870: $88
	ld   a, c                                        ; $6871: $79
	add  a                                           ; $6872: $87
	sub  a                                           ; $6873: $97
	ld   a, c                                        ; $6874: $79
	adc  b                                           ; $6875: $88
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	sbc  b                                           ; $687a: $98
	adc  b                                           ; $687b: $88
	adc  b                                           ; $687c: $88
	ld   a, c                                        ; $687d: $79
	ld   a, b                                        ; $687e: $78
	adc  b                                           ; $687f: $88
	sub  a                                           ; $6880: $97
	adc  c                                           ; $6881: $89
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	adc  b                                           ; $6885: $88
	sbc  b                                           ; $6886: $98
	ld   a, c                                        ; $6887: $79
	adc  b                                           ; $6888: $88
	adc  c                                           ; $6889: $89
	adc  b                                           ; $688a: $88
	adc  b                                           ; $688b: $88
	ld   a, c                                        ; $688c: $79
	sub  a                                           ; $688d: $97
	adc  b                                           ; $688e: $88
	sbc  b                                           ; $688f: $98
	adc  b                                           ; $6890: $88
	adc  b                                           ; $6891: $88
	adc  c                                           ; $6892: $89
	ld   a, b                                        ; $6893: $78
	sub  a                                           ; $6894: $97
	adc  b                                           ; $6895: $88
	add  a                                           ; $6896: $87
	sbc  b                                           ; $6897: $98
	adc  b                                           ; $6898: $88
	add  a                                           ; $6899: $87
	adc  b                                           ; $689a: $88
	ld   a, c                                        ; $689b: $79
	adc  b                                           ; $689c: $88
	ld   a, b                                        ; $689d: $78
	adc  b                                           ; $689e: $88
	adc  b                                           ; $689f: $88
	adc  c                                           ; $68a0: $89
	adc  b                                           ; $68a1: $88
	sub  a                                           ; $68a2: $97
	sbc  b                                           ; $68a3: $98
	adc  b                                           ; $68a4: $88
	adc  c                                           ; $68a5: $89
	ld   a, c                                        ; $68a6: $79
	ld   a, b                                        ; $68a7: $78
	sub  a                                           ; $68a8: $97
	sbc  b                                           ; $68a9: $98
	adc  b                                           ; $68aa: $88
	adc  b                                           ; $68ab: $88
	adc  b                                           ; $68ac: $88
	adc  b                                           ; $68ad: $88
	sub  a                                           ; $68ae: $97
	sbc  b                                           ; $68af: $98
	adc  b                                           ; $68b0: $88
	ld   a, b                                        ; $68b1: $78
	adc  c                                           ; $68b2: $89
	ld   a, b                                        ; $68b3: $78
	sbc  b                                           ; $68b4: $98
	add  a                                           ; $68b5: $87
	sbc  b                                           ; $68b6: $98
	adc  b                                           ; $68b7: $88
	adc  c                                           ; $68b8: $89
	ld   a, c                                        ; $68b9: $79
	adc  b                                           ; $68ba: $88
	adc  b                                           ; $68bb: $88
	sub  a                                           ; $68bc: $97
	sbc  b                                           ; $68bd: $98
	adc  b                                           ; $68be: $88
	adc  c                                           ; $68bf: $89
	ld   a, c                                        ; $68c0: $79
	ld   a, b                                        ; $68c1: $78
	adc  b                                           ; $68c2: $88
	sub  a                                           ; $68c3: $97
	add  a                                           ; $68c4: $87
	sbc  b                                           ; $68c5: $98
	adc  b                                           ; $68c6: $88
	adc  c                                           ; $68c7: $89
	ld   a, b                                        ; $68c8: $78
	adc  b                                           ; $68c9: $88
	adc  b                                           ; $68ca: $88
	adc  b                                           ; $68cb: $88
	add  a                                           ; $68cc: $87
	adc  b                                           ; $68cd: $88
	ld   a, c                                        ; $68ce: $79
	add  a                                           ; $68cf: $87
	sbc  b                                           ; $68d0: $98
	ld   a, c                                        ; $68d1: $79
	adc  b                                           ; $68d2: $88
	ld   a, c                                        ; $68d3: $79
	ld   a, b                                        ; $68d4: $78
	sub  a                                           ; $68d5: $97
	adc  b                                           ; $68d6: $88
	add  a                                           ; $68d7: $87
	adc  b                                           ; $68d8: $88
	ld   a, b                                        ; $68d9: $78
	ld   a, b                                        ; $68da: $78
	adc  b                                           ; $68db: $88
	adc  b                                           ; $68dc: $88
	adc  b                                           ; $68dd: $88
	ld   a, c                                        ; $68de: $79
	ld   a, b                                        ; $68df: $78
	add  a                                           ; $68e0: $87
	sbc  b                                           ; $68e1: $98
	adc  b                                           ; $68e2: $88
	sbc  b                                           ; $68e3: $98
	adc  b                                           ; $68e4: $88
	ld   a, c                                        ; $68e5: $79
	adc  b                                           ; $68e6: $88
	ld   a, b                                        ; $68e7: $78
	add  a                                           ; $68e8: $87
	sub  a                                           ; $68e9: $97
	add  a                                           ; $68ea: $87
	sbc  b                                           ; $68eb: $98

Jump_0b9_68ec:
	adc  b                                           ; $68ec: $88
	adc  c                                           ; $68ed: $89
	ld   a, b                                        ; $68ee: $78
	adc  b                                           ; $68ef: $88
	ld   a, b                                        ; $68f0: $78
	adc  b                                           ; $68f1: $88
	adc  b                                           ; $68f2: $88
	adc  b                                           ; $68f3: $88
	adc  b                                           ; $68f4: $88
	ld   a, b                                        ; $68f5: $78
	adc  c                                           ; $68f6: $89
	ld   [hl], a                                     ; $68f7: $77
	sbc  b                                           ; $68f8: $98
	adc  b                                           ; $68f9: $88
	sub  a                                           ; $68fa: $97
	adc  b                                           ; $68fb: $88
	add  a                                           ; $68fc: $87
	sbc  b                                           ; $68fd: $98
	ld   a, c                                        ; $68fe: $79
	ld   a, b                                        ; $68ff: $78
	ld   a, c                                        ; $6900: $79
	ld   [hl], a                                     ; $6901: $77
	and  a                                           ; $6902: $a7
	add  a                                           ; $6903: $87
	sub  a                                           ; $6904: $97
	adc  b                                           ; $6905: $88
	ld   a, c                                        ; $6906: $79
	ld   a, c                                        ; $6907: $79
	ld   a, b                                        ; $6908: $78
	add  a                                           ; $6909: $87
	add  a                                           ; $690a: $87
	sub  a                                           ; $690b: $97
	sbc  b                                           ; $690c: $98
	adc  b                                           ; $690d: $88
	ld   a, c                                        ; $690e: $79
	ld   a, b                                        ; $690f: $78
	ld   a, c                                        ; $6910: $79
	adc  b                                           ; $6911: $88
	sub  a                                           ; $6912: $97
	add  a                                           ; $6913: $87
	add  a                                           ; $6914: $87
	ld   a, c                                        ; $6915: $79
	adc  b                                           ; $6916: $88
	adc  c                                           ; $6917: $89
	ld   a, c                                        ; $6918: $79
	adc  b                                           ; $6919: $88
	adc  c                                           ; $691a: $89
	ld   a, b                                        ; $691b: $78
	sub  a                                           ; $691c: $97
	add  a                                           ; $691d: $87
	add  [hl]                                        ; $691e: $86
	adc  b                                           ; $691f: $88
	ld   a, c                                        ; $6920: $79
	adc  c                                           ; $6921: $89
	ld   a, c                                        ; $6922: $79
	ld   [hl], a                                     ; $6923: $77
	sbc  b                                           ; $6924: $98
	sub  a                                           ; $6925: $97
	ld   a, b                                        ; $6926: $78
	adc  b                                           ; $6927: $88
	adc  b                                           ; $6928: $88
	sbc  b                                           ; $6929: $98
	sub  a                                           ; $692a: $97
	sub  a                                           ; $692b: $97
	ld   a, c                                        ; $692c: $79
	ld   a, c                                        ; $692d: $79
	ld   a, d                                        ; $692e: $7a
	ld   l, c                                        ; $692f: $69
	sub  l                                           ; $6930: $95
	and  a                                           ; $6931: $a7
	add  a                                           ; $6932: $87
	adc  b                                           ; $6933: $88
	ld   a, c                                        ; $6934: $79
	ld   a, c                                        ; $6935: $79
	ld   a, b                                        ; $6936: $78
	sbc  b                                           ; $6937: $98
	adc  b                                           ; $6938: $88
	ld   a, b                                        ; $6939: $78
	sub  a                                           ; $693a: $97
	add  a                                           ; $693b: $87
	add  a                                           ; $693c: $87
	sub  a                                           ; $693d: $97
	adc  c                                           ; $693e: $89
	ld   l, c                                        ; $693f: $69
	ld   a, b                                        ; $6940: $78
	adc  c                                           ; $6941: $89
	add  [hl]                                        ; $6942: $86
	and  a                                           ; $6943: $a7
	adc  c                                           ; $6944: $89
	ld   a, c                                        ; $6945: $79
	ld   a, c                                        ; $6946: $79
	adc  b                                           ; $6947: $88
	sub  a                                           ; $6948: $97
	sub  [hl]                                        ; $6949: $96
	and  a                                           ; $694a: $a7
	ld   a, c                                        ; $694b: $79
	ld   a, c                                        ; $694c: $79
	ld   a, c                                        ; $694d: $79
	add  a                                           ; $694e: $87
	adc  b                                           ; $694f: $88
	sub  a                                           ; $6950: $97
	sbc  b                                           ; $6951: $98
	ld   a, c                                        ; $6952: $79
	add  a                                           ; $6953: $87
	adc  b                                           ; $6954: $88
	ld   a, b                                        ; $6955: $78
	sub  [hl]                                        ; $6956: $96
	adc  b                                           ; $6957: $88
	ld   a, b                                        ; $6958: $78
	ld   a, c                                        ; $6959: $79
	adc  c                                           ; $695a: $89
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	adc  b                                           ; $695d: $88
	adc  b                                           ; $695e: $88
	ld   a, c                                        ; $695f: $79
	ld   [hl], a                                     ; $6960: $77
	add  a                                           ; $6961: $87
	ld   a, b                                        ; $6962: $78
	add  a                                           ; $6963: $87
	adc  b                                           ; $6964: $88
	adc  c                                           ; $6965: $89
	sbc  c                                           ; $6966: $99
	adc  c                                           ; $6967: $89
	adc  d                                           ; $6968: $8a
	sbc  b                                           ; $6969: $98
	sub  a                                           ; $696a: $97
	halt                                             ; $696b: $76
	halt                                             ; $696c: $76
	ld   [hl], a                                     ; $696d: $77
	ld   h, a                                        ; $696e: $67
	ld   a, c                                        ; $696f: $79
	xor  d                                           ; $6970: $aa
	xor  e                                           ; $6971: $ab
	xor  d                                           ; $6972: $aa
	sbc  b                                           ; $6973: $98
	add  a                                           ; $6974: $87
	ld   [hl], l                                     ; $6975: $75
	dec  [hl]                                        ; $6976: $35
	ld   d, e                                        ; $6977: $53
	ld   h, a                                        ; $6978: $67
	ld   a, c                                        ; $6979: $79
	cp   h                                           ; $697a: $bc
	cp   [hl]                                        ; $697b: $be
	db   $db                                         ; $697c: $db
	jp   z, Jump_0b9_7387                            ; $697d: $ca $87 $73

	inc  sp                                          ; $6980: $33
	ld   [hl+], a                                    ; $6981: $22
	ld   b, [hl]                                     ; $6982: $46
	ld   l, d                                        ; $6983: $6a
	cp   h                                           ; $6984: $bc
	rst  JumpTable                                         ; $6985: $df
	db   $fc                                         ; $6986: $fc
	db   $ec                                         ; $6987: $ec
	xor  b                                           ; $6988: $a8
	ld   h, h                                        ; $6989: $64
	ld   hl, $1313                                   ; $698a: $21 $13 $13
	ld   a, c                                        ; $698d: $79
	cp   h                                           ; $698e: $bc
	cp   $ff                                         ; $698f: $fe $ff
	db   $dd                                         ; $6991: $dd
	xor  b                                           ; $6992: $a8
	ld   h, h                                        ; $6993: $64
	ld   hl, $1211                                   ; $6994: $21 $11 $12
	ld   a, c                                        ; $6997: $79
	cp   a                                           ; $6998: $bf
	rst  $38                                         ; $6999: $ff
	rst  $38                                         ; $699a: $ff
	db   $fc                                         ; $699b: $fc
	or   a                                           ; $699c: $b7
	ld   d, h                                        ; $699d: $54
	ld   de, $1211                                   ; $699e: $11 $11 $12
	adc  d                                           ; $69a1: $8a
	rst  JumpTable                                         ; $69a2: $df
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	db   $eb                                         ; $69a5: $eb
	sub  a                                           ; $69a6: $97
	ld   b, d                                        ; $69a7: $42
	ld   de, $2211                                   ; $69a8: $11 $11 $22
	xor  l                                           ; $69ab: $ad
	rst  $28                                         ; $69ac: $ef
	rst  $38                                         ; $69ad: $ff
	rst  $38                                         ; $69ae: $ff
	ret                                              ; $69af: $c9


	sub  a                                           ; $69b0: $97
	ld   hl, $1211                                   ; $69b1: $21 $11 $12
	inc  hl                                          ; $69b4: $23
	rst  JumpTable                                         ; $69b5: $df
	rst  $38                                         ; $69b6: $ff
	rst  $38                                         ; $69b7: $ff
	rst  JumpTable                                         ; $69b8: $df
	and  a                                           ; $69b9: $a7
	ld   [hl], h                                     ; $69ba: $74
	ld   de, $1511                                   ; $69bb: $11 $11 $15
	scf                                              ; $69be: $37
	rst  $38                                         ; $69bf: $ff
	rst  $38                                         ; $69c0: $ff
	db   $fc                                         ; $69c1: $fc
	sbc  $66                                         ; $69c2: $de $66
	ld   h, h                                        ; $69c4: $64
	ld   de, $2811                                   ; $69c5: $11 $11 $28
	ld   e, e                                        ; $69c8: $5b
	rst  $38                                         ; $69c9: $ff
	rst  $38                                         ; $69ca: $ff
	ld   a, [$55cb]                                  ; $69cb: $fa $cb $55
	ld   h, h                                        ; $69ce: $64
	ld   de, $5811                                   ; $69cf: $11 $11 $58
	ld   e, [hl]                                     ; $69d2: $5e
	rst  $38                                         ; $69d3: $ff
	rst  $38                                         ; $69d4: $ff
	or   $ba                                         ; $69d5: $f6 $ba
	ld   [hl], $63                                   ; $69d7: $36 $63
	ld   de, $9811                                   ; $69d9: $11 $11 $98
	ld   e, a                                        ; $69dc: $5f
	db   $fd                                         ; $69dd: $fd
	rst  $38                                         ; $69de: $ff
	db   $d3                                         ; $69df: $d3
	ret  c                                           ; $69e0: $d8

	daa                                              ; $69e1: $27
	ld   [hl], e                                     ; $69e2: $73
	ld   de, $a911                                   ; $69e3: $11 $11 $a9
	ld   a, a                                        ; $69e6: $7f
	db   $fd                                         ; $69e7: $fd
	rst  $38                                         ; $69e8: $ff
	or   e                                           ; $69e9: $b3
	sub  $37                                         ; $69ea: $d6 $37
	add  e                                           ; $69ec: $83
	ld   de, $c711                                   ; $69ed: $11 $11 $c7
	sbc  a                                           ; $69f0: $9f
	db   $fc                                         ; $69f1: $fc
	rst  $38                                         ; $69f2: $ff
	ld   [hl], e                                     ; $69f3: $73
	call nc, $8348                                   ; $69f4: $d4 $48 $83
	ld   de, $d614                                   ; $69f7: $11 $14 $d6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69fa: $cf
	db   $fc                                         ; $69fb: $fc
	rst  $38                                         ; $69fc: $ff
	dec  [hl]                                        ; $69fd: $35
	jp   nc, $8268                                   ; $69fe: $d2 $68 $82

	ld   de, $e614                                   ; $6a01: $11 $14 $e6
	cp   a                                           ; $6a04: $bf
	db   $fc                                         ; $6a05: $fc
	rst  $38                                         ; $6a06: $ff
	inc  [hl]                                        ; $6a07: $34
	db   $d3                                         ; $6a08: $d3
	ld   l, b                                        ; $6a09: $68
	sub  d                                           ; $6a0a: $92
	ld   de, $d518                                   ; $6a0b: $11 $18 $d5
	rst  $38                                         ; $6a0e: $ff
	db   $db                                         ; $6a0f: $db
	rst  $38                                         ; $6a10: $ff
	ld   d, $c1                                      ; $6a11: $16 $c1
	ld   a, c                                        ; $6a13: $79
	sub  c                                           ; $6a14: $91
	ld   de, $e519                                   ; $6a15: $11 $19 $e5
	rst  $38                                         ; $6a18: $ff
	jp   z, $19ff                                    ; $6a19: $ca $ff $19

	or   d                                           ; $6a1c: $b2
	sbc  d                                           ; $6a1d: $9a
	add  c                                           ; $6a1e: $81
	ld   de, $c61d                                   ; $6a1f: $11 $1d $c6
	rst  $38                                         ; $6a22: $ff
	xor  e                                           ; $6a23: $ab
	ld   a, [$831c]                                  ; $6a24: $fa $1c $83
	sbc  c                                           ; $6a27: $99
	sub  c                                           ; $6a28: $91
	ld   de, $b81d                                   ; $6a29: $11 $1d $b8
	rst  $38                                         ; $6a2c: $ff
	cp   d                                           ; $6a2d: $ba
	ld   hl, sp+$1c                                  ; $6a2e: $f8 $1c
	ld   [hl], h                                     ; $6a30: $74
	cp   c                                           ; $6a31: $b9
	ld   [hl], c                                     ; $6a32: $71
	ld   de, $9c2f                                   ; $6a33: $11 $2f $9c
	rst  $38                                         ; $6a36: $ff
	xor  d                                           ; $6a37: $aa
	ldh  a, [c]                                      ; $6a38: $f2
	ld   e, $57                                      ; $6a39: $1e $57
	xor  e                                           ; $6a3b: $ab
	ld   h, c                                        ; $6a3c: $61
	ld   de, $8e5f                                   ; $6a3d: $11 $5f $8e
	rst  $38                                         ; $6a40: $ff
	xor  d                                           ; $6a41: $aa
	pop  af                                          ; $6a42: $f1
	ld   e, $59                                      ; $6a43: $1e $59
	xor  d                                           ; $6a45: $aa
	ld   b, c                                        ; $6a46: $41
	ld   de, $8faf                                   ; $6a47: $11 $af $8f
	db   $fd                                         ; $6a4a: $fd
	adc  l                                           ; $6a4b: $8d
	pop  de                                          ; $6a4c: $d1
	ld   e, [hl]                                     ; $6a4d: $5e
	ld   e, e                                        ; $6a4e: $5b
	sbc  d                                           ; $6a4f: $9a
	ld   de, $dd11                                   ; $6a50: $11 $11 $dd
	sbc  a                                           ; $6a53: $9f
	ei                                               ; $6a54: $fb
	ld   a, l                                        ; $6a55: $7d
	add  c                                           ; $6a56: $81
	sbc  h                                           ; $6a57: $9c
	ld   a, e                                        ; $6a58: $7b
	xor  c                                           ; $6a59: $a9
	ld   de, $fd11                                   ; $6a5a: $11 $11 $fd
	cp   a                                           ; $6a5d: $bf
	ld   hl, sp-$72                                  ; $6a5e: $f8 $8e
	ld   d, c                                        ; $6a60: $51
	cp   e                                           ; $6a61: $bb
	adc  d                                           ; $6a62: $8a
	sub  a                                           ; $6a63: $97
	ld   de, $f916                                   ; $6a64: $11 $16 $f9
	rst  $38                                         ; $6a67: $ff
	or   $8e                                         ; $6a68: $f6 $8e
	ld   de, $a9ea                                   ; $6a6a: $11 $ea $a9
	and  l                                           ; $6a6d: $a5
	ld   de, $fa19                                   ; $6a6e: $11 $19 $fa
	rst  $38                                         ; $6a71: $ff
	push de                                          ; $6a72: $d5
	adc  e                                           ; $6a73: $8b
	inc  de                                          ; $6a74: $13
	ld   a, [$92b8]                                  ; $6a75: $fa $b8 $92
	ld   de, $fb1e                                   ; $6a78: $11 $1e $fb
	rst  $38                                         ; $6a7b: $ff
	and  e                                           ; $6a7c: $a3
	sbc  d                                           ; $6a7d: $9a
	rla                                              ; $6a7e: $17
	db   $eb                                         ; $6a7f: $eb
	cp   b                                           ; $6a80: $b8
	sub  c                                           ; $6a81: $91
	ld   de, $fc1e                                   ; $6a82: $11 $1e $fc
	rst  $38                                         ; $6a85: $ff
	add  e                                           ; $6a86: $83
	sub  [hl]                                        ; $6a87: $96
	ld   a, [de]                                     ; $6a88: $1a
	ld   [$91a9], a                                  ; $6a89: $ea $a9 $91
	ld   de, $fd1f                                   ; $6a8c: $11 $1f $fd
	rst  $38                                         ; $6a8f: $ff
	ld   [hl], d                                     ; $6a90: $72
	sub  l                                           ; $6a91: $95
	inc  e                                           ; $6a92: $1c
	db   $fc                                         ; $6a93: $fc
	xor  b                                           ; $6a94: $a8
	sub  c                                           ; $6a95: $91
	ld   de, $fd1f                                   ; $6a96: $11 $1f $fd
	rst  $38                                         ; $6a99: $ff
	ld   h, c                                        ; $6a9a: $61
	sub  l                                           ; $6a9b: $95
	ld   e, $fc                                      ; $6a9c: $1e $fc
	xor  b                                           ; $6a9e: $a8
	ld   [hl], c                                     ; $6a9f: $71
	ld   de, $fe0f                                   ; $6aa0: $11 $0f $fe
	rst  $38                                         ; $6aa3: $ff
	ld   h, c                                        ; $6aa4: $61
	sub  l                                           ; $6aa5: $95
	dec  e                                           ; $6aa6: $1d
	db   $ec                                         ; $6aa7: $ec
	sub  a                                           ; $6aa8: $97
	ld   [hl], c                                     ; $6aa9: $71
	ld   de, $fe1f                                   ; $6aaa: $11 $1f $fe
	rst  $38                                         ; $6aad: $ff
	ld   h, c                                        ; $6aae: $61
	sub  [hl]                                        ; $6aaf: $96
	dec  e                                           ; $6ab0: $1d
	db   $fc                                         ; $6ab1: $fc
	sub  a                                           ; $6ab2: $97
	ld   [hl], c                                     ; $6ab3: $71
	ld   de, $fd1f                                   ; $6ab4: $11 $1f $fd
	rst  $38                                         ; $6ab7: $ff
	ld   h, c                                        ; $6ab8: $61
	ld   l, c                                        ; $6ab9: $69
	dec  de                                          ; $6aba: $1b
	db   $fd                                         ; $6abb: $fd
	and  [hl]                                        ; $6abc: $a6
	add  c                                           ; $6abd: $81
	ld   de, $fe1f                                   ; $6abe: $11 $1f $fe
	rst  $38                                         ; $6ac1: $ff
	ld   [hl], c                                     ; $6ac2: $71
	ld   c, d                                        ; $6ac3: $4a
	add  hl, de                                      ; $6ac4: $19
	rst  $38                                         ; $6ac5: $ff
	or   l                                           ; $6ac6: $b5
	add  c                                           ; $6ac7: $81
	ld   de, $ff18                                   ; $6ac8: $11 $18 $ff
	rst  $38                                         ; $6acb: $ff
	pop  bc                                          ; $6acc: $c1
	add  hl, de                                      ; $6acd: $19
	ld   d, e                                        ; $6ace: $53
	rst  $38                                         ; $6acf: $ff
	push af                                          ; $6ad0: $f5
	halt                                             ; $6ad1: $76
	ld   de, rAUD1LEN                                   ; $6ad2: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad5: $cf
	di                                               ; $6ad6: $f3
	inc  de                                          ; $6ad7: $13
	sub  d                                           ; $6ad8: $92
	xor  a                                           ; $6ad9: $af
	ld   a, [$1138]                                  ; $6ada: $fa $38 $11
	ld   de, $fc3f                                   ; $6add: $11 $3f $fc
	cp   $11                                         ; $6ae0: $fe $11
	ld   e, d                                        ; $6ae2: $5a
	ld   c, h                                        ; $6ae3: $4c
	rst  $38                                         ; $6ae4: $ff
	ld   [hl], e                                     ; $6ae5: $73
	add  c                                           ; $6ae6: $81
	ld   de, rAUD1HIGH                                   ; $6ae7: $11 $14 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aea: $cf
	pop  de                                          ; $6aeb: $d1
	ld   d, $a5                                      ; $6aec: $16 $a5
	rst  JumpTable                                         ; $6aee: $df
	push af                                          ; $6aef: $f5
	jr   c, jr_0b9_6b03                              ; $6af0: $38 $11

	ld   de, $fc6f                                   ; $6af2: $11 $6f $fc
	ei                                               ; $6af5: $fb
	ld   de, $5c79                                   ; $6af6: $11 $79 $5c
	rst  $38                                         ; $6af9: $ff
	ld   b, h                                        ; $6afa: $44
	ld   [hl], c                                     ; $6afb: $71
	ld   de, $ff1a                                   ; $6afc: $11 $1a $ff
	rst  $38                                         ; $6aff: $ff
	add  c                                           ; $6b00: $81
	ld   a, [de]                                     ; $6b01: $1a
	halt                                             ; $6b02: $76

jr_0b9_6b03:
	rst  JumpTable                                         ; $6b03: $df
	db   $d3                                         ; $6b04: $d3
	ld   [hl], l                                     ; $6b05: $75
	ld   de, rAUD1LEN                                   ; $6b06: $11 $11 $ff
	rst  JumpTable                                         ; $6b09: $df
	rst  $30                                         ; $6b0a: $f7
	inc  de                                          ; $6b0b: $13
	and  h                                           ; $6b0c: $a4
	ld   a, l                                        ; $6b0d: $7d
	ld   a, [$214a]                                  ; $6b0e: $fa $4a $21
	ld   de, $ff7f                                   ; $6b11: $11 $7f $ff
	db   $fd                                         ; $6b14: $fd
	ld   b, d                                        ; $6b15: $42
	and  l                                           ; $6b16: $a5
	dec  hl                                          ; $6b17: $2b
	ei                                               ; $6b18: $fb
	ld   c, c                                        ; $6b19: $49
	ld   [hl], c                                     ; $6b1a: $71
	ld   de, $ee4f                                   ; $6b1b: $11 $4f $ee
	rst  $38                                         ; $6b1e: $ff
	ld   d, h                                        ; $6b1f: $54
	and  l                                           ; $6b20: $a5
	dec  de                                          ; $6b21: $1b
	call c, $815a                                    ; $6b22: $dc $5a $81
	ld   de, $af6f                                   ; $6b25: $11 $6f $af
	rst  $38                                         ; $6b28: $ff
	ld   e, b                                        ; $6b29: $58
	pop  bc                                          ; $6b2a: $c1
	inc  e                                           ; $6b2b: $1c
	ret                                              ; $6b2c: $c9


	ld   e, l                                        ; $6b2d: $5d
	ld   h, c                                        ; $6b2e: $61
	ld   de, $ae6e                                   ; $6b2f: $11 $6e $ae
	cp   $79                                         ; $6b32: $fe $79
	jp   nz, $b81b                                   ; $6b34: $c2 $1b $b8

	ld   e, h                                        ; $6b37: $5c
	ld   h, c                                        ; $6b38: $61
	ld   de, $8f7e                                   ; $6b39: $11 $7e $8f
	db   $fd                                         ; $6b3c: $fd
	ld   a, e                                        ; $6b3d: $7b
	pop  de                                          ; $6b3e: $d1
	dec  sp                                          ; $6b3f: $3b
	and  a                                           ; $6b40: $a7
	ld   e, l                                        ; $6b41: $5d
	ld   b, c                                        ; $6b42: $41
	ld   de, $8f9e                                   ; $6b43: $11 $9e $8f
	db   $fc                                         ; $6b46: $fc
	adc  l                                           ; $6b47: $8d
	pop  bc                                          ; $6b48: $c1
	ld   e, d                                        ; $6b49: $5a
	add  l                                           ; $6b4a: $85
	ld   l, h                                        ; $6b4b: $6c
	ld   hl, $ad11                                   ; $6b4c: $21 $11 $ad
	sbc  a                                           ; $6b4f: $9f
	ei                                               ; $6b50: $fb
	sbc  [hl]                                        ; $6b51: $9e
	or   c                                           ; $6b52: $b1
	ld   a, e                                        ; $6b53: $7b
	ld   [hl], l                                     ; $6b54: $75
	ld   a, e                                        ; $6b55: $7b
	ld   de, wTitleScreenFrameCounter+1                                   ; $6b56: $11 $11 $cc
	adc  a                                           ; $6b59: $8f
	ld   sp, hl                                      ; $6b5a: $f9
	xor  a                                           ; $6b5b: $af
	sub  c                                           ; $6b5c: $91
	sbc  c                                           ; $6b5d: $99
	ld   h, h                                        ; $6b5e: $64
	sbc  d                                           ; $6b5f: $9a
	ld   de, $d912                                   ; $6b60: $11 $12 $d9
	sbc  a                                           ; $6b63: $9f
	ld   sp, hl                                      ; $6b64: $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b65: $cf
	ld   [hl], d                                     ; $6b66: $72
	cp   b                                           ; $6b67: $b8
	ld   d, h                                        ; $6b68: $54
	and  [hl]                                        ; $6b69: $a6
	ld   de, $d914                                   ; $6b6a: $11 $14 $d9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b6d: $cf
	ld   a, [$46ff]                                  ; $6b6e: $fa $ff $46
	and  [hl]                                        ; $6b71: $a6
	ld   d, l                                        ; $6b72: $55
	sub  e                                           ; $6b73: $93
	ld   de, $c719                                   ; $6b74: $11 $19 $c7
	rst  $28                                         ; $6b77: $ef
	cp   e                                           ; $6b78: $bb
	db   $fd                                         ; $6b79: $fd
	add  hl, sp                                      ; $6b7a: $39
	and  [hl]                                        ; $6b7b: $a6
	ld   b, [hl]                                     ; $6b7c: $46
	sub  c                                           ; $6b7d: $91
	ld   de, $981b                                   ; $6b7e: $11 $1b $98
	rst  $38                                         ; $6b81: $ff
	cp   h                                           ; $6b82: $bc
	ld   sp, hl                                      ; $6b83: $f9
	ld   c, d                                        ; $6b84: $4a
	add  [hl]                                        ; $6b85: $86
	ld   c, b                                        ; $6b86: $48
	ld   h, c                                        ; $6b87: $61
	ld   de, $793c                                   ; $6b88: $11 $3c $79
	rst  $38                                         ; $6b8b: $ff
	xor  [hl]                                        ; $6b8c: $ae
	rst  $30                                         ; $6b8d: $f7
	ld   l, e                                        ; $6b8e: $6b
	ld   [hl], l                                     ; $6b8f: $75
	ld   c, b                                        ; $6b90: $48
	ld   sp, $5b11                                   ; $6b91: $31 $11 $5b
	ld   l, h                                        ; $6b94: $6c
	cp   $cf                                         ; $6b95: $fe $cf
	or   $9a                                         ; $6b97: $f6 $9a
	ld   h, h                                        ; $6b99: $64
	ld   e, b                                        ; $6b9a: $58
	ld   de, $7911                                   ; $6b9b: $11 $11 $79
	ld   l, l                                        ; $6b9e: $6d
	db   $fc                                         ; $6b9f: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba0: $cf
	and  $aa                                         ; $6ba1: $e6 $aa
	ld   [hl], h                                     ; $6ba3: $74
	ld   h, a                                        ; $6ba4: $67
	ld   [de], a                                     ; $6ba5: $12
	ld   de, $5e77                                   ; $6ba6: $11 $77 $5e
	db   $fc                                         ; $6ba9: $fc
	rst  JumpTable                                         ; $6baa: $df
	add  sp, -$46                                    ; $6bab: $e8 $ba
	ld   [hl], h                                     ; $6bad: $74
	ld   [hl], a                                     ; $6bae: $77
	inc  de                                          ; $6baf: $13
	ld   de, $5c77                                   ; $6bb0: $11 $77 $5c
	db   $db                                         ; $6bb3: $db
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bb4: $cf
	ret  c                                           ; $6bb5: $d8

	cp   e                                           ; $6bb6: $bb
	sub  l                                           ; $6bb7: $95
	ld   a, b                                        ; $6bb8: $78
	inc  [hl]                                        ; $6bb9: $34
	ld   [hl-], a                                    ; $6bba: $32
	ld   l, b                                        ; $6bbb: $68
	ld   e, c                                        ; $6bbc: $59
	jp   z, $c99b                                    ; $6bbd: $ca $9b $c9

	sbc  d                                           ; $6bc0: $9a
	sub  a                                           ; $6bc1: $97
	ld   a, c                                        ; $6bc2: $79
	halt                                             ; $6bc3: $76
	halt                                             ; $6bc4: $76
	ld   l, b                                        ; $6bc5: $68
	sub  a                                           ; $6bc6: $97
	adc  c                                           ; $6bc7: $89
	sub  a                                           ; $6bc8: $97
	adc  c                                           ; $6bc9: $89
	ld   [hl], a                                     ; $6bca: $77
	adc  c                                           ; $6bcb: $89
	ld   a, b                                        ; $6bcc: $78
	sbc  b                                           ; $6bcd: $98
	adc  c                                           ; $6bce: $89
	sbc  c                                           ; $6bcf: $99
	adc  d                                           ; $6bd0: $8a
	sbc  b                                           ; $6bd1: $98
	adc  b                                           ; $6bd2: $88
	halt                                             ; $6bd3: $76
	ld   h, [hl]                                     ; $6bd4: $66
	ld   h, a                                        ; $6bd5: $67
	ld   a, b                                        ; $6bd6: $78
	adc  c                                           ; $6bd7: $89
	sbc  c                                           ; $6bd8: $99
	sbc  d                                           ; $6bd9: $9a
	sbc  d                                           ; $6bda: $9a
	xor  c                                           ; $6bdb: $a9
	sbc  c                                           ; $6bdc: $99
	add  a                                           ; $6bdd: $87
	ld   h, [hl]                                     ; $6bde: $66
	ld   h, [hl]                                     ; $6bdf: $66
	ld   h, a                                        ; $6be0: $67
	ld   [hl], a                                     ; $6be1: $77
	adc  b                                           ; $6be2: $88
	sbc  d                                           ; $6be3: $9a
	sbc  d                                           ; $6be4: $9a
	xor  d                                           ; $6be5: $aa
	sbc  c                                           ; $6be6: $99
	sub  a                                           ; $6be7: $97
	halt                                             ; $6be8: $76
	ld   h, [hl]                                     ; $6be9: $66
	ld   h, [hl]                                     ; $6bea: $66
	ld   h, a                                        ; $6beb: $67
	ld   a, b                                        ; $6bec: $78
	sbc  c                                           ; $6bed: $99
	xor  d                                           ; $6bee: $aa
	xor  d                                           ; $6bef: $aa
	xor  c                                           ; $6bf0: $a9
	sbc  b                                           ; $6bf1: $98
	ld   [hl], a                                     ; $6bf2: $77
	ld   h, [hl]                                     ; $6bf3: $66
	ld   h, [hl]                                     ; $6bf4: $66
	ld   h, a                                        ; $6bf5: $67
	ld   [hl], a                                     ; $6bf6: $77
	adc  b                                           ; $6bf7: $88
	sbc  c                                           ; $6bf8: $99
	xor  d                                           ; $6bf9: $aa
	xor  c                                           ; $6bfa: $a9
	sbc  c                                           ; $6bfb: $99
	add  a                                           ; $6bfc: $87
	halt                                             ; $6bfd: $76
	ld   h, [hl]                                     ; $6bfe: $66
	ld   h, [hl]                                     ; $6bff: $66
	ld   [hl], a                                     ; $6c00: $77
	adc  c                                           ; $6c01: $89
	sbc  d                                           ; $6c02: $9a
	sbc  c                                           ; $6c03: $99
	sbc  d                                           ; $6c04: $9a
	sbc  b                                           ; $6c05: $98
	add  a                                           ; $6c06: $87
	ld   [hl], a                                     ; $6c07: $77
	ld   h, [hl]                                     ; $6c08: $66
	ld   h, [hl]                                     ; $6c09: $66
	ld   [hl], a                                     ; $6c0a: $77
	ld   a, b                                        ; $6c0b: $78
	adc  c                                           ; $6c0c: $89
	xor  d                                           ; $6c0d: $aa
	sbc  d                                           ; $6c0e: $9a
	sbc  c                                           ; $6c0f: $99
	sbc  b                                           ; $6c10: $98
	ld   [hl], a                                     ; $6c11: $77
	ld   [hl], a                                     ; $6c12: $77
	halt                                             ; $6c13: $76
	ld   [hl], a                                     ; $6c14: $77
	ld   a, b                                        ; $6c15: $78
	sbc  b                                           ; $6c16: $98
	sbc  c                                           ; $6c17: $99
	xor  d                                           ; $6c18: $aa
	sbc  c                                           ; $6c19: $99
	adc  b                                           ; $6c1a: $88
	add  a                                           ; $6c1b: $87
	ld   [hl], a                                     ; $6c1c: $77
	ld   [hl], a                                     ; $6c1d: $77
	ld   [hl], a                                     ; $6c1e: $77
	ld   [hl], a                                     ; $6c1f: $77
	adc  c                                           ; $6c20: $89
	adc  c                                           ; $6c21: $89
	sbc  c                                           ; $6c22: $99
	sbc  c                                           ; $6c23: $99
	adc  c                                           ; $6c24: $89
	sbc  b                                           ; $6c25: $98
	ld   [hl], a                                     ; $6c26: $77
	ld   [hl], a                                     ; $6c27: $77
	ld   [hl], a                                     ; $6c28: $77
	ld   [hl], a                                     ; $6c29: $77
	adc  b                                           ; $6c2a: $88
	adc  c                                           ; $6c2b: $89
	adc  b                                           ; $6c2c: $88
	adc  b                                           ; $6c2d: $88
	adc  c                                           ; $6c2e: $89
	adc  c                                           ; $6c2f: $89
	adc  b                                           ; $6c30: $88
	add  a                                           ; $6c31: $87
	ld   [hl], a                                     ; $6c32: $77
	ld   [hl], a                                     ; $6c33: $77
	ld   a, b                                        ; $6c34: $78
	adc  b                                           ; $6c35: $88
	sbc  c                                           ; $6c36: $99
	sbc  c                                           ; $6c37: $99
	sbc  c                                           ; $6c38: $99
	sbc  c                                           ; $6c39: $99
	sbc  b                                           ; $6c3a: $98
	adc  b                                           ; $6c3b: $88
	adc  b                                           ; $6c3c: $88
	add  a                                           ; $6c3d: $87
	ld   a, b                                        ; $6c3e: $78
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
	ld   a, b                                        ; $6c61: $78
	adc  b                                           ; $6c62: $88
	adc  b                                           ; $6c63: $88
	adc  c                                           ; $6c64: $89
	adc  b                                           ; $6c65: $88
	sbc  b                                           ; $6c66: $98
	adc  c                                           ; $6c67: $89
	sbc  b                                           ; $6c68: $98
	adc  b                                           ; $6c69: $88
	adc  b                                           ; $6c6a: $88
	adc  b                                           ; $6c6b: $88
	adc  b                                           ; $6c6c: $88
	adc  b                                           ; $6c6d: $88
	adc  b                                           ; $6c6e: $88
	adc  b                                           ; $6c6f: $88
	adc  b                                           ; $6c70: $88
	adc  c                                           ; $6c71: $89
	adc  b                                           ; $6c72: $88
	adc  b                                           ; $6c73: $88
	adc  b                                           ; $6c74: $88
	adc  b                                           ; $6c75: $88
	ld   [hl], a                                     ; $6c76: $77
	adc  b                                           ; $6c77: $88
	adc  b                                           ; $6c78: $88
	adc  b                                           ; $6c79: $88
	adc  b                                           ; $6c7a: $88
	adc  b                                           ; $6c7b: $88
	sbc  b                                           ; $6c7c: $98
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
	sbc  c                                           ; $6c8a: $99
	sbc  b                                           ; $6c8b: $98
	adc  b                                           ; $6c8c: $88
	ld   a, b                                        ; $6c8d: $78
	adc  b                                           ; $6c8e: $88
	adc  b                                           ; $6c8f: $88
	ld   a, b                                        ; $6c90: $78
	adc  b                                           ; $6c91: $88
	sbc  b                                           ; $6c92: $98
	adc  b                                           ; $6c93: $88
	adc  b                                           ; $6c94: $88
	adc  c                                           ; $6c95: $89
	sbc  b                                           ; $6c96: $98
	adc  b                                           ; $6c97: $88
	ld   a, b                                        ; $6c98: $78
	adc  b                                           ; $6c99: $88
	adc  b                                           ; $6c9a: $88
	adc  b                                           ; $6c9b: $88
	adc  b                                           ; $6c9c: $88
	adc  b                                           ; $6c9d: $88
	adc  b                                           ; $6c9e: $88
	adc  b                                           ; $6c9f: $88
	add  a                                           ; $6ca0: $87
	adc  b                                           ; $6ca1: $88
	ld   [hl], a                                     ; $6ca2: $77
	ld   [hl], a                                     ; $6ca3: $77
	ld   [hl], a                                     ; $6ca4: $77
	add  a                                           ; $6ca5: $87
	adc  c                                           ; $6ca6: $89
	sbc  c                                           ; $6ca7: $99
	xor  d                                           ; $6ca8: $aa
	sbc  c                                           ; $6ca9: $99
	add  a                                           ; $6caa: $87
	ld   h, [hl]                                     ; $6cab: $66
	ld   h, l                                        ; $6cac: $65
	ld   h, l                                        ; $6cad: $65
	ld   h, a                                        ; $6cae: $67
	ld   l, b                                        ; $6caf: $68
	sbc  c                                           ; $6cb0: $99
	xor  e                                           ; $6cb1: $ab
	res  7, d                                        ; $6cb2: $cb $ba
	sbc  c                                           ; $6cb4: $99
	halt                                             ; $6cb5: $76
	ld   sp, $1655                                   ; $6cb6: $31 $55 $16
	add  [hl]                                        ; $6cb9: $86
	sbc  e                                           ; $6cba: $9b
	cp   c                                           ; $6cbb: $b9
	db   $dd                                         ; $6cbc: $dd
	cp   h                                           ; $6cbd: $bc
	cp   e                                           ; $6cbe: $bb
	ld   a, c                                        ; $6cbf: $79
	add  l                                           ; $6cc0: $85
	ld   d, d                                        ; $6cc1: $52
	ld   d, $81                                      ; $6cc2: $16 $81
	sbc  e                                           ; $6cc4: $9b
	ld   l, c                                        ; $6cc5: $69
	rst  $38                                         ; $6cc6: $ff
	adc  a                                           ; $6cc7: $8f
	ld   sp, hl                                      ; $6cc8: $f9
	cp   e                                           ; $6cc9: $bb
	and  h                                           ; $6cca: $a4
	ld   [hl], a                                     ; $6ccb: $77
	ld   [hl+], a                                    ; $6ccc: $22
	ld   de, $2e83                                   ; $6ccd: $11 $83 $2e
	xor  b                                           ; $6cd0: $a8
	rst  JumpTable                                         ; $6cd1: $df
	set  7, d                                        ; $6cd2: $cb $fa
	xor  b                                           ; $6cd4: $a8
	sub  [hl]                                        ; $6cd5: $96
	scf                                              ; $6cd6: $37
	ld   sp, $9511                                   ; $6cd7: $31 $11 $95
	cpl                                              ; $6cda: $2f
	ret                                              ; $6cdb: $c9


	rst  JumpTable                                         ; $6cdc: $df
	reti                                             ; $6cdd: $d9


	ld   a, [$7679]                                  ; $6cde: $fa $79 $76
	daa                                              ; $6ce1: $27
	ld   b, c                                        ; $6ce2: $41
	ld   de, $2f86                                   ; $6ce3: $11 $86 $2f
	ret                                              ; $6ce6: $c9


	rst  JumpTable                                         ; $6ce7: $df
	add  sp, -$07                                    ; $6ce8: $e8 $f9
	ld   l, b                                        ; $6cea: $68
	ld   [hl], a                                     ; $6ceb: $77
	daa                                              ; $6cec: $27
	ld   d, c                                        ; $6ced: $51
	ld   bc, $3f86                                   ; $6cee: $01 $86 $3f
	jp   z, $d8df                                    ; $6cf1: $ca $df $d8

	ld   a, [$7669]                                  ; $6cf4: $fa $69 $76
	scf                                              ; $6cf7: $37
	ld   h, c                                        ; $6cf8: $61
	ld   hl, $3d79                                   ; $6cf9: $21 $79 $3d
	ld   [$f6cf], a                                  ; $6cfc: $ea $cf $f6
	call c, Call_0b9_7748                            ; $6cff: $dc $48 $77
	scf                                              ; $6d02: $37
	add  c                                           ; $6d03: $81
	ld   hl, $4949                                   ; $6d04: $21 $49 $49
	ld   a, [$f9ae]                                  ; $6d07: $fa $ae $f9
	xor  [hl]                                        ; $6d0a: $ae
	ld   d, a                                        ; $6d0b: $57
	ld   [hl], a                                     ; $6d0c: $77
	ld   d, l                                        ; $6d0d: $55
	and  h                                           ; $6d0e: $a4
	ld   [hl-], a                                    ; $6d0f: $32
	add  hl, de                                      ; $6d10: $19
	ld   [hl], l                                     ; $6d11: $75
	db   $dd                                         ; $6d12: $dd
	sbc  h                                           ; $6d13: $9c
	db   $fd                                         ; $6d14: $fd
	ld   l, [hl]                                     ; $6d15: $6e
	and  l                                           ; $6d16: $a5
	add  a                                           ; $6d17: $87
	ld   [hl], h                                     ; $6d18: $74
	sub  a                                           ; $6d19: $97
	inc  de                                          ; $6d1a: $13
	inc  de                                          ; $6d1b: $13
	and  l                                           ; $6d1c: $a5
	adc  [hl]                                        ; $6d1d: $8e
	cp   e                                           ; $6d1e: $bb
	rst  $28                                         ; $6d1f: $ef
	sbc  c                                           ; $6d20: $99
	push hl                                          ; $6d21: $e5
	halt                                             ; $6d22: $76
	add  [hl]                                        ; $6d23: $86
	ld   e, e                                        ; $6d24: $5b
	ld   b, e                                        ; $6d25: $43
	ld   hl, $5b58                                   ; $6d26: $21 $58 $5b
	ei                                               ; $6d29: $fb
	cp   a                                           ; $6d2a: $bf
	rst  $30                                         ; $6d2b: $f7
	call z, Call_0b9_7947                            ; $6d2c: $cc $47 $79
	ld   b, a                                        ; $6d2f: $47
	and  h                                           ; $6d30: $a4
	ld   b, d                                        ; $6d31: $42
	dec  d                                           ; $6d32: $15
	sub  l                                           ; $6d33: $95
	cp   l                                           ; $6d34: $bd
	xor  h                                           ; $6d35: $ac
	cp   $8b                                         ; $6d36: $fe $8b
	and  l                                           ; $6d38: $a5
	ld   h, [hl]                                     ; $6d39: $66
	add  l                                           ; $6d3a: $85
	adc  c                                           ; $6d3b: $89
	ld   b, h                                        ; $6d3c: $44
	ld   de, $5c68                                   ; $6d3d: $11 $68 $5c
	db   $eb                                         ; $6d40: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d41: $cf
	rst  $30                                         ; $6d42: $f7
	cp   d                                           ; $6d43: $ba
	ld   b, [hl]                                     ; $6d44: $46
	ld   a, c                                        ; $6d45: $79
	ld   e, c                                        ; $6d46: $59
	or   h                                           ; $6d47: $b4
	ld   b, d                                        ; $6d48: $42
	inc  d                                           ; $6d49: $14
	sub  l                                           ; $6d4a: $95
	xor  l                                           ; $6d4b: $ad
	call z, $8aef                                    ; $6d4c: $cc $ef $8a
	or   l                                           ; $6d4f: $b5
	ld   h, [hl]                                     ; $6d50: $66
	sub  [hl]                                        ; $6d51: $96
	adc  d                                           ; $6d52: $8a
	ld   d, h                                        ; $6d53: $54
	ld   sp, $6727                                   ; $6d54: $31 $27 $67
	db   $ec                                         ; $6d57: $ec
	call $9bfb                                       ; $6d58: $cd $fb $9b
	ld   h, [hl]                                     ; $6d5b: $66
	ld   l, b                                        ; $6d5c: $68
	halt                                             ; $6d5d: $76
	or   a                                           ; $6d5e: $b7
	ld   b, h                                        ; $6d5f: $44
	ld   de, $5c66                                   ; $6d60: $11 $66 $5c
	call z, $c8ef                                    ; $6d63: $cc $ef $c8
	or   a                                           ; $6d66: $b7
	ld   d, [hl]                                     ; $6d67: $56
	ld   a, c                                        ; $6d68: $79
	ld   l, e                                        ; $6d69: $6b
	sub  h                                           ; $6d6a: $94
	ld   b, d                                        ; $6d6b: $42
	inc  de                                          ; $6d6c: $13
	add  l                                           ; $6d6d: $85
	adc  l                                           ; $6d6e: $8d
	call z, $9aff                                    ; $6d6f: $cc $ff $9a
	and  l                                           ; $6d72: $a5
	ld   d, a                                        ; $6d73: $57
	sub  a                                           ; $6d74: $97
	adc  e                                           ; $6d75: $8b
	ld   h, e                                        ; $6d76: $63
	ld   sp, $6616                                   ; $6d77: $31 $16 $66
	call $fccd                                       ; $6d7a: $cd $cd $fc
	sbc  d                                           ; $6d7d: $9a
	ld   [hl], l                                     ; $6d7e: $75
	ld   l, b                                        ; $6d7f: $68
	sub  a                                           ; $6d80: $97
	xor  c                                           ; $6d81: $a9
	ld   b, h                                        ; $6d82: $44
	ld   hl, $5727                                   ; $6d83: $21 $27 $57
	db   $dd                                         ; $6d86: $dd
	rst  JumpTable                                         ; $6d87: $df
	ld   a, [$6599]                                  ; $6d88: $fa $99 $65
	ld   a, c                                        ; $6d8b: $79
	sbc  b                                           ; $6d8c: $98
	or   a                                           ; $6d8d: $b7
	ld   b, h                                        ; $6d8e: $44
	ld   de, $5a36                                   ; $6d8f: $11 $36 $5a
	db   $dd                                         ; $6d92: $dd
	db   $fd                                         ; $6d93: $fd
	ld   sp, hl                                      ; $6d94: $f9
	adc  b                                           ; $6d95: $88
	ld   h, [hl]                                     ; $6d96: $66
	ld   l, e                                        ; $6d97: $6b
	adc  b                                           ; $6d98: $88
	or   l                                           ; $6d99: $b5
	ld   d, d                                        ; $6d9a: $52
	ld   de, $5c46                                   ; $6d9b: $11 $46 $5c
	db   $ec                                         ; $6d9e: $ec
	rst  $38                                         ; $6d9f: $ff
	reti                                             ; $6da0: $d9


	xor  b                                           ; $6da1: $a8
	ld   d, [hl]                                     ; $6da2: $56
	xor  c                                           ; $6da3: $a9
	adc  d                                           ; $6da4: $8a
	sub  h                                           ; $6da5: $94
	ld   sp, $5412                                   ; $6da6: $31 $12 $54
	sbc  l                                           ; $6da9: $9d
	call $abff                                       ; $6daa: $cd $ff $ab
	sub  l                                           ; $6dad: $95
	ld   l, b                                        ; $6dae: $68
	sbc  b                                           ; $6daf: $98
	sbc  d                                           ; $6db0: $9a
	ld   h, h                                        ; $6db1: $64
	ld   sp, $5514                                   ; $6db2: $31 $14 $55
	xor  l                                           ; $6db5: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6db6: $cf
	db   $fc                                         ; $6db7: $fc
	sbc  e                                           ; $6db8: $9b
	sub  l                                           ; $6db9: $95
	ld   l, c                                        ; $6dba: $69
	adc  b                                           ; $6dbb: $88
	xor  c                                           ; $6dbc: $a9
	ld   d, e                                        ; $6dbd: $53
	ld   hl, $5715                                   ; $6dbe: $21 $15 $57
	call $fcde                                       ; $6dc1: $cd $de $fc
	sbc  c                                           ; $6dc4: $99
	halt                                             ; $6dc5: $76
	ld   a, c                                        ; $6dc6: $79
	sbc  c                                           ; $6dc7: $99
	xor  b                                           ; $6dc8: $a8
	ld   d, h                                        ; $6dc9: $54
	ld   hl, $5715                                   ; $6dca: $21 $15 $57
	call $eccf                                       ; $6dcd: $cd $cf $ec
	xor  c                                           ; $6dd0: $a9
	halt                                             ; $6dd1: $76
	sbc  c                                           ; $6dd2: $99
	sbc  c                                           ; $6dd3: $99
	sub  a                                           ; $6dd4: $97
	ld   b, e                                        ; $6dd5: $43
	ld   de, $5835                                   ; $6dd6: $11 $35 $58
	call c, $eacf                                    ; $6dd9: $dc $cf $ea
	cp   c                                           ; $6ddc: $b9
	ld   [hl], a                                     ; $6ddd: $77
	sbc  b                                           ; $6dde: $98
	sbc  c                                           ; $6ddf: $99
	sub  [hl]                                        ; $6de0: $96
	inc  sp                                          ; $6de1: $33
	ld   [de], a                                     ; $6de2: $12
	ld   h, h                                        ; $6de3: $64
	ld   e, d                                        ; $6de4: $5a
	cp   e                                           ; $6de5: $bb
	db   $dd                                         ; $6de6: $dd
	call z, $87b9                                    ; $6de7: $cc $b9 $87
	ld   a, b                                        ; $6dea: $78
	add  a                                           ; $6deb: $87
	add  [hl]                                        ; $6dec: $86
	ld   d, d                                        ; $6ded: $52
	ld   [de], a                                     ; $6dee: $12
	ld   b, l                                        ; $6def: $45
	ld   e, b                                        ; $6df0: $58
	cp   h                                           ; $6df1: $bc
	rst  JumpTable                                         ; $6df2: $df
	db   $ec                                         ; $6df3: $ec
	cp   d                                           ; $6df4: $ba
	add  a                                           ; $6df5: $87
	adc  b                                           ; $6df6: $88
	add  a                                           ; $6df7: $87
	halt                                             ; $6df8: $76
	ld   b, h                                        ; $6df9: $44
	ld   [hl+], a                                    ; $6dfa: $22
	ld   d, l                                        ; $6dfb: $55
	ld   e, b                                        ; $6dfc: $58
	cp   h                                           ; $6dfd: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dfe: $cf
	db   $eb                                         ; $6dff: $eb
	xor  d                                           ; $6e00: $aa
	sub  a                                           ; $6e01: $97
	adc  c                                           ; $6e02: $89
	ld   [hl], a                                     ; $6e03: $77
	add  a                                           ; $6e04: $87
	ld   d, h                                        ; $6e05: $54
	ld   [hl-], a                                    ; $6e06: $32
	ld   b, [hl]                                     ; $6e07: $46
	ld   d, a                                        ; $6e08: $57
	xor  e                                           ; $6e09: $ab
	call $baec                                       ; $6e0a: $cd $ec $ba
	sbc  b                                           ; $6e0d: $98
	ld   a, b                                        ; $6e0e: $78
	adc  b                                           ; $6e0f: $88
	add  a                                           ; $6e10: $87
	ld   d, h                                        ; $6e11: $54
	ld   [hl-], a                                    ; $6e12: $32
	dec  [hl]                                        ; $6e13: $35
	ld   d, [hl]                                     ; $6e14: $56
	sbc  e                                           ; $6e15: $9b
	call z, $bbde                                    ; $6e16: $cc $de $bb
	xor  c                                           ; $6e19: $a9
	ld   a, b                                        ; $6e1a: $78
	add  a                                           ; $6e1b: $87
	adc  b                                           ; $6e1c: $88
	ld   h, l                                        ; $6e1d: $65
	ld   d, e                                        ; $6e1e: $53
	dec  [hl]                                        ; $6e1f: $35
	ld   h, l                                        ; $6e20: $65
	ld   a, c                                        ; $6e21: $79
	xor  e                                           ; $6e22: $ab
	call $aadc                                       ; $6e23: $cd $dc $aa
	adc  b                                           ; $6e26: $88
	sbc  c                                           ; $6e27: $99
	adc  b                                           ; $6e28: $88
	halt                                             ; $6e29: $76
	ld   d, h                                        ; $6e2a: $54
	ld   b, e                                        ; $6e2b: $43
	ld   d, [hl]                                     ; $6e2c: $56
	ld   d, a                                        ; $6e2d: $57
	sbc  d                                           ; $6e2e: $9a
	cp   e                                           ; $6e2f: $bb
	db   $db                                         ; $6e30: $db
	cp   d                                           ; $6e31: $ba
	xor  c                                           ; $6e32: $a9
	adc  b                                           ; $6e33: $88
	add  a                                           ; $6e34: $87
	ld   [hl], a                                     ; $6e35: $77
	ld   h, [hl]                                     ; $6e36: $66
	ld   h, l                                        ; $6e37: $65
	ld   d, l                                        ; $6e38: $55
	halt                                             ; $6e39: $76
	ld   a, b                                        ; $6e3a: $78
	sbc  c                                           ; $6e3b: $99
	xor  e                                           ; $6e3c: $ab
	xor  e                                           ; $6e3d: $ab
	xor  e                                           ; $6e3e: $ab
	xor  c                                           ; $6e3f: $a9
	adc  b                                           ; $6e40: $88
	ld   [hl], a                                     ; $6e41: $77
	ld   [hl], a                                     ; $6e42: $77
	halt                                             ; $6e43: $76
	ld   h, [hl]                                     ; $6e44: $66
	ld   h, [hl]                                     ; $6e45: $66
	ld   [hl], a                                     ; $6e46: $77
	ld   [hl], a                                     ; $6e47: $77
	adc  b                                           ; $6e48: $88
	adc  d                                           ; $6e49: $8a
	xor  d                                           ; $6e4a: $aa
	xor  c                                           ; $6e4b: $a9
	sbc  b                                           ; $6e4c: $98
	add  a                                           ; $6e4d: $87
	ld   [hl], a                                     ; $6e4e: $77
	adc  b                                           ; $6e4f: $88
	ld   [hl], a                                     ; $6e50: $77
	ld   a, b                                        ; $6e51: $78
	ld   [hl], a                                     ; $6e52: $77
	add  a                                           ; $6e53: $87
	ld   a, b                                        ; $6e54: $78
	ld   [hl], a                                     ; $6e55: $77
	sbc  b                                           ; $6e56: $98
	ld   a, c                                        ; $6e57: $79
	sbc  c                                           ; $6e58: $99
	adc  c                                           ; $6e59: $89
	add  a                                           ; $6e5a: $87
	adc  b                                           ; $6e5b: $88
	adc  b                                           ; $6e5c: $88
	sbc  b                                           ; $6e5d: $98
	adc  b                                           ; $6e5e: $88
	adc  b                                           ; $6e5f: $88
	adc  b                                           ; $6e60: $88
	adc  b                                           ; $6e61: $88
	adc  b                                           ; $6e62: $88
	adc  b                                           ; $6e63: $88
	ld   a, b                                        ; $6e64: $78
	add  a                                           ; $6e65: $87
	adc  b                                           ; $6e66: $88
	adc  b                                           ; $6e67: $88
	adc  b                                           ; $6e68: $88
	adc  c                                           ; $6e69: $89
	sbc  b                                           ; $6e6a: $98
	adc  b                                           ; $6e6b: $88
	adc  b                                           ; $6e6c: $88
	adc  b                                           ; $6e6d: $88
	adc  b                                           ; $6e6e: $88
	sbc  b                                           ; $6e6f: $98
	adc  b                                           ; $6e70: $88
	adc  b                                           ; $6e71: $88
	ld   a, b                                        ; $6e72: $78
	adc  b                                           ; $6e73: $88
	adc  c                                           ; $6e74: $89
	sbc  b                                           ; $6e75: $98
	sbc  c                                           ; $6e76: $99
	adc  b                                           ; $6e77: $88
	adc  b                                           ; $6e78: $88
	adc  b                                           ; $6e79: $88
	sbc  c                                           ; $6e7a: $99
	adc  b                                           ; $6e7b: $88
	adc  b                                           ; $6e7c: $88
	adc  b                                           ; $6e7d: $88
	ld   a, b                                        ; $6e7e: $78
	adc  b                                           ; $6e7f: $88
	adc  c                                           ; $6e80: $89
	sbc  b                                           ; $6e81: $98
	adc  c                                           ; $6e82: $89
	sbc  b                                           ; $6e83: $98
	adc  c                                           ; $6e84: $89
	adc  b                                           ; $6e85: $88
	sbc  b                                           ; $6e86: $98
	adc  b                                           ; $6e87: $88
	adc  b                                           ; $6e88: $88
	ld   a, b                                        ; $6e89: $78
	add  a                                           ; $6e8a: $87
	adc  c                                           ; $6e8b: $89
	sbc  b                                           ; $6e8c: $98
	adc  b                                           ; $6e8d: $88
	sbc  b                                           ; $6e8e: $98
	adc  b                                           ; $6e8f: $88
	sbc  b                                           ; $6e90: $98
	sbc  b                                           ; $6e91: $98
	adc  b                                           ; $6e92: $88
	sbc  c                                           ; $6e93: $99
	add  a                                           ; $6e94: $87
	adc  b                                           ; $6e95: $88
	ld   a, b                                        ; $6e96: $78
	adc  b                                           ; $6e97: $88
	adc  b                                           ; $6e98: $88
	adc  b                                           ; $6e99: $88
	adc  b                                           ; $6e9a: $88
	adc  b                                           ; $6e9b: $88
	adc  b                                           ; $6e9c: $88
	sbc  b                                           ; $6e9d: $98
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
	sbc  c                                           ; $6fd8: $99
	sub  [hl]                                        ; $6fd9: $96
	ld   l, h                                        ; $6fda: $6c
	and  d                                           ; $6fdb: $a2
	ld   e, l                                        ; $6fdc: $5d
	or   [hl]                                        ; $6fdd: $b6
	ld   c, e                                        ; $6fde: $4b
	or   e                                           ; $6fdf: $b3
	ld   c, l                                        ; $6fe0: $4d
	or   h                                           ; $6fe1: $b4
	ld   a, d                                        ; $6fe2: $7a
	xor  d                                           ; $6fe3: $aa
	ld   h, [hl]                                     ; $6fe4: $66
	cp   d                                           ; $6fe5: $ba
	ld   b, a                                        ; $6fe6: $47
	or   a                                           ; $6fe7: $b7
	ld   c, b                                        ; $6fe8: $48
	and  [hl]                                        ; $6fe9: $a6
	ld   l, b                                        ; $6fea: $68
	sbc  e                                           ; $6feb: $9b
	ld   h, l                                        ; $6fec: $65
	xor  d                                           ; $6fed: $aa
	ld   h, a                                        ; $6fee: $67
	xor  c                                           ; $6fef: $a9
	adc  b                                           ; $6ff0: $88
	adc  c                                           ; $6ff1: $89
	ld   a, c                                        ; $6ff2: $79
	sub  [hl]                                        ; $6ff3: $96
	ld   e, c                                        ; $6ff4: $59
	push bc                                          ; $6ff5: $c5
	ld   c, d                                        ; $6ff6: $4a
	sub  l                                           ; $6ff7: $95
	ld   a, e                                        ; $6ff8: $7b
	add  a                                           ; $6ff9: $87
	xor  e                                           ; $6ffa: $ab
	adc  b                                           ; $6ffb: $88
	sbc  c                                           ; $6ffc: $99
	adc  c                                           ; $6ffd: $89
	add  a                                           ; $6ffe: $87
	ld   d, a                                        ; $6fff: $57
	add  [hl]                                        ; $7000: $86
	ld   [hl], a                                     ; $7001: $77
	adc  c                                           ; $7002: $89
	sbc  c                                           ; $7003: $99
	sub  a                                           ; $7004: $97
	adc  b                                           ; $7005: $88
	add  a                                           ; $7006: $87
	ld   a, b                                        ; $7007: $78
	ld   h, [hl]                                     ; $7008: $66
	ld   [hl], a                                     ; $7009: $77
	adc  b                                           ; $700a: $88
	sbc  b                                           ; $700b: $98
	ld   a, c                                        ; $700c: $79
	ld   a, b                                        ; $700d: $78
	sbc  c                                           ; $700e: $99
	sbc  b                                           ; $700f: $98
	add  a                                           ; $7010: $87
	ld   h, [hl]                                     ; $7011: $66
	ld   h, l                                        ; $7012: $65
	ld   h, [hl]                                     ; $7013: $66
	ld   h, l                                        ; $7014: $65
	ld   h, a                                        ; $7015: $67
	sbc  c                                           ; $7016: $99
	xor  h                                           ; $7017: $ac
	db   $db                                         ; $7018: $db
	cp   d                                           ; $7019: $ba
	sbc  c                                           ; $701a: $99
	ld   [hl], a                                     ; $701b: $77
	ld   h, l                                        ; $701c: $65
	ld   sp, $5711                                   ; $701d: $31 $11 $57
	ld   l, l                                        ; $7020: $6d
	db   $fd                                         ; $7021: $fd
	rst  $28                                         ; $7022: $ef
	jp   c, $9999                                    ; $7023: $da $99 $99

	sbc  c                                           ; $7026: $99
	add  [hl]                                        ; $7027: $86
	ld   h, l                                        ; $7028: $65
	ld   sp, $7711                                   ; $7029: $31 $11 $77
	adc  a                                           ; $702c: $8f
	cp   $fe                                         ; $702d: $fe $fe
	cp   c                                           ; $702f: $b9
	sbc  c                                           ; $7030: $99
	sbc  d                                           ; $7031: $9a
	xor  c                                           ; $7032: $a9
	ld   [hl], h                                     ; $7033: $74
	ld   b, d                                        ; $7034: $42
	ld   de, $8a17                                   ; $7035: $11 $17 $8a
	rst  $38                                         ; $7038: $ff
	cp   $d9                                         ; $7039: $fe $d9
	sub  a                                           ; $703b: $97
	sbc  d                                           ; $703c: $9a
	cp   d                                           ; $703d: $ba
	add  a                                           ; $703e: $87
	inc  sp                                          ; $703f: $33
	ld   de, $8a11                                   ; $7040: $11 $11 $8a
	rst  JumpTable                                         ; $7043: $df
	rst  $38                                         ; $7044: $ff
	db   $db                                         ; $7045: $db
	adc  b                                           ; $7046: $88
	sbc  c                                           ; $7047: $99
	cp   d                                           ; $7048: $ba
	sub  a                                           ; $7049: $97
	ld   d, e                                        ; $704a: $53
	ld   de, $3a11                                   ; $704b: $11 $11 $3a
	adc  $ff                                         ; $704e: $ce $ff
	db   $eb                                         ; $7050: $eb
	add  a                                           ; $7051: $87
	sbc  c                                           ; $7052: $99
	xor  d                                           ; $7053: $aa
	cp   c                                           ; $7054: $b9
	ld   d, h                                        ; $7055: $54
	ld   hl, $1611                                   ; $7056: $21 $11 $16
	sbc  $ed                                         ; $7059: $de $ed
	db   $fc                                         ; $705b: $fc
	adc  b                                           ; $705c: $88
	adc  d                                           ; $705d: $8a
	sbc  d                                           ; $705e: $9a
	cp   d                                           ; $705f: $ba
	ld   h, h                                        ; $7060: $64
	ld   b, d                                        ; $7061: $42
	ld   hl, $9e12                                   ; $7062: $21 $12 $9e
	xor  $fe                                         ; $7065: $ee $fe
	sbc  b                                           ; $7067: $98
	ld   a, c                                        ; $7068: $79
	xor  d                                           ; $7069: $aa
	cp   c                                           ; $706a: $b9
	add  h                                           ; $706b: $84
	inc  sp                                          ; $706c: $33
	inc  sp                                          ; $706d: $33
	ld   de, $dd5c                                   ; $706e: $11 $5c $dd
	sbc  $d8                                         ; $7071: $de $d8
	sbc  b                                           ; $7073: $98
	sbc  c                                           ; $7074: $99
	xor  e                                           ; $7075: $ab
	sub  a                                           ; $7076: $97
	ld   b, h                                        ; $7077: $44
	inc  sp                                          ; $7078: $33
	ld   de, $fc29                                   ; $7079: $11 $29 $fc
	db   $dd                                         ; $707c: $dd
	add  sp, $7a                                     ; $707d: $e8 $7a
	sbc  e                                           ; $707f: $9b
	xor  e                                           ; $7080: $ab
	and  a                                           ; $7081: $a7
	ld   b, e                                        ; $7082: $43
	ld   b, h                                        ; $7083: $44
	ld   b, e                                        ; $7084: $43
	inc  bc                                          ; $7085: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7086: $cf
	xor  e                                           ; $7087: $ab
	db   $fd                                         ; $7088: $fd
	ld   a, b                                        ; $7089: $78
	sbc  d                                           ; $708a: $9a
	sbc  c                                           ; $708b: $99
	sbc  c                                           ; $708c: $99
	ld   [hl], h                                     ; $708d: $74
	ld   b, h                                        ; $708e: $44
	ld   b, e                                        ; $708f: $43
	ld   de, $da6f                                   ; $7090: $11 $6f $da
	adc  $96                                         ; $7093: $ce $96
	xor  d                                           ; $7095: $aa
	cp   e                                           ; $7096: $bb
	xor  d                                           ; $7097: $aa
	ld   h, l                                        ; $7098: $65
	ld   b, l                                        ; $7099: $45
	ld   d, l                                        ; $709a: $55
	ld   b, d                                        ; $709b: $42
	rla                                              ; $709c: $17
	call c, $fabe                                    ; $709d: $dc $be $fa
	ld   a, c                                        ; $70a0: $79
	sbc  d                                           ; $70a1: $9a
	adc  d                                           ; $70a2: $8a
	xor  b                                           ; $70a3: $a8
	ld   d, h                                        ; $70a4: $54
	ld   d, l                                        ; $70a5: $55
	ld   b, e                                        ; $70a6: $43
	ld   [hl+], a                                    ; $70a7: $22
	adc  [hl]                                        ; $70a8: $8e
	db   $eb                                         ; $70a9: $eb
	adc  $87                                         ; $70aa: $ce $87
	adc  e                                           ; $70ac: $8b
	jp   z, Jump_0b9_74a8                            ; $70ad: $ca $a8 $74

	dec  [hl]                                        ; $70b0: $35
	ld   h, l                                        ; $70b1: $65
	ld   b, d                                        ; $70b2: $42
	ld   a, [hl+]                                    ; $70b3: $2a
	jp   hl                                          ; $70b4: $e9


	sbc  a                                           ; $70b5: $9f
	ld   hl, sp+$7b                                  ; $70b6: $f8 $7b
	xor  b                                           ; $70b8: $a8
	ld   a, c                                        ; $70b9: $79
	and  a                                           ; $70ba: $a7
	ld   d, l                                        ; $70bb: $55
	ld   d, h                                        ; $70bc: $54
	ld   b, e                                        ; $70bd: $43
	inc  d                                           ; $70be: $14
	call z, $fdab                                    ; $70bf: $cc $ab $fd
	ld   a, c                                        ; $70c2: $79
	sbc  e                                           ; $70c3: $9b
	xor  b                                           ; $70c4: $a8
	and  a                                           ; $70c5: $a7
	ld   h, e                                        ; $70c6: $63
	ld   b, l                                        ; $70c7: $45
	ld   h, [hl]                                     ; $70c8: $66
	ld   b, c                                        ; $70c9: $41
	ld   c, e                                        ; $70ca: $4b
	cp   c                                           ; $70cb: $b9
	sbc  [hl]                                        ; $70cc: $9e
	jp   hl                                          ; $70cd: $e9


	xor  b                                           ; $70ce: $a8
	or   [hl]                                        ; $70cf: $b6
	ld   a, c                                        ; $70d0: $79
	sub  a                                           ; $70d1: $97
	ld   b, l                                        ; $70d2: $45
	ld   d, h                                        ; $70d3: $54
	dec  [hl]                                        ; $70d4: $35
	ld   [hl], $db                                   ; $70d5: $36 $db
	ld   a, c                                        ; $70d7: $79
	ei                                               ; $70d8: $fb
	ld   a, d                                        ; $70d9: $7a
	xor  d                                           ; $70da: $aa
	sbc  b                                           ; $70db: $98
	sub  a                                           ; $70dc: $97
	ld   d, h                                        ; $70dd: $54
	adc  b                                           ; $70de: $88
	ld   h, e                                        ; $70df: $63
	ld   de, $ba7c                                   ; $70e0: $11 $7c $ba
	cp   [hl]                                        ; $70e3: $be
	cp   c                                           ; $70e4: $b9
	adc  d                                           ; $70e5: $8a
	cp   c                                           ; $70e6: $b9
	sbc  b                                           ; $70e7: $98
	add  h                                           ; $70e8: $84
	ld   b, [hl]                                     ; $70e9: $46
	ld   h, [hl]                                     ; $70ea: $66
	ld   d, e                                        ; $70eb: $53
	rla                                              ; $70ec: $17
	db   $dd                                         ; $70ed: $dd

jr_0b9_70ee:
	ld   a, h                                        ; $70ee: $7c
	ld   a, [$d998]                                  ; $70ef: $fa $98 $d9
	adc  b                                           ; $70f2: $88
	adc  b                                           ; $70f3: $88
	ld   b, [hl]                                     ; $70f4: $46
	ld   h, l                                        ; $70f5: $65
	ld   b, e                                        ; $70f6: $43
	ld   [hl-], a                                    ; $70f7: $32
	ld   a, l                                        ; $70f8: $7d
	add  sp, -$52                                    ; $70f9: $e8 $ae
	xor  b                                           ; $70fb: $a8
	sbc  h                                           ; $70fc: $9c
	sbc  c                                           ; $70fd: $99
	sbc  b                                           ; $70fe: $98
	add  h                                           ; $70ff: $84
	ld   b, a                                        ; $7100: $47
	ld   [hl], l                                     ; $7101: $75
	inc  sp                                          ; $7102: $33
	jr   z, jr_0b9_70ee                              ; $7103: $28 $e9

	ld   l, e                                        ; $7105: $6b
	db   $fc                                         ; $7106: $fc
	adc  c                                           ; $7107: $89
	xor  b                                           ; $7108: $a8
	ld   [hl], a                                     ; $7109: $77
	sbc  d                                           ; $710a: $9a
	ld   b, h                                        ; $710b: $44
	ld   h, a                                        ; $710c: $67
	ld   d, h                                        ; $710d: $54
	ld   [hl+], a                                    ; $710e: $22
	xor  [hl]                                        ; $710f: $ae
	ld   [hl], a                                     ; $7110: $77
	rst  $28                                         ; $7111: $ef
	and  a                                           ; $7112: $a7
	cp   c                                           ; $7113: $b9
	sub  a                                           ; $7114: $97
	ld   a, e                                        ; $7115: $7b
	add  h                                           ; $7116: $84
	ld   b, [hl]                                     ; $7117: $46
	ld   h, h                                        ; $7118: $64
	ld   b, e                                        ; $7119: $43
	ld   c, e                                        ; $711a: $4b
	reti                                             ; $711b: $d9


	ld   a, e                                        ; $711c: $7b
	ld   a, [$89ab]                                  ; $711d: $fa $ab $89
	ld   h, a                                        ; $7120: $67
	xor  b                                           ; $7121: $a8
	ld   h, l                                        ; $7122: $65
	ld   d, l                                        ; $7123: $55
	ld   d, e                                        ; $7124: $53
	inc  de                                          ; $7125: $13
	rst  $28                                         ; $7126: $ef
	add  a                                           ; $7127: $87
	call $db79                                       ; $7128: $cd $79 $db
	and  a                                           ; $712b: $a7
	ld   a, c                                        ; $712c: $79
	ld   h, e                                        ; $712d: $63
	ld   d, [hl]                                     ; $712e: $56
	ld   h, h                                        ; $712f: $64
	ld   [hl-], a                                    ; $7130: $32
	ld   e, l                                        ; $7131: $5d
	and  $6f                                         ; $7132: $e6 $6f
	ld   sp, hl                                      ; $7134: $f9
	xor  e                                           ; $7135: $ab
	sub  [hl]                                        ; $7136: $96
	ld   a, b                                        ; $7137: $78
	and  [hl]                                        ; $7138: $a6
	ld   b, a                                        ; $7139: $47
	ld   [hl], l                                     ; $713a: $75
	ld   hl, $fb29                                   ; $713b: $21 $29 $fb
	ld   c, e                                        ; $713e: $4b
	ld   a, [$c87b]                                  ; $713f: $fa $7b $c8
	ld   a, b                                        ; $7142: $78
	adc  b                                           ; $7143: $88
	ld   b, h                                        ; $7144: $44
	add  [hl]                                        ; $7145: $86
	ld   b, h                                        ; $7146: $44
	inc  sp                                          ; $7147: $33
	sbc  [hl]                                        ; $7148: $9e
	sub  [hl]                                        ; $7149: $96
	rst  $28                                         ; $714a: $ef
	cp   b                                           ; $714b: $b8
	xor  c                                           ; $714c: $a9
	adc  b                                           ; $714d: $88
	sbc  c                                           ; $714e: $99
	sub  l                                           ; $714f: $95
	ld   d, [hl]                                     ; $7150: $56
	ld   d, e                                        ; $7151: $53
	ld   sp, $e55f                                   ; $7152: $31 $5f $e5
	adc  a                                           ; $7155: $8f
	add  sp, -$55                                    ; $7156: $e8 $ab
	sbc  b                                           ; $7158: $98
	ld   l, d                                        ; $7159: $6a
	and  l                                           ; $715a: $a5
	inc  [hl]                                        ; $715b: $34
	ld   d, [hl]                                     ; $715c: $56
	ld   h, e                                        ; $715d: $63
	ld   a, [de]                                     ; $715e: $1a
	jp   hl                                          ; $715f: $e9


	ld   l, h                                        ; $7160: $6c
	ei                                               ; $7161: $fb
	xor  d                                           ; $7162: $aa
	xor  c                                           ; $7163: $a9
	ld   h, a                                        ; $7164: $67
	sbc  c                                           ; $7165: $99
	ld   d, l                                        ; $7166: $55
	ld   d, l                                        ; $7167: $55
	ld   d, d                                        ; $7168: $52
	dec  d                                           ; $7169: $15
	cp   $6a                                         ; $716a: $fe $6a
	ei                                               ; $716c: $fb
	ld   a, c                                        ; $716d: $79
	cp   c                                           ; $716e: $b9
	add  a                                           ; $716f: $87
	xor  d                                           ; $7170: $aa
	ld   b, e                                        ; $7171: $43
	ld   d, l                                        ; $7172: $55
	ld   d, h                                        ; $7173: $54
	ld   d, d                                        ; $7174: $52
	ld   l, a                                        ; $7175: $6f
	add  $cf                                         ; $7176: $c6 $cf
	and  a                                           ; $7178: $a7
	xor  d                                           ; $7179: $aa
	sbc  b                                           ; $717a: $98
	adc  b                                           ; $717b: $88
	ld   [hl], h                                     ; $717c: $74
	ld   b, l                                        ; $717d: $45
	ld   d, h                                        ; $717e: $54
	ld   sp, $f44f                                   ; $717f: $31 $4f $f4
	sbc  a                                           ; $7182: $9f
	rst  $20                                         ; $7183: $e7
	cp   d                                           ; $7184: $ba
	sbc  d                                           ; $7185: $9a
	ld   l, c                                        ; $7186: $69
	sub  l                                           ; $7187: $95
	ld   b, l                                        ; $7188: $45
	ld   d, h                                        ; $7189: $54
	inc  sp                                          ; $718a: $33
	ld   c, l                                        ; $718b: $4d
	ld   sp, hl                                      ; $718c: $f9
	adc  e                                           ; $718d: $8b
	reti                                             ; $718e: $d9


	xor  e                                           ; $718f: $ab
	xor  e                                           ; $7190: $ab
	ld   l, b                                        ; $7191: $68
	halt                                             ; $7192: $76
	ld   d, l                                        ; $7193: $55
	ld   [hl], h                                     ; $7194: $74
	inc  sp                                          ; $7195: $33
	ld   h, $eb                                      ; $7196: $26 $eb
	adc  h                                           ; $7198: $8c
	ei                                               ; $7199: $fb
	ld   l, c                                        ; $719a: $69
	sbc  d                                           ; $719b: $9a
	adc  b                                           ; $719c: $88
	xor  b                                           ; $719d: $a8
	ld   d, e                                        ; $719e: $53
	ld   d, l                                        ; $719f: $55
	ld   [hl+], a                                    ; $71a0: $22
	ld   d, l                                        ; $71a1: $55
	cp   l                                           ; $71a2: $bd
	sbc  c                                           ; $71a3: $99
	db   $fd                                         ; $71a4: $fd
	adc  c                                           ; $71a5: $89
	cp   d                                           ; $71a6: $ba
	xor  c                                           ; $71a7: $a9
	adc  c                                           ; $71a8: $89
	ld   d, e                                        ; $71a9: $53
	ld   b, l                                        ; $71aa: $45
	ld   d, e                                        ; $71ab: $53
	ld   b, d                                        ; $71ac: $42
	ld   a, a                                        ; $71ad: $7f
	sub  a                                           ; $71ae: $97
	rst  JumpTable                                         ; $71af: $df
	cp   c                                           ; $71b0: $b9
	cp   b                                           ; $71b1: $b8
	sub  a                                           ; $71b2: $97
	ld   e, d                                        ; $71b3: $5a
	add  l                                           ; $71b4: $85
	ld   b, l                                        ; $71b5: $45
	ld   b, d                                        ; $71b6: $42
	ld   b, e                                        ; $71b7: $43
	ccf                                              ; $71b8: $3f
	rst  $30                                         ; $71b9: $f7
	adc  h                                           ; $71ba: $8c
	ret  c                                           ; $71bb: $d8

	xor  h                                           ; $71bc: $ac
	cp   c                                           ; $71bd: $b9
	ld   d, a                                        ; $71be: $57
	sub  [hl]                                        ; $71bf: $96
	ld   d, l                                        ; $71c0: $55
	ld   d, d                                        ; $71c1: $52
	inc  sp                                          ; $71c2: $33
	ld   a, [hl+]                                    ; $71c3: $2a
	ld   a, [$c87e]                                  ; $71c4: $fa $7e $c8
	sbc  e                                           ; $71c7: $9b
	xor  d                                           ; $71c8: $aa
	add  [hl]                                        ; $71c9: $86
	and  a                                           ; $71ca: $a7
	inc  sp                                          ; $71cb: $33
	ld   d, [hl]                                     ; $71cc: $56
	ld   b, h                                        ; $71cd: $44
	dec  [hl]                                        ; $71ce: $35
	db   $fd                                         ; $71cf: $fd
	ld   l, h                                        ; $71d0: $6c
	db   $fc                                         ; $71d1: $fc
	ld   a, c                                        ; $71d2: $79
	xor  b                                           ; $71d3: $a8
	ld   [hl], a                                     ; $71d4: $77
	cp   c                                           ; $71d5: $b9
	ld   b, e                                        ; $71d6: $43
	ld   d, h                                        ; $71d7: $54
	inc  [hl]                                        ; $71d8: $34
	ld   b, [hl]                                     ; $71d9: $46
	call $ecaa                                       ; $71da: $cd $aa $ec
	adc  d                                           ; $71dd: $8a
	cp   d                                           ; $71de: $ba
	adc  b                                           ; $71df: $88
	add  a                                           ; $71e0: $87
	ld   h, l                                        ; $71e1: $65
	ld   h, l                                        ; $71e2: $65
	ld   b, d                                        ; $71e3: $42
	ld   [de], a                                     ; $71e4: $12
	sbc  a                                           ; $71e5: $9f
	jp   c, Jump_0b9_68ec                            ; $71e6: $da $ec $68

	sbc  e                                           ; $71e9: $9b
	cp   c                                           ; $71ea: $b9
	sub  a                                           ; $71eb: $97
	ld   [hl], e                                     ; $71ec: $73
	ld   b, [hl]                                     ; $71ed: $46
	ld   d, h                                        ; $71ee: $54
	ld   [hl+], a                                    ; $71ef: $22
	ld   l, a                                        ; $71f0: $6f
	rst  $30                                         ; $71f1: $f7
	cp   a                                           ; $71f2: $bf
	or   a                                           ; $71f3: $b7
	sbc  e                                           ; $71f4: $9b
	sbc  b                                           ; $71f5: $98
	ld   a, d                                        ; $71f6: $7a
	add  e                                           ; $71f7: $83
	dec  [hl]                                        ; $71f8: $35
	ld   [hl], h                                     ; $71f9: $74
	ld   de, $fa3e                                   ; $71fa: $11 $3e $fa
	sbc  [hl]                                        ; $71fd: $9e
	sub  $7a                                         ; $71fe: $d6 $7a
	sbc  c                                           ; $7200: $99
	sbc  d                                           ; $7201: $9a
	sub  [hl]                                        ; $7202: $96
	inc  [hl]                                        ; $7203: $34
	ld   d, e                                        ; $7204: $53
	inc  sp                                          ; $7205: $33
	add  hl, sp                                      ; $7206: $39
	db   $fc                                         ; $7207: $fc
	xor  l                                           ; $7208: $ad
	ret  z                                           ; $7209: $c8

	adc  c                                           ; $720a: $89
	xor  e                                           ; $720b: $ab
	xor  c                                           ; $720c: $a9
	add  [hl]                                        ; $720d: $86
	inc  sp                                          ; $720e: $33
	ld   d, l                                        ; $720f: $55
	ld   b, h                                        ; $7210: $44
	ld   b, h                                        ; $7211: $44
	adc  $bb                                         ; $7212: $ce $bb
	db   $db                                         ; $7214: $db
	adc  c                                           ; $7215: $89
	sbc  d                                           ; $7216: $9a
	add  a                                           ; $7217: $87
	sbc  c                                           ; $7218: $99
	ld   h, l                                        ; $7219: $65
	ld   d, h                                        ; $721a: $54
	ld   [hl+], a                                    ; $721b: $22
	inc  hl                                          ; $721c: $23
	rst  JumpTable                                         ; $721d: $df
	ret  z                                           ; $721e: $c8

	call c, $ac68                                    ; $721f: $dc $68 $ac
	cp   b                                           ; $7222: $b8
	adc  b                                           ; $7223: $88
	ld   d, e                                        ; $7224: $53
	ld   d, [hl]                                     ; $7225: $56
	ld   d, e                                        ; $7226: $53
	ld   [hl+], a                                    ; $7227: $22
	ld   e, a                                        ; $7228: $5f
	ret  c                                           ; $7229: $d8

	rst  JumpTable                                         ; $722a: $df
	and  [hl]                                        ; $722b: $a6
	adc  e                                           ; $722c: $8b
	sbc  c                                           ; $722d: $99
	sbc  e                                           ; $722e: $9b
	add  h                                           ; $722f: $84
	ld   b, h                                        ; $7230: $44
	ld   [hl+], a                                    ; $7231: $22
	ld   b, h                                        ; $7232: $44
	ld   c, a                                        ; $7233: $4f
	ld   hl, sp-$43                                  ; $7234: $f8 $bd
	cp   b                                           ; $7236: $b8
	xor  h                                           ; $7237: $ac
	xor  c                                           ; $7238: $a9
	ld   a, c                                        ; $7239: $79
	add  l                                           ; $723a: $85
	ld   b, l                                        ; $723b: $45
	ld   b, e                                        ; $723c: $43
	dec  [hl]                                        ; $723d: $35
	scf                                              ; $723e: $37
	db   $db                                         ; $723f: $db
	call c, Call_0b9_79cb                            ; $7240: $dc $cb $79
	sbc  e                                           ; $7243: $9b
	sbc  c                                           ; $7244: $99
	and  [hl]                                        ; $7245: $a6
	ld   d, h                                        ; $7246: $54
	ld   d, l                                        ; $7247: $55
	inc  sp                                          ; $7248: $33
	inc  h                                           ; $7249: $24
	rst  $28                                         ; $724a: $ef
	sbc  d                                           ; $724b: $9a
	db   $ec                                         ; $724c: $ec
	ld   l, b                                        ; $724d: $68
	cp   e                                           ; $724e: $bb
	adc  c                                           ; $724f: $89
	xor  b                                           ; $7250: $a8
	ld   b, e                                        ; $7251: $43
	ld   b, e                                        ; $7252: $43
	inc  hl                                          ; $7253: $23
	ld   b, h                                        ; $7254: $44
	cp   a                                           ; $7255: $bf
	and  [hl]                                        ; $7256: $a6
	call $bb99                                       ; $7257: $cd $99 $bb
	sub  [hl]                                        ; $725a: $96
	sbc  b                                           ; $725b: $98
	ld   h, h                                        ; $725c: $64
	ld   h, [hl]                                     ; $725d: $66
	ld   b, e                                        ; $725e: $43
	ld   hl, $fa5e                                   ; $725f: $21 $5e $fa
	adc  $a7                                         ; $7262: $ce $a7
	ld   a, d                                        ; $7264: $7a
	xor  c                                           ; $7265: $a9
	sbc  e                                           ; $7266: $9b
	sub  h                                           ; $7267: $94
	ld   b, e                                        ; $7268: $43
	ld   [hl-], a                                    ; $7269: $32
	ld   b, h                                        ; $726a: $44
	ld   c, h                                        ; $726b: $4c
	jp   c, $c8ac                                    ; $726c: $da $ac $c8

	xor  e                                           ; $726f: $ab
	sbc  d                                           ; $7270: $9a
	ld   a, b                                        ; $7271: $78
	add  [hl]                                        ; $7272: $86
	ld   h, [hl]                                     ; $7273: $66
	ld   h, h                                        ; $7274: $64
	ld   [hl-], a                                    ; $7275: $32
	inc  d                                           ; $7276: $14
	xor  $cd                                         ; $7277: $ee $cd
	db   $db                                         ; $7279: $db
	ld   d, a                                        ; $727a: $57
	cp   e                                           ; $727b: $bb
	sbc  d                                           ; $727c: $9a
	or   a                                           ; $727d: $b7
	ld   b, h                                        ; $727e: $44
	ld   d, h                                        ; $727f: $54
	ld   b, h                                        ; $7280: $44
	ld   b, d                                        ; $7281: $42
	ld   l, a                                        ; $7282: $6f
	jp   z, $97ed                                    ; $7283: $ca $ed $97

	sbc  d                                           ; $7286: $9a
	adc  b                                           ; $7287: $88
	sbc  c                                           ; $7288: $99
	ld   [hl], h                                     ; $7289: $74
	ld   h, l                                        ; $728a: $65
	ld   b, h                                        ; $728b: $44
	ld   b, d                                        ; $728c: $42
	dec  a                                           ; $728d: $3d
	reti                                             ; $728e: $d9


	rst  $28                                         ; $728f: $ef
	xor  b                                           ; $7290: $a8
	xor  c                                           ; $7291: $a9
	ld   a, b                                        ; $7292: $78
	sbc  d                                           ; $7293: $9a
	sub  l                                           ; $7294: $95
	ld   h, [hl]                                     ; $7295: $66
	inc  sp                                          ; $7296: $33
	ld   b, e                                        ; $7297: $43
	rla                                              ; $7298: $17
	ei                                               ; $7299: $fb
	cp   a                                           ; $729a: $bf
	reti                                             ; $729b: $d9


	ld   l, e                                        ; $729c: $6b
	xor  c                                           ; $729d: $a9
	sbc  e                                           ; $729e: $9b
	and  [hl]                                        ; $729f: $a6
	ld   d, l                                        ; $72a0: $55
	ld   b, d                                        ; $72a1: $42
	ld   b, h                                        ; $72a2: $44
	inc  sp                                          ; $72a3: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72a4: $cf
	sbc  h                                           ; $72a5: $9c
	db   $fd                                         ; $72a6: $fd
	adc  c                                           ; $72a7: $89
	xor  b                                           ; $72a8: $a8
	adc  b                                           ; $72a9: $88
	cp   c                                           ; $72aa: $b9
	ld   h, [hl]                                     ; $72ab: $66
	ld   h, l                                        ; $72ac: $65
	inc  [hl]                                        ; $72ad: $34
	ld   b, c                                        ; $72ae: $41
	ld   c, [hl]                                     ; $72af: $4e
	ret  c                                           ; $72b0: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b1: $cf
	rst  ToBoot                                         ; $72b2: $c7
	sbc  e                                           ; $72b3: $9b
	sub  a                                           ; $72b4: $97
	sbc  e                                           ; $72b5: $9b
	add  l                                           ; $72b6: $85
	ld   h, a                                        ; $72b7: $67
	ld   [hl-], a                                    ; $72b8: $32
	inc  sp                                          ; $72b9: $33
	add  hl, hl                                      ; $72ba: $29
	ld   [$cacc], a                                  ; $72bb: $ea $cc $ca
	ld   a, d                                        ; $72be: $7a
	xor  c                                           ; $72bf: $a9
	sbc  c                                           ; $72c0: $99
	sub  [hl]                                        ; $72c1: $96
	ld   d, [hl]                                     ; $72c2: $56
	ld   h, h                                        ; $72c3: $64
	inc  sp                                          ; $72c4: $33
	ld   [hl-], a                                    ; $72c5: $32
	sbc  [hl]                                        ; $72c6: $9e
	set  7, l                                        ; $72c7: $cb $fd
	adc  b                                           ; $72c9: $88
	adc  c                                           ; $72ca: $89
	adc  c                                           ; $72cb: $89
	cp   c                                           ; $72cc: $b9
	halt                                             ; $72cd: $76
	ld   h, h                                        ; $72ce: $64
	inc  hl                                          ; $72cf: $23
	inc  sp                                          ; $72d0: $33
	ld   l, h                                        ; $72d1: $6c
	db   $eb                                         ; $72d2: $eb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72d3: $cf
	or   a                                           ; $72d4: $b7
	adc  d                                           ; $72d5: $8a
	sbc  b                                           ; $72d6: $98
	xor  e                                           ; $72d7: $ab
	ld   [hl], l                                     ; $72d8: $75
	ld   h, a                                        ; $72d9: $67
	ld   d, e                                        ; $72da: $53
	ld   [hl-], a                                    ; $72db: $32
	ld   d, $fc                                      ; $72dc: $16 $fc
	xor  [hl]                                        ; $72de: $ae
	reti                                             ; $72df: $d9


	ld   l, e                                        ; $72e0: $6b
	sbc  c                                           ; $72e1: $99
	xor  d                                           ; $72e2: $aa
	or   [hl]                                        ; $72e3: $b6
	ld   h, [hl]                                     ; $72e4: $66
	ld   [hl-], a                                    ; $72e5: $32
	dec  [hl]                                        ; $72e6: $35
	ld   [hl+], a                                    ; $72e7: $22
	cp   a                                           ; $72e8: $bf
	ld   a, e                                        ; $72e9: $7b
	db   $fc                                         ; $72ea: $fc
	ld   l, d                                        ; $72eb: $6a
	ret  z                                           ; $72ec: $c8

	ld   a, c                                        ; $72ed: $79
	ret  z                                           ; $72ee: $c8

	ld   h, a                                        ; $72ef: $67
	ld   [hl], h                                     ; $72f0: $74
	dec  [hl]                                        ; $72f1: $35
	ld   hl, $ec4b                                   ; $72f2: $21 $4b $ec
	rst  JumpTable                                         ; $72f5: $df
	and  [hl]                                        ; $72f6: $a6
	xor  c                                           ; $72f7: $a9
	adc  b                                           ; $72f8: $88
	cp   e                                           ; $72f9: $bb
	add  a                                           ; $72fa: $87
	halt                                             ; $72fb: $76
	inc  sp                                          ; $72fc: $33
	ld   b, d                                        ; $72fd: $42
	dec  d                                           ; $72fe: $15
	sbc  $bc                                         ; $72ff: $de $bc
	ld   a, [$9869]                                  ; $7301: $fa $69 $98
	adc  d                                           ; $7304: $8a
	or   a                                           ; $7305: $b7
	ld   h, a                                        ; $7306: $67
	ld   h, h                                        ; $7307: $64
	ld   b, e                                        ; $7308: $43
	ld   hl, $ba6e                                   ; $7309: $21 $6e $ba
	rst  $38                                         ; $730c: $ff
	xor  c                                           ; $730d: $a9
	xor  b                                           ; $730e: $a8
	ld   e, b                                        ; $730f: $58
	jp   z, $8489                                    ; $7310: $ca $89 $84

	inc  hl                                          ; $7313: $23
	ld   sp, $cb1a                                   ; $7314: $31 $1a $cb
	rst  JumpTable                                         ; $7317: $df
	reti                                             ; $7318: $d9


	adc  d                                           ; $7319: $8a
	adc  b                                           ; $731a: $88
	sbc  d                                           ; $731b: $9a
	and  a                                           ; $731c: $a7
	halt                                             ; $731d: $76
	ld   b, e                                        ; $731e: $43
	ld   b, e                                        ; $731f: $43
	inc  de                                          ; $7320: $13
	cp   l                                           ; $7321: $bd
	sbc  h                                           ; $7322: $9c
	db   $fc                                         ; $7323: $fc
	ld   a, d                                        ; $7324: $7a
	or   [hl]                                        ; $7325: $b6
	ld   a, e                                        ; $7326: $7b
	xor  b                                           ; $7327: $a8
	adc  c                                           ; $7328: $89
	ld   h, e                                        ; $7329: $63
	ld   [hl-], a                                    ; $732a: $32
	ld   de, $cb5d                                   ; $732b: $11 $5d $cb
	db   $fd                                         ; $732e: $fd
	cp   b                                           ; $732f: $b8
	adc  c                                           ; $7330: $89
	ld   l, c                                        ; $7331: $69
	jp   z, $84a8                                    ; $7332: $ca $a8 $84

	inc  h                                           ; $7335: $24
	ld   b, d                                        ; $7336: $42
	ld   d, $ca                                      ; $7337: $16 $ca
	xor  [hl]                                        ; $7339: $ae
	ld   [$a78a], a                                  ; $733a: $ea $8a $a7
	sbc  e                                           ; $733d: $9b
	xor  c                                           ; $733e: $a9
	adc  b                                           ; $733f: $88
	ld   b, e                                        ; $7340: $43
	ld   [hl-], a                                    ; $7341: $32
	ld   de, $9d8b                                   ; $7342: $11 $8b $9d
	cp   $a9                                         ; $7345: $fe $a9
	add  $69                                         ; $7347: $c6 $69
	sbc  c                                           ; $7349: $99
	adc  d                                           ; $734a: $8a
	add  l                                           ; $734b: $85
	ld   b, e                                        ; $734c: $43
	ld   hl, $bb17                                   ; $734d: $21 $17 $bb
	rst  JumpTable                                         ; $7350: $df
	ld   [$968a], a                                  ; $7351: $ea $8a $96
	xor  d                                           ; $7354: $aa
	xor  c                                           ; $7355: $a9
	adc  c                                           ; $7356: $89
	ld   d, e                                        ; $7357: $53
	ld   hl, $7d11                                   ; $7358: $21 $11 $7d
	cp   h                                           ; $735b: $bc
	rst  $38                                         ; $735c: $ff
	and  a                                           ; $735d: $a7
	xor  b                                           ; $735e: $a8
	ld   a, d                                        ; $735f: $7a
	res  3, d                                        ; $7360: $cb $9a
	ld   [hl], h                                     ; $7362: $74
	inc  hl                                          ; $7363: $23
	ld   hl, $9a29                                   ; $7364: $21 $29 $9a
	rst  $28                                         ; $7367: $ef
	db   $eb                                         ; $7368: $eb
	cp   d                                           ; $7369: $ba
	ld   h, [hl]                                     ; $736a: $66
	sbc  c                                           ; $736b: $99
	sbc  c                                           ; $736c: $99
	xor  b                                           ; $736d: $a8
	ld   d, h                                        ; $736e: $54
	ld   sp, $8b11                                   ; $736f: $31 $11 $8b
	cp   h                                           ; $7372: $bc
	cp   $a9                                         ; $7373: $fe $a9
	or   a                                           ; $7375: $b7
	ld   l, b                                        ; $7376: $68
	xor  d                                           ; $7377: $aa
	sbc  e                                           ; $7378: $9b
	sub  l                                           ; $7379: $95
	ld   [hl-], a                                    ; $737a: $32
	ld   de, $bb28                                   ; $737b: $11 $28 $bb
	rst  JumpTable                                         ; $737e: $df
	ld   [$77bb], a                                  ; $737f: $ea $bb $77
	sbc  e                                           ; $7382: $9b
	adc  c                                           ; $7383: $89
	xor  b                                           ; $7384: $a8
	ld   d, e                                        ; $7385: $53
	ld   [hl-], a                                    ; $7386: $32

Jump_0b9_7387:
	ld   de, $9c8a                                   ; $7387: $11 $8a $9c
	cp   $bb                                         ; $738a: $fe $bb
	or   [hl]                                        ; $738c: $b6
	ld   l, b                                        ; $738d: $68
	xor  b                                           ; $738e: $a8
	sbc  e                                           ; $738f: $9b
	sub  l                                           ; $7390: $95
	ld   b, h                                        ; $7391: $44
	ld   de, $9a16                                   ; $7392: $11 $16 $9a
	rst  $28                                         ; $7395: $ef
	db   $ec                                         ; $7396: $ec
	xor  e                                           ; $7397: $ab
	ld   [hl], a                                     ; $7398: $77
	sbc  c                                           ; $7399: $99
	xor  d                                           ; $739a: $aa
	xor  b                                           ; $739b: $a8
	ld   d, h                                        ; $739c: $54
	ld   hl, $7812                                   ; $739d: $21 $12 $78
	cp   [hl]                                        ; $73a0: $be
	cp   $db                                         ; $73a1: $fe $db
	and  a                                           ; $73a3: $a7
	ld   a, c                                        ; $73a4: $79
	adc  c                                           ; $73a5: $89
	xor  e                                           ; $73a6: $ab
	sub  a                                           ; $73a7: $97
	ld   b, c                                        ; $73a8: $41
	ld   de, $8a16                                   ; $73a9: $11 $16 $8a
	rst  $28                                         ; $73ac: $ef
	cp   $cb                                         ; $73ad: $fe $cb
	halt                                             ; $73af: $76
	adc  b                                           ; $73b0: $88
	adc  c                                           ; $73b1: $89
	xor  c                                           ; $73b2: $a9
	ld   [hl], l                                     ; $73b3: $75
	ld   sp, $5712                                   ; $73b4: $31 $12 $57
	xor  h                                           ; $73b7: $ac
	rst  $28                                         ; $73b8: $ef
	call z, Call_0b9_78b9                            ; $73b9: $cc $b9 $78
	adc  c                                           ; $73bc: $89
	sbc  d                                           ; $73bd: $9a
	and  a                                           ; $73be: $a7
	ld   d, d                                        ; $73bf: $52
	ld   de, $7916                                   ; $73c0: $11 $16 $79
	rst  $28                                         ; $73c3: $ef
	xor  $db                                         ; $73c4: $ee $db
	ld   [hl], a                                     ; $73c6: $77
	sub  a                                           ; $73c7: $97
	ld   a, d                                        ; $73c8: $7a
	xor  b                                           ; $73c9: $a8
	halt                                             ; $73ca: $76
	ld   sp, $5711                                   ; $73cb: $31 $11 $57
	adc  h                                           ; $73ce: $8c
	xor  $dc                                         ; $73cf: $ee $dc
	cp   b                                           ; $73d1: $b8
	ld   a, b                                        ; $73d2: $78
	adc  c                                           ; $73d3: $89
	sbc  d                                           ; $73d4: $9a
	sub  a                                           ; $73d5: $97
	ld   h, e                                        ; $73d6: $63
	ld   de, $6804                                   ; $73d7: $11 $04 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73da: $cf
	xor  $ec                                         ; $73db: $ee $ec
	sbc  b                                           ; $73dd: $98
	add  a                                           ; $73de: $87
	ld   a, c                                        ; $73df: $79
	sbc  c                                           ; $73e0: $99
	add  a                                           ; $73e1: $87
	ld   b, c                                        ; $73e2: $41
	ld   de, $7a36                                   ; $73e3: $11 $36 $7a
	sbc  $de                                         ; $73e6: $de $de
	db   $db                                         ; $73e8: $db
	adc  c                                           ; $73e9: $89
	sub  a                                           ; $73ea: $97
	adc  d                                           ; $73eb: $8a
	xor  b                                           ; $73ec: $a8
	ld   [hl], l                                     ; $73ed: $75
	ld   de, $5514                                   ; $73ee: $11 $14 $55
	xor  [hl]                                        ; $73f1: $ae
	db   $dd                                         ; $73f2: $dd
	cp   $a9                                         ; $73f3: $fe $a9
	sbc  c                                           ; $73f5: $99
	ld   l, b                                        ; $73f6: $68
	sbc  b                                           ; $73f7: $98
	adc  c                                           ; $73f8: $89
	ld   h, c                                        ; $73f9: $61
	ld   de, $6925                                   ; $73fa: $11 $25 $69
	call $ecef                                       ; $73fd: $cd $ef $ec
	sbc  c                                           ; $7400: $99
	sub  a                                           ; $7401: $97
	ld   a, c                                        ; $7402: $79
	xor  c                                           ; $7403: $a9
	add  [hl]                                        ; $7404: $86
	ld   sp, $4511                                   ; $7405: $31 $11 $45
	ld   a, d                                        ; $7408: $7a
	call z, $daef                                    ; $7409: $cc $ef $da
	xor  d                                           ; $740c: $aa
	sub  a                                           ; $740d: $97
	sbc  c                                           ; $740e: $99
	adc  b                                           ; $740f: $88
	ld   [hl], h                                     ; $7410: $74
	ld   de, $5514                                   ; $7411: $11 $14 $55
	sbc  l                                           ; $7414: $9d
	db   $dd                                         ; $7415: $dd
	cp   $ba                                         ; $7416: $fe $ba
	xor  c                                           ; $7418: $a9
	ld   a, b                                        ; $7419: $78
	sbc  b                                           ; $741a: $98
	ld   a, b                                        ; $741b: $78
	ld   d, d                                        ; $741c: $52
	ld   de, $5944                                   ; $741d: $11 $44 $59
	cp   e                                           ; $7420: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7421: $cf
	call c, $97ab                                    ; $7422: $dc $ab $97
	sbc  d                                           ; $7425: $9a
	sbc  b                                           ; $7426: $98
	sub  [hl]                                        ; $7427: $96
	ld   sp, $4412                                   ; $7428: $31 $12 $44
	ld   l, e                                        ; $742b: $6b
	cp   e                                           ; $742c: $bb
	xor  $dc                                         ; $742d: $ee $dc
	jp   z, $8989                                    ; $742f: $ca $89 $89

	ld   a, b                                        ; $7432: $78
	ld   [hl], h                                     ; $7433: $74
	ld   de, $4513                                   ; $7434: $11 $13 $45
	adc  e                                           ; $7437: $8b
	cp   h                                           ; $7438: $bc
	xor  $cc                                         ; $7439: $ee $cc
	jp   z, $9889                                    ; $743b: $ca $89 $98

	ld   a, c                                        ; $743e: $79
	ld   h, e                                        ; $743f: $63
	ld   de, $4624                                   ; $7440: $11 $24 $46
	xor  c                                           ; $7443: $a9
	xor  l                                           ; $7444: $ad
	db   $ec                                         ; $7445: $ec
	db   $dd                                         ; $7446: $dd
	jp   z, $878a                                    ; $7447: $ca $8a $87

	adc  b                                           ; $744a: $88
	ld   d, d                                        ; $744b: $52
	ld   de, $3734                                   ; $744c: $11 $34 $37
	xor  d                                           ; $744f: $aa
	xor  l                                           ; $7450: $ad
	db   $dd                                         ; $7451: $dd
	call $9ac9                                       ; $7452: $cd $c9 $9a
	add  a                                           ; $7455: $87
	add  a                                           ; $7456: $87
	ld   b, d                                        ; $7457: $42
	ld   [de], a                                     ; $7458: $12
	ld   b, h                                        ; $7459: $44
	ld   b, a                                        ; $745a: $47
	adc  b                                           ; $745b: $88
	xor  h                                           ; $745c: $ac
	set  1, h                                        ; $745d: $cb $cc
	jp   z, $979a                                    ; $745f: $ca $9a $97

	adc  b                                           ; $7462: $88
	ld   d, h                                        ; $7463: $54
	ld   b, e                                        ; $7464: $43
	ld   d, [hl]                                     ; $7465: $56
	ld   h, [hl]                                     ; $7466: $66
	ld   a, c                                        ; $7467: $79
	adc  c                                           ; $7468: $89
	xor  d                                           ; $7469: $aa
	xor  d                                           ; $746a: $aa
	xor  c                                           ; $746b: $a9
	sbc  b                                           ; $746c: $98
	sbc  c                                           ; $746d: $99
	sbc  c                                           ; $746e: $99
	add  a                                           ; $746f: $87
	ld   [hl], a                                     ; $7470: $77
	ld   [hl], a                                     ; $7471: $77
	ld   [hl], a                                     ; $7472: $77
	halt                                             ; $7473: $76
	ld   [hl], a                                     ; $7474: $77
	ld   h, a                                        ; $7475: $67
	adc  b                                           ; $7476: $88
	adc  b                                           ; $7477: $88
	sbc  c                                           ; $7478: $99
	sbc  c                                           ; $7479: $99
	sbc  c                                           ; $747a: $99
	sbc  c                                           ; $747b: $99
	xor  c                                           ; $747c: $a9
	adc  c                                           ; $747d: $89
	add  a                                           ; $747e: $87
	ld   [hl], a                                     ; $747f: $77
	ld   [hl], a                                     ; $7480: $77
	ld   h, [hl]                                     ; $7481: $66
	ld   [hl], a                                     ; $7482: $77
	ld   a, b                                        ; $7483: $78
	adc  b                                           ; $7484: $88
	sbc  b                                           ; $7485: $98
	adc  b                                           ; $7486: $88
	adc  b                                           ; $7487: $88
	sbc  c                                           ; $7488: $99
	sbc  c                                           ; $7489: $99
	adc  c                                           ; $748a: $89
	adc  c                                           ; $748b: $89
	adc  b                                           ; $748c: $88
	add  a                                           ; $748d: $87
	add  a                                           ; $748e: $87
	ld   [hl], a                                     ; $748f: $77
	ld   [hl], a                                     ; $7490: $77
	ld   [hl], a                                     ; $7491: $77
	ld   a, b                                        ; $7492: $78
	adc  b                                           ; $7493: $88
	adc  c                                           ; $7494: $89
	sbc  c                                           ; $7495: $99
	adc  c                                           ; $7496: $89
	adc  c                                           ; $7497: $89
	sbc  c                                           ; $7498: $99
	sbc  b                                           ; $7499: $98
	adc  c                                           ; $749a: $89
	adc  b                                           ; $749b: $88
	ld   [hl], a                                     ; $749c: $77
	ld   [hl], a                                     ; $749d: $77
	ld   h, a                                        ; $749e: $67
	ld   [hl], a                                     ; $749f: $77
	ld   [hl], a                                     ; $74a0: $77
	adc  b                                           ; $74a1: $88
	adc  b                                           ; $74a2: $88
	sbc  b                                           ; $74a3: $98
	adc  c                                           ; $74a4: $89
	xor  c                                           ; $74a5: $a9
	xor  c                                           ; $74a6: $a9
	sbc  b                                           ; $74a7: $98

Jump_0b9_74a8:
	adc  b                                           ; $74a8: $88
	ld   a, b                                        ; $74a9: $78
	ld   [hl], a                                     ; $74aa: $77
	halt                                             ; $74ab: $76
	halt                                             ; $74ac: $76
	ld   [hl], a                                     ; $74ad: $77
	ld   [hl], a                                     ; $74ae: $77
	adc  b                                           ; $74af: $88
	sbc  b                                           ; $74b0: $98
	adc  c                                           ; $74b1: $89
	sbc  c                                           ; $74b2: $99
	sbc  c                                           ; $74b3: $99
	sbc  c                                           ; $74b4: $99
	adc  b                                           ; $74b5: $88
	add  a                                           ; $74b6: $87
	ld   [hl], a                                     ; $74b7: $77
	ld   [hl], a                                     ; $74b8: $77
	ld   [hl], a                                     ; $74b9: $77
	ld   h, a                                        ; $74ba: $67
	ld   [hl], a                                     ; $74bb: $77
	ld   a, b                                        ; $74bc: $78
	sbc  c                                           ; $74bd: $99
	sbc  c                                           ; $74be: $99
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	sbc  b                                           ; $74c1: $98
	sbc  b                                           ; $74c2: $98
	adc  b                                           ; $74c3: $88
	ld   a, b                                        ; $74c4: $78
	ld   [hl], a                                     ; $74c5: $77
	ld   [hl], a                                     ; $74c6: $77
	ld   [hl], a                                     ; $74c7: $77
	ld   [hl], a                                     ; $74c8: $77
	ld   [hl], a                                     ; $74c9: $77
	adc  b                                           ; $74ca: $88
	sbc  b                                           ; $74cb: $98
	sbc  c                                           ; $74cc: $99
	adc  c                                           ; $74cd: $89
	adc  b                                           ; $74ce: $88
	adc  c                                           ; $74cf: $89
	adc  b                                           ; $74d0: $88
	sub  a                                           ; $74d1: $97
	ld   [hl], a                                     ; $74d2: $77
	ld   [hl], a                                     ; $74d3: $77
	ld   [hl], a                                     ; $74d4: $77
	ld   [hl], a                                     ; $74d5: $77
	ld   [hl], a                                     ; $74d6: $77
	ld   [hl], a                                     ; $74d7: $77
	ld   a, b                                        ; $74d8: $78
	sbc  b                                           ; $74d9: $98
	sbc  b                                           ; $74da: $98
	sbc  b                                           ; $74db: $98
	sbc  c                                           ; $74dc: $99
	sbc  c                                           ; $74dd: $99
	adc  c                                           ; $74de: $89
	sbc  b                                           ; $74df: $98
	ld   [hl], a                                     ; $74e0: $77
	ld   [hl], a                                     ; $74e1: $77
	ld   h, a                                        ; $74e2: $67
	halt                                             ; $74e3: $76
	ld   [hl], a                                     ; $74e4: $77
	ld   [hl], a                                     ; $74e5: $77
	adc  c                                           ; $74e6: $89
	adc  c                                           ; $74e7: $89
	adc  c                                           ; $74e8: $89
	sbc  c                                           ; $74e9: $99
	sbc  c                                           ; $74ea: $99
	sbc  c                                           ; $74eb: $99
	xor  b                                           ; $74ec: $a8
	sbc  b                                           ; $74ed: $98
	halt                                             ; $74ee: $76
	ld   h, [hl]                                     ; $74ef: $66
	ld   h, a                                        ; $74f0: $67
	ld   h, [hl]                                     ; $74f1: $66
	ld   [hl], a                                     ; $74f2: $77
	ld   a, b                                        ; $74f3: $78
	adc  c                                           ; $74f4: $89
	sbc  c                                           ; $74f5: $99
	sbc  d                                           ; $74f6: $9a
	xor  c                                           ; $74f7: $a9
	sbc  d                                           ; $74f8: $9a
	sbc  b                                           ; $74f9: $98
	sbc  c                                           ; $74fa: $99
	ld   [hl], a                                     ; $74fb: $77
	ld   h, [hl]                                     ; $74fc: $66
	ld   h, [hl]                                     ; $74fd: $66
	ld   h, a                                        ; $74fe: $67
	ld   h, [hl]                                     ; $74ff: $66
	ld   a, b                                        ; $7500: $78
	ld   [hl], a                                     ; $7501: $77
	sbc  d                                           ; $7502: $9a
	sbc  d                                           ; $7503: $9a
	cp   e                                           ; $7504: $bb
	sbc  c                                           ; $7505: $99
	sbc  c                                           ; $7506: $99
	sbc  c                                           ; $7507: $99
	sbc  b                                           ; $7508: $98
	halt                                             ; $7509: $76
	ld   d, l                                        ; $750a: $55
	ld   b, l                                        ; $750b: $45
	ld   h, [hl]                                     ; $750c: $66
	ld   d, a                                        ; $750d: $57
	sub  a                                           ; $750e: $97
	adc  c                                           ; $750f: $89
	cp   e                                           ; $7510: $bb
	xor  d                                           ; $7511: $aa
	res  1, d                                        ; $7512: $cb $8a
	xor  c                                           ; $7514: $a9
	adc  b                                           ; $7515: $88
	add  [hl]                                        ; $7516: $86
	ld   d, h                                        ; $7517: $54
	inc  [hl]                                        ; $7518: $34
	ld   d, l                                        ; $7519: $55
	ld   d, [hl]                                     ; $751a: $56
	ld   a, b                                        ; $751b: $78
	adc  d                                           ; $751c: $8a
	call z, $cbbb                                    ; $751d: $cc $bb $cb
	xor  c                                           ; $7520: $a9
	xor  c                                           ; $7521: $a9
	sbc  b                                           ; $7522: $98
	halt                                             ; $7523: $76
	ld   b, e                                        ; $7524: $43
	ld   [hl+], a                                    ; $7525: $22
	ld   b, l                                        ; $7526: $45
	ld   b, l                                        ; $7527: $45
	ld   a, d                                        ; $7528: $7a
	sbc  d                                           ; $7529: $9a
	db   $dd                                         ; $752a: $dd
	call c, $a9cd                                    ; $752b: $dc $cd $a9
	sbc  c                                           ; $752e: $99
	adc  b                                           ; $752f: $88
	ld   [hl], l                                     ; $7530: $75
	ld   hl, $4312                                   ; $7531: $21 $12 $43
	ld   b, a                                        ; $7534: $47
	sbc  b                                           ; $7535: $98
	cp   a                                           ; $7536: $bf
	db   $ed                                         ; $7537: $ed
	xor  $db                                         ; $7538: $ee $db
	xor  d                                           ; $753a: $aa
	xor  b                                           ; $753b: $a8
	ld   a, c                                        ; $753c: $79
	ld   h, d                                        ; $753d: $62
	ld   bc, $3313                                   ; $753e: $01 $13 $33
	ld   l, d                                        ; $7541: $6a
	sbc  c                                           ; $7542: $99
	rst  $38                                         ; $7543: $ff
	sbc  $ed                                         ; $7544: $de $ed
	cp   c                                           ; $7546: $b9
	xor  d                                           ; $7547: $aa
	sub  a                                           ; $7548: $97
	ld   [hl], a                                     ; $7549: $77
	ld   sp, $3411                                   ; $754a: $31 $11 $34
	dec  h                                           ; $754d: $25
	xor  d                                           ; $754e: $aa
	xor  [hl]                                        ; $754f: $ae
	db   $fd                                         ; $7550: $fd
	xor  $cc                                         ; $7551: $ee $cc
	sbc  c                                           ; $7553: $99
	sbc  c                                           ; $7554: $99
	ld   [hl], a                                     ; $7555: $77
	ld   [hl], e                                     ; $7556: $73
	ld   de, $4213                                   ; $7557: $11 $13 $42
	ld   e, d                                        ; $755a: $5a
	xor  c                                           ; $755b: $a9
	rst  $28                                         ; $755c: $ef
	xor  $ec                                         ; $755d: $ee $ec
	ret                                              ; $755f: $c9


	adc  c                                           ; $7560: $89
	xor  b                                           ; $7561: $a8
	add  a                                           ; $7562: $87
	ld   sp, $2511                                   ; $7563: $31 $11 $25
	dec  [hl]                                        ; $7566: $35
	xor  e                                           ; $7567: $ab
	xor  l                                           ; $7568: $ad
	cp   $cc                                         ; $7569: $fe $cc
	cp   e                                           ; $756b: $bb
	and  a                                           ; $756c: $a7
	sbc  c                                           ; $756d: $99
	adc  c                                           ; $756e: $89
	add  l                                           ; $756f: $85
	ld   hl, $5312                                   ; $7570: $21 $12 $53
	ld   c, d                                        ; $7573: $4a
	cp   d                                           ; $7574: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7575: $cf
	db   $dd                                         ; $7576: $dd
	res  7, c                                        ; $7577: $cb $b9
	adc  c                                           ; $7579: $89
	xor  c                                           ; $757a: $a9
	sbc  b                                           ; $757b: $98
	ld   d, d                                        ; $757c: $52
	ld   de, $4425                                   ; $757d: $11 $25 $44
	sbc  e                                           ; $7580: $9b
	cp   h                                           ; $7581: $bc
	db   $ed                                         ; $7582: $ed
	call c, $a89a                                    ; $7583: $dc $9a $a8
	adc  d                                           ; $7586: $8a
	sbc  c                                           ; $7587: $99
	add  l                                           ; $7588: $85
	ld   hl, $5511                                   ; $7589: $21 $11 $55
	ld   e, b                                        ; $758c: $58
	cp   e                                           ; $758d: $bb
	db   $dd                                         ; $758e: $dd
	call z, $8aba                                    ; $758f: $cc $ba $8a
	sbc  b                                           ; $7592: $98
	xor  b                                           ; $7593: $a8
	sbc  c                                           ; $7594: $99
	ld   d, d                                        ; $7595: $52
	ld   de, $6515                                   ; $7596: $11 $15 $65
	adc  h                                           ; $7599: $8c
	call $ccdc                                       ; $759a: $cd $dc $cc
	sbc  b                                           ; $759d: $98
	xor  c                                           ; $759e: $a9
	adc  c                                           ; $759f: $89
	sbc  c                                           ; $75a0: $99
	sub  l                                           ; $75a1: $95
	ld   hl, $4611                                   ; $75a2: $21 $11 $46
	ld   e, b                                        ; $75a5: $58
	cp   h                                           ; $75a6: $bc
	call $c9bb                                       ; $75a7: $cd $bb $c9
	adc  c                                           ; $75aa: $89
	adc  c                                           ; $75ab: $89
	xor  c                                           ; $75ac: $a9
	sbc  c                                           ; $75ad: $99
	ld   h, e                                        ; $75ae: $63
	ld   [hl+], a                                    ; $75af: $22
	inc  de                                          ; $75b0: $13
	ld   h, [hl]                                     ; $75b1: $66
	ld   l, d                                        ; $75b2: $6a
	call c, $abdc                                    ; $75b3: $dc $dc $ab
	and  a                                           ; $75b6: $a7
	adc  c                                           ; $75b7: $89
	adc  d                                           ; $75b8: $8a
	xor  c                                           ; $75b9: $a9
	sub  a                                           ; $75ba: $97
	ld   b, d                                        ; $75bb: $42
	ld   hl, $6626                                   ; $75bc: $21 $26 $66
	sbc  h                                           ; $75bf: $9c
	call z, $bacb                                    ; $75c0: $cc $cb $ba
	ld   a, b                                        ; $75c3: $78
	xor  b                                           ; $75c4: $a8
	sbc  d                                           ; $75c5: $9a
	sbc  c                                           ; $75c6: $99
	add  l                                           ; $75c7: $85
	ld   [hl-], a                                    ; $75c8: $32
	ld   de, $6757                                   ; $75c9: $11 $57 $67
	call z, $bacc                                    ; $75cc: $cc $cc $ba
	xor  c                                           ; $75cf: $a9
	ld   a, c                                        ; $75d0: $79
	xor  c                                           ; $75d1: $a9
	sbc  c                                           ; $75d2: $99
	sbc  c                                           ; $75d3: $99
	ld   [hl], h                                     ; $75d4: $74
	ld   [hl+], a                                    ; $75d5: $22
	inc  de                                          ; $75d6: $13
	ld   h, [hl]                                     ; $75d7: $66
	ld   l, c                                        ; $75d8: $69
	call z, $aacb                                    ; $75d9: $cc $cb $aa
	sbc  b                                           ; $75dc: $98
	adc  d                                           ; $75dd: $8a
	sbc  d                                           ; $75de: $9a
	xor  c                                           ; $75df: $a9
	xor  b                                           ; $75e0: $a8
	ld   d, e                                        ; $75e1: $53
	ld   hl, $7626                                   ; $75e2: $21 $26 $76
	adc  h                                           ; $75e5: $8c
	call c, $9ab9                                    ; $75e6: $dc $b9 $9a
	add  a                                           ; $75e9: $87
	sbc  d                                           ; $75ea: $9a
	xor  d                                           ; $75eb: $aa
	sbc  d                                           ; $75ec: $9a
	sub  a                                           ; $75ed: $97
	ld   b, e                                        ; $75ee: $43
	ld   hl, $6647                                   ; $75ef: $21 $47 $66
	xor  h                                           ; $75f2: $ac
	call z, $a9a9                                    ; $75f3: $cc $a9 $a9
	ld   a, b                                        ; $75f6: $78
	xor  d                                           ; $75f7: $aa
	xor  d                                           ; $75f8: $aa
	sbc  d                                           ; $75f9: $9a
	sub  [hl]                                        ; $75fa: $96
	ld   b, e                                        ; $75fb: $43
	ld   [de], a                                     ; $75fc: $12
	ld   h, a                                        ; $75fd: $67
	ld   h, a                                        ; $75fe: $67
	cp   h                                           ; $75ff: $bc
	cp   d                                           ; $7600: $ba
	xor  d                                           ; $7601: $aa
	sbc  c                                           ; $7602: $99
	ld   a, c                                        ; $7603: $79
	sbc  d                                           ; $7604: $9a
	sbc  c                                           ; $7605: $99
	sbc  c                                           ; $7606: $99
	ld   [hl], l                                     ; $7607: $75
	ld   b, e                                        ; $7608: $43
	inc  d                                           ; $7609: $14
	ld   [hl], a                                     ; $760a: $77
	ld   l, c                                        ; $760b: $69
	call z, $8aba                                    ; $760c: $cc $ba $8a
	xor  b                                           ; $760f: $a8
	adc  c                                           ; $7610: $89
	xor  d                                           ; $7611: $aa
	sbc  c                                           ; $7612: $99
	xor  c                                           ; $7613: $a9
	ld   [hl], h                                     ; $7614: $74
	ld   [hl-], a                                    ; $7615: $32
	inc  h                                           ; $7616: $24
	halt                                             ; $7617: $76
	ld   a, d                                        ; $7618: $7a
	db   $db                                         ; $7619: $db
	cp   d                                           ; $761a: $ba
	adc  c                                           ; $761b: $89
	adc  b                                           ; $761c: $88
	adc  c                                           ; $761d: $89
	sbc  d                                           ; $761e: $9a
	sbc  c                                           ; $761f: $99
	xor  c                                           ; $7620: $a9
	ld   h, h                                        ; $7621: $64
	ld   b, d                                        ; $7622: $42
	ld   h, $76                                      ; $7623: $26 $76
	ld   a, e                                        ; $7625: $7b
	cp   e                                           ; $7626: $bb
	cp   c                                           ; $7627: $b9
	adc  d                                           ; $7628: $8a
	adc  b                                           ; $7629: $88
	adc  c                                           ; $762a: $89
	sbc  d                                           ; $762b: $9a
	sbc  d                                           ; $762c: $9a
	sbc  b                                           ; $762d: $98
	ld   h, h                                        ; $762e: $64
	ld   [hl-], a                                    ; $762f: $32
	scf                                              ; $7630: $37
	add  [hl]                                        ; $7631: $86
	ld   a, e                                        ; $7632: $7b
	res  5, b                                        ; $7633: $cb $a8
	adc  c                                           ; $7635: $89
	sbc  b                                           ; $7636: $98
	adc  d                                           ; $7637: $8a
	sbc  c                                           ; $7638: $99
	xor  c                                           ; $7639: $a9
	sbc  c                                           ; $763a: $99
	ld   h, h                                        ; $763b: $64
	ld   [hl-], a                                    ; $763c: $32
	scf                                              ; $763d: $37
	halt                                             ; $763e: $76
	sbc  e                                           ; $763f: $9b
	cp   d                                           ; $7640: $ba
	xor  b                                           ; $7641: $a8
	adc  c                                           ; $7642: $89
	adc  b                                           ; $7643: $88
	sbc  d                                           ; $7644: $9a
	xor  d                                           ; $7645: $aa
	xor  d                                           ; $7646: $aa
	xor  b                                           ; $7647: $a8
	ld   d, h                                        ; $7648: $54
	ld   [hl-], a                                    ; $7649: $32
	ld   b, a                                        ; $764a: $47
	halt                                             ; $764b: $76
	sbc  e                                           ; $764c: $9b
	cp   d                                           ; $764d: $ba
	xor  c                                           ; $764e: $a9
	adc  b                                           ; $764f: $88
	adc  c                                           ; $7650: $89
	sbc  c                                           ; $7651: $99
	xor  d                                           ; $7652: $aa
	sbc  d                                           ; $7653: $9a
	xor  b                                           ; $7654: $a8
	ld   d, h                                        ; $7655: $54
	ld   [hl-], a                                    ; $7656: $32
	ld   d, a                                        ; $7657: $57
	ld   h, [hl]                                     ; $7658: $66
	xor  e                                           ; $7659: $ab
	xor  e                                           ; $765a: $ab
	sbc  b                                           ; $765b: $98
	sbc  b                                           ; $765c: $98
	adc  c                                           ; $765d: $89
	sbc  c                                           ; $765e: $99
	xor  c                                           ; $765f: $a9
	xor  d                                           ; $7660: $aa
	sub  a                                           ; $7661: $97
	ld   d, h                                        ; $7662: $54
	ld   [hl-], a                                    ; $7663: $32
	ld   d, a                                        ; $7664: $57
	ld   h, a                                        ; $7665: $67
	xor  h                                           ; $7666: $ac
	cp   d                                           ; $7667: $ba
	xor  c                                           ; $7668: $a9
	sbc  c                                           ; $7669: $99
	ld   a, c                                        ; $766a: $79
	sbc  d                                           ; $766b: $9a
	xor  c                                           ; $766c: $a9
	xor  d                                           ; $766d: $aa
	and  a                                           ; $766e: $a7
	ld   d, h                                        ; $766f: $54
	ld   [hl+], a                                    ; $7670: $22
	ld   d, [hl]                                     ; $7671: $56
	ld   h, a                                        ; $7672: $67
	xor  h                                           ; $7673: $ac
	cp   d                                           ; $7674: $ba
	sbc  c                                           ; $7675: $99
	adc  b                                           ; $7676: $88
	adc  b                                           ; $7677: $88
	sbc  c                                           ; $7678: $99
	sbc  c                                           ; $7679: $99
	xor  d                                           ; $767a: $aa
	sub  a                                           ; $767b: $97
	ld   h, h                                        ; $767c: $64
	inc  hl                                          ; $767d: $23
	ld   [hl], a                                     ; $767e: $77
	ld   l, b                                        ; $767f: $68
	cp   h                                           ; $7680: $bc
	xor  c                                           ; $7681: $a9
	adc  b                                           ; $7682: $88
	adc  b                                           ; $7683: $88
	adc  c                                           ; $7684: $89
	sbc  d                                           ; $7685: $9a
	xor  c                                           ; $7686: $a9
	xor  e                                           ; $7687: $ab
	sub  [hl]                                        ; $7688: $96
	ld   d, h                                        ; $7689: $54
	inc  hl                                          ; $768a: $23
	ld   h, a                                        ; $768b: $67
	ld   l, b                                        ; $768c: $68
	cp   e                                           ; $768d: $bb
	xor  d                                           ; $768e: $aa
	adc  b                                           ; $768f: $88
	sbc  b                                           ; $7690: $98
	adc  c                                           ; $7691: $89
	sbc  d                                           ; $7692: $9a
	xor  d                                           ; $7693: $aa
	xor  d                                           ; $7694: $aa
	add  a                                           ; $7695: $87
	ld   d, h                                        ; $7696: $54
	inc  hl                                          ; $7697: $23
	ld   h, a                                        ; $7698: $67
	ld   l, b                                        ; $7699: $68
	cp   d                                           ; $769a: $ba
	sbc  c                                           ; $769b: $99
	adc  c                                           ; $769c: $89
	adc  b                                           ; $769d: $88
	adc  c                                           ; $769e: $89
	sbc  c                                           ; $769f: $99
	sbc  d                                           ; $76a0: $9a
	xor  e                                           ; $76a1: $ab
	add  a                                           ; $76a2: $87
	ld   d, h                                        ; $76a3: $54
	inc  hl                                          ; $76a4: $23
	ld   h, a                                        ; $76a5: $67
	ld   l, b                                        ; $76a6: $68
	cp   e                                           ; $76a7: $bb

Jump_0b9_76a8:
	sbc  c                                           ; $76a8: $99
	adc  b                                           ; $76a9: $88
	sub  a                                           ; $76aa: $97
	adc  c                                           ; $76ab: $89
	xor  d                                           ; $76ac: $aa
	sbc  d                                           ; $76ad: $9a
	cp   d                                           ; $76ae: $ba
	sub  a                                           ; $76af: $97
	ld   h, h                                        ; $76b0: $64
	inc  hl                                          ; $76b1: $23
	ld   h, a                                        ; $76b2: $67
	ld   h, a                                        ; $76b3: $67
	xor  e                                           ; $76b4: $ab
	xor  c                                           ; $76b5: $a9
	adc  c                                           ; $76b6: $89
	add  a                                           ; $76b7: $87
	adc  c                                           ; $76b8: $89
	sbc  d                                           ; $76b9: $9a
	sbc  d                                           ; $76ba: $9a
	xor  d                                           ; $76bb: $aa
	add  a                                           ; $76bc: $87
	ld   h, l                                        ; $76bd: $65
	inc  sp                                          ; $76be: $33
	ld   h, a                                        ; $76bf: $67
	ld   h, a                                        ; $76c0: $67
	xor  d                                           ; $76c1: $aa
	xor  c                                           ; $76c2: $a9
	adc  c                                           ; $76c3: $89
	sub  a                                           ; $76c4: $97
	adc  c                                           ; $76c5: $89
	sbc  d                                           ; $76c6: $9a
	xor  d                                           ; $76c7: $aa
	cp   d                                           ; $76c8: $ba
	sub  a                                           ; $76c9: $97
	ld   h, l                                        ; $76ca: $65
	inc  sp                                          ; $76cb: $33
	ld   h, a                                        ; $76cc: $67
	ld   h, a                                        ; $76cd: $67
	xor  d                                           ; $76ce: $aa
	sbc  b                                           ; $76cf: $98
	adc  c                                           ; $76d0: $89
	add  a                                           ; $76d1: $87
	sbc  c                                           ; $76d2: $99
	sbc  c                                           ; $76d3: $99
	sbc  d                                           ; $76d4: $9a
	xor  d                                           ; $76d5: $aa
	sbc  c                                           ; $76d6: $99
	ld   [hl], l                                     ; $76d7: $75
	inc  sp                                          ; $76d8: $33
	ld   d, [hl]                                     ; $76d9: $56
	ld   h, [hl]                                     ; $76da: $66
	sbc  d                                           ; $76db: $9a
	xor  c                                           ; $76dc: $a9
	sbc  b                                           ; $76dd: $98
	add  a                                           ; $76de: $87
	adc  c                                           ; $76df: $89
	sbc  c                                           ; $76e0: $99
	xor  d                                           ; $76e1: $aa
	cp   e                                           ; $76e2: $bb
	xor  c                                           ; $76e3: $a9
	halt                                             ; $76e4: $76
	ld   b, e                                        ; $76e5: $43
	ld   b, [hl]                                     ; $76e6: $46
	ld   h, [hl]                                     ; $76e7: $66
	adc  e                                           ; $76e8: $8b
	sbc  c                                           ; $76e9: $99
	sbc  b                                           ; $76ea: $98
	add  a                                           ; $76eb: $87
	adc  c                                           ; $76ec: $89
	sbc  c                                           ; $76ed: $99
	sbc  c                                           ; $76ee: $99
	xor  e                                           ; $76ef: $ab
	xor  c                                           ; $76f0: $a9
	add  [hl]                                        ; $76f1: $86
	ld   d, e                                        ; $76f2: $53
	ld   b, [hl]                                     ; $76f3: $46
	ld   h, l                                        ; $76f4: $65
	ld   a, c                                        ; $76f5: $79
	sbc  c                                           ; $76f6: $99
	adc  b                                           ; $76f7: $88
	sbc  b                                           ; $76f8: $98
	adc  b                                           ; $76f9: $88
	sbc  c                                           ; $76fa: $99
	xor  d                                           ; $76fb: $aa
	xor  e                                           ; $76fc: $ab
	xor  c                                           ; $76fd: $a9
	sub  a                                           ; $76fe: $97
	ld   h, h                                        ; $76ff: $64
	dec  [hl]                                        ; $7700: $35
	ld   h, [hl]                                     ; $7701: $66
	ld   l, c                                        ; $7702: $69
	xor  c                                           ; $7703: $a9
	sbc  c                                           ; $7704: $99
	sbc  b                                           ; $7705: $98
	adc  b                                           ; $7706: $88
	sbc  d                                           ; $7707: $9a
	sbc  d                                           ; $7708: $9a
	xor  e                                           ; $7709: $ab
	xor  c                                           ; $770a: $a9
	sbc  b                                           ; $770b: $98
	ld   h, l                                        ; $770c: $65
	dec  [hl]                                        ; $770d: $35
	ld   h, l                                        ; $770e: $65
	ld   h, a                                        ; $770f: $67
	sbc  c                                           ; $7710: $99
	adc  b                                           ; $7711: $88
	adc  b                                           ; $7712: $88
	ld   a, b                                        ; $7713: $78
	sbc  c                                           ; $7714: $99
	sbc  c                                           ; $7715: $99
	sbc  d                                           ; $7716: $9a
	xor  d                                           ; $7717: $aa
	sbc  c                                           ; $7718: $99
	halt                                             ; $7719: $76
	ld   d, h                                        ; $771a: $54
	ld   h, [hl]                                     ; $771b: $66
	ld   d, [hl]                                     ; $771c: $56
	sbc  c                                           ; $771d: $99
	adc  c                                           ; $771e: $89
	adc  b                                           ; $771f: $88
	adc  b                                           ; $7720: $88
	sbc  c                                           ; $7721: $99
	adc  c                                           ; $7722: $89
	xor  d                                           ; $7723: $aa
	xor  d                                           ; $7724: $aa
	xor  c                                           ; $7725: $a9
	add  a                                           ; $7726: $87
	ld   h, l                                        ; $7727: $65
	ld   d, [hl]                                     ; $7728: $56
	ld   h, [hl]                                     ; $7729: $66
	ld   l, b                                        ; $772a: $68
	adc  b                                           ; $772b: $88
	adc  b                                           ; $772c: $88
	adc  b                                           ; $772d: $88
	adc  c                                           ; $772e: $89
	sbc  b                                           ; $772f: $98
	sbc  d                                           ; $7730: $9a
	xor  d                                           ; $7731: $aa
	xor  d                                           ; $7732: $aa
	sbc  c                                           ; $7733: $99
	add  a                                           ; $7734: $87
	ld   h, l                                        ; $7735: $65
	ld   h, l                                        ; $7736: $65
	ld   d, [hl]                                     ; $7737: $56
	ld   [hl], a                                     ; $7738: $77
	ld   a, b                                        ; $7739: $78
	adc  c                                           ; $773a: $89
	adc  b                                           ; $773b: $88
	sbc  c                                           ; $773c: $99
	adc  c                                           ; $773d: $89
	sbc  c                                           ; $773e: $99
	xor  d                                           ; $773f: $aa
	cp   d                                           ; $7740: $ba
	xor  b                                           ; $7741: $a8
	halt                                             ; $7742: $76
	ld   h, [hl]                                     ; $7743: $66
	ld   h, l                                        ; $7744: $65
	ld   h, [hl]                                     ; $7745: $66
	ld   h, a                                        ; $7746: $67
	ld   [hl], a                                     ; $7747: $77

Call_0b9_7748:
	adc  b                                           ; $7748: $88
	adc  c                                           ; $7749: $89
	sbc  c                                           ; $774a: $99
	sbc  c                                           ; $774b: $99
	xor  d                                           ; $774c: $aa
	xor  d                                           ; $774d: $aa
	cp   d                                           ; $774e: $ba
	sbc  b                                           ; $774f: $98
	halt                                             ; $7750: $76
	ld   h, l                                        ; $7751: $65
	ld   d, l                                        ; $7752: $55
	ld   h, [hl]                                     ; $7753: $66
	ld   h, [hl]                                     ; $7754: $66
	ld   [hl], a                                     ; $7755: $77
	adc  c                                           ; $7756: $89
	sbc  b                                           ; $7757: $98
	sbc  d                                           ; $7758: $9a
	xor  d                                           ; $7759: $aa
	cp   e                                           ; $775a: $bb
	cp   d                                           ; $775b: $ba
	xor  c                                           ; $775c: $a9
	add  a                                           ; $775d: $87
	ld   h, l                                        ; $775e: $65
	ld   d, l                                        ; $775f: $55
	ld   d, l                                        ; $7760: $55
	ld   h, [hl]                                     ; $7761: $66
	ld   h, a                                        ; $7762: $67
	ld   a, b                                        ; $7763: $78
	sbc  b                                           ; $7764: $98
	sbc  c                                           ; $7765: $99
	sbc  d                                           ; $7766: $9a
	xor  e                                           ; $7767: $ab
	xor  d                                           ; $7768: $aa
	xor  d                                           ; $7769: $aa
	xor  c                                           ; $776a: $a9
	halt                                             ; $776b: $76
	ld   h, l                                        ; $776c: $65
	ld   d, l                                        ; $776d: $55
	ld   d, l                                        ; $776e: $55
	ld   h, [hl]                                     ; $776f: $66
	ld   h, a                                        ; $7770: $67
	adc  b                                           ; $7771: $88
	sbc  b                                           ; $7772: $98
	sbc  d                                           ; $7773: $9a
	xor  d                                           ; $7774: $aa
	cp   e                                           ; $7775: $bb
	cp   d                                           ; $7776: $ba
	xor  d                                           ; $7777: $aa
	add  a                                           ; $7778: $87
	ld   h, [hl]                                     ; $7779: $66
	ld   d, l                                        ; $777a: $55
	ld   d, l                                        ; $777b: $55
	ld   d, [hl]                                     ; $777c: $56
	ld   h, [hl]                                     ; $777d: $66
	ld   a, b                                        ; $777e: $78
	adc  c                                           ; $777f: $89
	adc  c                                           ; $7780: $89
	xor  c                                           ; $7781: $a9
	xor  e                                           ; $7782: $ab
	xor  d                                           ; $7783: $aa
	xor  e                                           ; $7784: $ab
	xor  b                                           ; $7785: $a8
	halt                                             ; $7786: $76
	ld   h, l                                        ; $7787: $65
	ld   d, l                                        ; $7788: $55
	ld   d, l                                        ; $7789: $55
	ld   h, [hl]                                     ; $778a: $66
	ld   h, a                                        ; $778b: $67
	adc  b                                           ; $778c: $88
	sbc  b                                           ; $778d: $98
	sbc  d                                           ; $778e: $9a
	sbc  d                                           ; $778f: $9a
	cp   d                                           ; $7790: $ba
	cp   d                                           ; $7791: $ba
	cp   c                                           ; $7792: $b9
	sbc  b                                           ; $7793: $98
	halt                                             ; $7794: $76
	ld   d, l                                        ; $7795: $55
	ld   d, l                                        ; $7796: $55
	ld   d, l                                        ; $7797: $55
	ld   h, [hl]                                     ; $7798: $66
	ld   a, b                                        ; $7799: $78
	adc  c                                           ; $779a: $89
	adc  c                                           ; $779b: $89
	xor  c                                           ; $779c: $a9
	xor  e                                           ; $779d: $ab
	xor  e                                           ; $779e: $ab
	xor  e                                           ; $779f: $ab
	xor  c                                           ; $77a0: $a9
	add  a                                           ; $77a1: $87
	ld   h, [hl]                                     ; $77a2: $66
	ld   d, l                                        ; $77a3: $55
	ld   d, l                                        ; $77a4: $55
	ld   d, [hl]                                     ; $77a5: $56
	ld   h, a                                        ; $77a6: $67
	adc  b                                           ; $77a7: $88
	sbc  b                                           ; $77a8: $98
	sbc  d                                           ; $77a9: $9a

Call_0b9_77aa:
	sbc  d                                           ; $77aa: $9a
	cp   d                                           ; $77ab: $ba
	cp   d                                           ; $77ac: $ba
	cp   d                                           ; $77ad: $ba
	sbc  b                                           ; $77ae: $98
	halt                                             ; $77af: $76
	ld   h, l                                        ; $77b0: $65
	ld   d, l                                        ; $77b1: $55
	ld   d, l                                        ; $77b2: $55
	ld   h, [hl]                                     ; $77b3: $66
	ld   [hl], a                                     ; $77b4: $77
	adc  c                                           ; $77b5: $89
	adc  c                                           ; $77b6: $89
	xor  c                                           ; $77b7: $a9
	xor  e                                           ; $77b8: $ab
	xor  e                                           ; $77b9: $ab
	cp   d                                           ; $77ba: $ba
	xor  c                                           ; $77bb: $a9
	sub  a                                           ; $77bc: $97
	ld   h, [hl]                                     ; $77bd: $66
	ld   d, l                                        ; $77be: $55
	ld   d, l                                        ; $77bf: $55
	ld   h, [hl]                                     ; $77c0: $66
	ld   h, a                                        ; $77c1: $67
	ld   a, b                                        ; $77c2: $78
	sbc  b                                           ; $77c3: $98
	sbc  d                                           ; $77c4: $9a
	sbc  d                                           ; $77c5: $9a
	xor  e                                           ; $77c6: $ab
	cp   e                                           ; $77c7: $bb
	xor  d                                           ; $77c8: $aa
	xor  c                                           ; $77c9: $a9
	halt                                             ; $77ca: $76
	ld   h, l                                        ; $77cb: $65
	ld   d, l                                        ; $77cc: $55
	ld   d, [hl]                                     ; $77cd: $56
	ld   h, [hl]                                     ; $77ce: $66
	ld   [hl], a                                     ; $77cf: $77
	adc  c                                           ; $77d0: $89
	adc  c                                           ; $77d1: $89
	sbc  c                                           ; $77d2: $99
	xor  d                                           ; $77d3: $aa
	cp   e                                           ; $77d4: $bb
	cp   d                                           ; $77d5: $ba
	xor  d                                           ; $77d6: $aa
	sub  a                                           ; $77d7: $97
	ld   h, [hl]                                     ; $77d8: $66
	ld   d, l                                        ; $77d9: $55
	ld   d, l                                        ; $77da: $55
	ld   h, [hl]                                     ; $77db: $66
	ld   h, a                                        ; $77dc: $67
	ld   a, b                                        ; $77dd: $78
	sbc  b                                           ; $77de: $98
	sbc  c                                           ; $77df: $99
	xor  d                                           ; $77e0: $aa
	xor  e                                           ; $77e1: $ab
	xor  e                                           ; $77e2: $ab
	xor  d                                           ; $77e3: $aa
	xor  b                                           ; $77e4: $a8
	halt                                             ; $77e5: $76
	ld   h, l                                        ; $77e6: $65
	ld   d, l                                        ; $77e7: $55
	ld   d, [hl]                                     ; $77e8: $56
	ld   h, [hl]                                     ; $77e9: $66
	ld   [hl], a                                     ; $77ea: $77
	adc  c                                           ; $77eb: $89
	adc  c                                           ; $77ec: $89
	sbc  d                                           ; $77ed: $9a
	xor  d                                           ; $77ee: $aa
	cp   d                                           ; $77ef: $ba
	cp   d                                           ; $77f0: $ba
	xor  d                                           ; $77f1: $aa
	add  a                                           ; $77f2: $87
	ld   h, [hl]                                     ; $77f3: $66
	ld   d, l                                        ; $77f4: $55
	ld   d, l                                        ; $77f5: $55
	ld   h, [hl]                                     ; $77f6: $66
	ld   h, a                                        ; $77f7: $67
	ld   a, b                                        ; $77f8: $78
	sbc  b                                           ; $77f9: $98
	sbc  c                                           ; $77fa: $99
	xor  d                                           ; $77fb: $aa
	xor  e                                           ; $77fc: $ab
	xor  e                                           ; $77fd: $ab
	xor  d                                           ; $77fe: $aa
	sbc  b                                           ; $77ff: $98
	halt                                             ; $7800: $76
	ld   h, l                                        ; $7801: $65
	ld   d, l                                        ; $7802: $55
	ld   d, [hl]                                     ; $7803: $56
	ld   h, [hl]                                     ; $7804: $66
	ld   [hl], a                                     ; $7805: $77
	adc  c                                           ; $7806: $89
	adc  c                                           ; $7807: $89
	sbc  d                                           ; $7808: $9a
	sbc  d                                           ; $7809: $9a
	cp   d                                           ; $780a: $ba
	xor  d                                           ; $780b: $aa
	xor  d                                           ; $780c: $aa
	add  a                                           ; $780d: $87
	ld   h, [hl]                                     ; $780e: $66
	ld   d, l                                        ; $780f: $55
	ld   d, l                                        ; $7810: $55
	ld   h, [hl]                                     ; $7811: $66
	ld   h, a                                        ; $7812: $67
	ld   a, b                                        ; $7813: $78
	sbc  b                                           ; $7814: $98
	sbc  c                                           ; $7815: $99
	xor  d                                           ; $7816: $aa
	xor  e                                           ; $7817: $ab
	xor  d                                           ; $7818: $aa
	xor  d                                           ; $7819: $aa
	sbc  b                                           ; $781a: $98
	ld   [hl], a                                     ; $781b: $77
	ld   h, l                                        ; $781c: $65
	ld   d, l                                        ; $781d: $55
	ld   d, l                                        ; $781e: $55
	ld   h, [hl]                                     ; $781f: $66
	ld   [hl], a                                     ; $7820: $77
	adc  c                                           ; $7821: $89
	adc  c                                           ; $7822: $89
	sbc  d                                           ; $7823: $9a
	sbc  d                                           ; $7824: $9a
	xor  e                                           ; $7825: $ab
	xor  e                                           ; $7826: $ab
	xor  c                                           ; $7827: $a9
	add  a                                           ; $7828: $87
	halt                                             ; $7829: $76
	ld   h, l                                        ; $782a: $65
	ld   d, l                                        ; $782b: $55
	ld   d, [hl]                                     ; $782c: $56
	ld   h, a                                        ; $782d: $67
	ld   a, b                                        ; $782e: $78
	sbc  b                                           ; $782f: $98
	sbc  c                                           ; $7830: $99
	xor  c                                           ; $7831: $a9
	xor  d                                           ; $7832: $aa
	cp   d                                           ; $7833: $ba
	cp   d                                           ; $7834: $ba
	xor  b                                           ; $7835: $a8
	ld   [hl], a                                     ; $7836: $77
	ld   h, l                                        ; $7837: $65
	ld   d, l                                        ; $7838: $55
	ld   d, l                                        ; $7839: $55
	ld   h, [hl]                                     ; $783a: $66
	ld   [hl], a                                     ; $783b: $77
	adc  c                                           ; $783c: $89
	sbc  c                                           ; $783d: $99
	sbc  d                                           ; $783e: $9a
	sbc  d                                           ; $783f: $9a
	xor  e                                           ; $7840: $ab
	cp   e                                           ; $7841: $bb
	xor  d                                           ; $7842: $aa
	add  a                                           ; $7843: $87
	halt                                             ; $7844: $76
	ld   d, l                                        ; $7845: $55
	ld   d, l                                        ; $7846: $55
	ld   d, [hl]                                     ; $7847: $56
	ld   h, a                                        ; $7848: $67
	ld   a, b                                        ; $7849: $78
	adc  c                                           ; $784a: $89
	sbc  d                                           ; $784b: $9a
	xor  c                                           ; $784c: $a9
	xor  d                                           ; $784d: $aa
	cp   e                                           ; $784e: $bb
	xor  d                                           ; $784f: $aa
	sbc  c                                           ; $7850: $99
	halt                                             ; $7851: $76
	ld   h, l                                        ; $7852: $65
	ld   d, l                                        ; $7853: $55
	ld   d, l                                        ; $7854: $55
	ld   h, [hl]                                     ; $7855: $66
	ld   [hl], a                                     ; $7856: $77
	adc  b                                           ; $7857: $88
	sbc  c                                           ; $7858: $99
	xor  c                                           ; $7859: $a9
	sbc  d                                           ; $785a: $9a
	xor  e                                           ; $785b: $ab
	cp   d                                           ; $785c: $ba
	xor  c                                           ; $785d: $a9
	sub  a                                           ; $785e: $97
	ld   h, [hl]                                     ; $785f: $66
	ld   h, l                                        ; $7860: $65
	ld   d, l                                        ; $7861: $55
	ld   d, [hl]                                     ; $7862: $56
	ld   h, a                                        ; $7863: $67
	ld   a, b                                        ; $7864: $78
	adc  c                                           ; $7865: $89
	sbc  d                                           ; $7866: $9a
	sbc  c                                           ; $7867: $99
	xor  d                                           ; $7868: $aa
	cp   e                                           ; $7869: $bb
	xor  c                                           ; $786a: $a9
	sbc  b                                           ; $786b: $98
	halt                                             ; $786c: $76
	ld   h, [hl]                                     ; $786d: $66
	ld   d, l                                        ; $786e: $55
	ld   d, l                                        ; $786f: $55
	ld   h, [hl]                                     ; $7870: $66
	ld   [hl], a                                     ; $7871: $77
	adc  b                                           ; $7872: $88
	sbc  c                                           ; $7873: $99
	xor  c                                           ; $7874: $a9
	sbc  d                                           ; $7875: $9a
	xor  d                                           ; $7876: $aa
	xor  d                                           ; $7877: $aa
	sbc  c                                           ; $7878: $99
	add  a                                           ; $7879: $87
	ld   h, [hl]                                     ; $787a: $66
	ld   h, l                                        ; $787b: $65
	ld   d, l                                        ; $787c: $55
	ld   d, [hl]                                     ; $787d: $56
	ld   h, a                                        ; $787e: $67
	ld   a, b                                        ; $787f: $78
	adc  c                                           ; $7880: $89
	sbc  d                                           ; $7881: $9a
	sbc  d                                           ; $7882: $9a
	xor  d                                           ; $7883: $aa
	xor  d                                           ; $7884: $aa
	xor  d                                           ; $7885: $aa
	adc  b                                           ; $7886: $88
	halt                                             ; $7887: $76
	ld   h, [hl]                                     ; $7888: $66
	ld   d, l                                        ; $7889: $55
	ld   d, l                                        ; $788a: $55
	ld   h, [hl]                                     ; $788b: $66
	ld   [hl], a                                     ; $788c: $77
	adc  b                                           ; $788d: $88
	sbc  d                                           ; $788e: $9a
	xor  c                                           ; $788f: $a9
	xor  d                                           ; $7890: $aa
	xor  d                                           ; $7891: $aa
	xor  d                                           ; $7892: $aa
	xor  b                                           ; $7893: $a8
	add  a                                           ; $7894: $87
	ld   h, [hl]                                     ; $7895: $66
	ld   h, l                                        ; $7896: $65
	ld   d, l                                        ; $7897: $55
	ld   d, [hl]                                     ; $7898: $56
	ld   h, a                                        ; $7899: $67
	ld   a, b                                        ; $789a: $78
	adc  c                                           ; $789b: $89
	xor  c                                           ; $789c: $a9
	sbc  d                                           ; $789d: $9a
	xor  d                                           ; $789e: $aa
	xor  d                                           ; $789f: $aa
	sbc  c                                           ; $78a0: $99
	sbc  b                                           ; $78a1: $98
	halt                                             ; $78a2: $76
	ld   h, [hl]                                     ; $78a3: $66
	ld   h, [hl]                                     ; $78a4: $66
	ld   d, l                                        ; $78a5: $55
	ld   h, [hl]                                     ; $78a6: $66
	ld   [hl], a                                     ; $78a7: $77
	adc  b                                           ; $78a8: $88
	sbc  d                                           ; $78a9: $9a
	sbc  c                                           ; $78aa: $99
	xor  d                                           ; $78ab: $aa
	xor  d                                           ; $78ac: $aa
	xor  c                                           ; $78ad: $a9
	sbc  c                                           ; $78ae: $99
	add  a                                           ; $78af: $87
	halt                                             ; $78b0: $76
	ld   h, [hl]                                     ; $78b1: $66
	ld   d, l                                        ; $78b2: $55
	ld   d, [hl]                                     ; $78b3: $56
	ld   h, a                                        ; $78b4: $67
	ld   a, b                                        ; $78b5: $78
	adc  c                                           ; $78b6: $89
	xor  c                                           ; $78b7: $a9
	xor  d                                           ; $78b8: $aa

Call_0b9_78b9:
	xor  d                                           ; $78b9: $aa
	xor  d                                           ; $78ba: $aa
	xor  c                                           ; $78bb: $a9
	sbc  b                                           ; $78bc: $98
	ld   [hl], a                                     ; $78bd: $77
	ld   h, [hl]                                     ; $78be: $66
	ld   h, [hl]                                     ; $78bf: $66
	ld   d, l                                        ; $78c0: $55
	ld   h, [hl]                                     ; $78c1: $66
	ld   [hl], a                                     ; $78c2: $77
	adc  c                                           ; $78c3: $89
	sbc  d                                           ; $78c4: $9a
	sbc  d                                           ; $78c5: $9a
	xor  d                                           ; $78c6: $aa
	xor  d                                           ; $78c7: $aa
	xor  d                                           ; $78c8: $aa
	sbc  c                                           ; $78c9: $99
	add  a                                           ; $78ca: $87
	halt                                             ; $78cb: $76
	ld   h, [hl]                                     ; $78cc: $66
	ld   h, l                                        ; $78cd: $65
	ld   d, [hl]                                     ; $78ce: $56
	ld   h, [hl]                                     ; $78cf: $66
	ld   a, b                                        ; $78d0: $78
	sbc  b                                           ; $78d1: $98
	sbc  d                                           ; $78d2: $9a
	xor  d                                           ; $78d3: $aa
	xor  d                                           ; $78d4: $aa
	xor  d                                           ; $78d5: $aa
	xor  c                                           ; $78d6: $a9
	adc  b                                           ; $78d7: $88
	add  a                                           ; $78d8: $87
	halt                                             ; $78d9: $76
	ld   h, [hl]                                     ; $78da: $66
	ld   h, [hl]                                     ; $78db: $66
	ld   h, [hl]                                     ; $78dc: $66
	ld   h, a                                        ; $78dd: $67
	ld   a, b                                        ; $78de: $78
	sbc  c                                           ; $78df: $99
	xor  c                                           ; $78e0: $a9
	xor  d                                           ; $78e1: $aa
	xor  d                                           ; $78e2: $aa
	xor  d                                           ; $78e3: $aa
	sbc  c                                           ; $78e4: $99
	sbc  b                                           ; $78e5: $98
	ld   [hl], a                                     ; $78e6: $77
	halt                                             ; $78e7: $76
	ld   h, [hl]                                     ; $78e8: $66
	ld   h, [hl]                                     ; $78e9: $66
	ld   h, [hl]                                     ; $78ea: $66
	ld   [hl], a                                     ; $78eb: $77
	adc  b                                           ; $78ec: $88
	adc  c                                           ; $78ed: $89
	xor  c                                           ; $78ee: $a9
	xor  d                                           ; $78ef: $aa
	xor  c                                           ; $78f0: $a9
	sbc  d                                           ; $78f1: $9a
	sbc  c                                           ; $78f2: $99
	sbc  b                                           ; $78f3: $98
	ld   [hl], a                                     ; $78f4: $77
	halt                                             ; $78f5: $76
	ld   h, [hl]                                     ; $78f6: $66
	ld   h, [hl]                                     ; $78f7: $66
	ld   h, [hl]                                     ; $78f8: $66
	ld   [hl], a                                     ; $78f9: $77
	adc  b                                           ; $78fa: $88
	adc  c                                           ; $78fb: $89
	sbc  d                                           ; $78fc: $9a
	sbc  c                                           ; $78fd: $99
	sbc  c                                           ; $78fe: $99
	xor  c                                           ; $78ff: $a9
	sbc  b                                           ; $7900: $98
	sbc  b                                           ; $7901: $98
	add  a                                           ; $7902: $87
	ld   [hl], a                                     ; $7903: $77
	halt                                             ; $7904: $76
	ld   h, [hl]                                     ; $7905: $66
	ld   h, [hl]                                     ; $7906: $66
	ld   [hl], a                                     ; $7907: $77
	ld   a, b                                        ; $7908: $78
	sbc  b                                           ; $7909: $98
	sbc  c                                           ; $790a: $99
	xor  d                                           ; $790b: $aa
	xor  d                                           ; $790c: $aa
	xor  d                                           ; $790d: $aa
	sbc  b                                           ; $790e: $98
	adc  c                                           ; $790f: $89
	adc  b                                           ; $7910: $88
	ld   [hl], a                                     ; $7911: $77
	ld   [hl], a                                     ; $7912: $77
	halt                                             ; $7913: $76
	ld   [hl], a                                     ; $7914: $77
	ld   [hl], a                                     ; $7915: $77
	ld   a, b                                        ; $7916: $78
	adc  c                                           ; $7917: $89
	sbc  b                                           ; $7918: $98
	sbc  c                                           ; $7919: $99
	sbc  c                                           ; $791a: $99
	sbc  c                                           ; $791b: $99
	sbc  b                                           ; $791c: $98
	sbc  b                                           ; $791d: $98
	adc  b                                           ; $791e: $88
	ld   [hl], a                                     ; $791f: $77
	ld   [hl], a                                     ; $7920: $77
	ld   [hl], a                                     ; $7921: $77
	ld   [hl], a                                     ; $7922: $77
	ld   [hl], a                                     ; $7923: $77
	ld   a, b                                        ; $7924: $78
	adc  b                                           ; $7925: $88
	sbc  c                                           ; $7926: $99
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  c                                           ; $792a: $89
	sbc  b                                           ; $792b: $98
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	ld   [hl], a                                     ; $792e: $77
	ld   [hl], a                                     ; $792f: $77
	ld   [hl], a                                     ; $7930: $77
	ld   a, b                                        ; $7931: $78
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

Call_0b9_7947:
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

Call_0b9_797c:
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
	sbc  b                                           ; $79af: $98
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  c                                           ; $79b3: $89
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88
	adc  c                                           ; $79b6: $89
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88

Call_0b9_79ba:
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
	adc  c                                           ; $79c4: $89
	sbc  d                                           ; $79c5: $9a
	sbc  b                                           ; $79c6: $98
	ld   a, b                                        ; $79c7: $78
	sbc  b                                           ; $79c8: $98
	adc  c                                           ; $79c9: $89
	add  a                                           ; $79ca: $87

Call_0b9_79cb:
	adc  b                                           ; $79cb: $88
	add  a                                           ; $79cc: $87
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	add  a                                           ; $79cf: $87
	ld   [hl], a                                     ; $79d0: $77
	adc  b                                           ; $79d1: $88
	ld   a, c                                        ; $79d2: $79
	sbc  b                                           ; $79d3: $98
	adc  b                                           ; $79d4: $88
	sbc  b                                           ; $79d5: $98
	adc  c                                           ; $79d6: $89
	sbc  b                                           ; $79d7: $98
	adc  b                                           ; $79d8: $88
	ld   [hl], a                                     ; $79d9: $77
	ld   [hl], a                                     ; $79da: $77
	ld   [hl], a                                     ; $79db: $77
	ld   [hl], a                                     ; $79dc: $77
	ld   [hl], a                                     ; $79dd: $77
	ld   a, b                                        ; $79de: $78
	adc  b                                           ; $79df: $88
	sbc  b                                           ; $79e0: $98
	sbc  b                                           ; $79e1: $98
	adc  b                                           ; $79e2: $88
	sbc  c                                           ; $79e3: $99
	sbc  c                                           ; $79e4: $99
	adc  b                                           ; $79e5: $88
	halt                                             ; $79e6: $76
	ld   d, h                                        ; $79e7: $54
	inc  [hl]                                        ; $79e8: $34
	ld   b, l                                        ; $79e9: $45
	ld   a, b                                        ; $79ea: $78
	xor  e                                           ; $79eb: $ab
	call $cbdd                                       ; $79ec: $cd $dd $cb
	sbc  b                                           ; $79ef: $98
	halt                                             ; $79f0: $76
	ld   d, e                                        ; $79f1: $53
	ld   de, $7617                                   ; $79f2: $11 $17 $76
	rst  JumpTable                                         ; $79f5: $df
	ei                                               ; $79f6: $fb
	rst  $28                                         ; $79f7: $ef
	sub  a                                           ; $79f8: $97
	adc  c                                           ; $79f9: $89
	ld   b, h                                        ; $79fa: $44
	sbc  b                                           ; $79fb: $98
	ld   l, b                                        ; $79fc: $68
	xor  d                                           ; $79fd: $aa
	ld   d, e                                        ; $79fe: $53
	dec  [hl]                                        ; $79ff: $35
	sub  h                                           ; $7a00: $94
	adc  d                                           ; $7a01: $8a
	jp   z, $b7af                                    ; $7a02: $ca $af $b7

	sbc  e                                           ; $7a05: $9b
	halt                                             ; $7a06: $76
	adc  e                                           ; $7a07: $8b
	ld   h, l                                        ; $7a08: $65
	ld   d, c                                        ; $7a09: $51
	ld   de, $7ee8                                   ; $7a0a: $11 $e8 $7e
	db   $fc                                         ; $7a0d: $fc
	ld   a, a                                        ; $7a0e: $7f
	jp   $732c                                       ; $7a0f: $c3 $2c $73


	adc  h                                           ; $7a12: $8c
	and  h                                           ; $7a13: $a4
	and  [hl]                                        ; $7a14: $a6
	ld   de, $763d                                   ; $7a15: $11 $3d $76
	rst  JumpTable                                         ; $7a18: $df
	rst  ToBoot                                         ; $7a19: $c7
	sbc  $43                                         ; $7a1a: $de $43
	xor  e                                           ; $7a1c: $ab
	ld   d, a                                        ; $7a1d: $57
	reti                                             ; $7a1e: $d9


	ld   [hl+], a                                    ; $7a1f: $22
	ld   de, $ca2c                                   ; $7a20: $11 $2c $ca
	rst  $28                                         ; $7a23: $ef
	rst  $10                                         ; $7a24: $d7
	reti                                             ; $7a25: $d9


	ld   b, h                                        ; $7a26: $44
	adc  c                                           ; $7a27: $89
	ld   a, d                                        ; $7a28: $7a
	cp   c                                           ; $7a29: $b9
	ld   b, e                                        ; $7a2a: $43
	ld   bc, $c90b                                   ; $7a2b: $01 $0b $c9
	rst  $28                                         ; $7a2e: $ef
	or   $ab                                         ; $7a2f: $f6 $ab
	ld   b, d                                        ; $7a31: $42
	ld   a, h                                        ; $7a32: $7c
	ld   a, c                                        ; $7a33: $79
	cp   e                                           ; $7a34: $bb
	ld   b, c                                        ; $7a35: $41
	ld   de, $db1c                                   ; $7a36: $11 $1c $db
	rst  $28                                         ; $7a39: $ef
	push af                                          ; $7a3a: $f5
	sbc  c                                           ; $7a3b: $99
	ld   [hl-], a                                    ; $7a3c: $32
	adc  l                                           ; $7a3d: $8d
	sbc  d                                           ; $7a3e: $9a
	cp   c                                           ; $7a3f: $b9
	ld   sp, $3d11                                   ; $7a40: $31 $11 $3d
	db   $ed                                         ; $7a43: $ed
	rst  $38                                         ; $7a44: $ff
	call nz, $2487                                   ; $7a45: $c4 $87 $24
	xor  a                                           ; $7a48: $af
	xor  e                                           ; $7a49: $ab
	or   a                                           ; $7a4a: $b7
	ld   de, $7f11                                   ; $7a4b: $11 $11 $7f
	rst  $38                                         ; $7a4e: $ff
	rst  $38                                         ; $7a4f: $ff
	add  d                                           ; $7a50: $82
	ld   [hl], h                                     ; $7a51: $74
	dec  h                                           ; $7a52: $25
	rst  JumpTable                                         ; $7a53: $df
	xor  d                                           ; $7a54: $aa
	add  h                                           ; $7a55: $84
	ld   de, $df11                                   ; $7a56: $11 $11 $df
	rst  $38                                         ; $7a59: $ff
	cp   $31                                         ; $7a5a: $fe $31
	ld   h, h                                        ; $7a5c: $64
	ld   e, d                                        ; $7a5d: $5a
	rst  $38                                         ; $7a5e: $ff
	sbc  b                                           ; $7a5f: $98
	ld   b, c                                        ; $7a60: $41
	ld   de, $ff17                                   ; $7a61: $11 $17 $ff
	rst  $38                                         ; $7a64: $ff
	and  $14                                         ; $7a65: $e6 $14
	ld   d, l                                        ; $7a67: $55
	xor  a                                           ; $7a68: $af
	ei                                               ; $7a69: $fb
	add  e                                           ; $7a6a: $83
	ld   bc, $3f11                                   ; $7a6b: $01 $11 $3f
	rst  $38                                         ; $7a6e: $ff
	db   $fd                                         ; $7a6f: $fd
	sub  c                                           ; $7a70: $91
	rla                                              ; $7a71: $17
	ld   l, d                                        ; $7a72: $6a
	rst  JumpTable                                         ; $7a73: $df
	or   $31                                         ; $7a74: $f6 $31
	ld   de, $bf12                                   ; $7a76: $11 $12 $bf
	rst  $38                                         ; $7a79: $ff
	add  sp, $21                                     ; $7a7a: $e8 $21
	ld   l, b                                        ; $7a7c: $68
	sbc  a                                           ; $7a7d: $9f
	rst  $38                                         ; $7a7e: $ff
	ld   h, e                                        ; $7a7f: $63
	ld   de, $3611                                   ; $7a80: $11 $11 $36
	rst  $38                                         ; $7a83: $ff
	db   $ed                                         ; $7a84: $ed
	add  h                                           ; $7a85: $84
	ld   [de], a                                     ; $7a86: $12
	jp   c, $f7ef                                    ; $7a87: $da $ef $f7

	ld   de, $1411                                   ; $7a8a: $11 $11 $14
	ld   e, a                                        ; $7a8d: $5f
	cp   $c6                                         ; $7a8e: $fe $c6
	ld   b, c                                        ; $7a90: $41
	rra                                              ; $7a91: $1f
	rst  JumpTable                                         ; $7a92: $df
	rst  $38                                         ; $7a93: $ff
	ld   [hl], c                                     ; $7a94: $71
	ld   de, $5511                                   ; $7a95: $11 $11 $55
	rst  $38                                         ; $7a98: $ff
	jp   c, $1155                                    ; $7a99: $da $55 $11

	db   $fd                                         ; $7a9c: $fd
	rst  $28                                         ; $7a9d: $ef
	rst  $30                                         ; $7a9e: $f7
	ld   de, $2413                                   ; $7a9f: $11 $13 $24
	ld   e, a                                        ; $7aa2: $5f
	db   $fc                                         ; $7aa3: $fc
	add  h                                           ; $7aa4: $84
	ld   d, c                                        ; $7aa5: $51
	rra                                              ; $7aa6: $1f
	rst  $38                                         ; $7aa7: $ff
	sbc  $41                                         ; $7aa8: $de $41
	ld   de, $3573                                   ; $7aaa: $11 $73 $35
	rst  $38                                         ; $7aad: $ff
	ld   [hl], a                                     ; $7aae: $77
	ld   d, [hl]                                     ; $7aaf: $56
	ld   d, $fc                                      ; $7ab0: $16 $fc
	call c, $11e1                                    ; $7ab2: $dc $e1 $11
	scf                                              ; $7ab5: $37
	inc  de                                          ; $7ab6: $13
	xor  a                                           ; $7ab7: $af
	push af                                          ; $7ab8: $f5
	halt                                             ; $7ab9: $76
	ld   sp, $bdff                                   ; $7aba: $31 $ff $bd
	cp   c                                           ; $7abd: $b9
	ld   de, $6127                                   ; $7abe: $11 $27 $61
	ld   c, a                                        ; $7ac1: $4f
	ld   sp, hl                                      ; $7ac2: $f9
	ld   h, a                                        ; $7ac3: $67
	ld   [hl], c                                     ; $7ac4: $71
	cpl                                              ; $7ac5: $2f
	db   $fc                                         ; $7ac6: $fc
	cp   e                                           ; $7ac7: $bb
	ld   sp, $8114                                   ; $7ac8: $31 $14 $81
	inc  e                                           ; $7acb: $1c
	rst  $38                                         ; $7acc: $ff
	ld   b, a                                        ; $7acd: $47
	add  d                                           ; $7ace: $82
	rra                                              ; $7acf: $1f
	db   $fc                                         ; $7ad0: $fc
	jp   z, $1271                                    ; $7ad1: $ca $71 $12

	add  h                                           ; $7ad4: $84
	add  hl, de                                      ; $7ad5: $19
	rst  $38                                         ; $7ad6: $ff
	ld   [hl], $85                                   ; $7ad7: $36 $85
	dec  e                                           ; $7ad9: $1d
	ei                                               ; $7ada: $fb
	reti                                             ; $7adb: $d9


	add  c                                           ; $7adc: $81
	ld   [de], a                                     ; $7add: $12
	halt                                             ; $7ade: $76
	rla                                              ; $7adf: $17
	rst  $38                                         ; $7ae0: $ff
	ld   b, l                                        ; $7ae1: $45
	and  l                                           ; $7ae2: $a5
	dec  e                                           ; $7ae3: $1d
	db   $fc                                         ; $7ae4: $fc
	sub  $71                                         ; $7ae5: $d6 $71
	ld   [de], a                                     ; $7ae7: $12
	halt                                             ; $7ae8: $76
	add  hl, de                                      ; $7ae9: $19
	rst  $38                                         ; $7aea: $ff
	dec  [hl]                                        ; $7aeb: $35
	and  h                                           ; $7aec: $a4
	rra                                              ; $7aed: $1f
	db   $fc                                         ; $7aee: $fc
	or   l                                           ; $7aef: $b5
	ld   h, c                                        ; $7af0: $61
	inc  de                                          ; $7af1: $13
	add  l                                           ; $7af2: $85
	ld   e, $ff                                      ; $7af3: $1e $ff
	ld   h, $a2                                      ; $7af5: $26 $a2
	rra                                              ; $7af7: $1f
	db   $fc                                         ; $7af8: $fc
	add  h                                           ; $7af9: $84
	ld   b, c                                        ; $7afa: $41
	inc  d                                           ; $7afb: $14
	add  d                                           ; $7afc: $82
	rra                                              ; $7afd: $1f
	rst  $30                                         ; $7afe: $f7
	add  hl, hl                                      ; $7aff: $29
	sub  c                                           ; $7b00: $91
	xor  a                                           ; $7b01: $af
	db   $db                                         ; $7b02: $db
	ld   d, h                                        ; $7b03: $54
	ld   de, $7126                                   ; $7b04: $11 $26 $71
	rst  JumpTable                                         ; $7b07: $df
	ldh  [c], a                                      ; $7b08: $e2
	ld   e, e                                        ; $7b09: $5b
	inc  h                                           ; $7b0a: $24
	rst  $38                                         ; $7b0b: $ff
	ret  z                                           ; $7b0c: $c8

	inc  sp                                          ; $7b0d: $33
	ld   de, $2648                                   ; $7b0e: $11 $48 $26
	rst  $38                                         ; $7b11: $ff
	inc  sp                                          ; $7b12: $33
	and  l                                           ; $7b13: $a5
	rra                                              ; $7b14: $1f
	db   $fc                                         ; $7b15: $fc
	and  e                                           ; $7b16: $a3
	ld   sp, $7413                                   ; $7b17: $31 $13 $74
	ccf                                              ; $7b1a: $3f
	or   $19                                         ; $7b1b: $f6 $19
	sub  c                                           ; $7b1d: $91
	rst  $28                                         ; $7b1e: $ef
	ld   [$1143], a                                  ; $7b1f: $ea $43 $11
	ld   h, $52                                      ; $7b22: $26 $52
	rst  $38                                         ; $7b24: $ff
	add  c                                           ; $7b25: $81
	ld   a, c                                        ; $7b26: $79
	dec  e                                           ; $7b27: $1d
	rst  $38                                         ; $7b28: $ff
	or   d                                           ; $7b29: $b2
	ld   sp, $6612                                   ; $7b2a: $31 $12 $66
	ccf                                              ; $7b2d: $3f
	rst  $30                                         ; $7b2e: $f7
	daa                                              ; $7b2f: $27
	sub  d                                           ; $7b30: $92
	rst  JumpTable                                         ; $7b31: $df
	db   $db                                         ; $7b32: $db
	ld   [de], a                                     ; $7b33: $12
	ld   de, $5625                                   ; $7b34: $11 $25 $56
	rst  $38                                         ; $7b37: $ff
	ld   d, e                                        ; $7b38: $53
	ld   a, b                                        ; $7b39: $78
	ccf                                              ; $7b3a: $3f
	cp   $a1                                         ; $7b3b: $fe $a1
	ld   hl, $6413                                   ; $7b3d: $21 $13 $64
	xor  a                                           ; $7b40: $af
	db   $f4                                         ; $7b41: $f4
	ld   b, a                                        ; $7b42: $47
	ld   h, [hl]                                     ; $7b43: $66
	rst  $38                                         ; $7b44: $ff
	ld   hl, sp+$11                                  ; $7b45: $f8 $11
	ld   de, $6f37                                   ; $7b47: $11 $37 $6f
	ld   sp, hl                                      ; $7b4a: $f9
	inc  [hl]                                        ; $7b4b: $34
	sub  h                                           ; $7b4c: $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b4d: $cf
	cp   $21                                         ; $7b4e: $fe $21
	ld   de, $6925                                   ; $7b50: $11 $25 $69
	rst  $38                                         ; $7b53: $ff
	ld   d, h                                        ; $7b54: $54
	ld   h, [hl]                                     ; $7b55: $66
	ld   l, a                                        ; $7b56: $6f
	cp   $81                                         ; $7b57: $fe $81
	ld   hl, $6713                                   ; $7b59: $21 $13 $67
	rst  $38                                         ; $7b5c: $ff
	add  h                                           ; $7b5d: $84
	ld   h, a                                        ; $7b5e: $67
	ld   c, h                                        ; $7b5f: $4c
	db   $fd                                         ; $7b60: $fd
	jp   nc, $1211                                   ; $7b61: $d2 $11 $12

	ld   [hl], $ff                                   ; $7b64: $36 $ff
	jp   Jump_0b9_4967                               ; $7b66: $c3 $67 $49


	rst  $38                                         ; $7b69: $ff
	jp   $1211                                       ; $7b6a: $c3 $11 $12


	ld   b, a                                        ; $7b6d: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b6e: $cf
	di                                               ; $7b6f: $f3
	ld   d, a                                        ; $7b70: $57
	ld   a, b                                        ; $7b71: $78
	rst  $38                                         ; $7b72: $ff
	push bc                                          ; $7b73: $c5
	ld   [de], a                                     ; $7b74: $12
	ld   de, $cf45                                   ; $7b75: $11 $45 $cf
	db   $f4                                         ; $7b78: $f4
	ld   b, [hl]                                     ; $7b79: $46
	ld   h, [hl]                                     ; $7b7a: $66
	rst  $38                                         ; $7b7b: $ff
	rst  $30                                         ; $7b7c: $f7
	ld   de, $3611                                   ; $7b7d: $11 $11 $36
	rst  JumpTable                                         ; $7b80: $df
	db   $f4                                         ; $7b81: $f4
	ld   b, l                                        ; $7b82: $45
	ld   h, a                                        ; $7b83: $67
	rst  $38                                         ; $7b84: $ff
	add  sp, $11                                     ; $7b85: $e8 $11
	ld   de, $df35                                   ; $7b87: $11 $35 $df
	db   $f4                                         ; $7b8a: $f4
	ld   b, l                                        ; $7b8b: $45
	ld   l, b                                        ; $7b8c: $68
	rst  $38                                         ; $7b8d: $ff
	or   $11                                         ; $7b8e: $f6 $11
	ld   de, rAUDTERM                                   ; $7b90: $11 $25 $ff
	di                                               ; $7b93: $f3
	ld   d, h                                        ; $7b94: $54
	ld   e, d                                        ; $7b95: $5a
	rst  $38                                         ; $7b96: $ff
	push de                                          ; $7b97: $d5
	ld   de, $2611                                   ; $7b98: $11 $11 $26
	rst  $38                                         ; $7b9b: $ff
	jp   nz, Jump_0b9_5b65                           ; $7b9c: $c2 $65 $5b

	rst  $38                                         ; $7b9f: $ff
	db   $d3                                         ; $7ba0: $d3
	ld   de, $2711                                   ; $7ba1: $11 $11 $27
	rst  $38                                         ; $7ba4: $ff
	sub  e                                           ; $7ba5: $93
	ld   d, l                                        ; $7ba6: $55
	ld   l, [hl]                                     ; $7ba7: $6e
	rst  $38                                         ; $7ba8: $ff
	or   c                                           ; $7ba9: $b1
	ld   de, $2a12                                   ; $7baa: $11 $12 $2a
	rst  $38                                         ; $7bad: $ff
	ld   h, h                                        ; $7bae: $64
	ld   d, l                                        ; $7baf: $55
	ld   a, a                                        ; $7bb0: $7f
	rst  $38                                         ; $7bb1: $ff
	sub  c                                           ; $7bb2: $91
	ld   de, $3f12                                   ; $7bb3: $11 $12 $3f
	rst  $38                                         ; $7bb6: $ff
	ld   b, h                                        ; $7bb7: $44
	ld   b, l                                        ; $7bb8: $45
	xor  a                                           ; $7bb9: $af
	cp   $51                                         ; $7bba: $fe $51
	ld   de, $6f12                                   ; $7bbc: $11 $12 $6f
	ei                                               ; $7bbf: $fb
	inc  [hl]                                        ; $7bc0: $34
	ld   b, [hl]                                     ; $7bc1: $46
	rst  $38                                         ; $7bc2: $ff
	db   $fd                                         ; $7bc3: $fd
	ld   de, $1211                                   ; $7bc4: $11 $11 $12
	cp   a                                           ; $7bc7: $bf
	or   $33                                         ; $7bc8: $f6 $33
	ld   c, c                                        ; $7bca: $49
	rst  $38                                         ; $7bcb: $ff
	add  sp, $11                                     ; $7bcc: $e8 $11
	ld   de, $ff23                                   ; $7bce: $11 $23 $ff
	di                                               ; $7bd1: $f3
	inc  sp                                          ; $7bd2: $33
	ld   e, l                                        ; $7bd3: $5d
	rst  $38                                         ; $7bd4: $ff
	di                                               ; $7bd5: $f3
	ld   de, $1811                                   ; $7bd6: $11 $11 $18
	rst  $38                                         ; $7bd9: $ff
	sub  d                                           ; $7bda: $92
	ld   [hl+], a                                    ; $7bdb: $22
	ld   e, a                                        ; $7bdc: $5f
	rst  $38                                         ; $7bdd: $ff
	and  c                                           ; $7bde: $a1
	ld   de, $1813                                   ; $7bdf: $11 $13 $18
	rst  $38                                         ; $7be2: $ff
	ld   [hl], c                                     ; $7be3: $71
	inc  b                                           ; $7be4: $04
	ld   l, a                                        ; $7be5: $6f
	rst  $38                                         ; $7be6: $ff
	or   c                                           ; $7be7: $b1
	ld   hl, $4114                                   ; $7be8: $21 $14 $41
	rst  $38                                         ; $7beb: $ff
	pop  de                                          ; $7bec: $d1
	inc  de                                          ; $7bed: $13
	dec  sp                                          ; $7bee: $3b
	rst  $38                                         ; $7bef: $ff
	ldh  a, [c]                                      ; $7bf0: $f2
	ld   de, $6a16                                   ; $7bf1: $11 $16 $6a
	jr   @+$01                                       ; $7bf4: $18 $ff

	ld   bc, $5f73                                   ; $7bf6: $01 $73 $5f
	rst  $38                                         ; $7bf9: $ff
	ld   b, c                                        ; $7bfa: $41
	ld   d, c                                        ; $7bfb: $51
	scf                                              ; $7bfc: $37
	push af                                          ; $7bfd: $f5
	ld   a, [de]                                     ; $7bfe: $1a
	rst  $38                                         ; $7bff: $ff
	inc  d                                           ; $7c00: $14
	sub  e                                           ; $7c01: $93
	ld   e, a                                        ; $7c02: $5f
	rst  $38                                         ; $7c03: $ff
	inc  de                                          ; $7c04: $13
	add  c                                           ; $7c05: $81
	ld   b, [hl]                                     ; $7c06: $46
	and  c                                           ; $7c07: $a1
	cpl                                              ; $7c08: $2f
	di                                               ; $7c09: $f3
	ld   d, $41                                      ; $7c0a: $16 $41
	rst  $38                                         ; $7c0c: $ff
	or   $17                                         ; $7c0d: $f6 $17
	inc  sp                                          ; $7c0f: $33
	ld   e, h                                        ; $7c10: $5c
	ld   sp, $e1ef                                   ; $7c11: $31 $ef $e1
	scf                                              ; $7c14: $37
	dec  h                                           ; $7c15: $25
	rst  $38                                         ; $7c16: $ff
	di                                               ; $7c17: $f3
	ld   b, [hl]                                     ; $7c18: $46
	ld   [de], a                                     ; $7c19: $12
	ld   a, e                                        ; $7c1a: $7b
	ld   [de], a                                     ; $7c1b: $12
	rst  $38                                         ; $7c1c: $ff
	ld   de, $2e75                                   ; $7c1d: $11 $75 $2e
	rst  $38                                         ; $7c20: $ff
	add  c                                           ; $7c21: $81
	ld   [hl], d                                     ; $7c22: $72
	ld   d, $e6                                      ; $7c23: $16 $e6
	dec  e                                           ; $7c25: $1d
	ei                                               ; $7c26: $fb
	inc  d                                           ; $7c27: $14
	and  e                                           ; $7c28: $a3
	ld   e, a                                        ; $7c29: $5f
	rst  $38                                         ; $7c2a: $ff
	inc  de                                          ; $7c2b: $13
	or   e                                           ; $7c2c: $b3
	scf                                              ; $7c2d: $37
	or   c                                           ; $7c2e: $b1
	rra                                              ; $7c2f: $1f
	ldh  a, [c]                                      ; $7c30: $f2
	ld   d, $61                                      ; $7c31: $16 $61
	xor  a                                           ; $7c33: $af
	ld   a, [$511a]                                  ; $7c34: $fa $1a $51
	dec  a                                           ; $7c37: $3d
	sub  c                                           ; $7c38: $91
	ld   c, a                                        ; $7c39: $4f
	pop  af                                          ; $7c3a: $f1
	add  hl, de                                      ; $7c3b: $19
	ld   [hl], c                                     ; $7c3c: $71
	rst  $28                                         ; $7c3d: $ef
	ld   hl, sp+$1a                                  ; $7c3e: $f8 $1a
	ld   sp, $914f                                   ; $7c40: $31 $4f $91
	ld   l, a                                        ; $7c43: $6f
	pop  af                                          ; $7c44: $f1
	dec  sp                                          ; $7c45: $3b
	ld   h, c                                        ; $7c46: $61
	rst  $28                                         ; $7c47: $ef
	push af                                          ; $7c48: $f5
	inc  l                                           ; $7c49: $2c
	ld   bc, $114c                                   ; $7c4a: $01 $4c $11
	rst  $38                                         ; $7c4d: $ff
	ld   sp, $2b67                                   ; $7c4e: $31 $67 $2b
	rst  $38                                         ; $7c51: $ff
	pop  hl                                          ; $7c52: $e1
	ld   [hl], h                                     ; $7c53: $74
	inc  d                                           ; $7c54: $14
	cp   d                                           ; $7c55: $ba
	jr   @+$01                                       ; $7c56: $18 $ff

	ld   de, $2fa6                                   ; $7c58: $11 $a6 $2f
	rst  $38                                         ; $7c5b: $ff
	ld   d, c                                        ; $7c5c: $51
	or   c                                           ; $7c5d: $b1
	ld   d, $e4                                      ; $7c5e: $16 $e4
	rra                                              ; $7c60: $1f
	ld   sp, hl                                      ; $7c61: $f9
	ld   d, $b3                                      ; $7c62: $16 $b3
	ld   c, a                                        ; $7c64: $4f
	rst  $38                                         ; $7c65: $ff
	inc  de                                          ; $7c66: $13
	or   c                                           ; $7c67: $b1
	add  hl, sp                                      ; $7c68: $39
	pop  af                                          ; $7c69: $f1
	rra                                              ; $7c6a: $1f
	ld   sp, hl                                      ; $7c6b: $f9
	rla                                              ; $7c6c: $17
	and  d                                           ; $7c6d: $a2
	cpl                                              ; $7c6e: $2f
	rst  $38                                         ; $7c6f: $ff
	scf                                              ; $7c70: $37
	pop  bc                                          ; $7c71: $c1
	ld   b, $d1                                      ; $7c72: $06 $d1
	rra                                              ; $7c74: $1f
	di                                               ; $7c75: $f3
	rla                                              ; $7c76: $17
	add  d                                           ; $7c77: $82
	ld   l, a                                        ; $7c78: $6f
	rst  $38                                         ; $7c79: $ff
	rla                                              ; $7c7a: $17
	ld   [hl], c                                     ; $7c7b: $71
	add  hl, sp                                      ; $7c7c: $39
	pop  hl                                          ; $7c7d: $e1
	rra                                              ; $7c7e: $1f
	pop  af                                          ; $7c7f: $f1
	add  hl, de                                      ; $7c80: $19
	add  c                                           ; $7c81: $81
	xor  a                                           ; $7c82: $af
	db   $fd                                         ; $7c83: $fd
	dec  de                                          ; $7c84: $1b
	ld   b, c                                        ; $7c85: $41
	ld   c, d                                        ; $7c86: $4a
	and  c                                           ; $7c87: $a1
	ld   a, a                                        ; $7c88: $7f
	pop  af                                          ; $7c89: $f1
	add  hl, sp                                      ; $7c8a: $39
	ld   d, c                                        ; $7c8b: $51
	rst  $28                                         ; $7c8c: $ef
	ld   sp, hl                                      ; $7c8d: $f9
	dec  sp                                          ; $7c8e: $3b
	ld   de, $416b                                   ; $7c8f: $11 $6b $41
	rst  $38                                         ; $7c92: $ff
	ld   h, c                                        ; $7c93: $61
	ld   l, b                                        ; $7c94: $68
	inc  h                                           ; $7c95: $24
	rst  $38                                         ; $7c96: $ff
	db   $e3                                         ; $7c97: $e3
	ld   a, d                                        ; $7c98: $7a
	ld   [de], a                                     ; $7c99: $12
	adc  h                                           ; $7c9a: $8c
	ld   de, $11ff                                   ; $7c9b: $11 $ff $11
	and  [hl]                                        ; $7c9e: $a6
	rla                                              ; $7c9f: $17
	rst  $38                                         ; $7ca0: $ff
	and  e                                           ; $7ca1: $a3
	add  $14                                         ; $7ca2: $c6 $14
	xor  c                                           ; $7ca4: $a9
	inc  de                                          ; $7ca5: $13
	rst  $38                                         ; $7ca6: $ff
	inc  de                                          ; $7ca7: $13
	and  l                                           ; $7ca8: $a5
	jr   @+$01                                       ; $7ca9: $18 $ff

	sub  h                                           ; $7cab: $94
	db   $e3                                         ; $7cac: $e3
	dec  d                                           ; $7cad: $15
	ret                                              ; $7cae: $c9


	inc  de                                          ; $7caf: $13
	rst  $38                                         ; $7cb0: $ff
	inc  de                                          ; $7cb1: $13
	or   l                                           ; $7cb2: $b5
	rla                                              ; $7cb3: $17
	rst  $38                                         ; $7cb4: $ff
	add  h                                           ; $7cb5: $84
	sub  $14                                         ; $7cb6: $d6 $14
	ret                                              ; $7cb8: $c9


	ld   de, $12ff                                   ; $7cb9: $11 $ff $12
	add  $13                                         ; $7cbc: $c6 $13
	rst  $38                                         ; $7cbe: $ff
	or   [hl]                                        ; $7cbf: $b6
	ld   hl, sp+$11                                  ; $7cc0: $f8 $11
	xor  d                                           ; $7cc2: $aa
	ld   de, $11ff                                   ; $7cc3: $11 $ff $11
	call nz, rAUD1HIGH                                   ; $7cc6: $c4 $14 $ff
	and  a                                           ; $7cc9: $a7
	sub  $12                                         ; $7cca: $d6 $12
	cp   d                                           ; $7ccc: $ba
	ld   de, $12ff                                   ; $7ccd: $11 $ff $12
	call nz, $ff15                                   ; $7cd0: $c4 $15 $ff
	sbc  c                                           ; $7cd3: $99
	db   $f4                                         ; $7cd4: $f4
	ld   [de], a                                     ; $7cd5: $12
	cp   b                                           ; $7cd6: $b8
	inc  de                                          ; $7cd7: $13
	rst  $38                                         ; $7cd8: $ff
	inc  de                                          ; $7cd9: $13
	db   $d3                                         ; $7cda: $d3
	ld   d, $ff                                      ; $7cdb: $16 $ff
	adc  b                                           ; $7cdd: $88
	push af                                          ; $7cde: $f5
	inc  de                                          ; $7cdf: $13
	and  a                                           ; $7ce0: $a7
	ld   [de], a                                     ; $7ce1: $12
	rst  $38                                         ; $7ce2: $ff
	inc  d                                           ; $7ce3: $14
	db   $e3                                         ; $7ce4: $e3
	inc  de                                          ; $7ce5: $13
	rst  $38                                         ; $7ce6: $ff
	sbc  e                                           ; $7ce7: $9b
	rst  $30                                         ; $7ce8: $f7
	ld   de, $1376                                   ; $7ce9: $11 $76 $13
	rst  $38                                         ; $7cec: $ff
	inc  sp                                          ; $7ced: $33
	jp   nc, rAUD1LEN                                   ; $7cee: $d2 $11 $ff

	xor  l                                           ; $7cf1: $ad
	ld   sp, hl                                      ; $7cf2: $f9
	ld   de, $1166                                   ; $7cf3: $11 $66 $11
	rst  $38                                         ; $7cf6: $ff
	add  c                                           ; $7cf7: $81
	db   $e4                                         ; $7cf8: $e4
	ld   de, $9dff                                   ; $7cf9: $11 $ff $9d
	cp   $11                                         ; $7cfc: $fe $11
	inc  [hl]                                        ; $7cfe: $34
	ld   de, $b2ff                                   ; $7cff: $11 $ff $b2
	push de                                          ; $7d02: $d5
	ld   de, $aedf                                   ; $7d03: $11 $df $ae
	rst  $38                                         ; $7d06: $ff
	ld   de, $1132                                   ; $7d07: $11 $32 $11
	rst  $38                                         ; $7d0a: $ff
	push hl                                          ; $7d0b: $e5
	sub  $11                                         ; $7d0c: $d6 $11
	cp   a                                           ; $7d0e: $bf
	xor  a                                           ; $7d0f: $af
	rst  $38                                         ; $7d10: $ff
	ld   de, $1121                                   ; $7d11: $11 $21 $11
	rst  $38                                         ; $7d14: $ff
	ld   hl, sp-$09                                  ; $7d15: $f8 $f7
	ld   de, $af8e                                   ; $7d17: $11 $8e $af
	rst  $38                                         ; $7d1a: $ff
	ld   de, $1611                                   ; $7d1b: $11 $11 $16
	rst  $38                                         ; $7d1e: $ff
	cp   $c5                                         ; $7d1f: $fe $c5
	ld   [de], a                                     ; $7d21: $12
	ld   l, b                                        ; $7d22: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d23: $cf
	ld   hl, sp+$21                                  ; $7d24: $f8 $21
	inc  de                                          ; $7d26: $13
	cp   b                                           ; $7d27: $b8
	rst  $28                                         ; $7d28: $ef
	ei                                               ; $7d29: $fb
	ld   e, c                                        ; $7d2a: $59
	ld   [hl], l                                     ; $7d2b: $75
	ld   l, h                                        ; $7d2c: $6c
	sub  h                                           ; $7d2d: $94
	ld   b, c                                        ; $7d2e: $41
	ld   e, e                                        ; $7d2f: $5b
	add  a                                           ; $7d30: $87
	db   $fc                                         ; $7d31: $fc
	add  a                                           ; $7d32: $87
	sbc  d                                           ; $7d33: $9a
	ld   l, b                                        ; $7d34: $68
	cp   d                                           ; $7d35: $ba
	ld   b, l                                        ; $7d36: $45
	ld   h, e                                        ; $7d37: $63
	dec  h                                           ; $7d38: $25
	jp   z, $caab                                    ; $7d39: $ca $ab $ca

	ld   a, d                                        ; $7d3c: $7a
	cp   b                                           ; $7d3d: $b8
	ld   l, b                                        ; $7d3e: $68
	ld   h, c                                        ; $7d3f: $61
	rla                                              ; $7d40: $17
	add  $af                                         ; $7d41: $c6 $af
	ret  c                                           ; $7d43: $d8

	ld   a, e                                        ; $7d44: $7b
	sub  [hl]                                        ; $7d45: $96
	ld   a, d                                        ; $7d46: $7a
	add  h                                           ; $7d47: $84
	ld   h, [hl]                                     ; $7d48: $66
	ld   b, l                                        ; $7d49: $45
	xor  c                                           ; $7d4a: $a9
	sbc  d                                           ; $7d4b: $9a
	cp   h                                           ; $7d4c: $bc
	sbc  c                                           ; $7d4d: $99
	sub  a                                           ; $7d4e: $97
	ld   h, a                                        ; $7d4f: $67
	ld   h, h                                        ; $7d50: $64
	ld   d, a                                        ; $7d51: $57
	add  a                                           ; $7d52: $87
	adc  d                                           ; $7d53: $8a
	sbc  c                                           ; $7d54: $99
	sbc  e                                           ; $7d55: $9b
	xor  b                                           ; $7d56: $a8
	adc  b                                           ; $7d57: $88
	halt                                             ; $7d58: $76
	ld   a, b                                        ; $7d59: $78
	ld   [hl], a                                     ; $7d5a: $77
	adc  c                                           ; $7d5b: $89
	sbc  c                                           ; $7d5c: $99
	adc  b                                           ; $7d5d: $88
	sbc  b                                           ; $7d5e: $98
	adc  c                                           ; $7d5f: $89
	adc  b                                           ; $7d60: $88
	ld   [hl], a                                     ; $7d61: $77
	adc  b                                           ; $7d62: $88
	adc  c                                           ; $7d63: $89
	sbc  b                                           ; $7d64: $98
	sbc  c                                           ; $7d65: $99
	adc  b                                           ; $7d66: $88
	adc  b                                           ; $7d67: $88
	ld   [hl], a                                     ; $7d68: $77
	adc  c                                           ; $7d69: $89
	sbc  c                                           ; $7d6a: $99
	sbc  b                                           ; $7d6b: $98
	adc  b                                           ; $7d6c: $88
	adc  b                                           ; $7d6d: $88
	adc  b                                           ; $7d6e: $88
	sbc  c                                           ; $7d6f: $99
	adc  b                                           ; $7d70: $88
	add  a                                           ; $7d71: $87
	ld   a, b                                        ; $7d72: $78
	sbc  c                                           ; $7d73: $99
	adc  b                                           ; $7d74: $88
	adc  b                                           ; $7d75: $88
	adc  b                                           ; $7d76: $88
	ld   a, b                                        ; $7d77: $78
	sbc  b                                           ; $7d78: $98
	adc  c                                           ; $7d79: $89
	adc  b                                           ; $7d7a: $88
	ld   a, b                                        ; $7d7b: $78
	adc  b                                           ; $7d7c: $88
	adc  c                                           ; $7d7d: $89
	sbc  c                                           ; $7d7e: $99
	adc  b                                           ; $7d7f: $88
	adc  b                                           ; $7d80: $88
	ld   a, b                                        ; $7d81: $78
	adc  b                                           ; $7d82: $88
	adc  c                                           ; $7d83: $89
	sbc  b                                           ; $7d84: $98
	ld   a, b                                        ; $7d85: $78
	adc  b                                           ; $7d86: $88
	adc  c                                           ; $7d87: $89
	sbc  c                                           ; $7d88: $99
	adc  b                                           ; $7d89: $88
	adc  b                                           ; $7d8a: $88
	adc  b                                           ; $7d8b: $88
	sbc  b                                           ; $7d8c: $98
	adc  c                                           ; $7d8d: $89
	adc  b                                           ; $7d8e: $88
	ld   [hl], a                                     ; $7d8f: $77
	adc  b                                           ; $7d90: $88
	adc  c                                           ; $7d91: $89
	sbc  b                                           ; $7d92: $98
	adc  b                                           ; $7d93: $88
	adc  b                                           ; $7d94: $88
	adc  b                                           ; $7d95: $88
	sbc  b                                           ; $7d96: $98
	adc  c                                           ; $7d97: $89
	adc  b                                           ; $7d98: $88
	ld   [hl], a                                     ; $7d99: $77
	adc  b                                           ; $7d9a: $88
	adc  b                                           ; $7d9b: $88
	sbc  b                                           ; $7d9c: $98
	adc  b                                           ; $7d9d: $88
	adc  b                                           ; $7d9e: $88
	adc  b                                           ; $7d9f: $88
	adc  b                                           ; $7da0: $88
	adc  b                                           ; $7da1: $88
	adc  b                                           ; $7da2: $88
	adc  b                                           ; $7da3: $88
	adc  b                                           ; $7da4: $88
	adc  b                                           ; $7da5: $88
	adc  b                                           ; $7da6: $88
	adc  b                                           ; $7da7: $88
	adc  b                                           ; $7da8: $88
	adc  b                                           ; $7da9: $88
	adc  b                                           ; $7daa: $88
	adc  b                                           ; $7dab: $88
	adc  b                                           ; $7dac: $88
	adc  b                                           ; $7dad: $88
	adc  b                                           ; $7dae: $88
	adc  b                                           ; $7daf: $88
	adc  b                                           ; $7db0: $88
	adc  b                                           ; $7db1: $88
	adc  b                                           ; $7db2: $88
	adc  b                                           ; $7db3: $88
	adc  b                                           ; $7db4: $88
	adc  b                                           ; $7db5: $88
	adc  b                                           ; $7db6: $88
	adc  b                                           ; $7db7: $88
	adc  b                                           ; $7db8: $88
	adc  b                                           ; $7db9: $88
	adc  b                                           ; $7dba: $88
	adc  b                                           ; $7dbb: $88
	adc  b                                           ; $7dbc: $88
	adc  b                                           ; $7dbd: $88
	adc  b                                           ; $7dbe: $88
	adc  b                                           ; $7dbf: $88
	adc  b                                           ; $7dc0: $88
	adc  b                                           ; $7dc1: $88
	adc  b                                           ; $7dc2: $88
	adc  b                                           ; $7dc3: $88
	adc  b                                           ; $7dc4: $88
	adc  b                                           ; $7dc5: $88
	adc  b                                           ; $7dc6: $88
	adc  b                                           ; $7dc7: $88
	adc  b                                           ; $7dc8: $88
	adc  b                                           ; $7dc9: $88

Call_0b9_7dca:
	adc  b                                           ; $7dca: $88
	adc  b                                           ; $7dcb: $88
	adc  b                                           ; $7dcc: $88
	adc  b                                           ; $7dcd: $88
	adc  b                                           ; $7dce: $88
	adc  b                                           ; $7dcf: $88
	adc  b                                           ; $7dd0: $88
	adc  b                                           ; $7dd1: $88
	adc  b                                           ; $7dd2: $88
	adc  b                                           ; $7dd3: $88
	adc  b                                           ; $7dd4: $88
	adc  b                                           ; $7dd5: $88
	adc  b                                           ; $7dd6: $88
	adc  b                                           ; $7dd7: $88
	adc  b                                           ; $7dd8: $88
	adc  b                                           ; $7dd9: $88
	adc  b                                           ; $7dda: $88
	adc  b                                           ; $7ddb: $88
	adc  b                                           ; $7ddc: $88
	adc  b                                           ; $7ddd: $88
	adc  b                                           ; $7dde: $88
	adc  b                                           ; $7ddf: $88
	adc  b                                           ; $7de0: $88
	adc  b                                           ; $7de1: $88
	adc  b                                           ; $7de2: $88
	adc  b                                           ; $7de3: $88
	adc  b                                           ; $7de4: $88
	adc  b                                           ; $7de5: $88
	adc  b                                           ; $7de6: $88
	adc  b                                           ; $7de7: $88
	adc  b                                           ; $7de8: $88
	adc  b                                           ; $7de9: $88
	adc  b                                           ; $7dea: $88
	adc  b                                           ; $7deb: $88
	adc  b                                           ; $7dec: $88
	adc  b                                           ; $7ded: $88
	adc  b                                           ; $7dee: $88
	adc  b                                           ; $7def: $88
	adc  b                                           ; $7df0: $88
	adc  b                                           ; $7df1: $88
	adc  b                                           ; $7df2: $88
	adc  b                                           ; $7df3: $88
	adc  b                                           ; $7df4: $88
	adc  b                                           ; $7df5: $88
	adc  b                                           ; $7df6: $88
	adc  b                                           ; $7df7: $88
	adc  b                                           ; $7df8: $88
	adc  b                                           ; $7df9: $88
	adc  b                                           ; $7dfa: $88
	adc  b                                           ; $7dfb: $88
	adc  b                                           ; $7dfc: $88
	adc  b                                           ; $7dfd: $88
	adc  b                                           ; $7dfe: $88
	adc  b                                           ; $7dff: $88
	adc  b                                           ; $7e00: $88
	adc  b                                           ; $7e01: $88
	adc  b                                           ; $7e02: $88
	adc  b                                           ; $7e03: $88
	adc  b                                           ; $7e04: $88
	adc  b                                           ; $7e05: $88
	adc  b                                           ; $7e06: $88
	adc  b                                           ; $7e07: $88
	adc  b                                           ; $7e08: $88
	adc  b                                           ; $7e09: $88
	adc  b                                           ; $7e0a: $88
	adc  b                                           ; $7e0b: $88
	adc  b                                           ; $7e0c: $88
	adc  b                                           ; $7e0d: $88
	adc  b                                           ; $7e0e: $88
	adc  b                                           ; $7e0f: $88
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	adc  b                                           ; $7e12: $88
	adc  b                                           ; $7e13: $88
	adc  b                                           ; $7e14: $88
	adc  b                                           ; $7e15: $88
	adc  b                                           ; $7e16: $88
	adc  b                                           ; $7e17: $88
	adc  b                                           ; $7e18: $88
	adc  b                                           ; $7e19: $88
	adc  b                                           ; $7e1a: $88
	adc  b                                           ; $7e1b: $88
	adc  b                                           ; $7e1c: $88
	adc  b                                           ; $7e1d: $88
	adc  b                                           ; $7e1e: $88
	adc  b                                           ; $7e1f: $88
	adc  b                                           ; $7e20: $88
	adc  b                                           ; $7e21: $88
	adc  b                                           ; $7e22: $88
	adc  b                                           ; $7e23: $88
	adc  b                                           ; $7e24: $88
	adc  b                                           ; $7e25: $88
	adc  b                                           ; $7e26: $88
	adc  b                                           ; $7e27: $88
	adc  b                                           ; $7e28: $88
	adc  b                                           ; $7e29: $88
	adc  b                                           ; $7e2a: $88
	adc  b                                           ; $7e2b: $88
	adc  b                                           ; $7e2c: $88
	adc  b                                           ; $7e2d: $88
	adc  b                                           ; $7e2e: $88
	adc  b                                           ; $7e2f: $88
	adc  b                                           ; $7e30: $88
	adc  b                                           ; $7e31: $88
	adc  b                                           ; $7e32: $88
	adc  b                                           ; $7e33: $88
	adc  b                                           ; $7e34: $88
	adc  b                                           ; $7e35: $88
	adc  b                                           ; $7e36: $88
	adc  b                                           ; $7e37: $88
	adc  b                                           ; $7e38: $88
	adc  b                                           ; $7e39: $88
	adc  b                                           ; $7e3a: $88
	adc  b                                           ; $7e3b: $88
	adc  b                                           ; $7e3c: $88
	adc  b                                           ; $7e3d: $88
	adc  b                                           ; $7e3e: $88
	adc  b                                           ; $7e3f: $88
	adc  b                                           ; $7e40: $88
	adc  b                                           ; $7e41: $88
	adc  b                                           ; $7e42: $88
	adc  b                                           ; $7e43: $88
	adc  b                                           ; $7e44: $88
	adc  b                                           ; $7e45: $88
	adc  b                                           ; $7e46: $88
	adc  b                                           ; $7e47: $88
	adc  b                                           ; $7e48: $88
	adc  b                                           ; $7e49: $88
	adc  b                                           ; $7e4a: $88
	adc  b                                           ; $7e4b: $88
	adc  b                                           ; $7e4c: $88
	adc  b                                           ; $7e4d: $88
	adc  b                                           ; $7e4e: $88
	adc  b                                           ; $7e4f: $88
	adc  b                                           ; $7e50: $88
	adc  b                                           ; $7e51: $88
	adc  b                                           ; $7e52: $88
	adc  b                                           ; $7e53: $88
	adc  b                                           ; $7e54: $88
	adc  b                                           ; $7e55: $88
	adc  b                                           ; $7e56: $88
	adc  b                                           ; $7e57: $88
	adc  b                                           ; $7e58: $88
	adc  b                                           ; $7e59: $88
	adc  b                                           ; $7e5a: $88
	adc  b                                           ; $7e5b: $88
	adc  b                                           ; $7e5c: $88
	adc  b                                           ; $7e5d: $88
	adc  b                                           ; $7e5e: $88
	adc  b                                           ; $7e5f: $88
	adc  b                                           ; $7e60: $88
	adc  b                                           ; $7e61: $88
	adc  b                                           ; $7e62: $88
	adc  b                                           ; $7e63: $88
	adc  b                                           ; $7e64: $88
	adc  b                                           ; $7e65: $88
	adc  b                                           ; $7e66: $88
	adc  b                                           ; $7e67: $88
	adc  b                                           ; $7e68: $88
	adc  b                                           ; $7e69: $88
	adc  b                                           ; $7e6a: $88
	adc  b                                           ; $7e6b: $88
	adc  b                                           ; $7e6c: $88
	adc  b                                           ; $7e6d: $88
	adc  b                                           ; $7e6e: $88
	adc  b                                           ; $7e6f: $88
	adc  b                                           ; $7e70: $88
	adc  b                                           ; $7e71: $88
	adc  b                                           ; $7e72: $88
	adc  b                                           ; $7e73: $88
	adc  b                                           ; $7e74: $88
	adc  b                                           ; $7e75: $88
	adc  b                                           ; $7e76: $88
	adc  b                                           ; $7e77: $88
	adc  b                                           ; $7e78: $88
	adc  b                                           ; $7e79: $88
	adc  b                                           ; $7e7a: $88
	adc  b                                           ; $7e7b: $88
	adc  b                                           ; $7e7c: $88
	adc  b                                           ; $7e7d: $88
	adc  b                                           ; $7e7e: $88
	adc  b                                           ; $7e7f: $88
	adc  b                                           ; $7e80: $88
	adc  b                                           ; $7e81: $88
	adc  b                                           ; $7e82: $88
	adc  b                                           ; $7e83: $88
	adc  b                                           ; $7e84: $88
	adc  b                                           ; $7e85: $88
	adc  b                                           ; $7e86: $88
	adc  b                                           ; $7e87: $88
	adc  b                                           ; $7e88: $88
	adc  b                                           ; $7e89: $88
	adc  b                                           ; $7e8a: $88
	adc  b                                           ; $7e8b: $88
	adc  b                                           ; $7e8c: $88
	adc  b                                           ; $7e8d: $88
	adc  b                                           ; $7e8e: $88
	adc  b                                           ; $7e8f: $88
	adc  b                                           ; $7e90: $88
	adc  b                                           ; $7e91: $88
	adc  b                                           ; $7e92: $88
	adc  b                                           ; $7e93: $88
	adc  b                                           ; $7e94: $88
	adc  b                                           ; $7e95: $88
	adc  b                                           ; $7e96: $88
	adc  b                                           ; $7e97: $88
	adc  b                                           ; $7e98: $88
	adc  b                                           ; $7e99: $88
	adc  b                                           ; $7e9a: $88
	adc  b                                           ; $7e9b: $88
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	adc  b                                           ; $7e9e: $88
	adc  b                                           ; $7e9f: $88
	adc  b                                           ; $7ea0: $88
	adc  b                                           ; $7ea1: $88
	adc  b                                           ; $7ea2: $88
	adc  b                                           ; $7ea3: $88
	adc  b                                           ; $7ea4: $88
	adc  b                                           ; $7ea5: $88
	adc  b                                           ; $7ea6: $88
	adc  b                                           ; $7ea7: $88
	adc  b                                           ; $7ea8: $88
	adc  b                                           ; $7ea9: $88
	adc  b                                           ; $7eaa: $88
	adc  b                                           ; $7eab: $88
	adc  b                                           ; $7eac: $88
	adc  b                                           ; $7ead: $88
	adc  b                                           ; $7eae: $88
	adc  b                                           ; $7eaf: $88
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	adc  b                                           ; $7eb2: $88
	adc  b                                           ; $7eb3: $88
	adc  b                                           ; $7eb4: $88
	adc  b                                           ; $7eb5: $88
	adc  b                                           ; $7eb6: $88
	adc  b                                           ; $7eb7: $88
	adc  b                                           ; $7eb8: $88
	adc  b                                           ; $7eb9: $88
	adc  b                                           ; $7eba: $88
	adc  b                                           ; $7ebb: $88
	adc  b                                           ; $7ebc: $88
	adc  b                                           ; $7ebd: $88
	adc  b                                           ; $7ebe: $88
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	adc  b                                           ; $7ec1: $88
	adc  b                                           ; $7ec2: $88
	adc  b                                           ; $7ec3: $88
	adc  b                                           ; $7ec4: $88
	adc  b                                           ; $7ec5: $88
	adc  b                                           ; $7ec6: $88
	adc  b                                           ; $7ec7: $88
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	adc  b                                           ; $7eca: $88
	adc  b                                           ; $7ecb: $88
	adc  b                                           ; $7ecc: $88
	adc  b                                           ; $7ecd: $88
	adc  b                                           ; $7ece: $88
	adc  b                                           ; $7ecf: $88
	adc  b                                           ; $7ed0: $88
	adc  b                                           ; $7ed1: $88
	adc  b                                           ; $7ed2: $88
	adc  b                                           ; $7ed3: $88
	adc  b                                           ; $7ed4: $88
	adc  b                                           ; $7ed5: $88
	adc  b                                           ; $7ed6: $88
	adc  b                                           ; $7ed7: $88
	adc  b                                           ; $7ed8: $88
	adc  b                                           ; $7ed9: $88
	adc  b                                           ; $7eda: $88
	adc  b                                           ; $7edb: $88
	adc  b                                           ; $7edc: $88
	adc  b                                           ; $7edd: $88
	adc  b                                           ; $7ede: $88
	adc  b                                           ; $7edf: $88
	adc  b                                           ; $7ee0: $88
	adc  b                                           ; $7ee1: $88
	adc  b                                           ; $7ee2: $88
	adc  b                                           ; $7ee3: $88
	adc  b                                           ; $7ee4: $88
	adc  b                                           ; $7ee5: $88
	adc  b                                           ; $7ee6: $88
	adc  b                                           ; $7ee7: $88
	adc  b                                           ; $7ee8: $88
	adc  b                                           ; $7ee9: $88
	adc  b                                           ; $7eea: $88
	adc  b                                           ; $7eeb: $88
	adc  b                                           ; $7eec: $88
	adc  b                                           ; $7eed: $88
	adc  b                                           ; $7eee: $88
	adc  b                                           ; $7eef: $88
	adc  b                                           ; $7ef0: $88
	adc  b                                           ; $7ef1: $88
	adc  b                                           ; $7ef2: $88
	adc  b                                           ; $7ef3: $88
	adc  b                                           ; $7ef4: $88
	adc  b                                           ; $7ef5: $88
	adc  b                                           ; $7ef6: $88
	adc  b                                           ; $7ef7: $88
	adc  b                                           ; $7ef8: $88
	adc  b                                           ; $7ef9: $88
	adc  b                                           ; $7efa: $88
	adc  b                                           ; $7efb: $88
	adc  b                                           ; $7efc: $88
	adc  b                                           ; $7efd: $88
	adc  b                                           ; $7efe: $88
	adc  b                                           ; $7eff: $88
	adc  b                                           ; $7f00: $88
	adc  b                                           ; $7f01: $88
	adc  b                                           ; $7f02: $88
	adc  b                                           ; $7f03: $88
	adc  b                                           ; $7f04: $88
	adc  b                                           ; $7f05: $88
	adc  b                                           ; $7f06: $88
	adc  b                                           ; $7f07: $88
	adc  b                                           ; $7f08: $88
	adc  b                                           ; $7f09: $88
	adc  b                                           ; $7f0a: $88
	adc  b                                           ; $7f0b: $88
	adc  b                                           ; $7f0c: $88
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	adc  b                                           ; $7f0f: $88
	adc  b                                           ; $7f10: $88
	adc  b                                           ; $7f11: $88
	adc  b                                           ; $7f12: $88
	adc  b                                           ; $7f13: $88
	adc  b                                           ; $7f14: $88
	adc  b                                           ; $7f15: $88
	adc  b                                           ; $7f16: $88
	adc  b                                           ; $7f17: $88
	adc  b                                           ; $7f18: $88
	adc  b                                           ; $7f19: $88
	adc  b                                           ; $7f1a: $88
	adc  b                                           ; $7f1b: $88
	adc  b                                           ; $7f1c: $88
	adc  b                                           ; $7f1d: $88
	adc  b                                           ; $7f1e: $88
	adc  b                                           ; $7f1f: $88
	adc  b                                           ; $7f20: $88
	adc  b                                           ; $7f21: $88
	adc  b                                           ; $7f22: $88
	adc  b                                           ; $7f23: $88
	adc  b                                           ; $7f24: $88
	adc  b                                           ; $7f25: $88
	adc  b                                           ; $7f26: $88
	adc  b                                           ; $7f27: $88
	adc  b                                           ; $7f28: $88
	adc  b                                           ; $7f29: $88
	adc  b                                           ; $7f2a: $88
	adc  b                                           ; $7f2b: $88
	adc  b                                           ; $7f2c: $88
	adc  b                                           ; $7f2d: $88
	adc  b                                           ; $7f2e: $88
	adc  b                                           ; $7f2f: $88
	adc  b                                           ; $7f30: $88
	adc  b                                           ; $7f31: $88
	adc  b                                           ; $7f32: $88
	adc  b                                           ; $7f33: $88
	adc  b                                           ; $7f34: $88
	adc  b                                           ; $7f35: $88
	adc  b                                           ; $7f36: $88
	adc  b                                           ; $7f37: $88
	adc  b                                           ; $7f38: $88
	adc  b                                           ; $7f39: $88
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	adc  b                                           ; $7f3f: $88
	adc  b                                           ; $7f40: $88
	adc  b                                           ; $7f41: $88
	adc  b                                           ; $7f42: $88
	adc  b                                           ; $7f43: $88
	adc  b                                           ; $7f44: $88
	adc  b                                           ; $7f45: $88
	adc  b                                           ; $7f46: $88
	adc  b                                           ; $7f47: $88
	adc  b                                           ; $7f48: $88
	adc  b                                           ; $7f49: $88
	adc  b                                           ; $7f4a: $88
	adc  b                                           ; $7f4b: $88
	adc  b                                           ; $7f4c: $88
	adc  b                                           ; $7f4d: $88
	adc  b                                           ; $7f4e: $88
	adc  b                                           ; $7f4f: $88
	adc  b                                           ; $7f50: $88
	adc  b                                           ; $7f51: $88
	adc  b                                           ; $7f52: $88
	adc  b                                           ; $7f53: $88
	adc  b                                           ; $7f54: $88
	adc  b                                           ; $7f55: $88
	adc  b                                           ; $7f56: $88
	adc  b                                           ; $7f57: $88
	adc  b                                           ; $7f58: $88
	adc  b                                           ; $7f59: $88
	adc  b                                           ; $7f5a: $88
	adc  b                                           ; $7f5b: $88
	adc  b                                           ; $7f5c: $88
	adc  b                                           ; $7f5d: $88
	adc  b                                           ; $7f5e: $88
	adc  b                                           ; $7f5f: $88
	adc  b                                           ; $7f60: $88
	adc  b                                           ; $7f61: $88
	adc  b                                           ; $7f62: $88
	adc  b                                           ; $7f63: $88
	adc  b                                           ; $7f64: $88
	adc  b                                           ; $7f65: $88
	adc  b                                           ; $7f66: $88
	adc  b                                           ; $7f67: $88
	adc  b                                           ; $7f68: $88
	adc  b                                           ; $7f69: $88
	adc  b                                           ; $7f6a: $88
	adc  b                                           ; $7f6b: $88
	adc  b                                           ; $7f6c: $88
	adc  b                                           ; $7f6d: $88
	adc  b                                           ; $7f6e: $88
	adc  b                                           ; $7f6f: $88
	adc  b                                           ; $7f70: $88
	adc  b                                           ; $7f71: $88
	adc  b                                           ; $7f72: $88
	adc  b                                           ; $7f73: $88
	adc  b                                           ; $7f74: $88
	adc  b                                           ; $7f75: $88
	adc  b                                           ; $7f76: $88
	adc  b                                           ; $7f77: $88
	adc  b                                           ; $7f78: $88
	adc  b                                           ; $7f79: $88
	adc  b                                           ; $7f7a: $88
	adc  b                                           ; $7f7b: $88
	adc  b                                           ; $7f7c: $88
	adc  b                                           ; $7f7d: $88
	adc  b                                           ; $7f7e: $88
	adc  b                                           ; $7f7f: $88
	adc  b                                           ; $7f80: $88
	adc  b                                           ; $7f81: $88
	adc  b                                           ; $7f82: $88
	adc  b                                           ; $7f83: $88
	adc  b                                           ; $7f84: $88
	adc  b                                           ; $7f85: $88
	adc  b                                           ; $7f86: $88
	adc  b                                           ; $7f87: $88
	adc  b                                           ; $7f88: $88
	adc  b                                           ; $7f89: $88
	adc  b                                           ; $7f8a: $88
	adc  b                                           ; $7f8b: $88
	adc  b                                           ; $7f8c: $88
	adc  b                                           ; $7f8d: $88
	adc  b                                           ; $7f8e: $88
	adc  b                                           ; $7f8f: $88
	adc  b                                           ; $7f90: $88
	adc  b                                           ; $7f91: $88
	adc  b                                           ; $7f92: $88
	adc  b                                           ; $7f93: $88
	adc  b                                           ; $7f94: $88
	adc  b                                           ; $7f95: $88
	adc  b                                           ; $7f96: $88
	adc  b                                           ; $7f97: $88
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
	adc  b                                           ; $7fa4: $88
	adc  b                                           ; $7fa5: $88
	adc  b                                           ; $7fa6: $88
	adc  b                                           ; $7fa7: $88
	adc  b                                           ; $7fa8: $88
	adc  b                                           ; $7fa9: $88
	adc  b                                           ; $7faa: $88
	adc  b                                           ; $7fab: $88
	adc  b                                           ; $7fac: $88
	adc  b                                           ; $7fad: $88
	adc  b                                           ; $7fae: $88
	adc  b                                           ; $7faf: $88
	adc  b                                           ; $7fb0: $88
	adc  b                                           ; $7fb1: $88
	adc  b                                           ; $7fb2: $88
	adc  b                                           ; $7fb3: $88
	adc  b                                           ; $7fb4: $88
	adc  b                                           ; $7fb5: $88
	adc  b                                           ; $7fb6: $88
	adc  b                                           ; $7fb7: $88
	adc  b                                           ; $7fb8: $88
	adc  b                                           ; $7fb9: $88
	adc  b                                           ; $7fba: $88
	adc  b                                           ; $7fbb: $88
	adc  b                                           ; $7fbc: $88
	adc  b                                           ; $7fbd: $88
	adc  b                                           ; $7fbe: $88
	adc  b                                           ; $7fbf: $88
	adc  b                                           ; $7fc0: $88
	adc  b                                           ; $7fc1: $88
	adc  b                                           ; $7fc2: $88
	adc  b                                           ; $7fc3: $88
	adc  b                                           ; $7fc4: $88
	adc  b                                           ; $7fc5: $88
	adc  b                                           ; $7fc6: $88
	adc  b                                           ; $7fc7: $88
	adc  b                                           ; $7fc8: $88
	adc  b                                           ; $7fc9: $88
	adc  b                                           ; $7fca: $88
	adc  b                                           ; $7fcb: $88
	adc  b                                           ; $7fcc: $88
	adc  b                                           ; $7fcd: $88
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	adc  b                                           ; $7fd0: $88
	adc  b                                           ; $7fd1: $88
	adc  b                                           ; $7fd2: $88
	adc  b                                           ; $7fd3: $88
	adc  b                                           ; $7fd4: $88
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
	adc  b                                           ; $7fdf: $88
	adc  b                                           ; $7fe0: $88
	adc  b                                           ; $7fe1: $88
	adc  b                                           ; $7fe2: $88
	adc  b                                           ; $7fe3: $88
	adc  b                                           ; $7fe4: $88
	adc  b                                           ; $7fe5: $88
	adc  b                                           ; $7fe6: $88
	adc  b                                           ; $7fe7: $88
	adc  b                                           ; $7fe8: $88
	adc  b                                           ; $7fe9: $88
	adc  b                                           ; $7fea: $88
	adc  b                                           ; $7feb: $88
	adc  b                                           ; $7fec: $88
	adc  b                                           ; $7fed: $88
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
	adc  b                                           ; $7ffe: $88
	adc  b                                           ; $7fff: $88
