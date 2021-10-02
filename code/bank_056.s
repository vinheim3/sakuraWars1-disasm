; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

	cp   d                                           ; $4000: $ba
	ret                                              ; $4001: $c9


	and  b                                           ; $4002: $a0
	ld   l, l                                        ; $4003: $6d
	ld   l, l                                        ; $4004: $6d
	adc  [hl]                                        ; $4005: $8e
	nop                                              ; $4006: $00
	ld   [bc], a                                     ; $4007: $02
	rlca                                             ; $4008: $07
	ld   [hl], $03                                   ; $4009: $36 $03
	ld   [bc], a                                     ; $400b: $02
	inc  bc                                          ; $400c: $03
	ld   bc, $2000                                   ; $400d: $01 $00 $20
	nop                                              ; $4010: $00
	rlca                                             ; $4011: $07
	ld   d, e                                        ; $4012: $53
	inc  bc                                          ; $4013: $03
	ld   [bc], a                                     ; $4014: $02
	inc  bc                                          ; $4015: $03
	ld   bc, $2001                                   ; $4016: $01 $01 $20
	nop                                              ; $4019: $00
	rlca                                             ; $401a: $07
	sub  c                                           ; $401b: $91
	inc  bc                                          ; $401c: $03
	ld   [bc], a                                     ; $401d: $02
	inc  bc                                          ; $401e: $03
	ld   bc, $2002                                   ; $401f: $01 $02 $20
	nop                                              ; $4022: $00
	ld   b, $c7                                      ; $4023: $06 $c7
	inc  bc                                          ; $4025: $03
	rrca                                             ; $4026: $0f
	nop                                              ; $4027: $00
	ld   bc, $da01                                   ; $4028: $01 $01 $da
	cp   d                                           ; $402b: $ba
	ret                                              ; $402c: $c9


	and  b                                           ; $402d: $a0
	inc  b                                           ; $402e: $04
	rlca                                             ; $402f: $07
	ld   [hl], h                                     ; $4030: $74
	halt                                             ; $4031: $76
	rst  $38                                         ; $4032: $ff
	rst  $38                                         ; $4033: $ff
	dec  c                                           ; $4034: $0d
	nop                                              ; $4035: $00
	ld   a, [bc]                                     ; $4036: $0a
	dec  b                                           ; $4037: $05
	ld   b, b                                        ; $4038: $40
	rst  $38                                         ; $4039: $ff
	inc  bc                                          ; $403a: $03
	rst  $38                                         ; $403b: $ff
	ld   bc, $2801                                   ; $403c: $01 $01 $28
	nop                                              ; $403f: $00
	ld   b, $e6                                      ; $4040: $06 $e6
	inc  bc                                          ; $4042: $03
	rrca                                             ; $4043: $0f
	nop                                              ; $4044: $00
	ld   bc, $da01                                   ; $4045: $01 $01 $da
	db   $ed                                         ; $4048: $ed
	ret                                              ; $4049: $c9


	and  b                                           ; $404a: $a0
	sub  h                                           ; $404b: $94
	sbc  c                                           ; $404c: $99
	adc  a                                           ; $404d: $8f
	ld   [hl], h                                     ; $404e: $74
	halt                                             ; $404f: $76
	rst  $38                                         ; $4050: $ff
	rst  $38                                         ; $4051: $ff
	dec  c                                           ; $4052: $0d
	and  c                                           ; $4053: $a1
	ld   sp, hl                                      ; $4054: $f9
	db   $10                                         ; $4055: $10
	cp   e                                           ; $4056: $bb
	db   $dd                                         ; $4057: $dd
	push af                                          ; $4058: $f5
	and  b                                           ; $4059: $a0
	ld   a, d                                        ; $405a: $7a
	ld   d, d                                        ; $405b: $52
	ld   h, [hl]                                     ; $405c: $66
	sub  c                                           ; $405d: $91
	pop  bc                                          ; $405e: $c1
	db   $e3                                         ; $405f: $e3
	dec  c                                           ; $4060: $0d
	nop                                              ; $4061: $00
	dec  b                                           ; $4062: $05
	ld   b, b                                        ; $4063: $40
	rst  $38                                         ; $4064: $ff
	inc  bc                                          ; $4065: $03
	rst  $38                                         ; $4066: $ff
	ld   bc, $2801                                   ; $4067: $01 $01 $28
	nop                                              ; $406a: $00
	ld   bc, $6575                                   ; $406b: $01 $75 $65
	sub  l                                           ; $406e: $95
	sbc  a                                           ; $406f: $9f
	inc  bc                                          ; $4070: $03
	ld   h, l                                        ; $4071: $65
	inc  b                                           ; $4072: $04
	rlca                                             ; $4073: $07
	and  b                                           ; $4074: $a0
	inc  b                                           ; $4075: $04
	rlca                                             ; $4076: $07
	ld   a, b                                        ; $4077: $78
	ld   d, d                                        ; $4078: $52
	halt                                             ; $4079: $76
	sbc  a                                           ; $407a: $9f
	dec  c                                           ; $407b: $0d
	nop                                              ; $407c: $00
	ld   a, [bc]                                     ; $407d: $0a
	ld   b, $f9                                      ; $407e: $06 $f9
	ld   [bc], a                                     ; $4080: $02
	rrca                                             ; $4081: $0f
	nop                                              ; $4082: $00
	ld   bc, $da01                                   ; $4083: $01 $01 $da
	cp   d                                           ; $4086: $ba
	ret                                              ; $4087: $c9


	and  b                                           ; $4088: $a0
	ld   l, l                                        ; $4089: $6d
	ld   l, l                                        ; $408a: $6d
	and  c                                           ; $408b: $a1
	ld   [hl], l                                     ; $408c: $75
	halt                                             ; $408d: $76
	rst  $38                                         ; $408e: $ff
	rst  $38                                         ; $408f: $ff
	dec  c                                           ; $4090: $0d
	and  c                                           ; $4091: $a1
	ld   sp, hl                                      ; $4092: $f9
	db   $10                                         ; $4093: $10
	ld   l, l                                        ; $4094: $6d
	ld   l, l                                        ; $4095: $6d
	and  c                                           ; $4096: $a1
	ld   h, [hl]                                     ; $4097: $66
	sub  c                                           ; $4098: $91
	pop  bc                                          ; $4099: $c1
	db   $e3                                         ; $409a: $e3
	ld   [hl], l                                     ; $409b: $75
	ld   h, l                                        ; $409c: $65
	sub  l                                           ; $409d: $95
	sbc  a                                           ; $409e: $9f
	dec  c                                           ; $409f: $0d
	nop                                              ; $40a0: $00
	dec  b                                           ; $40a1: $05
	ld   b, b                                        ; $40a2: $40
	rst  $38                                         ; $40a3: $ff
	inc  bc                                          ; $40a4: $03
	rst  $38                                         ; $40a5: $ff
	ld   bc, $2801                                   ; $40a6: $01 $01 $28
	nop                                              ; $40a9: $00
	ld   bc, $0704                                   ; $40aa: $01 $04 $07
	ld   a, b                                        ; $40ad: $78
	ld   e, e                                        ; $40ae: $5b
	sub  c                                           ; $40af: $91
	sbc  a                                           ; $40b0: $9f
	dec  c                                           ; $40b1: $0d
	nop                                              ; $40b2: $00
	ld   a, [bc]                                     ; $40b3: $0a
	ld   b, $f9                                      ; $40b4: $06 $f9
	ld   [bc], a                                     ; $40b6: $02
	rrca                                             ; $40b7: $0f
	nop                                              ; $40b8: $00
	ld   bc, $ff01                                   ; $40b9: $01 $01 $ff
	rst  $38                                         ; $40bc: $ff
	ld   [hl], a                                     ; $40bd: $77
	ld   d, h                                        ; $40be: $54
	ld   h, l                                        ; $40bf: $65
	sub  [hl]                                        ; $40c0: $96
	ld   d, h                                        ; $40c1: $54
	ld   e, c                                        ; $40c2: $59
	rst  $38                                         ; $40c3: $ff
	rst  $38                                         ; $40c4: $ff
	rst  $38                                         ; $40c5: $ff
	rst  $38                                         ; $40c6: $ff
	dec  c                                           ; $40c7: $0d
	nop                                              ; $40c8: $00
	ld   a, [bc]                                     ; $40c9: $0a
	dec  b                                           ; $40ca: $05
	ld   b, b                                        ; $40cb: $40
	rst  $38                                         ; $40cc: $ff
	inc  bc                                          ; $40cd: $03
	rst  $38                                         ; $40ce: $ff
	ld   bc, $2801                                   ; $40cf: $01 $01 $28
	nop                                              ; $40d2: $00
	ld   b, $f9                                      ; $40d3: $06 $f9
	ld   [bc], a                                     ; $40d5: $02
	add  hl, de                                      ; $40d6: $19
	inc  b                                           ; $40d7: $04
	inc  bc                                          ; $40d8: $03
	inc  b                                           ; $40d9: $04
	ld   l, d                                        ; $40da: $6a
	and  b                                           ; $40db: $a0
	halt                                             ; $40dc: $76
	halt                                             ; $40dd: $76
	ld   a, h                                        ; $40de: $7c
	ld   d, [hl]                                     ; $40df: $56
	sbc  c                                           ; $40e0: $99
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	inc  b                                           ; $40e3: $04
	adc  a                                           ; $40e4: $8f
	and  b                                           ; $40e5: $a0
	halt                                             ; $40e6: $76
	halt                                             ; $40e7: $76
	ld   a, h                                        ; $40e8: $7c
	ld   d, [hl]                                     ; $40e9: $56
	sbc  c                                           ; $40ea: $99
	nop                                              ; $40eb: $00
	ld   bc, $7877                                   ; $40ec: $01 $77 $78
	ld   l, l                                        ; $40ef: $6d
	halt                                             ; $40f0: $76
	ld   h, c                                        ; $40f1: $61
	ld   h, c                                        ; $40f2: $61
	sbc  e                                           ; $40f3: $9b
	ld   d, [hl]                                     ; $40f4: $56
	sbc  c                                           ; $40f5: $99
	nop                                              ; $40f6: $00
	ld   [bc], a                                     ; $40f7: $02
	rlca                                             ; $40f8: $07
	ld   h, $04                                      ; $40f9: $26 $04
	ld   [bc], a                                     ; $40fb: $02
	inc  bc                                          ; $40fc: $03
	ld   bc, $2000                                   ; $40fd: $01 $00 $20
	nop                                              ; $4100: $00
	rlca                                             ; $4101: $07
	ld   e, c                                        ; $4102: $59
	inc  b                                           ; $4103: $04
	ld   [bc], a                                     ; $4104: $02
	inc  bc                                          ; $4105: $03
	ld   bc, $2001                                   ; $4106: $01 $01 $20
	nop                                              ; $4109: $00
	rlca                                             ; $410a: $07
	sbc  a                                           ; $410b: $9f
	inc  b                                           ; $410c: $04
	ld   [bc], a                                     ; $410d: $02
	inc  bc                                          ; $410e: $03
	ld   bc, $2002                                   ; $410f: $01 $02 $20
	nop                                              ; $4112: $00
	ld   b, $fc                                      ; $4113: $06 $fc
	inc  b                                           ; $4115: $04
	rrca                                             ; $4116: $0f
	nop                                              ; $4117: $00
	ld   bc, $0301                                   ; $4118: $01 $01 $03
	dec  c                                           ; $411b: $0d
	inc  bc                                          ; $411c: $03
	ld   h, l                                        ; $411d: $65
	ld   h, b                                        ; $411e: $60
	ld   a, c                                        ; $411f: $79
	sbc  [hl]                                        ; $4120: $9e
	inc  b                                           ; $4121: $04
	ld   l, d                                        ; $4122: $6a
	and  b                                           ; $4123: $a0
	halt                                             ; $4124: $76
	halt                                             ; $4125: $76
	ld   a, h                                        ; $4126: $7c
	ld   d, [hl]                                     ; $4127: $56
	sbc  c                                           ; $4128: $99
	halt                                             ; $4129: $76
	dec  c                                           ; $412a: $0d
	rst  $38                                         ; $412b: $ff
	rst  $38                                         ; $412c: $ff
	rst  $38                                         ; $412d: $ff
	rst  $38                                         ; $412e: $ff
	dec  c                                           ; $412f: $0d
	nop                                              ; $4130: $00
	dec  b                                           ; $4131: $05
	ld   b, b                                        ; $4132: $40
	rst  $38                                         ; $4133: $ff
	inc  bc                                          ; $4134: $03
	rst  $38                                         ; $4135: $ff
	ld   bc, $2801                                   ; $4136: $01 $01 $28
	nop                                              ; $4139: $00
	ld   bc, $6596                                   ; $413a: $01 $96 $65
	ld   a, [$2910]                                  ; $413d: $fa $10 $29
	dec  h                                           ; $4140: $25
	ld   l, [hl]                                     ; $4141: $6e
	ld   a, [$000d]                                  ; $4142: $fa $0d $00
	ld   a, [bc]                                     ; $4145: $0a
	ld   b, $24                                      ; $4146: $06 $24
	dec  b                                           ; $4148: $05
	rrca                                             ; $4149: $0f
	nop                                              ; $414a: $00
	ld   bc, $0301                                   ; $414b: $01 $01 $03
	dec  c                                           ; $414e: $0d
	inc  bc                                          ; $414f: $03
	ld   h, l                                        ; $4150: $65
	ld   h, b                                        ; $4151: $60
	ld   a, c                                        ; $4152: $79
	sbc  [hl]                                        ; $4153: $9e
	inc  b                                           ; $4154: $04
	adc  a                                           ; $4155: $8f
	and  b                                           ; $4156: $a0
	halt                                             ; $4157: $76
	halt                                             ; $4158: $76
	ld   a, h                                        ; $4159: $7c
	ld   d, [hl]                                     ; $415a: $56
	sbc  c                                           ; $415b: $99
	rst  $38                                         ; $415c: $ff
	rst  $38                                         ; $415d: $ff
	dec  c                                           ; $415e: $0d
	rst  $38                                         ; $415f: $ff
	rst  $38                                         ; $4160: $ff
	rst  $38                                         ; $4161: $ff
	rst  $38                                         ; $4162: $ff
	and  c                                           ; $4163: $a1
	ld   sp, hl                                      ; $4164: $f9
	db   $10                                         ; $4165: $10
	inc  b                                           ; $4166: $04
	adc  a                                           ; $4167: $8f
	ld   a, h                                        ; $4168: $7c
	inc  bc                                          ; $4169: $03
	ld   a, h                                        ; $416a: $7c
	dec  b                                           ; $416b: $05
	ld   de, $a178                                   ; $416c: $11 $78 $a1
	ld   e, c                                        ; $416f: $59
	dec  c                                           ; $4170: $0d
	nop                                              ; $4171: $00
	dec  b                                           ; $4172: $05
	ld   b, b                                        ; $4173: $40
	rst  $38                                         ; $4174: $ff
	inc  bc                                          ; $4175: $03
	rst  $38                                         ; $4176: $ff
	ld   bc, $2801                                   ; $4177: $01 $01 $28
	nop                                              ; $417a: $00
	ld   bc, $7465                                   ; $417b: $01 $65 $74
	sbc  c                                           ; $417e: $99
	inc  b                                           ; $417f: $04
	ld   a, d                                        ; $4180: $7a
	ld   [bc], a                                     ; $4181: $02
	ld   a, e                                        ; $4182: $7b
	ld   h, [hl]                                     ; $4183: $66
	sub  c                                           ; $4184: $91
	ld   a, b                                        ; $4185: $78
	ld   d, d                                        ; $4186: $52
	sub  [hl]                                        ; $4187: $96
	sbc  a                                           ; $4188: $9f
	dec  c                                           ; $4189: $0d
	nop                                              ; $418a: $00
	ld   a, [bc]                                     ; $418b: $0a
	ld   b, $e6                                      ; $418c: $06 $e6
	inc  bc                                          ; $418e: $03
	rrca                                             ; $418f: $0f
	nop                                              ; $4190: $00
	ld   bc, $0301                                   ; $4191: $01 $01 $03
	dec  c                                           ; $4194: $0d
	inc  bc                                          ; $4195: $03
	ld   h, l                                        ; $4196: $65
	ld   h, b                                        ; $4197: $60
	ld   a, c                                        ; $4198: $79
	rst  $38                                         ; $4199: $ff
	rst  $38                                         ; $419a: $ff
	dec  c                                           ; $419b: $0d
	ld   h, c                                        ; $419c: $61
	ld   l, a                                        ; $419d: $6f
	sub  a                                           ; $419e: $97
	ld   a, c                                        ; $419f: $79
	ld   e, b                                        ; $41a0: $58
	sbc  l                                           ; $41a1: $9d
	ld   h, a                                        ; $41a2: $67
	ld   e, b                                        ; $41a3: $58
	inc  b                                           ; $41a4: $04
	ld   a, b                                        ; $41a5: $78
	and  b                                           ; $41a6: $a0
	sbc  [hl]                                        ; $41a7: $9e
	dec  c                                           ; $41a8: $0d
	ld   [hl], a                                     ; $41a9: $77
	ld   a, b                                        ; $41aa: $78
	ld   l, l                                        ; $41ab: $6d
	halt                                             ; $41ac: $76
	inc  bc                                          ; $41ad: $03
	ld   [hl], l                                     ; $41ae: $75
	ld   b, $02                                      ; $41af: $06 $02
	sbc  c                                           ; $41b1: $99
	ld   a, [$000d]                                  ; $41b2: $fa $0d $00
	ld   a, [bc]                                     ; $41b5: $0a
	ld   bc, $fc78                                   ; $41b6: $01 $78 $fc
	and  c                                           ; $41b9: $a1
	ld   [hl], h                                     ; $41ba: $74
	ld   [bc], a                                     ; $41bb: $02
	sbc  l                                           ; $41bc: $9d
	ld   [hl], c                                     ; $41bd: $71
	ld   [hl], h                                     ; $41be: $74
	sbc  c                                           ; $41bf: $99
	inc  b                                           ; $41c0: $04
	ld   a, d                                        ; $41c1: $7a
	ld   [bc], a                                     ; $41c2: $02
	ld   a, e                                        ; $41c3: $7b
	ld   h, [hl]                                     ; $41c4: $66
	sub  c                                           ; $41c5: $91
	dec  c                                           ; $41c6: $0d
	ld   a, b                                        ; $41c7: $78
	ld   d, d                                        ; $41c8: $52
	and  c                                           ; $41c9: $a1
	ld   l, [hl]                                     ; $41ca: $6e
	sub  [hl]                                        ; $41cb: $96
	ld   a, b                                        ; $41cc: $78
	sbc  a                                           ; $41cd: $9f
	dec  c                                           ; $41ce: $0d
	nop                                              ; $41cf: $00
	dec  b                                           ; $41d0: $05
	ld   b, b                                        ; $41d1: $40
	rst  $38                                         ; $41d2: $ff
	inc  bc                                          ; $41d3: $03
	rst  $38                                         ; $41d4: $ff
	ld   bc, $2801                                   ; $41d5: $01 $01 $28
	nop                                              ; $41d8: $00
	ld   bc, $2805                                   ; $41d9: $01 $05 $28
	ld   e, d                                        ; $41dc: $5a
	ld   a, b                                        ; $41dd: $78
	ld   e, e                                        ; $41de: $5b
	sub  c                                           ; $41df: $91
	ld   e, b                                        ; $41e0: $58
	ld   e, l                                        ; $41e1: $5d
	sbc  d                                           ; $41e2: $9a
	sbc  c                                           ; $41e3: $99
	ld   l, h                                        ; $41e4: $6c
	sbc  a                                           ; $41e5: $9f
	dec  c                                           ; $41e6: $0d
	nop                                              ; $41e7: $00
	ld   a, [bc]                                     ; $41e8: $0a
	ld   b, $e6                                      ; $41e9: $06 $e6
	inc  bc                                          ; $41eb: $03
	rrca                                             ; $41ec: $0f
	nop                                              ; $41ed: $00
	ld   bc, $0301                                   ; $41ee: $01 $01 $03
	dec  c                                           ; $41f1: $0d
	inc  bc                                          ; $41f2: $03
	ld   h, l                                        ; $41f3: $65
	ld   h, b                                        ; $41f4: $60
	ld   a, c                                        ; $41f5: $79
	rst  $38                                         ; $41f6: $ff
	rst  $38                                         ; $41f7: $ff
	dec  c                                           ; $41f8: $0d
	rst  $38                                         ; $41f9: $ff
	rst  $38                                         ; $41fa: $ff
	rst  $38                                         ; $41fb: $ff
	rst  $38                                         ; $41fc: $ff
	ld   [hl], a                                     ; $41fd: $77
	ld   d, h                                        ; $41fe: $54
	ld   h, l                                        ; $41ff: $65
	sub  [hl]                                        ; $4200: $96
	ld   d, h                                        ; $4201: $54
	ld   e, c                                        ; $4202: $59
	rst  $38                                         ; $4203: $ff
	rst  $38                                         ; $4204: $ff
	dec  c                                           ; $4205: $0d
	nop                                              ; $4206: $00
	ld   a, [bc]                                     ; $4207: $0a
	dec  b                                           ; $4208: $05
	ld   b, b                                        ; $4209: $40
	rst  $38                                         ; $420a: $ff
	inc  bc                                          ; $420b: $03
	rst  $38                                         ; $420c: $ff
	ld   bc, $2801                                   ; $420d: $01 $01 $28
	nop                                              ; $4210: $00
	ld   b, $e6                                      ; $4211: $06 $e6
	inc  bc                                          ; $4213: $03
	rlca                                             ; $4214: $07
	ccf                                              ; $4215: $3f
	dec  b                                           ; $4216: $05
	inc  bc                                          ; $4217: $03
	rst  $38                                         ; $4218: $ff
	ld   bc, $2005                                   ; $4219: $01 $05 $20
	nop                                              ; $421c: $00
	rlca                                             ; $421d: $07
	sbc  c                                           ; $421e: $99
	dec  b                                           ; $421f: $05
	inc  bc                                          ; $4220: $03
	rst  $38                                         ; $4221: $ff
	ld   bc, $2006                                   ; $4222: $01 $06 $20
	nop                                              ; $4225: $00
	rlca                                             ; $4226: $07
	db   $10                                         ; $4227: $10
	ld   b, $03                                      ; $4228: $06 $03
	rst  $38                                         ; $422a: $ff
	ld   bc, $2507                                   ; $422b: $01 $07 $25
	nop                                              ; $422e: $00
	inc  hl                                          ; $422f: $23
	inc  b                                           ; $4230: $04
	rrca                                             ; $4231: $0f
	nop                                              ; $4232: $00
	ld   bc, $9601                                   ; $4233: $01 $01 $96
	ld   e, c                                        ; $4236: $59
	ld   [hl], c                                     ; $4237: $71
	ld   l, l                                        ; $4238: $6d
	sbc  [hl]                                        ; $4239: $9e
	ld   h, a                                        ; $423a: $67
	adc  l                                           ; $423b: $8d
	sbc  d                                           ; $423c: $9a
	ld   h, e                                        ; $423d: $63
	and  c                                           ; $423e: $a1
	dec  c                                           ; $423f: $0d
	adc  h                                           ; $4240: $8c
	ld   l, [hl]                                     ; $4241: $6e
	dec  b                                           ; $4242: $05
	db   $10                                         ; $4243: $10
	ld   [hl], h                                     ; $4244: $74
	ld   a, b                                        ; $4245: $78
	ld   d, d                                        ; $4246: $52
	adc  l                                           ; $4247: $8d
	ld   l, l                                        ; $4248: $6d
	ld   d, d                                        ; $4249: $52
	ld   l, [hl]                                     ; $424a: $6e
	rst  $38                                         ; $424b: $ff
	rst  $38                                         ; $424c: $ff
	dec  c                                           ; $424d: $0d
	nop                                              ; $424e: $00
	ld   a, [bc]                                     ; $424f: $0a
	inc  e                                           ; $4250: $1c
	ld   [bc], a                                     ; $4251: $02
	ld   bc, $1d01                                   ; $4252: $01 $01 $1d
	ld   b, b                                        ; $4255: $40
	ld   [de], a                                     ; $4256: $12
	inc  bc                                          ; $4257: $03
	ld   [de], a                                     ; $4258: $12
	ld   bc, $2802                                   ; $4259: $01 $02 $28
	nop                                              ; $425c: $00
	ld   bc, $0458                                   ; $425d: $01 $58 $04
	rla                                              ; $4260: $17
	ld   l, l                                        ; $4261: $6d
	ld   l, c                                        ; $4262: $69
	ld   h, l                                        ; $4263: $65
	adc  h                                           ; $4264: $8c
	ld   h, l                                        ; $4265: $65
	ld   l, l                                        ; $4266: $6d
	sbc  a                                           ; $4267: $9f
	dec  c                                           ; $4268: $0d
	ld   [$6300], sp                                 ; $4269: $08 $00 $63
	and  c                                           ; $426c: $a1
	sbc  a                                           ; $426d: $9f
	dec  c                                           ; $426e: $0d
	ld   [hl], l                                     ; $426f: $75
	ld   a, l                                        ; $4270: $7d
	sbc  [hl]                                        ; $4271: $9e
	adc  h                                           ; $4272: $8c
	ld   d, d                                        ; $4273: $52
	sbc  b                                           ; $4274: $98
	adc  h                                           ; $4275: $8c
	ld   h, l                                        ; $4276: $65
	sub  l                                           ; $4277: $95
	ld   d, h                                        ; $4278: $54
	ld   e, c                                        ; $4279: $59
	sbc  a                                           ; $427a: $9f
	dec  c                                           ; $427b: $0d
	nop                                              ; $427c: $00
	ld   a, [bc]                                     ; $427d: $0a
	dec  c                                           ; $427e: $0d
	nop                                              ; $427f: $00
	nop                                              ; $4280: $00
	rrca                                             ; $4281: $0f
	nop                                              ; $4282: $00
	ld   bc, $020c                                   ; $4283: $01 $0c $02
	ld   b, $5f                                      ; $4286: $06 $5f
	ld   b, $23                                      ; $4288: $06 $23
	inc  b                                           ; $428a: $04
	rrca                                             ; $428b: $0f
	nop                                              ; $428c: $00
	ld   bc, $020d                                   ; $428d: $01 $0d $02
	nop                                              ; $4290: $00
	ld   bc, $7d58                                   ; $4291: $01 $58 $7d
	sub  [hl]                                        ; $4294: $96
	ld   d, h                                        ; $4295: $54
	ld   h, d                                        ; $4296: $62
	ld   h, h                                        ; $4297: $64
	ld   d, d                                        ; $4298: $52
	adc  h                                           ; $4299: $8c
	ld   h, a                                        ; $429a: $67
	sbc  a                                           ; $429b: $9f
	dec  c                                           ; $429c: $0d
	ld   h, a                                        ; $429d: $67
	adc  l                                           ; $429e: $8d
	sbc  d                                           ; $429f: $9a
	ld   h, e                                        ; $42a0: $63
	and  c                                           ; $42a1: $a1
	sbc  a                                           ; $42a2: $9f
	dec  c                                           ; $42a3: $0d
	ld   e, b                                        ; $42a4: $58
	inc  b                                           ; $42a5: $04
	rla                                              ; $42a6: $17
	ld   l, l                                        ; $42a7: $6d
	ld   l, c                                        ; $42a8: $69
	ld   h, l                                        ; $42a9: $65
	ld   [hl], h                                     ; $42aa: $74
	ld   h, a                                        ; $42ab: $67
	adc  l                                           ; $42ac: $8d
	adc  h                                           ; $42ad: $8c
	ld   l, c                                        ; $42ae: $69
	and  c                                           ; $42af: $a1
	sbc  a                                           ; $42b0: $9f
	dec  c                                           ; $42b1: $0d
	nop                                              ; $42b2: $00
	ld   a, [bc]                                     ; $42b3: $0a
	inc  e                                           ; $42b4: $1c
	ld   [bc], a                                     ; $42b5: $02
	nop                                              ; $42b6: $00
	nop                                              ; $42b7: $00
	ld   bc, $7d58                                   ; $42b8: $01 $58 $7d
	sub  [hl]                                        ; $42bb: $96
	ld   d, h                                        ; $42bc: $54
	sbc  a                                           ; $42bd: $9f
	ld   [$6300], sp                                 ; $42be: $08 $00 $63
	and  c                                           ; $42c1: $a1
	sbc  a                                           ; $42c2: $9f
	dec  c                                           ; $42c3: $0d
	inc  b                                           ; $42c4: $04
	ld   c, $03                                      ; $42c5: $0e $03
	sbc  l                                           ; $42c7: $9d
	inc  b                                           ; $42c8: $04
	and  [hl]                                        ; $42c9: $a6
	ld   [hl], l                                     ; $42ca: $75
	ld   h, a                                        ; $42cb: $67
	sbc  l                                           ; $42cc: $9d
	sub  [hl]                                        ; $42cd: $96
	sbc  a                                           ; $42ce: $9f
	sbc  l                                           ; $42cf: $9d
	ld   l, l                                        ; $42d0: $6d
	ld   e, l                                        ; $42d1: $5d
	ld   h, l                                        ; $42d2: $65
	sub  b                                           ; $42d3: $90
	dec  c                                           ; $42d4: $0d
	ld   [bc], a                                     ; $42d5: $02
	and  l                                           ; $42d6: $a5
	dec  b                                           ; $42d7: $05
	db   $10                                         ; $42d8: $10
	ld   l, l                                        ; $42d9: $6d
	halt                                             ; $42da: $76
	ld   h, c                                        ; $42db: $61
	sbc  e                                           ; $42dc: $9b
	ld   [hl], l                                     ; $42dd: $75
	ld   h, a                                        ; $42de: $67
	ld   e, c                                        ; $42df: $59
	sub  a                                           ; $42e0: $97
	sbc  a                                           ; $42e1: $9f
	dec  c                                           ; $42e2: $0d
	nop                                              ; $42e3: $00
	ld   a, [bc]                                     ; $42e4: $0a
	ld   bc, $7d75                                   ; $42e5: $01 $75 $7d
	sbc  [hl]                                        ; $42e8: $9e
	adc  h                                           ; $42e9: $8c
	ld   d, d                                        ; $42ea: $52
	sbc  b                                           ; $42eb: $98
	adc  h                                           ; $42ec: $8c
	ld   h, l                                        ; $42ed: $65
	sub  l                                           ; $42ee: $95
	ld   d, h                                        ; $42ef: $54
	ld   e, c                                        ; $42f0: $59
	sbc  a                                           ; $42f1: $9f
	dec  c                                           ; $42f2: $0d
	nop                                              ; $42f3: $00
	ld   a, [bc]                                     ; $42f4: $0a
	dec  c                                           ; $42f5: $0d
	nop                                              ; $42f6: $00
	nop                                              ; $42f7: $00
	rrca                                             ; $42f8: $0f
	nop                                              ; $42f9: $00
	ld   bc, $020c                                   ; $42fa: $01 $0c $02
	ld   b, $5f                                      ; $42fd: $06 $5f
	ld   b, $23                                      ; $42ff: $06 $23
	inc  b                                           ; $4301: $04
	inc  e                                           ; $4302: $1c
	ld   [bc], a                                     ; $4303: $02
	rlca                                             ; $4304: $07
	rlca                                             ; $4305: $07
	dec  e                                           ; $4306: $1d
	ld   b, b                                        ; $4307: $40
	ld   [de], a                                     ; $4308: $12
	inc  bc                                          ; $4309: $03
	ld   [de], a                                     ; $430a: $12
	ld   bc, $2903                                   ; $430b: $01 $03 $29
	nop                                              ; $430e: $00
	ld   bc, $6b58                                   ; $430f: $01 $58 $6b
	ld   d, d                                        ; $4312: $52
	ld   [hl], l                                     ; $4313: $75
	ld   h, a                                        ; $4314: $67
	sbc  l                                           ; $4315: $9d
	ld   a, [$9d0d]                                  ; $4316: $fa $0d $9d
	ld   l, l                                        ; $4319: $6d
	ld   e, l                                        ; $431a: $5d
	ld   h, l                                        ; $431b: $65
	and  b                                           ; $431c: $a0
	inc  b                                           ; $431d: $04
	rla                                              ; $431e: $17
	ld   l, l                                        ; $431f: $6d
	ld   h, a                                        ; $4320: $67
	halt                                             ; $4321: $76
	ld   a, l                                        ; $4322: $7d
	dec  c                                           ; $4323: $0d
	inc  b                                           ; $4324: $04
	ld   c, c                                        ; $4325: $49
	ld   [bc], a                                     ; $4326: $02
	jp   Jump_056_6775                               ; $4327: $c3 $75 $67


	ld   e, c                                        ; $432a: $59
	ld   a, [$000d]                                  ; $432b: $fa $0d $00
	ld   a, [bc]                                     ; $432e: $0a
	ld   bc, $508c                                   ; $432f: $01 $8c $50
	sbc  [hl]                                        ; $4332: $9e
	ld   d, d                                        ; $4333: $52
	ld   d, d                                        ; $4334: $52
	ld   [hl], l                                     ; $4335: $75
	ld   h, a                                        ; $4336: $67
	sbc  l                                           ; $4337: $9d
	sbc  a                                           ; $4338: $9f
	dec  c                                           ; $4339: $0d
	ld   d, d                                        ; $433a: $52
	ld   e, e                                        ; $433b: $5b
	adc  h                                           ; $433c: $8c
	ld   h, a                                        ; $433d: $67
	sbc  l                                           ; $433e: $9d
	sub  [hl]                                        ; $433f: $96
	sbc  a                                           ; $4340: $9f
	dec  c                                           ; $4341: $0d
	nop                                              ; $4342: $00
	ld   a, [bc]                                     ; $4343: $0a
	dec  c                                           ; $4344: $0d
	nop                                              ; $4345: $00
	nop                                              ; $4346: $00
	rrca                                             ; $4347: $0f
	nop                                              ; $4348: $00
	ld   bc, $020c                                   ; $4349: $01 $0c $02
	ld   b, $5f                                      ; $434c: $06 $5f
	ld   b, $0e                                      ; $434e: $06 $0e
	sub  c                                           ; $4350: $91
	inc  e                                           ; $4351: $1c
	ld   [bc], a                                     ; $4352: $02
	nop                                              ; $4353: $00
	nop                                              ; $4354: $00
	ld   bc, $5063                                   ; $4355: $01 $63 $50
	sbc  [hl]                                        ; $4358: $9e
	inc  b                                           ; $4359: $04
	adc  l                                           ; $435a: $8d
	ld   d, d                                        ; $435b: $52
	adc  h                                           ; $435c: $8c
	ld   h, a                                        ; $435d: $67
	sbc  l                                           ; $435e: $9d
	sub  [hl]                                        ; $435f: $96
	db   $fc                                         ; $4360: $fc
	ld   [hl], c                                     ; $4361: $71
	sbc  a                                           ; $4362: $9f
	dec  c                                           ; $4363: $0d
	nop                                              ; $4364: $00
	ld   a, [bc]                                     ; $4365: $0a
	ld   bc, $527d                                   ; $4366: $01 $7d $52
	sbc  a                                           ; $4369: $9f
	ld   [$6300], sp                                 ; $436a: $08 $00 $63
	and  c                                           ; $436d: $a1
	sbc  a                                           ; $436e: $9f
	dec  c                                           ; $436f: $0d
	ld   h, c                                        ; $4370: $61
	ld   a, h                                        ; $4371: $7c
	ld   [bc], a                                     ; $4372: $02
	rst  JumpTable                                         ; $4373: $df
	inc  b                                           ; $4374: $04
	sub  d                                           ; $4375: $92
	inc  bc                                          ; $4376: $03
	and  b                                           ; $4377: $a0
	ld   [hl], c                                     ; $4378: $71
	ld   [hl], h                                     ; $4379: $74
	sbc  a                                           ; $437a: $9f
	dec  c                                           ; $437b: $0d
	nop                                              ; $437c: $00
	ld   a, [bc]                                     ; $437d: $0a
	add  hl, de                                      ; $437e: $19
	dec  b                                           ; $437f: $05
	ld   [bc], a                                     ; $4380: $02
	ld   a, l                                        ; $4381: $7d
	ld   d, d                                        ; $4382: $52
	nop                                              ; $4383: $00
	nop                                              ; $4384: $00
	ld   d, d                                        ; $4385: $52
	ld   d, d                                        ; $4386: $52
	ld   d, [hl]                                     ; $4387: $56
	nop                                              ; $4388: $00
	ld   bc, $2b07                                   ; $4389: $01 $07 $2b
	rlca                                             ; $438c: $07
	ld   [bc], a                                     ; $438d: $02
	inc  bc                                          ; $438e: $03
	ld   bc, $2000                                   ; $438f: $01 $00 $20
	nop                                              ; $4392: $00
	rlca                                             ; $4393: $07
	xor  a                                           ; $4394: $af
	ld   b, $02                                      ; $4395: $06 $02
	inc  bc                                          ; $4397: $03
	ld   bc, $2001                                   ; $4398: $01 $01 $20
	nop                                              ; $439b: $00
	ld   b, $fc                                      ; $439c: $06 $fc
	ld   b, $1c                                      ; $439e: $06 $1c
	ld   [bc], a                                     ; $43a0: $02
	ld   [bc], a                                     ; $43a1: $02
	ld   [bc], a                                     ; $43a2: $02
	dec  e                                           ; $43a3: $1d
	ld   b, b                                        ; $43a4: $40
	ld   [de], a                                     ; $43a5: $12
	inc  bc                                          ; $43a6: $03
	ld   [de], a                                     ; $43a7: $12
	ld   bc, $2902                                   ; $43a8: $01 $02 $29
	nop                                              ; $43ab: $00
	ld   bc, $52fd                                   ; $43ac: $01 $fd $52
	ld   d, d                                        ; $43af: $52
	ld   d, [hl]                                     ; $43b0: $56
	cp   $75                                         ; $43b1: $fe $75
	ld   h, a                                        ; $43b3: $67
	ld   [hl], c                                     ; $43b4: $71
	ld   [hl], h                                     ; $43b5: $74
	ld   a, [$780d]                                  ; $43b6: $fa $0d $78
	and  c                                           ; $43b9: $a1
	ld   a, h                                        ; $43ba: $7c
	ld   l, l                                        ; $43bb: $6d
	adc  a                                           ; $43bc: $8f
	ld   a, c                                        ; $43bd: $79
	inc  b                                           ; $43be: $04
	db   $fd                                         ; $43bf: $fd
	sbc  d                                           ; $43c0: $9a
	ld   [hl], h                                     ; $43c1: $74
	ld   e, e                                        ; $43c2: $5b
	ld   l, l                                        ; $43c3: $6d
	halt                                             ; $43c4: $76
	dec  c                                           ; $43c5: $0d
	dec  b                                           ; $43c6: $05
	pop  de                                          ; $43c7: $d1
	ld   [hl], c                                     ; $43c8: $71
	ld   [hl], h                                     ; $43c9: $74
	adc  h                                           ; $43ca: $8c
	ld   h, a                                        ; $43cb: $67
	ld   a, h                                        ; $43cc: $7c
	ld   a, [$0df9]                                  ; $43cd: $fa $f9 $0d
	nop                                              ; $43d0: $00
	ld   a, [bc]                                     ; $43d1: $0a
	ld   bc, $bbb1                                   ; $43d2: $01 $b1 $bb
	or   c                                           ; $43d5: $b1
	cp   e                                           ; $43d6: $bb
	ld   d, d                                        ; $43d7: $52
	sbc  l                                           ; $43d8: $9d
	ld   a, b                                        ; $43d9: $78
	ld   d, d                                        ; $43da: $52
	ld   [hl], l                                     ; $43db: $75
	sbc  [hl]                                        ; $43dc: $9e
	dec  c                                           ; $43dd: $0d
	inc  bc                                          ; $43de: $03
	and  b                                           ; $43df: $a0
	ld   l, a                                        ; $43e0: $6f
	ld   a, b                                        ; $43e1: $78
	ld   h, e                                        ; $43e2: $63
	ld   d, d                                        ; $43e3: $52
	ld   a, [$0dfa]                                  ; $43e4: $fa $fa $0d
	nop                                              ; $43e7: $00
	ld   a, [bc]                                     ; $43e8: $0a
	ld   b, $2b                                      ; $43e9: $06 $2b
	rlca                                             ; $43eb: $07
	inc  e                                           ; $43ec: $1c
	ld   [bc], a                                     ; $43ed: $02
	rlca                                             ; $43ee: $07
	rlca                                             ; $43ef: $07
	ld   bc, $9704                                   ; $43f0: $01 $04 $97
	ld   [bc], a                                     ; $43f3: $02
	jp   $f97d                                       ; $43f4: $c3 $7d $f9


	db   $10                                         ; $43f7: $10
	ld   d, b                                        ; $43f8: $50
	ld   a, b                                        ; $43f9: $78
	ld   l, l                                        ; $43fa: $6d
	ld   a, l                                        ; $43fb: $7d
	sbc  [hl]                                        ; $43fc: $9e
	ld   [bc], a                                     ; $43fd: $02
	rst  JumpTable                                         ; $43fe: $df
	inc  b                                           ; $43ff: $04
	sub  d                                           ; $4400: $92
	inc  bc                                          ; $4401: $03
	and  b                                           ; $4402: $a0
	ld   l, a                                        ; $4403: $6f
	dec  c                                           ; $4404: $0d
	ld   a, b                                        ; $4405: $78
	ld   a, h                                        ; $4406: $7c
	ld   [hl], l                                     ; $4407: $75
	ld   h, a                                        ; $4408: $67
	sbc  l                                           ; $4409: $9d
	sub  [hl]                                        ; $440a: $96
	sbc  a                                           ; $440b: $9f
	dec  c                                           ; $440c: $0d
	ld   a, l                                        ; $440d: $7d
	sub  d                                           ; $440e: $92
	ld   e, l                                        ; $440f: $5d
	sbc  [hl]                                        ; $4410: $9e
	inc  bc                                          ; $4411: $03
	and  b                                           ; $4412: $a0
	ld   l, a                                        ; $4413: $6f
	ld   a, b                                        ; $4414: $78
	ld   h, e                                        ; $4415: $63
	ld   d, d                                        ; $4416: $52
	sbc  a                                           ; $4417: $9f
	dec  c                                           ; $4418: $0d
	nop                                              ; $4419: $00
	ld   a, [bc]                                     ; $441a: $0a
	rrca                                             ; $441b: $0f
	nop                                              ; $441c: $00
	ld   bc, $0101                                   ; $441d: $01 $01 $01
	inc  bc                                          ; $4420: $03
	ld   [bc], a                                     ; $4421: $02
	rst  JumpTable                                         ; $4422: $df
	inc  b                                           ; $4423: $04
	sub  d                                           ; $4424: $92
	inc  bc                                          ; $4425: $03
	and  b                                           ; $4426: $a0
	ld   l, a                                        ; $4427: $6f
	ld   e, c                                        ; $4428: $59
	rst  $38                                         ; $4429: $ff
	rst  $38                                         ; $442a: $ff
	dec  c                                           ; $442b: $0d
	db   $10                                         ; $442c: $10
	adc  h                                           ; $442d: $8c
	ld   d, b                                        ; $442e: $50
	ld   d, d                                        ; $442f: $52
	ld   d, d                                        ; $4430: $52
	sub  d                                           ; $4431: $92
	sbc  a                                           ; $4432: $9f
	ld   h, a                                        ; $4433: $67
	adc  l                                           ; $4434: $8d
	sbc  d                                           ; $4435: $9a
	ld   h, e                                        ; $4436: $63
	and  c                                           ; $4437: $a1
	halt                                             ; $4438: $76
	dec  c                                           ; $4439: $0d
	db   $10                                         ; $443a: $10
	ld   d, d                                        ; $443b: $52
	ld   [hl], c                                     ; $443c: $71
	ld   h, l                                        ; $443d: $65
	sub  l                                           ; $443e: $95
	ld   a, c                                        ; $443f: $79
	ld   d, d                                        ; $4440: $52
	sub  a                                           ; $4441: $97
	sbc  d                                           ; $4442: $9a
	sbc  c                                           ; $4443: $99
	ld   h, l                                        ; $4444: $65
	rst  $38                                         ; $4445: $ff
	ld   bc, $0d04                                   ; $4446: $01 $04 $0d
	nop                                              ; $4449: $00
	ld   a, [bc]                                     ; $444a: $0a
	inc  e                                           ; $444b: $1c
	ld   [bc], a                                     ; $444c: $02
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	ld   bc, $527d                                   ; $444f: $01 $7d $52
	sbc  a                                           ; $4452: $9f
	inc  bc                                          ; $4453: $03
	ld   l, b                                        ; $4454: $68
	ld   a, l                                        ; $4455: $7d
	ld   h, c                                        ; $4456: $61
	sbc  d                                           ; $4457: $9a
	ld   a, e                                        ; $4458: $7b
	sbc  a                                           ; $4459: $9f
	dec  c                                           ; $445a: $0d
	nop                                              ; $445b: $00
	ld   a, [bc]                                     ; $445c: $0a
	add  hl, de                                      ; $445d: $19
	dec  b                                           ; $445e: $05
	ld   [bc], a                                     ; $445f: $02
	adc  h                                           ; $4460: $8c
	ld   e, c                                        ; $4461: $59
	ld   l, c                                        ; $4462: $69
	ld   [hl], h                                     ; $4463: $74
	ld   e, l                                        ; $4464: $5d
	ld   l, [hl]                                     ; $4465: $6e
	ld   h, e                                        ; $4466: $63
	ld   d, d                                        ; $4467: $52
	nop                                              ; $4468: $00
	nop                                              ; $4469: $00
	sub  b                                           ; $446a: $90
	ld   d, h                                        ; $446b: $54
	ld   e, c                                        ; $446c: $59
	and  c                                           ; $446d: $a1
	add  a                                           ; $446e: $87
	and  c                                           ; $446f: $a1
	ld   h, l                                        ; $4470: $65
	ld   [hl], h                                     ; $4471: $74
	ld   e, l                                        ; $4472: $5d
	ld   l, [hl]                                     ; $4473: $6e
	ld   h, e                                        ; $4474: $63
	ld   d, d                                        ; $4475: $52
	nop                                              ; $4476: $00
	ld   bc, $3e07                                   ; $4477: $01 $07 $3e
	ld   [$0302], sp                                 ; $447a: $08 $02 $03
	ld   bc, $2000                                   ; $447d: $01 $00 $20
	nop                                              ; $4480: $00
	rlca                                             ; $4481: $07
	sbc  l                                           ; $4482: $9d
	rlca                                             ; $4483: $07
	ld   [bc], a                                     ; $4484: $02
	inc  bc                                          ; $4485: $03
	ld   bc, $2001                                   ; $4486: $01 $01 $20
	nop                                              ; $4489: $00
	ld   b, $1e                                      ; $448a: $06 $1e
	ld   [$000f], sp                                 ; $448c: $08 $0f $00
	ld   bc, $9001                                   ; $448f: $01 $01 $90
	ld   d, h                                        ; $4492: $54
	ld   e, c                                        ; $4493: $59
	and  c                                           ; $4494: $a1
	add  a                                           ; $4495: $87
	and  c                                           ; $4496: $a1
	ld   h, l                                        ; $4497: $65
	ld   [hl], h                                     ; $4498: $74
	ld   e, l                                        ; $4499: $5d
	ld   l, [hl]                                     ; $449a: $6e
	ld   h, e                                        ; $449b: $63
	ld   d, d                                        ; $449c: $52
	sbc  a                                           ; $449d: $9f
	dec  c                                           ; $449e: $0d
	ld   e, a                                        ; $449f: $5f
	ld   [hl], c                                     ; $44a0: $71
	ld   h, c                                        ; $44a1: $61
	ld   d, h                                        ; $44a2: $54
	inc  bc                                          ; $44a3: $03
	ccf                                              ; $44a4: $3f
	ld   d, d                                        ; $44a5: $52
	ld   [hl], l                                     ; $44a6: $75
	ld   h, a                                        ; $44a7: $67
	sbc  a                                           ; $44a8: $9f
	dec  c                                           ; $44a9: $0d
	nop                                              ; $44aa: $00
	ld   a, [bc]                                     ; $44ab: $0a
	inc  e                                           ; $44ac: $1c
	ld   [bc], a                                     ; $44ad: $02
	inc  bc                                          ; $44ae: $03
	inc  bc                                          ; $44af: $03
	ld   bc, $716d                                   ; $44b0: $01 $6d $71
	ld   l, l                                        ; $44b3: $6d
	inc  de                                          ; $44b4: $13
	ld   [hl], d                                     ; $44b5: $72
	ld   [hl], l                                     ; $44b6: $75
	ld   sp, hl                                      ; $44b7: $f9
	dec  c                                           ; $44b8: $0d
	ld   a, l                                        ; $44b9: $7d
	ld   c, a                                        ; $44ba: $4f
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	dec  c                                           ; $44bd: $0d
	nop                                              ; $44be: $00
	ld   a, [bc]                                     ; $44bf: $0a
	inc  e                                           ; $44c0: $1c
	ld   [bc], a                                     ; $44c1: $02
	rlca                                             ; $44c2: $07
	rlca                                             ; $44c3: $07
	dec  e                                           ; $44c4: $1d
	ld   b, b                                        ; $44c5: $40
	ld   [de], a                                     ; $44c6: $12
	inc  bc                                          ; $44c7: $03
	ld   [de], a                                     ; $44c8: $12
	ld   bc, $2903                                   ; $44c9: $01 $03 $29
	nop                                              ; $44cc: $00
	ld   bc, $a178                                   ; $44cd: $01 $78 $a1
	ld   l, [hl]                                     ; $44d0: $6e
	ld   e, c                                        ; $44d1: $59
	sbc  [hl]                                        ; $44d2: $9e
	ld   [bc], a                                     ; $44d3: $02
	jr   nz, jr_056_44d8                             ; $44d4: $20 $02

	and  c                                           ; $44d6: $a1
	ld   a, c                                        ; $44d7: $79

jr_056_44d8:
	dec  c                                           ; $44d8: $0d
	nop                                              ; $44d9: $00
	dec  b                                           ; $44da: $05
	ld   b, b                                        ; $44db: $40
	ld   c, c                                        ; $44dc: $49
	ld   [bc], a                                     ; $44dd: $02
	nop                                              ; $44de: $00
	nop                                              ; $44df: $00
	ld   bc, $8d04                                   ; $44e0: $01 $04 $8d
	ld   d, h                                        ; $44e3: $54
	ld   [bc], a                                     ; $44e4: $02
	and  c                                           ; $44e5: $a1
	sub  b                                           ; $44e6: $90
	ld   d, h                                        ; $44e7: $54
	ld   l, c                                        ; $44e8: $69
	adc  h                                           ; $44e9: $8c
	ld   h, l                                        ; $44ea: $65
	ld   l, l                                        ; $44eb: $6d
	sbc  l                                           ; $44ec: $9d
	sbc  a                                           ; $44ed: $9f
	dec  c                                           ; $44ee: $0d
	nop                                              ; $44ef: $00
	dec  b                                           ; $44f0: $05
	ld   b, b                                        ; $44f1: $40
	ld   c, a                                        ; $44f2: $4f
	ld   bc, $0002                                   ; $44f3: $01 $02 $00
	ld   bc, $b502                                   ; $44f6: $01 $02 $b5
	sbc  b                                           ; $44f9: $98
	adc  h                                           ; $44fa: $8c
	ld   h, l                                        ; $44fb: $65
	sub  l                                           ; $44fc: $95
	ld   d, h                                        ; $44fd: $54
	rst  $38                                         ; $44fe: $ff
	rst  $38                                         ; $44ff: $ff
	dec  c                                           ; $4500: $0d
	nop                                              ; $4501: $00
	ld   a, [bc]                                     ; $4502: $0a
	dec  c                                           ; $4503: $0d
	nop                                              ; $4504: $00
	nop                                              ; $4505: $00
	rrca                                             ; $4506: $0f
	nop                                              ; $4507: $00
	ld   bc, $1e09                                   ; $4508: $01 $09 $1e
	add  hl, hl                                      ; $450b: $29
	dec  b                                           ; $450c: $05
	nop                                              ; $450d: $00
	inc  e                                           ; $450e: $1c
	ld   [bc], a                                     ; $450f: $02
	ld   [bc], a                                     ; $4510: $02
	ld   [bc], a                                     ; $4511: $02
	ld   bc, $9704                                   ; $4512: $01 $04 $97
	ld   [bc], a                                     ; $4515: $02
	jp   $f97d                                       ; $4516: $c3 $7d $f9


	dec  c                                           ; $4519: $0d
	or   c                                           ; $451a: $b1
	cp   e                                           ; $451b: $bb
	or   c                                           ; $451c: $b1
	cp   e                                           ; $451d: $bb
	ld   h, l                                        ; $451e: $65
	ld   a, b                                        ; $451f: $78
	ld   d, d                                        ; $4520: $52
	ld   [hl], l                                     ; $4521: $75
	sbc  [hl]                                        ; $4522: $9e
	dec  c                                           ; $4523: $0d
	inc  bc                                          ; $4524: $03
	and  b                                           ; $4525: $a0
	ld   l, a                                        ; $4526: $6f
	ld   a, b                                        ; $4527: $78
	ld   h, e                                        ; $4528: $63
	ld   d, d                                        ; $4529: $52
	ld   a, [$000d]                                  ; $452a: $fa $0d $00
	ld   a, [bc]                                     ; $452d: $0a
	rrca                                             ; $452e: $0f
	nop                                              ; $452f: $00
	ld   bc, $020d                                   ; $4530: $01 $0d $02
	nop                                              ; $4533: $00
	ld   bc, $0301                                   ; $4534: $01 $01 $03
	and  c                                           ; $4537: $a1
	ld   sp, hl                                      ; $4538: $f9
	db   $10                                         ; $4539: $10
	ld   e, a                                        ; $453a: $5f
	ld   [hl], c                                     ; $453b: $71
	ld   h, c                                        ; $453c: $61
	ld   d, h                                        ; $453d: $54
	inc  bc                                          ; $453e: $03
	ccf                                              ; $453f: $3f
	ld   d, d                                        ; $4540: $52
	ld   l, h                                        ; $4541: $6c
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	ld   bc, $0d04                                   ; $4544: $01 $04 $0d
	nop                                              ; $4547: $00
	ld   a, [bc]                                     ; $4548: $0a
	dec  c                                           ; $4549: $0d
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	rrca                                             ; $454c: $0f
	nop                                              ; $454d: $00
	ld   bc, $8623                                   ; $454e: $01 $23 $86
	inc  e                                           ; $4551: $1c
	ld   [bc], a                                     ; $4552: $02
	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	ld   bc, $527d                                   ; $4555: $01 $7d $52
	sbc  a                                           ; $4558: $9f
	inc  bc                                          ; $4559: $03
	ld   l, b                                        ; $455a: $68
	ld   a, l                                        ; $455b: $7d
	ld   h, c                                        ; $455c: $61
	sbc  d                                           ; $455d: $9a
	ld   a, e                                        ; $455e: $7b
	sbc  a                                           ; $455f: $9f
	dec  c                                           ; $4560: $0d
	nop                                              ; $4561: $00
	ld   a, [bc]                                     ; $4562: $0a
	add  hl, de                                      ; $4563: $19
	dec  b                                           ; $4564: $05
	ld   [bc], a                                     ; $4565: $02
	ld   a, l                                        ; $4566: $7d
	sbc  [hl]                                        ; $4567: $9e
	ld   a, l                                        ; $4568: $7d
	ld   d, d                                        ; $4569: $52
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	pop  bc                                          ; $456c: $c1
	sbc  [hl]                                        ; $456d: $9e
	pop  bc                                          ; $456e: $c1
	db   $e3                                         ; $456f: $e3
	ld   [hl], l                                     ; $4570: $75
	ld   h, a                                        ; $4571: $67
	rst  $38                                         ; $4572: $ff
	rst  $38                                         ; $4573: $ff
	nop                                              ; $4574: $00
	ld   bc, $1107                                   ; $4575: $01 $07 $11
	add  hl, bc                                      ; $4578: $09
	ld   [bc], a                                     ; $4579: $02
	inc  bc                                          ; $457a: $03
	ld   bc, $2000                                   ; $457b: $01 $00 $20
	nop                                              ; $457e: $00
	rlca                                             ; $457f: $07
	sbc  e                                           ; $4580: $9b
	ld   [$0302], sp                                 ; $4581: $08 $02 $03
	ld   bc, $2001                                   ; $4584: $01 $01 $20
	nop                                              ; $4587: $00
	ld   b, $f1                                      ; $4588: $06 $f1
	ld   [$000f], sp                                 ; $458a: $08 $0f $00
	ld   bc, $c101                                   ; $458d: $01 $01 $c1
	sbc  [hl]                                        ; $4590: $9e
	pop  bc                                          ; $4591: $c1
	db   $e3                                         ; $4592: $e3
	ld   [hl], l                                     ; $4593: $75
	ld   h, a                                        ; $4594: $67
	sbc  a                                           ; $4595: $9f
	dec  c                                           ; $4596: $0d
	inc  b                                           ; $4597: $04
	ld   l, l                                        ; $4598: $6d
	sbc  [hl]                                        ; $4599: $9e
	sub  b                                           ; $459a: $90
	ld   d, h                                        ; $459b: $54
	inc  bc                                          ; $459c: $03
	and  b                                           ; $459d: $a0
	ld   [hl], h                                     ; $459e: $74
	adc  h                                           ; $459f: $8c
	ld   l, c                                        ; $45a0: $69
	and  c                                           ; $45a1: $a1
	sbc  a                                           ; $45a2: $9f
	dec  c                                           ; $45a3: $0d
	nop                                              ; $45a4: $00
	ld   a, [bc]                                     ; $45a5: $0a
	inc  e                                           ; $45a6: $1c
	ld   [bc], a                                     ; $45a7: $02
	dec  b                                           ; $45a8: $05
	dec  b                                           ; $45a9: $05
	dec  e                                           ; $45aa: $1d
	ld   b, b                                        ; $45ab: $40
	ld   [de], a                                     ; $45ac: $12
	inc  bc                                          ; $45ad: $03
	ld   [de], a                                     ; $45ae: $12
	ld   bc, $2902                                   ; $45af: $01 $02 $29
	nop                                              ; $45b2: $00
	ld   bc, $6e8c                                   ; $45b3: $01 $8c $6e
	inc  d                                           ; $45b6: $14
	ld   [hl], d                                     ; $45b7: $72
	ld   [hl], l                                     ; $45b8: $75
	ld   h, a                                        ; $45b9: $67
	sbc  l                                           ; $45ba: $9d
	sub  [hl]                                        ; $45bb: $96
	ld   sp, hl                                      ; $45bc: $f9
	dec  c                                           ; $45bd: $0d
	and  c                                           ; $45be: $a1
	rst  $38                                         ; $45bf: $ff
	rst  $38                                         ; $45c0: $ff
	inc  bc                                          ; $45c1: $03
	dec  c                                           ; $45c2: $0d
	inc  b                                           ; $45c3: $04
	ld   a, b                                        ; $45c4: $78
	ld   d, b                                        ; $45c5: $50
	sbc  b                                           ; $45c6: $98
	adc  h                                           ; $45c7: $8c
	ld   l, c                                        ; $45c8: $69
	and  c                                           ; $45c9: $a1
	ld   a, e                                        ; $45ca: $7b
	sbc  a                                           ; $45cb: $9f
	dec  c                                           ; $45cc: $0d
	ld   [bc], a                                     ; $45cd: $02
	or   l                                           ; $45ce: $b5
	sbc  b                                           ; $45cf: $98
	adc  h                                           ; $45d0: $8c
	ld   h, a                                        ; $45d1: $67
	sbc  l                                           ; $45d2: $9d
	sub  [hl]                                        ; $45d3: $96
	sbc  a                                           ; $45d4: $9f
	dec  c                                           ; $45d5: $0d
	nop                                              ; $45d6: $00
	ld   a, [bc]                                     ; $45d7: $0a
	dec  c                                           ; $45d8: $0d
	nop                                              ; $45d9: $00
	nop                                              ; $45da: $00
	rrca                                             ; $45db: $0f
	nop                                              ; $45dc: $00
	ld   bc, $6b06                                   ; $45dd: $01 $06 $6b
	dec  bc                                          ; $45e0: $0b
	inc  e                                           ; $45e1: $1c
	ld   [bc], a                                     ; $45e2: $02
	ld   [bc], a                                     ; $45e3: $02
	ld   [bc], a                                     ; $45e4: $02
	ld   bc, $9704                                   ; $45e5: $01 $04 $97
	ld   [bc], a                                     ; $45e8: $02
	jp   $f97d                                       ; $45e9: $c3 $7d $f9


	dec  c                                           ; $45ec: $0d
	or   c                                           ; $45ed: $b1
	cp   e                                           ; $45ee: $bb
	or   c                                           ; $45ef: $b1
	cp   e                                           ; $45f0: $bb
	ld   h, l                                        ; $45f1: $65
	ld   a, b                                        ; $45f2: $78
	ld   d, d                                        ; $45f3: $52
	ld   [hl], l                                     ; $45f4: $75
	sbc  [hl]                                        ; $45f5: $9e
	dec  c                                           ; $45f6: $0d
	inc  bc                                          ; $45f7: $03
	and  b                                           ; $45f8: $a0
	ld   l, a                                        ; $45f9: $6f
	ld   a, b                                        ; $45fa: $78
	ld   h, e                                        ; $45fb: $63
	ld   d, d                                        ; $45fc: $52
	ld   a, [$000d]                                  ; $45fd: $fa $0d $00
	ld   a, [bc]                                     ; $4600: $0a
	rrca                                             ; $4601: $0f
	nop                                              ; $4602: $00
	ld   bc, $020d                                   ; $4603: $01 $0d $02
	nop                                              ; $4606: $00
	ld   bc, $0301                                   ; $4607: $01 $01 $03
	sub  b                                           ; $460a: $90
	sbc  [hl]                                        ; $460b: $9e
	sub  b                                           ; $460c: $90
	ld   d, h                                        ; $460d: $54
	pop  bc                                          ; $460e: $c1
	db   $e3                                         ; $460f: $e3
	ld   e, c                                        ; $4610: $59
	sub  b                                           ; $4611: $90
	rst  $38                                         ; $4612: $ff
	rst  $38                                         ; $4613: $ff
	ld   bc, $0d04                                   ; $4614: $01 $04 $0d
	nop                                              ; $4617: $00
	ld   a, [bc]                                     ; $4618: $0a
	rrca                                             ; $4619: $0f
	ld   [bc], a                                     ; $461a: $02
	nop                                              ; $461b: $00
	ld   bc, $527d                                   ; $461c: $01 $7d $52
	sbc  a                                           ; $461f: $9f
	inc  bc                                          ; $4620: $03
	ld   l, b                                        ; $4621: $68
	ld   a, l                                        ; $4622: $7d
	ld   h, c                                        ; $4623: $61
	sbc  d                                           ; $4624: $9a
	ld   a, e                                        ; $4625: $7b
	sbc  a                                           ; $4626: $9f
	dec  c                                           ; $4627: $0d
	nop                                              ; $4628: $00
	ld   a, [bc]                                     ; $4629: $0a
	add  hl, de                                      ; $462a: $19
	dec  b                                           ; $462b: $05
	ld   [bc], a                                     ; $462c: $02
	ld   a, l                                        ; $462d: $7d
	sbc  [hl]                                        ; $462e: $9e
	ld   a, l                                        ; $462f: $7d
	ld   d, d                                        ; $4630: $52
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	sub  b                                           ; $4633: $90
	ld   d, h                                        ; $4634: $54
	pop  bc                                          ; $4635: $c1
	db   $e3                                         ; $4636: $e3
	ld   [hl], l                                     ; $4637: $75
	ld   h, a                                        ; $4638: $67
	nop                                              ; $4639: $00
	ld   bc, $6007                                   ; $463a: $01 $07 $60
	add  hl, bc                                      ; $463d: $09
	ld   [bc], a                                     ; $463e: $02
	inc  bc                                          ; $463f: $03
	ld   bc, $2000                                   ; $4640: $01 $00 $20
	nop                                              ; $4643: $00
	rlca                                             ; $4644: $07
	db   $10                                         ; $4645: $10
	ld   a, [bc]                                     ; $4646: $0a
	ld   [bc], a                                     ; $4647: $02
	inc  bc                                          ; $4648: $03
	ld   bc, $2001                                   ; $4649: $01 $01 $20
	nop                                              ; $464c: $00
	ld   b, $9d                                      ; $464d: $06 $9d
	ld   a, [bc]                                     ; $464f: $0a
	rrca                                             ; $4650: $0f
	nop                                              ; $4651: $00
	ld   bc, $7d01                                   ; $4652: $01 $01 $7d
	sbc  [hl]                                        ; $4655: $9e
	ld   a, l                                        ; $4656: $7d
	ld   d, d                                        ; $4657: $52
	db   $fc                                         ; $4658: $fc
	ld   [hl], c                                     ; $4659: $71
	sbc  a                                           ; $465a: $9f
	dec  c                                           ; $465b: $0d
	rst  $38                                         ; $465c: $ff
	rst  $38                                         ; $465d: $ff
	rst  $38                                         ; $465e: $ff
	rst  $38                                         ; $465f: $ff
	ld   d, b                                        ; $4660: $50
	ld   [hl], c                                     ; $4661: $71
	ld   a, [$5d0d]                                  ; $4662: $fa $0d $5d
	ld   l, b                                        ; $4665: $68
	sbc  d                                           ; $4666: $9a
	ld   l, l                                        ; $4667: $6d
	ld   [hl], c                                     ; $4668: $71
	ld   a, [$000d]                                  ; $4669: $fa $0d $00
	ld   a, [bc]                                     ; $466c: $0a
	inc  e                                           ; $466d: $1c
	ld   [bc], a                                     ; $466e: $02
	inc  bc                                          ; $466f: $03
	inc  bc                                          ; $4670: $03
	dec  e                                           ; $4671: $1d
	ld   b, b                                        ; $4672: $40
	ld   [de], a                                     ; $4673: $12
	inc  bc                                          ; $4674: $03
	ld   [de], a                                     ; $4675: $12
	ld   bc, $2902                                   ; $4676: $01 $02 $29
	nop                                              ; $4679: $00
	ld   bc, $915b                                   ; $467a: $01 $5b $91
	ld   d, b                                        ; $467d: $50
	ld   a, [$7810]                                  ; $467e: $fa $10 $78
	and  c                                           ; $4681: $a1
	ld   [hl], h                                     ; $4682: $74
	ld   h, c                                        ; $4683: $61
	halt                                             ; $4684: $76
	ld   [hl], l                                     ; $4685: $75
	ld   h, a                                        ; $4686: $67
	ld   a, h                                        ; $4687: $7c
	ld   sp, hl                                      ; $4688: $f9
	dec  c                                           ; $4689: $0d
	inc  bc                                          ; $468a: $03
	and  b                                           ; $468b: $a0
	ld   [hl], h                                     ; $468c: $74
	ld   a, b                                        ; $468d: $78
	ld   d, d                                        ; $468e: $52
	ld   a, b                                        ; $468f: $78
	sub  a                                           ; $4690: $97
	sbc  [hl]                                        ; $4691: $9e
	inc  bc                                          ; $4692: $03
	and  b                                           ; $4693: $a0
	ld   [hl], h                                     ; $4694: $74
	ld   a, b                                        ; $4695: $78
	ld   d, d                                        ; $4696: $52
	halt                                             ; $4697: $76
	dec  c                                           ; $4698: $0d
	ld   l, a                                        ; $4699: $6f
	sub  c                                           ; $469a: $91
	and  c                                           ; $469b: $a1
	halt                                             ; $469c: $76
	ld   e, b                                        ; $469d: $58
	ld   [hl], c                                     ; $469e: $71
	ld   h, l                                        ; $469f: $65
	sub  c                                           ; $46a0: $91
	ld   d, d                                        ; $46a1: $52
	ld   a, [$000d]                                  ; $46a2: $fa $0d $00
	ld   a, [bc]                                     ; $46a5: $0a
	inc  e                                           ; $46a6: $1c
	ld   [bc], a                                     ; $46a7: $02
	rlca                                             ; $46a8: $07
	rlca                                             ; $46a9: $07
	ld   bc, $718c                                   ; $46aa: $01 $8c $71
	ld   l, l                                        ; $46ad: $6d
	ld   e, l                                        ; $46ae: $5d
	sub  b                                           ; $46af: $90
	ei                                               ; $46b0: $fb
	sbc  a                                           ; $46b1: $9f
	dec  c                                           ; $46b2: $0d
	ld   h, e                                        ; $46b3: $63
	ld   d, b                                        ; $46b4: $50
	sbc  [hl]                                        ; $46b5: $9e
	inc  bc                                          ; $46b6: $03
	ld   [hl], b                                     ; $46b7: $70
	ld   e, l                                        ; $46b8: $5d
	inc  bc                                          ; $46b9: $03
	dec  l                                           ; $46ba: $2d
	ld   d, d                                        ; $46bb: $52
	ld   a, b                                        ; $46bc: $78
	ld   h, e                                        ; $46bd: $63
	ld   d, d                                        ; $46be: $52
	sbc  a                                           ; $46bf: $9f
	dec  c                                           ; $46c0: $0d
	ld   [bc], a                                     ; $46c1: $02
	or   l                                           ; $46c2: $b5
	sbc  b                                           ; $46c3: $98
	adc  h                                           ; $46c4: $8c
	ld   h, a                                        ; $46c5: $67
	sub  [hl]                                        ; $46c6: $96
	sbc  a                                           ; $46c7: $9f
	dec  c                                           ; $46c8: $0d
	nop                                              ; $46c9: $00
	ld   a, [bc]                                     ; $46ca: $0a
	dec  c                                           ; $46cb: $0d
	nop                                              ; $46cc: $00
	nop                                              ; $46cd: $00
	rrca                                             ; $46ce: $0f
	nop                                              ; $46cf: $00
	ld   bc, $0623                                   ; $46d0: $01 $23 $06
	inc  e                                           ; $46d3: $1c
	ld   [bc], a                                     ; $46d4: $02
	nop                                              ; $46d5: $00
	nop                                              ; $46d6: $00
	ld   bc, $9876                                   ; $46d7: $01 $76 $98
	ld   d, b                                        ; $46da: $50
	ld   d, [hl]                                     ; $46db: $56
	ld   l, b                                        ; $46dc: $68
	sbc  [hl]                                        ; $46dd: $9e
	ld   [bc], a                                     ; $46de: $02
	and  l                                           ; $46df: $a5
	inc  b                                           ; $46e0: $04
	xor  d                                           ; $46e1: $aa
	ld   a, l                                        ; $46e2: $7d
	dec  c                                           ; $46e3: $0d
	ld   h, d                                        ; $46e4: $62
	ld   [bc], a                                     ; $46e5: $02
	sub  h                                           ; $46e6: $94
	dec  b                                           ; $46e7: $05
	rrca                                             ; $46e8: $0f
	ld   h, e                                        ; $46e9: $63
	adc  h                                           ; $46ea: $8c
	ld   [hl], l                                     ; $46eb: $75
	ld   h, l                                        ; $46ec: $65
	ld   l, l                                        ; $46ed: $6d
	sbc  a                                           ; $46ee: $9f
	dec  c                                           ; $46ef: $0d
	ld   [hl], l                                     ; $46f0: $75
	ld   a, l                                        ; $46f1: $7d
	rst  $38                                         ; $46f2: $ff
	rst  $38                                         ; $46f3: $ff
	dec  c                                           ; $46f4: $0d
	nop                                              ; $46f5: $00
	ld   a, [bc]                                     ; $46f6: $0a
	dec  c                                           ; $46f7: $0d
	nop                                              ; $46f8: $00
	nop                                              ; $46f9: $00
	rrca                                             ; $46fa: $0f
	nop                                              ; $46fb: $00
	ld   bc, $6b06                                   ; $46fc: $01 $06 $6b
	dec  bc                                          ; $46ff: $0b
	rrca                                             ; $4700: $0f
	nop                                              ; $4701: $00
	ld   bc, $9001                                   ; $4702: $01 $01 $90
	ei                                               ; $4705: $fb
	sbc  [hl]                                        ; $4706: $9e
	pop  bc                                          ; $4707: $c1
	db   $e3                                         ; $4708: $e3
	ld   [hl], l                                     ; $4709: $75
	ld   h, a                                        ; $470a: $67
	sbc  a                                           ; $470b: $9f
	dec  c                                           ; $470c: $0d
	ld   l, e                                        ; $470d: $6b
	sbc  e                                           ; $470e: $9b
	ld   l, e                                        ; $470f: $6b
	sbc  e                                           ; $4710: $9b
	sbc  [hl]                                        ; $4711: $9e
	ld   [bc], a                                     ; $4712: $02
	ldh  [rSC], a                                    ; $4713: $e0 $02
	ld   b, d                                        ; $4715: $42
	ld   [hl], l                                     ; $4716: $75
	ld   h, a                                        ; $4717: $67
	sbc  a                                           ; $4718: $9f
	dec  c                                           ; $4719: $0d
	nop                                              ; $471a: $00
	ld   a, [bc]                                     ; $471b: $0a
	ld   d, $1b                                      ; $471c: $16 $1b
	rrca                                             ; $471e: $0f
	ld   [bc], a                                     ; $471f: $02
	nop                                              ; $4720: $00
	ld   bc, $9750                                   ; $4721: $01 $50 $97
	sbc  [hl]                                        ; $4724: $9e
	ld   l, e                                        ; $4725: $6b
	ld   d, h                                        ; $4726: $54
	ld   sp, hl                                      ; $4727: $f9
	dec  c                                           ; $4728: $0d
	nop                                              ; $4729: $00
	ld   a, [bc]                                     ; $472a: $0a
	dec  e                                           ; $472b: $1d
	ld   b, b                                        ; $472c: $40
	ld   [de], a                                     ; $472d: $12
	inc  bc                                          ; $472e: $03
	ld   [de], a                                     ; $472f: $12
	ld   bc, $2803                                   ; $4730: $01 $03 $28
	nop                                              ; $4733: $00
	ld   bc, $9e8c                                   ; $4734: $01 $8c $9e
	ld   d, d                                        ; $4737: $52
	sbc  e                                           ; $4738: $9b
	ld   d, d                                        ; $4739: $52
	sbc  e                                           ; $473a: $9b
	inc  b                                           ; $473b: $04
	adc  l                                           ; $473c: $8d
	ld   d, d                                        ; $473d: $52
	adc  h                                           ; $473e: $8c
	ld   h, l                                        ; $473f: $65
	ld   l, l                                        ; $4740: $6d
	ld   h, l                                        ; $4741: $65
	sbc  [hl]                                        ; $4742: $9e
	dec  c                                           ; $4743: $0d
	ld   l, e                                        ; $4744: $6b
	sbc  e                                           ; $4745: $9b
	ld   l, e                                        ; $4746: $6b
	sbc  e                                           ; $4747: $9b
	ld   [bc], a                                     ; $4748: $02
	or   l                                           ; $4749: $b5
	sbc  b                                           ; $474a: $98
	adc  h                                           ; $474b: $8c
	ld   h, l                                        ; $474c: $65
	sub  l                                           ; $474d: $95
	ld   d, h                                        ; $474e: $54
	ld   e, c                                        ; $474f: $59
	sbc  a                                           ; $4750: $9f
	dec  c                                           ; $4751: $0d
	nop                                              ; $4752: $00
	ld   a, [bc]                                     ; $4753: $0a
	rrca                                             ; $4754: $0f
	nop                                              ; $4755: $00
	ld   bc, $0623                                   ; $4756: $01 $23 $06
	inc  e                                           ; $4759: $1c
	ld   [bc], a                                     ; $475a: $02
	ld   bc, $0101                                   ; $475b: $01 $01 $01
	ld   [$6300], sp                                 ; $475e: $08 $00 $63
	and  c                                           ; $4761: $a1
	sbc  a                                           ; $4762: $9f
	dec  c                                           ; $4763: $0d
	ld   [bc], a                                     ; $4764: $02
	and  l                                           ; $4765: $a5
	inc  b                                           ; $4766: $04
	xor  d                                           ; $4767: $aa
	ld   a, l                                        ; $4768: $7d
	ld   [hl], a                                     ; $4769: $77
	ld   d, h                                        ; $476a: $54
	sub  b                                           ; $476b: $90
	sbc  [hl]                                        ; $476c: $9e
	ld   h, d                                        ; $476d: $62
	ld   [bc], a                                     ; $476e: $02
	sub  h                                           ; $476f: $94
	dec  b                                           ; $4770: $05
	rrca                                             ; $4771: $0f
	ld   h, e                                        ; $4772: $63
	adc  h                                           ; $4773: $8c
	dec  c                                           ; $4774: $0d
	ld   [hl], l                                     ; $4775: $75
	ld   h, l                                        ; $4776: $65
	ld   l, l                                        ; $4777: $6d
	sbc  a                                           ; $4778: $9f
	ld   e, b                                        ; $4779: $58
	sub  d                                           ; $477a: $92
	ld   h, a                                        ; $477b: $67
	adc  l                                           ; $477c: $8d
	ld   a, b                                        ; $477d: $78
	ld   h, e                                        ; $477e: $63
	ld   d, d                                        ; $477f: $52
	sbc  a                                           ; $4780: $9f
	dec  c                                           ; $4781: $0d
	nop                                              ; $4782: $00
	ld   a, [bc]                                     ; $4783: $0a
	dec  c                                           ; $4784: $0d
	nop                                              ; $4785: $00
	nop                                              ; $4786: $00
	rrca                                             ; $4787: $0f
	nop                                              ; $4788: $00
	ld   bc, $6b06                                   ; $4789: $01 $06 $6b
	dec  bc                                          ; $478c: $0b
	inc  e                                           ; $478d: $1c
	ld   [bc], a                                     ; $478e: $02
	ld   [bc], a                                     ; $478f: $02
	ld   [bc], a                                     ; $4790: $02
	ld   bc, $9704                                   ; $4791: $01 $04 $97
	ld   [bc], a                                     ; $4794: $02
	jp   $f97d                                       ; $4795: $c3 $7d $f9


	dec  c                                           ; $4798: $0d
	or   c                                           ; $4799: $b1
	cp   e                                           ; $479a: $bb
	or   c                                           ; $479b: $b1
	cp   e                                           ; $479c: $bb
	ld   h, l                                        ; $479d: $65
	ld   a, b                                        ; $479e: $78
	ld   d, d                                        ; $479f: $52
	ld   [hl], l                                     ; $47a0: $75
	sbc  [hl]                                        ; $47a1: $9e
	dec  c                                           ; $47a2: $0d
	inc  bc                                          ; $47a3: $03
	and  b                                           ; $47a4: $a0
	ld   l, a                                        ; $47a5: $6f
	ld   a, b                                        ; $47a6: $78
	ld   h, e                                        ; $47a7: $63
	ld   d, d                                        ; $47a8: $52
	ld   a, [$000d]                                  ; $47a9: $fa $0d $00
	ld   a, [bc]                                     ; $47ac: $0a
	rrca                                             ; $47ad: $0f
	nop                                              ; $47ae: $00
	ld   bc, $ff01                                   ; $47af: $01 $01 $ff
	rst  $38                                         ; $47b2: $ff
	rst  $38                                         ; $47b3: $ff
	rst  $38                                         ; $47b4: $ff
	rst  $38                                         ; $47b5: $ff
	rst  $38                                         ; $47b6: $ff
	rst  $38                                         ; $47b7: $ff
	rst  $38                                         ; $47b8: $ff
	dec  c                                           ; $47b9: $0d
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	rst  $38                                         ; $47bc: $ff
	rst  $38                                         ; $47bd: $ff
	ld   d, b                                        ; $47be: $50
	ld   [hl], c                                     ; $47bf: $71
	ld   a, [$5d0d]                                  ; $47c0: $fa $0d $5d
	ld   l, b                                        ; $47c3: $68
	sbc  d                                           ; $47c4: $9a
	ld   l, l                                        ; $47c5: $6d
	ld   [hl], c                                     ; $47c6: $71
	ld   a, [$000d]                                  ; $47c7: $fa $0d $00
	ld   a, [bc]                                     ; $47ca: $0a
	inc  e                                           ; $47cb: $1c
	ld   [bc], a                                     ; $47cc: $02
	inc  bc                                          ; $47cd: $03
	inc  bc                                          ; $47ce: $03
	dec  e                                           ; $47cf: $1d
	ld   b, b                                        ; $47d0: $40
	ld   [de], a                                     ; $47d1: $12
	inc  bc                                          ; $47d2: $03
	ld   [de], a                                     ; $47d3: $12
	ld   bc, $2902                                   ; $47d4: $01 $02 $29
	nop                                              ; $47d7: $00
	ld   bc, $915b                                   ; $47d8: $01 $5b $91
	ld   d, b                                        ; $47db: $50
	ld   a, [$7810]                                  ; $47dc: $fa $10 $78
	and  c                                           ; $47df: $a1
	ld   [hl], h                                     ; $47e0: $74
	ld   h, c                                        ; $47e1: $61
	halt                                             ; $47e2: $76
	ld   [hl], l                                     ; $47e3: $75
	ld   h, a                                        ; $47e4: $67
	ld   a, h                                        ; $47e5: $7c
	ld   sp, hl                                      ; $47e6: $f9
	dec  c                                           ; $47e7: $0d
	inc  bc                                          ; $47e8: $03
	and  b                                           ; $47e9: $a0
	ld   [hl], h                                     ; $47ea: $74
	ld   a, b                                        ; $47eb: $78
	ld   d, d                                        ; $47ec: $52
	ld   a, b                                        ; $47ed: $78
	sub  a                                           ; $47ee: $97
	sbc  [hl]                                        ; $47ef: $9e
	inc  bc                                          ; $47f0: $03
	and  b                                           ; $47f1: $a0
	ld   [hl], h                                     ; $47f2: $74
	ld   a, b                                        ; $47f3: $78
	ld   d, d                                        ; $47f4: $52
	halt                                             ; $47f5: $76
	dec  c                                           ; $47f6: $0d
	ld   l, a                                        ; $47f7: $6f
	sub  c                                           ; $47f8: $91
	and  c                                           ; $47f9: $a1
	halt                                             ; $47fa: $76
	ld   e, b                                        ; $47fb: $58
	ld   [hl], c                                     ; $47fc: $71
	ld   h, l                                        ; $47fd: $65
	sub  c                                           ; $47fe: $91
	ld   d, d                                        ; $47ff: $52
	ld   a, [$000d]                                  ; $4800: $fa $0d $00
	ld   a, [bc]                                     ; $4803: $0a
	inc  e                                           ; $4804: $1c
	ld   [bc], a                                     ; $4805: $02
	rlca                                             ; $4806: $07
	rlca                                             ; $4807: $07
	ld   bc, $718c                                   ; $4808: $01 $8c $71
	ld   l, l                                        ; $480b: $6d
	ld   e, l                                        ; $480c: $5d
	sub  b                                           ; $480d: $90
	ei                                               ; $480e: $fb
	sbc  a                                           ; $480f: $9f
	dec  c                                           ; $4810: $0d
	ld   h, e                                        ; $4811: $63
	ld   d, b                                        ; $4812: $50
	sbc  [hl]                                        ; $4813: $9e
	inc  bc                                          ; $4814: $03
	ld   [hl], b                                     ; $4815: $70
	ld   e, l                                        ; $4816: $5d
	inc  bc                                          ; $4817: $03
	dec  l                                           ; $4818: $2d
	ld   d, d                                        ; $4819: $52
	ld   a, b                                        ; $481a: $78
	ld   h, e                                        ; $481b: $63
	ld   d, d                                        ; $481c: $52
	sbc  a                                           ; $481d: $9f
	dec  c                                           ; $481e: $0d
	ld   [bc], a                                     ; $481f: $02
	or   l                                           ; $4820: $b5
	sbc  b                                           ; $4821: $98
	adc  h                                           ; $4822: $8c
	ld   h, a                                        ; $4823: $67
	sub  [hl]                                        ; $4824: $96
	sbc  a                                           ; $4825: $9f
	dec  c                                           ; $4826: $0d
	nop                                              ; $4827: $00
	ld   a, [bc]                                     ; $4828: $0a
	dec  c                                           ; $4829: $0d
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	rrca                                             ; $482c: $0f
	nop                                              ; $482d: $00
	ld   bc, $0623                                   ; $482e: $01 $23 $06
	inc  e                                           ; $4831: $1c
	ld   [bc], a                                     ; $4832: $02
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	ld   bc, $9876                                   ; $4835: $01 $76 $98
	ld   d, b                                        ; $4838: $50
	ld   d, [hl]                                     ; $4839: $56
	ld   l, b                                        ; $483a: $68
	sbc  [hl]                                        ; $483b: $9e
	ld   [bc], a                                     ; $483c: $02
	and  l                                           ; $483d: $a5
	inc  b                                           ; $483e: $04
	xor  d                                           ; $483f: $aa
	ld   a, l                                        ; $4840: $7d
	dec  c                                           ; $4841: $0d
	ld   h, d                                        ; $4842: $62
	ld   [bc], a                                     ; $4843: $02
	sub  h                                           ; $4844: $94
	dec  b                                           ; $4845: $05
	rrca                                             ; $4846: $0f
	ld   h, e                                        ; $4847: $63
	adc  h                                           ; $4848: $8c
	ld   [hl], l                                     ; $4849: $75
	ld   h, l                                        ; $484a: $65
	ld   l, l                                        ; $484b: $6d
	sbc  a                                           ; $484c: $9f
	dec  c                                           ; $484d: $0d
	ld   [hl], l                                     ; $484e: $75
	ld   a, l                                        ; $484f: $7d
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	dec  c                                           ; $4852: $0d
	nop                                              ; $4853: $00
	ld   a, [bc]                                     ; $4854: $0a
	dec  c                                           ; $4855: $0d
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	rrca                                             ; $4858: $0f
	nop                                              ; $4859: $00
	ld   bc, $020c                                   ; $485a: $01 $0c $02
	ld   c, $02                                      ; $485d: $0e $02
	ld   bc, $ffff                                   ; $485f: $01 $ff $ff
	add  e                                           ; $4862: $83
	ld   d, h                                        ; $4863: $54
	sbc  [hl]                                        ; $4864: $9e
	ld   [bc], a                                     ; $4865: $02
	and  l                                           ; $4866: $a5
	inc  b                                           ; $4867: $04
	xor  d                                           ; $4868: $aa
	ld   a, l                                        ; $4869: $7d
	ld   l, l                                        ; $486a: $6d
	ld   d, d                                        ; $486b: $52
	add  [hl]                                        ; $486c: $86
	and  c                                           ; $486d: $a1
	dec  c                                           ; $486e: $0d
	ld   l, [hl]                                     ; $486f: $6e
	ld   [hl], c                                     ; $4870: $71
	ld   l, l                                        ; $4871: $6d
	ld   a, b                                        ; $4872: $78
	ld   d, b                                        ; $4873: $50
	rst  $38                                         ; $4874: $ff
	rst  $38                                         ; $4875: $ff
	dec  c                                           ; $4876: $0d
	nop                                              ; $4877: $00
	ld   a, [bc]                                     ; $4878: $0a
	ld   bc, $7158                                   ; $4879: $01 $58 $71
	halt                                             ; $487c: $76
	sbc  [hl]                                        ; $487d: $9e
	sub  b                                           ; $487e: $90
	ld   d, h                                        ; $487f: $54
	ld   h, c                                        ; $4880: $61
	and  c                                           ; $4881: $a1
	ld   a, b                                        ; $4882: $78
	inc  bc                                          ; $4883: $03
	ld   l, a                                        ; $4884: $6f
	ld   [bc], a                                     ; $4885: $02
	xor  c                                           ; $4886: $a9
	ld   e, c                                        ; $4887: $59
	sbc  a                                           ; $4888: $9f
	dec  c                                           ; $4889: $0d
	ld   l, e                                        ; $488a: $6b
	sbc  e                                           ; $488b: $9b
	ld   l, e                                        ; $488c: $6b
	sbc  e                                           ; $488d: $9b
	inc  b                                           ; $488e: $04
	ld   b, d                                        ; $488f: $42
	ld   a, b                                        ; $4890: $78
	ld   e, l                                        ; $4891: $5d
	ld   l, a                                        ; $4892: $6f
	sub  c                                           ; $4893: $91
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	dec  c                                           ; $4896: $0d
	nop                                              ; $4897: $00
	ld   a, [bc]                                     ; $4898: $0a
	add  hl, hl                                      ; $4899: $29
	nop                                              ; $489a: $00
	nop                                              ; $489b: $00
	nop                                              ; $489c: $00
	inc  b                                           ; $489d: $04
	add  b                                           ; $489e: $80
	inc  c                                           ; $489f: $0c
	ld   bc, $20ff                                   ; $48a0: $01 $ff $20
	nop                                              ; $48a3: $00
	ld   c, $01                                      ; $48a4: $0e $01
	rrca                                             ; $48a6: $0f
	nop                                              ; $48a7: $00
	ld   bc, $0502                                   ; $48a8: $01 $02 $05
	ld   b, b                                        ; $48ab: $40
	ld   c, [hl]                                     ; $48ac: $4e
	ld   bc, $0000                                   ; $48ad: $01 $00 $00
	ld   bc, $a502                                   ; $48b0: $01 $02 $a5
	inc  b                                           ; $48b3: $04
	xor  d                                           ; $48b4: $aa
	ld   a, l                                        ; $48b5: $7d
	sbc  [hl]                                        ; $48b6: $9e
	ld   h, e                                        ; $48b7: $63
	ld   e, l                                        ; $48b8: $5d
	sub  a                                           ; $48b9: $97
	ld   h, e                                        ; $48ba: $63
	and  c                                           ; $48bb: $a1
	halt                                             ; $48bc: $76
	dec  c                                           ; $48bd: $0d
	ld   e, b                                        ; $48be: $58
	ld   [hl], l                                     ; $48bf: $75
	ld   e, c                                        ; $48c0: $59
	ld   e, a                                        ; $48c1: $5f
	ld   l, [hl]                                     ; $48c2: $6e
	sbc  a                                           ; $48c3: $9f
	dec  c                                           ; $48c4: $0d
	dec  b                                           ; $48c5: $05
	jr   z, jr_056_491a                              ; $48c6: $28 $52

	ld   [hl], l                                     ; $48c8: $75
	inc  b                                           ; $48c9: $04
	rlca                                             ; $48ca: $07
	dec  b                                           ; $48cb: $05
	scf                                              ; $48cc: $37
	ld   d, [hl]                                     ; $48cd: $56
	ld   a, b                                        ; $48ce: $78
	ld   e, l                                        ; $48cf: $5d
	ld   l, a                                        ; $48d0: $6f
	sub  c                                           ; $48d1: $91
	sbc  a                                           ; $48d2: $9f
	dec  c                                           ; $48d3: $0d
	nop                                              ; $48d4: $00
	ld   a, [bc]                                     ; $48d5: $0a
	add  hl, de                                      ; $48d6: $19
	inc  b                                           ; $48d7: $04
	inc  bc                                          ; $48d8: $03
	cp   b                                           ; $48d9: $b8
	push hl                                          ; $48da: $e5
	push bc                                          ; $48db: $c5
	and  b                                           ; $48dc: $a0
	inc  b                                           ; $48dd: $04
	rlca                                             ; $48de: $07
	sbc  c                                           ; $48df: $99
	nop                                              ; $48e0: $00
	nop                                              ; $48e1: $00
	cp   b                                           ; $48e2: $b8
	push hl                                          ; $48e3: $e5
	or   d                                           ; $48e4: $b2
	and  b                                           ; $48e5: $a0
	inc  bc                                          ; $48e6: $03
	dec  de                                          ; $48e7: $1b
	sbc  c                                           ; $48e8: $99
	nop                                              ; $48e9: $00
	ld   bc, $e5b8                                   ; $48ea: $01 $b8 $e5
	pop  af                                          ; $48ed: $f1
	ei                                               ; $48ee: $fb
	and  b                                           ; $48ef: $a0
	ld   d, b                                        ; $48f0: $50
	add  c                                           ; $48f1: $81
	sbc  c                                           ; $48f2: $99
	nop                                              ; $48f3: $00
	ld   [bc], a                                     ; $48f4: $02
	rlca                                             ; $48f5: $07
	ld   l, a                                        ; $48f6: $6f
	nop                                              ; $48f7: $00
	ld   [bc], a                                     ; $48f8: $02
	inc  bc                                          ; $48f9: $03
	ld   bc, $2000                                   ; $48fa: $01 $00 $20
	nop                                              ; $48fd: $00
	rlca                                             ; $48fe: $07
	sub  b                                           ; $48ff: $90
	nop                                              ; $4900: $00
	ld   [bc], a                                     ; $4901: $02
	inc  bc                                          ; $4902: $03
	ld   bc, $2001                                   ; $4903: $01 $01 $20
	nop                                              ; $4906: $00
	rlca                                             ; $4907: $07
	call z, $0200                                    ; $4908: $cc $00 $02
	inc  bc                                          ; $490b: $03
	ld   bc, $2002                                   ; $490c: $01 $02 $20
	nop                                              ; $490f: $00
	ld   b, $0d                                      ; $4910: $06 $0d
	ld   bc, $000f                                   ; $4912: $01 $0f $00
	ld   bc, $8c01                                   ; $4915: $01 $01 $8c
	ld   l, b                                        ; $4918: $68
	ld   a, l                                        ; $4919: $7d

jr_056_491a:
	sbc  [hl]                                        ; $491a: $9e
	cp   b                                           ; $491b: $b8
	push hl                                          ; $491c: $e5
	push bc                                          ; $491d: $c5
	and  b                                           ; $491e: $a0
	inc  b                                           ; $491f: $04
	rlca                                             ; $4920: $07
	ld   [hl], h                                     ; $4921: $74
	halt                                             ; $4922: $76
	rst  $38                                         ; $4923: $ff
	rst  $38                                         ; $4924: $ff
	dec  c                                           ; $4925: $0d
	nop                                              ; $4926: $00
	ld   a, [bc]                                     ; $4927: $0a
	dec  b                                           ; $4928: $05
	ld   b, b                                        ; $4929: $40
	rst  $38                                         ; $492a: $ff
	inc  bc                                          ; $492b: $03
	rst  $38                                         ; $492c: $ff
	ld   bc, $2801                                   ; $492d: $01 $01 $28
	nop                                              ; $4930: $00
	ld   b, $30                                      ; $4931: $06 $30
	ld   bc, $000f                                   ; $4933: $01 $0f $00
	ld   bc, $8c01                                   ; $4936: $01 $01 $8c
	ld   l, b                                        ; $4939: $68
	ld   a, l                                        ; $493a: $7d
	sbc  [hl]                                        ; $493b: $9e
	cp   b                                           ; $493c: $b8
	push hl                                          ; $493d: $e5
	or   d                                           ; $493e: $b2
	and  b                                           ; $493f: $a0
	inc  bc                                          ; $4940: $03
	dec  de                                          ; $4941: $1b
	ld   [hl], c                                     ; $4942: $71
	ld   [hl], h                                     ; $4943: $74
	rst  $38                                         ; $4944: $ff
	rst  $38                                         ; $4945: $ff
	dec  c                                           ; $4946: $0d
	and  c                                           ; $4947: $a1
	ld   sp, hl                                      ; $4948: $f9
	db   $10                                         ; $4949: $10
	ld   a, b                                        ; $494a: $78
	and  c                                           ; $494b: $a1
	ld   [hl], l                                     ; $494c: $75
	cp   b                                           ; $494d: $b8
	push hl                                          ; $494e: $e5
	or   d                                           ; $494f: $b2
	and  b                                           ; $4950: $a0
	dec  c                                           ; $4951: $0d
	nop                                              ; $4952: $00
	dec  b                                           ; $4953: $05
	ld   b, b                                        ; $4954: $40
	rst  $38                                         ; $4955: $ff
	inc  bc                                          ; $4956: $03
	rst  $38                                         ; $4957: $ff
	ld   bc, $2801                                   ; $4958: $01 $01 $28
	nop                                              ; $495b: $00
	ld   bc, $1b03                                   ; $495c: $01 $03 $1b
	sub  a                                           ; $495f: $97
	ld   a, b                                        ; $4960: $78
	ld   e, e                                        ; $4961: $5b
	sub  c                                           ; $4962: $91
	ld   d, d                                        ; $4963: $52
	ld   e, a                                        ; $4964: $5f
	ld   a, b                                        ; $4965: $78
	ld   d, d                                        ; $4966: $52
	and  c                                           ; $4967: $a1
	ld   l, [hl]                                     ; $4968: $6e
	ld   sp, hl                                      ; $4969: $f9
	dec  c                                           ; $496a: $0d
	nop                                              ; $496b: $00
	ld   a, [bc]                                     ; $496c: $0a
	ld   b, $32                                      ; $496d: $06 $32
	nop                                              ; $496f: $00
	rrca                                             ; $4970: $0f
	nop                                              ; $4971: $00
	ld   bc, $8c01                                   ; $4972: $01 $01 $8c
	ld   l, b                                        ; $4975: $68
	ld   a, l                                        ; $4976: $7d
	rst  $38                                         ; $4977: $ff
	rst  $38                                         ; $4978: $ff
	cp   b                                           ; $4979: $b8
	push hl                                          ; $497a: $e5
	pop  af                                          ; $497b: $f1
	ei                                               ; $497c: $fb
	and  b                                           ; $497d: $a0
	ld   d, b                                        ; $497e: $50
	add  c                                           ; $497f: $81
	sub  [hl]                                        ; $4980: $96
	ld   d, h                                        ; $4981: $54
	dec  c                                           ; $4982: $0d
	ld   e, c                                        ; $4983: $59
	ld   a, b                                        ; $4984: $78
	ld   sp, hl                                      ; $4985: $f9
	db   $10                                         ; $4986: $10
	rst  $38                                         ; $4987: $ff
	rst  $38                                         ; $4988: $ff
	ld   d, d                                        ; $4989: $52
	sub  d                                           ; $498a: $92
	ld   d, d                                        ; $498b: $52
	sub  d                                           ; $498c: $92
	sbc  [hl]                                        ; $498d: $9e
	ld   l, e                                        ; $498e: $6b
	and  c                                           ; $498f: $a1
	ld   a, b                                        ; $4990: $78
	dec  c                                           ; $4991: $0d
	nop                                              ; $4992: $00
	dec  b                                           ; $4993: $05
	ld   b, b                                        ; $4994: $40
	rst  $38                                         ; $4995: $ff
	inc  bc                                          ; $4996: $03
	rst  $38                                         ; $4997: $ff
	ld   bc, $2801                                   ; $4998: $01 $01 $28
	nop                                              ; $499b: $00
	ld   bc, $7661                                   ; $499c: $01 $61 $76
	ld   h, l                                        ; $499f: $65
	ld   [hl], h                                     ; $49a0: $74
	sbc  c                                           ; $49a1: $99
	inc  bc                                          ; $49a2: $03
	ld   l, a                                        ; $49a3: $6f
	ld   [bc], a                                     ; $49a4: $02
	xor  c                                           ; $49a5: $a9
	ld   a, l                                        ; $49a6: $7d
	ld   a, b                                        ; $49a7: $78
	ld   d, d                                        ; $49a8: $52
	ld   l, h                                        ; $49a9: $6c
	sbc  a                                           ; $49aa: $9f
	dec  c                                           ; $49ab: $0d
	nop                                              ; $49ac: $00
	ld   a, [bc]                                     ; $49ad: $0a
	ld   b, $32                                      ; $49ae: $06 $32
	nop                                              ; $49b0: $00
	rrca                                             ; $49b1: $0f
	nop                                              ; $49b2: $00
	ld   bc, $8c01                                   ; $49b3: $01 $01 $8c
	ld   l, b                                        ; $49b6: $68
	ld   a, l                                        ; $49b7: $7d
	rst  $38                                         ; $49b8: $ff
	rst  $38                                         ; $49b9: $ff
	dec  c                                           ; $49ba: $0d
	ld   [hl], a                                     ; $49bb: $77
	ld   d, h                                        ; $49bc: $54
	ld   h, l                                        ; $49bd: $65
	sub  [hl]                                        ; $49be: $96
	ld   d, h                                        ; $49bf: $54
	ld   e, c                                        ; $49c0: $59
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	rst  $38                                         ; $49c3: $ff
	rst  $38                                         ; $49c4: $ff
	dec  c                                           ; $49c5: $0d
	nop                                              ; $49c6: $00
	ld   a, [bc]                                     ; $49c7: $0a
	dec  b                                           ; $49c8: $05
	ld   b, b                                        ; $49c9: $40
	rst  $38                                         ; $49ca: $ff
	inc  bc                                          ; $49cb: $03
	rst  $38                                         ; $49cc: $ff
	ld   bc, $2801                                   ; $49cd: $01 $01 $28
	nop                                              ; $49d0: $00
	ld   b, $32                                      ; $49d1: $06 $32
	nop                                              ; $49d3: $00
	add  hl, de                                      ; $49d4: $19
	inc  b                                           ; $49d5: $04
	inc  bc                                          ; $49d6: $03
	ld   e, l                                        ; $49d7: $5d
	ld   [hl], d                                     ; $49d8: $72
	ld   h, l                                        ; $49d9: $65
	ld   l, l                                        ; $49da: $6d
	and  b                                           ; $49db: $a0
	ld   a, l                                        ; $49dc: $7d
	ld   e, l                                        ; $49dd: $5d
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	ld   e, l                                        ; $49e0: $5d
	ld   [hl], d                                     ; $49e1: $72
	ld   h, l                                        ; $49e2: $65
	ld   l, l                                        ; $49e3: $6d
	and  b                                           ; $49e4: $a0
	ld   h, e                                        ; $49e5: $63
	ld   e, l                                        ; $49e6: $5d
	nop                                              ; $49e7: $00
	ld   bc, $715e                                   ; $49e8: $01 $5e $71
	ld   l, l                                        ; $49eb: $6d
	sbc  b                                           ; $49ec: $98
	halt                                             ; $49ed: $76
	ld   h, a                                        ; $49ee: $67
	sbc  c                                           ; $49ef: $99
	nop                                              ; $49f0: $00
	ld   [bc], a                                     ; $49f1: $02
	rlca                                             ; $49f2: $07
	ld   l, h                                        ; $49f3: $6c
	ld   bc, $0302                                   ; $49f4: $01 $02 $03
	ld   bc, $2000                                   ; $49f7: $01 $00 $20
	nop                                              ; $49fa: $00
	rlca                                             ; $49fb: $07
	adc  h                                           ; $49fc: $8c
	ld   bc, $0302                                   ; $49fd: $01 $02 $03
	ld   bc, $2001                                   ; $4a00: $01 $01 $20
	nop                                              ; $4a03: $00
	rlca                                             ; $4a04: $07
	add  $01                                         ; $4a05: $c6 $01
	ld   [bc], a                                     ; $4a07: $02
	inc  bc                                          ; $4a08: $03
	ld   bc, $2002                                   ; $4a09: $01 $02 $20
	nop                                              ; $4a0c: $00
	ld   b, $f7                                      ; $4a0d: $06 $f7
	ld   bc, $000f                                   ; $4a0f: $01 $0f $00
	ld   bc, $0301                                   ; $4a12: $01 $01 $03
	ld   l, b                                        ; $4a15: $68
	ld   a, c                                        ; $4a16: $79
	ld   e, l                                        ; $4a17: $5d
	ld   [hl], d                                     ; $4a18: $72
	ld   h, l                                        ; $4a19: $65
	ld   l, l                                        ; $4a1a: $6d
	and  b                                           ; $4a1b: $a0
	ld   a, l                                        ; $4a1c: $7d
	ld   d, d                                        ; $4a1d: $52
	ld   [hl], h                                     ; $4a1e: $74
	rst  $38                                         ; $4a1f: $ff
	rst  $38                                         ; $4a20: $ff
	dec  c                                           ; $4a21: $0d
	nop                                              ; $4a22: $00
	ld   a, [bc]                                     ; $4a23: $0a
	dec  b                                           ; $4a24: $05
	ld   b, b                                        ; $4a25: $40
	rst  $38                                         ; $4a26: $ff
	inc  bc                                          ; $4a27: $03
	rst  $38                                         ; $4a28: $ff
	ld   bc, $2801                                   ; $4a29: $01 $01 $28
	nop                                              ; $4a2c: $00
	ld   b, $1a                                      ; $4a2d: $06 $1a
	ld   [bc], a                                     ; $4a2f: $02
	rrca                                             ; $4a30: $0f
	nop                                              ; $4a31: $00
	ld   bc, $0301                                   ; $4a32: $01 $01 $03
	ld   l, b                                        ; $4a35: $68
	ld   a, c                                        ; $4a36: $79
	sbc  [hl]                                        ; $4a37: $9e
	ld   e, l                                        ; $4a38: $5d
	ld   [hl], d                                     ; $4a39: $72
	ld   h, l                                        ; $4a3a: $65
	ld   l, l                                        ; $4a3b: $6d
	and  b                                           ; $4a3c: $a0
	ld   h, e                                        ; $4a3d: $63
	ld   d, d                                        ; $4a3e: $52
	ld   [hl], h                                     ; $4a3f: $74
	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	dec  c                                           ; $4a42: $0d
	and  c                                           ; $4a43: $a1
	ld   sp, hl                                      ; $4a44: $f9
	db   $10                                         ; $4a45: $10
	ld   h, e                                        ; $4a46: $63
	ld   d, d                                        ; $4a47: $52
	ld   [hl], h                                     ; $4a48: $74
	ld   [hl], c                                     ; $4a49: $71
	ld   [hl], h                                     ; $4a4a: $74
	rst  $38                                         ; $4a4b: $ff
	rst  $38                                         ; $4a4c: $ff
	dec  c                                           ; $4a4d: $0d
	nop                                              ; $4a4e: $00
	dec  b                                           ; $4a4f: $05
	ld   b, b                                        ; $4a50: $40
	rst  $38                                         ; $4a51: $ff
	inc  bc                                          ; $4a52: $03
	rst  $38                                         ; $4a53: $ff
	ld   bc, $2801                                   ; $4a54: $01 $01 $28
	nop                                              ; $4a57: $00
	ld   bc, $8492                                   ; $4a58: $01 $92 $84
	ld   [hl], c                                     ; $4a5b: $71
	ld   l, a                                        ; $4a5c: $6f
	sub  c                                           ; $4a5d: $91
	pop  bc                                          ; $4a5e: $c1
	db   $e3                                         ; $4a5f: $e3
	ld   [hl], l                                     ; $4a60: $75
	ld   h, l                                        ; $4a61: $65
	sub  l                                           ; $4a62: $95
	sbc  a                                           ; $4a63: $9f
	dec  c                                           ; $4a64: $0d
	nop                                              ; $4a65: $00
	ld   a, [bc]                                     ; $4a66: $0a
	ld   b, $30                                      ; $4a67: $06 $30
	ld   bc, $000f                                   ; $4a69: $01 $0f $00
	ld   bc, $0301                                   ; $4a6c: $01 $01 $03
	ld   l, b                                        ; $4a6f: $68
	ld   a, c                                        ; $4a70: $79
	halt                                             ; $4a71: $76
	rst  $38                                         ; $4a72: $ff
	rst  $38                                         ; $4a73: $ff
	dec  c                                           ; $4a74: $0d
	ld   d, h                                        ; $4a75: $54
	db   $fc                                         ; $4a76: $fc
	and  c                                           ; $4a77: $a1
	sbc  [hl]                                        ; $4a78: $9e
	ld   e, [hl]                                     ; $4a79: $5e
	ld   [hl], c                                     ; $4a7a: $71
	ld   l, l                                        ; $4a7b: $6d
	sbc  b                                           ; $4a7c: $98
	rst  $38                                         ; $4a7d: $ff
	rst  $38                                         ; $4a7e: $ff
	dec  c                                           ; $4a7f: $0d
	nop                                              ; $4a80: $00
	dec  b                                           ; $4a81: $05
	ld   b, b                                        ; $4a82: $40
	rst  $38                                         ; $4a83: $ff
	inc  bc                                          ; $4a84: $03
	rst  $38                                         ; $4a85: $ff
	ld   bc, $2801                                   ; $4a86: $01 $01 $28
	nop                                              ; $4a89: $00
	ld   bc, $7471                                   ; $4a8a: $01 $71 $74
	sbc  [hl]                                        ; $4a8d: $9e
	ld   l, a                                        ; $4a8e: $6f
	ld   e, d                                        ; $4a8f: $5a
	ld   d, h                                        ; $4a90: $54
	ld   [hl], c                                     ; $4a91: $71
	ld   [hl], h                                     ; $4a92: $74
	ld   a, [$0dfa]                                  ; $4a93: $fa $fa $0d
	nop                                              ; $4a96: $00
	ld   a, [bc]                                     ; $4a97: $0a
	ld   b, $30                                      ; $4a98: $06 $30
	ld   bc, $000f                                   ; $4a9a: $01 $0f $00
	ld   bc, $0301                                   ; $4a9d: $01 $01 $03
	ld   l, b                                        ; $4aa0: $68
	ld   a, c                                        ; $4aa1: $79
	rst  $38                                         ; $4aa2: $ff
	rst  $38                                         ; $4aa3: $ff
	dec  c                                           ; $4aa4: $0d
	ld   [hl], a                                     ; $4aa5: $77
	ld   d, h                                        ; $4aa6: $54
	ld   h, l                                        ; $4aa7: $65
	sub  [hl]                                        ; $4aa8: $96
	ld   d, h                                        ; $4aa9: $54
	ld   e, c                                        ; $4aaa: $59
	rst  $38                                         ; $4aab: $ff
	rst  $38                                         ; $4aac: $ff
	rst  $38                                         ; $4aad: $ff
	rst  $38                                         ; $4aae: $ff
	dec  c                                           ; $4aaf: $0d
	nop                                              ; $4ab0: $00
	ld   a, [bc]                                     ; $4ab1: $0a
	dec  b                                           ; $4ab2: $05
	ld   b, b                                        ; $4ab3: $40
	rst  $38                                         ; $4ab4: $ff
	inc  bc                                          ; $4ab5: $03
	rst  $38                                         ; $4ab6: $ff
	ld   bc, $2801                                   ; $4ab7: $01 $01 $28
	nop                                              ; $4aba: $00
	ld   b, $30                                      ; $4abb: $06 $30
	ld   bc, $0419                                   ; $4abd: $01 $19 $04
	inc  bc                                          ; $4ac0: $03
	cp   e                                           ; $4ac1: $bb
	db   $dd                                         ; $4ac2: $dd
	push af                                          ; $4ac3: $f5
	and  b                                           ; $4ac4: $a0
	ld   a, l                                        ; $4ac5: $7d
	ld   e, l                                        ; $4ac6: $5d
	nop                                              ; $4ac7: $00
	nop                                              ; $4ac8: $00
	cp   e                                           ; $4ac9: $bb
	xor  [hl]                                        ; $4aca: $ae
	push af                                          ; $4acb: $f5
	and  b                                           ; $4acc: $a0
	ld   e, c                                        ; $4acd: $59
	add  h                                           ; $4ace: $84
	sbc  c                                           ; $4acf: $99
	nop                                              ; $4ad0: $00
	ld   bc, $ddbb                                   ; $4ad1: $01 $bb $dd
	push af                                          ; $4ad4: $f5
	and  b                                           ; $4ad5: $a0
	ld   a, d                                        ; $4ad6: $7a
	ld   e, [hl]                                     ; $4ad7: $5e
	nop                                              ; $4ad8: $00
	ld   [bc], a                                     ; $4ad9: $02
	rlca                                             ; $4ada: $07
	ld   d, h                                        ; $4adb: $54
	ld   [bc], a                                     ; $4adc: $02
	ld   [bc], a                                     ; $4add: $02
	inc  bc                                          ; $4ade: $03
	ld   bc, $2000                                   ; $4adf: $01 $00 $20
	nop                                              ; $4ae2: $00
	rlca                                             ; $4ae3: $07
	ld   [hl], h                                     ; $4ae4: $74
	ld   [bc], a                                     ; $4ae5: $02
	ld   [bc], a                                     ; $4ae6: $02
	inc  bc                                          ; $4ae7: $03
	ld   bc, $2001                                   ; $4ae8: $01 $01 $20
	nop                                              ; $4aeb: $00
	rlca                                             ; $4aec: $07
	xor  b                                           ; $4aed: $a8
	ld   [bc], a                                     ; $4aee: $02
	ld   [bc], a                                     ; $4aef: $02
	inc  bc                                          ; $4af0: $03
	ld   bc, $2002                                   ; $4af1: $01 $02 $20
	nop                                              ; $4af4: $00
	ld   b, $da                                      ; $4af5: $06 $da
	ld   [bc], a                                     ; $4af7: $02
	rrca                                             ; $4af8: $0f
	nop                                              ; $4af9: $00
	ld   bc, $6b01                                   ; $4afa: $01 $01 $6b
	ld   h, l                                        ; $4afd: $65
	ld   [hl], h                                     ; $4afe: $74
	sbc  [hl]                                        ; $4aff: $9e
	cp   e                                           ; $4b00: $bb
	db   $dd                                         ; $4b01: $dd
	push af                                          ; $4b02: $f5
	and  b                                           ; $4b03: $a0
	ld   a, l                                        ; $4b04: $7d
	ld   d, d                                        ; $4b05: $52
	ld   [hl], h                                     ; $4b06: $74
	rst  $38                                         ; $4b07: $ff
	rst  $38                                         ; $4b08: $ff
	dec  c                                           ; $4b09: $0d
	nop                                              ; $4b0a: $00
	ld   a, [bc]                                     ; $4b0b: $0a
	dec  b                                           ; $4b0c: $05
	ld   b, b                                        ; $4b0d: $40
	rst  $38                                         ; $4b0e: $ff
	inc  bc                                          ; $4b0f: $03
	rst  $38                                         ; $4b10: $ff
	ld   bc, $2801                                   ; $4b11: $01 $01 $28
	nop                                              ; $4b14: $00
	ld   b, $fd                                      ; $4b15: $06 $fd
	ld   [bc], a                                     ; $4b17: $02
	rrca                                             ; $4b18: $0f
	nop                                              ; $4b19: $00
	ld   bc, $bb01                                   ; $4b1a: $01 $01 $bb
	xor  [hl]                                        ; $4b1d: $ae
	push af                                          ; $4b1e: $f5
	and  b                                           ; $4b1f: $a0
	ld   e, c                                        ; $4b20: $59
	add  h                                           ; $4b21: $84
	ld   [hl], c                                     ; $4b22: $71
	ld   [hl], h                                     ; $4b23: $74
	rst  $38                                         ; $4b24: $ff
	rst  $38                                         ; $4b25: $ff
	dec  c                                           ; $4b26: $0d
	rst  $38                                         ; $4b27: $ff
	rst  $38                                         ; $4b28: $ff
	and  c                                           ; $4b29: $a1
	ld   sp, hl                                      ; $4b2a: $f9
	db   $10                                         ; $4b2b: $10
	ld   a, b                                        ; $4b2c: $78
	and  c                                           ; $4b2d: $a1
	ld   [hl], l                                     ; $4b2e: $75
	ld   l, e                                        ; $4b2f: $6b
	and  c                                           ; $4b30: $a1
	ld   a, b                                        ; $4b31: $78
	sub  b                                           ; $4b32: $90
	ld   a, h                                        ; $4b33: $7c
	dec  c                                           ; $4b34: $0d
	nop                                              ; $4b35: $00
	dec  b                                           ; $4b36: $05
	ld   b, b                                        ; $4b37: $40
	rst  $38                                         ; $4b38: $ff
	inc  bc                                          ; $4b39: $03
	rst  $38                                         ; $4b3a: $ff
	ld   bc, $2801                                   ; $4b3b: $01 $01 $28
	nop                                              ; $4b3e: $00
	ld   bc, $8459                                   ; $4b3f: $01 $59 $84
	sbc  c                                           ; $4b42: $99
	and  c                                           ; $4b43: $a1
	ld   l, [hl]                                     ; $4b44: $6e
	ld   sp, hl                                      ; $4b45: $f9
	dec  c                                           ; $4b46: $0d
	nop                                              ; $4b47: $00
	ld   a, [bc]                                     ; $4b48: $0a
	ld   b, $1a                                      ; $4b49: $06 $1a
	ld   [bc], a                                     ; $4b4b: $02
	rrca                                             ; $4b4c: $0f
	nop                                              ; $4b4d: $00
	ld   bc, $6b01                                   ; $4b4e: $01 $01 $6b
	ld   h, l                                        ; $4b51: $65
	ld   [hl], h                                     ; $4b52: $74
	sbc  [hl]                                        ; $4b53: $9e
	cp   e                                           ; $4b54: $bb
	db   $dd                                         ; $4b55: $dd
	push af                                          ; $4b56: $f5
	and  b                                           ; $4b57: $a0
	ld   a, d                                        ; $4b58: $7a
	ld   e, [hl]                                     ; $4b59: $5e
	sbc  a                                           ; $4b5a: $9f
	dec  c                                           ; $4b5b: $0d
	rst  $38                                         ; $4b5c: $ff
	rst  $38                                         ; $4b5d: $ff
	rst  $38                                         ; $4b5e: $ff
	rst  $38                                         ; $4b5f: $ff
	and  c                                           ; $4b60: $a1
	ld   sp, hl                                      ; $4b61: $f9
	dec  c                                           ; $4b62: $0d
	nop                                              ; $4b63: $00
	dec  b                                           ; $4b64: $05
	ld   b, b                                        ; $4b65: $40
	rst  $38                                         ; $4b66: $ff
	inc  bc                                          ; $4b67: $03
	rst  $38                                         ; $4b68: $ff
	ld   bc, $2801                                   ; $4b69: $01 $01 $28
	nop                                              ; $4b6c: $00
	ld   bc, $527a                                   ; $4b6d: $01 $7a $52
	ld   h, [hl]                                     ; $4b70: $66
	sub  c                                           ; $4b71: $91
	pop  bc                                          ; $4b72: $c1
	db   $e3                                         ; $4b73: $e3
	ld   [hl], l                                     ; $4b74: $75
	ld   h, l                                        ; $4b75: $65
	sub  l                                           ; $4b76: $95
	ld   sp, hl                                      ; $4b77: $f9
	dec  c                                           ; $4b78: $0d
	nop                                              ; $4b79: $00
	ld   a, [bc]                                     ; $4b7a: $0a
	ld   b, $1a                                      ; $4b7b: $06 $1a
	ld   [bc], a                                     ; $4b7d: $02
	rrca                                             ; $4b7e: $0f
	nop                                              ; $4b7f: $00
	ld   bc, $6b01                                   ; $4b80: $01 $01 $6b
	ld   h, l                                        ; $4b83: $65
	ld   [hl], h                                     ; $4b84: $74
	rst  $38                                         ; $4b85: $ff
	rst  $38                                         ; $4b86: $ff
	dec  c                                           ; $4b87: $0d
	ld   [hl], a                                     ; $4b88: $77
	ld   d, h                                        ; $4b89: $54
	ld   h, l                                        ; $4b8a: $65
	sub  [hl]                                        ; $4b8b: $96
	ld   d, h                                        ; $4b8c: $54
	ld   e, c                                        ; $4b8d: $59
	rst  $38                                         ; $4b8e: $ff
	rst  $38                                         ; $4b8f: $ff
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	dec  c                                           ; $4b92: $0d
	nop                                              ; $4b93: $00
	ld   a, [bc]                                     ; $4b94: $0a
	dec  b                                           ; $4b95: $05
	ld   b, b                                        ; $4b96: $40
	rst  $38                                         ; $4b97: $ff
	inc  bc                                          ; $4b98: $03
	rst  $38                                         ; $4b99: $ff
	ld   bc, $2801                                   ; $4b9a: $01 $01 $28
	nop                                              ; $4b9d: $00
	ld   b, $1a                                      ; $4b9e: $06 $1a
	ld   [bc], a                                     ; $4ba0: $02
	add  hl, de                                      ; $4ba1: $19
	inc  b                                           ; $4ba2: $04
	inc  bc                                          ; $4ba3: $03
	jp   c, $c9ba                                    ; $4ba4: $da $ba $c9

	and  b                                           ; $4ba7: $a0
	inc  b                                           ; $4ba8: $04
	rlca                                             ; $4ba9: $07
	sbc  c                                           ; $4baa: $99
	nop                                              ; $4bab: $00
	nop                                              ; $4bac: $00
	jp   c, $c9ed                                    ; $4bad: $da $ed $c9

	and  b                                           ; $4bb0: $a0
	sub  h                                           ; $4bb1: $94
	sbc  c                                           ; $4bb2: $99
	adc  a                                           ; $4bb3: $8f
	sbc  c                                           ; $4bb4: $99
	nop                                              ; $4bb5: $00
	ld   bc, $bada                                   ; $4bb6: $01 $da $ba
	ret                                              ; $4bb9: $c9


	and  b                                           ; $4bba: $a0
	ld   l, l                                        ; $4bbb: $6d
	ld   l, l                                        ; $4bbc: $6d
	adc  [hl]                                        ; $4bbd: $8e
	nop                                              ; $4bbe: $00
	ld   [bc], a                                     ; $4bbf: $02
	rlca                                             ; $4bc0: $07
	ld   a, [hl-]                                    ; $4bc1: $3a
	inc  bc                                          ; $4bc2: $03
	ld   [bc], a                                     ; $4bc3: $02
	inc  bc                                          ; $4bc4: $03
	ld   bc, $2000                                   ; $4bc5: $01 $00 $20
	nop                                              ; $4bc8: $00
	rlca                                             ; $4bc9: $07
	ld   d, a                                        ; $4bca: $57
	inc  bc                                          ; $4bcb: $03
	ld   [bc], a                                     ; $4bcc: $02
	inc  bc                                          ; $4bcd: $03
	ld   bc, $2001                                   ; $4bce: $01 $01 $20
	nop                                              ; $4bd1: $00
	rlca                                             ; $4bd2: $07
	sub  l                                           ; $4bd3: $95
	inc  bc                                          ; $4bd4: $03
	ld   [bc], a                                     ; $4bd5: $02
	inc  bc                                          ; $4bd6: $03
	ld   bc, $2002                                   ; $4bd7: $01 $02 $20
	nop                                              ; $4bda: $00
	ld   b, $cb                                      ; $4bdb: $06 $cb
	inc  bc                                          ; $4bdd: $03
	rrca                                             ; $4bde: $0f
	nop                                              ; $4bdf: $00
	ld   bc, $da01                                   ; $4be0: $01 $01 $da
	cp   d                                           ; $4be3: $ba
	ret                                              ; $4be4: $c9


	and  b                                           ; $4be5: $a0
	inc  b                                           ; $4be6: $04
	rlca                                             ; $4be7: $07
	ld   [hl], h                                     ; $4be8: $74
	halt                                             ; $4be9: $76
	rst  $38                                         ; $4bea: $ff
	rst  $38                                         ; $4beb: $ff
	dec  c                                           ; $4bec: $0d
	nop                                              ; $4bed: $00
	ld   a, [bc]                                     ; $4bee: $0a
	dec  b                                           ; $4bef: $05
	ld   b, b                                        ; $4bf0: $40
	rst  $38                                         ; $4bf1: $ff
	inc  bc                                          ; $4bf2: $03
	rst  $38                                         ; $4bf3: $ff
	ld   bc, $2801                                   ; $4bf4: $01 $01 $28
	nop                                              ; $4bf7: $00
	ld   b, $ea                                      ; $4bf8: $06 $ea
	inc  bc                                          ; $4bfa: $03
	rrca                                             ; $4bfb: $0f
	nop                                              ; $4bfc: $00
	ld   bc, $da01                                   ; $4bfd: $01 $01 $da
	db   $ed                                         ; $4c00: $ed
	ret                                              ; $4c01: $c9


	and  b                                           ; $4c02: $a0
	sub  h                                           ; $4c03: $94
	sbc  c                                           ; $4c04: $99
	adc  a                                           ; $4c05: $8f
	ld   [hl], h                                     ; $4c06: $74
	halt                                             ; $4c07: $76
	rst  $38                                         ; $4c08: $ff
	rst  $38                                         ; $4c09: $ff
	dec  c                                           ; $4c0a: $0d
	and  c                                           ; $4c0b: $a1
	ld   sp, hl                                      ; $4c0c: $f9
	db   $10                                         ; $4c0d: $10
	cp   e                                           ; $4c0e: $bb
	db   $dd                                         ; $4c0f: $dd
	push af                                          ; $4c10: $f5
	and  b                                           ; $4c11: $a0
	ld   a, d                                        ; $4c12: $7a
	ld   d, d                                        ; $4c13: $52
	ld   h, [hl]                                     ; $4c14: $66
	sub  c                                           ; $4c15: $91
	pop  bc                                          ; $4c16: $c1
	db   $e3                                         ; $4c17: $e3
	dec  c                                           ; $4c18: $0d
	nop                                              ; $4c19: $00
	dec  b                                           ; $4c1a: $05
	ld   b, b                                        ; $4c1b: $40
	rst  $38                                         ; $4c1c: $ff
	inc  bc                                          ; $4c1d: $03
	rst  $38                                         ; $4c1e: $ff
	ld   bc, $2801                                   ; $4c1f: $01 $01 $28
	nop                                              ; $4c22: $00
	ld   bc, $6575                                   ; $4c23: $01 $75 $65
	sub  l                                           ; $4c26: $95
	sbc  a                                           ; $4c27: $9f
	inc  bc                                          ; $4c28: $03
	ld   h, l                                        ; $4c29: $65
	inc  b                                           ; $4c2a: $04
	rlca                                             ; $4c2b: $07
	and  b                                           ; $4c2c: $a0
	inc  b                                           ; $4c2d: $04
	rlca                                             ; $4c2e: $07
	ld   a, b                                        ; $4c2f: $78
	ld   d, d                                        ; $4c30: $52
	halt                                             ; $4c31: $76
	sbc  a                                           ; $4c32: $9f
	dec  c                                           ; $4c33: $0d
	nop                                              ; $4c34: $00
	ld   a, [bc]                                     ; $4c35: $0a
	ld   b, $fd                                      ; $4c36: $06 $fd
	ld   [bc], a                                     ; $4c38: $02
	rrca                                             ; $4c39: $0f
	nop                                              ; $4c3a: $00
	ld   bc, $da01                                   ; $4c3b: $01 $01 $da
	cp   d                                           ; $4c3e: $ba
	ret                                              ; $4c3f: $c9


	and  b                                           ; $4c40: $a0
	ld   l, l                                        ; $4c41: $6d
	ld   l, l                                        ; $4c42: $6d
	and  c                                           ; $4c43: $a1
	ld   [hl], l                                     ; $4c44: $75
	halt                                             ; $4c45: $76
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	dec  c                                           ; $4c48: $0d
	and  c                                           ; $4c49: $a1
	ld   sp, hl                                      ; $4c4a: $f9
	db   $10                                         ; $4c4b: $10
	ld   l, l                                        ; $4c4c: $6d
	ld   l, l                                        ; $4c4d: $6d
	and  c                                           ; $4c4e: $a1
	ld   h, [hl]                                     ; $4c4f: $66
	sub  c                                           ; $4c50: $91
	pop  bc                                          ; $4c51: $c1
	db   $e3                                         ; $4c52: $e3
	ld   [hl], l                                     ; $4c53: $75
	ld   h, l                                        ; $4c54: $65
	sub  l                                           ; $4c55: $95
	sbc  a                                           ; $4c56: $9f
	dec  c                                           ; $4c57: $0d
	nop                                              ; $4c58: $00
	dec  b                                           ; $4c59: $05
	ld   b, b                                        ; $4c5a: $40
	rst  $38                                         ; $4c5b: $ff
	inc  bc                                          ; $4c5c: $03
	rst  $38                                         ; $4c5d: $ff
	ld   bc, $2801                                   ; $4c5e: $01 $01 $28
	nop                                              ; $4c61: $00
	ld   bc, $0704                                   ; $4c62: $01 $04 $07
	ld   a, b                                        ; $4c65: $78
	ld   e, e                                        ; $4c66: $5b
	sub  c                                           ; $4c67: $91
	sbc  a                                           ; $4c68: $9f
	dec  c                                           ; $4c69: $0d
	nop                                              ; $4c6a: $00
	ld   a, [bc]                                     ; $4c6b: $0a
	ld   b, $fd                                      ; $4c6c: $06 $fd
	ld   [bc], a                                     ; $4c6e: $02
	rrca                                             ; $4c6f: $0f
	nop                                              ; $4c70: $00
	ld   bc, $ff01                                   ; $4c71: $01 $01 $ff
	rst  $38                                         ; $4c74: $ff
	ld   [hl], a                                     ; $4c75: $77
	ld   d, h                                        ; $4c76: $54
	ld   h, l                                        ; $4c77: $65
	sub  [hl]                                        ; $4c78: $96
	ld   d, h                                        ; $4c79: $54
	ld   e, c                                        ; $4c7a: $59
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	rst  $38                                         ; $4c7d: $ff
	rst  $38                                         ; $4c7e: $ff
	dec  c                                           ; $4c7f: $0d
	nop                                              ; $4c80: $00
	ld   a, [bc]                                     ; $4c81: $0a
	dec  b                                           ; $4c82: $05
	ld   b, b                                        ; $4c83: $40
	rst  $38                                         ; $4c84: $ff
	inc  bc                                          ; $4c85: $03
	rst  $38                                         ; $4c86: $ff
	ld   bc, $2801                                   ; $4c87: $01 $01 $28
	nop                                              ; $4c8a: $00
	ld   b, $fd                                      ; $4c8b: $06 $fd
	ld   [bc], a                                     ; $4c8d: $02
	add  hl, de                                      ; $4c8e: $19
	inc  b                                           ; $4c8f: $04
	inc  bc                                          ; $4c90: $03
	inc  b                                           ; $4c91: $04
	ld   l, d                                        ; $4c92: $6a
	and  b                                           ; $4c93: $a0
	halt                                             ; $4c94: $76
	halt                                             ; $4c95: $76
	ld   a, h                                        ; $4c96: $7c
	ld   d, [hl]                                     ; $4c97: $56
	sbc  c                                           ; $4c98: $99
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	inc  b                                           ; $4c9b: $04
	adc  a                                           ; $4c9c: $8f
	and  b                                           ; $4c9d: $a0
	halt                                             ; $4c9e: $76
	halt                                             ; $4c9f: $76
	ld   a, h                                        ; $4ca0: $7c
	ld   d, [hl]                                     ; $4ca1: $56
	sbc  c                                           ; $4ca2: $99
	nop                                              ; $4ca3: $00
	ld   bc, $7877                                   ; $4ca4: $01 $77 $78
	ld   l, l                                        ; $4ca7: $6d
	halt                                             ; $4ca8: $76
	ld   h, c                                        ; $4ca9: $61
	ld   h, c                                        ; $4caa: $61
	sbc  e                                           ; $4cab: $9b
	ld   d, [hl]                                     ; $4cac: $56
	sbc  c                                           ; $4cad: $99
	nop                                              ; $4cae: $00
	ld   [bc], a                                     ; $4caf: $02
	rlca                                             ; $4cb0: $07
	ld   a, [hl+]                                    ; $4cb1: $2a
	inc  b                                           ; $4cb2: $04
	ld   [bc], a                                     ; $4cb3: $02
	inc  bc                                          ; $4cb4: $03
	ld   bc, $2000                                   ; $4cb5: $01 $00 $20
	nop                                              ; $4cb8: $00
	rlca                                             ; $4cb9: $07
	ld   e, l                                        ; $4cba: $5d
	inc  b                                           ; $4cbb: $04
	ld   [bc], a                                     ; $4cbc: $02
	inc  bc                                          ; $4cbd: $03
	ld   bc, $2001                                   ; $4cbe: $01 $01 $20
	nop                                              ; $4cc1: $00
	rlca                                             ; $4cc2: $07
	and  e                                           ; $4cc3: $a3
	inc  b                                           ; $4cc4: $04
	ld   [bc], a                                     ; $4cc5: $02
	inc  bc                                          ; $4cc6: $03
	ld   bc, $2002                                   ; $4cc7: $01 $02 $20
	nop                                              ; $4cca: $00
	ld   b, $00                                      ; $4ccb: $06 $00
	dec  b                                           ; $4ccd: $05
	rrca                                             ; $4cce: $0f
	nop                                              ; $4ccf: $00
	ld   bc, $0301                                   ; $4cd0: $01 $01 $03
	dec  c                                           ; $4cd3: $0d
	inc  bc                                          ; $4cd4: $03
	ld   h, l                                        ; $4cd5: $65
	ld   h, b                                        ; $4cd6: $60
	ld   a, c                                        ; $4cd7: $79
	sbc  [hl]                                        ; $4cd8: $9e
	inc  b                                           ; $4cd9: $04
	ld   l, d                                        ; $4cda: $6a
	and  b                                           ; $4cdb: $a0
	halt                                             ; $4cdc: $76
	halt                                             ; $4cdd: $76
	ld   a, h                                        ; $4cde: $7c
	ld   d, [hl]                                     ; $4cdf: $56
	sbc  c                                           ; $4ce0: $99
	halt                                             ; $4ce1: $76
	dec  c                                           ; $4ce2: $0d
	rst  $38                                         ; $4ce3: $ff
	rst  $38                                         ; $4ce4: $ff
	rst  $38                                         ; $4ce5: $ff
	rst  $38                                         ; $4ce6: $ff
	dec  c                                           ; $4ce7: $0d
	nop                                              ; $4ce8: $00
	dec  b                                           ; $4ce9: $05
	ld   b, b                                        ; $4cea: $40
	rst  $38                                         ; $4ceb: $ff
	inc  bc                                          ; $4cec: $03
	rst  $38                                         ; $4ced: $ff
	ld   bc, $2801                                   ; $4cee: $01 $01 $28
	nop                                              ; $4cf1: $00
	ld   bc, $6596                                   ; $4cf2: $01 $96 $65
	ld   a, [$2910]                                  ; $4cf5: $fa $10 $29
	dec  h                                           ; $4cf8: $25
	ld   l, [hl]                                     ; $4cf9: $6e
	ld   a, [$000d]                                  ; $4cfa: $fa $0d $00
	ld   a, [bc]                                     ; $4cfd: $0a
	ld   b, $28                                      ; $4cfe: $06 $28
	dec  b                                           ; $4d00: $05
	rrca                                             ; $4d01: $0f
	nop                                              ; $4d02: $00
	ld   bc, $0301                                   ; $4d03: $01 $01 $03
	dec  c                                           ; $4d06: $0d
	inc  bc                                          ; $4d07: $03
	ld   h, l                                        ; $4d08: $65
	ld   h, b                                        ; $4d09: $60
	ld   a, c                                        ; $4d0a: $79
	sbc  [hl]                                        ; $4d0b: $9e
	inc  b                                           ; $4d0c: $04
	adc  a                                           ; $4d0d: $8f
	and  b                                           ; $4d0e: $a0
	halt                                             ; $4d0f: $76
	halt                                             ; $4d10: $76
	ld   a, h                                        ; $4d11: $7c
	ld   d, [hl]                                     ; $4d12: $56
	sbc  c                                           ; $4d13: $99
	rst  $38                                         ; $4d14: $ff
	rst  $38                                         ; $4d15: $ff
	dec  c                                           ; $4d16: $0d
	rst  $38                                         ; $4d17: $ff
	rst  $38                                         ; $4d18: $ff
	rst  $38                                         ; $4d19: $ff
	rst  $38                                         ; $4d1a: $ff
	and  c                                           ; $4d1b: $a1
	ld   sp, hl                                      ; $4d1c: $f9
	db   $10                                         ; $4d1d: $10
	inc  b                                           ; $4d1e: $04
	adc  a                                           ; $4d1f: $8f
	ld   a, h                                        ; $4d20: $7c
	inc  bc                                          ; $4d21: $03
	ld   a, h                                        ; $4d22: $7c
	dec  b                                           ; $4d23: $05
	ld   de, $a178                                   ; $4d24: $11 $78 $a1
	ld   e, c                                        ; $4d27: $59
	dec  c                                           ; $4d28: $0d
	nop                                              ; $4d29: $00
	dec  b                                           ; $4d2a: $05
	ld   b, b                                        ; $4d2b: $40
	rst  $38                                         ; $4d2c: $ff
	inc  bc                                          ; $4d2d: $03
	rst  $38                                         ; $4d2e: $ff
	ld   bc, $2801                                   ; $4d2f: $01 $01 $28
	nop                                              ; $4d32: $00
	ld   bc, $7465                                   ; $4d33: $01 $65 $74
	sbc  c                                           ; $4d36: $99
	inc  b                                           ; $4d37: $04
	ld   a, d                                        ; $4d38: $7a
	ld   [bc], a                                     ; $4d39: $02
	ld   a, e                                        ; $4d3a: $7b
	ld   h, [hl]                                     ; $4d3b: $66
	sub  c                                           ; $4d3c: $91
	ld   a, b                                        ; $4d3d: $78
	ld   d, d                                        ; $4d3e: $52
	sub  [hl]                                        ; $4d3f: $96
	sbc  a                                           ; $4d40: $9f
	dec  c                                           ; $4d41: $0d
	nop                                              ; $4d42: $00
	ld   a, [bc]                                     ; $4d43: $0a
	ld   b, $ea                                      ; $4d44: $06 $ea
	inc  bc                                          ; $4d46: $03
	rrca                                             ; $4d47: $0f
	nop                                              ; $4d48: $00
	ld   bc, $0301                                   ; $4d49: $01 $01 $03
	dec  c                                           ; $4d4c: $0d
	inc  bc                                          ; $4d4d: $03
	ld   h, l                                        ; $4d4e: $65
	ld   h, b                                        ; $4d4f: $60
	ld   a, c                                        ; $4d50: $79
	rst  $38                                         ; $4d51: $ff
	rst  $38                                         ; $4d52: $ff
	dec  c                                           ; $4d53: $0d
	ld   h, c                                        ; $4d54: $61
	ld   l, a                                        ; $4d55: $6f
	sub  a                                           ; $4d56: $97
	ld   a, c                                        ; $4d57: $79
	ld   e, b                                        ; $4d58: $58
	sbc  l                                           ; $4d59: $9d
	ld   h, a                                        ; $4d5a: $67
	ld   e, b                                        ; $4d5b: $58
	inc  b                                           ; $4d5c: $04
	ld   a, b                                        ; $4d5d: $78
	and  b                                           ; $4d5e: $a0
	sbc  [hl]                                        ; $4d5f: $9e
	dec  c                                           ; $4d60: $0d
	ld   [hl], a                                     ; $4d61: $77
	ld   a, b                                        ; $4d62: $78
	ld   l, l                                        ; $4d63: $6d
	halt                                             ; $4d64: $76
	inc  bc                                          ; $4d65: $03
	ld   [hl], l                                     ; $4d66: $75
	ld   b, $02                                      ; $4d67: $06 $02
	sbc  c                                           ; $4d69: $99
	ld   a, [$000d]                                  ; $4d6a: $fa $0d $00
	ld   a, [bc]                                     ; $4d6d: $0a
	ld   bc, $fc78                                   ; $4d6e: $01 $78 $fc
	and  c                                           ; $4d71: $a1
	ld   [hl], h                                     ; $4d72: $74
	ld   [bc], a                                     ; $4d73: $02
	sbc  l                                           ; $4d74: $9d
	ld   [hl], c                                     ; $4d75: $71
	ld   [hl], h                                     ; $4d76: $74
	sbc  c                                           ; $4d77: $99
	inc  b                                           ; $4d78: $04
	ld   a, d                                        ; $4d79: $7a
	ld   [bc], a                                     ; $4d7a: $02
	ld   a, e                                        ; $4d7b: $7b
	ld   h, [hl]                                     ; $4d7c: $66
	sub  c                                           ; $4d7d: $91
	dec  c                                           ; $4d7e: $0d
	ld   a, b                                        ; $4d7f: $78
	ld   d, d                                        ; $4d80: $52
	and  c                                           ; $4d81: $a1
	ld   l, [hl]                                     ; $4d82: $6e
	sub  [hl]                                        ; $4d83: $96
	ld   a, b                                        ; $4d84: $78
	sbc  a                                           ; $4d85: $9f
	dec  c                                           ; $4d86: $0d
	nop                                              ; $4d87: $00
	dec  b                                           ; $4d88: $05
	ld   b, b                                        ; $4d89: $40
	rst  $38                                         ; $4d8a: $ff
	inc  bc                                          ; $4d8b: $03
	rst  $38                                         ; $4d8c: $ff
	ld   bc, $2801                                   ; $4d8d: $01 $01 $28
	nop                                              ; $4d90: $00
	ld   bc, $2805                                   ; $4d91: $01 $05 $28
	ld   e, d                                        ; $4d94: $5a
	ld   a, b                                        ; $4d95: $78
	ld   e, e                                        ; $4d96: $5b
	sub  c                                           ; $4d97: $91
	ld   e, b                                        ; $4d98: $58
	ld   e, l                                        ; $4d99: $5d
	sbc  d                                           ; $4d9a: $9a
	sbc  c                                           ; $4d9b: $99
	ld   l, h                                        ; $4d9c: $6c
	sbc  a                                           ; $4d9d: $9f
	dec  c                                           ; $4d9e: $0d
	nop                                              ; $4d9f: $00
	ld   a, [bc]                                     ; $4da0: $0a
	ld   b, $ea                                      ; $4da1: $06 $ea
	inc  bc                                          ; $4da3: $03
	rrca                                             ; $4da4: $0f
	nop                                              ; $4da5: $00
	ld   bc, $0301                                   ; $4da6: $01 $01 $03
	dec  c                                           ; $4da9: $0d
	inc  bc                                          ; $4daa: $03
	ld   h, l                                        ; $4dab: $65
	ld   h, b                                        ; $4dac: $60
	ld   a, c                                        ; $4dad: $79
	rst  $38                                         ; $4dae: $ff
	rst  $38                                         ; $4daf: $ff
	dec  c                                           ; $4db0: $0d
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	rst  $38                                         ; $4db4: $ff
	ld   [hl], a                                     ; $4db5: $77
	ld   d, h                                        ; $4db6: $54
	ld   h, l                                        ; $4db7: $65
	sub  [hl]                                        ; $4db8: $96
	ld   d, h                                        ; $4db9: $54
	ld   e, c                                        ; $4dba: $59
	rst  $38                                         ; $4dbb: $ff
	rst  $38                                         ; $4dbc: $ff
	dec  c                                           ; $4dbd: $0d
	nop                                              ; $4dbe: $00
	ld   a, [bc]                                     ; $4dbf: $0a
	dec  b                                           ; $4dc0: $05
	ld   b, b                                        ; $4dc1: $40
	rst  $38                                         ; $4dc2: $ff
	inc  bc                                          ; $4dc3: $03
	rst  $38                                         ; $4dc4: $ff
	ld   bc, $2801                                   ; $4dc5: $01 $01 $28
	nop                                              ; $4dc8: $00
	ld   b, $ea                                      ; $4dc9: $06 $ea
	inc  bc                                          ; $4dcb: $03
	rlca                                             ; $4dcc: $07
	ld   b, e                                        ; $4dcd: $43
	dec  b                                           ; $4dce: $05
	inc  bc                                          ; $4dcf: $03
	rst  $38                                         ; $4dd0: $ff
	ld   bc, $2005                                   ; $4dd1: $01 $05 $20
	nop                                              ; $4dd4: $00
	rlca                                             ; $4dd5: $07
	sub  [hl]                                        ; $4dd6: $96
	dec  b                                           ; $4dd7: $05
	inc  bc                                          ; $4dd8: $03
	rst  $38                                         ; $4dd9: $ff
	ld   bc, $2006                                   ; $4dda: $01 $06 $20
	nop                                              ; $4ddd: $00
	rlca                                             ; $4dde: $07
	rrca                                             ; $4ddf: $0f
	ld   b, $03                                      ; $4de0: $06 $03
	rst  $38                                         ; $4de2: $ff
	ld   bc, $2507                                   ; $4de3: $01 $07 $25
	nop                                              ; $4de6: $00
	inc  hl                                          ; $4de7: $23
	inc  b                                           ; $4de8: $04
	rrca                                             ; $4de9: $0f
	nop                                              ; $4dea: $00
	ld   bc, $6301                                   ; $4deb: $01 $01 $63
	ld   e, l                                        ; $4dee: $5d
	sub  a                                           ; $4def: $97
	ld   h, e                                        ; $4df0: $63
	and  c                                           ; $4df1: $a1
	sbc  a                                           ; $4df2: $9f
	dec  c                                           ; $4df3: $0d
	ld   e, b                                        ; $4df4: $58
	ld   a, l                                        ; $4df5: $7d
	sub  [hl]                                        ; $4df6: $96
	ld   d, h                                        ; $4df7: $54
	ld   h, d                                        ; $4df8: $62
	ld   h, h                                        ; $4df9: $64
	ld   d, d                                        ; $4dfa: $52
	adc  h                                           ; $4dfb: $8c
	ld   h, a                                        ; $4dfc: $67
	sbc  a                                           ; $4dfd: $9f
	dec  c                                           ; $4dfe: $0d
	nop                                              ; $4dff: $00
	ld   a, [bc]                                     ; $4e00: $0a
	inc  e                                           ; $4e01: $1c
	ld   bc, $0101                                   ; $4e02: $01 $01 $01
	dec  e                                           ; $4e05: $1d
	ld   b, b                                        ; $4e06: $40
	ld   de, $1103                                   ; $4e07: $11 $03 $11
	ld   bc, $2802                                   ; $4e0a: $01 $02 $28
	nop                                              ; $4e0d: $00
	ld   bc, $7d58                                   ; $4e0e: $01 $58 $7d
	sub  [hl]                                        ; $4e11: $96
	ld   d, h                                        ; $4e12: $54
	ld   h, d                                        ; $4e13: $62
	ld   h, h                                        ; $4e14: $64
	ld   d, d                                        ; $4e15: $52
	adc  h                                           ; $4e16: $8c
	ld   h, a                                        ; $4e17: $67
	sbc  a                                           ; $4e18: $9f
	dec  c                                           ; $4e19: $0d
	ld   [$6300], sp                                 ; $4e1a: $08 $00 $63
	and  c                                           ; $4e1d: $a1
	sbc  a                                           ; $4e1e: $9f
	dec  c                                           ; $4e1f: $0d
	ld   h, [hl]                                     ; $4e20: $66
	sub  c                                           ; $4e21: $91
	sbc  [hl]                                        ; $4e22: $9e
	ld   [bc], a                                     ; $4e23: $02
	ld   a, a                                        ; $4e24: $7f
	ld   e, e                                        ; $4e25: $5b
	adc  h                                           ; $4e26: $8c
	ld   h, l                                        ; $4e27: $65
	sub  l                                           ; $4e28: $95
	ld   d, h                                        ; $4e29: $54
	ld   e, c                                        ; $4e2a: $59
	sbc  a                                           ; $4e2b: $9f
	dec  c                                           ; $4e2c: $0d
	nop                                              ; $4e2d: $00
	ld   a, [bc]                                     ; $4e2e: $0a
	dec  c                                           ; $4e2f: $0d
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	rrca                                             ; $4e32: $0f
	nop                                              ; $4e33: $00
	ld   bc, $020c                                   ; $4e34: $01 $0c $02
	ld   b, $57                                      ; $4e37: $06 $57
	ld   b, $23                                      ; $4e39: $06 $23
	inc  b                                           ; $4e3b: $04
	rrca                                             ; $4e3c: $0f
	nop                                              ; $4e3d: $00
	ld   bc, $010d                                   ; $4e3e: $01 $0d $01
	nop                                              ; $4e41: $00
	ld   bc, $7d58                                   ; $4e42: $01 $58 $7d
	sub  [hl]                                        ; $4e45: $96
	ld   d, h                                        ; $4e46: $54
	ld   h, d                                        ; $4e47: $62
	ld   h, h                                        ; $4e48: $64
	ld   d, d                                        ; $4e49: $52
	adc  h                                           ; $4e4a: $8c
	ld   h, a                                        ; $4e4b: $67
	sbc  a                                           ; $4e4c: $9f
	dec  c                                           ; $4e4d: $0d
	ld   h, e                                        ; $4e4e: $63
	ld   e, l                                        ; $4e4f: $5d
	sub  a                                           ; $4e50: $97
	ld   h, e                                        ; $4e51: $63
	and  c                                           ; $4e52: $a1
	sbc  a                                           ; $4e53: $9f
	dec  c                                           ; $4e54: $0d
	ld   e, b                                        ; $4e55: $58
	inc  b                                           ; $4e56: $04
	rla                                              ; $4e57: $17
	ld   l, l                                        ; $4e58: $6d
	ld   l, c                                        ; $4e59: $69
	ld   h, l                                        ; $4e5a: $65
	ld   [hl], h                                     ; $4e5b: $74
	ld   h, a                                        ; $4e5c: $67
	adc  l                                           ; $4e5d: $8d
	adc  h                                           ; $4e5e: $8c
	ld   l, c                                        ; $4e5f: $69
	and  c                                           ; $4e60: $a1
	sbc  a                                           ; $4e61: $9f
	dec  c                                           ; $4e62: $0d
	nop                                              ; $4e63: $00
	ld   a, [bc]                                     ; $4e64: $0a
	inc  e                                           ; $4e65: $1c
	ld   bc, $0101                                   ; $4e66: $01 $01 $01
	ld   bc, $7d58                                   ; $4e69: $01 $58 $7d
	sub  [hl]                                        ; $4e6c: $96
	ld   d, h                                        ; $4e6d: $54
	ld   h, d                                        ; $4e6e: $62
	ld   h, h                                        ; $4e6f: $64
	ld   d, d                                        ; $4e70: $52
	adc  h                                           ; $4e71: $8c
	ld   h, a                                        ; $4e72: $67
	sbc  a                                           ; $4e73: $9f
	dec  c                                           ; $4e74: $0d
	inc  b                                           ; $4e75: $04
	ld   c, $03                                      ; $4e76: $0e $03
	sbc  l                                           ; $4e78: $9d
	inc  b                                           ; $4e79: $04
	and  [hl]                                        ; $4e7a: $a6
	ld   [hl], l                                     ; $4e7b: $75
	ld   h, a                                        ; $4e7c: $67
	sub  [hl]                                        ; $4e7d: $96
	sbc  a                                           ; $4e7e: $9f
	ld   d, b                                        ; $4e7f: $50
	ld   l, l                                        ; $4e80: $6d
	ld   h, l                                        ; $4e81: $65
	sub  b                                           ; $4e82: $90
	dec  c                                           ; $4e83: $0d
	ld   [bc], a                                     ; $4e84: $02
	and  l                                           ; $4e85: $a5
	dec  b                                           ; $4e86: $05
	db   $10                                         ; $4e87: $10
	ld   l, l                                        ; $4e88: $6d
	halt                                             ; $4e89: $76
	ld   h, c                                        ; $4e8a: $61
	sbc  e                                           ; $4e8b: $9b
	ld   [hl], l                                     ; $4e8c: $75
	ld   h, a                                        ; $4e8d: $67
	ld   e, c                                        ; $4e8e: $59
	sub  a                                           ; $4e8f: $97
	sbc  a                                           ; $4e90: $9f
	dec  c                                           ; $4e91: $0d
	nop                                              ; $4e92: $00
	ld   a, [bc]                                     ; $4e93: $0a
	inc  e                                           ; $4e94: $1c
	ld   bc, $0000                                   ; $4e95: $01 $00 $00
	ld   bc, $9166                                   ; $4e98: $01 $66 $91
	sbc  [hl]                                        ; $4e9b: $9e
	ld   [bc], a                                     ; $4e9c: $02
	ld   a, a                                        ; $4e9d: $7f
	ld   e, e                                        ; $4e9e: $5b
	adc  h                                           ; $4e9f: $8c
	ld   h, l                                        ; $4ea0: $65
	sub  l                                           ; $4ea1: $95
	ld   d, h                                        ; $4ea2: $54
	ld   e, c                                        ; $4ea3: $59
	sbc  a                                           ; $4ea4: $9f
	dec  c                                           ; $4ea5: $0d
	nop                                              ; $4ea6: $00
	ld   a, [bc]                                     ; $4ea7: $0a
	dec  c                                           ; $4ea8: $0d
	nop                                              ; $4ea9: $00
	nop                                              ; $4eaa: $00
	rrca                                             ; $4eab: $0f
	nop                                              ; $4eac: $00
	ld   bc, $020c                                   ; $4ead: $01 $0c $02
	ld   b, $57                                      ; $4eb0: $06 $57
	ld   b, $23                                      ; $4eb2: $06 $23
	inc  b                                           ; $4eb4: $04
	inc  e                                           ; $4eb5: $1c
	ld   bc, $0707                                   ; $4eb6: $01 $07 $07
	dec  e                                           ; $4eb9: $1d
	ld   b, b                                        ; $4eba: $40
	ld   de, $1103                                   ; $4ebb: $11 $03 $11
	ld   bc, $2903                                   ; $4ebe: $01 $03 $29
	nop                                              ; $4ec1: $00
	ld   bc, $0008                                   ; $4ec2: $01 $08 $00
	ld   h, e                                        ; $4ec5: $63
	and  c                                           ; $4ec6: $a1
	sbc  a                                           ; $4ec7: $9f
	dec  c                                           ; $4ec8: $0d
	ld   e, b                                        ; $4ec9: $58
	ld   l, e                                        ; $4eca: $6b
	ld   d, d                                        ; $4ecb: $52
	ld   [hl], l                                     ; $4ecc: $75
	ld   h, a                                        ; $4ecd: $67
	sub  [hl]                                        ; $4ece: $96
	rst  $38                                         ; $4ecf: $ff
	rst  $38                                         ; $4ed0: $ff
	dec  c                                           ; $4ed1: $0d
	nop                                              ; $4ed2: $00
	ld   a, [bc]                                     ; $4ed3: $0a
	inc  e                                           ; $4ed4: $1c
	ld   bc, $0000                                   ; $4ed5: $01 $00 $00
	ld   bc, $508c                                   ; $4ed8: $01 $8c $50
	sbc  [hl]                                        ; $4edb: $9e
	ld   l, e                                        ; $4edc: $6b
	sbc  d                                           ; $4edd: $9a
	ld   a, l                                        ; $4ede: $7d
	ld   h, e                                        ; $4edf: $63
	ld   [hl], h                                     ; $4ee0: $74
	ld   e, b                                        ; $4ee1: $58
	ld   e, e                                        ; $4ee2: $5b
	dec  c                                           ; $4ee3: $0d
	ld   [bc], a                                     ; $4ee4: $02
	ld   a, a                                        ; $4ee5: $7f
	ld   e, e                                        ; $4ee6: $5b
	adc  h                                           ; $4ee7: $8c
	ld   h, l                                        ; $4ee8: $65
	sub  l                                           ; $4ee9: $95
	ld   d, h                                        ; $4eea: $54
	ld   e, c                                        ; $4eeb: $59
	sbc  a                                           ; $4eec: $9f
	dec  c                                           ; $4eed: $0d
	nop                                              ; $4eee: $00
	ld   a, [bc]                                     ; $4eef: $0a
	dec  c                                           ; $4ef0: $0d
	nop                                              ; $4ef1: $00
	nop                                              ; $4ef2: $00
	rrca                                             ; $4ef3: $0f
	nop                                              ; $4ef4: $00
	ld   bc, $020c                                   ; $4ef5: $01 $0c $02
	ld   b, $57                                      ; $4ef8: $06 $57
	ld   b, $0e                                      ; $4efa: $06 $0e
	cp   e                                           ; $4efc: $bb
	inc  e                                           ; $4efd: $1c
	ld   bc, $0000                                   ; $4efe: $01 $00 $00
	ld   bc, $6763                                   ; $4f01: $01 $63 $67
	ld   e, d                                        ; $4f04: $5a
	ld   a, c                                        ; $4f05: $79
	inc  b                                           ; $4f06: $04
	xor  d                                           ; $4f07: $aa
	inc  b                                           ; $4f08: $04
	db   $f4                                         ; $4f09: $f4
	halt                                             ; $4f0a: $76
	sub  b                                           ; $4f0b: $90
	ld   a, b                                        ; $4f0c: $78
	sbc  c                                           ; $4f0d: $99
	halt                                             ; $4f0e: $76
	dec  c                                           ; $4f0f: $0d
	ld   [bc], a                                     ; $4f10: $02
	ld   hl, $0c04                                   ; $4f11: $21 $04 $0c
	halt                                             ; $4f14: $76
	ld   e, c                                        ; $4f15: $59
	inc  bc                                          ; $4f16: $03
	add  b                                           ; $4f17: $80
	ld   [hl], h                                     ; $4f18: $74
	ld   a, c                                        ; $4f19: $79
	ld   e, h                                        ; $4f1a: $5c
	sub  d                                           ; $4f1b: $92
	ld   e, c                                        ; $4f1c: $59
	dec  c                                           ; $4f1d: $0d
	ld   [hl], l                                     ; $4f1e: $75
	ld   h, a                                        ; $4f1f: $67
	sub  [hl]                                        ; $4f20: $96
	ld   a, e                                        ; $4f21: $7b
	rst  $38                                         ; $4f22: $ff
	rst  $38                                         ; $4f23: $ff
	dec  c                                           ; $4f24: $0d
	nop                                              ; $4f25: $00
	ld   a, [bc]                                     ; $4f26: $0a
	inc  e                                           ; $4f27: $1c
	ld   bc, $0101                                   ; $4f28: $01 $01 $01
	ld   bc, $5461                                   ; $4f2b: $01 $61 $54
	ld   d, d                                        ; $4f2e: $52
	ld   d, h                                        ; $4f2f: $54
	ld   e, b                                        ; $4f30: $58
	inc  bc                                          ; $4f31: $03
	adc  h                                           ; $4f32: $8c
	sbc  b                                           ; $4f33: $98
	adc  l                                           ; $4f34: $8d
	ld   l, l                                        ; $4f35: $6d
	ld   d, d                                        ; $4f36: $52
	ld   a, b                                        ; $4f37: $78
	dec  c                                           ; $4f38: $0d
	add  e                                           ; $4f39: $83
	and  c                                           ; $4f3a: $a1
	ld   d, d                                        ; $4f3b: $52
	ld   e, e                                        ; $4f3c: $5b
	ld   [hl], c                                     ; $4f3d: $71
	ld   [hl], h                                     ; $4f3e: $74
	sbc  [hl]                                        ; $4f3f: $9e
	ld   e, a                                        ; $4f40: $5f
	ld   [hl], c                                     ; $4f41: $71
	ld   h, c                                        ; $4f42: $61
	ld   d, h                                        ; $4f43: $54
	dec  c                                           ; $4f44: $0d
	ld   [bc], a                                     ; $4f45: $02
	sbc  d                                           ; $4f46: $9a
	ld   e, e                                        ; $4f47: $5b
	ld   a, b                                        ; $4f48: $78
	and  c                                           ; $4f49: $a1
	ld   [hl], l                                     ; $4f4a: $75
	ld   h, a                                        ; $4f4b: $67
	sbc  a                                           ; $4f4c: $9f
	dec  c                                           ; $4f4d: $0d
	nop                                              ; $4f4e: $00
	ld   a, [bc]                                     ; $4f4f: $0a
	add  hl, de                                      ; $4f50: $19
	dec  b                                           ; $4f51: $05
	ld   [bc], a                                     ; $4f52: $02
	dec  b                                           ; $4f53: $05
	inc  de                                          ; $4f54: $13
	ld   h, l                                        ; $4f55: $65
	ld   d, d                                        ; $4f56: $52
	ld   [hl], l                                     ; $4f57: $75
	ld   h, a                                        ; $4f58: $67
	sub  [hl]                                        ; $4f59: $96
	ld   a, e                                        ; $4f5a: $7b
	nop                                              ; $4f5b: $00
	nop                                              ; $4f5c: $00
	inc  b                                           ; $4f5d: $04
	ld   l, l                                        ; $4f5e: $6d
	ld   a, l                                        ; $4f5f: $7d
	ld   h, l                                        ; $4f60: $65
	ld   l, b                                        ; $4f61: $68
	ld   e, c                                        ; $4f62: $59
	ld   a, b                                        ; $4f63: $78
	inc  b                                           ; $4f64: $04
	ld   a, b                                        ; $4f65: $78
	ld   e, d                                        ; $4f66: $5a
	ld   [bc], a                                     ; $4f67: $02
	sbc  d                                           ; $4f68: $9a
	ld   e, e                                        ; $4f69: $5b
	ld   [hl], l                                     ; $4f6a: $75
	ld   h, a                                        ; $4f6b: $67
	nop                                              ; $4f6c: $00
	ld   bc, $df07                                   ; $4f6d: $01 $07 $df
	ld   b, $02                                      ; $4f70: $06 $02
	inc  bc                                          ; $4f72: $03
	ld   bc, $2000                                   ; $4f73: $01 $00 $20
	nop                                              ; $4f76: $00
	rlca                                             ; $4f77: $07
	dec  h                                           ; $4f78: $25
	rlca                                             ; $4f79: $07
	ld   [bc], a                                     ; $4f7a: $02
	inc  bc                                          ; $4f7b: $03
	ld   bc, $2001                                   ; $4f7c: $01 $01 $20
	nop                                              ; $4f7f: $00
	ld   b, $69                                      ; $4f80: $06 $69
	rlca                                             ; $4f82: $07
	rrca                                             ; $4f83: $0f
	nop                                              ; $4f84: $00
	ld   bc, $0501                                   ; $4f85: $01 $01 $05
	inc  de                                          ; $4f88: $13
	ld   h, l                                        ; $4f89: $65
	ld   d, d                                        ; $4f8a: $52
	ld   [hl], l                                     ; $4f8b: $75
	ld   h, a                                        ; $4f8c: $67
	sub  [hl]                                        ; $4f8d: $96
	ld   a, e                                        ; $4f8e: $7b
	sbc  a                                           ; $4f8f: $9f
	dec  c                                           ; $4f90: $0d
	nop                                              ; $4f91: $00
	ld   a, [bc]                                     ; $4f92: $0a
	inc  e                                           ; $4f93: $1c
	ld   bc, $0101                                   ; $4f94: $01 $01 $01
	dec  e                                           ; $4f97: $1d
	ld   b, b                                        ; $4f98: $40
	ld   de, $1103                                   ; $4f99: $11 $03 $11
	ld   bc, $2802                                   ; $4f9c: $01 $02 $28
	nop                                              ; $4f9f: $00
	ld   bc, $5656                                   ; $4fa0: $01 $56 $56
	sbc  [hl]                                        ; $4fa3: $9e
	inc  b                                           ; $4fa4: $04
	adc  a                                           ; $4fa5: $8f
	inc  b                                           ; $4fa6: $04
	jr   jr_056_5022                                 ; $4fa7: $18 $79

	sbc  a                                           ; $4fa9: $9f
	dec  c                                           ; $4faa: $0d
	ld   [bc], a                                     ; $4fab: $02
	and  l                                           ; $4fac: $a5
	inc  b                                           ; $4fad: $04
	add  hl, hl                                      ; $4fae: $29
	sbc  [hl]                                        ; $4faf: $9e
	ld   e, b                                        ; $4fb0: $58
	inc  bc                                          ; $4fb1: $03
	adc  h                                           ; $4fb2: $8c
	sbc  b                                           ; $4fb3: $98
	ld   e, d                                        ; $4fb4: $5a
	ld   d, b                                        ; $4fb5: $50
	ld   [hl], c                                     ; $4fb6: $71
	ld   l, l                                        ; $4fb7: $6d
	sub  a                                           ; $4fb8: $97
	dec  c                                           ; $4fb9: $0d
	ld   [bc], a                                     ; $4fba: $02
	ld   a, a                                        ; $4fbb: $7f
	ld   e, e                                        ; $4fbc: $5b
	adc  h                                           ; $4fbd: $8c
	ld   h, l                                        ; $4fbe: $65
	sub  l                                           ; $4fbf: $95
	ld   d, h                                        ; $4fc0: $54
	ld   a, e                                        ; $4fc1: $7b
	sbc  a                                           ; $4fc2: $9f
	dec  c                                           ; $4fc3: $0d
	nop                                              ; $4fc4: $00
	ld   a, [bc]                                     ; $4fc5: $0a
	ld   b, $69                                      ; $4fc6: $06 $69
	rlca                                             ; $4fc8: $07
	rrca                                             ; $4fc9: $0f
	nop                                              ; $4fca: $00
	ld   bc, $0401                                   ; $4fcb: $01 $01 $04
	ld   l, l                                        ; $4fce: $6d
	ld   a, l                                        ; $4fcf: $7d
	ld   h, l                                        ; $4fd0: $65
	ld   l, b                                        ; $4fd1: $68
	ld   e, c                                        ; $4fd2: $59
	ld   a, b                                        ; $4fd3: $78
	inc  b                                           ; $4fd4: $04
	ld   a, b                                        ; $4fd5: $78
	ld   e, d                                        ; $4fd6: $5a
	ld   [bc], a                                     ; $4fd7: $02
	sbc  d                                           ; $4fd8: $9a
	ld   e, e                                        ; $4fd9: $5b
	ld   [hl], l                                     ; $4fda: $75
	ld   h, a                                        ; $4fdb: $67
	sbc  a                                           ; $4fdc: $9f
	dec  c                                           ; $4fdd: $0d
	nop                                              ; $4fde: $00
	ld   a, [bc]                                     ; $4fdf: $0a
	inc  e                                           ; $4fe0: $1c
	ld   bc, $0404                                   ; $4fe1: $01 $04 $04
	ld   bc, $9e50                                   ; $4fe4: $01 $50 $9e
	ld   h, d                                        ; $4fe7: $62
	adc  a                                           ; $4fe8: $8f
	and  c                                           ; $4fe9: $a1
	ld   a, b                                        ; $4fea: $78
	ld   h, e                                        ; $4feb: $63
	ld   d, d                                        ; $4fec: $52
	rst  $38                                         ; $4fed: $ff
	rst  $38                                         ; $4fee: $ff
	dec  c                                           ; $4fef: $0d
	ld   h, [hl]                                     ; $4ff0: $66
	sub  c                                           ; $4ff1: $91
	sbc  [hl]                                        ; $4ff2: $9e
	ld   l, a                                        ; $4ff3: $6f
	ld   e, d                                        ; $4ff4: $5a
	ld   d, h                                        ; $4ff5: $54
	halt                                             ; $4ff6: $76
	ld   h, c                                        ; $4ff7: $61
	sbc  e                                           ; $4ff8: $9b
	ld   a, c                                        ; $4ff9: $79
	ld   h, a                                        ; $4ffa: $67
	sbc  d                                           ; $4ffb: $9a
	ld   a, [hl]                                     ; $4ffc: $7e
	dec  c                                           ; $4ffd: $0d
	sub  [hl]                                        ; $4ffe: $96
	ld   e, c                                        ; $4fff: $59
	ld   [hl], c                                     ; $5000: $71
	ld   l, l                                        ; $5001: $6d
	ld   [hl], l                                     ; $5002: $75
	ld   h, a                                        ; $5003: $67
	ld   a, e                                        ; $5004: $7b
	rst  $38                                         ; $5005: $ff
	rst  $38                                         ; $5006: $ff
	dec  c                                           ; $5007: $0d
	nop                                              ; $5008: $00
	ld   a, [bc]                                     ; $5009: $0a
	ld   b, $69                                      ; $500a: $06 $69
	rlca                                             ; $500c: $07
	inc  e                                           ; $500d: $1c
	ld   bc, $0000                                   ; $500e: $01 $00 $00
	ld   bc, $7150                                   ; $5011: $01 $50 $71
	ld   l, a                                        ; $5014: $6f
	ld   a, c                                        ; $5015: $79
	ld   [bc], a                                     ; $5016: $02
	ld   hl, $0c04                                   ; $5017: $21 $04 $0c
	ld   e, d                                        ; $501a: $5a
	inc  bc                                          ; $501b: $03
	add  b                                           ; $501c: $80
	ld   [hl], h                                     ; $501d: $74
	adc  h                                           ; $501e: $8c
	ld   h, a                                        ; $501f: $67
	ld   e, a                                        ; $5020: $5f
	ld   [hl], a                                     ; $5021: $77

jr_056_5022:
	dec  c                                           ; $5022: $0d
	inc  b                                           ; $5023: $04
	ld   c, c                                        ; $5024: $49
	ld   e, c                                        ; $5025: $59
	inc  bc                                          ; $5026: $03
	ld   l, d                                        ; $5027: $6a
	add  a                                           ; $5028: $87
	adc  h                                           ; $5029: $8c
	ld   h, l                                        ; $502a: $65
	sub  l                                           ; $502b: $95
	ld   d, h                                        ; $502c: $54
	ld   e, c                                        ; $502d: $59
	ld   sp, hl                                      ; $502e: $f9
	dec  c                                           ; $502f: $0d
	nop                                              ; $5030: $00
	ld   a, [bc]                                     ; $5031: $0a
	dec  c                                           ; $5032: $0d
	nop                                              ; $5033: $00
	nop                                              ; $5034: $00
	rrca                                             ; $5035: $0f
	nop                                              ; $5036: $00
	ld   bc, $b223                                   ; $5037: $01 $23 $b2
	inc  e                                           ; $503a: $1c
	ld   bc, $0101                                   ; $503b: $01 $01 $01
	ld   bc, $9b52                                   ; $503e: $01 $52 $9b
	ld   d, d                                        ; $5041: $52
	sbc  e                                           ; $5042: $9b
	ld   d, b                                        ; $5043: $50
	sbc  b                                           ; $5044: $98
	adc  h                                           ; $5045: $8c
	ld   h, a                                        ; $5046: $67
	ld   a, e                                        ; $5047: $7b
	sbc  a                                           ; $5048: $9f
	dec  c                                           ; $5049: $0d
	ld   [$6300], sp                                 ; $504a: $08 $00 $63
	and  c                                           ; $504d: $a1
	ld   a, l                                        ; $504e: $7d
	sbc  [hl]                                        ; $504f: $9e
	dec  c                                           ; $5050: $0d
	inc  b                                           ; $5051: $04
	ld   c, c                                        ; $5052: $49
	and  b                                           ; $5053: $a0
	inc  bc                                          ; $5054: $03
	ld   l, d                                        ; $5055: $6a
	add  a                                           ; $5056: $87
	ld   l, l                                        ; $5057: $6d
	ld   d, d                                        ; $5058: $52
	ld   [hl], l                                     ; $5059: $75

Jump_056_505a:
	ld   h, a                                        ; $505a: $67
	ld   e, c                                        ; $505b: $59
	ld   sp, hl                                      ; $505c: $f9
	dec  c                                           ; $505d: $0d
	nop                                              ; $505e: $00
	ld   a, [bc]                                     ; $505f: $0a
	add  hl, de                                      ; $5060: $19
	dec  b                                           ; $5061: $05
	inc  bc                                          ; $5062: $03
	sbc  b                                           ; $5063: $98
	and  c                                           ; $5064: $a1
	ld   h, d                                        ; $5065: $62
	ld   d, b                                        ; $5066: $50
	adc  a                                           ; $5067: $8f
	nop                                              ; $5068: $00
	nop                                              ; $5069: $00
	sub  d                                           ; $506a: $92
	ld   e, e                                        ; $506b: $5b
	ld   d, d                                        ; $506c: $52
	ld   e, c                                        ; $506d: $59
	nop                                              ; $506e: $00
	ld   bc, $6a03                                   ; $506f: $01 $03 $6a
	add  a                                           ; $5072: $87
	ld   l, l                                        ; $5073: $6d
	ld   e, l                                        ; $5074: $5d
	ld   a, b                                        ; $5075: $78
	ld   d, d                                        ; $5076: $52
	nop                                              ; $5077: $00
	ld   [bc], a                                     ; $5078: $02
	rlca                                             ; $5079: $07
	di                                               ; $507a: $f3
	rlca                                             ; $507b: $07
	ld   [bc], a                                     ; $507c: $02
	inc  bc                                          ; $507d: $03
	ld   bc, $2000                                   ; $507e: $01 $00 $20
	nop                                              ; $5081: $00
	rlca                                             ; $5082: $07
	ld   [hl], c                                     ; $5083: $71
	ld   [$0302], sp                                 ; $5084: $08 $02 $03
	ld   bc, $2001                                   ; $5087: $01 $01 $20
	nop                                              ; $508a: $00
	rlca                                             ; $508b: $07
	xor  l                                           ; $508c: $ad
	ld   [$0302], sp                                 ; $508d: $08 $02 $03
	ld   bc, $2002                                   ; $5090: $01 $02 $20
	nop                                              ; $5093: $00
	ld   b, $ea                                      ; $5094: $06 $ea
	ld   [$000f], sp                                 ; $5096: $08 $0f $00
	ld   bc, $9801                                   ; $5099: $01 $01 $98
	and  c                                           ; $509c: $a1
	ld   h, d                                        ; $509d: $62
	ld   d, b                                        ; $509e: $50
	adc  a                                           ; $509f: $8f
	inc  bc                                          ; $50a0: $03
	ld   l, d                                        ; $50a1: $6a
	add  a                                           ; $50a2: $87
	adc  h                                           ; $50a3: $8c
	ld   l, c                                        ; $50a4: $69
	and  c                                           ; $50a5: $a1
	ld   e, c                                        ; $50a6: $59
	ld   sp, hl                                      ; $50a7: $f9
	dec  c                                           ; $50a8: $0d
	nop                                              ; $50a9: $00
	ld   a, [bc]                                     ; $50aa: $0a
	inc  e                                           ; $50ab: $1c
	ld   bc, $0101                                   ; $50ac: $01 $01 $01
	ld   bc, $d6d6                                   ; $50af: $01 $d6 $d6
	rst  $38                                         ; $50b2: $ff
	rst  $38                                         ; $50b3: $ff
	dec  c                                           ; $50b4: $0d
	ld   d, b                                        ; $50b5: $50
	ld   l, l                                        ; $50b6: $6d
	ld   h, l                                        ; $50b7: $65
	sub  b                                           ; $50b8: $90
	ld   l, e                                        ; $50b9: $6b
	ld   d, h                                        ; $50ba: $54
	dec  b                                           ; $50bb: $05
	pop  de                                          ; $50bc: $d1
	ld   [hl], c                                     ; $50bd: $71
	ld   [hl], h                                     ; $50be: $74
	ld   l, l                                        ; $50bf: $6d
	and  c                                           ; $50c0: $a1
	ld   [hl], l                                     ; $50c1: $75
	ld   h, a                                        ; $50c2: $67
	sbc  a                                           ; $50c3: $9f
	dec  c                                           ; $50c4: $0d
	nop                                              ; $50c5: $00
	ld   a, [bc]                                     ; $50c6: $0a
	ld   bc, $9166                                   ; $50c7: $01 $66 $91
	sbc  [hl]                                        ; $50ca: $9e
	inc  b                                           ; $50cb: $04
	adc  l                                           ; $50cc: $8d
	ld   [hl], c                                     ; $50cd: $71
	ld   [hl], h                                     ; $50ce: $74
	ld   e, e                                        ; $50cf: $5b
	adc  h                                           ; $50d0: $8c
	ld   h, a                                        ; $50d1: $67
	ld   a, e                                        ; $50d2: $7b
	sbc  a                                           ; $50d3: $9f
	dec  c                                           ; $50d4: $0d
	nop                                              ; $50d5: $00
	ld   a, [bc]                                     ; $50d6: $0a
	dec  c                                           ; $50d7: $0d
	nop                                              ; $50d8: $00
	nop                                              ; $50d9: $00
	rrca                                             ; $50da: $0f
	nop                                              ; $50db: $00
	ld   bc, $020c                                   ; $50dc: $01 $0c $02
	ld   d, $17                                      ; $50df: $16 $17
	rrca                                             ; $50e1: $0f
	ld   bc, $1d01                                   ; $50e2: $01 $01 $1d
	ld   b, b                                        ; $50e5: $40
	ld   de, $1103                                   ; $50e6: $11 $03 $11
	ld   bc, $2802                                   ; $50e9: $01 $02 $28
	nop                                              ; $50ec: $00
	ld   bc, $8354                                   ; $50ed: $01 $54 $83
	add  e                                           ; $50f0: $83
	rst  $38                                         ; $50f1: $ff
	sbc  b                                           ; $50f2: $98
	and  c                                           ; $50f3: $a1
	ld   h, d                                        ; $50f4: $62
	ld   d, b                                        ; $50f5: $50
	adc  a                                           ; $50f6: $8f
	sbc  [hl]                                        ; $50f7: $9e
	dec  c                                           ; $50f8: $0d
	ld   e, b                                        ; $50f9: $58
	ld   d, d                                        ; $50fa: $52
	ld   h, l                                        ; $50fb: $65
	ld   d, d                                        ; $50fc: $52
	ld   [hl], l                                     ; $50fd: $75
	ld   h, a                                        ; $50fe: $67
	ld   a, e                                        ; $50ff: $7b
	sbc  a                                           ; $5100: $9f
	dec  c                                           ; $5101: $0d

Call_056_5102:
	ld   [$6300], sp                                 ; $5102: $08 $00 $63
	and  c                                           ; $5105: $a1
	sbc  a                                           ; $5106: $9f
	dec  c                                           ; $5107: $0d
	nop                                              ; $5108: $00
	ld   a, [bc]                                     ; $5109: $0a
	dec  c                                           ; $510a: $0d
	nop                                              ; $510b: $00
	nop                                              ; $510c: $00
	rrca                                             ; $510d: $0f
	nop                                              ; $510e: $00
	ld   bc, $020c                                   ; $510f: $01 $0c $02
	ld   b, $33                                      ; $5112: $06 $33
	add  hl, bc                                      ; $5114: $09
	rrca                                             ; $5115: $0f
	nop                                              ; $5116: $00
	ld   bc, $9201                                   ; $5117: $01 $01 $92
	ld   e, e                                        ; $511a: $5b
	ld   d, d                                        ; $511b: $52
	ld   e, c                                        ; $511c: $59
	inc  bc                                          ; $511d: $03
	ld   l, d                                        ; $511e: $6a
	add  a                                           ; $511f: $87
	adc  h                                           ; $5120: $8c
	ld   l, c                                        ; $5121: $69
	and  c                                           ; $5122: $a1
	ld   e, c                                        ; $5123: $59
	ld   sp, hl                                      ; $5124: $f9
	dec  c                                           ; $5125: $0d
	nop                                              ; $5126: $00
	ld   a, [bc]                                     ; $5127: $0a
	inc  e                                           ; $5128: $1c
	ld   bc, $0404                                   ; $5129: $01 $04 $04
	dec  e                                           ; $512c: $1d
	ld   b, b                                        ; $512d: $40
	ld   de, $1103                                   ; $512e: $11 $03 $11
	ld   bc, $2901                                   ; $5131: $01 $01 $29
	nop                                              ; $5134: $00
	ld   bc, $fc54                                   ; $5135: $01 $54 $fc
	and  c                                           ; $5138: $a1
	rst  $38                                         ; $5139: $ff
	dec  c                                           ; $513a: $0d
	ld   d, b                                        ; $513b: $50
	ld   l, l                                        ; $513c: $6d
	ld   h, l                                        ; $513d: $65
	ld   a, l                                        ; $513e: $7d
	sbc  [hl]                                        ; $513f: $9e
	sbc  b                                           ; $5140: $98
	and  c                                           ; $5141: $a1
	ld   h, d                                        ; $5142: $62
	ld   d, b                                        ; $5143: $50
	adc  a                                           ; $5144: $8f
	ld   a, c                                        ; $5145: $79
	dec  c                                           ; $5146: $0d
	ld   h, l                                        ; $5147: $65
	adc  h                                           ; $5148: $8c
	ld   h, a                                        ; $5149: $67
	sbc  a                                           ; $514a: $9f
	dec  c                                           ; $514b: $0d
	nop                                              ; $514c: $00
	ld   a, [bc]                                     ; $514d: $0a
	ld   b, $12                                      ; $514e: $06 $12
	add  hl, bc                                      ; $5150: $09
	rrca                                             ; $5151: $0f
	nop                                              ; $5152: $00
	ld   bc, $5801                                   ; $5153: $01 $01 $58
	inc  b                                           ; $5156: $04
	adc  c                                           ; $5157: $89
	ld   d, d                                        ; $5158: $52
	ld   [hl], c                                     ; $5159: $71
	ld   a, a                                        ; $515a: $7f
	ld   d, d                                        ; $515b: $52
	ld   [hl], l                                     ; $515c: $75
	ld   h, a                                        ; $515d: $67
	ld   e, c                                        ; $515e: $59
	sub  a                                           ; $515f: $97
	rst  $38                                         ; $5160: $ff
	rst  $38                                         ; $5161: $ff
	dec  c                                           ; $5162: $0d
	nop                                              ; $5163: $00
	ld   a, [bc]                                     ; $5164: $0a
	inc  e                                           ; $5165: $1c
	ld   bc, $0000                                   ; $5166: $01 $00 $00
	ld   bc, $546b                                   ; $5169: $01 $6b $54
	ld   [hl], l                                     ; $516c: $75
	ld   h, a                                        ; $516d: $67
	ld   e, c                                        ; $516e: $59
	rst  $38                                         ; $516f: $ff
	rst  $38                                         ; $5170: $ff
	dec  c                                           ; $5171: $0d
	ld   h, [hl]                                     ; $5172: $66
	sub  c                                           ; $5173: $91
	sbc  [hl]                                        ; $5174: $9e
	ld   d, b                                        ; $5175: $50
	ld   l, l                                        ; $5176: $6d
	ld   h, l                                        ; $5177: $65
	ld   a, l                                        ; $5178: $7d
	sbc  b                                           ; $5179: $98
	and  c                                           ; $517a: $a1
	ld   h, d                                        ; $517b: $62
	ld   d, b                                        ; $517c: $50
	adc  a                                           ; $517d: $8f
	dec  c                                           ; $517e: $0d
	inc  b                                           ; $517f: $04
	adc  l                                           ; $5180: $8d
	ld   [hl], c                                     ; $5181: $71
	ld   [hl], h                                     ; $5182: $74
	ld   e, e                                        ; $5183: $5b
	adc  h                                           ; $5184: $8c
	ld   h, a                                        ; $5185: $67
	ld   a, e                                        ; $5186: $7b
	sbc  a                                           ; $5187: $9f
	dec  c                                           ; $5188: $0d
	nop                                              ; $5189: $00
	ld   a, [bc]                                     ; $518a: $0a
	ld   b, $12                                      ; $518b: $06 $12
	add  hl, bc                                      ; $518d: $09
	inc  e                                           ; $518e: $1c
	ld   bc, $0101                                   ; $518f: $01 $01 $01
	ld   bc, $546b                                   ; $5192: $01 $6b $54
	ld   l, [hl]                                     ; $5195: $6e
	ld   a, [$980d]                                  ; $5196: $fa $0d $98
	and  c                                           ; $5199: $a1
	ld   h, d                                        ; $519a: $62
	ld   d, b                                        ; $519b: $50
	adc  a                                           ; $519c: $8f
	inc  bc                                          ; $519d: $03
	ld   l, d                                        ; $519e: $6a
	add  a                                           ; $519f: $87
	adc  h                                           ; $51a0: $8c
	ld   h, l                                        ; $51a1: $65
	sub  l                                           ; $51a2: $95
	ld   d, h                                        ; $51a3: $54
	sub  [hl]                                        ; $51a4: $96
	sbc  a                                           ; $51a5: $9f
	dec  c                                           ; $51a6: $0d
	ld   h, a                                        ; $51a7: $67
	ld   h, d                                        ; $51a8: $62
	ld   e, l                                        ; $51a9: $5d
	ld   e, b                                        ; $51aa: $58
	ld   d, d                                        ; $51ab: $52
	ld   h, l                                        ; $51ac: $65
	ld   d, d                                        ; $51ad: $52
	ld   [hl], l                                     ; $51ae: $75
	ld   h, a                                        ; $51af: $67
	ld   e, c                                        ; $51b0: $59
	sub  a                                           ; $51b1: $97
	sbc  a                                           ; $51b2: $9f
	dec  c                                           ; $51b3: $0d
	nop                                              ; $51b4: $00
	ld   a, [bc]                                     ; $51b5: $0a
	inc  e                                           ; $51b6: $1c
	ld   bc, $0000                                   ; $51b7: $01 $00 $00
	ld   bc, $9166                                   ; $51ba: $01 $66 $91
	sbc  [hl]                                        ; $51bd: $9e
	inc  b                                           ; $51be: $04
	adc  l                                           ; $51bf: $8d
	ld   [hl], c                                     ; $51c0: $71
	ld   [hl], h                                     ; $51c1: $74
	ld   e, e                                        ; $51c2: $5b
	adc  h                                           ; $51c3: $8c
	ld   h, a                                        ; $51c4: $67
	ld   a, e                                        ; $51c5: $7b
	sbc  a                                           ; $51c6: $9f
	dec  c                                           ; $51c7: $0d
	nop                                              ; $51c8: $00
	ld   a, [bc]                                     ; $51c9: $0a
	dec  c                                           ; $51ca: $0d
	nop                                              ; $51cb: $00
	nop                                              ; $51cc: $00
	rrca                                             ; $51cd: $0f
	nop                                              ; $51ce: $00
	ld   bc, $020c                                   ; $51cf: $01 $0c $02
	add  hl, bc                                      ; $51d2: $09
	ld   d, b                                        ; $51d3: $50
	ld   b, $33                                      ; $51d4: $06 $33
	add  hl, bc                                      ; $51d6: $09
	ld   c, $b2                                      ; $51d7: $0e $b2
	inc  e                                           ; $51d9: $1c
	ld   bc, $0101                                   ; $51da: $01 $01 $01
	ld   bc, $5483                                   ; $51dd: $01 $83 $54
	rst  $38                                         ; $51e0: $ff
	rst  $38                                         ; $51e1: $ff
	ld   e, b                                        ; $51e2: $58
	ld   d, d                                        ; $51e3: $52
	ld   h, l                                        ; $51e4: $65
	ld   e, c                                        ; $51e5: $59
	ld   [hl], c                                     ; $51e6: $71
	ld   l, l                                        ; $51e7: $6d
	sbc  a                                           ; $51e8: $9f
	dec  c                                           ; $51e9: $0d
	nop                                              ; $51ea: $00
	ld   a, [bc]                                     ; $51eb: $0a
	inc  e                                           ; $51ec: $1c
	ld   bc, $0000                                   ; $51ed: $01 $00 $00
	ld   bc, $9b6b                                   ; $51f0: $01 $6b $9b
	ld   l, e                                        ; $51f3: $6b
	sbc  e                                           ; $51f4: $9b
	ld   [bc], a                                     ; $51f5: $02
	or   l                                           ; $51f6: $b5
	sbc  b                                           ; $51f7: $98
	adc  h                                           ; $51f8: $8c
	ld   h, l                                        ; $51f9: $65
	sub  l                                           ; $51fa: $95
	ld   d, h                                        ; $51fb: $54
	ld   e, c                                        ; $51fc: $59
	ld   sp, hl                                      ; $51fd: $f9
	dec  c                                           ; $51fe: $0d
	nop                                              ; $51ff: $00
	ld   a, [bc]                                     ; $5200: $0a
	add  hl, de                                      ; $5201: $19
	dec  b                                           ; $5202: $05
	ld   [bc], a                                     ; $5203: $02
	ld   l, e                                        ; $5204: $6b
	ld   d, h                                        ; $5205: $54
	ld   [hl], l                                     ; $5206: $75
	ld   h, a                                        ; $5207: $67
	ld   a, e                                        ; $5208: $7b
	nop                                              ; $5209: $00
	nop                                              ; $520a: $00
	sub  b                                           ; $520b: $90
	ld   d, h                                        ; $520c: $54
	ld   l, a                                        ; $520d: $6f
	sub  l                                           ; $520e: $95
	ld   [hl], c                                     ; $520f: $71
	halt                                             ; $5210: $76
	inc  b                                           ; $5211: $04
	ldh  a, [c]                                      ; $5212: $f2
	add  c                                           ; $5213: $81
	ld   l, l                                        ; $5214: $6d
	ld   d, d                                        ; $5215: $52
	nop                                              ; $5216: $00
	ld   bc, $8907                                   ; $5217: $01 $07 $89
	add  hl, bc                                      ; $521a: $09
	ld   [bc], a                                     ; $521b: $02
	inc  bc                                          ; $521c: $03
	ld   bc, $2000                                   ; $521d: $01 $00 $20
	nop                                              ; $5220: $00
	rlca                                             ; $5221: $07
	ldh  a, [$09]                                    ; $5222: $f0 $09
	ld   [bc], a                                     ; $5224: $02
	inc  bc                                          ; $5225: $03
	ld   bc, $2001                                   ; $5226: $01 $01 $20
	nop                                              ; $5229: $00
	ld   b, $b4                                      ; $522a: $06 $b4
	add  hl, bc                                      ; $522c: $09
	rrca                                             ; $522d: $0f
	nop                                              ; $522e: $00
	ld   bc, $6b01                                   ; $522f: $01 $01 $6b
	ld   d, h                                        ; $5232: $54
	ld   [hl], l                                     ; $5233: $75
	ld   h, a                                        ; $5234: $67
	ld   a, e                                        ; $5235: $7b
	sbc  a                                           ; $5236: $9f
	dec  c                                           ; $5237: $0d
	ld   e, b                                        ; $5238: $58
	ld   l, e                                        ; $5239: $6b
	ld   e, l                                        ; $523a: $5d
	ld   a, b                                        ; $523b: $78
	ld   [hl], c                                     ; $523c: $71
	ld   [hl], h                                     ; $523d: $74
	sbc  [hl]                                        ; $523e: $9e
	adc  l                                           ; $523f: $8d
	and  c                                           ; $5240: $a1
	ld   a, b                                        ; $5241: $78
	ld   a, c                                        ; $5242: $79
	inc  bc                                          ; $5243: $03
	ld   [hl], l                                     ; $5244: $75
	inc  b                                           ; $5245: $04
	xor  e                                           ; $5246: $ab
	dec  c                                           ; $5247: $0d
	ld   e, c                                        ; $5248: $59
	ld   e, a                                        ; $5249: $5f
	ld   l, a                                        ; $524a: $6f
	sub  c                                           ; $524b: $91
	ld   d, d                                        ; $524c: $52
	ld   e, a                                        ; $524d: $5f
	adc  h                                           ; $524e: $8c
	ld   l, c                                        ; $524f: $69
	and  c                                           ; $5250: $a1
	ld   e, c                                        ; $5251: $59
	sub  a                                           ; $5252: $97
	ld   a, e                                        ; $5253: $7b
	sbc  a                                           ; $5254: $9f
	dec  c                                           ; $5255: $0d
	nop                                              ; $5256: $00
	ld   a, [bc]                                     ; $5257: $0a
	inc  e                                           ; $5258: $1c
	ld   bc, $0000                                   ; $5259: $01 $00 $00
	ld   bc, $9e63                                   ; $525c: $01 $63 $9e
	ld   [bc], a                                     ; $525f: $02
	or   l                                           ; $5260: $b5
	sbc  b                                           ; $5261: $98
	adc  h                                           ; $5262: $8c
	ld   h, l                                        ; $5263: $65
	sub  l                                           ; $5264: $95
	ld   d, h                                        ; $5265: $54
	sbc  a                                           ; $5266: $9f
	dec  c                                           ; $5267: $0d
	nop                                              ; $5268: $00
	ld   a, [bc]                                     ; $5269: $0a
	dec  c                                           ; $526a: $0d
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	rrca                                             ; $526d: $0f
	nop                                              ; $526e: $00
	ld   bc, $0623                                   ; $526f: $01 $23 $06
	inc  e                                           ; $5272: $1c
	ld   bc, $0101                                   ; $5273: $01 $01 $01

Jump_056_5276:
	ld   bc, $9166                                   ; $5276: $01 $66 $91
	sbc  [hl]                                        ; $5279: $9e
	ld   [$6300], sp                                 ; $527a: $08 $00 $63
	and  c                                           ; $527d: $a1
	sbc  a                                           ; $527e: $9f
	dec  c                                           ; $527f: $0d
	ld   e, b                                        ; $5280: $58
	sub  d                                           ; $5281: $92
	ld   h, a                                        ; $5282: $67
	adc  l                                           ; $5283: $8d
	ld   a, b                                        ; $5284: $78
	ld   h, e                                        ; $5285: $63
	ld   d, d                                        ; $5286: $52
	sbc  a                                           ; $5287: $9f
	dec  c                                           ; $5288: $0d
	nop                                              ; $5289: $00
	ld   a, [bc]                                     ; $528a: $0a
	dec  c                                           ; $528b: $0d
	nop                                              ; $528c: $00
	nop                                              ; $528d: $00
	rrca                                             ; $528e: $0f
	nop                                              ; $528f: $00
	ld   bc, $8206                                   ; $5290: $01 $06 $82
	ld   a, [bc]                                     ; $5293: $0a
	rrca                                             ; $5294: $0f
	nop                                              ; $5295: $00
	ld   bc, $6301                                   ; $5296: $01 $01 $63
	ld   e, l                                        ; $5299: $5d
	sub  a                                           ; $529a: $97
	ld   h, e                                        ; $529b: $63
	and  c                                           ; $529c: $a1
	halt                                             ; $529d: $76
	ld   d, d                                        ; $529e: $52
	sbc  c                                           ; $529f: $99
	halt                                             ; $52a0: $76
	dec  b                                           ; $52a1: $05
	inc  de                                          ; $52a2: $13
	ld   h, l                                        ; $52a3: $65
	ld   d, d                                        ; $52a4: $52
	ld   e, c                                        ; $52a5: $59
	sub  a                                           ; $52a6: $97
	dec  c                                           ; $52a7: $0d
	sub  b                                           ; $52a8: $90
	ld   d, h                                        ; $52a9: $54
	ld   l, a                                        ; $52aa: $6f
	sub  l                                           ; $52ab: $95
	ld   [hl], c                                     ; $52ac: $71
	halt                                             ; $52ad: $76
	inc  b                                           ; $52ae: $04
	ldh  a, [c]                                      ; $52af: $f2
	add  c                                           ; $52b0: $81
	ld   l, l                                        ; $52b1: $6d
	ld   d, d                                        ; $52b2: $52
	ld   a, b                                        ; $52b3: $78
	db   $fc                                         ; $52b4: $fc
	dec  c                                           ; $52b5: $0d
	ld   a, b                                        ; $52b6: $78
	and  c                                           ; $52b7: $a1
	ld   [hl], h                                     ; $52b8: $74
	dec  b                                           ; $52b9: $05
	pop  de                                          ; $52ba: $d1
	ld   [hl], c                                     ; $52bb: $71
	ld   [hl], h                                     ; $52bc: $74
	sbc  c                                           ; $52bd: $99
	and  c                                           ; $52be: $a1
	ld   [hl], l                                     ; $52bf: $75
	ld   h, a                                        ; $52c0: $67
	ld   e, d                                        ; $52c1: $5a
	rst  $38                                         ; $52c2: $ff
	dec  c                                           ; $52c3: $0d
	nop                                              ; $52c4: $00
	ld   a, [bc]                                     ; $52c5: $0a
	inc  e                                           ; $52c6: $1c
	ld   bc, $0505                                   ; $52c7: $01 $05 $05
	dec  e                                           ; $52ca: $1d
	ld   b, b                                        ; $52cb: $40
	ld   de, $1103                                   ; $52cc: $11 $03 $11
	ld   bc, $2802                                   ; $52cf: $01 $02 $28
	nop                                              ; $52d2: $00
	ld   bc, $5656                                   ; $52d3: $01 $56 $56
	ld   [hl], c                                     ; $52d6: $71
	rst  $38                                         ; $52d7: $ff
	rst  $38                                         ; $52d8: $ff
	dec  c                                           ; $52d9: $0d
	nop                                              ; $52da: $00
	ld   a, [bc]                                     ; $52db: $0a
	ld   bc, $9075                                   ; $52dc: $01 $75 $90
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	dec  c                                           ; $52e1: $0d
	sub  b                                           ; $52e2: $90
	ld   d, h                                        ; $52e3: $54
	ld   [bc], a                                     ; $52e4: $02
	or   l                                           ; $52e5: $b5
	sub  a                                           ; $52e6: $97
	ld   a, b                                        ; $52e7: $78
	ld   d, d                                        ; $52e8: $52
	halt                                             ; $52e9: $76
	inc  bc                                          ; $52ea: $03
	ld   hl, sp-$69                                  ; $52eb: $f8 $97
	sbc  d                                           ; $52ed: $9a
	adc  h                                           ; $52ee: $8c
	ld   h, a                                        ; $52ef: $67
	ld   h, l                                        ; $52f0: $65
	dec  c                                           ; $52f1: $0d
	rst  $38                                         ; $52f2: $ff
	rst  $38                                         ; $52f3: $ff
	ld   [bc], a                                     ; $52f4: $02
	or   l                                           ; $52f5: $b5
	sbc  b                                           ; $52f6: $98
	adc  h                                           ; $52f7: $8c
	ld   h, l                                        ; $52f8: $65
	sub  l                                           ; $52f9: $95
	ld   d, h                                        ; $52fa: $54
	sbc  a                                           ; $52fb: $9f
	dec  c                                           ; $52fc: $0d
	nop                                              ; $52fd: $00
	ld   a, [bc]                                     ; $52fe: $0a
	dec  c                                           ; $52ff: $0d
	nop                                              ; $5300: $00
	nop                                              ; $5301: $00
	rrca                                             ; $5302: $0f
	nop                                              ; $5303: $00
	ld   bc, $0623                                   ; $5304: $01 $23 $06
	inc  e                                           ; $5307: $1c
	ld   bc, $0101                                   ; $5308: $01 $01 $01
	ld   bc, $9166                                   ; $530b: $01 $66 $91
	sbc  [hl]                                        ; $530e: $9e
	ld   [$6300], sp                                 ; $530f: $08 $00 $63
	and  c                                           ; $5312: $a1
	sbc  a                                           ; $5313: $9f
	dec  c                                           ; $5314: $0d
	ld   e, b                                        ; $5315: $58
	sub  d                                           ; $5316: $92
	ld   h, a                                        ; $5317: $67
	adc  l                                           ; $5318: $8d
	ld   a, b                                        ; $5319: $78
	ld   h, e                                        ; $531a: $63
	ld   d, d                                        ; $531b: $52
	sbc  a                                           ; $531c: $9f
	dec  c                                           ; $531d: $0d
	nop                                              ; $531e: $00
	ld   a, [bc]                                     ; $531f: $0a
	dec  c                                           ; $5320: $0d
	nop                                              ; $5321: $00
	nop                                              ; $5322: $00
	rrca                                             ; $5323: $0f
	nop                                              ; $5324: $00
	ld   bc, $020c                                   ; $5325: $01 $0c $02
	add  hl, bc                                      ; $5328: $09
	ld   d, b                                        ; $5329: $50
	ld   c, $02                                      ; $532a: $0e $02
	ld   bc, $ffff                                   ; $532c: $01 $ff $ff
	add  e                                           ; $532f: $83
	ld   d, h                                        ; $5330: $54
	sbc  [hl]                                        ; $5331: $9e
	ld   [bc], a                                     ; $5332: $02
	and  l                                           ; $5333: $a5
	inc  b                                           ; $5334: $04
	xor  d                                           ; $5335: $aa
	ld   a, l                                        ; $5336: $7d
	ld   l, l                                        ; $5337: $6d
	ld   a, h                                        ; $5338: $7c
	ld   h, l                                        ; $5339: $65
	ld   e, c                                        ; $533a: $59
	ld   [hl], c                                     ; $533b: $71
	ld   l, l                                        ; $533c: $6d
	dec  c                                           ; $533d: $0d
	ld   a, b                                        ; $533e: $78
	ld   d, b                                        ; $533f: $50
	rst  $38                                         ; $5340: $ff
	rst  $38                                         ; $5341: $ff
	dec  c                                           ; $5342: $0d
	nop                                              ; $5343: $00
	ld   a, [bc]                                     ; $5344: $0a
	ld   bc, $7158                                   ; $5345: $01 $58 $71
	halt                                             ; $5348: $76
	sbc  [hl]                                        ; $5349: $9e
	sub  b                                           ; $534a: $90
	ld   d, h                                        ; $534b: $54
	ld   h, c                                        ; $534c: $61
	and  c                                           ; $534d: $a1
	ld   a, b                                        ; $534e: $78
	inc  bc                                          ; $534f: $03
	ld   l, a                                        ; $5350: $6f
	ld   [bc], a                                     ; $5351: $02
	xor  c                                           ; $5352: $a9
	ld   e, c                                        ; $5353: $59
	sbc  a                                           ; $5354: $9f
	dec  c                                           ; $5355: $0d
	ld   l, e                                        ; $5356: $6b
	sbc  e                                           ; $5357: $9b
	ld   l, e                                        ; $5358: $6b
	sbc  e                                           ; $5359: $9b
	inc  b                                           ; $535a: $04
	ld   b, d                                        ; $535b: $42
	ld   a, b                                        ; $535c: $78
	ld   e, l                                        ; $535d: $5d
	ld   l, a                                        ; $535e: $6f
	sub  c                                           ; $535f: $91
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	dec  c                                           ; $5362: $0d
	nop                                              ; $5363: $00
	ld   a, [bc]                                     ; $5364: $0a
	add  hl, hl                                      ; $5365: $29
	nop                                              ; $5366: $00
	nop                                              ; $5367: $00
	nop                                              ; $5368: $00
	ld   c, $41                                      ; $5369: $0e $41
	rrca                                             ; $536b: $0f
	nop                                              ; $536c: $00
	ld   bc, $1c02                                   ; $536d: $01 $02 $1c
	add  hl, bc                                      ; $5370: $09
	nop                                              ; $5371: $00
	nop                                              ; $5372: $00
	ld   bc, $0008                                   ; $5373: $01 $08 $00
	ld   e, l                                        ; $5376: $5d
	and  c                                           ; $5377: $a1
	ld   h, [hl]                                     ; $5378: $66
	sub  c                                           ; $5379: $91
	ld   a, b                                        ; $537a: $78
	ld   d, d                                        ; $537b: $52
	ld   e, c                                        ; $537c: $59
	sbc  a                                           ; $537d: $9f
	dec  c                                           ; $537e: $0d
	ld   a, b                                        ; $537f: $78
	ld   a, c                                        ; $5380: $79
	ld   e, c                                        ; $5381: $59
	inc  b                                           ; $5382: $04
	di                                               ; $5383: $f3
	ld   e, c                                        ; $5384: $59
	ld   d, d                                        ; $5385: $52
	ld   sp, hl                                      ; $5386: $f9
	dec  c                                           ; $5387: $0d
	nop                                              ; $5388: $00
	ld   a, [bc]                                     ; $5389: $0a
	add  hl, de                                      ; $538a: $19
	dec  b                                           ; $538b: $05
	ld   [bc], a                                     ; $538c: $02
	inc  b                                           ; $538d: $04
	ld   a, [bc]                                     ; $538e: $0a
	ld   [bc], a                                     ; $538f: $02
	nop                                              ; $5390: $00
	ld   e, c                                        ; $5391: $59
	sub  a                                           ; $5392: $97
	ld   a, h                                        ; $5393: $7c
	inc  b                                           ; $5394: $04
	ld   d, a                                        ; $5395: $57
	inc  b                                           ; $5396: $04
	ld   h, e                                        ; $5397: $63
	and  b                                           ; $5398: $a0
	ld   [bc], a                                     ; $5399: $02
	jp   nz, $005d                                   ; $539a: $c2 $5d $00

	nop                                              ; $539d: $00
	inc  bc                                          ; $539e: $03
	ld   l, l                                        ; $539f: $6d
	dec  b                                           ; $53a0: $05
	add  hl, de                                      ; $53a1: $19
	ld   a, h                                        ; $53a2: $7c
	and  e                                           ; $53a3: $a3
	jp   z, $a5d1                                    ; $53a4: $ca $d1 $a5

	cp   d                                           ; $53a7: $ba
	and  b                                           ; $53a8: $a0
	ld   [bc], a                                     ; $53a9: $02
	jp   nz, $005d                                   ; $53aa: $c2 $5d $00

	ld   bc, $8b07                                   ; $53ad: $01 $07 $8b
	ld   bc, $0302                                   ; $53b0: $01 $02 $03
	ld   bc, $2000                                   ; $53b3: $01 $00 $20
	nop                                              ; $53b6: $00
	rlca                                             ; $53b7: $07
	ld   c, c                                        ; $53b8: $49
	ld   a, [bc]                                     ; $53b9: $0a
	ld   [bc], a                                     ; $53ba: $02
	inc  bc                                          ; $53bb: $03
	ld   bc, $2001                                   ; $53bc: $01 $01 $20
	nop                                              ; $53bf: $00
	ld   b, $5a                                      ; $53c0: $06 $5a
	nop                                              ; $53c2: $00
	rrca                                             ; $53c3: $0f
	nop                                              ; $53c4: $00
	ld   bc, $5201                                   ; $53c5: $01 $01 $52
	ld   d, [hl]                                     ; $53c8: $56
	rst  $38                                         ; $53c9: $ff
	rst  $38                                         ; $53ca: $ff
	sbc  a                                           ; $53cb: $9f
	dec  c                                           ; $53cc: $0d
	halt                                             ; $53cd: $76
	ld   e, l                                        ; $53ce: $5d
	ld   a, c                                        ; $53cf: $79
	inc  b                                           ; $53d0: $04
	di                                               ; $53d1: $f3
	ld   [bc], a                                     ; $53d2: $02
	jp   Jump_056_5276                               ; $53d3: $c3 $76 $52


	ld   d, h                                        ; $53d6: $54
	sbc  l                                           ; $53d7: $9d
	ld   e, a                                        ; $53d8: $5f
	ld   [hl], l                                     ; $53d9: $75
	ld   a, l                                        ; $53da: $7d
	rst  $38                                         ; $53db: $ff
	sbc  a                                           ; $53dc: $9f
	dec  c                                           ; $53dd: $0d
	nop                                              ; $53de: $00
	ld   a, [bc]                                     ; $53df: $0a
	rlca                                             ; $53e0: $07
	rst  JumpTable                                         ; $53e1: $df
	nop                                              ; $53e2: $00
	inc  bc                                          ; $53e3: $03
	jr   nz, jr_056_53e7                             ; $53e4: $20 $01

	ld   h, h                                        ; $53e6: $64

jr_056_53e7:
	inc  hl                                          ; $53e7: $23
	nop                                              ; $53e8: $00
	rrca                                             ; $53e9: $0f
	add  hl, bc                                      ; $53ea: $09
	nop                                              ; $53eb: $00
	ld   bc, $546b                                   ; $53ec: $01 $6b $54
	ld   e, c                                        ; $53ef: $59
	rst  $38                                         ; $53f0: $ff
	rst  $38                                         ; $53f1: $ff
	adc  h                                           ; $53f2: $8c
	ld   d, b                                        ; $53f3: $50
	sbc  [hl]                                        ; $53f4: $9e
	dec  c                                           ; $53f5: $0d
	ld   a, b                                        ; $53f6: $78
	ld   a, c                                        ; $53f7: $79
	ld   e, c                                        ; $53f8: $59
	ld   [bc], a                                     ; $53f9: $02
	ld   a, [de]                                     ; $53fa: $1a
	dec  b                                           ; $53fb: $05
	ldh  a, [$5a]                                    ; $53fc: $f0 $5a
	ld   d, b                                        ; $53fe: $50
	sbc  c                                           ; $53ff: $99
	ld   a, b                                        ; $5400: $78
	sub  a                                           ; $5401: $97
	dec  c                                           ; $5402: $0d
	ld   d, d                                        ; $5403: $52
	ld   [hl], d                                     ; $5404: $72
	ld   [hl], l                                     ; $5405: $75
	sub  b                                           ; $5406: $90
	dec  b                                           ; $5407: $05
	db   $10                                         ; $5408: $10
	sbc  c                                           ; $5409: $99
	halt                                             ; $540a: $76
	ld   d, d                                        ; $540b: $52
	ld   d, d                                        ; $540c: $52
	sbc  a                                           ; $540d: $9f
	dec  c                                           ; $540e: $0d
	nop                                              ; $540f: $00
	ld   a, [bc]                                     ; $5410: $0a
	rrca                                             ; $5411: $0f
	nop                                              ; $5412: $00
	ld   bc, $7d01                                   ; $5413: $01 $01 $7d
	rst  $38                                         ; $5416: $ff
	rst  $38                                         ; $5417: $ff
	ld   a, l                                        ; $5418: $7d
	ld   d, d                                        ; $5419: $52
	sbc  a                                           ; $541a: $9f
	dec  c                                           ; $541b: $0d
	ld   d, b                                        ; $541c: $50
	sbc  b                                           ; $541d: $98
	ld   e, d                                        ; $541e: $5a
	halt                                             ; $541f: $76
	ld   d, h                                        ; $5420: $54
	ld   h, d                                        ; $5421: $62
	ld   h, h                                        ; $5422: $64
	ld   d, d                                        ; $5423: $52
	adc  h                                           ; $5424: $8c
	ld   h, a                                        ; $5425: $67
	sbc  a                                           ; $5426: $9f
	dec  c                                           ; $5427: $0d
	nop                                              ; $5428: $00
	ld   a, [bc]                                     ; $5429: $0a
	rrca                                             ; $542a: $0f
	add  hl, bc                                      ; $542b: $09
	nop                                              ; $542c: $00
	ld   bc, $9a6b                                   ; $542d: $01 $6b $9a
	ld   h, [hl]                                     ; $5430: $66
	sub  c                                           ; $5431: $91
	sbc  [hl]                                        ; $5432: $9e
	dec  b                                           ; $5433: $05
	ld   [hl], e                                     ; $5434: $73
	sub  b                                           ; $5435: $90
	inc  bc                                          ; $5436: $03
	dec  c                                           ; $5437: $0d
	ld   [bc], a                                     ; $5438: $02
	jp   Jump_056_505a                               ; $5439: $c3 $5a $50


	sbc  c                                           ; $543c: $99
	ld   e, c                                        ; $543d: $59
	sub  a                                           ; $543e: $97
	dec  c                                           ; $543f: $0d
	ld   h, c                                        ; $5440: $61
	sbc  d                                           ; $5441: $9a
	ld   [hl], l                                     ; $5442: $75
	sbc  a                                           ; $5443: $9f
	dec  c                                           ; $5444: $0d
	nop                                              ; $5445: $00
	ld   a, [bc]                                     ; $5446: $0a
	nop                                              ; $5447: $00
	inc  e                                           ; $5448: $1c
	add  hl, bc                                      ; $5449: $09
	dec  b                                           ; $544a: $05
	ld   a, [bc]                                     ; $544b: $0a
	ld   bc, $0008                                   ; $544c: $01 $08 $00
	ld   e, l                                        ; $544f: $5d
	and  c                                           ; $5450: $a1
	sbc  a                                           ; $5451: $9f
	dec  c                                           ; $5452: $0d
	ld   a, b                                        ; $5453: $78
	and  c                                           ; $5454: $a1
	ld   l, [hl]                                     ; $5455: $6e
	ld   e, c                                        ; $5456: $59
	ld   [bc], a                                     ; $5457: $02
	ld   [hl], d                                     ; $5458: $72
	inc  bc                                          ; $5459: $03
	dec  bc                                          ; $545a: $0b
	ld   e, d                                        ; $545b: $5a
	ld   [bc], a                                     ; $545c: $02
	jr   z, jr_056_54b1                              ; $545d: $28 $52

	ld   l, h                                        ; $545f: $6c
	sbc  a                                           ; $5460: $9f

Jump_056_5461:
	dec  c                                           ; $5461: $0d
	nop                                              ; $5462: $00
	ld   a, [bc]                                     ; $5463: $0a
	inc  e                                           ; $5464: $1c
	add  hl, bc                                      ; $5465: $09
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	ld   bc, $a15a                                   ; $5468: $01 $5a $a1
	ld   a, [hl]                                     ; $546b: $7e
	sbc  c                                           ; $546c: $99
	ld   a, h                                        ; $546d: $7c
	sub  b                                           ; $546e: $90
	ld   d, d                                        ; $546f: $52
	ld   d, d                                        ; $5470: $52
	ld   e, d                                        ; $5471: $5a
	sbc  [hl]                                        ; $5472: $9e
	dec  c                                           ; $5473: $0d
	ld   l, l                                        ; $5474: $6d
	adc  h                                           ; $5475: $8c
	ld   a, c                                        ; $5476: $79
	ld   a, l                                        ; $5477: $7d
	inc  bc                                          ; $5478: $03
	and  a                                           ; $5479: $a7
	adc  l                                           ; $547a: $8d
	and  b                                           ; $547b: $a0

Jump_056_547c:
	halt                                             ; $547c: $76
	sub  a                                           ; $547d: $97
	ld   a, b                                        ; $547e: $78
	ld   d, d                                        ; $547f: $52
	halt                                             ; $5480: $76
	dec  c                                           ; $5481: $0d
	inc  b                                           ; $5482: $04
	dec  c                                           ; $5483: $0d
	ld   e, d                                        ; $5484: $5a
	sub  b                                           ; $5485: $90
	ld   l, l                                        ; $5486: $6d
	ld   a, b                                        ; $5487: $78
	ld   d, d                                        ; $5488: $52
	ld   l, h                                        ; $5489: $6c
	sbc  a                                           ; $548a: $9f
	dec  c                                           ; $548b: $0d
	nop                                              ; $548c: $00
	ld   a, [bc]                                     ; $548d: $0a
	ld   bc, $0a04                                   ; $548e: $01 $04 $0a
	ld   [bc], a                                     ; $5491: $02
	nop                                              ; $5492: $00
	ld   a, c                                        ; $5493: $79
	halt                                             ; $5494: $76
	ld   [hl], c                                     ; $5495: $71
	ld   [hl], h                                     ; $5496: $74
	ld   a, l                                        ; $5497: $7d
	inc  bc                                          ; $5498: $03
	sub  h                                           ; $5499: $94
	dec  b                                           ; $549a: $05
	inc  sp                                          ; $549b: $33
	ld   [bc], a                                     ; $549c: $02
	ld   l, b                                        ; $549d: $68
	dec  b                                           ; $549e: $05
	ld   de, $0d90                                   ; $549f: $11 $90 $0d
	inc  b                                           ; $54a2: $04
	ld   c, $02                                      ; $54a3: $0e $02
	jp   $0378                                       ; $54a5: $c3 $78 $03


	dec  c                                           ; $54a8: $0d
	ld   [bc], a                                     ; $54a9: $02
	jp   Jump_056_547c                               ; $54aa: $c3 $7c $54


	ld   l, a                                        ; $54ad: $6f
	ld   l, [hl]                                     ; $54ae: $6e
	ld   e, c                                        ; $54af: $59
	sub  a                                           ; $54b0: $97

jr_056_54b1:
	ld   a, b                                        ; $54b1: $78
	sbc  a                                           ; $54b2: $9f
	dec  c                                           ; $54b3: $0d
	nop                                              ; $54b4: $00
	ld   a, [bc]                                     ; $54b5: $0a
	rrca                                             ; $54b6: $0f
	nop                                              ; $54b7: $00
	ld   bc, $7d01                                   ; $54b8: $01 $01 $7d
	rst  $38                                         ; $54bb: $ff
	rst  $38                                         ; $54bc: $ff
	ld   a, l                                        ; $54bd: $7d
	ld   d, d                                        ; $54be: $52
	sbc  a                                           ; $54bf: $9f
	dec  c                                           ; $54c0: $0d
	ld   [bc], a                                     ; $54c1: $02
	and  c                                           ; $54c2: $a1
	and  b                                           ; $54c3: $a0
	ld   [hl], d                                     ; $54c4: $72
	ld   e, a                                        ; $54c5: $5f
	adc  h                                           ; $54c6: $8c
	ld   h, a                                        ; $54c7: $67
	sbc  a                                           ; $54c8: $9f
	dec  c                                           ; $54c9: $0d
	nop                                              ; $54ca: $00
	ld   a, [bc]                                     ; $54cb: $0a
	inc  e                                           ; $54cc: $1c
	add  hl, bc                                      ; $54cd: $09
	ld   bc, $0101                                   ; $54ce: $01 $01 $01
	ld   d, h                                        ; $54d1: $54
	and  c                                           ; $54d2: $a1
	sbc  a                                           ; $54d3: $9f
	dec  c                                           ; $54d4: $0d
	ld   l, e                                        ; $54d5: $6b
	sbc  d                                           ; $54d6: $9a
	ld   h, [hl]                                     ; $54d7: $66
	sub  c                                           ; $54d8: $91
	sbc  [hl]                                        ; $54d9: $9e
	dec  b                                           ; $54da: $05
	ld   [hl], e                                     ; $54db: $73
	sub  b                                           ; $54dc: $90
	ld   l, e                                        ; $54dd: $6b
	sbc  e                                           ; $54de: $9b
	ld   l, e                                        ; $54df: $6b
	sbc  e                                           ; $54e0: $9b
	inc  bc                                          ; $54e1: $03
	dec  c                                           ; $54e2: $0d
	ld   [bc], a                                     ; $54e3: $02
	jp   $0d79                                       ; $54e4: $c3 $79 $0d


	sub  b                                           ; $54e7: $90
	ld   [hl], a                                     ; $54e8: $77
	sbc  c                                           ; $54e9: $99
	ld   e, c                                        ; $54ea: $59
	sub  a                                           ; $54eb: $97
	ld   h, c                                        ; $54ec: $61
	sbc  d                                           ; $54ed: $9a
	ld   [hl], l                                     ; $54ee: $75
	sbc  a                                           ; $54ef: $9f
	dec  c                                           ; $54f0: $0d
	nop                                              ; $54f1: $00
	ld   a, [bc]                                     ; $54f2: $0a
	nop                                              ; $54f3: $00
	rrca                                             ; $54f4: $0f
	nop                                              ; $54f5: $00
	ld   bc, $5001                                   ; $54f6: $01 $01 $50
	ld   a, h                                        ; $54f9: $7c
	rst  $38                                         ; $54fa: $ff
	rst  $38                                         ; $54fb: $ff
	ld   l, a                                        ; $54fc: $6f
	sub  l                                           ; $54fd: $95
	ld   [hl], c                                     ; $54fe: $71
	halt                                             ; $54ff: $76
	dec  c                                           ; $5500: $0d
	ld   e, b                                        ; $5501: $58
	ld   [bc], a                                     ; $5502: $02
	jp   nz, Jump_056_655b                           ; $5503: $c2 $5b $65

	ld   l, l                                        ; $5506: $6d
	ld   d, d                                        ; $5507: $52
	ld   h, c                                        ; $5508: $61
	halt                                             ; $5509: $76
	ld   e, d                                        ; $550a: $5a
	dec  c                                           ; $550b: $0d
	ld   d, b                                        ; $550c: $50
	sbc  c                                           ; $550d: $99
	and  c                                           ; $550e: $a1
	ld   [hl], l                                     ; $550f: $75
	ld   h, a                                        ; $5510: $67
	ld   e, a                                        ; $5511: $5f
	ld   [hl], a                                     ; $5512: $77
	rst  $38                                         ; $5513: $ff
	dec  c                                           ; $5514: $0d
	nop                                              ; $5515: $00
	ld   a, [bc]                                     ; $5516: $0a
	rrca                                             ; $5517: $0f
	add  hl, bc                                      ; $5518: $09
	nop                                              ; $5519: $00
	ld   bc, $ffff                                   ; $551a: $01 $ff $ff
	ld   [bc], a                                     ; $551d: $02
	jp   nz, $6d5b                                   ; $551e: $c2 $5b $6d

	ld   d, d                                        ; $5521: $52
	ld   h, c                                        ; $5522: $61
	halt                                             ; $5523: $76
	ld   sp, hl                                      ; $5524: $f9
	dec  c                                           ; $5525: $0d
	nop                                              ; $5526: $00
	ld   a, [bc]                                     ; $5527: $0a
	jr   jr_056_552d                                 ; $5528: $18 $03

	ld   bc, $5d63                                   ; $552a: $01 $63 $5d

jr_056_552d:
	sub  a                                           ; $552d: $97
	ld   e, c                                        ; $552e: $59
	sub  a                                           ; $552f: $97
	ld   a, h                                        ; $5530: $7c
	inc  b                                           ; $5531: $04
	ld   d, a                                        ; $5532: $57
	inc  b                                           ; $5533: $04
	ld   h, e                                        ; $5534: $63
	and  b                                           ; $5535: $a0
	ld   e, e                                        ; $5536: $5b
	ld   e, l                                        ; $5537: $5d
	nop                                              ; $5538: $00
	nop                                              ; $5539: $00
	ld   h, a                                        ; $553a: $67
	adc  l                                           ; $553b: $8d
	sbc  d                                           ; $553c: $9a
	ld   e, c                                        ; $553d: $59
	sub  a                                           ; $553e: $97
	ld   a, h                                        ; $553f: $7c
	inc  b                                           ; $5540: $04
	ld   d, a                                        ; $5541: $57
	inc  b                                           ; $5542: $04
	ld   h, e                                        ; $5543: $63
	and  b                                           ; $5544: $a0
	ld   e, e                                        ; $5545: $5b
	ld   e, l                                        ; $5546: $5d
	nop                                              ; $5547: $00
	ld   bc, $7c6b                                   ; $5548: $01 $6b $7c
	inc  b                                           ; $554b: $04
	ld   e, $7c                                      ; $554c: $1e $7c
	inc  bc                                          ; $554e: $03
	add  d                                           ; $554f: $82
	ld   a, h                                        ; $5550: $7c
	inc  b                                           ; $5551: $04
	ld   d, a                                        ; $5552: $57
	inc  b                                           ; $5553: $04
	ld   h, e                                        ; $5554: $63
	and  b                                           ; $5555: $a0
	ld   e, e                                        ; $5556: $5b
	ld   e, l                                        ; $5557: $5d
	nop                                              ; $5558: $00
	ld   [bc], a                                     ; $5559: $02
	rlca                                             ; $555a: $07
	ld   h, $03                                      ; $555b: $26 $03
	ld   [bc], a                                     ; $555d: $02
	ld   [bc], a                                     ; $555e: $02
	ld   bc, $2000                                   ; $555f: $01 $00 $20
	nop                                              ; $5562: $00
	rlca                                             ; $5563: $07
	ld   d, d                                        ; $5564: $52
	inc  b                                           ; $5565: $04
	ld   [bc], a                                     ; $5566: $02
	ld   [bc], a                                     ; $5567: $02
	ld   bc, $2001                                   ; $5568: $01 $01 $20
	nop                                              ; $556b: $00
	rlca                                             ; $556c: $07
	inc  c                                           ; $556d: $0c
	ld   [bc], a                                     ; $556e: $02
	ld   [bc], a                                     ; $556f: $02
	ld   [bc], a                                     ; $5570: $02
	ld   bc, $2002                                   ; $5571: $01 $02 $20
	nop                                              ; $5574: $00
	jr   jr_056_557a                                 ; $5575: $18 $03

	ld   bc, $ecdf                                   ; $5577: $01 $df $ec

jr_056_557a:
	and  e                                           ; $557a: $a3
	ld   e, c                                        ; $557b: $59
	sub  a                                           ; $557c: $97
	ld   a, h                                        ; $557d: $7c
	inc  b                                           ; $557e: $04
	ld   d, a                                        ; $557f: $57
	inc  b                                           ; $5580: $04
	ld   h, e                                        ; $5581: $63
	and  b                                           ; $5582: $a0
	ld   e, e                                        ; $5583: $5b
	ld   e, l                                        ; $5584: $5d
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00
	xor  h                                           ; $5587: $ac
	push af                                          ; $5588: $f5
	bit  3, c                                        ; $5589: $cb $59
	sub  a                                           ; $558b: $97
	ld   a, h                                        ; $558c: $7c
	inc  b                                           ; $558d: $04
	ld   d, a                                        ; $558e: $57
	inc  b                                           ; $558f: $04
	ld   h, e                                        ; $5590: $63
	and  b                                           ; $5591: $a0
	ld   e, e                                        ; $5592: $5b
	ld   e, l                                        ; $5593: $5d
	nop                                              ; $5594: $00
	ld   bc, $7c6b                                   ; $5595: $01 $6b $7c
	inc  b                                           ; $5598: $04
	ld   e, $7c                                      ; $5599: $1e $7c
	inc  bc                                          ; $559b: $03
	add  d                                           ; $559c: $82
	ld   a, h                                        ; $559d: $7c
	inc  b                                           ; $559e: $04
	ld   d, a                                        ; $559f: $57
	inc  b                                           ; $55a0: $04
	ld   h, e                                        ; $55a1: $63
	and  b                                           ; $55a2: $a0
	ld   e, e                                        ; $55a3: $5b
	ld   e, l                                        ; $55a4: $5d
	nop                                              ; $55a5: $00
	ld   [bc], a                                     ; $55a6: $02
	rlca                                             ; $55a7: $07
	ld   a, [hl]                                     ; $55a8: $7e
	dec  b                                           ; $55a9: $05
	ld   [bc], a                                     ; $55aa: $02
	ld   [bc], a                                     ; $55ab: $02
	ld   bc, $2000                                   ; $55ac: $01 $00 $20
	nop                                              ; $55af: $00
	rlca                                             ; $55b0: $07
	or   $08                                         ; $55b1: $f6 $08
	ld   [bc], a                                     ; $55b3: $02
	ld   [bc], a                                     ; $55b4: $02
	ld   bc, $2001                                   ; $55b5: $01 $01 $20
	nop                                              ; $55b8: $00
	rlca                                             ; $55b9: $07
	ld   e, c                                        ; $55ba: $59
	ld   [bc], a                                     ; $55bb: $02
	ld   [bc], a                                     ; $55bc: $02
	ld   [bc], a                                     ; $55bd: $02
	ld   bc, $2002                                   ; $55be: $01 $02 $20
	nop                                              ; $55c1: $00
	jr   jr_056_55c7                                 ; $55c2: $18 $03

	ld   bc, $cf02                                   ; $55c4: $01 $02 $cf

jr_056_55c7:
	dec  b                                           ; $55c7: $05
	ld   a, [de]                                     ; $55c8: $1a
	ld   e, c                                        ; $55c9: $59
	sub  a                                           ; $55ca: $97
	ld   a, h                                        ; $55cb: $7c
	inc  b                                           ; $55cc: $04
	ld   d, a                                        ; $55cd: $57
	inc  b                                           ; $55ce: $04
	ld   h, e                                        ; $55cf: $63
	and  b                                           ; $55d0: $a0
	ld   e, e                                        ; $55d1: $5b
	ld   e, l                                        ; $55d2: $5d
	nop                                              ; $55d3: $00
	nop                                              ; $55d4: $00
	and  e                                           ; $55d5: $a3
	and  l                                           ; $55d6: $a5
	db   $ec                                         ; $55d7: $ec
	cp   d                                           ; $55d8: $ba
	ld   e, c                                        ; $55d9: $59
	sub  a                                           ; $55da: $97
	ld   a, h                                        ; $55db: $7c
	inc  b                                           ; $55dc: $04
	ld   d, a                                        ; $55dd: $57
	inc  b                                           ; $55de: $04
	ld   h, e                                        ; $55df: $63
	and  b                                           ; $55e0: $a0
	ld   e, e                                        ; $55e1: $5b
	ld   e, l                                        ; $55e2: $5d
	nop                                              ; $55e3: $00
	ld   bc, $7c6b                                   ; $55e4: $01 $6b $7c
	inc  b                                           ; $55e7: $04
	ld   e, $7c                                      ; $55e8: $1e $7c
	inc  bc                                          ; $55ea: $03
	add  d                                           ; $55eb: $82
	ld   a, h                                        ; $55ec: $7c
	inc  b                                           ; $55ed: $04
	ld   d, a                                        ; $55ee: $57
	inc  b                                           ; $55ef: $04
	ld   h, e                                        ; $55f0: $63
	and  b                                           ; $55f1: $a0
	ld   e, e                                        ; $55f2: $5b
	ld   e, l                                        ; $55f3: $5d
	nop                                              ; $55f4: $00
	ld   [bc], a                                     ; $55f5: $02
	rlca                                             ; $55f6: $07
	call z, $0207                                    ; $55f7: $cc $07 $02
	ld   [bc], a                                     ; $55fa: $02
	ld   bc, $2000                                   ; $55fb: $01 $00 $20
	nop                                              ; $55fe: $00
	rlca                                             ; $55ff: $07
	and  h                                           ; $5600: $a4
	ld   b, $02                                      ; $5601: $06 $02
	ld   [bc], a                                     ; $5603: $02
	ld   bc, $2001                                   ; $5604: $01 $01 $20
	nop                                              ; $5607: $00
	rlca                                             ; $5608: $07
	xor  b                                           ; $5609: $a8
	ld   [bc], a                                     ; $560a: $02
	ld   [bc], a                                     ; $560b: $02
	ld   [bc], a                                     ; $560c: $02
	ld   bc, $2002                                   ; $560d: $01 $02 $20
	nop                                              ; $5610: $00
	jr   @+$04                                       ; $5611: $18 $02

	ld   bc, $7192                                   ; $5613: $01 $92 $71
	ld   a, a                                        ; $5616: $7f
	sbc  b                                           ; $5617: $98
	sub  d                                           ; $5618: $92
	adc  a                                           ; $5619: $8f
	sbc  c                                           ; $561a: $99
	nop                                              ; $561b: $00
	nop                                              ; $561c: $00
	ld   l, e                                        ; $561d: $6b
	ld   a, h                                        ; $561e: $7c
	inc  b                                           ; $561f: $04
	ld   e, $7c                                      ; $5620: $1e $7c
	inc  bc                                          ; $5622: $03
	add  d                                           ; $5623: $82
	ld   a, h                                        ; $5624: $7c
	inc  b                                           ; $5625: $04
	ld   d, a                                        ; $5626: $57
	inc  b                                           ; $5627: $04
	ld   h, e                                        ; $5628: $63
	and  b                                           ; $5629: $a0
	ld   e, e                                        ; $562a: $5b
	ld   e, l                                        ; $562b: $5d
	nop                                              ; $562c: $00
	ld   bc, $d707                                   ; $562d: $01 $07 $d7
	ld   [bc], a                                     ; $5630: $02
	ld   [bc], a                                     ; $5631: $02
	ld   [bc], a                                     ; $5632: $02
	ld   bc, $2000                                   ; $5633: $01 $00 $20
	nop                                              ; $5636: $00
	rlca                                             ; $5637: $07
	cp   a                                           ; $5638: $bf
	ld   bc, $0202                                   ; $5639: $01 $02 $02
	ld   bc, $2001                                   ; $563c: $01 $01 $20
	nop                                              ; $563f: $00
	rrca                                             ; $5640: $0f
	nop                                              ; $5641: $00
	ld   bc, $5001                                   ; $5642: $01 $01 $50
	sbc  [hl]                                        ; $5645: $9e
	sub  d                                           ; $5646: $92
	ld   [hl], c                                     ; $5647: $71
	ld   a, a                                        ; $5648: $7f
	sbc  b                                           ; $5649: $98
	ld   d, d                                        ; $564a: $52
	ld   d, d                                        ; $564b: $52
	ld   [hl], l                                     ; $564c: $75
	ld   h, a                                        ; $564d: $67
	sbc  a                                           ; $564e: $9f
	dec  c                                           ; $564f: $0d
	ld   [hl], l                                     ; $5650: $75
	ld   a, l                                        ; $5651: $7d
	sbc  [hl]                                        ; $5652: $9e
	inc  bc                                          ; $5653: $03
	add  e                                           ; $5654: $83
	dec  b                                           ; $5655: $05
	dec  c                                           ; $5656: $0d
	ld   h, l                                        ; $5657: $65
	adc  h                                           ; $5658: $8c
	ld   h, a                                        ; $5659: $67
	sbc  a                                           ; $565a: $9f
	dec  c                                           ; $565b: $0d
	nop                                              ; $565c: $00
	ld   a, [bc]                                     ; $565d: $0a
	rrca                                             ; $565e: $0f
	add  hl, bc                                      ; $565f: $09
	nop                                              ; $5660: $00
	ld   bc, $546b                                   ; $5661: $01 $6b $54
	ld   e, c                                        ; $5664: $59
	ld   d, d                                        ; $5665: $52
	sbc  a                                           ; $5666: $9f
	dec  c                                           ; $5667: $0d
	ld   [hl], l                                     ; $5668: $75
	sub  b                                           ; $5669: $90
	sbc  [hl]                                        ; $566a: $9e
	inc  b                                           ; $566b: $04
	di                                               ; $566c: $f3
	ld   e, d                                        ; $566d: $5a
	ld   d, b                                        ; $566e: $50
	ld   [hl], c                                     ; $566f: $71
	ld   l, l                                        ; $5670: $6d
	sub  a                                           ; $5671: $97
	dec  c                                           ; $5672: $0d
	ld   d, d                                        ; $5673: $52
	ld   [hl], d                                     ; $5674: $72
	ld   [hl], l                                     ; $5675: $75

Jump_056_5676:
	sub  b                                           ; $5676: $90
	dec  b                                           ; $5677: $05
	db   $10                                         ; $5678: $10
	sbc  c                                           ; $5679: $99
	halt                                             ; $567a: $76
	ld   d, d                                        ; $567b: $52
	ld   d, d                                        ; $567c: $52
	sbc  a                                           ; $567d: $9f
	dec  c                                           ; $567e: $0d
	nop                                              ; $567f: $00
	ld   a, [bc]                                     ; $5680: $0a
	ld   bc, $9166                                   ; $5681: $01 $66 $91
	sbc  [hl]                                        ; $5684: $9e
	ld   e, d                                        ; $5685: $5a
	and  c                                           ; $5686: $a1
	ld   a, [hl]                                     ; $5687: $7e
	sbc  d                                           ; $5688: $9a
	sub  [hl]                                        ; $5689: $96
	sbc  a                                           ; $568a: $9f
	dec  c                                           ; $568b: $0d
	nop                                              ; $568c: $00
	ld   a, [bc]                                     ; $568d: $0a
	nop                                              ; $568e: $00
	rrca                                             ; $568f: $0f
	nop                                              ; $5690: $00
	ld   bc, $6301                                   ; $5691: $01 $01 $63

jr_056_5694:
	ld   e, l                                        ; $5694: $5d
	sub  a                                           ; $5695: $97
	ld   h, e                                        ; $5696: $63
	and  c                                           ; $5697: $a1
	ld   a, h                                        ; $5698: $7c
	inc  b                                           ; $5699: $04
	ld   l, l                                        ; $569a: $6d
	add  [hl]                                        ; $569b: $86
	ld   a, h                                        ; $569c: $7c
	inc  b                                           ; $569d: $04
	ld   d, a                                        ; $569e: $57
	inc  b                                           ; $569f: $04
	ld   h, e                                        ; $56a0: $63
	ld   [hl], c                                     ; $56a1: $71
	ld   [hl], h                                     ; $56a2: $74
	dec  c                                           ; $56a3: $0d
	ld   [hl], a                                     ; $56a4: $77
	ld   d, h                                        ; $56a5: $54
	ld   a, b                                        ; $56a6: $78
	and  c                                           ; $56a7: $a1
	ld   [hl], l                                     ; $56a8: $75
	ld   h, l                                        ; $56a9: $65
	sub  l                                           ; $56aa: $95

jr_056_56ab:
	ld   d, h                                        ; $56ab: $54
	ld   e, c                                        ; $56ac: $59
	ld   sp, hl                                      ; $56ad: $f9
	dec  c                                           ; $56ae: $0d
	nop                                              ; $56af: $00
	ld   a, [bc]                                     ; $56b0: $0a
	rrca                                             ; $56b1: $0f
	add  hl, bc                                      ; $56b2: $09
	nop                                              ; $56b3: $00
	ld   bc, $8e83                                   ; $56b4: $01 $83 $8e
	sbc  [hl]                                        ; $56b7: $9e
	ld   l, e                                        ; $56b8: $6b
	ld   d, h                                        ; $56b9: $54
	ld   l, [hl]                                     ; $56ba: $6e
	ld   a, b                                        ; $56bb: $78
	rst  $38                                         ; $56bc: $ff
	rst  $38                                         ; $56bd: $ff
	dec  c                                           ; $56be: $0d
	nop                                              ; $56bf: $00
	ld   a, [bc]                                     ; $56c0: $0a
	rlca                                             ; $56c1: $07
	ret  nz                                          ; $56c2: $c0

	inc  bc                                          ; $56c3: $03
	inc  bc                                          ; $56c4: $03
	ld   de, $7301                                   ; $56c5: $11 $01 $73
	inc  hl                                          ; $56c8: $23
	nop                                              ; $56c9: $00
	rlca                                             ; $56ca: $07
	rrca                                             ; $56cb: $0f
	inc  b                                           ; $56cc: $04
	inc  bc                                          ; $56cd: $03
	ld   de, $ac01                                   ; $56ce: $11 $01 $ac
	dec  h                                           ; $56d1: $25
	nop                                              ; $56d2: $00
	ld   bc, $5d63                                   ; $56d3: $01 $63 $5d
	sub  a                                           ; $56d6: $97
	ld   e, l                                        ; $56d7: $5d
	and  c                                           ; $56d8: $a1
	ld   a, h                                        ; $56d9: $7c
	sbc  [hl]                                        ; $56da: $9e
	ld   [$5d00], sp                                 ; $56db: $08 $00 $5d
	and  c                                           ; $56de: $a1
	dec  c                                           ; $56df: $0d
	add  [hl]                                        ; $56e0: $86
	ld   a, h                                        ; $56e1: $7c
	inc  b                                           ; $56e2: $04
	ld   d, a                                        ; $56e3: $57
	inc  b                                           ; $56e4: $04
	ld   h, e                                        ; $56e5: $63
	ld   a, l                                        ; $56e6: $7d
	sbc  [hl]                                        ; $56e7: $9e
	adc  h                                           ; $56e8: $8c
	ld   d, b                                        ; $56e9: $50
	adc  h                                           ; $56ea: $8c
	ld   d, b                                        ; $56eb: $50
	dec  c                                           ; $56ec: $0d
	halt                                             ; $56ed: $76
	ld   d, d                                        ; $56ee: $52
	ld   [hl], c                                     ; $56ef: $71
	ld   l, l                                        ; $56f0: $6d
	halt                                             ; $56f1: $76
	ld   h, c                                        ; $56f2: $61
	sbc  e                                           ; $56f3: $9b
	ld   e, c                                        ; $56f4: $59
	ld   a, b                                        ; $56f5: $78
	sbc  a                                           ; $56f6: $9f
	dec  c                                           ; $56f7: $0d
	nop                                              ; $56f8: $00
	ld   a, [bc]                                     ; $56f9: $0a
	ld   bc, $5d76                                   ; $56fa: $01 $76 $5d
	ld   a, c                                        ; $56fd: $79
	ld   [bc], a                                     ; $56fe: $02
	jr   z, jr_056_5753                              ; $56ff: $28 $52

	dec  b                                           ; $5701: $05
	jr   nz, jr_056_5694                             ; $5702: $20 $90

	ld   [bc], a                                     ; $5704: $02
	jp   nz, Jump_056_7859                           ; $5705: $c2 $59 $78

	ld   d, d                                        ; $5708: $52
	ld   h, l                                        ; $5709: $65
	rst  $38                                         ; $570a: $ff
	rst  $38                                         ; $570b: $ff
	dec  c                                           ; $570c: $0d
	ld   e, c                                        ; $570d: $59
	halt                                             ; $570e: $76
	ld   d, d                                        ; $570f: $52
	ld   [hl], c                                     ; $5710: $71
	ld   [hl], h                                     ; $5711: $74
	sbc  [hl]                                        ; $5712: $9e
	ld   d, d                                        ; $5713: $52
	ld   d, d                                        ; $5714: $52
	halt                                             ; $5715: $76
	ld   d, d                                        ; $5716: $52
	ld   d, h                                        ; $5717: $54
	dec  b                                           ; $5718: $05
	jr   nz, jr_056_56ab                             ; $5719: $20 $90

	dec  c                                           ; $571b: $0d
	ld   [bc], a                                     ; $571c: $02
	jp   nz, Jump_056_7859                           ; $571d: $c2 $59 $78

	ld   d, d                                        ; $5720: $52
	ld   a, b                                        ; $5721: $78
	sbc  a                                           ; $5722: $9f
	dec  c                                           ; $5723: $0d
	nop                                              ; $5724: $00
	ld   a, [bc]                                     ; $5725: $0a
	ld   b, $1c                                      ; $5726: $06 $1c
	ld   a, [bc]                                     ; $5728: $0a
	ld   bc, $5d63                                   ; $5729: $01 $63 $5d
	sub  a                                           ; $572c: $97
	ld   e, l                                        ; $572d: $5d
	and  c                                           ; $572e: $a1
	ld   a, h                                        ; $572f: $7c
	sbc  [hl]                                        ; $5730: $9e
	ld   [$5d00], sp                                 ; $5731: $08 $00 $5d
	and  c                                           ; $5734: $a1
	dec  c                                           ; $5735: $0d
	add  [hl]                                        ; $5736: $86
	ld   a, h                                        ; $5737: $7c
	inc  b                                           ; $5738: $04
	ld   d, a                                        ; $5739: $57
	inc  b                                           ; $573a: $04
	ld   h, e                                        ; $573b: $63
	ld   a, l                                        ; $573c: $7d
	rst  $38                                         ; $573d: $ff
	rst  $38                                         ; $573e: $ff
	dec  c                                           ; $573f: $0d
	ld   d, b                                        ; $5740: $50
	adc  h                                           ; $5741: $8c
	sbc  b                                           ; $5742: $98
	sub  [hl]                                        ; $5743: $96
	ld   e, l                                        ; $5744: $5d
	ld   a, b                                        ; $5745: $78
	ld   d, d                                        ; $5746: $52
	ld   a, b                                        ; $5747: $78
	sbc  a                                           ; $5748: $9f
	dec  c                                           ; $5749: $0d
	nop                                              ; $574a: $00
	ld   a, [bc]                                     ; $574b: $0a
	ld   bc, $7190                                   ; $574c: $01 $90 $71
	halt                                             ; $574f: $76
	ld   [bc], a                                     ; $5750: $02
	ld   a, [de]                                     ; $5751: $1a
	inc  bc                                          ; $5752: $03

jr_056_5753:
	ld   l, e                                        ; $5753: $6b
	ld   a, h                                        ; $5754: $7c
	ld   [bc], a                                     ; $5755: $02
	and  c                                           ; $5756: $a1
	inc  bc                                          ; $5757: $03
	and  b                                           ; $5758: $a0
	ld   l, a                                        ; $5759: $6f
	and  b                                           ; $575a: $a0
	dec  c                                           ; $575b: $0d
	ld   [bc], a                                     ; $575c: $02
	ld   h, l                                        ; $575d: $65
	ld   d, [hl]                                     ; $575e: $56
	ld   [hl], h                                     ; $575f: $74
	ld   [bc], a                                     ; $5760: $02
	ld   a, a                                        ; $5761: $7f
	inc  b                                           ; $5762: $04
	dec  de                                          ; $5763: $1b
	ld   h, l                                        ; $5764: $65
	ld   l, l                                        ; $5765: $6d
	adc  c                                           ; $5766: $89
	ld   d, h                                        ; $5767: $54
	ld   e, d                                        ; $5768: $5a
	ld   d, d                                        ; $5769: $52
	ld   d, d                                        ; $576a: $52
	halt                                             ; $576b: $76
	dec  c                                           ; $576c: $0d
	dec  b                                           ; $576d: $05
	pop  de                                          ; $576e: $d1
	ld   d, h                                        ; $576f: $54
	ld   l, h                                        ; $5770: $6c
	sbc  a                                           ; $5771: $9f
	dec  c                                           ; $5772: $0d
	nop                                              ; $5773: $00
	ld   a, [bc]                                     ; $5774: $0a
	ld   b, $1c                                      ; $5775: $06 $1c
	ld   a, [bc]                                     ; $5777: $0a
	ld   bc, $5d63                                   ; $5778: $01 $63 $5d
	sub  a                                           ; $577b: $97
	ld   e, l                                        ; $577c: $5d
	and  c                                           ; $577d: $a1
	ld   a, h                                        ; $577e: $7c
	sbc  [hl]                                        ; $577f: $9e
	ld   [$5d00], sp                                 ; $5780: $08 $00 $5d
	and  c                                           ; $5783: $a1
	dec  c                                           ; $5784: $0d
	add  [hl]                                        ; $5785: $86
	ld   a, h                                        ; $5786: $7c
	inc  b                                           ; $5787: $04
	ld   d, a                                        ; $5788: $57
	inc  b                                           ; $5789: $04
	ld   h, e                                        ; $578a: $63
	ld   a, l                                        ; $578b: $7d
	sbc  [hl]                                        ; $578c: $9e
	ld   e, c                                        ; $578d: $59
	ld   a, b                                        ; $578e: $78
	sbc  b                                           ; $578f: $98
	ld   d, d                                        ; $5790: $52
	ld   d, d                                        ; $5791: $52
	dec  c                                           ; $5792: $0d
	halt                                             ; $5793: $76
	dec  b                                           ; $5794: $05
	pop  de                                          ; $5795: $d1
	ld   d, h                                        ; $5796: $54
	ld   l, h                                        ; $5797: $6c
	sbc  a                                           ; $5798: $9f
	dec  c                                           ; $5799: $0d
	nop                                              ; $579a: $00
	ld   a, [bc]                                     ; $579b: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $579c: $01 $02 $ca
	sub  b                                           ; $579f: $90
	ld   l, e                                        ; $57a0: $6b
	sbc  d                                           ; $57a1: $9a
	ld   a, c                                        ; $57a2: $79
	ld   [bc], a                                     ; $57a3: $02
	add  hl, bc                                      ; $57a4: $09
	ld   d, [hl]                                     ; $57a5: $56
	sub  a                                           ; $57a6: $97
	sbc  d                                           ; $57a7: $9a
	sbc  c                                           ; $57a8: $99
	sub  [hl]                                        ; $57a9: $96
	ld   d, h                                        ; $57aa: $54
	ld   a, c                                        ; $57ab: $79
	dec  c                                           ; $57ac: $0d
	ld   e, d                                        ; $57ad: $5a
	and  c                                           ; $57ae: $a1
	ld   a, [hl]                                     ; $57af: $7e
	sbc  c                                           ; $57b0: $99
	and  c                                           ; $57b1: $a1
	ld   l, [hl]                                     ; $57b2: $6e
	ld   l, h                                        ; $57b3: $6c
	sbc  a                                           ; $57b4: $9f
	dec  c                                           ; $57b5: $0d
	nop                                              ; $57b6: $00
	ld   a, [bc]                                     ; $57b7: $0a
	ld   b, $1c                                      ; $57b8: $06 $1c
	ld   a, [bc]                                     ; $57ba: $0a
	rrca                                             ; $57bb: $0f
	nop                                              ; $57bc: $00
	ld   bc, $6701                                   ; $57bd: $01 $01 $67

jr_056_57c0:
	adc  l                                           ; $57c0: $8d
	sbc  d                                           ; $57c1: $9a
	ld   h, e                                        ; $57c2: $63
	and  c                                           ; $57c3: $a1
	ld   a, h                                        ; $57c4: $7c
	inc  b                                           ; $57c5: $04
	ld   l, l                                        ; $57c6: $6d
	add  [hl]                                        ; $57c7: $86
	ld   a, h                                        ; $57c8: $7c
	inc  b                                           ; $57c9: $04
	ld   d, a                                        ; $57ca: $57
	inc  b                                           ; $57cb: $04
	ld   h, e                                        ; $57cc: $63
	ld   [hl], c                                     ; $57cd: $71
	ld   [hl], h                                     ; $57ce: $74
	dec  c                                           ; $57cf: $0d
	ld   [hl], a                                     ; $57d0: $77
	ld   d, h                                        ; $57d1: $54
	ld   a, b                                        ; $57d2: $78
	and  c                                           ; $57d3: $a1
	ld   [hl], l                                     ; $57d4: $75
	ld   h, l                                        ; $57d5: $65
	sub  l                                           ; $57d6: $95

jr_056_57d7:
	ld   d, h                                        ; $57d7: $54
	ld   e, c                                        ; $57d8: $59
	ld   sp, hl                                      ; $57d9: $f9
	dec  c                                           ; $57da: $0d
	nop                                              ; $57db: $00
	ld   a, [bc]                                     ; $57dc: $0a
	rrca                                             ; $57dd: $0f
	add  hl, bc                                      ; $57de: $09
	nop                                              ; $57df: $00
	ld   bc, $8e83                                   ; $57e0: $01 $83 $8e
	sbc  [hl]                                        ; $57e3: $9e
	ld   l, e                                        ; $57e4: $6b
	ld   d, h                                        ; $57e5: $54
	ld   l, [hl]                                     ; $57e6: $6e
	ld   a, b                                        ; $57e7: $78
	rst  $38                                         ; $57e8: $ff
	rst  $38                                         ; $57e9: $ff
	dec  c                                           ; $57ea: $0d
	nop                                              ; $57eb: $00
	ld   a, [bc]                                     ; $57ec: $0a
	rlca                                             ; $57ed: $07
	db   $ec                                         ; $57ee: $ec
	inc  b                                           ; $57ef: $04
	inc  bc                                          ; $57f0: $03
	ld   [de], a                                     ; $57f1: $12
	ld   bc, $2373                                   ; $57f2: $01 $73 $23
	nop                                              ; $57f5: $00
	rlca                                             ; $57f6: $07
	dec  sp                                          ; $57f7: $3b
	dec  b                                           ; $57f8: $05
	inc  bc                                          ; $57f9: $03
	ld   [de], a                                     ; $57fa: $12
	ld   bc, $25ac                                   ; $57fb: $01 $ac $25
	nop                                              ; $57fe: $00
	ld   bc, $8d67                                   ; $57ff: $01 $67 $8d
	sbc  d                                           ; $5802: $9a
	ld   e, l                                        ; $5803: $5d
	and  c                                           ; $5804: $a1
	ld   a, h                                        ; $5805: $7c
	sbc  [hl]                                        ; $5806: $9e
	ld   [$5d00], sp                                 ; $5807: $08 $00 $5d
	and  c                                           ; $580a: $a1
	dec  c                                           ; $580b: $0d
	add  [hl]                                        ; $580c: $86
	ld   a, h                                        ; $580d: $7c
	inc  b                                           ; $580e: $04
	ld   d, a                                        ; $580f: $57
	inc  b                                           ; $5810: $04
	ld   h, e                                        ; $5811: $63
	ld   a, l                                        ; $5812: $7d
	sbc  [hl]                                        ; $5813: $9e
	adc  h                                           ; $5814: $8c
	ld   d, b                                        ; $5815: $50
	adc  h                                           ; $5816: $8c
	ld   d, b                                        ; $5817: $50
	dec  c                                           ; $5818: $0d
	halt                                             ; $5819: $76
	ld   d, d                                        ; $581a: $52
	ld   [hl], c                                     ; $581b: $71
	ld   l, l                                        ; $581c: $6d
	halt                                             ; $581d: $76
	ld   h, c                                        ; $581e: $61
	sbc  e                                           ; $581f: $9b
	ld   e, c                                        ; $5820: $59
	ld   a, b                                        ; $5821: $78
	sbc  a                                           ; $5822: $9f
	dec  c                                           ; $5823: $0d
	nop                                              ; $5824: $00
	ld   a, [bc]                                     ; $5825: $0a
	ld   bc, $5d76                                   ; $5826: $01 $76 $5d
	ld   a, c                                        ; $5829: $79
	ld   [bc], a                                     ; $582a: $02
	jr   z, jr_056_587f                              ; $582b: $28 $52

	dec  b                                           ; $582d: $05
	jr   nz, jr_056_57c0                             ; $582e: $20 $90

	ld   [bc], a                                     ; $5830: $02
	jp   nz, Jump_056_7859                           ; $5831: $c2 $59 $78

	ld   d, d                                        ; $5834: $52
	ld   h, l                                        ; $5835: $65
	rst  $38                                         ; $5836: $ff
	rst  $38                                         ; $5837: $ff
	dec  c                                           ; $5838: $0d
	ld   e, c                                        ; $5839: $59
	halt                                             ; $583a: $76
	ld   d, d                                        ; $583b: $52
	ld   [hl], c                                     ; $583c: $71
	ld   [hl], h                                     ; $583d: $74
	sbc  [hl]                                        ; $583e: $9e
	ld   d, d                                        ; $583f: $52
	ld   d, d                                        ; $5840: $52
	halt                                             ; $5841: $76
	ld   d, d                                        ; $5842: $52
	ld   d, h                                        ; $5843: $54
	dec  b                                           ; $5844: $05
	jr   nz, jr_056_57d7                             ; $5845: $20 $90

	dec  c                                           ; $5847: $0d
	ld   [bc], a                                     ; $5848: $02
	jp   nz, Jump_056_7859                           ; $5849: $c2 $59 $78

	ld   d, d                                        ; $584c: $52
	ld   a, b                                        ; $584d: $78
	sbc  a                                           ; $584e: $9f
	dec  c                                           ; $584f: $0d
	nop                                              ; $5850: $00
	ld   a, [bc]                                     ; $5851: $0a
	ld   b, $1c                                      ; $5852: $06 $1c
	ld   a, [bc]                                     ; $5854: $0a
	ld   bc, $8d67                                   ; $5855: $01 $67 $8d
	sbc  d                                           ; $5858: $9a
	ld   e, l                                        ; $5859: $5d
	and  c                                           ; $585a: $a1
	ld   a, h                                        ; $585b: $7c
	sbc  [hl]                                        ; $585c: $9e
	ld   [$5d00], sp                                 ; $585d: $08 $00 $5d
	and  c                                           ; $5860: $a1
	dec  c                                           ; $5861: $0d
	add  [hl]                                        ; $5862: $86
	ld   a, h                                        ; $5863: $7c
	inc  b                                           ; $5864: $04
	ld   d, a                                        ; $5865: $57
	inc  b                                           ; $5866: $04
	ld   h, e                                        ; $5867: $63
	ld   a, l                                        ; $5868: $7d
	rst  $38                                         ; $5869: $ff
	rst  $38                                         ; $586a: $ff
	dec  c                                           ; $586b: $0d
	ld   d, b                                        ; $586c: $50
	adc  h                                           ; $586d: $8c
	sbc  b                                           ; $586e: $98
	sub  [hl]                                        ; $586f: $96
	ld   e, l                                        ; $5870: $5d
	ld   a, b                                        ; $5871: $78
	ld   d, d                                        ; $5872: $52
	ld   a, b                                        ; $5873: $78
	sbc  a                                           ; $5874: $9f
	dec  c                                           ; $5875: $0d
	nop                                              ; $5876: $00
	ld   a, [bc]                                     ; $5877: $0a
	ld   bc, $7190                                   ; $5878: $01 $90 $71
	halt                                             ; $587b: $76
	ld   [bc], a                                     ; $587c: $02
	ld   a, [de]                                     ; $587d: $1a
	inc  bc                                          ; $587e: $03

jr_056_587f:
	ld   l, e                                        ; $587f: $6b
	ld   a, h                                        ; $5880: $7c
	ld   [bc], a                                     ; $5881: $02
	and  c                                           ; $5882: $a1
	inc  bc                                          ; $5883: $03
	and  b                                           ; $5884: $a0
	ld   l, a                                        ; $5885: $6f
	and  b                                           ; $5886: $a0
	dec  c                                           ; $5887: $0d
	ld   [bc], a                                     ; $5888: $02
	ld   h, l                                        ; $5889: $65
	ld   d, [hl]                                     ; $588a: $56
	ld   [hl], h                                     ; $588b: $74
	ld   [bc], a                                     ; $588c: $02
	ld   a, a                                        ; $588d: $7f
	inc  b                                           ; $588e: $04
	dec  de                                          ; $588f: $1b
	ld   h, l                                        ; $5890: $65
	ld   l, l                                        ; $5891: $6d
	adc  c                                           ; $5892: $89
	ld   d, h                                        ; $5893: $54
	ld   e, d                                        ; $5894: $5a
	ld   d, d                                        ; $5895: $52
	ld   d, d                                        ; $5896: $52
	halt                                             ; $5897: $76
	dec  c                                           ; $5898: $0d
	dec  b                                           ; $5899: $05
	pop  de                                          ; $589a: $d1
	ld   d, h                                        ; $589b: $54
	ld   l, h                                        ; $589c: $6c
	sbc  a                                           ; $589d: $9f
	dec  c                                           ; $589e: $0d
	nop                                              ; $589f: $00
	ld   a, [bc]                                     ; $58a0: $0a
	ld   b, $1c                                      ; $58a1: $06 $1c
	ld   a, [bc]                                     ; $58a3: $0a
	ld   bc, $8d67                                   ; $58a4: $01 $67 $8d
	sbc  d                                           ; $58a7: $9a
	ld   e, l                                        ; $58a8: $5d
	and  c                                           ; $58a9: $a1
	ld   a, h                                        ; $58aa: $7c
	sbc  [hl]                                        ; $58ab: $9e
	ld   [$5d00], sp                                 ; $58ac: $08 $00 $5d
	and  c                                           ; $58af: $a1
	dec  c                                           ; $58b0: $0d
	add  [hl]                                        ; $58b1: $86
	ld   a, h                                        ; $58b2: $7c
	inc  b                                           ; $58b3: $04
	ld   d, a                                        ; $58b4: $57
	inc  b                                           ; $58b5: $04
	ld   h, e                                        ; $58b6: $63
	ld   a, l                                        ; $58b7: $7d
	sbc  [hl]                                        ; $58b8: $9e
	ld   e, c                                        ; $58b9: $59
	ld   a, b                                        ; $58ba: $78
	sbc  b                                           ; $58bb: $98
	ld   d, d                                        ; $58bc: $52
	ld   d, d                                        ; $58bd: $52
	dec  c                                           ; $58be: $0d
	halt                                             ; $58bf: $76
	dec  b                                           ; $58c0: $05
	pop  de                                          ; $58c1: $d1
	ld   d, h                                        ; $58c2: $54
	ld   l, h                                        ; $58c3: $6c
	sbc  a                                           ; $58c4: $9f
	dec  c                                           ; $58c5: $0d
	nop                                              ; $58c6: $00
	ld   a, [bc]                                     ; $58c7: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $58c8: $01 $02 $ca
	sub  b                                           ; $58cb: $90
	ld   l, e                                        ; $58cc: $6b
	sbc  d                                           ; $58cd: $9a
	ld   a, c                                        ; $58ce: $79
	ld   [bc], a                                     ; $58cf: $02
	add  hl, bc                                      ; $58d0: $09
	ld   d, [hl]                                     ; $58d1: $56
	sub  a                                           ; $58d2: $97
	sbc  d                                           ; $58d3: $9a
	sbc  c                                           ; $58d4: $99
	sub  [hl]                                        ; $58d5: $96
	ld   d, h                                        ; $58d6: $54
	ld   a, c                                        ; $58d7: $79
	dec  c                                           ; $58d8: $0d
	ld   e, d                                        ; $58d9: $5a
	and  c                                           ; $58da: $a1
	ld   a, [hl]                                     ; $58db: $7e
	sbc  c                                           ; $58dc: $99
	and  c                                           ; $58dd: $a1
	ld   l, [hl]                                     ; $58de: $6e
	ld   l, h                                        ; $58df: $6c
	sbc  a                                           ; $58e0: $9f
	dec  c                                           ; $58e1: $0d
	nop                                              ; $58e2: $00
	ld   a, [bc]                                     ; $58e3: $0a
	ld   b, $1c                                      ; $58e4: $06 $1c
	ld   a, [bc]                                     ; $58e6: $0a
	rrca                                             ; $58e7: $0f
	nop                                              ; $58e8: $00
	ld   bc, $df01                                   ; $58e9: $01 $01 $df
	db   $ec                                         ; $58ec: $ec
	and  e                                           ; $58ed: $a3
	ld   h, e                                        ; $58ee: $63
	and  c                                           ; $58ef: $a1
	ld   a, h                                        ; $58f0: $7c
	inc  b                                           ; $58f1: $04
	ld   l, l                                        ; $58f2: $6d
	add  [hl]                                        ; $58f3: $86
	ld   a, h                                        ; $58f4: $7c
	inc  b                                           ; $58f5: $04
	ld   d, a                                        ; $58f6: $57
	inc  b                                           ; $58f7: $04
	ld   h, e                                        ; $58f8: $63
	ld   [hl], c                                     ; $58f9: $71
	ld   [hl], h                                     ; $58fa: $74
	dec  c                                           ; $58fb: $0d
	ld   [hl], a                                     ; $58fc: $77
	ld   d, h                                        ; $58fd: $54
	ld   a, b                                        ; $58fe: $78
	and  c                                           ; $58ff: $a1
	ld   [hl], l                                     ; $5900: $75

jr_056_5901:
	ld   h, l                                        ; $5901: $65
	sub  l                                           ; $5902: $95
	ld   d, h                                        ; $5903: $54
	ld   e, c                                        ; $5904: $59
	ld   sp, hl                                      ; $5905: $f9
	dec  c                                           ; $5906: $0d
	nop                                              ; $5907: $00
	ld   a, [bc]                                     ; $5908: $0a
	rrca                                             ; $5909: $0f
	add  hl, bc                                      ; $590a: $09
	nop                                              ; $590b: $00
	ld   bc, $8e83                                   ; $590c: $01 $83 $8e
	sbc  [hl]                                        ; $590f: $9e
	ld   l, e                                        ; $5910: $6b
	ld   d, h                                        ; $5911: $54
	ld   l, [hl]                                     ; $5912: $6e
	ld   a, b                                        ; $5913: $78
	rst  $38                                         ; $5914: $ff
	rst  $38                                         ; $5915: $ff
	dec  c                                           ; $5916: $0d
	nop                                              ; $5917: $00
	ld   a, [bc]                                     ; $5918: $0a
	rlca                                             ; $5919: $07
	ld   d, $06                                      ; $591a: $16 $06
	inc  bc                                          ; $591c: $03
	inc  de                                          ; $591d: $13
	ld   bc, $2373                                   ; $591e: $01 $73 $23
	nop                                              ; $5921: $00
	rlca                                             ; $5922: $07
	ld   h, e                                        ; $5923: $63
	ld   b, $03                                      ; $5924: $06 $03
	inc  de                                          ; $5926: $13
	ld   bc, $25ac                                   ; $5927: $01 $ac $25
	nop                                              ; $592a: $00
	ld   bc, $ecdf                                   ; $592b: $01 $df $ec
	and  e                                           ; $592e: $a3
	ld   a, h                                        ; $592f: $7c
	sbc  [hl]                                        ; $5930: $9e
	ld   [$5d00], sp                                 ; $5931: $08 $00 $5d
	and  c                                           ; $5934: $a1
	dec  c                                           ; $5935: $0d
	add  [hl]                                        ; $5936: $86
	ld   a, h                                        ; $5937: $7c
	inc  b                                           ; $5938: $04
	ld   d, a                                        ; $5939: $57
	inc  b                                           ; $593a: $04
	ld   h, e                                        ; $593b: $63
	ld   a, l                                        ; $593c: $7d
	sbc  [hl]                                        ; $593d: $9e
	adc  h                                           ; $593e: $8c
	ld   d, b                                        ; $593f: $50
	adc  h                                           ; $5940: $8c
	ld   d, b                                        ; $5941: $50
	dec  c                                           ; $5942: $0d
	halt                                             ; $5943: $76
	ld   d, d                                        ; $5944: $52
	ld   [hl], c                                     ; $5945: $71
	ld   l, l                                        ; $5946: $6d
	halt                                             ; $5947: $76
	ld   h, c                                        ; $5948: $61
	sbc  e                                           ; $5949: $9b
	ld   e, c                                        ; $594a: $59
	ld   a, b                                        ; $594b: $78
	sbc  a                                           ; $594c: $9f
	dec  c                                           ; $594d: $0d
	nop                                              ; $594e: $00
	ld   a, [bc]                                     ; $594f: $0a
	ld   bc, $5d76                                   ; $5950: $01 $76 $5d
	ld   a, c                                        ; $5953: $79
	ld   [bc], a                                     ; $5954: $02
	jr   z, jr_056_59a9                              ; $5955: $28 $52

	dec  b                                           ; $5957: $05
	jr   nz, @-$6e                                   ; $5958: $20 $90

	ld   [bc], a                                     ; $595a: $02
	jp   nz, Jump_056_7859                           ; $595b: $c2 $59 $78

	ld   d, d                                        ; $595e: $52
	ld   h, l                                        ; $595f: $65
	rst  $38                                         ; $5960: $ff
	rst  $38                                         ; $5961: $ff
	dec  c                                           ; $5962: $0d
	ld   e, c                                        ; $5963: $59
	halt                                             ; $5964: $76
	ld   d, d                                        ; $5965: $52
	ld   [hl], c                                     ; $5966: $71
	ld   [hl], h                                     ; $5967: $74
	sbc  [hl]                                        ; $5968: $9e
	ld   d, d                                        ; $5969: $52
	ld   d, d                                        ; $596a: $52
	halt                                             ; $596b: $76
	ld   d, d                                        ; $596c: $52
	ld   d, h                                        ; $596d: $54
	dec  b                                           ; $596e: $05
	jr   nz, jr_056_5901                             ; $596f: $20 $90

	dec  c                                           ; $5971: $0d
	ld   [bc], a                                     ; $5972: $02
	jp   nz, Jump_056_7859                           ; $5973: $c2 $59 $78

	ld   d, d                                        ; $5976: $52
	ld   a, b                                        ; $5977: $78
	sbc  a                                           ; $5978: $9f
	dec  c                                           ; $5979: $0d
	nop                                              ; $597a: $00
	ld   a, [bc]                                     ; $597b: $0a
	ld   b, $1c                                      ; $597c: $06 $1c
	ld   a, [bc]                                     ; $597e: $0a
	ld   bc, $ecdf                                   ; $597f: $01 $df $ec
	and  e                                           ; $5982: $a3
	ld   a, h                                        ; $5983: $7c
	sbc  [hl]                                        ; $5984: $9e
	ld   [$5d00], sp                                 ; $5985: $08 $00 $5d
	and  c                                           ; $5988: $a1
	dec  c                                           ; $5989: $0d
	add  [hl]                                        ; $598a: $86
	ld   a, h                                        ; $598b: $7c
	inc  b                                           ; $598c: $04
	ld   d, a                                        ; $598d: $57
	inc  b                                           ; $598e: $04
	ld   h, e                                        ; $598f: $63
	ld   a, l                                        ; $5990: $7d
	rst  $38                                         ; $5991: $ff
	rst  $38                                         ; $5992: $ff
	dec  c                                           ; $5993: $0d
	ld   d, b                                        ; $5994: $50
	adc  h                                           ; $5995: $8c
	sbc  b                                           ; $5996: $98
	sub  [hl]                                        ; $5997: $96
	ld   e, l                                        ; $5998: $5d
	ld   a, b                                        ; $5999: $78
	ld   d, d                                        ; $599a: $52
	ld   a, b                                        ; $599b: $78
	sbc  a                                           ; $599c: $9f
	dec  c                                           ; $599d: $0d
	nop                                              ; $599e: $00
	ld   a, [bc]                                     ; $599f: $0a
	ld   bc, $7190                                   ; $59a0: $01 $90 $71
	halt                                             ; $59a3: $76
	ld   [bc], a                                     ; $59a4: $02
	ld   a, [de]                                     ; $59a5: $1a
	inc  bc                                          ; $59a6: $03
	ld   l, e                                        ; $59a7: $6b
	ld   a, h                                        ; $59a8: $7c

jr_056_59a9:
	ld   [bc], a                                     ; $59a9: $02
	and  c                                           ; $59aa: $a1
	inc  bc                                          ; $59ab: $03
	and  b                                           ; $59ac: $a0
	ld   l, a                                        ; $59ad: $6f
	and  b                                           ; $59ae: $a0
	dec  c                                           ; $59af: $0d
	ld   [bc], a                                     ; $59b0: $02
	ld   h, l                                        ; $59b1: $65
	ld   d, [hl]                                     ; $59b2: $56
	ld   [hl], h                                     ; $59b3: $74
	ld   [bc], a                                     ; $59b4: $02
	ld   a, a                                        ; $59b5: $7f
	inc  b                                           ; $59b6: $04
	dec  de                                          ; $59b7: $1b
	ld   h, l                                        ; $59b8: $65
	ld   l, l                                        ; $59b9: $6d
	adc  c                                           ; $59ba: $89
	ld   d, h                                        ; $59bb: $54
	ld   e, d                                        ; $59bc: $5a
	ld   d, d                                        ; $59bd: $52
	ld   d, d                                        ; $59be: $52
	halt                                             ; $59bf: $76
	dec  c                                           ; $59c0: $0d
	dec  b                                           ; $59c1: $05
	pop  de                                          ; $59c2: $d1
	ld   d, h                                        ; $59c3: $54
	ld   l, h                                        ; $59c4: $6c
	sbc  a                                           ; $59c5: $9f
	dec  c                                           ; $59c6: $0d
	nop                                              ; $59c7: $00
	ld   a, [bc]                                     ; $59c8: $0a
	ld   b, $1c                                      ; $59c9: $06 $1c
	ld   a, [bc]                                     ; $59cb: $0a
	ld   bc, $ecdf                                   ; $59cc: $01 $df $ec
	and  e                                           ; $59cf: $a3
	ld   a, h                                        ; $59d0: $7c
	sbc  [hl]                                        ; $59d1: $9e
	ld   [$5d00], sp                                 ; $59d2: $08 $00 $5d
	and  c                                           ; $59d5: $a1
	dec  c                                           ; $59d6: $0d
	add  [hl]                                        ; $59d7: $86
	ld   a, h                                        ; $59d8: $7c
	inc  b                                           ; $59d9: $04
	ld   d, a                                        ; $59da: $57
	inc  b                                           ; $59db: $04
	ld   h, e                                        ; $59dc: $63
	ld   a, l                                        ; $59dd: $7d
	sbc  [hl]                                        ; $59de: $9e
	ld   e, c                                        ; $59df: $59
	ld   a, b                                        ; $59e0: $78
	sbc  b                                           ; $59e1: $98
	ld   d, d                                        ; $59e2: $52
	ld   d, d                                        ; $59e3: $52
	dec  c                                           ; $59e4: $0d
	halt                                             ; $59e5: $76
	dec  b                                           ; $59e6: $05
	pop  de                                          ; $59e7: $d1
	ld   d, h                                        ; $59e8: $54
	ld   l, h                                        ; $59e9: $6c
	sbc  a                                           ; $59ea: $9f
	dec  c                                           ; $59eb: $0d
	nop                                              ; $59ec: $00
	ld   a, [bc]                                     ; $59ed: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $59ee: $01 $02 $ca
	sub  b                                           ; $59f1: $90
	ld   l, e                                        ; $59f2: $6b
	sbc  d                                           ; $59f3: $9a
	ld   a, c                                        ; $59f4: $79
	ld   [bc], a                                     ; $59f5: $02
	add  hl, bc                                      ; $59f6: $09
	ld   d, [hl]                                     ; $59f7: $56
	sub  a                                           ; $59f8: $97
	sbc  d                                           ; $59f9: $9a
	sbc  c                                           ; $59fa: $99
	sub  [hl]                                        ; $59fb: $96
	ld   d, h                                        ; $59fc: $54
	ld   a, c                                        ; $59fd: $79
	dec  c                                           ; $59fe: $0d
	ld   e, d                                        ; $59ff: $5a
	and  c                                           ; $5a00: $a1
	ld   a, [hl]                                     ; $5a01: $7e
	sbc  c                                           ; $5a02: $99
	and  c                                           ; $5a03: $a1
	ld   l, [hl]                                     ; $5a04: $6e
	ld   l, h                                        ; $5a05: $6c
	sbc  a                                           ; $5a06: $9f
	dec  c                                           ; $5a07: $0d
	nop                                              ; $5a08: $00
	ld   a, [bc]                                     ; $5a09: $0a
	ld   b, $1c                                      ; $5a0a: $06 $1c
	ld   a, [bc]                                     ; $5a0c: $0a
	rrca                                             ; $5a0d: $0f
	nop                                              ; $5a0e: $00
	ld   bc, $a301                                   ; $5a0f: $01 $01 $a3
	and  l                                           ; $5a12: $a5
	db   $ec                                         ; $5a13: $ec
	cp   d                                           ; $5a14: $ba
	ld   a, h                                        ; $5a15: $7c
	inc  b                                           ; $5a16: $04
	ld   l, l                                        ; $5a17: $6d
	add  [hl]                                        ; $5a18: $86
	ld   a, h                                        ; $5a19: $7c
	inc  b                                           ; $5a1a: $04
	ld   d, a                                        ; $5a1b: $57
	inc  b                                           ; $5a1c: $04
	ld   h, e                                        ; $5a1d: $63
	ld   [hl], c                                     ; $5a1e: $71
	ld   [hl], h                                     ; $5a1f: $74
	dec  c                                           ; $5a20: $0d
	ld   [hl], a                                     ; $5a21: $77
	ld   d, h                                        ; $5a22: $54
	ld   a, b                                        ; $5a23: $78
	and  c                                           ; $5a24: $a1
	ld   [hl], l                                     ; $5a25: $75
	ld   h, l                                        ; $5a26: $65

jr_056_5a27:
	sub  l                                           ; $5a27: $95
	ld   d, h                                        ; $5a28: $54
	ld   e, c                                        ; $5a29: $59
	ld   sp, hl                                      ; $5a2a: $f9
	dec  c                                           ; $5a2b: $0d
	nop                                              ; $5a2c: $00
	ld   a, [bc]                                     ; $5a2d: $0a
	rrca                                             ; $5a2e: $0f
	add  hl, bc                                      ; $5a2f: $09
	nop                                              ; $5a30: $00
	ld   bc, $8e83                                   ; $5a31: $01 $83 $8e
	sbc  [hl]                                        ; $5a34: $9e
	ld   l, e                                        ; $5a35: $6b
	ld   d, h                                        ; $5a36: $54
	ld   l, [hl]                                     ; $5a37: $6e
	ld   a, b                                        ; $5a38: $78
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	dec  c                                           ; $5a3b: $0d
	nop                                              ; $5a3c: $00
	ld   a, [bc]                                     ; $5a3d: $0a
	rlca                                             ; $5a3e: $07
	inc  a                                           ; $5a3f: $3c
	rlca                                             ; $5a40: $07
	inc  bc                                          ; $5a41: $03
	inc  d                                           ; $5a42: $14
	ld   bc, $2373                                   ; $5a43: $01 $73 $23
	nop                                              ; $5a46: $00
	rlca                                             ; $5a47: $07
	adc  d                                           ; $5a48: $8a
	rlca                                             ; $5a49: $07
	inc  bc                                          ; $5a4a: $03
	inc  d                                           ; $5a4b: $14
	ld   bc, $25ac                                   ; $5a4c: $01 $ac $25
	nop                                              ; $5a4f: $00
	ld   bc, $a5a3                                   ; $5a50: $01 $a3 $a5
	db   $ec                                         ; $5a53: $ec
	cp   d                                           ; $5a54: $ba
	ld   a, h                                        ; $5a55: $7c
	sbc  [hl]                                        ; $5a56: $9e
	ld   [$5d00], sp                                 ; $5a57: $08 $00 $5d
	and  c                                           ; $5a5a: $a1
	dec  c                                           ; $5a5b: $0d
	add  [hl]                                        ; $5a5c: $86
	ld   a, h                                        ; $5a5d: $7c
	inc  b                                           ; $5a5e: $04
	ld   d, a                                        ; $5a5f: $57
	inc  b                                           ; $5a60: $04
	ld   h, e                                        ; $5a61: $63
	ld   a, l                                        ; $5a62: $7d
	sbc  [hl]                                        ; $5a63: $9e
	adc  h                                           ; $5a64: $8c
	ld   d, b                                        ; $5a65: $50
	adc  h                                           ; $5a66: $8c
	ld   d, b                                        ; $5a67: $50
	dec  c                                           ; $5a68: $0d
	halt                                             ; $5a69: $76
	ld   d, d                                        ; $5a6a: $52
	ld   [hl], c                                     ; $5a6b: $71
	ld   l, l                                        ; $5a6c: $6d
	halt                                             ; $5a6d: $76
	ld   h, c                                        ; $5a6e: $61
	sbc  e                                           ; $5a6f: $9b
	ld   e, c                                        ; $5a70: $59
	ld   a, b                                        ; $5a71: $78
	sbc  a                                           ; $5a72: $9f
	dec  c                                           ; $5a73: $0d
	nop                                              ; $5a74: $00
	ld   a, [bc]                                     ; $5a75: $0a
	ld   bc, $5d76                                   ; $5a76: $01 $76 $5d
	ld   a, c                                        ; $5a79: $79
	ld   [bc], a                                     ; $5a7a: $02
	jr   z, jr_056_5acf                              ; $5a7b: $28 $52

	dec  b                                           ; $5a7d: $05
	jr   nz, @-$6e                                   ; $5a7e: $20 $90

	ld   [bc], a                                     ; $5a80: $02
	jp   nz, Jump_056_7859                           ; $5a81: $c2 $59 $78

	ld   d, d                                        ; $5a84: $52
	ld   h, l                                        ; $5a85: $65
	rst  $38                                         ; $5a86: $ff
	rst  $38                                         ; $5a87: $ff
	dec  c                                           ; $5a88: $0d
	ld   e, c                                        ; $5a89: $59
	halt                                             ; $5a8a: $76
	ld   d, d                                        ; $5a8b: $52
	ld   [hl], c                                     ; $5a8c: $71
	ld   [hl], h                                     ; $5a8d: $74
	sbc  [hl]                                        ; $5a8e: $9e
	ld   d, d                                        ; $5a8f: $52
	ld   d, d                                        ; $5a90: $52
	halt                                             ; $5a91: $76
	ld   d, d                                        ; $5a92: $52
	ld   d, h                                        ; $5a93: $54
	dec  b                                           ; $5a94: $05
	jr   nz, jr_056_5a27                             ; $5a95: $20 $90

	dec  c                                           ; $5a97: $0d
	ld   [bc], a                                     ; $5a98: $02
	jp   nz, Jump_056_7859                           ; $5a99: $c2 $59 $78

	ld   d, d                                        ; $5a9c: $52
	ld   a, b                                        ; $5a9d: $78
	sbc  a                                           ; $5a9e: $9f
	dec  c                                           ; $5a9f: $0d
	nop                                              ; $5aa0: $00
	ld   a, [bc]                                     ; $5aa1: $0a
	ld   b, $1c                                      ; $5aa2: $06 $1c
	ld   a, [bc]                                     ; $5aa4: $0a
	ld   bc, $a5a3                                   ; $5aa5: $01 $a3 $a5
	db   $ec                                         ; $5aa8: $ec
	cp   d                                           ; $5aa9: $ba
	ld   a, h                                        ; $5aaa: $7c
	sbc  [hl]                                        ; $5aab: $9e
	ld   [$5d00], sp                                 ; $5aac: $08 $00 $5d
	and  c                                           ; $5aaf: $a1
	dec  c                                           ; $5ab0: $0d
	add  [hl]                                        ; $5ab1: $86
	ld   a, h                                        ; $5ab2: $7c
	inc  b                                           ; $5ab3: $04
	ld   d, a                                        ; $5ab4: $57
	inc  b                                           ; $5ab5: $04
	ld   h, e                                        ; $5ab6: $63
	ld   a, l                                        ; $5ab7: $7d
	rst  $38                                         ; $5ab8: $ff
	rst  $38                                         ; $5ab9: $ff
	dec  c                                           ; $5aba: $0d
	ld   d, b                                        ; $5abb: $50
	adc  h                                           ; $5abc: $8c
	sbc  b                                           ; $5abd: $98
	sub  [hl]                                        ; $5abe: $96
	ld   e, l                                        ; $5abf: $5d
	ld   a, b                                        ; $5ac0: $78
	ld   d, d                                        ; $5ac1: $52
	ld   a, b                                        ; $5ac2: $78
	sbc  a                                           ; $5ac3: $9f
	dec  c                                           ; $5ac4: $0d
	nop                                              ; $5ac5: $00
	ld   a, [bc]                                     ; $5ac6: $0a
	ld   bc, $7190                                   ; $5ac7: $01 $90 $71
	halt                                             ; $5aca: $76
	ld   [bc], a                                     ; $5acb: $02
	ld   a, [de]                                     ; $5acc: $1a
	inc  bc                                          ; $5acd: $03
	ld   l, e                                        ; $5ace: $6b

jr_056_5acf:
	ld   a, h                                        ; $5acf: $7c
	ld   [bc], a                                     ; $5ad0: $02
	and  c                                           ; $5ad1: $a1
	inc  bc                                          ; $5ad2: $03
	and  b                                           ; $5ad3: $a0
	ld   l, a                                        ; $5ad4: $6f
	and  b                                           ; $5ad5: $a0
	dec  c                                           ; $5ad6: $0d
	ld   [bc], a                                     ; $5ad7: $02
	ld   h, l                                        ; $5ad8: $65
	ld   d, [hl]                                     ; $5ad9: $56
	ld   [hl], h                                     ; $5ada: $74
	ld   [bc], a                                     ; $5adb: $02
	ld   a, a                                        ; $5adc: $7f
	inc  b                                           ; $5add: $04
	dec  de                                          ; $5ade: $1b
	ld   h, l                                        ; $5adf: $65
	ld   l, l                                        ; $5ae0: $6d
	adc  c                                           ; $5ae1: $89
	ld   d, h                                        ; $5ae2: $54
	ld   e, d                                        ; $5ae3: $5a
	ld   d, d                                        ; $5ae4: $52
	ld   d, d                                        ; $5ae5: $52
	halt                                             ; $5ae6: $76
	dec  c                                           ; $5ae7: $0d
	dec  b                                           ; $5ae8: $05
	pop  de                                          ; $5ae9: $d1
	ld   d, h                                        ; $5aea: $54
	ld   l, h                                        ; $5aeb: $6c
	sbc  a                                           ; $5aec: $9f
	dec  c                                           ; $5aed: $0d
	nop                                              ; $5aee: $00
	ld   a, [bc]                                     ; $5aef: $0a
	ld   b, $1c                                      ; $5af0: $06 $1c
	ld   a, [bc]                                     ; $5af2: $0a
	ld   bc, $a5a3                                   ; $5af3: $01 $a3 $a5
	db   $ec                                         ; $5af6: $ec
	cp   d                                           ; $5af7: $ba
	ld   a, h                                        ; $5af8: $7c
	sbc  [hl]                                        ; $5af9: $9e
	ld   [$5d00], sp                                 ; $5afa: $08 $00 $5d
	and  c                                           ; $5afd: $a1
	dec  c                                           ; $5afe: $0d
	add  [hl]                                        ; $5aff: $86
	ld   a, h                                        ; $5b00: $7c
	inc  b                                           ; $5b01: $04
	ld   d, a                                        ; $5b02: $57
	inc  b                                           ; $5b03: $04
	ld   h, e                                        ; $5b04: $63
	ld   a, l                                        ; $5b05: $7d
	sbc  [hl]                                        ; $5b06: $9e
	ld   e, c                                        ; $5b07: $59
	ld   a, b                                        ; $5b08: $78
	sbc  b                                           ; $5b09: $98
	ld   d, d                                        ; $5b0a: $52
	ld   d, d                                        ; $5b0b: $52
	dec  c                                           ; $5b0c: $0d
	halt                                             ; $5b0d: $76
	dec  b                                           ; $5b0e: $05
	pop  de                                          ; $5b0f: $d1
	ld   d, h                                        ; $5b10: $54
	ld   l, h                                        ; $5b11: $6c
	sbc  a                                           ; $5b12: $9f
	dec  c                                           ; $5b13: $0d
	nop                                              ; $5b14: $00
	ld   a, [bc]                                     ; $5b15: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $5b16: $01 $02 $ca
	sub  b                                           ; $5b19: $90
	ld   l, e                                        ; $5b1a: $6b
	sbc  d                                           ; $5b1b: $9a
	ld   a, c                                        ; $5b1c: $79
	ld   [bc], a                                     ; $5b1d: $02
	add  hl, bc                                      ; $5b1e: $09
	ld   d, [hl]                                     ; $5b1f: $56
	sub  a                                           ; $5b20: $97
	sbc  d                                           ; $5b21: $9a
	sbc  c                                           ; $5b22: $99
	sub  [hl]                                        ; $5b23: $96
	ld   d, h                                        ; $5b24: $54
	ld   a, c                                        ; $5b25: $79
	dec  c                                           ; $5b26: $0d
	ld   e, d                                        ; $5b27: $5a
	and  c                                           ; $5b28: $a1
	ld   a, [hl]                                     ; $5b29: $7e
	sbc  c                                           ; $5b2a: $99
	and  c                                           ; $5b2b: $a1
	ld   l, [hl]                                     ; $5b2c: $6e
	ld   l, h                                        ; $5b2d: $6c
	sbc  a                                           ; $5b2e: $9f
	dec  c                                           ; $5b2f: $0d
	nop                                              ; $5b30: $00
	ld   a, [bc]                                     ; $5b31: $0a
	ld   b, $1c                                      ; $5b32: $06 $1c
	ld   a, [bc]                                     ; $5b34: $0a
	rrca                                             ; $5b35: $0f
	nop                                              ; $5b36: $00
	ld   bc, $0201                                   ; $5b37: $01 $01 $02

jr_056_5b3a:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b3a: $cf
	dec  b                                           ; $5b3b: $05
	ld   a, [de]                                     ; $5b3c: $1a
	ld   h, e                                        ; $5b3d: $63
	and  c                                           ; $5b3e: $a1
	ld   a, h                                        ; $5b3f: $7c
	inc  b                                           ; $5b40: $04
	ld   l, l                                        ; $5b41: $6d
	add  [hl]                                        ; $5b42: $86
	ld   a, h                                        ; $5b43: $7c
	inc  b                                           ; $5b44: $04
	ld   d, a                                        ; $5b45: $57
	inc  b                                           ; $5b46: $04
	ld   h, e                                        ; $5b47: $63
	ld   [hl], c                                     ; $5b48: $71
	ld   [hl], h                                     ; $5b49: $74
	dec  c                                           ; $5b4a: $0d
	ld   [hl], a                                     ; $5b4b: $77
	ld   d, h                                        ; $5b4c: $54
	ld   a, b                                        ; $5b4d: $78
	and  c                                           ; $5b4e: $a1
	ld   [hl], l                                     ; $5b4f: $75
	ld   h, l                                        ; $5b50: $65

jr_056_5b51:
	sub  l                                           ; $5b51: $95
	ld   d, h                                        ; $5b52: $54
	ld   e, c                                        ; $5b53: $59
	ld   sp, hl                                      ; $5b54: $f9
	dec  c                                           ; $5b55: $0d
	nop                                              ; $5b56: $00
	ld   a, [bc]                                     ; $5b57: $0a
	rrca                                             ; $5b58: $0f
	add  hl, bc                                      ; $5b59: $09
	nop                                              ; $5b5a: $00
	ld   bc, $8e83                                   ; $5b5b: $01 $83 $8e
	sbc  [hl]                                        ; $5b5e: $9e
	ld   l, e                                        ; $5b5f: $6b
	ld   d, h                                        ; $5b60: $54
	ld   l, [hl]                                     ; $5b61: $6e
	ld   a, b                                        ; $5b62: $78
	rst  $38                                         ; $5b63: $ff
	rst  $38                                         ; $5b64: $ff
	dec  c                                           ; $5b65: $0d
	nop                                              ; $5b66: $00
	ld   a, [bc]                                     ; $5b67: $0a
	rlca                                             ; $5b68: $07
	ld   h, [hl]                                     ; $5b69: $66
	ld   [$1503], sp                                 ; $5b6a: $08 $03 $15
	ld   bc, $2373                                   ; $5b6d: $01 $73 $23
	nop                                              ; $5b70: $00
	rlca                                             ; $5b71: $07
	or   h                                           ; $5b72: $b4
	ld   [$1503], sp                                 ; $5b73: $08 $03 $15
	ld   bc, $25ac                                   ; $5b76: $01 $ac $25
	nop                                              ; $5b79: $00
	ld   bc, $cf02                                   ; $5b7a: $01 $02 $cf
	dec  b                                           ; $5b7d: $05
	ld   a, [de]                                     ; $5b7e: $1a
	ld   a, h                                        ; $5b7f: $7c
	sbc  [hl]                                        ; $5b80: $9e
	ld   [$5d00], sp                                 ; $5b81: $08 $00 $5d
	and  c                                           ; $5b84: $a1
	dec  c                                           ; $5b85: $0d
	add  [hl]                                        ; $5b86: $86
	ld   a, h                                        ; $5b87: $7c
	inc  b                                           ; $5b88: $04
	ld   d, a                                        ; $5b89: $57
	inc  b                                           ; $5b8a: $04
	ld   h, e                                        ; $5b8b: $63
	ld   a, l                                        ; $5b8c: $7d
	sbc  [hl]                                        ; $5b8d: $9e
	adc  h                                           ; $5b8e: $8c
	ld   d, b                                        ; $5b8f: $50
	adc  h                                           ; $5b90: $8c
	ld   d, b                                        ; $5b91: $50
	dec  c                                           ; $5b92: $0d
	halt                                             ; $5b93: $76
	ld   d, d                                        ; $5b94: $52
	ld   [hl], c                                     ; $5b95: $71
	ld   l, l                                        ; $5b96: $6d
	halt                                             ; $5b97: $76
	ld   h, c                                        ; $5b98: $61
	sbc  e                                           ; $5b99: $9b
	ld   e, c                                        ; $5b9a: $59
	ld   a, b                                        ; $5b9b: $78
	sbc  a                                           ; $5b9c: $9f
	dec  c                                           ; $5b9d: $0d
	nop                                              ; $5b9e: $00
	ld   a, [bc]                                     ; $5b9f: $0a
	ld   bc, $5d76                                   ; $5ba0: $01 $76 $5d
	ld   a, c                                        ; $5ba3: $79
	ld   [bc], a                                     ; $5ba4: $02
	jr   z, jr_056_5bf9                              ; $5ba5: $28 $52

	dec  b                                           ; $5ba7: $05
	jr   nz, jr_056_5b3a                             ; $5ba8: $20 $90

	ld   [bc], a                                     ; $5baa: $02
	jp   nz, Jump_056_7859                           ; $5bab: $c2 $59 $78

	ld   d, d                                        ; $5bae: $52
	ld   h, l                                        ; $5baf: $65
	rst  $38                                         ; $5bb0: $ff
	rst  $38                                         ; $5bb1: $ff
	dec  c                                           ; $5bb2: $0d
	ld   e, c                                        ; $5bb3: $59
	halt                                             ; $5bb4: $76
	ld   d, d                                        ; $5bb5: $52
	ld   [hl], c                                     ; $5bb6: $71
	ld   [hl], h                                     ; $5bb7: $74
	sbc  [hl]                                        ; $5bb8: $9e
	ld   d, d                                        ; $5bb9: $52
	ld   d, d                                        ; $5bba: $52
	halt                                             ; $5bbb: $76
	ld   d, d                                        ; $5bbc: $52
	ld   d, h                                        ; $5bbd: $54
	dec  b                                           ; $5bbe: $05
	jr   nz, jr_056_5b51                             ; $5bbf: $20 $90

	dec  c                                           ; $5bc1: $0d
	ld   [bc], a                                     ; $5bc2: $02
	jp   nz, Jump_056_7859                           ; $5bc3: $c2 $59 $78

	ld   d, d                                        ; $5bc6: $52
	ld   a, b                                        ; $5bc7: $78
	sbc  a                                           ; $5bc8: $9f
	dec  c                                           ; $5bc9: $0d
	nop                                              ; $5bca: $00
	ld   a, [bc]                                     ; $5bcb: $0a
	ld   b, $1c                                      ; $5bcc: $06 $1c
	ld   a, [bc]                                     ; $5bce: $0a
	ld   bc, $cf02                                   ; $5bcf: $01 $02 $cf
	dec  b                                           ; $5bd2: $05
	ld   a, [de]                                     ; $5bd3: $1a
	ld   a, h                                        ; $5bd4: $7c
	sbc  [hl]                                        ; $5bd5: $9e
	ld   [$5d00], sp                                 ; $5bd6: $08 $00 $5d
	and  c                                           ; $5bd9: $a1
	dec  c                                           ; $5bda: $0d
	add  [hl]                                        ; $5bdb: $86
	ld   a, h                                        ; $5bdc: $7c
	inc  b                                           ; $5bdd: $04
	ld   d, a                                        ; $5bde: $57
	inc  b                                           ; $5bdf: $04
	ld   h, e                                        ; $5be0: $63
	ld   a, l                                        ; $5be1: $7d
	rst  $38                                         ; $5be2: $ff
	rst  $38                                         ; $5be3: $ff
	dec  c                                           ; $5be4: $0d
	ld   d, b                                        ; $5be5: $50
	adc  h                                           ; $5be6: $8c
	sbc  b                                           ; $5be7: $98
	sub  [hl]                                        ; $5be8: $96
	ld   e, l                                        ; $5be9: $5d
	ld   a, b                                        ; $5bea: $78
	ld   d, d                                        ; $5beb: $52
	ld   a, b                                        ; $5bec: $78
	sbc  a                                           ; $5bed: $9f
	dec  c                                           ; $5bee: $0d
	nop                                              ; $5bef: $00
	ld   a, [bc]                                     ; $5bf0: $0a
	ld   bc, $7190                                   ; $5bf1: $01 $90 $71
	halt                                             ; $5bf4: $76
	ld   [bc], a                                     ; $5bf5: $02
	ld   a, [de]                                     ; $5bf6: $1a
	inc  bc                                          ; $5bf7: $03
	ld   l, e                                        ; $5bf8: $6b

jr_056_5bf9:
	ld   a, h                                        ; $5bf9: $7c
	ld   [bc], a                                     ; $5bfa: $02
	and  c                                           ; $5bfb: $a1
	inc  bc                                          ; $5bfc: $03
	and  b                                           ; $5bfd: $a0
	ld   l, a                                        ; $5bfe: $6f
	and  b                                           ; $5bff: $a0
	dec  c                                           ; $5c00: $0d
	ld   [bc], a                                     ; $5c01: $02
	ld   h, l                                        ; $5c02: $65
	ld   d, [hl]                                     ; $5c03: $56
	ld   [hl], h                                     ; $5c04: $74
	ld   [bc], a                                     ; $5c05: $02
	ld   a, a                                        ; $5c06: $7f
	inc  b                                           ; $5c07: $04
	dec  de                                          ; $5c08: $1b
	ld   h, l                                        ; $5c09: $65
	ld   l, l                                        ; $5c0a: $6d
	adc  c                                           ; $5c0b: $89
	ld   d, h                                        ; $5c0c: $54
	ld   e, d                                        ; $5c0d: $5a
	ld   d, d                                        ; $5c0e: $52
	ld   d, d                                        ; $5c0f: $52
	halt                                             ; $5c10: $76
	dec  c                                           ; $5c11: $0d
	dec  b                                           ; $5c12: $05
	pop  de                                          ; $5c13: $d1
	ld   d, h                                        ; $5c14: $54
	ld   l, h                                        ; $5c15: $6c
	sbc  a                                           ; $5c16: $9f
	dec  c                                           ; $5c17: $0d
	nop                                              ; $5c18: $00
	ld   a, [bc]                                     ; $5c19: $0a
	ld   b, $1c                                      ; $5c1a: $06 $1c
	ld   a, [bc]                                     ; $5c1c: $0a
	ld   bc, $cf02                                   ; $5c1d: $01 $02 $cf
	dec  b                                           ; $5c20: $05
	ld   a, [de]                                     ; $5c21: $1a
	ld   a, h                                        ; $5c22: $7c
	sbc  [hl]                                        ; $5c23: $9e
	ld   [$5d00], sp                                 ; $5c24: $08 $00 $5d
	and  c                                           ; $5c27: $a1
	dec  c                                           ; $5c28: $0d
	add  [hl]                                        ; $5c29: $86
	ld   a, h                                        ; $5c2a: $7c
	inc  b                                           ; $5c2b: $04
	ld   d, a                                        ; $5c2c: $57
	inc  b                                           ; $5c2d: $04
	ld   h, e                                        ; $5c2e: $63
	ld   a, l                                        ; $5c2f: $7d
	sbc  [hl]                                        ; $5c30: $9e
	ld   e, c                                        ; $5c31: $59
	ld   a, b                                        ; $5c32: $78
	sbc  b                                           ; $5c33: $98
	ld   d, d                                        ; $5c34: $52
	ld   d, d                                        ; $5c35: $52
	dec  c                                           ; $5c36: $0d
	halt                                             ; $5c37: $76
	dec  b                                           ; $5c38: $05
	pop  de                                          ; $5c39: $d1
	ld   d, h                                        ; $5c3a: $54
	ld   l, h                                        ; $5c3b: $6c
	sbc  a                                           ; $5c3c: $9f
	dec  c                                           ; $5c3d: $0d
	nop                                              ; $5c3e: $00
	ld   a, [bc]                                     ; $5c3f: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $5c40: $01 $02 $ca
	sub  b                                           ; $5c43: $90
	ld   l, e                                        ; $5c44: $6b
	sbc  d                                           ; $5c45: $9a
	ld   a, c                                        ; $5c46: $79
	ld   [bc], a                                     ; $5c47: $02
	add  hl, bc                                      ; $5c48: $09
	ld   d, [hl]                                     ; $5c49: $56
	sub  a                                           ; $5c4a: $97
	sbc  d                                           ; $5c4b: $9a
	sbc  c                                           ; $5c4c: $99
	sub  [hl]                                        ; $5c4d: $96
	ld   d, h                                        ; $5c4e: $54
	ld   a, c                                        ; $5c4f: $79
	dec  c                                           ; $5c50: $0d
	ld   e, d                                        ; $5c51: $5a
	and  c                                           ; $5c52: $a1
	ld   a, [hl]                                     ; $5c53: $7e
	sbc  c                                           ; $5c54: $99
	and  c                                           ; $5c55: $a1
	ld   l, [hl]                                     ; $5c56: $6e
	ld   l, h                                        ; $5c57: $6c
	sbc  a                                           ; $5c58: $9f
	dec  c                                           ; $5c59: $0d
	nop                                              ; $5c5a: $00
	ld   a, [bc]                                     ; $5c5b: $0a
	ld   b, $1c                                      ; $5c5c: $06 $1c
	ld   a, [bc]                                     ; $5c5e: $0a
	rrca                                             ; $5c5f: $0f
	nop                                              ; $5c60: $00
	ld   bc, $ac01                                   ; $5c61: $01 $01 $ac
	push af                                          ; $5c64: $f5
	bit  4, e                                        ; $5c65: $cb $63
	and  c                                           ; $5c67: $a1
	ld   a, h                                        ; $5c68: $7c
	inc  b                                           ; $5c69: $04
	ld   l, l                                        ; $5c6a: $6d
	add  [hl]                                        ; $5c6b: $86
	ld   a, h                                        ; $5c6c: $7c
	inc  b                                           ; $5c6d: $04
	ld   d, a                                        ; $5c6e: $57
	inc  b                                           ; $5c6f: $04
	ld   h, e                                        ; $5c70: $63
	ld   [hl], c                                     ; $5c71: $71
	ld   [hl], h                                     ; $5c72: $74
	dec  c                                           ; $5c73: $0d
	ld   [hl], a                                     ; $5c74: $77
	ld   d, h                                        ; $5c75: $54
	ld   a, b                                        ; $5c76: $78
	and  c                                           ; $5c77: $a1
	ld   [hl], l                                     ; $5c78: $75

jr_056_5c79:
	ld   h, l                                        ; $5c79: $65
	sub  l                                           ; $5c7a: $95
	ld   d, h                                        ; $5c7b: $54
	ld   e, c                                        ; $5c7c: $59
	ld   sp, hl                                      ; $5c7d: $f9
	dec  c                                           ; $5c7e: $0d
	nop                                              ; $5c7f: $00
	ld   a, [bc]                                     ; $5c80: $0a
	rrca                                             ; $5c81: $0f
	add  hl, bc                                      ; $5c82: $09
	nop                                              ; $5c83: $00
	ld   bc, $8e83                                   ; $5c84: $01 $83 $8e
	sbc  [hl]                                        ; $5c87: $9e
	ld   l, e                                        ; $5c88: $6b
	ld   d, h                                        ; $5c89: $54
	ld   l, [hl]                                     ; $5c8a: $6e
	ld   a, b                                        ; $5c8b: $78
	rst  $38                                         ; $5c8c: $ff
	rst  $38                                         ; $5c8d: $ff
	dec  c                                           ; $5c8e: $0d
	nop                                              ; $5c8f: $00
	ld   a, [bc]                                     ; $5c90: $0a
	rlca                                             ; $5c91: $07
	adc  [hl]                                        ; $5c92: $8e
	add  hl, bc                                      ; $5c93: $09
	inc  bc                                          ; $5c94: $03
	ld   d, $01                                      ; $5c95: $16 $01
	ld   [hl], e                                     ; $5c97: $73
	inc  hl                                          ; $5c98: $23
	nop                                              ; $5c99: $00
	rlca                                             ; $5c9a: $07
	db   $db                                         ; $5c9b: $db
	add  hl, bc                                      ; $5c9c: $09
	inc  bc                                          ; $5c9d: $03
	ld   d, $01                                      ; $5c9e: $16 $01
	xor  h                                           ; $5ca0: $ac
	dec  h                                           ; $5ca1: $25
	nop                                              ; $5ca2: $00
	ld   bc, $f5ac                                   ; $5ca3: $01 $ac $f5
	bit  7, h                                        ; $5ca6: $cb $7c
	sbc  [hl]                                        ; $5ca8: $9e
	ld   [$5d00], sp                                 ; $5ca9: $08 $00 $5d
	and  c                                           ; $5cac: $a1
	dec  c                                           ; $5cad: $0d
	add  [hl]                                        ; $5cae: $86
	ld   a, h                                        ; $5caf: $7c
	inc  b                                           ; $5cb0: $04
	ld   d, a                                        ; $5cb1: $57
	inc  b                                           ; $5cb2: $04
	ld   h, e                                        ; $5cb3: $63
	ld   a, l                                        ; $5cb4: $7d
	sbc  [hl]                                        ; $5cb5: $9e
	adc  h                                           ; $5cb6: $8c
	ld   d, b                                        ; $5cb7: $50
	adc  h                                           ; $5cb8: $8c
	ld   d, b                                        ; $5cb9: $50
	dec  c                                           ; $5cba: $0d
	halt                                             ; $5cbb: $76
	ld   d, d                                        ; $5cbc: $52
	ld   [hl], c                                     ; $5cbd: $71
	ld   l, l                                        ; $5cbe: $6d
	halt                                             ; $5cbf: $76
	ld   h, c                                        ; $5cc0: $61
	sbc  e                                           ; $5cc1: $9b
	ld   e, c                                        ; $5cc2: $59
	ld   a, b                                        ; $5cc3: $78
	sbc  a                                           ; $5cc4: $9f
	dec  c                                           ; $5cc5: $0d
	nop                                              ; $5cc6: $00
	ld   a, [bc]                                     ; $5cc7: $0a
	ld   bc, $5d76                                   ; $5cc8: $01 $76 $5d
	ld   a, c                                        ; $5ccb: $79
	ld   [bc], a                                     ; $5ccc: $02
	jr   z, jr_056_5d21                              ; $5ccd: $28 $52

	dec  b                                           ; $5ccf: $05
	jr   nz, @-$6e                                   ; $5cd0: $20 $90

	ld   [bc], a                                     ; $5cd2: $02
	jp   nz, Jump_056_7859                           ; $5cd3: $c2 $59 $78

	ld   d, d                                        ; $5cd6: $52
	ld   h, l                                        ; $5cd7: $65
	rst  $38                                         ; $5cd8: $ff
	rst  $38                                         ; $5cd9: $ff
	dec  c                                           ; $5cda: $0d
	ld   e, c                                        ; $5cdb: $59
	halt                                             ; $5cdc: $76
	ld   d, d                                        ; $5cdd: $52
	ld   [hl], c                                     ; $5cde: $71
	ld   [hl], h                                     ; $5cdf: $74
	sbc  [hl]                                        ; $5ce0: $9e
	ld   d, d                                        ; $5ce1: $52
	ld   d, d                                        ; $5ce2: $52
	halt                                             ; $5ce3: $76
	ld   d, d                                        ; $5ce4: $52
	ld   d, h                                        ; $5ce5: $54
	dec  b                                           ; $5ce6: $05
	jr   nz, jr_056_5c79                             ; $5ce7: $20 $90

	dec  c                                           ; $5ce9: $0d
	ld   [bc], a                                     ; $5cea: $02
	jp   nz, Jump_056_7859                           ; $5ceb: $c2 $59 $78

	ld   d, d                                        ; $5cee: $52
	ld   a, b                                        ; $5cef: $78
	sbc  a                                           ; $5cf0: $9f
	dec  c                                           ; $5cf1: $0d
	nop                                              ; $5cf2: $00
	ld   a, [bc]                                     ; $5cf3: $0a
	ld   b, $1c                                      ; $5cf4: $06 $1c
	ld   a, [bc]                                     ; $5cf6: $0a
	ld   bc, $f5ac                                   ; $5cf7: $01 $ac $f5
	bit  7, h                                        ; $5cfa: $cb $7c
	sbc  [hl]                                        ; $5cfc: $9e
	ld   [$5d00], sp                                 ; $5cfd: $08 $00 $5d
	and  c                                           ; $5d00: $a1
	dec  c                                           ; $5d01: $0d
	add  [hl]                                        ; $5d02: $86
	ld   a, h                                        ; $5d03: $7c
	inc  b                                           ; $5d04: $04
	ld   d, a                                        ; $5d05: $57
	inc  b                                           ; $5d06: $04
	ld   h, e                                        ; $5d07: $63
	ld   a, l                                        ; $5d08: $7d
	rst  $38                                         ; $5d09: $ff
	rst  $38                                         ; $5d0a: $ff
	dec  c                                           ; $5d0b: $0d
	ld   d, b                                        ; $5d0c: $50
	adc  h                                           ; $5d0d: $8c
	sbc  b                                           ; $5d0e: $98
	sub  [hl]                                        ; $5d0f: $96
	ld   e, l                                        ; $5d10: $5d
	ld   a, b                                        ; $5d11: $78
	ld   d, d                                        ; $5d12: $52
	ld   a, b                                        ; $5d13: $78
	sbc  a                                           ; $5d14: $9f
	dec  c                                           ; $5d15: $0d
	nop                                              ; $5d16: $00
	ld   a, [bc]                                     ; $5d17: $0a
	ld   bc, $7190                                   ; $5d18: $01 $90 $71
	halt                                             ; $5d1b: $76
	ld   [bc], a                                     ; $5d1c: $02
	ld   a, [de]                                     ; $5d1d: $1a
	inc  bc                                          ; $5d1e: $03
	ld   l, e                                        ; $5d1f: $6b
	ld   a, h                                        ; $5d20: $7c

jr_056_5d21:
	ld   [bc], a                                     ; $5d21: $02
	and  c                                           ; $5d22: $a1
	inc  bc                                          ; $5d23: $03
	and  b                                           ; $5d24: $a0
	ld   l, a                                        ; $5d25: $6f
	and  b                                           ; $5d26: $a0
	dec  c                                           ; $5d27: $0d
	ld   [bc], a                                     ; $5d28: $02
	ld   h, l                                        ; $5d29: $65
	ld   d, [hl]                                     ; $5d2a: $56
	ld   [hl], h                                     ; $5d2b: $74
	ld   [bc], a                                     ; $5d2c: $02
	ld   a, a                                        ; $5d2d: $7f
	inc  b                                           ; $5d2e: $04
	dec  de                                          ; $5d2f: $1b
	ld   h, l                                        ; $5d30: $65
	ld   l, l                                        ; $5d31: $6d
	adc  c                                           ; $5d32: $89
	ld   d, h                                        ; $5d33: $54
	ld   e, d                                        ; $5d34: $5a
	ld   d, d                                        ; $5d35: $52
	ld   d, d                                        ; $5d36: $52
	halt                                             ; $5d37: $76
	dec  c                                           ; $5d38: $0d
	dec  b                                           ; $5d39: $05
	pop  de                                          ; $5d3a: $d1
	ld   d, h                                        ; $5d3b: $54
	ld   l, h                                        ; $5d3c: $6c
	sbc  a                                           ; $5d3d: $9f
	dec  c                                           ; $5d3e: $0d
	nop                                              ; $5d3f: $00
	ld   a, [bc]                                     ; $5d40: $0a
	ld   b, $1c                                      ; $5d41: $06 $1c
	ld   a, [bc]                                     ; $5d43: $0a
	ld   bc, $f5ac                                   ; $5d44: $01 $ac $f5
	bit  7, h                                        ; $5d47: $cb $7c
	sbc  [hl]                                        ; $5d49: $9e
	ld   [$5d00], sp                                 ; $5d4a: $08 $00 $5d
	and  c                                           ; $5d4d: $a1
	dec  c                                           ; $5d4e: $0d
	add  [hl]                                        ; $5d4f: $86
	ld   a, h                                        ; $5d50: $7c
	inc  b                                           ; $5d51: $04
	ld   d, a                                        ; $5d52: $57
	inc  b                                           ; $5d53: $04
	ld   h, e                                        ; $5d54: $63
	ld   a, l                                        ; $5d55: $7d
	sbc  [hl]                                        ; $5d56: $9e
	ld   e, c                                        ; $5d57: $59
	ld   a, b                                        ; $5d58: $78
	sbc  b                                           ; $5d59: $98
	ld   d, d                                        ; $5d5a: $52
	ld   d, d                                        ; $5d5b: $52
	dec  c                                           ; $5d5c: $0d
	halt                                             ; $5d5d: $76
	dec  b                                           ; $5d5e: $05
	pop  de                                          ; $5d5f: $d1
	ld   d, h                                        ; $5d60: $54
	ld   l, h                                        ; $5d61: $6c
	sbc  a                                           ; $5d62: $9f
	dec  c                                           ; $5d63: $0d
	nop                                              ; $5d64: $00
	ld   a, [bc]                                     ; $5d65: $0a
	ld   bc, wGameResultsReturnSubstate                                   ; $5d66: $01 $02 $ca
	sub  b                                           ; $5d69: $90
	ld   l, e                                        ; $5d6a: $6b
	sbc  d                                           ; $5d6b: $9a
	ld   a, c                                        ; $5d6c: $79
	ld   [bc], a                                     ; $5d6d: $02
	add  hl, bc                                      ; $5d6e: $09
	ld   d, [hl]                                     ; $5d6f: $56
	sub  a                                           ; $5d70: $97
	sbc  d                                           ; $5d71: $9a
	sbc  c                                           ; $5d72: $99
	sub  [hl]                                        ; $5d73: $96
	ld   d, h                                        ; $5d74: $54
	ld   a, c                                        ; $5d75: $79
	dec  c                                           ; $5d76: $0d
	ld   e, d                                        ; $5d77: $5a
	and  c                                           ; $5d78: $a1
	ld   a, [hl]                                     ; $5d79: $7e
	sbc  c                                           ; $5d7a: $99
	and  c                                           ; $5d7b: $a1
	ld   l, [hl]                                     ; $5d7c: $6e
	ld   l, h                                        ; $5d7d: $6c
	sbc  a                                           ; $5d7e: $9f
	dec  c                                           ; $5d7f: $0d
	nop                                              ; $5d80: $00
	ld   a, [bc]                                     ; $5d81: $0a
	ld   b, $1c                                      ; $5d82: $06 $1c
	ld   a, [bc]                                     ; $5d84: $0a
	rrca                                             ; $5d85: $0f
	nop                                              ; $5d86: $00
	ld   bc, $6b01                                   ; $5d87: $01 $01 $6b
	ld   d, h                                        ; $5d8a: $54
	ld   [hl], l                                     ; $5d8b: $75
	ld   h, a                                        ; $5d8c: $67
	ld   e, c                                        ; $5d8d: $59
	rst  $38                                         ; $5d8e: $ff
	rst  $38                                         ; $5d8f: $ff
	dec  c                                           ; $5d90: $0d
	ld   d, b                                        ; $5d91: $50
	sbc  b                                           ; $5d92: $98
	ld   e, d                                        ; $5d93: $5a
	halt                                             ; $5d94: $76
	ld   d, h                                        ; $5d95: $54
	ld   h, d                                        ; $5d96: $62
	ld   h, h                                        ; $5d97: $64
	ld   d, d                                        ; $5d98: $52
	adc  h                                           ; $5d99: $8c
	ld   h, l                                        ; $5d9a: $65
	ld   l, l                                        ; $5d9b: $6d
	sbc  a                                           ; $5d9c: $9f
	dec  c                                           ; $5d9d: $0d
	nop                                              ; $5d9e: $00
	ld   a, [bc]                                     ; $5d9f: $0a
	rrca                                             ; $5da0: $0f
	add  hl, bc                                      ; $5da1: $09
	nop                                              ; $5da2: $00
	ld   bc, $a154                                   ; $5da3: $01 $54 $a1
	sbc  a                                           ; $5da6: $9f
	dec  c                                           ; $5da7: $0d
	ld   e, d                                        ; $5da8: $5a
	and  c                                           ; $5da9: $a1
	ld   a, [hl]                                     ; $5daa: $7e
	sbc  d                                           ; $5dab: $9a
	sub  [hl]                                        ; $5dac: $96
	sbc  a                                           ; $5dad: $9f
	dec  c                                           ; $5dae: $0d
	nop                                              ; $5daf: $00
	ld   a, [bc]                                     ; $5db0: $0a
	nop                                              ; $5db1: $00
	rrca                                             ; $5db2: $0f
	nop                                              ; $5db3: $00
	ld   bc, $5001                                   ; $5db4: $01 $01 $50
	ld   a, h                                        ; $5db7: $7c
	sbc  [hl]                                        ; $5db8: $9e
	inc  bc                                          ; $5db9: $03
	ld   l, l                                        ; $5dba: $6d
	dec  b                                           ; $5dbb: $05
	add  hl, de                                      ; $5dbc: $19
	ld   a, h                                        ; $5dbd: $7c
	and  e                                           ; $5dbe: $a3
	jp   z, $a5d1                                    ; $5dbf: $ca $d1 $a5

	cp   d                                           ; $5dc2: $ba
	and  b                                           ; $5dc3: $a0
	dec  c                                           ; $5dc4: $0d
	ld   e, b                                        ; $5dc5: $58
	ld   [bc], a                                     ; $5dc6: $02
	add  b                                           ; $5dc7: $80
	ld   d, d                                        ; $5dc8: $52
	ld   h, l                                        ; $5dc9: $65
	ld   l, l                                        ; $5dca: $6d
	ld   d, d                                        ; $5dcb: $52
	and  c                                           ; $5dcc: $a1
	ld   [hl], l                                     ; $5dcd: $75
	ld   h, a                                        ; $5dce: $67
	ld   e, a                                        ; $5dcf: $5f
	ld   [hl], a                                     ; $5dd0: $77
	sbc  a                                           ; $5dd1: $9f
	dec  c                                           ; $5dd2: $0d
	nop                                              ; $5dd3: $00
	ld   a, [bc]                                     ; $5dd4: $0a
	rrca                                             ; $5dd5: $0f
	add  hl, bc                                      ; $5dd6: $09
	nop                                              ; $5dd7: $00
	ld   bc, $8e83                                   ; $5dd8: $01 $83 $8e
	sbc  [hl]                                        ; $5ddb: $9e
	ld   l, e                                        ; $5ddc: $6b
	ld   d, h                                        ; $5ddd: $54
	ld   l, [hl]                                     ; $5dde: $6e
	ld   a, b                                        ; $5ddf: $78
	rst  $38                                         ; $5de0: $ff
	rst  $38                                         ; $5de1: $ff
	dec  c                                           ; $5de2: $0d
	nop                                              ; $5de3: $00
	ld   a, [bc]                                     ; $5de4: $0a
	rlca                                             ; $5de5: $07
	ld   b, d                                        ; $5de6: $42
	dec  bc                                          ; $5de7: $0b
	inc  bc                                          ; $5de8: $03
	inc  hl                                          ; $5de9: $23
	ld   bc, $2368                                   ; $5dea: $01 $68 $23
	inc  bc                                          ; $5ded: $03
	inc  h                                           ; $5dee: $24
	ld   bc, $2368                                   ; $5def: $01 $68 $23
	inc  e                                           ; $5df2: $1c
	inc  bc                                          ; $5df3: $03
	dec  h                                           ; $5df4: $25
	ld   bc, $2368                                   ; $5df5: $01 $68 $23
	inc  e                                           ; $5df8: $1c
	inc  bc                                          ; $5df9: $03
	ld   [hl+], a                                    ; $5dfa: $22
	ld   bc, $2368                                   ; $5dfb: $01 $68 $23
	inc  e                                           ; $5dfe: $1c
	inc  bc                                          ; $5dff: $03
	ld   hl, $6801                                   ; $5e00: $21 $01 $68
	inc  hl                                          ; $5e03: $23
	inc  e                                           ; $5e04: $1c
	nop                                              ; $5e05: $00
	rlca                                             ; $5e06: $07
	or   [hl]                                        ; $5e07: $b6
	dec  bc                                          ; $5e08: $0b
	inc  bc                                          ; $5e09: $03
	inc  hl                                          ; $5e0a: $23
	ld   bc, $257d                                   ; $5e0b: $01 $7d $25
	inc  bc                                          ; $5e0e: $03
	inc  h                                           ; $5e0f: $24
	ld   bc, $257d                                   ; $5e10: $01 $7d $25
	inc  e                                           ; $5e13: $1c
	inc  bc                                          ; $5e14: $03
	dec  h                                           ; $5e15: $25
	ld   bc, $257d                                   ; $5e16: $01 $7d $25
	inc  e                                           ; $5e19: $1c
	inc  bc                                          ; $5e1a: $03
	ld   [hl+], a                                    ; $5e1b: $22
	ld   bc, $257d                                   ; $5e1c: $01 $7d $25
	inc  e                                           ; $5e1f: $1c
	inc  bc                                          ; $5e20: $03
	ld   hl, $7d01                                   ; $5e21: $21 $01 $7d
	dec  h                                           ; $5e24: $25
	inc  e                                           ; $5e25: $1c
	nop                                              ; $5e26: $00
	rlca                                             ; $5e27: $07
	ld   b, b                                        ; $5e28: $40
	inc  c                                           ; $5e29: $0c
	inc  bc                                          ; $5e2a: $03
	inc  hl                                          ; $5e2b: $23
	ld   bc, $236e                                   ; $5e2c: $01 $6e $23
	inc  bc                                          ; $5e2f: $03
	inc  h                                           ; $5e30: $24
	ld   bc, $236e                                   ; $5e31: $01 $6e $23
	inc  e                                           ; $5e34: $1c
	inc  bc                                          ; $5e35: $03
	dec  h                                           ; $5e36: $25
	ld   bc, $236e                                   ; $5e37: $01 $6e $23
	inc  e                                           ; $5e3a: $1c
	nop                                              ; $5e3b: $00
	rlca                                             ; $5e3c: $07
	ldh  a, [$0c]                                    ; $5e3d: $f0 $0c
	inc  bc                                          ; $5e3f: $03
	inc  h                                           ; $5e40: $24
	inc  bc                                          ; $5e41: $03
	inc  hl                                          ; $5e42: $23
	inc  hl                                          ; $5e43: $23
	inc  bc                                          ; $5e44: $03
	inc  h                                           ; $5e45: $24
	inc  bc                                          ; $5e46: $03
	dec  h                                           ; $5e47: $25
	inc  hl                                          ; $5e48: $23
	inc  e                                           ; $5e49: $1c
	inc  bc                                          ; $5e4a: $03
	inc  h                                           ; $5e4b: $24
	inc  bc                                          ; $5e4c: $03
	ld   [hl+], a                                    ; $5e4d: $22
	inc  hl                                          ; $5e4e: $23
	inc  e                                           ; $5e4f: $1c
	inc  bc                                          ; $5e50: $03
	inc  h                                           ; $5e51: $24
	inc  bc                                          ; $5e52: $03
	ld   hl, $1c23                                   ; $5e53: $21 $23 $1c
	nop                                              ; $5e56: $00
	rlca                                             ; $5e57: $07
	adc  h                                           ; $5e58: $8c
	dec  c                                           ; $5e59: $0d
	inc  bc                                          ; $5e5a: $03
	dec  h                                           ; $5e5b: $25
	inc  bc                                          ; $5e5c: $03
	inc  hl                                          ; $5e5d: $23
	inc  hl                                          ; $5e5e: $23
	inc  bc                                          ; $5e5f: $03
	dec  h                                           ; $5e60: $25
	inc  bc                                          ; $5e61: $03
	inc  h                                           ; $5e62: $24
	inc  hl                                          ; $5e63: $23
	inc  e                                           ; $5e64: $1c
	inc  bc                                          ; $5e65: $03
	dec  h                                           ; $5e66: $25
	inc  bc                                          ; $5e67: $03
	ld   [hl+], a                                    ; $5e68: $22
	inc  hl                                          ; $5e69: $23
	inc  e                                           ; $5e6a: $1c
	inc  bc                                          ; $5e6b: $03
	dec  h                                           ; $5e6c: $25
	inc  bc                                          ; $5e6d: $03
	ld   hl, $1c23                                   ; $5e6e: $21 $23 $1c
	nop                                              ; $5e71: $00
	rlca                                             ; $5e72: $07
	dec  l                                           ; $5e73: $2d
	ld   c, $03                                      ; $5e74: $0e $03
	ld   [hl+], a                                    ; $5e76: $22
	inc  bc                                          ; $5e77: $03
	inc  hl                                          ; $5e78: $23
	inc  hl                                          ; $5e79: $23
	inc  bc                                          ; $5e7a: $03
	ld   [hl+], a                                    ; $5e7b: $22
	inc  bc                                          ; $5e7c: $03
	inc  h                                           ; $5e7d: $24
	inc  hl                                          ; $5e7e: $23
	inc  e                                           ; $5e7f: $1c
	inc  bc                                          ; $5e80: $03
	ld   [hl+], a                                    ; $5e81: $22
	inc  bc                                          ; $5e82: $03
	dec  h                                           ; $5e83: $25
	inc  hl                                          ; $5e84: $23
	inc  e                                           ; $5e85: $1c
	inc  bc                                          ; $5e86: $03
	ld   [hl+], a                                    ; $5e87: $22
	inc  bc                                          ; $5e88: $03
	ld   hl, $1c23                                   ; $5e89: $21 $23 $1c
	nop                                              ; $5e8c: $00
	rlca                                             ; $5e8d: $07
	ld   h, a                                        ; $5e8e: $67
	rrca                                             ; $5e8f: $0f
	inc  bc                                          ; $5e90: $03
	inc  hl                                          ; $5e91: $23
	inc  bc                                          ; $5e92: $03
	ld   [hl+], a                                    ; $5e93: $22
	inc  hl                                          ; $5e94: $23
	inc  bc                                          ; $5e95: $03
	inc  hl                                          ; $5e96: $23
	inc  bc                                          ; $5e97: $03
	inc  h                                           ; $5e98: $24
	inc  hl                                          ; $5e99: $23
	inc  e                                           ; $5e9a: $1c
	inc  bc                                          ; $5e9b: $03
	inc  hl                                          ; $5e9c: $23
	inc  bc                                          ; $5e9d: $03
	ld   [hl+], a                                    ; $5e9e: $22
	inc  hl                                          ; $5e9f: $23
	inc  e                                           ; $5ea0: $1c
	inc  bc                                          ; $5ea1: $03
	inc  hl                                          ; $5ea2: $23
	inc  bc                                          ; $5ea3: $03
	ld   hl, $1c23                                   ; $5ea4: $21 $23 $1c
	nop                                              ; $5ea7: $00
	ld   b, $c3                                      ; $5ea8: $06 $c3
	ld   c, $0f                                      ; $5eaa: $0e $0f
	add  hl, bc                                      ; $5eac: $09
	nop                                              ; $5ead: $00
	ld   bc, wGameResultsReturnSubstate                                   ; $5eae: $01 $02 $ca
	ld   a, h                                        ; $5eb1: $7c
	inc  b                                           ; $5eb2: $04
	ld   a, d                                        ; $5eb3: $7a
	ld   [bc], a                                     ; $5eb4: $02
	ld   a, e                                        ; $5eb5: $7b
	sbc  [hl]                                        ; $5eb6: $9e
	and  e                                           ; $5eb7: $a3
	jp   z, $a5d1                                    ; $5eb8: $ca $d1 $a5

	cp   d                                           ; $5ebb: $ba
	ld   d, d                                        ; $5ebc: $52
	ld   l, d                                        ; $5ebd: $6a
	and  c                                           ; $5ebe: $a1
	ld   a, c                                        ; $5ebf: $79
	dec  c                                           ; $5ec0: $0d
	sub  b                                           ; $5ec1: $90
	ld   [hl], c                                     ; $5ec2: $71
	halt                                             ; $5ec3: $76
	ld   l, a                                        ; $5ec4: $6f
	sub  c                                           ; $5ec5: $91
	and  c                                           ; $5ec6: $a1
	halt                                             ; $5ec7: $76
	inc  bc                                          ; $5ec8: $03
	ld   l, l                                        ; $5ec9: $6d
	dec  b                                           ; $5eca: $05
	add  hl, de                                      ; $5ecb: $19
	ld   a, c                                        ; $5ecc: $79
	dec  c                                           ; $5ecd: $0d
	inc  bc                                          ; $5ece: $03
	add  b                                           ; $5ecf: $80
	ld   l, l                                        ; $5ed0: $6d
	adc  c                                           ; $5ed1: $89
	ld   d, h                                        ; $5ed2: $54
	ld   e, d                                        ; $5ed3: $5a
	ld   d, d                                        ; $5ed4: $52
	ld   d, d                                        ; $5ed5: $52
	ld   a, b                                        ; $5ed6: $78
	sbc  a                                           ; $5ed7: $9f
	dec  c                                           ; $5ed8: $0d
	nop                                              ; $5ed9: $00
	ld   a, [bc]                                     ; $5eda: $0a
	ld   bc, $d303                                   ; $5edb: $01 $03 $d3
	dec  b                                           ; $5ede: $05
	ld   a, [bc]                                     ; $5edf: $0a
	sub  b                                           ; $5ee0: $90
	ld   l, c                                        ; $5ee1: $69
	ld   l, b                                        ; $5ee2: $68
	ld   a, c                                        ; $5ee3: $79
	ld   [bc], a                                     ; $5ee4: $02
	reti                                             ; $5ee5: $d9


	ld   [bc], a                                     ; $5ee6: $02
	ld   h, e                                        ; $5ee7: $63
	ld   l, [hl]                                     ; $5ee8: $6e
	ld   e, a                                        ; $5ee9: $5f
	dec  c                                           ; $5eea: $0d
	sub  b                                           ; $5eeb: $90
	halt                                             ; $5eec: $76
	adc  a                                           ; $5eed: $8f
	sbc  c                                           ; $5eee: $99
	sub  [hl]                                        ; $5eef: $96
	ld   d, h                                        ; $5ef0: $54
	ld   [hl], l                                     ; $5ef1: $75
	ld   a, l                                        ; $5ef2: $7d
	pop  bc                                          ; $5ef3: $c1
	db   $e3                                         ; $5ef4: $e3
	ld   l, [hl]                                     ; $5ef5: $6e
	ld   l, h                                        ; $5ef6: $6c
	sbc  a                                           ; $5ef7: $9f
	dec  c                                           ; $5ef8: $0d
	nop                                              ; $5ef9: $00
	ld   a, [bc]                                     ; $5efa: $0a
	rrca                                             ; $5efb: $0f
	nop                                              ; $5efc: $00
	ld   bc, $7d01                                   ; $5efd: $01 $01 $7d
	sbc  [hl]                                        ; $5f00: $9e
	ld   a, l                                        ; $5f01: $7d
	ld   d, d                                        ; $5f02: $52
	sbc  a                                           ; $5f03: $9f
	dec  c                                           ; $5f04: $0d
	sbc  l                                           ; $5f05: $9d
	ld   e, c                                        ; $5f06: $59
	sbc  b                                           ; $5f07: $98
	adc  h                                           ; $5f08: $8c
	ld   h, l                                        ; $5f09: $65
	ld   l, l                                        ; $5f0a: $6d
	ld   a, [$0dfa]                                  ; $5f0b: $fa $fa $0d
	ld   d, b                                        ; $5f0e: $50
	sbc  b                                           ; $5f0f: $98
	ld   e, d                                        ; $5f10: $5a
	halt                                             ; $5f11: $76
	ld   d, h                                        ; $5f12: $54
	ld   h, d                                        ; $5f13: $62
	ld   h, h                                        ; $5f14: $64
	ld   d, d                                        ; $5f15: $52
	adc  h                                           ; $5f16: $8c
	ld   h, a                                        ; $5f17: $67
	ld   a, [$000d]                                  ; $5f18: $fa $0d $00
	ld   a, [bc]                                     ; $5f1b: $0a
	ld   b, $08                                      ; $5f1c: $06 $08
	db   $10                                         ; $5f1e: $10
	inc  e                                           ; $5f1f: $1c
	add  hl, bc                                      ; $5f20: $09
	ld   bc, $0101                                   ; $5f21: $01 $01 $01
	ld   [$5d00], sp                                 ; $5f24: $08 $00 $5d
	and  c                                           ; $5f27: $a1
	ld   a, l                                        ; $5f28: $7d
	dec  c                                           ; $5f29: $0d
	ld   [bc], a                                     ; $5f2a: $02
	and  l                                           ; $5f2b: $a5
	ld   a, h                                        ; $5f2c: $7c
	halt                                             ; $5f2d: $76
	ld   h, c                                        ; $5f2e: $61
	sbc  e                                           ; $5f2f: $9b
	ld   [bc], a                                     ; $5f30: $02
	sbc  l                                           ; $5f31: $9d
	ld   d, h                                        ; $5f32: $54
	ld   h, c                                        ; $5f33: $61
	halt                                             ; $5f34: $76
	ld   a, b                                        ; $5f35: $78
	ld   h, l                                        ; $5f36: $65
	ld   l, [hl]                                     ; $5f37: $6e
	ld   a, b                                        ; $5f38: $78
	sbc  a                                           ; $5f39: $9f
	dec  c                                           ; $5f3a: $0d
	nop                                              ; $5f3b: $00
	ld   a, [bc]                                     ; $5f3c: $0a
	ld   bc, $7c77                                   ; $5f3d: $01 $77 $7c
	inc  bc                                          ; $5f40: $03
	ld   l, l                                        ; $5f41: $6d
	dec  b                                           ; $5f42: $05
	add  hl, de                                      ; $5f43: $19
	sub  b                                           ; $5f44: $90
	adc  h                                           ; $5f45: $8c
	and  c                                           ; $5f46: $a1
	add  a                                           ; $5f47: $87
	and  c                                           ; $5f48: $a1
	ld   a, b                                        ; $5f49: $78
	ld   e, l                                        ; $5f4a: $5d
	dec  c                                           ; $5f4b: $0d
	ld   e, d                                        ; $5f4c: $5a
	and  c                                           ; $5f4d: $a1
	ld   a, [hl]                                     ; $5f4e: $7e
	ld   [hl], c                                     ; $5f4f: $71
	ld   [hl], h                                     ; $5f50: $74
	sub  d                                           ; $5f51: $92
	ld   [hl], c                                     ; $5f52: $71
	ld   [hl], h                                     ; $5f53: $74
	ld   d, d                                        ; $5f54: $52
	sbc  c                                           ; $5f55: $99
	dec  c                                           ; $5f56: $0d
	sub  [hl]                                        ; $5f57: $96
	ld   d, h                                        ; $5f58: $54
	ld   l, [hl]                                     ; $5f59: $6e
	ld   h, l                                        ; $5f5a: $65
	rst  $38                                         ; $5f5b: $ff
	rst  $38                                         ; $5f5c: $ff
	dec  c                                           ; $5f5d: $0d
	nop                                              ; $5f5e: $00
	ld   a, [bc]                                     ; $5f5f: $0a
	ld   bc, $9a61                                   ; $5f60: $01 $61 $9a
	ld   e, c                                        ; $5f63: $59
	sub  a                                           ; $5f64: $97
	sub  b                                           ; $5f65: $90
	sbc  [hl]                                        ; $5f66: $9e
	ld   h, c                                        ; $5f67: $61
	ld   a, h                                        ; $5f68: $7c
	inc  bc                                          ; $5f69: $03
	cp   $03                                         ; $5f6a: $fe $03
	add  [hl]                                        ; $5f6c: $86
	ld   [hl], l                                     ; $5f6d: $75
	dec  c                                           ; $5f6e: $0d
	ld   d, d                                        ; $5f6f: $52
	ld   e, a                                        ; $5f70: $5f
	ld   a, [hl]                                     ; $5f71: $7e
	sbc  [hl]                                        ; $5f72: $9e
	ld   [bc], a                                     ; $5f73: $02
	sbc  l                                           ; $5f74: $9d
	ld   d, h                                        ; $5f75: $54
	ld   h, c                                        ; $5f76: $61
	halt                                             ; $5f77: $76
	ld   a, b                                        ; $5f78: $78
	ld   h, l                                        ; $5f79: $65
	ld   l, [hl]                                     ; $5f7a: $6e
	sbc  a                                           ; $5f7b: $9f
	dec  c                                           ; $5f7c: $0d
	nop                                              ; $5f7d: $00
	ld   a, [bc]                                     ; $5f7e: $0a
	rrca                                             ; $5f7f: $0f
	nop                                              ; $5f80: $00
	ld   bc, $7d01                                   ; $5f81: $01 $01 $7d
	ld   d, d                                        ; $5f84: $52
	ld   a, [$500d]                                  ; $5f85: $fa $0d $50
	sbc  b                                           ; $5f88: $98
	ld   e, d                                        ; $5f89: $5a
	halt                                             ; $5f8a: $76
	ld   d, h                                        ; $5f8b: $54
	ld   h, d                                        ; $5f8c: $62
	ld   h, h                                        ; $5f8d: $64
	ld   d, d                                        ; $5f8e: $52
	adc  h                                           ; $5f8f: $8c
	ld   h, a                                        ; $5f90: $67
	ld   a, [$0dfa]                                  ; $5f91: $fa $fa $0d
	ld   [bc], a                                     ; $5f94: $02
	and  l                                           ; $5f95: $a5
	ld   [bc], a                                     ; $5f96: $02
	xor  d                                           ; $5f97: $aa
	sub  b                                           ; $5f98: $90
	sbc  [hl]                                        ; $5f99: $9e
	ld   e, d                                        ; $5f9a: $5a
	and  c                                           ; $5f9b: $a1
	ld   a, [hl]                                     ; $5f9c: $7e
	sbc  b                                           ; $5f9d: $98
	adc  h                                           ; $5f9e: $8c
	ld   h, a                                        ; $5f9f: $67
	ld   [hl], c                                     ; $5fa0: $71
	ld   a, [$0dfa]                                  ; $5fa1: $fa $fa $0d
	nop                                              ; $5fa4: $00
	ld   a, [bc]                                     ; $5fa5: $0a
	ld   b, $08                                      ; $5fa6: $06 $08
	db   $10                                         ; $5fa8: $10
	rrca                                             ; $5fa9: $0f
	add  hl, bc                                      ; $5faa: $09
	nop                                              ; $5fab: $00
	ld   bc, $0008                                   ; $5fac: $01 $08 $00
	ld   e, l                                        ; $5faf: $5d
	and  c                                           ; $5fb0: $a1
	ld   a, l                                        ; $5fb1: $7d
	dec  c                                           ; $5fb2: $0d
	ld   [bc], a                                     ; $5fb3: $02
	jr   nc, jr_056_5fba                             ; $5fb4: $30 $04

	dec  de                                          ; $5fb6: $1b
	inc  b                                           ; $5fb7: $04
	ld   b, e                                        ; $5fb8: $43
	dec  b                                           ; $5fb9: $05

jr_056_5fba:
	ld   a, [bc]                                     ; $5fba: $0a
	ld   a, h                                        ; $5fbb: $7c
	inc  b                                           ; $5fbc: $04
	ld   d, a                                        ; $5fbd: $57
	dec  b                                           ; $5fbe: $05
	add  hl, hl                                      ; $5fbf: $29
	ld   e, d                                        ; $5fc0: $5a
	inc  bc                                          ; $5fc1: $03
	ld   d, a                                        ; $5fc2: $57
	inc  b                                           ; $5fc3: $04
	dec  c                                           ; $5fc4: $0d
	inc  b                                           ; $5fc5: $04
	jr   nz, jr_056_6041                             ; $5fc6: $20 $79

	dec  c                                           ; $5fc8: $0d
	inc  bc                                          ; $5fc9: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fca: $cf
	ld   d, d                                        ; $5fcb: $52
	sub  [hl]                                        ; $5fcc: $96
	ld   d, h                                        ; $5fcd: $54
	ld   l, [hl]                                     ; $5fce: $6e
	ld   a, b                                        ; $5fcf: $78
	sbc  a                                           ; $5fd0: $9f
	dec  c                                           ; $5fd1: $0d
	nop                                              ; $5fd2: $00
	ld   a, [bc]                                     ; $5fd3: $0a
	ld   bc, $5d63                                   ; $5fd4: $01 $63 $5d
	sub  a                                           ; $5fd7: $97
	ld   e, l                                        ; $5fd8: $5d
	and  c                                           ; $5fd9: $a1
	ld   a, h                                        ; $5fda: $7c
	inc  bc                                          ; $5fdb: $03
	ld   l, l                                        ; $5fdc: $6d
	dec  b                                           ; $5fdd: $05
	add  hl, de                                      ; $5fde: $19
	and  b                                           ; $5fdf: $a0
	dec  c                                           ; $5fe0: $0d
	ld   l, a                                        ; $5fe1: $6f
	sub  l                                           ; $5fe2: $95
	ld   [hl], c                                     ; $5fe3: $71
	halt                                             ; $5fe4: $76
	inc  b                                           ; $5fe5: $04
	rrca                                             ; $5fe6: $0f
	adc  a                                           ; $5fe7: $8f
	ld   a, c                                        ; $5fe8: $79
	halt                                             ; $5fe9: $76
	ld   [hl], c                                     ; $5fea: $71
	ld   [hl], h                                     ; $5feb: $74
	ld   e, b                                        ; $5fec: $58
	ld   e, l                                        ; $5fed: $5d
	halt                                             ; $5fee: $76
	dec  c                                           ; $5fef: $0d
	ld   d, d                                        ; $5ff0: $52
	ld   d, d                                        ; $5ff1: $52
	and  c                                           ; $5ff2: $a1
	ld   h, [hl]                                     ; $5ff3: $66
	sub  c                                           ; $5ff4: $91
	ld   a, b                                        ; $5ff5: $78
	ld   d, d                                        ; $5ff6: $52
	ld   e, c                                        ; $5ff7: $59
	ld   a, b                                        ; $5ff8: $78
	sbc  a                                           ; $5ff9: $9f
	dec  c                                           ; $5ffa: $0d
	nop                                              ; $5ffb: $00
	ld   a, [bc]                                     ; $5ffc: $0a
	ld   bc, $5d63                                   ; $5ffd: $01 $63 $5d
	sub  a                                           ; $6000: $97
	ld   e, l                                        ; $6001: $5d
	and  c                                           ; $6002: $a1
	ld   a, h                                        ; $6003: $7c
	inc  bc                                          ; $6004: $03
	ld   l, l                                        ; $6005: $6d
	dec  b                                           ; $6006: $05
	add  hl, de                                      ; $6007: $19
	ld   a, l                                        ; $6008: $7d
	sbc  [hl]                                        ; $6009: $9e
	dec  c                                           ; $600a: $0d
	inc  bc                                          ; $600b: $03
	ld   [hl], l                                     ; $600c: $75
	di                                               ; $600d: $f3
	ld   [bc], a                                     ; $600e: $02
	adc  h                                           ; $600f: $8c
	di                                               ; $6010: $f3
	inc  b                                           ; $6011: $04
	dec  c                                           ; $6012: $0d
	db   $10                                         ; $6013: $10
	halt                                             ; $6014: $76
	sbc  [hl]                                        ; $6015: $9e
	inc  bc                                          ; $6016: $03
	ld   d, a                                        ; $6017: $57
	ld   [hl], h                                     ; $6018: $74
	ld   a, h                                        ; $6019: $7c
	inc  b                                           ; $601a: $04
	rst  JumpTable                                         ; $601b: $df
	inc  bc                                          ; $601c: $03
	and  [hl]                                        ; $601d: $a6
	ld   e, d                                        ; $601e: $5a
	dec  c                                           ; $601f: $0d
	ld   [bc], a                                     ; $6020: $02
	call nc, Call_056_5102                           ; $6021: $d4 $02 $51
	ld   h, e                                        ; $6024: $63
	sbc  d                                           ; $6025: $9a
	sbc  c                                           ; $6026: $99
	ld   e, c                                        ; $6027: $59
	sub  a                                           ; $6028: $97
	ld   a, e                                        ; $6029: $7b
	sbc  a                                           ; $602a: $9f
	dec  c                                           ; $602b: $0d
	nop                                              ; $602c: $00
	ld   a, [bc]                                     ; $602d: $0a
	rrca                                             ; $602e: $0f
	nop                                              ; $602f: $00
	ld   bc, $7801                                   ; $6030: $01 $01 $78
	sbc  c                                           ; $6033: $99
	adc  c                                           ; $6034: $89
	ld   [hl], a                                     ; $6035: $77
	rst  $38                                         ; $6036: $ff
	rst  $38                                         ; $6037: $ff
	dec  c                                           ; $6038: $0d
	sbc  l                                           ; $6039: $9d
	ld   e, c                                        ; $603a: $59
	sbc  b                                           ; $603b: $98
	adc  h                                           ; $603c: $8c
	ld   h, l                                        ; $603d: $65
	ld   l, l                                        ; $603e: $6d
	sbc  [hl]                                        ; $603f: $9e
	and  e                                           ; $6040: $a3

jr_056_6041:
	jp   z, $a5d1                                    ; $6041: $ca $d1 $a5

	cp   d                                           ; $6044: $ba
	sbc  [hl]                                        ; $6045: $9e
	dec  c                                           ; $6046: $0d
	ld   d, b                                        ; $6047: $50
	sbc  b                                           ; $6048: $98
	ld   e, d                                        ; $6049: $5a
	halt                                             ; $604a: $76
	ld   d, h                                        ; $604b: $54
	ld   h, d                                        ; $604c: $62
	ld   h, h                                        ; $604d: $64
	ld   d, d                                        ; $604e: $52
	adc  h                                           ; $604f: $8c
	ld   h, l                                        ; $6050: $65
	ld   l, l                                        ; $6051: $6d
	sbc  a                                           ; $6052: $9f
	dec  c                                           ; $6053: $0d
	nop                                              ; $6054: $00
	ld   a, [bc]                                     ; $6055: $0a
	ld   b, $08                                      ; $6056: $06 $08
	db   $10                                         ; $6058: $10
	rrca                                             ; $6059: $0f
	add  hl, bc                                      ; $605a: $09
	nop                                              ; $605b: $00
	ld   bc, $0008                                   ; $605c: $01 $08 $00
	ld   e, l                                        ; $605f: $5d
	and  c                                           ; $6060: $a1
	ld   a, l                                        ; $6061: $7d
	dec  c                                           ; $6062: $0d
	inc  bc                                          ; $6063: $03
	and  [hl]                                        ; $6064: $a6
	inc  bc                                          ; $6065: $03
	ld   [hl], b                                     ; $6066: $70
	ld   h, e                                        ; $6067: $63
	ld   a, h                                        ; $6068: $7c
	inc  b                                           ; $6069: $04
	ld   d, a                                        ; $606a: $57
	dec  b                                           ; $606b: $05
	add  hl, hl                                      ; $606c: $29
	ld   e, d                                        ; $606d: $5a
	dec  c                                           ; $606e: $0d
	inc  bc                                          ; $606f: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6070: $cf
	ld   d, d                                        ; $6071: $52
	sub  [hl]                                        ; $6072: $96
	ld   d, h                                        ; $6073: $54
	ld   l, [hl]                                     ; $6074: $6e
	ld   a, b                                        ; $6075: $78
	sbc  a                                           ; $6076: $9f
	dec  c                                           ; $6077: $0d
	nop                                              ; $6078: $00
	ld   a, [bc]                                     ; $6079: $0a
	ld   bc, $8d67                                   ; $607a: $01 $67 $8d
	sbc  d                                           ; $607d: $9a
	ld   e, l                                        ; $607e: $5d
	and  c                                           ; $607f: $a1
	ld   a, h                                        ; $6080: $7c
	inc  bc                                          ; $6081: $03
	ld   l, l                                        ; $6082: $6d
	dec  b                                           ; $6083: $05
	add  hl, de                                      ; $6084: $19
	and  b                                           ; $6085: $a0
	dec  c                                           ; $6086: $0d
	ld   l, a                                        ; $6087: $6f
	sub  l                                           ; $6088: $95
	ld   [hl], c                                     ; $6089: $71
	halt                                             ; $608a: $76
	inc  b                                           ; $608b: $04
	rrca                                             ; $608c: $0f
	adc  a                                           ; $608d: $8f
	ld   a, c                                        ; $608e: $79
	halt                                             ; $608f: $76
	ld   [hl], c                                     ; $6090: $71
	ld   [hl], h                                     ; $6091: $74
	ld   e, b                                        ; $6092: $58
	ld   e, l                                        ; $6093: $5d
	halt                                             ; $6094: $76
	dec  c                                           ; $6095: $0d
	ld   d, d                                        ; $6096: $52
	ld   d, d                                        ; $6097: $52
	and  c                                           ; $6098: $a1
	ld   h, [hl]                                     ; $6099: $66
	sub  c                                           ; $609a: $91
	ld   a, b                                        ; $609b: $78
	ld   d, d                                        ; $609c: $52
	ld   e, c                                        ; $609d: $59
	ld   a, b                                        ; $609e: $78
	sbc  a                                           ; $609f: $9f
	dec  c                                           ; $60a0: $0d
	nop                                              ; $60a1: $00
	ld   a, [bc]                                     ; $60a2: $0a
	ld   bc, $8d67                                   ; $60a3: $01 $67 $8d
	sbc  d                                           ; $60a6: $9a
	ld   e, l                                        ; $60a7: $5d
	and  c                                           ; $60a8: $a1
	ld   a, h                                        ; $60a9: $7c
	inc  bc                                          ; $60aa: $03
	ld   l, l                                        ; $60ab: $6d
	dec  b                                           ; $60ac: $05
	add  hl, de                                      ; $60ad: $19
	ld   a, l                                        ; $60ae: $7d
	dec  c                                           ; $60af: $0d
	inc  bc                                          ; $60b0: $03
	and  [hl]                                        ; $60b1: $a6
	inc  bc                                          ; $60b2: $03
	ld   [hl], b                                     ; $60b3: $70
	ld   h, e                                        ; $60b4: $63
	ld   a, h                                        ; $60b5: $7c
	ld   [bc], a                                     ; $60b6: $02
	call nc, Call_056_5102                           ; $60b7: $d4 $02 $51
	ld   a, c                                        ; $60ba: $79
	ld   a, l                                        ; $60bb: $7d
	dec  c                                           ; $60bc: $0d
	ld   d, h                                        ; $60bd: $54
	ld   [hl], c                                     ; $60be: $71
	ld   [hl], h                                     ; $60bf: $74
	ld   [hl], d                                     ; $60c0: $72
	ld   e, a                                        ; $60c1: $5f
	ld   l, [hl]                                     ; $60c2: $6e
	ld   e, c                                        ; $60c3: $59
	sub  a                                           ; $60c4: $97
	ld   a, e                                        ; $60c5: $7b
	sbc  a                                           ; $60c6: $9f
	dec  c                                           ; $60c7: $0d
	nop                                              ; $60c8: $00
	ld   a, [bc]                                     ; $60c9: $0a
	rrca                                             ; $60ca: $0f
	nop                                              ; $60cb: $00
	ld   bc, $7801                                   ; $60cc: $01 $01 $78
	sbc  c                                           ; $60cf: $99
	adc  c                                           ; $60d0: $89
	ld   [hl], a                                     ; $60d1: $77
	rst  $38                                         ; $60d2: $ff
	rst  $38                                         ; $60d3: $ff
	dec  c                                           ; $60d4: $0d
	sbc  l                                           ; $60d5: $9d
	ld   e, c                                        ; $60d6: $59
	sbc  b                                           ; $60d7: $98
	adc  h                                           ; $60d8: $8c
	ld   h, l                                        ; $60d9: $65
	ld   l, l                                        ; $60da: $6d
	sbc  [hl]                                        ; $60db: $9e
	and  e                                           ; $60dc: $a3
	jp   z, $a5d1                                    ; $60dd: $ca $d1 $a5

	cp   d                                           ; $60e0: $ba
	sbc  [hl]                                        ; $60e1: $9e
	dec  c                                           ; $60e2: $0d
	ld   d, b                                        ; $60e3: $50
	sbc  b                                           ; $60e4: $98
	ld   e, d                                        ; $60e5: $5a
	halt                                             ; $60e6: $76
	ld   d, h                                        ; $60e7: $54
	ld   h, d                                        ; $60e8: $62
	ld   h, h                                        ; $60e9: $64
	ld   d, d                                        ; $60ea: $52
	adc  h                                           ; $60eb: $8c
	ld   h, l                                        ; $60ec: $65
	ld   l, l                                        ; $60ed: $6d
	sbc  a                                           ; $60ee: $9f
	dec  c                                           ; $60ef: $0d
	nop                                              ; $60f0: $00
	ld   a, [bc]                                     ; $60f1: $0a
	ld   b, $08                                      ; $60f2: $06 $08
	db   $10                                         ; $60f4: $10
	rrca                                             ; $60f5: $0f
	add  hl, bc                                      ; $60f6: $09
	nop                                              ; $60f7: $00
	ld   bc, $0008                                   ; $60f8: $01 $08 $00
	ld   e, l                                        ; $60fb: $5d
	and  c                                           ; $60fc: $a1
	ld   a, l                                        ; $60fd: $7d
	dec  c                                           ; $60fe: $0d
	ld   b, $25                                      ; $60ff: $06 $25
	inc  b                                           ; $6101: $04
	dec  bc                                          ; $6102: $0b
	ld   b, $80                                      ; $6103: $06 $80
	ld   a, h                                        ; $6105: $7c
	inc  b                                           ; $6106: $04
	ld   d, a                                        ; $6107: $57
	dec  b                                           ; $6108: $05
	add  hl, hl                                      ; $6109: $29
	ld   e, d                                        ; $610a: $5a
	dec  c                                           ; $610b: $0d
	inc  bc                                          ; $610c: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $610d: $cf
	ld   d, d                                        ; $610e: $52
	sub  [hl]                                        ; $610f: $96
	ld   d, h                                        ; $6110: $54
	ld   l, [hl]                                     ; $6111: $6e
	ld   a, b                                        ; $6112: $78
	sbc  a                                           ; $6113: $9f
	dec  c                                           ; $6114: $0d
	nop                                              ; $6115: $00
	ld   a, [bc]                                     ; $6116: $0a
	ld   bc, $ecdf                                   ; $6117: $01 $df $ec
	and  e                                           ; $611a: $a3
	ld   a, h                                        ; $611b: $7c
	inc  bc                                          ; $611c: $03
	ld   l, l                                        ; $611d: $6d
	dec  b                                           ; $611e: $05
	add  hl, de                                      ; $611f: $19
	and  b                                           ; $6120: $a0
	dec  c                                           ; $6121: $0d
	ld   l, a                                        ; $6122: $6f
	sub  l                                           ; $6123: $95
	ld   [hl], c                                     ; $6124: $71
	halt                                             ; $6125: $76
	inc  b                                           ; $6126: $04
	rrca                                             ; $6127: $0f
	adc  a                                           ; $6128: $8f
	ld   a, c                                        ; $6129: $79
	halt                                             ; $612a: $76
	ld   [hl], c                                     ; $612b: $71
	ld   [hl], h                                     ; $612c: $74
	ld   e, b                                        ; $612d: $58
	ld   e, l                                        ; $612e: $5d
	halt                                             ; $612f: $76
	dec  c                                           ; $6130: $0d
	ld   d, d                                        ; $6131: $52
	ld   d, d                                        ; $6132: $52
	and  c                                           ; $6133: $a1
	ld   h, [hl]                                     ; $6134: $66
	sub  c                                           ; $6135: $91
	ld   a, b                                        ; $6136: $78
	ld   d, d                                        ; $6137: $52
	ld   e, c                                        ; $6138: $59
	ld   a, b                                        ; $6139: $78
	sbc  a                                           ; $613a: $9f
	dec  c                                           ; $613b: $0d
	nop                                              ; $613c: $00
	ld   a, [bc]                                     ; $613d: $0a
	ld   bc, $ecdf                                   ; $613e: $01 $df $ec
	and  e                                           ; $6141: $a3
	ld   a, h                                        ; $6142: $7c
	inc  bc                                          ; $6143: $03
	ld   l, l                                        ; $6144: $6d
	dec  b                                           ; $6145: $05
	add  hl, de                                      ; $6146: $19
	ld   a, l                                        ; $6147: $7d
	inc  bc                                          ; $6148: $03
	daa                                              ; $6149: $27
	ld   [bc], a                                     ; $614a: $02
	sub  c                                           ; $614b: $91
	ld   l, [hl]                                     ; $614c: $6e
	ld   e, c                                        ; $614d: $59
	sub  a                                           ; $614e: $97
	sbc  [hl]                                        ; $614f: $9e
	dec  c                                           ; $6150: $0d
	ld   e, c                                        ; $6151: $59
	ld   a, b                                        ; $6152: $78
	sbc  b                                           ; $6153: $98
	ld   a, h                                        ; $6154: $7c
	ld   b, $25                                      ; $6155: $06 $25
	inc  b                                           ; $6157: $04
	dec  bc                                          ; $6158: $0b
	ld   b, $80                                      ; $6159: $06 $80
	and  b                                           ; $615b: $a0
	dec  c                                           ; $615c: $0d
	inc  b                                           ; $615d: $04
	rst  JumpTable                                         ; $615e: $df
	ld   b, $85                                      ; $615f: $06 $85
	ld   h, e                                        ; $6161: $63
	sbc  d                                           ; $6162: $9a
	sbc  c                                           ; $6163: $99
	ld   e, c                                        ; $6164: $59
	sub  a                                           ; $6165: $97
	ld   a, e                                        ; $6166: $7b
	sbc  a                                           ; $6167: $9f
	dec  c                                           ; $6168: $0d
	nop                                              ; $6169: $00
	ld   a, [bc]                                     ; $616a: $0a
	rrca                                             ; $616b: $0f
	nop                                              ; $616c: $00
	ld   bc, $7801                                   ; $616d: $01 $01 $78
	sbc  c                                           ; $6170: $99
	adc  c                                           ; $6171: $89
	ld   [hl], a                                     ; $6172: $77
	rst  $38                                         ; $6173: $ff
	rst  $38                                         ; $6174: $ff
	dec  c                                           ; $6175: $0d
	sbc  l                                           ; $6176: $9d
	ld   e, c                                        ; $6177: $59
	sbc  b                                           ; $6178: $98
	adc  h                                           ; $6179: $8c
	ld   h, l                                        ; $617a: $65
	ld   l, l                                        ; $617b: $6d

Jump_056_617c:
	sbc  [hl]                                        ; $617c: $9e
	and  e                                           ; $617d: $a3
	jp   z, $a5d1                                    ; $617e: $ca $d1 $a5

	cp   d                                           ; $6181: $ba
	sbc  [hl]                                        ; $6182: $9e
	dec  c                                           ; $6183: $0d
	ld   d, b                                        ; $6184: $50
	sbc  b                                           ; $6185: $98
	ld   e, d                                        ; $6186: $5a
	halt                                             ; $6187: $76
	ld   d, h                                        ; $6188: $54
	ld   h, d                                        ; $6189: $62
	ld   h, h                                        ; $618a: $64
	ld   d, d                                        ; $618b: $52
	adc  h                                           ; $618c: $8c
	ld   h, l                                        ; $618d: $65
	ld   l, l                                        ; $618e: $6d
	sbc  a                                           ; $618f: $9f
	dec  c                                           ; $6190: $0d
	nop                                              ; $6191: $00
	ld   a, [bc]                                     ; $6192: $0a
	ld   b, $08                                      ; $6193: $06 $08
	db   $10                                         ; $6195: $10
	rrca                                             ; $6196: $0f
	add  hl, bc                                      ; $6197: $09
	nop                                              ; $6198: $00
	ld   bc, $0008                                   ; $6199: $01 $08 $00
	ld   e, l                                        ; $619c: $5d
	and  c                                           ; $619d: $a1
	ld   a, l                                        ; $619e: $7d
	dec  c                                           ; $619f: $0d
	dec  b                                           ; $61a0: $05
	add  hl, bc                                      ; $61a1: $09
	dec  b                                           ; $61a2: $05
	ld   a, [bc]                                     ; $61a3: $0a
	ld   a, h                                        ; $61a4: $7c
	inc  b                                           ; $61a5: $04
	ld   d, a                                        ; $61a6: $57
	dec  b                                           ; $61a7: $05
	add  hl, hl                                      ; $61a8: $29
	ld   e, d                                        ; $61a9: $5a
	dec  c                                           ; $61aa: $0d
	inc  bc                                          ; $61ab: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61ac: $cf
	ld   d, d                                        ; $61ad: $52
	sub  [hl]                                        ; $61ae: $96
	ld   d, h                                        ; $61af: $54
	ld   l, [hl]                                     ; $61b0: $6e
	ld   a, b                                        ; $61b1: $78
	sbc  a                                           ; $61b2: $9f
	dec  c                                           ; $61b3: $0d
	nop                                              ; $61b4: $00
	ld   a, [bc]                                     ; $61b5: $0a
	ld   bc, $a5a3                                   ; $61b6: $01 $a3 $a5
	db   $ec                                         ; $61b9: $ec
	cp   d                                           ; $61ba: $ba
	ld   a, h                                        ; $61bb: $7c
	inc  bc                                          ; $61bc: $03
	ld   l, l                                        ; $61bd: $6d
	dec  b                                           ; $61be: $05
	add  hl, de                                      ; $61bf: $19
	and  b                                           ; $61c0: $a0
	dec  c                                           ; $61c1: $0d
	ld   l, a                                        ; $61c2: $6f
	sub  l                                           ; $61c3: $95
	ld   [hl], c                                     ; $61c4: $71
	halt                                             ; $61c5: $76
	inc  b                                           ; $61c6: $04
	rrca                                             ; $61c7: $0f
	adc  a                                           ; $61c8: $8f
	ld   a, c                                        ; $61c9: $79
	halt                                             ; $61ca: $76
	ld   [hl], c                                     ; $61cb: $71
	ld   [hl], h                                     ; $61cc: $74
	ld   e, b                                        ; $61cd: $58
	ld   e, l                                        ; $61ce: $5d
	halt                                             ; $61cf: $76
	dec  c                                           ; $61d0: $0d
	ld   d, d                                        ; $61d1: $52
	ld   d, d                                        ; $61d2: $52
	and  c                                           ; $61d3: $a1
	ld   h, [hl]                                     ; $61d4: $66
	sub  c                                           ; $61d5: $91
	ld   a, b                                        ; $61d6: $78
	ld   d, d                                        ; $61d7: $52
	ld   e, c                                        ; $61d8: $59
	ld   a, b                                        ; $61d9: $78
	sbc  a                                           ; $61da: $9f
	dec  c                                           ; $61db: $0d
	nop                                              ; $61dc: $00
	ld   a, [bc]                                     ; $61dd: $0a
	ld   bc, $a5a3                                   ; $61de: $01 $a3 $a5
	db   $ec                                         ; $61e1: $ec
	cp   d                                           ; $61e2: $ba
	ld   a, h                                        ; $61e3: $7c
	inc  bc                                          ; $61e4: $03
	ld   l, l                                        ; $61e5: $6d
	dec  b                                           ; $61e6: $05
	add  hl, de                                      ; $61e7: $19
	ld   a, l                                        ; $61e8: $7d
	dec  c                                           ; $61e9: $0d
	dec  b                                           ; $61ea: $05
	add  hl, bc                                      ; $61eb: $09
	dec  b                                           ; $61ec: $05
	ld   a, [bc]                                     ; $61ed: $0a
	and  e                                           ; $61ee: $a3
	call nz, Call_056_79d8                           ; $61ef: $c4 $d8 $79
	ld   a, l                                        ; $61f2: $7d
	dec  c                                           ; $61f3: $0d
	ld   d, h                                        ; $61f4: $54
	ld   [hl], c                                     ; $61f5: $71
	ld   [hl], h                                     ; $61f6: $74
	ld   [hl], d                                     ; $61f7: $72
	ld   e, a                                        ; $61f8: $5f
	ld   l, [hl]                                     ; $61f9: $6e
	ld   e, c                                        ; $61fa: $59
	sub  a                                           ; $61fb: $97
	ld   a, e                                        ; $61fc: $7b
	sbc  a                                           ; $61fd: $9f
	dec  c                                           ; $61fe: $0d
	nop                                              ; $61ff: $00
	ld   a, [bc]                                     ; $6200: $0a
	rrca                                             ; $6201: $0f
	nop                                              ; $6202: $00
	ld   bc, $7801                                   ; $6203: $01 $01 $78
	sbc  c                                           ; $6206: $99
	adc  c                                           ; $6207: $89
	ld   [hl], a                                     ; $6208: $77
	rst  $38                                         ; $6209: $ff
	rst  $38                                         ; $620a: $ff
	dec  c                                           ; $620b: $0d
	sbc  l                                           ; $620c: $9d
	ld   e, c                                        ; $620d: $59
	sbc  b                                           ; $620e: $98
	adc  h                                           ; $620f: $8c
	ld   h, l                                        ; $6210: $65
	ld   l, l                                        ; $6211: $6d
	sbc  [hl]                                        ; $6212: $9e
	and  e                                           ; $6213: $a3
	jp   z, $a5d1                                    ; $6214: $ca $d1 $a5

	cp   d                                           ; $6217: $ba
	sbc  [hl]                                        ; $6218: $9e
	dec  c                                           ; $6219: $0d
	ld   d, b                                        ; $621a: $50
	sbc  b                                           ; $621b: $98
	ld   e, d                                        ; $621c: $5a
	halt                                             ; $621d: $76
	ld   d, h                                        ; $621e: $54
	ld   h, d                                        ; $621f: $62
	ld   h, h                                        ; $6220: $64
	ld   d, d                                        ; $6221: $52
	adc  h                                           ; $6222: $8c
	ld   h, l                                        ; $6223: $65
	ld   l, l                                        ; $6224: $6d
	sbc  a                                           ; $6225: $9f
	dec  c                                           ; $6226: $0d
	nop                                              ; $6227: $00
	ld   a, [bc]                                     ; $6228: $0a
	ld   b, $08                                      ; $6229: $06 $08
	db   $10                                         ; $622b: $10
	rrca                                             ; $622c: $0f
	add  hl, bc                                      ; $622d: $09
	nop                                              ; $622e: $00
	ld   bc, $0008                                   ; $622f: $01 $08 $00
	ld   e, l                                        ; $6232: $5d
	and  c                                           ; $6233: $a1
	ld   a, l                                        ; $6234: $7d
	dec  c                                           ; $6235: $0d
	sub  b                                           ; $6236: $90
	ld   d, h                                        ; $6237: $54
	inc  bc                                          ; $6238: $03
	ld   l, h                                        ; $6239: $6c
	ld   h, l                                        ; $623a: $65
	ld   [bc], a                                     ; $623b: $02
	add  h                                           ; $623c: $84
	ld   [bc], a                                     ; $623d: $02
	and  d                                           ; $623e: $a2
	inc  b                                           ; $623f: $04
	jr   nz, jr_056_6246                             ; $6240: $20 $04

	dec  hl                                          ; $6242: $2b
	inc  bc                                          ; $6243: $03
	dec  [hl]                                        ; $6244: $35
	and  b                                           ; $6245: $a0

jr_056_6246:
	dec  c                                           ; $6246: $0d
	inc  b                                           ; $6247: $04
	pop  de                                          ; $6248: $d1
	ld   a, c                                        ; $6249: $79
	ld   [hl], d                                     ; $624a: $72
	ld   e, a                                        ; $624b: $5f
	ld   l, l                                        ; $624c: $6d
	adc  c                                           ; $624d: $89
	ld   d, h                                        ; $624e: $54
	ld   e, d                                        ; $624f: $5a
	ld   d, d                                        ; $6250: $52
	ld   d, d                                        ; $6251: $52
	ld   a, b                                        ; $6252: $78
	sbc  a                                           ; $6253: $9f
	dec  c                                           ; $6254: $0d
	nop                                              ; $6255: $00
	ld   a, [bc]                                     ; $6256: $0a
	ld   bc, $cf02                                   ; $6257: $01 $02 $cf
	dec  b                                           ; $625a: $05
	ld   a, [de]                                     ; $625b: $1a
	ld   a, h                                        ; $625c: $7c
	inc  bc                                          ; $625d: $03
	ld   l, l                                        ; $625e: $6d
	dec  b                                           ; $625f: $05
	add  hl, de                                      ; $6260: $19
	and  b                                           ; $6261: $a0
	dec  c                                           ; $6262: $0d
	ld   l, a                                        ; $6263: $6f
	sub  l                                           ; $6264: $95
	ld   [hl], c                                     ; $6265: $71
	halt                                             ; $6266: $76
	inc  b                                           ; $6267: $04
	rrca                                             ; $6268: $0f
	adc  a                                           ; $6269: $8f
	ld   a, c                                        ; $626a: $79
	halt                                             ; $626b: $76
	ld   [hl], c                                     ; $626c: $71
	ld   [hl], h                                     ; $626d: $74
	ld   e, b                                        ; $626e: $58
	ld   e, l                                        ; $626f: $5d
	halt                                             ; $6270: $76
	dec  c                                           ; $6271: $0d
	ld   d, d                                        ; $6272: $52
	ld   d, d                                        ; $6273: $52
	and  c                                           ; $6274: $a1
	ld   h, [hl]                                     ; $6275: $66
	sub  c                                           ; $6276: $91
	ld   a, b                                        ; $6277: $78
	ld   d, d                                        ; $6278: $52
	ld   e, c                                        ; $6279: $59
	ld   a, b                                        ; $627a: $78
	sbc  a                                           ; $627b: $9f
	dec  c                                           ; $627c: $0d
	nop                                              ; $627d: $00
	ld   a, [bc]                                     ; $627e: $0a
	ld   bc, $cf02                                   ; $627f: $01 $02 $cf
	dec  b                                           ; $6282: $05
	ld   a, [de]                                     ; $6283: $1a
	ld   a, h                                        ; $6284: $7c
	ld   [bc], a                                     ; $6285: $02
	ld   l, d                                        ; $6286: $6a
	ld   b, $44                                      ; $6287: $06 $44
	and  b                                           ; $6289: $a0
	sbc  [hl]                                        ; $628a: $9e
	ld   l, e                                        ; $628b: $6b
	ld   a, [hl]                                     ; $628c: $7e
	ld   [hl], l                                     ; $628d: $75
	ld   [bc], a                                     ; $628e: $02
	sub  l                                           ; $628f: $95
	ld   [hl], h                                     ; $6290: $74
	sbc  c                                           ; $6291: $99
	dec  c                                           ; $6292: $0d
	ld   l, [hl]                                     ; $6293: $6e
	ld   e, a                                        ; $6294: $5f
	ld   [hl], l                                     ; $6295: $75
	sub  b                                           ; $6296: $90
	inc  b                                           ; $6297: $04
	xor  [hl]                                        ; $6298: $ae
	ld   [bc], a                                     ; $6299: $02
	call nc, Call_056_7879                           ; $629a: $d4 $79 $78
	sbc  c                                           ; $629d: $99
	ld   e, c                                        ; $629e: $59
	sub  a                                           ; $629f: $97
	ld   a, e                                        ; $62a0: $7b
	sbc  a                                           ; $62a1: $9f
	dec  c                                           ; $62a2: $0d
	nop                                              ; $62a3: $00
	ld   a, [bc]                                     ; $62a4: $0a
	rrca                                             ; $62a5: $0f
	nop                                              ; $62a6: $00
	ld   bc, $7801                                   ; $62a7: $01 $01 $78
	sbc  c                                           ; $62aa: $99
	adc  c                                           ; $62ab: $89
	ld   [hl], a                                     ; $62ac: $77
	rst  $38                                         ; $62ad: $ff
	rst  $38                                         ; $62ae: $ff
	dec  c                                           ; $62af: $0d
	sbc  l                                           ; $62b0: $9d
	ld   e, c                                        ; $62b1: $59
	sbc  b                                           ; $62b2: $98
	adc  h                                           ; $62b3: $8c
	ld   h, l                                        ; $62b4: $65
	ld   l, l                                        ; $62b5: $6d
	sbc  [hl]                                        ; $62b6: $9e
	and  e                                           ; $62b7: $a3
	jp   z, $a5d1                                    ; $62b8: $ca $d1 $a5

	cp   d                                           ; $62bb: $ba
	sbc  [hl]                                        ; $62bc: $9e
	dec  c                                           ; $62bd: $0d
	ld   d, b                                        ; $62be: $50
	sbc  b                                           ; $62bf: $98
	ld   e, d                                        ; $62c0: $5a
	halt                                             ; $62c1: $76
	ld   d, h                                        ; $62c2: $54
	ld   h, d                                        ; $62c3: $62
	ld   h, h                                        ; $62c4: $64
	ld   d, d                                        ; $62c5: $52
	adc  h                                           ; $62c6: $8c
	ld   h, l                                        ; $62c7: $65
	ld   l, l                                        ; $62c8: $6d
	sbc  a                                           ; $62c9: $9f
	dec  c                                           ; $62ca: $0d
	nop                                              ; $62cb: $00
	ld   a, [bc]                                     ; $62cc: $0a
	ld   b, $08                                      ; $62cd: $06 $08
	db   $10                                         ; $62cf: $10
	rrca                                             ; $62d0: $0f
	add  hl, bc                                      ; $62d1: $09
	nop                                              ; $62d2: $00
	ld   bc, $0008                                   ; $62d3: $01 $08 $00
	ld   e, l                                        ; $62d6: $5d
	and  c                                           ; $62d7: $a1
	ld   a, l                                        ; $62d8: $7d
	dec  c                                           ; $62d9: $0d
	sub  b                                           ; $62da: $90
	ld   [hl], c                                     ; $62db: $71
	halt                                             ; $62dc: $76
	ld   [bc], a                                     ; $62dd: $02
	and  c                                           ; $62de: $a1
	ld   [bc], a                                     ; $62df: $02
	ld   a, e                                        ; $62e0: $7b
	ld   d, d                                        ; $62e1: $52
	and  b                                           ; $62e2: $a0
	dec  c                                           ; $62e3: $0d
	inc  b                                           ; $62e4: $04
	pop  de                                          ; $62e5: $d1
	ld   a, c                                        ; $62e6: $79
	ld   [hl], d                                     ; $62e7: $72
	ld   e, a                                        ; $62e8: $5f
	ld   l, l                                        ; $62e9: $6d
	adc  c                                           ; $62ea: $89
	ld   d, h                                        ; $62eb: $54
	ld   e, d                                        ; $62ec: $5a
	ld   d, d                                        ; $62ed: $52
	ld   d, d                                        ; $62ee: $52
	ld   a, b                                        ; $62ef: $78
	sbc  a                                           ; $62f0: $9f
	dec  c                                           ; $62f1: $0d
	nop                                              ; $62f2: $00
	ld   a, [bc]                                     ; $62f3: $0a
	ld   bc, $f5ac                                   ; $62f4: $01 $ac $f5
	bit  7, h                                        ; $62f7: $cb $7c
	inc  bc                                          ; $62f9: $03
	ld   l, l                                        ; $62fa: $6d
	dec  b                                           ; $62fb: $05
	add  hl, de                                      ; $62fc: $19
	and  b                                           ; $62fd: $a0
	dec  c                                           ; $62fe: $0d
	ld   l, a                                        ; $62ff: $6f
	sub  l                                           ; $6300: $95
	ld   [hl], c                                     ; $6301: $71
	halt                                             ; $6302: $76
	inc  b                                           ; $6303: $04
	rrca                                             ; $6304: $0f
	adc  a                                           ; $6305: $8f
	ld   a, c                                        ; $6306: $79
	halt                                             ; $6307: $76
	ld   [hl], c                                     ; $6308: $71
	ld   [hl], h                                     ; $6309: $74
	ld   e, b                                        ; $630a: $58
	ld   e, l                                        ; $630b: $5d
	halt                                             ; $630c: $76
	dec  c                                           ; $630d: $0d
	ld   d, d                                        ; $630e: $52
	ld   d, d                                        ; $630f: $52
	and  c                                           ; $6310: $a1
	ld   h, [hl]                                     ; $6311: $66
	sub  c                                           ; $6312: $91
	ld   a, b                                        ; $6313: $78
	ld   d, d                                        ; $6314: $52
	ld   e, c                                        ; $6315: $59
	ld   a, b                                        ; $6316: $78
	sbc  a                                           ; $6317: $9f
	dec  c                                           ; $6318: $0d
	nop                                              ; $6319: $00
	ld   a, [bc]                                     ; $631a: $0a
	ld   bc, $f5ac                                   ; $631b: $01 $ac $f5
	bit  7, h                                        ; $631e: $cb $7c
	ld   [bc], a                                     ; $6320: $02
	or   [hl]                                        ; $6321: $b6
	inc  bc                                          ; $6322: $03
	ld   l, e                                        ; $6323: $6b
	ld   a, l                                        ; $6324: $7d
	dec  c                                           ; $6325: $0d
	adc  h                                           ; $6326: $8c
	ld   h, e                                        ; $6327: $63
	ld   a, c                                        ; $6328: $79
	ld   bc, $0207                                   ; $6329: $01 $07 $02
	and  c                                           ; $632c: $a1
	ld   [bc], a                                     ; $632d: $02
	ld   a, e                                        ; $632e: $7b
	ld   d, d                                        ; $632f: $52
	ld   a, h                                        ; $6330: $7c
	inc  b                                           ; $6331: $04
	ld   d, d                                        ; $6332: $52
	inc  bc                                          ; $6333: $03
	db   $10                                         ; $6334: $10
	ld   bc, $0d08                                   ; $6335: $01 $08 $0d
	halt                                             ; $6338: $76
	ld   d, d                                        ; $6339: $52
	ld   d, h                                        ; $633a: $54
	ld   [bc], a                                     ; $633b: $02
	scf                                              ; $633c: $37
	ld   h, [hl]                                     ; $633d: $66
	ld   l, [hl]                                     ; $633e: $6e
	ld   e, c                                        ; $633f: $59
	sub  a                                           ; $6340: $97
	ld   a, e                                        ; $6341: $7b
	sbc  a                                           ; $6342: $9f
	dec  c                                           ; $6343: $0d
	nop                                              ; $6344: $00
	ld   a, [bc]                                     ; $6345: $0a
	rrca                                             ; $6346: $0f
	nop                                              ; $6347: $00
	ld   bc, $7801                                   ; $6348: $01 $01 $78
	sbc  c                                           ; $634b: $99
	adc  c                                           ; $634c: $89
	ld   [hl], a                                     ; $634d: $77
	rst  $38                                         ; $634e: $ff
	rst  $38                                         ; $634f: $ff
	dec  c                                           ; $6350: $0d
	sbc  l                                           ; $6351: $9d
	ld   e, c                                        ; $6352: $59
	sbc  b                                           ; $6353: $98

jr_056_6354:
	adc  h                                           ; $6354: $8c
	ld   h, l                                        ; $6355: $65
	ld   l, l                                        ; $6356: $6d
	sbc  [hl]                                        ; $6357: $9e
	and  e                                           ; $6358: $a3
	jp   z, $a5d1                                    ; $6359: $ca $d1 $a5

	cp   d                                           ; $635c: $ba
	sbc  [hl]                                        ; $635d: $9e
	dec  c                                           ; $635e: $0d
	ld   d, b                                        ; $635f: $50
	sbc  b                                           ; $6360: $98
	ld   e, d                                        ; $6361: $5a
	halt                                             ; $6362: $76
	ld   d, h                                        ; $6363: $54
	ld   h, d                                        ; $6364: $62
	ld   h, h                                        ; $6365: $64
	ld   d, d                                        ; $6366: $52
	adc  h                                           ; $6367: $8c
	ld   h, l                                        ; $6368: $65
	ld   l, l                                        ; $6369: $6d
	sbc  a                                           ; $636a: $9f
	dec  c                                           ; $636b: $0d
	nop                                              ; $636c: $00
	ld   a, [bc]                                     ; $636d: $0a
	ld   b, $08                                      ; $636e: $06 $08
	db   $10                                         ; $6370: $10
	inc  e                                           ; $6371: $1c
	add  hl, bc                                      ; $6372: $09
	ld   bc, $0101                                   ; $6373: $01 $01 $01
	ld   d, h                                        ; $6376: $54
	and  c                                           ; $6377: $a1

Call_056_6378:
	sbc  a                                           ; $6378: $9f
	dec  c                                           ; $6379: $0d
	ld   l, e                                        ; $637a: $6b
	sbc  d                                           ; $637b: $9a
	ld   h, [hl]                                     ; $637c: $66
	sub  c                                           ; $637d: $91
	sbc  [hl]                                        ; $637e: $9e
	ld   e, d                                        ; $637f: $5a
	and  c                                           ; $6380: $a1
	ld   a, [hl]                                     ; $6381: $7e
	sbc  d                                           ; $6382: $9a
	sub  [hl]                                        ; $6383: $96
	sbc  a                                           ; $6384: $9f
	dec  c                                           ; $6385: $0d
	nop                                              ; $6386: $00
	ld   a, [bc]                                     ; $6387: $0a
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	ld   c, $26                                      ; $638a: $0e $26
	inc  e                                           ; $638c: $1c
	ld   b, $00                                      ; $638d: $06 $00
	nop                                              ; $638f: $00
	ld   [bc], a                                     ; $6390: $02
	ld   bc, $7d58                                   ; $6391: $01 $58 $7d
	sub  [hl]                                        ; $6394: $96
	ld   d, h                                        ; $6395: $54
	ld   a, [$000d]                                  ; $6396: $fa $0d $00
	ld   a, [bc]                                     ; $6399: $0a
	rrca                                             ; $639a: $0f
	nop                                              ; $639b: $00
	ld   bc, $5801                                   ; $639c: $01 $01 $58
	ld   a, l                                        ; $639f: $7d
	sub  [hl]                                        ; $63a0: $96
	ld   d, h                                        ; $63a1: $54
	ld   h, d                                        ; $63a2: $62
	ld   h, h                                        ; $63a3: $64
	ld   d, d                                        ; $63a4: $52
	adc  h                                           ; $63a5: $8c
	ld   h, a                                        ; $63a6: $67
	sbc  a                                           ; $63a7: $9f
	dec  c                                           ; $63a8: $0d
	nop                                              ; $63a9: $00
	ld   a, [bc]                                     ; $63aa: $0a
	ld   bc, $0301                                   ; $63ab: $01 $01 $03
	inc  b                                           ; $63ae: $04
	ld   c, c                                        ; $63af: $49
	ld   a, h                                        ; $63b0: $7c
	dec  b                                           ; $63b1: $05
	jr   nz, jr_056_6354                             ; $63b2: $20 $a0

	ld   h, l                                        ; $63b4: $65
	sub  [hl]                                        ; $63b5: $96
	ld   d, h                                        ; $63b6: $54
	ld   e, c                                        ; $63b7: $59
	ld   a, b                                        ; $63b8: $78
	rst  $38                                         ; $63b9: $ff
	ld   bc, $0d04                                   ; $63ba: $01 $04 $0d
	nop                                              ; $63bd: $00
	ld   a, [bc]                                     ; $63be: $0a
	add  hl, de                                      ; $63bf: $19
	dec  b                                           ; $63c0: $05
	inc  bc                                          ; $63c1: $03
	halt                                             ; $63c2: $76
	ld   h, c                                        ; $63c3: $61
	sbc  e                                           ; $63c4: $9b
	ld   [hl], h                                     ; $63c5: $74
	and  c                                           ; $63c6: $a1
	ld   a, h                                        ; $63c7: $7c
	dec  b                                           ; $63c8: $05
	jr   nz, jr_056_63cf                             ; $63c9: $20 $04

	dec  d                                           ; $63cb: $15
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	sub  h                                           ; $63ce: $94

jr_056_63cf:
	ld   [hl], l                                     ; $63cf: $75
	dec  b                                           ; $63d0: $05
	inc  b                                           ; $63d1: $04
	ld   a, h                                        ; $63d2: $7c
	dec  b                                           ; $63d3: $05
	jr   nz, @+$06                                   ; $63d4: $20 $04

	dec  d                                           ; $63d6: $15
	nop                                              ; $63d7: $00
	ld   bc, $7754                                   ; $63d8: $01 $54 $77
	and  c                                           ; $63db: $a1
	ld   a, h                                        ; $63dc: $7c
	dec  b                                           ; $63dd: $05
	jr   nz, jr_056_63e4                             ; $63de: $20 $04

	dec  d                                           ; $63e0: $15
	nop                                              ; $63e1: $00
	ld   [bc], a                                     ; $63e2: $02
	rlca                                             ; $63e3: $07

jr_056_63e4:
	sub  a                                           ; $63e4: $97
	nop                                              ; $63e5: $00
	ld   [bc], a                                     ; $63e6: $02
	inc  bc                                          ; $63e7: $03
	ld   bc, $2000                                   ; $63e8: $01 $00 $20
	nop                                              ; $63eb: $00
	rlca                                             ; $63ec: $07
	ld   b, b                                        ; $63ed: $40
	ld   [bc], a                                     ; $63ee: $02
	ld   [bc], a                                     ; $63ef: $02
	inc  bc                                          ; $63f0: $03
	ld   bc, $2001                                   ; $63f1: $01 $01 $20
	nop                                              ; $63f4: $00
	rlca                                             ; $63f5: $07
	dec  sp                                          ; $63f6: $3b
	inc  b                                           ; $63f7: $04
	ld   [bc], a                                     ; $63f8: $02
	inc  bc                                          ; $63f9: $03
	ld   bc, $2002                                   ; $63fa: $01 $02 $20
	nop                                              ; $63fd: $00
	ld   b, $77                                      ; $63fe: $06 $77
	nop                                              ; $6400: $00
	rrca                                             ; $6401: $0f
	ld   b, $00                                      ; $6402: $06 $00
	ld   bc, $a502                                   ; $6404: $01 $02 $a5
	inc  b                                           ; $6407: $04
	xor  d                                           ; $6408: $aa
	sub  b                                           ; $6409: $90
	ld   [bc], a                                     ; $640a: $02
	jr   nz, jr_056_6411                             ; $640b: $20 $04

	xor  d                                           ; $640d: $aa
	sbc  [hl]                                        ; $640e: $9e
	ld   e, d                                        ; $640f: $5a
	and  c                                           ; $6410: $a1

jr_056_6411:
	ld   a, [hl]                                     ; $6411: $7e
	sbc  d                                           ; $6412: $9a
	sub  [hl]                                        ; $6413: $96
	ld   a, [$000d]                                  ; $6414: $fa $0d $00
	ld   a, [bc]                                     ; $6417: $0a
	dec  c                                           ; $6418: $0d
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	rrca                                             ; $641b: $0f
	nop                                              ; $641c: $00
	ld   bc, $1e09                                   ; $641d: $01 $09 $1e
	nop                                              ; $6420: $00
	rrca                                             ; $6421: $0f
	nop                                              ; $6422: $00
	ld   bc, $6b01                                   ; $6423: $01 $01 $6b
	ld   d, h                                        ; $6426: $54
	ld   d, d                                        ; $6427: $52
	ld   d, [hl]                                     ; $6428: $56
	ld   a, [hl]                                     ; $6429: $7e
	sbc  [hl]                                        ; $642a: $9e
	xor  h                                           ; $642b: $ac
	push af                                          ; $642c: $f5
	bit  4, e                                        ; $642d: $cb $63
	and  c                                           ; $642f: $a1
	ld   [hl], h                                     ; $6430: $74
	dec  c                                           ; $6431: $0d
	halt                                             ; $6432: $76
	ld   h, c                                        ; $6433: $61
	sbc  e                                           ; $6434: $9b
	ld   [hl], h                                     ; $6435: $74
	and  c                                           ; $6436: $a1
	ld   a, c                                        ; $6437: $79
	inc  b                                           ; $6438: $04
	ld   c, c                                        ; $6439: $49
	and  b                                           ; $643a: $a0
	ld   e, c                                        ; $643b: $59
	ld   e, a                                        ; $643c: $5f
	ld   [hl], h                                     ; $643d: $74
	dec  c                                           ; $643e: $0d
	inc  bc                                          ; $643f: $03
	ld   l, d                                        ; $6440: $6a
	add  a                                           ; $6441: $87
	adc  h                                           ; $6442: $8c
	ld   h, a                                        ; $6443: $67
	ld   sp, hl                                      ; $6444: $f9
	dec  c                                           ; $6445: $0d
	nop                                              ; $6446: $00
	ld   a, [bc]                                     ; $6447: $0a
	inc  e                                           ; $6448: $1c
	ld   b, $00                                      ; $6449: $06 $00
	nop                                              ; $644b: $00
	ld   bc, $6176                                   ; $644c: $01 $76 $61
	sbc  e                                           ; $644f: $9b
	ld   [hl], h                                     ; $6450: $74
	and  c                                           ; $6451: $a1
	ld   sp, hl                                      ; $6452: $f9
	dec  c                                           ; $6453: $0d
	ld   l, e                                        ; $6454: $6b
	ld   a, h                                        ; $6455: $7c
	adc  h                                           ; $6456: $8c
	adc  h                                           ; $6457: $8c
	inc  bc                                          ; $6458: $03
	ld   l, d                                        ; $6459: $6a
	ld   d, h                                        ; $645a: $54
	ld   l, d                                        ; $645b: $6a
	sbc  a                                           ; $645c: $9f
	dec  c                                           ; $645d: $0d
	nop                                              ; $645e: $00
	ld   a, [bc]                                     ; $645f: $0a
	add  hl, de                                      ; $6460: $19
	dec  b                                           ; $6461: $05
	inc  bc                                          ; $6462: $03
	inc  bc                                          ; $6463: $03
	inc  l                                           ; $6464: $2c
	ld   h, [hl]                                     ; $6465: $66
	sub  l                                           ; $6466: $95
	ld   d, h                                        ; $6467: $54
	sub  h                                           ; $6468: $94
	ld   h, [hl]                                     ; $6469: $66
	sub  c                                           ; $646a: $91
	ld   a, b                                        ; $646b: $78
	ld   d, d                                        ; $646c: $52
	ld   a, h                                        ; $646d: $7c
	ld   sp, hl                                      ; $646e: $f9
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	ld   [bc], a                                     ; $6471: $02
	dec  [hl]                                        ; $6472: $35
	adc  l                                           ; $6473: $8d
	ld   [hl], d                                     ; $6474: $72
	ld   h, [hl]                                     ; $6475: $66
	sub  c                                           ; $6476: $91
	ld   a, b                                        ; $6477: $78
	ld   d, d                                        ; $6478: $52
	ld   a, h                                        ; $6479: $7c
	ld   sp, hl                                      ; $647a: $f9
	nop                                              ; $647b: $00
	ld   bc, $5258                                   ; $647c: $01 $58 $52
	ld   h, l                                        ; $647f: $65
	ld   d, d                                        ; $6480: $52
	ld   a, h                                        ; $6481: $7c
	ld   sp, hl                                      ; $6482: $f9
	nop                                              ; $6483: $00
	ld   [bc], a                                     ; $6484: $02
	rlca                                             ; $6485: $07
	add  hl, de                                      ; $6486: $19
	ld   bc, $0302                                   ; $6487: $01 $02 $03
	ld   bc, $2000                                   ; $648a: $01 $00 $20
	nop                                              ; $648d: $00
	rlca                                             ; $648e: $07
	ld   d, a                                        ; $648f: $57
	ld   bc, $0302                                   ; $6490: $01 $02 $03
	ld   bc, $2001                                   ; $6493: $01 $01 $20
	nop                                              ; $6496: $00
	rlca                                             ; $6497: $07
	sbc  d                                           ; $6498: $9a
	ld   bc, $0302                                   ; $6499: $01 $02 $03
	ld   bc, $2002                                   ; $649c: $01 $02 $20
	nop                                              ; $649f: $00
	ld   b, $f8                                      ; $64a0: $06 $f8
	ld   bc, $000f                                   ; $64a2: $01 $0f $00
	ld   bc, $0301                                   ; $64a5: $01 $01 $03
	inc  l                                           ; $64a8: $2c
	ld   h, [hl]                                     ; $64a9: $66
	sub  l                                           ; $64aa: $95
	ld   d, h                                        ; $64ab: $54
	sub  h                                           ; $64ac: $94
	halt                                             ; $64ad: $76
	ld   e, c                                        ; $64ae: $59
	dec  c                                           ; $64af: $0d
	ld   e, c                                        ; $64b0: $59
	ld   e, a                                        ; $64b1: $5f
	ld   a, b                                        ; $64b2: $78
	ld   d, d                                        ; $64b3: $52
	and  c                                           ; $64b4: $a1
	ld   [hl], l                                     ; $64b5: $75
	ld   h, a                                        ; $64b6: $67
	ld   e, c                                        ; $64b7: $59
	ld   sp, hl                                      ; $64b8: $f9
	dec  c                                           ; $64b9: $0d
	nop                                              ; $64ba: $00
	ld   a, [bc]                                     ; $64bb: $0a
	inc  e                                           ; $64bc: $1c
	ld   b, $01                                      ; $64bd: $06 $01
	ld   bc, $401d                                   ; $64bf: $01 $1d $40
	ld   d, $03                                      ; $64c2: $16 $03
	ld   d, $01                                      ; $64c4: $16 $01
	ld   [bc], a                                     ; $64c6: $02
	jr   z, jr_056_64c9                              ; $64c7: $28 $00

jr_056_64c9:
	ld   bc, $9a50                                   ; $64c9: $01 $50 $9a
	sub  b                                           ; $64cc: $90
	sbc  [hl]                                        ; $64cd: $9e
	ld   d, b                                        ; $64ce: $50
	ld   [hl], c                                     ; $64cf: $71
	ld   h, e                                        ; $64d0: $63
	sbc  b                                           ; $64d1: $98
	ld   h, l                                        ; $64d2: $65
	ld   [hl], h                                     ; $64d3: $74
	ld   [hl], h                                     ; $64d4: $74
	dec  c                                           ; $64d5: $0d
	ld   d, d                                        ; $64d6: $52
	ld   d, d                                        ; $64d7: $52
	sub  [hl]                                        ; $64d8: $96
	ld   a, b                                        ; $64d9: $78
	sbc  a                                           ; $64da: $9f
	dec  c                                           ; $64db: $0d
	nop                                              ; $64dc: $00
	ld   a, [bc]                                     ; $64dd: $0a
	ld   b, $ce                                      ; $64de: $06 $ce
	ld   bc, $000f                                   ; $64e0: $01 $0f $00
	ld   bc, $0201                                   ; $64e3: $01 $01 $02
	dec  [hl]                                        ; $64e6: $35
	adc  l                                           ; $64e7: $8d
	ld   [hl], d                                     ; $64e8: $72
	halt                                             ; $64e9: $76
	ld   e, c                                        ; $64ea: $59
	dec  c                                           ; $64eb: $0d
	ld   e, c                                        ; $64ec: $59
	ld   e, a                                        ; $64ed: $5f
	ld   a, b                                        ; $64ee: $78
	ld   d, d                                        ; $64ef: $52
	and  c                                           ; $64f0: $a1
	ld   [hl], l                                     ; $64f1: $75
	ld   h, a                                        ; $64f2: $67
	ld   e, c                                        ; $64f3: $59
	ld   sp, hl                                      ; $64f4: $f9
	dec  c                                           ; $64f5: $0d
	nop                                              ; $64f6: $00
	ld   a, [bc]                                     ; $64f7: $0a
	inc  e                                           ; $64f8: $1c
	ld   b, $01                                      ; $64f9: $06 $01
	ld   bc, $401d                                   ; $64fb: $01 $1d $40
	ld   d, $03                                      ; $64fe: $16 $03
	ld   d, $01                                      ; $6500: $16 $01
	ld   [bc], a                                     ; $6502: $02
	jr   z, jr_056_6505                              ; $6503: $28 $00

jr_056_6505:
	ld   bc, $9a50                                   ; $6505: $01 $50 $9a
	sub  b                                           ; $6508: $90
	ld   d, d                                        ; $6509: $52
	ld   d, d                                        ; $650a: $52
	sub  [hl]                                        ; $650b: $96
	ld   a, b                                        ; $650c: $78
	db   $fc                                         ; $650d: $fc
	sbc  a                                           ; $650e: $9f
	dec  c                                           ; $650f: $0d
	push bc                                          ; $6510: $c5
	db   $ed                                         ; $6511: $ed
	call nz, $0576                                   ; $6512: $c4 $76 $05
	and  c                                           ; $6515: $a1
	ld   e, l                                        ; $6516: $5d
	ld   [hl], h                                     ; $6517: $74
	ld   e, b                                        ; $6518: $58
	ld   d, d                                        ; $6519: $52
	ld   h, l                                        ; $651a: $65
	ld   d, d                                        ; $651b: $52
	ld   h, l                                        ; $651c: $65
	sbc  a                                           ; $651d: $9f
	dec  c                                           ; $651e: $0d
	nop                                              ; $651f: $00
	ld   a, [bc]                                     ; $6520: $0a
	ld   b, $ce                                      ; $6521: $06 $ce
	ld   bc, $000f                                   ; $6523: $01 $0f $00
	ld   bc, $6b01                                   ; $6526: $01 $01 $6b
	ld   a, h                                        ; $6529: $7c
	adc  h                                           ; $652a: $8c
	adc  h                                           ; $652b: $8c
	ld   [hl], c                                     ; $652c: $71
	ld   [hl], h                                     ; $652d: $74
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	dec  c                                           ; $6530: $0d
	inc  b                                           ; $6531: $04
	jp   nc, Jump_056_785a                           ; $6532: $d2 $5a $78

	ld   e, l                                        ; $6535: $5d
	ld   [hl], h                                     ; $6536: $74
	sub  b                                           ; $6537: $90
	ld   e, b                                        ; $6538: $58
	ld   d, d                                        ; $6539: $52
	ld   h, l                                        ; $653a: $65
	ld   d, d                                        ; $653b: $52
	ld   a, h                                        ; $653c: $7c
	dec  c                                           ; $653d: $0d
	ld   [hl], l                                     ; $653e: $75
	ld   h, a                                        ; $653f: $67
	ld   e, c                                        ; $6540: $59
	ld   sp, hl                                      ; $6541: $f9
	dec  c                                           ; $6542: $0d
	nop                                              ; $6543: $00
	ld   a, [bc]                                     ; $6544: $0a
	inc  e                                           ; $6545: $1c
	ld   b, $00                                      ; $6546: $06 $00
	nop                                              ; $6548: $00
	ld   bc, $5050                                   ; $6549: $01 $50 $50
	sbc  [hl]                                        ; $654c: $9e
	ld   d, h                                        ; $654d: $54
	adc  h                                           ; $654e: $8c
	ld   d, d                                        ; $654f: $52
	ld   l, d                                        ; $6550: $6a
	sbc  a                                           ; $6551: $9f
	dec  c                                           ; $6552: $0d
	nop                                              ; $6553: $00
	ld   a, [bc]                                     ; $6554: $0a
	ld   b, $ce                                      ; $6555: $06 $ce
	ld   bc, $7801                                   ; $6557: $01 $01 $78
	and  c                                           ; $655a: $a1

Jump_056_655b:
	ld   e, c                                        ; $655b: $59
	halt                                             ; $655c: $76
	ld   h, c                                        ; $655d: $61
	sbc  e                                           ; $655e: $9b
	ld   [hl], h                                     ; $655f: $74
	and  c                                           ; $6560: $a1
	inc  bc                                          ; $6561: $03
	ld   l, d                                        ; $6562: $6a
	ld   d, d                                        ; $6563: $52
	ld   l, l                                        ; $6564: $6d
	ld   e, l                                        ; $6565: $5d
	dec  c                                           ; $6566: $0d
	ld   a, b                                        ; $6567: $78
	ld   [hl], c                                     ; $6568: $71
	ld   [hl], h                                     ; $6569: $74
	ld   e, e                                        ; $656a: $5b
	ld   l, l                                        ; $656b: $6d
	ld   a, b                                        ; $656c: $78
	ld   c, a                                        ; $656d: $4f
	db   $fc                                         ; $656e: $fc
	sbc  a                                           ; $656f: $9f
	dec  c                                           ; $6570: $0d
	ld   h, [hl]                                     ; $6571: $66
	sub  c                                           ; $6572: $91
	ld   d, b                                        ; $6573: $50
	ld   a, b                                        ; $6574: $78
	sbc  a                                           ; $6575: $9f
	dec  c                                           ; $6576: $0d
	nop                                              ; $6577: $00
	ld   a, [bc]                                     ; $6578: $0a
	dec  c                                           ; $6579: $0d
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	rrca                                             ; $657c: $0f
	nop                                              ; $657d: $00
	ld   bc, $1e09                                   ; $657e: $01 $09 $1e
	nop                                              ; $6581: $00
	inc  e                                           ; $6582: $1c
	ld   b, $05                                      ; $6583: $06 $05
	dec  b                                           ; $6585: $05
	ld   bc, $7c6b                                   ; $6586: $01 $6b $7c
	adc  h                                           ; $6589: $8c
	adc  h                                           ; $658a: $8c
	ld   h, [hl]                                     ; $658b: $66
	sub  c                                           ; $658c: $91
	pop  bc                                          ; $658d: $c1
	db   $e3                                         ; $658e: $e3
	ld   a, b                                        ; $658f: $78
	ld   a, h                                        ; $6590: $7c
	ld   e, c                                        ; $6591: $59
	ld   sp, hl                                      ; $6592: $f9
	dec  c                                           ; $6593: $0d
	nop                                              ; $6594: $00
	ld   a, [bc]                                     ; $6595: $0a
	rrca                                             ; $6596: $0f
	nop                                              ; $6597: $00
	ld   bc, $ff01                                   ; $6598: $01 $01 $ff
	rst  $38                                         ; $659b: $ff
	rst  $38                                         ; $659c: $ff
	rst  $38                                         ; $659d: $ff
	rst  $38                                         ; $659e: $ff
	rst  $38                                         ; $659f: $ff
	dec  c                                           ; $65a0: $0d
	ld   d, d                                        ; $65a1: $52
	ld   d, [hl]                                     ; $65a2: $56
	sbc  [hl]                                        ; $65a3: $9e
	inc  b                                           ; $65a4: $04
	ld   c, c                                        ; $65a5: $49
	ld   [hl], l                                     ; $65a6: $75
	sub  b                                           ; $65a7: $90
	ld   d, b                                        ; $65a8: $50
	sbc  b                                           ; $65a9: $98
	adc  h                                           ; $65aa: $8c
	ld   l, c                                        ; $65ab: $69
	and  c                                           ; $65ac: $a1
	rst  $38                                         ; $65ad: $ff
	rst  $38                                         ; $65ae: $ff
	dec  c                                           ; $65af: $0d
	ld   e, b                                        ; $65b0: $58
	ld   h, [hl]                                     ; $65b1: $66
	sub  c                                           ; $65b2: $91
	adc  h                                           ; $65b3: $8c
	ld   h, l                                        ; $65b4: $65
	adc  h                                           ; $65b5: $8c
	ld   h, l                                        ; $65b6: $65
	ld   l, l                                        ; $65b7: $6d
	sbc  a                                           ; $65b8: $9f
	dec  c                                           ; $65b9: $0d
	nop                                              ; $65ba: $00
	ld   a, [bc]                                     ; $65bb: $0a
	inc  e                                           ; $65bc: $1c
	ld   b, $05                                      ; $65bd: $06 $05
	dec  b                                           ; $65bf: $05
	ld   bc, $f9f9                                   ; $65c0: $01 $f9 $f9
	ld   sp, hl                                      ; $65c3: $f9
	ld   sp, hl                                      ; $65c4: $f9
	ld   sp, hl                                      ; $65c5: $f9
	dec  c                                           ; $65c6: $0d
	nop                                              ; $65c7: $00
	ld   a, [bc]                                     ; $65c8: $0a
	nop                                              ; $65c9: $00
	rrca                                             ; $65ca: $0f
	nop                                              ; $65cb: $00
	ld   bc, $ac01                                   ; $65cc: $01 $01 $ac
	push af                                          ; $65cf: $f5
	bit  4, e                                        ; $65d0: $cb $63
	and  c                                           ; $65d2: $a1
	ld   [hl], c                                     ; $65d3: $71
	ld   [hl], h                                     ; $65d4: $74
	dec  c                                           ; $65d5: $0d
	sub  h                                           ; $65d6: $94
	ld   [hl], l                                     ; $65d7: $75
	dec  b                                           ; $65d8: $05
	inc  b                                           ; $65d9: $04
	ld   a, l                                        ; $65da: $7d
	sbc  [hl]                                        ; $65db: $9e
	inc  b                                           ; $65dc: $04
	ld   [hl], d                                     ; $65dd: $72
	ld   h, [hl]                                     ; $65de: $66
	sub  e                                           ; $65df: $93
	ld   e, l                                        ; $65e0: $5d
	inc  b                                           ; $65e1: $04
	sbc  l                                           ; $65e2: $9d
	ld   [hl], l                                     ; $65e3: $75
	ld   h, a                                        ; $65e4: $67
	ld   e, c                                        ; $65e5: $59
	ld   sp, hl                                      ; $65e6: $f9
	dec  c                                           ; $65e7: $0d
	ld   l, e                                        ; $65e8: $6b
	sbc  d                                           ; $65e9: $9a
	halt                                             ; $65ea: $76
	sub  b                                           ; $65eb: $90
	dec  b                                           ; $65ec: $05
	adc  c                                           ; $65ed: $89
	sub  h                                           ; $65ee: $94
	ld   [hl], l                                     ; $65ef: $75
	inc  b                                           ; $65f0: $04
	sbc  l                                           ; $65f1: $9d
	ld   [hl], l                                     ; $65f2: $75
	ld   h, a                                        ; $65f3: $67
	ld   e, c                                        ; $65f4: $59
	ld   sp, hl                                      ; $65f5: $f9
	dec  c                                           ; $65f6: $0d
	nop                                              ; $65f7: $00
	ld   a, [bc]                                     ; $65f8: $0a
	inc  e                                           ; $65f9: $1c
	ld   b, $00                                      ; $65fa: $06 $00
	nop                                              ; $65fc: $00
	ld   bc, $0358                                   ; $65fd: $01 $58 $03
	ld   c, a                                        ; $6600: $4f
	ld   a, l                                        ; $6601: $7d
	ld   [hl], a                                     ; $6602: $77
	ld   [hl], c                                     ; $6603: $71
	ld   l, a                                        ; $6604: $6f
	ld   a, b                                        ; $6605: $78
	and  c                                           ; $6606: $a1
	ld   l, [hl]                                     ; $6607: $6e
	ld   sp, hl                                      ; $6608: $f9
	dec  c                                           ; $6609: $0d
	nop                                              ; $660a: $00
	ld   a, [bc]                                     ; $660b: $0a
	add  hl, de                                      ; $660c: $19
	dec  b                                           ; $660d: $05
	inc  bc                                          ; $660e: $03
	dec  b                                           ; $660f: $05
	adc  c                                           ; $6610: $89
	sub  h                                           ; $6611: $94
	ld   [hl], l                                     ; $6612: $75
	inc  b                                           ; $6613: $04
	sbc  l                                           ; $6614: $9d
	nop                                              ; $6615: $00
	nop                                              ; $6616: $00
	inc  b                                           ; $6617: $04
	ld   [hl], d                                     ; $6618: $72
	ld   h, [hl]                                     ; $6619: $66
	sub  e                                           ; $661a: $93
	ld   e, l                                        ; $661b: $5d
	inc  b                                           ; $661c: $04
	sbc  l                                           ; $661d: $9d
	nop                                              ; $661e: $00
	ld   bc, $7177                                   ; $661f: $01 $77 $71
	ld   l, a                                        ; $6622: $6f
	ld   [hl], l                                     ; $6623: $75
	sub  b                                           ; $6624: $90
	ld   d, d                                        ; $6625: $52
	ld   d, d                                        ; $6626: $52
	nop                                              ; $6627: $00
	ld   [bc], a                                     ; $6628: $02
	rlca                                             ; $6629: $07
	cp   l                                           ; $662a: $bd
	ld   [bc], a                                     ; $662b: $02
	ld   [bc], a                                     ; $662c: $02
	inc  bc                                          ; $662d: $03
	ld   bc, $2000                                   ; $662e: $01 $00 $20
	nop                                              ; $6631: $00
	rlca                                             ; $6632: $07
	call nc, $0202                                   ; $6633: $d4 $02 $02
	inc  bc                                          ; $6636: $03
	ld   bc, $2001                                   ; $6637: $01 $01 $20
	nop                                              ; $663a: $00
	rlca                                             ; $663b: $07
	ld   e, a                                        ; $663c: $5f
	inc  bc                                          ; $663d: $03
	ld   [bc], a                                     ; $663e: $02
	inc  bc                                          ; $663f: $03
	ld   bc, $2002                                   ; $6640: $01 $02 $20
	nop                                              ; $6643: $00
	ld   b, $dd                                      ; $6644: $06 $dd
	inc  bc                                          ; $6646: $03
	rrca                                             ; $6647: $0f
	nop                                              ; $6648: $00
	ld   bc, $8a01                                   ; $6649: $01 $01 $8a
	ld   e, l                                        ; $664c: $5d
	ld   a, l                                        ; $664d: $7d
	dec  b                                           ; $664e: $05
	adc  c                                           ; $664f: $89
	sub  h                                           ; $6650: $94
	ld   [hl], l                                     ; $6651: $75
	inc  b                                           ; $6652: $04
	sbc  l                                           ; $6653: $9d
	ld   [hl], l                                     ; $6654: $75
	ld   h, a                                        ; $6655: $67
	ld   a, e                                        ; $6656: $7b
	sbc  a                                           ; $6657: $9f
	dec  c                                           ; $6658: $0d
	nop                                              ; $6659: $00
	ld   a, [bc]                                     ; $665a: $0a
	ld   b, $ec                                      ; $665b: $06 $ec
	ld   [bc], a                                     ; $665d: $02
	rrca                                             ; $665e: $0f
	nop                                              ; $665f: $00
	ld   bc, $8a01                                   ; $6660: $01 $01 $8a
	ld   e, l                                        ; $6663: $5d
	ld   a, l                                        ; $6664: $7d
	inc  b                                           ; $6665: $04
	ld   [hl], d                                     ; $6666: $72
	ld   h, [hl]                                     ; $6667: $66
	sub  e                                           ; $6668: $93
	ld   e, l                                        ; $6669: $5d
	inc  b                                           ; $666a: $04
	sbc  l                                           ; $666b: $9d
	ld   [hl], l                                     ; $666c: $75
	ld   h, a                                        ; $666d: $67
	ld   a, e                                        ; $666e: $7b
	sbc  a                                           ; $666f: $9f
	dec  c                                           ; $6670: $0d
	nop                                              ; $6671: $00
	ld   a, [bc]                                     ; $6672: $0a
	ld   b, $ec                                      ; $6673: $06 $ec
	ld   [bc], a                                     ; $6675: $02
	inc  e                                           ; $6676: $1c
	ld   b, $01                                      ; $6677: $06 $01
	ld   bc, $6b01                                   ; $6679: $01 $01 $6b
	and  c                                           ; $667c: $a1
	ld   a, b                                        ; $667d: $78
	dec  b                                           ; $667e: $05
	push bc                                          ; $667f: $c5
	ld   e, c                                        ; $6680: $59
	ld   d, d                                        ; $6681: $52
	ld   h, c                                        ; $6682: $61
	halt                                             ; $6683: $76
	ld   a, c                                        ; $6684: $79
	dec  c                                           ; $6685: $0d
	ld   h, c                                        ; $6686: $61
	ld   l, [hl]                                     ; $6687: $6e
	sbc  l                                           ; $6688: $9d
	sbc  c                                           ; $6689: $99
	ld   a, b                                        ; $668a: $78
	sub  [hl]                                        ; $668b: $96
	sbc  a                                           ; $668c: $9f
	dec  c                                           ; $668d: $0d
	nop                                              ; $668e: $00
	ld   a, [bc]                                     ; $668f: $0a
	ld   bc, $6d50                                   ; $6690: $01 $50 $6d
	ld   d, d                                        ; $6693: $52
	ld   a, l                                        ; $6694: $7d
	sbc  [hl]                                        ; $6695: $9e
	ld   [bc], a                                     ; $6696: $02
	jr   nz, jr_056_669b                             ; $6697: $20 $02

	xor  [hl]                                        ; $6699: $ae
	ld   [hl], l                                     ; $669a: $75

jr_056_669b:
	jp   nc, Jump_056_71b0                           ; $669b: $d2 $b0 $71

	ld   a, [$6e0d]                                  ; $669e: $fa $0d $6e
	ld   e, c                                        ; $66a1: $59
	sub  a                                           ; $66a2: $97
	sbc  [hl]                                        ; $66a3: $9e
	ld   [hl], a                                     ; $66a4: $77
	ld   [hl], c                                     ; $66a5: $71
	ld   l, a                                        ; $66a6: $6f
	ld   [hl], l                                     ; $66a7: $75
	sub  b                                           ; $66a8: $90
	ld   d, d                                        ; $66a9: $52
	ld   d, d                                        ; $66aa: $52
	and  c                                           ; $66ab: $a1
	ld   l, [hl]                                     ; $66ac: $6e
	sbc  a                                           ; $66ad: $9f
	dec  c                                           ; $66ae: $0d
	nop                                              ; $66af: $00
	ld   a, [bc]                                     ; $66b0: $0a
	inc  e                                           ; $66b1: $1c
	ld   b, $00                                      ; $66b2: $06 $00
	nop                                              ; $66b4: $00
	ld   bc, $7158                                   ; $66b5: $01 $58 $71
	sbc  [hl]                                        ; $66b8: $9e
	ld   l, e                                        ; $66b9: $6b
	sbc  e                                           ; $66ba: $9b
	ld   l, e                                        ; $66bb: $6b
	sbc  e                                           ; $66bc: $9b
	inc  bc                                          ; $66bd: $03
	ld   l, l                                        ; $66be: $6d
	dec  b                                           ; $66bf: $05
	add  hl, de                                      ; $66c0: $19
	ld   a, h                                        ; $66c1: $7c
	inc  bc                                          ; $66c2: $03
	ld   l, a                                        ; $66c3: $6f
	ld   [bc], a                                     ; $66c4: $02
	xor  c                                           ; $66c5: $a9
	dec  c                                           ; $66c6: $0d
	ld   h, [hl]                                     ; $66c7: $66
	sub  c                                           ; $66c8: $91
	ld   a, b                                        ; $66c9: $78
	ld   d, d                                        ; $66ca: $52
	ld   e, c                                        ; $66cb: $59
	ld   sp, hl                                      ; $66cc: $f9
	dec  c                                           ; $66cd: $0d
	ld   [bc], a                                     ; $66ce: $02
	and  l                                           ; $66cf: $a5
	inc  b                                           ; $66d0: $04
	xor  d                                           ; $66d1: $aa
	sub  b                                           ; $66d2: $90
	ld   [bc], a                                     ; $66d3: $02
	jr   nz, jr_056_66da                             ; $66d4: $20 $04

	xor  d                                           ; $66d6: $aa
	ld   e, d                                        ; $66d7: $5a
	and  c                                           ; $66d8: $a1
	ld   a, [hl]                                     ; $66d9: $7e

jr_056_66da:
	sbc  d                                           ; $66da: $9a
	sub  [hl]                                        ; $66db: $96
	sbc  a                                           ; $66dc: $9f
	dec  c                                           ; $66dd: $0d
	nop                                              ; $66de: $00
	ld   a, [bc]                                     ; $66df: $0a
	dec  c                                           ; $66e0: $0d
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	rrca                                             ; $66e3: $0f
	nop                                              ; $66e4: $00
	ld   bc, $1e09                                   ; $66e5: $01 $09 $1e
	nop                                              ; $66e8: $00
	rrca                                             ; $66e9: $0f
	nop                                              ; $66ea: $00
	ld   bc, $0401                                   ; $66eb: $01 $01 $04
	ld   l, l                                        ; $66ee: $6d
	ld   a, l                                        ; $66ef: $7d
	ld   [hl], a                                     ; $66f0: $77
	ld   [hl], c                                     ; $66f1: $71
	ld   l, a                                        ; $66f2: $6f
	ld   [hl], l                                     ; $66f3: $75
	sub  b                                           ; $66f4: $90
	ld   d, d                                        ; $66f5: $52
	ld   d, d                                        ; $66f6: $52
	ld   [hl], l                                     ; $66f7: $75
	ld   h, a                                        ; $66f8: $67
	sub  [hl]                                        ; $66f9: $96
	sbc  a                                           ; $66fa: $9f
	dec  c                                           ; $66fb: $0d
	nop                                              ; $66fc: $00
	ld   a, [bc]                                     ; $66fd: $0a
	inc  e                                           ; $66fe: $1c
	ld   b, $01                                      ; $66ff: $06 $01
	ld   bc, $401d                                   ; $6701: $01 $1d $40
	ld   d, $03                                      ; $6704: $16 $03
	ld   d, $01                                      ; $6706: $16 $01
	ld   [bc], a                                     ; $6708: $02
	jr   z, jr_056_670b                              ; $6709: $28 $00

jr_056_670b:
	ld   bc, $546b                                   ; $670b: $01 $6b $54
	ld   l, [hl]                                     ; $670e: $6e
	sub  [hl]                                        ; $670f: $96
	ld   a, b                                        ; $6710: $78
	sbc  a                                           ; $6711: $9f
	dec  c                                           ; $6712: $0d
	ld   d, b                                        ; $6713: $50
	ld   l, l                                        ; $6714: $6d
	ld   d, d                                        ; $6715: $52
	sub  b                                           ; $6716: $90
	sbc  [hl]                                        ; $6717: $9e
	ld   [bc], a                                     ; $6718: $02
	jr   nz, jr_056_671d                             ; $6719: $20 $02

	xor  [hl]                                        ; $671b: $ae
	ld   [hl], l                                     ; $671c: $75

jr_056_671d:
	jp   nc, Jump_056_71b0                           ; $671d: $d2 $b0 $71

	ld   a, [$6e0d]                                  ; $6720: $fa $0d $6e
	ld   e, c                                        ; $6723: $59
	sub  a                                           ; $6724: $97
	sbc  [hl]                                        ; $6725: $9e
	ld   [hl], a                                     ; $6726: $77
	ld   [hl], c                                     ; $6727: $71
	ld   l, a                                        ; $6728: $6f
	ld   [hl], l                                     ; $6729: $75
	sub  b                                           ; $672a: $90
	ld   d, d                                        ; $672b: $52
	ld   d, d                                        ; $672c: $52
	and  c                                           ; $672d: $a1
	ld   l, [hl]                                     ; $672e: $6e
	sbc  a                                           ; $672f: $9f
	dec  c                                           ; $6730: $0d
	nop                                              ; $6731: $00
	ld   a, [bc]                                     ; $6732: $0a
	ld   bc, $7158                                   ; $6733: $01 $58 $71
	sbc  [hl]                                        ; $6736: $9e
	ld   l, e                                        ; $6737: $6b
	sbc  e                                           ; $6738: $9b
	ld   l, e                                        ; $6739: $6b
	sbc  e                                           ; $673a: $9b
	inc  bc                                          ; $673b: $03
	ld   l, l                                        ; $673c: $6d
	dec  b                                           ; $673d: $05
	add  hl, de                                      ; $673e: $19
	ld   a, h                                        ; $673f: $7c
	inc  bc                                          ; $6740: $03
	ld   l, a                                        ; $6741: $6f
	ld   [bc], a                                     ; $6742: $02
	xor  c                                           ; $6743: $a9
	dec  c                                           ; $6744: $0d
	ld   h, [hl]                                     ; $6745: $66
	sub  c                                           ; $6746: $91
	ld   a, e                                        ; $6747: $7b
	ei                                               ; $6748: $fb
	ld   e, c                                        ; $6749: $59
	sbc  a                                           ; $674a: $9f
	dec  c                                           ; $674b: $0d
	ld   [bc], a                                     ; $674c: $02
	and  l                                           ; $674d: $a5
	inc  b                                           ; $674e: $04
	xor  d                                           ; $674f: $aa
	sub  b                                           ; $6750: $90
	ld   [bc], a                                     ; $6751: $02
	jr   nz, jr_056_6758                             ; $6752: $20 $04

	xor  d                                           ; $6754: $aa
	ld   e, d                                        ; $6755: $5a
	and  c                                           ; $6756: $a1
	ld   a, [hl]                                     ; $6757: $7e

jr_056_6758:
	sbc  d                                           ; $6758: $9a
	sub  [hl]                                        ; $6759: $96
	sbc  a                                           ; $675a: $9f
	dec  c                                           ; $675b: $0d
	nop                                              ; $675c: $00
	ld   a, [bc]                                     ; $675d: $0a
	dec  c                                           ; $675e: $0d
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	rrca                                             ; $6761: $0f
	nop                                              ; $6762: $00
	ld   bc, $1e09                                   ; $6763: $01 $09 $1e
	nop                                              ; $6766: $00
	inc  e                                           ; $6767: $1c
	ld   b, $05                                      ; $6768: $06 $05
	dec  b                                           ; $676a: $05
	ld   bc, $a178                                   ; $676b: $01 $78 $a1
	ld   l, [hl]                                     ; $676e: $6e
	sub  [hl]                                        ; $676f: $96
	sbc  [hl]                                        ; $6770: $9e
	inc  bc                                          ; $6771: $03
	add  d                                           ; $6772: $82
	ld   a, c                                        ; $6773: $79
	ld   [bc], a                                     ; $6774: $02

Jump_056_6775:
	jp   nz, Jump_056_7652                           ; $6775: $c2 $52 $76

	ld   d, d                                        ; $6778: $52
	ld   [hl], h                                     ; $6779: $74
	dec  c                                           ; $677a: $0d
	inc  bc                                          ; $677b: $03
	sub  h                                           ; $677c: $94
	inc  b                                           ; $677d: $04
	sbc  [hl]                                        ; $677e: $9e
	ld   a, l                                        ; $677f: $7d
	sbc  l                                           ; $6780: $9d
	ld   e, c                                        ; $6781: $59
	and  c                                           ; $6782: $a1
	ld   a, e                                        ; $6783: $7b
	ei                                               ; $6784: $fb
	ld   a, h                                        ; $6785: $7c
	ld   e, c                                        ; $6786: $59
	sub  [hl]                                        ; $6787: $96
	sbc  a                                           ; $6788: $9f
	dec  c                                           ; $6789: $0d
	inc  bc                                          ; $678a: $03
	dec  c                                           ; $678b: $0d
	inc  b                                           ; $678c: $04
	ld   a, b                                        ; $678d: $78
	ld   a, e                                        ; $678e: $7b
	ei                                               ; $678f: $fb
	sub  d                                           ; $6790: $92
	ld   [hl], d                                     ; $6791: $72
	ld   l, [hl]                                     ; $6792: $6e
	ld   a, b                                        ; $6793: $78
	ei                                               ; $6794: $fb
	sbc  a                                           ; $6795: $9f
	dec  c                                           ; $6796: $0d
	nop                                              ; $6797: $00
	ld   a, [bc]                                     ; $6798: $0a
	ld   bc, $7463                                   ; $6799: $01 $63 $74
	halt                                             ; $679c: $76
	sbc  [hl]                                        ; $679d: $9e
	sub  b                                           ; $679e: $90
	ld   d, h                                        ; $679f: $54
	ld   [bc], a                                     ; $67a0: $02
	ld   a, a                                        ; $67a1: $7f
	ld   e, c                                        ; $67a2: $59
	ld   a, b                                        ; $67a3: $78
	ld   e, l                                        ; $67a4: $5d
	ld   l, a                                        ; $67a5: $6f
	sub  c                                           ; $67a6: $91
	ld   a, b                                        ; $67a7: $78
	sbc  a                                           ; $67a8: $9f
	dec  c                                           ; $67a9: $0d
	ld   [bc], a                                     ; $67aa: $02
	and  l                                           ; $67ab: $a5
	inc  b                                           ; $67ac: $04
	xor  d                                           ; $67ad: $aa
	sub  b                                           ; $67ae: $90
	ld   [bc], a                                     ; $67af: $02
	jr   nz, jr_056_67b6                             ; $67b0: $20 $04

	xor  d                                           ; $67b2: $aa
	ld   e, d                                        ; $67b3: $5a
	and  c                                           ; $67b4: $a1
	ld   a, [hl]                                     ; $67b5: $7e

jr_056_67b6:
	sbc  d                                           ; $67b6: $9a
	sub  [hl]                                        ; $67b7: $96
	sbc  a                                           ; $67b8: $9f
	dec  c                                           ; $67b9: $0d
	nop                                              ; $67ba: $00
	ld   a, [bc]                                     ; $67bb: $0a
	dec  c                                           ; $67bc: $0d
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
	rrca                                             ; $67bf: $0f
	nop                                              ; $67c0: $00
	ld   bc, $1e09                                   ; $67c1: $01 $09 $1e
	nop                                              ; $67c4: $00
	rrca                                             ; $67c5: $0f
	nop                                              ; $67c6: $00
	ld   bc, $ac01                                   ; $67c7: $01 $01 $ac
	push af                                          ; $67ca: $f5
	bit  4, e                                        ; $67cb: $cb $63
	and  c                                           ; $67cd: $a1
	ld   [hl], c                                     ; $67ce: $71
	ld   [hl], h                                     ; $67cf: $74
	dec  c                                           ; $67d0: $0d
	ld   d, h                                        ; $67d1: $54
	ld   [hl], a                                     ; $67d2: $77
	and  c                                           ; $67d3: $a1
	ld   a, h                                        ; $67d4: $7c
	inc  bc                                          ; $67d5: $03
	ld   b, [hl]                                     ; $67d6: $46
	ld   a, l                                        ; $67d7: $7d
	sbc  [hl]                                        ; $67d8: $9e
	ld   [bc], a                                     ; $67d9: $02
	ld   c, d                                        ; $67da: $4a
	inc  b                                           ; $67db: $04
	dec  l                                           ; $67dc: $2d
	inc  b                                           ; $67dd: $04
	ld   [hl], a                                     ; $67de: $77
	ld   [hl], l                                     ; $67df: $75
	ld   h, a                                        ; $67e0: $67
	ld   e, c                                        ; $67e1: $59
	ld   sp, hl                                      ; $67e2: $f9
	dec  c                                           ; $67e3: $0d
	ld   [bc], a                                     ; $67e4: $02
	ld   c, d                                        ; $67e5: $4a
	inc  b                                           ; $67e6: $04
	ld   c, e                                        ; $67e7: $4b
	inc  b                                           ; $67e8: $04
	ld   [hl], a                                     ; $67e9: $77
	ld   [hl], l                                     ; $67ea: $75
	ld   h, a                                        ; $67eb: $67
	ld   e, c                                        ; $67ec: $59
	ld   sp, hl                                      ; $67ed: $f9
	dec  c                                           ; $67ee: $0d
	nop                                              ; $67ef: $00
	ld   a, [bc]                                     ; $67f0: $0a
	inc  e                                           ; $67f1: $1c
	ld   b, $01                                      ; $67f2: $06 $01
	ld   bc, $7701                                   ; $67f4: $01 $01 $77
	ld   [hl], c                                     ; $67f7: $71
	ld   l, a                                        ; $67f8: $6f
	ld   l, [hl]                                     ; $67f9: $6e
	halt                                             ; $67fa: $76
	dec  b                                           ; $67fb: $05
	pop  de                                          ; $67fc: $d1
	ld   d, h                                        ; $67fd: $54
	ld   sp, hl                                      ; $67fe: $f9
	dec  c                                           ; $67ff: $0d
	ld   l, a                                        ; $6800: $6f
	ld   a, b                                        ; $6801: $78
	adc  l                                           ; $6802: $8d
	ld   a, c                                        ; $6803: $79
	ld   d, b                                        ; $6804: $50
	ld   l, l                                        ; $6805: $6d
	ld   d, d                                        ; $6806: $52
	ld   a, h                                        ; $6807: $7c
	inc  bc                                          ; $6808: $03
	add  b                                           ; $6809: $80
	inc  b                                           ; $680a: $04
	pop  de                                          ; $680b: $d1
	ld   a, l                                        ; $680c: $7d
	dec  c                                           ; $680d: $0d
	ld   [bc], a                                     ; $680e: $02
	dec  c                                           ; $680f: $0d
	inc  b                                           ; $6810: $04
	halt                                             ; $6811: $76
	ld   l, [hl]                                     ; $6812: $6e
	ld   l, d                                        ; $6813: $6a
	sbc  a                                           ; $6814: $9f
	dec  c                                           ; $6815: $0d
	nop                                              ; $6816: $00
	ld   a, [bc]                                     ; $6817: $0a
	add  hl, de                                      ; $6818: $19
	dec  b                                           ; $6819: $05
	inc  bc                                          ; $681a: $03
	ld   [bc], a                                     ; $681b: $02
	ld   c, d                                        ; $681c: $4a
	inc  b                                           ; $681d: $04
	dec  l                                           ; $681e: $2d
	inc  b                                           ; $681f: $04
	ld   [hl], a                                     ; $6820: $77
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	ld   [bc], a                                     ; $6823: $02
	ld   c, d                                        ; $6824: $4a
	inc  b                                           ; $6825: $04
	ld   c, e                                        ; $6826: $4b
	inc  b                                           ; $6827: $04
	ld   [hl], a                                     ; $6828: $77
	nop                                              ; $6829: $00
	ld   bc, $7177                                   ; $682a: $01 $77 $71
	ld   l, a                                        ; $682d: $6f
	ld   [hl], l                                     ; $682e: $75
	sub  b                                           ; $682f: $90
	ld   d, d                                        ; $6830: $52
	ld   d, d                                        ; $6831: $52
	nop                                              ; $6832: $00
	ld   [bc], a                                     ; $6833: $02
	rlca                                             ; $6834: $07
	ret  z                                           ; $6835: $c8

	inc  b                                           ; $6836: $04
	ld   [bc], a                                     ; $6837: $02
	inc  bc                                          ; $6838: $03
	ld   bc, $2000                                   ; $6839: $01 $00 $20
	nop                                              ; $683c: $00
	rlca                                             ; $683d: $07
	dec  de                                          ; $683e: $1b
	dec  b                                           ; $683f: $05
	ld   [bc], a                                     ; $6840: $02
	inc  bc                                          ; $6841: $03
	ld   bc, $2001                                   ; $6842: $01 $01 $20
	nop                                              ; $6845: $00
	rlca                                             ; $6846: $07
	ld   l, l                                        ; $6847: $6d
	dec  b                                           ; $6848: $05
	ld   [bc], a                                     ; $6849: $02
	inc  bc                                          ; $684a: $03
	ld   bc, $2002                                   ; $684b: $01 $02 $20
	nop                                              ; $684e: $00
	ld   b, $c9                                      ; $684f: $06 $c9
	dec  b                                           ; $6851: $05
	rrca                                             ; $6852: $0f
	nop                                              ; $6853: $00
	ld   bc, $0201                                   ; $6854: $01 $01 $02
	dec  [hl]                                        ; $6857: $35
	ld   d, d                                        ; $6858: $52
	inc  bc                                          ; $6859: $03
	ld   b, [hl]                                     ; $685a: $46
	ld   a, h                                        ; $685b: $7c
	ld   [bc], a                                     ; $685c: $02
	ld   c, d                                        ; $685d: $4a
	inc  b                                           ; $685e: $04
	dec  l                                           ; $685f: $2d
	inc  b                                           ; $6860: $04
	ld   [hl], a                                     ; $6861: $77
	ld   [hl], l                                     ; $6862: $75
	ld   h, l                                        ; $6863: $65
	sub  l                                           ; $6864: $95
	sbc  a                                           ; $6865: $9f
	dec  c                                           ; $6866: $0d
	nop                                              ; $6867: $00
	ld   a, [bc]                                     ; $6868: $0a
	inc  e                                           ; $6869: $1c
	ld   b, $00                                      ; $686a: $06 $00
	nop                                              ; $686c: $00
	dec  e                                           ; $686d: $1d
	ld   b, b                                        ; $686e: $40
	ld   d, $03                                      ; $686f: $16 $03
	ld   d, $01                                      ; $6871: $16 $01
	ld   [bc], a                                     ; $6873: $02
	add  hl, hl                                      ; $6874: $29
	nop                                              ; $6875: $00
	ld   bc, $fbd7                                   ; $6876: $01 $d7 $fb
	ei                                               ; $6879: $fb
	ei                                               ; $687a: $fb
	sbc  a                                           ; $687b: $9f
	ret  nc                                          ; $687c: $d0

	cp   e                                           ; $687d: $bb
	xor  $9f                                         ; $687e: $ee $9f
	dec  c                                           ; $6880: $0d
	ld   [bc], a                                     ; $6881: $02
	ld   c, d                                        ; $6882: $4a
	inc  b                                           ; $6883: $04
	dec  l                                           ; $6884: $2d
	inc  b                                           ; $6885: $04
	ld   [hl], a                                     ; $6886: $77
	ld   a, l                                        ; $6887: $7d
	ld   [bc], a                                     ; $6888: $02
	rlca                                             ; $6889: $07
	adc  [hl]                                        ; $688a: $8e
	ld   l, l                                        ; $688b: $6d
	adc  a                                           ; $688c: $8f
	ld   a, h                                        ; $688d: $7c
	inc  bc                                          ; $688e: $03
	ld   b, [hl]                                     ; $688f: $46
	ld   h, [hl]                                     ; $6890: $66
	sub  c                                           ; $6891: $91
	dec  c                                           ; $6892: $0d
	ld   a, b                                        ; $6893: $78
	ld   d, d                                        ; $6894: $52
	ld   e, c                                        ; $6895: $59
	sub  a                                           ; $6896: $97
	sbc  [hl]                                        ; $6897: $9e
	and  l                                           ; $6898: $a5
	rst  JumpTable                                         ; $6899: $df
	and  l                                           ; $689a: $a5
	jp   nz, Jump_056_786e                           ; $689b: $c2 $6e $78

	sbc  a                                           ; $689e: $9f
	dec  c                                           ; $689f: $0d
	nop                                              ; $68a0: $00
	ld   a, [bc]                                     ; $68a1: $0a
	ld   b, $1b                                      ; $68a2: $06 $1b
	ld   b, $0f                                      ; $68a4: $06 $0f
	nop                                              ; $68a6: $00
	ld   bc, $0301                                   ; $68a7: $01 $01 $03
	ld   b, [hl]                                     ; $68aa: $46
	ld   a, h                                        ; $68ab: $7c
	inc  bc                                          ; $68ac: $03
	dec  bc                                          ; $68ad: $0b
	ld   e, d                                        ; $68ae: $5a
	ld   d, h                                        ; $68af: $54
	ld   h, a                                        ; $68b0: $67
	ld   d, d                                        ; $68b1: $52
	ld   [bc], a                                     ; $68b2: $02
	ld   c, d                                        ; $68b3: $4a
	inc  b                                           ; $68b4: $04
	ld   c, e                                        ; $68b5: $4b
	inc  b                                           ; $68b6: $04
	ld   [hl], a                                     ; $68b7: $77
	ld   [hl], l                                     ; $68b8: $75
	ld   h, l                                        ; $68b9: $65
	sub  l                                           ; $68ba: $95
	sbc  a                                           ; $68bb: $9f
	dec  c                                           ; $68bc: $0d
	nop                                              ; $68bd: $00
	ld   a, [bc]                                     ; $68be: $0a
	inc  e                                           ; $68bf: $1c
	ld   b, $01                                      ; $68c0: $06 $01
	ld   bc, $401d                                   ; $68c2: $01 $1d $40
	ld   d, $03                                      ; $68c5: $16 $03
	ld   d, $01                                      ; $68c7: $16 $01
	ld   [bc], a                                     ; $68c9: $02
	jr   z, jr_056_68cc                              ; $68ca: $28 $00

jr_056_68cc:
	ld   bc, $f5d5                                   ; $68cc: $01 $d5 $f5
	sbc  $fb                                         ; $68cf: $de $fb
	push af                                          ; $68d1: $f5
	ld   a, [$a310]                                  ; $68d2: $fa $10 $a3
	ret  nz                                          ; $68d5: $c0

	db   $ec                                         ; $68d6: $ec
	ld   a, [$020d]                                  ; $68d7: $fa $0d $02
	dec  c                                           ; $68da: $0d
	inc  b                                           ; $68db: $04
	halt                                             ; $68dc: $76
	ld   a, h                                        ; $68dd: $7c
	cp   [hl]                                        ; $68de: $be
	ei                                               ; $68df: $fb
	xor  [hl]                                        ; $68e0: $ae
	ld   l, e                                        ; $68e1: $6b
	ld   a, [hl]                                     ; $68e2: $7e
	sub  b                                           ; $68e3: $90
	inc  b                                           ; $68e4: $04
	ld   [hl], e                                     ; $68e5: $73
	ld   d, d                                        ; $68e6: $52
	inc  bc                                          ; $68e7: $03
	dec  bc                                          ; $68e8: $0b
	ld   a, h                                        ; $68e9: $7c
	dec  c                                           ; $68ea: $0d
	inc  bc                                          ; $68eb: $03
	ld   b, [hl]                                     ; $68ec: $46
	ld   a, b                                        ; $68ed: $78
	and  c                                           ; $68ee: $a1
	ld   l, [hl]                                     ; $68ef: $6e
	sbc  a                                           ; $68f0: $9f
	dec  c                                           ; $68f1: $0d
	nop                                              ; $68f2: $00
	ld   a, [bc]                                     ; $68f3: $0a
	ld   b, $1b                                      ; $68f4: $06 $1b
	ld   b, $0f                                      ; $68f6: $06 $0f
	nop                                              ; $68f8: $00
	ld   bc, $ac01                                   ; $68f9: $01 $01 $ac
	push af                                          ; $68fc: $f5
	bit  4, e                                        ; $68fd: $cb $63
	and  c                                           ; $68ff: $a1
	ld   a, h                                        ; $6900: $7c
	ld   h, c                                        ; $6901: $61
	halt                                             ; $6902: $76
	ld   l, [hl]                                     ; $6903: $6e
	ld   e, c                                        ; $6904: $59
	sub  a                                           ; $6905: $97
	dec  c                                           ; $6906: $0d
	ld   [hl], a                                     ; $6907: $77
	ld   [hl], c                                     ; $6908: $71
	ld   l, a                                        ; $6909: $6f
	ld   [hl], l                                     ; $690a: $75
	sub  b                                           ; $690b: $90
	ld   d, d                                        ; $690c: $52
	ld   d, d                                        ; $690d: $52
	and  c                                           ; $690e: $a1
	ld   [hl], l                                     ; $690f: $75
	ld   h, l                                        ; $6910: $65
	sub  l                                           ; $6911: $95
	sbc  a                                           ; $6912: $9f
	dec  c                                           ; $6913: $0d
	nop                                              ; $6914: $00
	ld   a, [bc]                                     ; $6915: $0a
	inc  e                                           ; $6916: $1c
	ld   b, $05                                      ; $6917: $06 $05
	dec  b                                           ; $6919: $05
	dec  e                                           ; $691a: $1d
	ld   b, b                                        ; $691b: $40
	ld   d, $03                                      ; $691c: $16 $03
	ld   d, $01                                      ; $691e: $16 $01
	inc  bc                                          ; $6920: $03
	add  hl, hl                                      ; $6921: $29
	nop                                              ; $6922: $00
	ld   bc, $a178                                   ; $6923: $01 $78 $a1
	ld   l, [hl]                                     ; $6926: $6e
	sub  [hl]                                        ; $6927: $96
	sbc  [hl]                                        ; $6928: $9e
	ld   l, e                                        ; $6929: $6b
	ld   a, h                                        ; $692a: $7c
	ld   [bc], a                                     ; $692b: $02
	sbc  l                                           ; $692c: $9d
	ld   d, d                                        ; $692d: $52
	inc  b                                           ; $692e: $04
	ld   a, b                                        ; $692f: $78
	ld   a, l                                        ; $6930: $7d
	sbc  a                                           ; $6931: $9f
	dec  c                                           ; $6932: $0d
	adc  h                                           ; $6933: $8c
	sbc  c                                           ; $6934: $99
	ld   [hl], l                                     ; $6935: $75
	ld   d, b                                        ; $6936: $50
	ld   l, l                                        ; $6937: $6d
	ld   d, d                                        ; $6938: $52
	ld   e, d                                        ; $6939: $5a
	inc  b                                           ; $693a: $04
	jp   nc, Jump_056_7a02                           ; $693b: $d2 $02 $7a

	ld   e, d                                        ; $693e: $5a
	ld   a, b                                        ; $693f: $78
	ld   d, d                                        ; $6940: $52
	dec  c                                           ; $6941: $0d
	adc  l                                           ; $6942: $8d
	ld   l, l                                        ; $6943: $6d
	ld   d, d                                        ; $6944: $52
	ld   h, [hl]                                     ; $6945: $66
	sub  c                                           ; $6946: $91
	ld   a, b                                        ; $6947: $78
	ld   d, d                                        ; $6948: $52
	ld   e, c                                        ; $6949: $59
	sub  [hl]                                        ; $694a: $96
	db   $fc                                         ; $694b: $fc
	sbc  a                                           ; $694c: $9f
	dec  c                                           ; $694d: $0d
	nop                                              ; $694e: $00
	ld   a, [bc]                                     ; $694f: $0a
	ld   b, $1b                                      ; $6950: $06 $1b
	ld   b, $1c                                      ; $6952: $06 $1c
	ld   b, $05                                      ; $6954: $06 $05
	dec  b                                           ; $6956: $05
	dec  e                                           ; $6957: $1d
	ld   b, b                                        ; $6958: $40

Jump_056_6959:
	ld   d, $03                                      ; $6959: $16 $03
	ld   d, $01                                      ; $695b: $16 $01
	ld   bc, $0029                                   ; $695d: $01 $29 $00
	ld   bc, $a178                                   ; $6960: $01 $78 $a1
	ld   l, [hl]                                     ; $6963: $6e
	sub  [hl]                                        ; $6964: $96
	sbc  [hl]                                        ; $6965: $9e
	ld   l, e                                        ; $6966: $6b
	and  c                                           ; $6967: $a1
	ld   a, b                                        ; $6968: $78
	ld   a, c                                        ; $6969: $79
	ld   a, b                                        ; $696a: $78
	sub  d                                           ; $696b: $92
	adc  [hl]                                        ; $696c: $8e
	dec  c                                           ; $696d: $0d
	adc  c                                           ; $696e: $89
	ld   [hl], a                                     ; $696f: $77
	ld   a, h                                        ; $6970: $7c
	inc  bc                                          ; $6971: $03
	dec  d                                           ; $6972: $15
	inc  b                                           ; $6973: $04
	cp   a                                           ; $6974: $bf
	ld   l, [hl]                                     ; $6975: $6e
	ld   [hl], c                                     ; $6976: $71
	ld   l, l                                        ; $6977: $6d
	ld   e, c                                        ; $6978: $59
	ld   sp, hl                                      ; $6979: $f9
	dec  c                                           ; $697a: $0d
	nop                                              ; $697b: $00
	ld   a, [bc]                                     ; $697c: $0a
	inc  e                                           ; $697d: $1c
	ld   b, $00                                      ; $697e: $06 $00
	nop                                              ; $6980: $00
	ld   bc, $786f                                   ; $6981: $01 $6f $78
	adc  l                                           ; $6984: $8d
	ld   a, c                                        ; $6985: $79
	sbc  [hl]                                        ; $6986: $9e
	ld   d, b                                        ; $6987: $50
	ld   l, l                                        ; $6988: $6d
	ld   d, d                                        ; $6989: $52
	ld   a, l                                        ; $698a: $7d
	ld   [bc], a                                     ; $698b: $02
	ld   c, d                                        ; $698c: $4a
	inc  b                                           ; $698d: $04
	ld   c, e                                        ; $698e: $4b
	inc  b                                           ; $698f: $04
	ld   [hl], a                                     ; $6990: $77
	ld   a, h                                        ; $6991: $7c
	dec  c                                           ; $6992: $0d
	adc  c                                           ; $6993: $89
	ld   d, h                                        ; $6994: $54
	ld   e, d                                        ; $6995: $5a
	ld   [bc], a                                     ; $6996: $02
	sbc  d                                           ; $6997: $9a
	ld   e, e                                        ; $6998: $5b
	ld   a, b                                        ; $6999: $78
	and  c                                           ; $699a: $a1
	ld   l, [hl]                                     ; $699b: $6e
	ld   e, a                                        ; $699c: $5f
	ld   [hl], a                                     ; $699d: $77
	ld   a, b                                        ; $699e: $78
	ld   d, b                                        ; $699f: $50
	rst  $38                                         ; $69a0: $ff
	rst  $38                                         ; $69a1: $ff
	dec  c                                           ; $69a2: $0d
	nop                                              ; $69a3: $00
	ld   a, [bc]                                     ; $69a4: $0a
	ld   bc, $7463                                   ; $69a5: $01 $63 $74
	halt                                             ; $69a8: $76
	sbc  [hl]                                        ; $69a9: $9e
	sub  b                                           ; $69aa: $90
	ld   d, h                                        ; $69ab: $54
	ld   [bc], a                                     ; $69ac: $02
	ld   a, a                                        ; $69ad: $7f
	ld   e, c                                        ; $69ae: $59
	ld   a, b                                        ; $69af: $78
	ld   e, l                                        ; $69b0: $5d
	ld   l, a                                        ; $69b1: $6f
	sub  c                                           ; $69b2: $91
	ld   a, b                                        ; $69b3: $78
	sbc  a                                           ; $69b4: $9f
	dec  c                                           ; $69b5: $0d
	ld   [bc], a                                     ; $69b6: $02
	and  l                                           ; $69b7: $a5
	inc  b                                           ; $69b8: $04
	xor  d                                           ; $69b9: $aa
	sub  b                                           ; $69ba: $90
	ld   [bc], a                                     ; $69bb: $02
	jr   nz, jr_056_69c2                             ; $69bc: $20 $04

	xor  d                                           ; $69be: $aa
	ld   e, d                                        ; $69bf: $5a
	and  c                                           ; $69c0: $a1
	ld   a, [hl]                                     ; $69c1: $7e

jr_056_69c2:
	sbc  d                                           ; $69c2: $9a
	sub  [hl]                                        ; $69c3: $96
	ld   a, b                                        ; $69c4: $78
	sbc  a                                           ; $69c5: $9f
	dec  c                                           ; $69c6: $0d
	nop                                              ; $69c7: $00
	ld   a, [bc]                                     ; $69c8: $0a
	dec  c                                           ; $69c9: $0d
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	rrca                                             ; $69cc: $0f
	nop                                              ; $69cd: $00
	ld   bc, $1e09                                   ; $69ce: $01 $09 $1e
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	dec  c                                           ; $69d3: $0d
	inc  bc                                          ; $69d4: $03
	nop                                              ; $69d5: $00
	rrca                                             ; $69d6: $0f
	nop                                              ; $69d7: $00
	ld   bc, $0102                                   ; $69d8: $01 $02 $01
	ld   e, b                                        ; $69db: $58
	ld   a, l                                        ; $69dc: $7d
	sub  [hl]                                        ; $69dd: $96
	ld   d, h                                        ; $69de: $54
	ld   h, d                                        ; $69df: $62
	ld   h, h                                        ; $69e0: $64
	ld   d, d                                        ; $69e1: $52
	adc  h                                           ; $69e2: $8c
	ld   h, a                                        ; $69e3: $67
	sbc  a                                           ; $69e4: $9f
	dec  c                                           ; $69e5: $0d
	nop                                              ; $69e6: $00
	ld   a, [bc]                                     ; $69e7: $0a
	inc  e                                           ; $69e8: $1c
	inc  bc                                          ; $69e9: $03
	inc  bc                                          ; $69ea: $03
	inc  bc                                          ; $69eb: $03
	ld   bc, $7d58                                   ; $69ec: $01 $58 $7d
	sub  [hl]                                        ; $69ef: $96
	ld   d, h                                        ; $69f0: $54
	sbc  [hl]                                        ; $69f1: $9e
	ld   [$5d00], sp                                 ; $69f2: $08 $00 $5d
	and  c                                           ; $69f5: $a1
	sbc  a                                           ; $69f6: $9f
	dec  c                                           ; $69f7: $0d
	nop                                              ; $69f8: $00
	ld   a, [bc]                                     ; $69f9: $0a
	rrca                                             ; $69fa: $0f
	nop                                              ; $69fb: $00
	ld   bc, $0101                                   ; $69fc: $01 $01 $01
	inc  bc                                          ; $69ff: $03
	inc  b                                           ; $6a00: $04
	ld   c, c                                        ; $6a01: $49
	and  b                                           ; $6a02: $a0
	ld   [bc], a                                     ; $6a03: $02
	jp   nz, Jump_056_5461                           ; $6a04: $c2 $61 $54

	ld   e, c                                        ; $6a07: $59
	ld   a, b                                        ; $6a08: $78
	rst  $38                                         ; $6a09: $ff
	rst  $38                                         ; $6a0a: $ff
	ld   bc, $0d04                                   ; $6a0b: $01 $04 $0d
	nop                                              ; $6a0e: $00
	ld   a, [bc]                                     ; $6a0f: $0a
	add  hl, de                                      ; $6a10: $19
	dec  b                                           ; $6a11: $05
	inc  bc                                          ; $6a12: $03
	ld   h, l                                        ; $6a13: $65
	sub  e                                           ; $6a14: $93
	adc  l                                           ; $6a15: $8d
	ld   a, c                                        ; $6a16: $79
	ld   [hl], d                                     ; $6a17: $72
	ld   d, d                                        ; $6a18: $52
	ld   [hl], h                                     ; $6a19: $74
	ld   [bc], a                                     ; $6a1a: $02
	jp   nz, $005d                                   ; $6a1b: $c2 $5d $00

	nop                                              ; $6a1e: $00
	ld   h, e                                        ; $6a1f: $63
	ld   e, l                                        ; $6a20: $5d
	sub  a                                           ; $6a21: $97
	ld   a, c                                        ; $6a22: $79
	ld   [hl], d                                     ; $6a23: $72
	ld   d, d                                        ; $6a24: $52
	ld   [hl], h                                     ; $6a25: $74
	ld   [bc], a                                     ; $6a26: $02
	jp   nz, $005d                                   ; $6a27: $c2 $5d $00

	ld   bc, $1304                                   ; $6a2a: $01 $04 $13
	ld   [bc], a                                     ; $6a2d: $02
	and  c                                           ; $6a2e: $a1
	ld   a, c                                        ; $6a2f: $79
	ld   [hl], d                                     ; $6a30: $72
	ld   d, d                                        ; $6a31: $52
	ld   [hl], h                                     ; $6a32: $74
	ld   [bc], a                                     ; $6a33: $02
	jp   nz, $005d                                   ; $6a34: $c2 $5d $00

	ld   [bc], a                                     ; $6a37: $02
	rlca                                             ; $6a38: $07
	and  [hl]                                        ; $6a39: $a6
	nop                                              ; $6a3a: $00
	ld   [bc], a                                     ; $6a3b: $02
	inc  bc                                          ; $6a3c: $03
	ld   bc, $2000                                   ; $6a3d: $01 $00 $20
	nop                                              ; $6a40: $00
	rlca                                             ; $6a41: $07
	ld   d, c                                        ; $6a42: $51
	ld   [bc], a                                     ; $6a43: $02
	ld   [bc], a                                     ; $6a44: $02
	inc  bc                                          ; $6a45: $03
	ld   bc, $2001                                   ; $6a46: $01 $01 $20
	nop                                              ; $6a49: $00
	rlca                                             ; $6a4a: $07
	db   $fd                                         ; $6a4b: $fd
	ld   [bc], a                                     ; $6a4c: $02
	ld   [bc], a                                     ; $6a4d: $02
	inc  bc                                          ; $6a4e: $03
	ld   bc, $2002                                   ; $6a4f: $01 $02 $20
	nop                                              ; $6a52: $00
	ld   b, $83                                      ; $6a53: $06 $83
	nop                                              ; $6a55: $00
	inc  e                                           ; $6a56: $1c
	inc  bc                                          ; $6a57: $03
	inc  bc                                          ; $6a58: $03
	inc  bc                                          ; $6a59: $03
	ld   bc, $a502                                   ; $6a5a: $01 $02 $a5
	inc  b                                           ; $6a5d: $04
	xor  d                                           ; $6a5e: $aa
	sub  b                                           ; $6a5f: $90
	ld   [bc], a                                     ; $6a60: $02
	jr   nz, jr_056_6a67                             ; $6a61: $20 $04

	xor  d                                           ; $6a63: $aa
	dec  c                                           ; $6a64: $0d
	ld   e, d                                        ; $6a65: $5a
	and  c                                           ; $6a66: $a1

jr_056_6a67:
	ld   a, [hl]                                     ; $6a67: $7e
	sbc  b                                           ; $6a68: $98
	ld   a, b                                        ; $6a69: $78
	ld   h, e                                        ; $6a6a: $63
	ld   d, d                                        ; $6a6b: $52
	sbc  a                                           ; $6a6c: $9f
	dec  c                                           ; $6a6d: $0d
	nop                                              ; $6a6e: $00
	ld   a, [bc]                                     ; $6a6f: $0a
	dec  c                                           ; $6a70: $0d
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	rrca                                             ; $6a73: $0f
	nop                                              ; $6a74: $00
	ld   bc, $1e09                                   ; $6a75: $01 $09 $1e
	nop                                              ; $6a78: $00
	rrca                                             ; $6a79: $0f
	nop                                              ; $6a7a: $00
	ld   bc, $6b01                                   ; $6a7b: $01 $01 $6b
	ld   d, h                                        ; $6a7e: $54
	ld   d, d                                        ; $6a7f: $52
	ld   d, [hl]                                     ; $6a80: $56
	ld   a, [hl]                                     ; $6a81: $7e
	sbc  [hl]                                        ; $6a82: $9e
	rst  JumpTable                                         ; $6a83: $df
	db   $ec                                         ; $6a84: $ec
	and  e                                           ; $6a85: $a3
	ld   h, e                                        ; $6a86: $63
	and  c                                           ; $6a87: $a1
	ld   a, h                                        ; $6a88: $7c
	dec  c                                           ; $6a89: $0d
	ld   h, l                                        ; $6a8a: $65
	sub  e                                           ; $6a8b: $93
	adc  l                                           ; $6a8c: $8d
	ld   [hl], c                                     ; $6a8d: $71
	ld   [hl], h                                     ; $6a8e: $74
	ld   a, b                                        ; $6a8f: $78
	and  c                                           ; $6a90: $a1
	ld   [hl], l                                     ; $6a91: $75
	ld   h, a                                        ; $6a92: $67
	ld   e, c                                        ; $6a93: $59
	ld   sp, hl                                      ; $6a94: $f9
	dec  c                                           ; $6a95: $0d
	nop                                              ; $6a96: $00
	ld   a, [bc]                                     ; $6a97: $0a
	inc  e                                           ; $6a98: $1c
	inc  bc                                          ; $6a99: $03
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	ld   bc, $546b                                   ; $6a9c: $01 $6b $54
	ld   a, e                                        ; $6a9f: $7b
	rst  $38                                         ; $6aa0: $ff
	rst  $38                                         ; $6aa1: $ff
	inc  b                                           ; $6aa2: $04
	ld   de, $5503                                   ; $6aa3: $11 $03 $55
	rst  $38                                         ; $6aa6: $ff
	rst  $38                                         ; $6aa7: $ff
	dec  c                                           ; $6aa8: $0d
	ld   l, e                                        ; $6aa9: $6b
	sbc  d                                           ; $6aaa: $9a
	ld   a, c                                        ; $6aab: $79
	dec  b                                           ; $6aac: $05
	ld   [bc], a                                     ; $6aad: $02
	dec  b                                           ; $6aae: $05
	ld   de, $6559                                   ; $6aaf: $11 $59 $65
	sub  a                                           ; $6ab2: $97
	ld   sp, hl                                      ; $6ab3: $f9
	dec  c                                           ; $6ab4: $0d
	nop                                              ; $6ab5: $00
	ld   a, [bc]                                     ; $6ab6: $0a
	add  hl, de                                      ; $6ab7: $19
	dec  b                                           ; $6ab8: $05
	inc  bc                                          ; $6ab9: $03
	dec  b                                           ; $6aba: $05
	ld   [bc], a                                     ; $6abb: $02
	dec  b                                           ; $6abc: $05
	ld   de, $5b75                                   ; $6abd: $11 $75 $5b
	sbc  c                                           ; $6ac0: $99
	and  c                                           ; $6ac1: $a1
	ld   [hl], l                                     ; $6ac2: $75
	ld   h, a                                        ; $6ac3: $67
	ld   e, c                                        ; $6ac4: $59
	ld   sp, hl                                      ; $6ac5: $f9
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	ld   [bc], a                                     ; $6ac8: $02
	jr   nz, jr_056_6acf                             ; $6ac9: $20 $04

	add  hl, hl                                      ; $6acb: $29
	inc  bc                                          ; $6acc: $03
	ld   l, d                                        ; $6acd: $6a
	add  a                                           ; $6ace: $87

jr_056_6acf:
	ld   [hl], h                                     ; $6acf: $74
	adc  l                                           ; $6ad0: $8d
	ld   l, l                                        ; $6ad1: $6d
	ld   d, d                                        ; $6ad2: $52
	ld   [hl], l                                     ; $6ad3: $75
	ld   h, a                                        ; $6ad4: $67
	nop                                              ; $6ad5: $00
	ld   bc, $2802                                   ; $6ad6: $01 $02 $28
	inc  bc                                          ; $6ad9: $03
	add  d                                           ; $6ada: $82
	and  b                                           ; $6adb: $a0
	dec  b                                           ; $6adc: $05
	ld   [bc], a                                     ; $6add: $02
	dec  b                                           ; $6ade: $05
	ld   de, $9967                                   ; $6adf: $11 $67 $99
	and  c                                           ; $6ae2: $a1
	ld   [hl], l                                     ; $6ae3: $75
	ld   h, a                                        ; $6ae4: $67
	ld   e, c                                        ; $6ae5: $59
	ld   sp, hl                                      ; $6ae6: $f9
	nop                                              ; $6ae7: $00
	ld   [bc], a                                     ; $6ae8: $02
	rlca                                             ; $6ae9: $07
	inc  [hl]                                        ; $6aea: $34
	ld   bc, $0302                                   ; $6aeb: $01 $02 $03
	ld   bc, $2000                                   ; $6aee: $01 $00 $20
	nop                                              ; $6af1: $00
	rlca                                             ; $6af2: $07
	adc  c                                           ; $6af3: $89
	ld   bc, $0302                                   ; $6af4: $01 $02 $03
	ld   bc, $2001                                   ; $6af7: $01 $01 $20
	nop                                              ; $6afa: $00
	rlca                                             ; $6afb: $07
	ldh  [rSB], a                                    ; $6afc: $e0 $01
	ld   [bc], a                                     ; $6afe: $02
	inc  bc                                          ; $6aff: $03
	ld   bc, $2002                                   ; $6b00: $01 $02 $20
	nop                                              ; $6b03: $00
	ld   b, $27                                      ; $6b04: $06 $27
	ld   [bc], a                                     ; $6b06: $02
	rrca                                             ; $6b07: $0f
	nop                                              ; $6b08: $00
	ld   bc, $0501                                   ; $6b09: $01 $01 $05
	ld   [bc], a                                     ; $6b0c: $02
	dec  b                                           ; $6b0d: $05
	ld   de, $5b75                                   ; $6b0e: $11 $75 $5b
	sbc  c                                           ; $6b11: $99
	and  c                                           ; $6b12: $a1
	ld   [hl], l                                     ; $6b13: $75
	ld   h, a                                        ; $6b14: $67
	ld   e, c                                        ; $6b15: $59
	ld   sp, hl                                      ; $6b16: $f9
	dec  c                                           ; $6b17: $0d
	ld   a, b                                        ; $6b18: $78
	and  c                                           ; $6b19: $a1
	ld   l, [hl]                                     ; $6b1a: $6e
	ld   e, c                                        ; $6b1b: $59
	sbc  [hl]                                        ; $6b1c: $9e
	ld   [bc], a                                     ; $6b1d: $02
	dec  bc                                          ; $6b1e: $0b
	ld   [bc], a                                     ; $6b1f: $02
	bit  5, [hl]                                     ; $6b20: $cb $6e
	ld   a, b                                        ; $6b22: $78
	ld   c, a                                        ; $6b23: $4f
	db   $fc                                         ; $6b24: $fc
	sbc  a                                           ; $6b25: $9f
	dec  c                                           ; $6b26: $0d
	nop                                              ; $6b27: $00
	ld   a, [bc]                                     ; $6b28: $0a
	inc  e                                           ; $6b29: $1c
	inc  bc                                          ; $6b2a: $03
	inc  b                                           ; $6b2b: $04
	inc  b                                           ; $6b2c: $04
	dec  e                                           ; $6b2d: $1d
	ld   b, b                                        ; $6b2e: $40
	inc  de                                          ; $6b2f: $13
	inc  bc                                          ; $6b30: $03
	inc  de                                          ; $6b31: $13
	ld   bc, $2902                                   ; $6b32: $01 $02 $29
	nop                                              ; $6b35: $00
	ld   bc, $1804                                   ; $6b36: $01 $04 $18
	ld   l, l                                        ; $6b39: $6d
	sbc  b                                           ; $6b3a: $98
	inc  bc                                          ; $6b3b: $03
	ld   c, a                                        ; $6b3c: $4f
	ld   [hl], l                                     ; $6b3d: $75
	ld   h, l                                        ; $6b3e: $65
	sub  l                                           ; $6b3f: $95
	rst  $38                                         ; $6b40: $ff
	rst  $38                                         ; $6b41: $ff
	dec  c                                           ; $6b42: $0d
	ld   l, e                                        ; $6b43: $6b
	sbc  d                                           ; $6b44: $9a
	ld   e, [hl]                                     ; $6b45: $5e
	sub  a                                           ; $6b46: $97
	ld   d, d                                        ; $6b47: $52
	inc  bc                                          ; $6b48: $03
	add  b                                           ; $6b49: $80
	dec  b                                           ; $6b4a: $05
	db   $10                                         ; $6b4b: $10
	ld   a, b                                        ; $6b4c: $78
	ld   e, l                                        ; $6b4d: $5d
	ld   [hl], h                                     ; $6b4e: $74
	dec  c                                           ; $6b4f: $0d
	ld   [hl], a                                     ; $6b50: $77
	ld   d, h                                        ; $6b51: $54
	ld   h, a                                        ; $6b52: $67
	sbc  c                                           ; $6b53: $99
	ld   a, h                                        ; $6b54: $7c
	sbc  a                                           ; $6b55: $9f
	dec  c                                           ; $6b56: $0d
	nop                                              ; $6b57: $00
	ld   a, [bc]                                     ; $6b58: $0a
	ld   b, $27                                      ; $6b59: $06 $27
	ld   [bc], a                                     ; $6b5b: $02
	rrca                                             ; $6b5c: $0f
	nop                                              ; $6b5d: $00
	ld   bc, $0201                                   ; $6b5e: $01 $01 $02
	jr   nz, jr_056_6b67                             ; $6b61: $20 $04

	add  hl, hl                                      ; $6b63: $29
	inc  bc                                          ; $6b64: $03
	ld   l, d                                        ; $6b65: $6a
	add  a                                           ; $6b66: $87

jr_056_6b67:
	ld   [hl], h                                     ; $6b67: $74
	adc  l                                           ; $6b68: $8d
	ld   l, l                                        ; $6b69: $6d
	ld   d, d                                        ; $6b6a: $52
	ld   [hl], l                                     ; $6b6b: $75
	ld   h, a                                        ; $6b6c: $67
	sbc  a                                           ; $6b6d: $9f
	dec  c                                           ; $6b6e: $0d
	rst  JumpTable                                         ; $6b6f: $df
	db   $ec                                         ; $6b70: $ec
	and  e                                           ; $6b71: $a3
	ld   h, e                                        ; $6b72: $63
	and  c                                           ; $6b73: $a1
	ld   a, h                                        ; $6b74: $7c
	inc  bc                                          ; $6b75: $03
	ld   l, e                                        ; $6b76: $6b
	dec  b                                           ; $6b77: $05
	ld   [bc], a                                     ; $6b78: $02
	dec  b                                           ; $6b79: $05
	ld   de, $ffff                                   ; $6b7a: $11 $ff $ff
	dec  c                                           ; $6b7d: $0d
	nop                                              ; $6b7e: $00
	ld   a, [bc]                                     ; $6b7f: $0a
	inc  e                                           ; $6b80: $1c
	inc  bc                                          ; $6b81: $03
	inc  bc                                          ; $6b82: $03
	inc  bc                                          ; $6b83: $03
	dec  e                                           ; $6b84: $1d
	ld   b, b                                        ; $6b85: $40
	inc  de                                          ; $6b86: $13
	inc  bc                                          ; $6b87: $03
	inc  de                                          ; $6b88: $13
	ld   bc, $2802                                   ; $6b89: $01 $02 $28
	nop                                              ; $6b8c: $00
	ld   bc, $d6d6                                   ; $6b8d: $01 $d6 $d6
	rst  $38                                         ; $6b90: $ff
	rst  $38                                         ; $6b91: $ff
	ld   d, d                                        ; $6b92: $52
	ld   d, d                                        ; $6b93: $52
	sbc  l                                           ; $6b94: $9d
	sub  [hl]                                        ; $6b95: $96
	sbc  a                                           ; $6b96: $9f
	dec  c                                           ; $6b97: $0d
	nop                                              ; $6b98: $00
	dec  b                                           ; $6b99: $05
	add  b                                           ; $6b9a: $80
	ld   l, [hl]                                     ; $6b9b: $6e
	ld   bc, $0001                                   ; $6b9c: $01 $01 $00
	ld   bc, $a502                                   ; $6b9f: $01 $02 $a5
	inc  b                                           ; $6ba2: $04
	add  hl, hl                                      ; $6ba3: $29
	inc  bc                                          ; $6ba4: $03
	xor  h                                           ; $6ba5: $ac
	ld   [hl], c                                     ; $6ba6: $71
	ld   [hl], h                                     ; $6ba7: $74
	ld   d, b                                        ; $6ba8: $50
	ld   h, b                                        ; $6ba9: $60
	sbc  c                                           ; $6baa: $99
	sbc  l                                           ; $6bab: $9d
	sbc  a                                           ; $6bac: $9f
	dec  c                                           ; $6bad: $0d
	nop                                              ; $6bae: $00
	ld   a, [bc]                                     ; $6baf: $0a
	ld   b, $27                                      ; $6bb0: $06 $27
	ld   [bc], a                                     ; $6bb2: $02
	rrca                                             ; $6bb3: $0f
	nop                                              ; $6bb4: $00
	ld   bc, $0201                                   ; $6bb5: $01 $01 $02
	jr   z, jr_056_6bbd                              ; $6bb8: $28 $03

	add  d                                           ; $6bba: $82
	and  b                                           ; $6bbb: $a0
	dec  b                                           ; $6bbc: $05

jr_056_6bbd:
	ld   [bc], a                                     ; $6bbd: $02
	dec  b                                           ; $6bbe: $05
	ld   de, $9967                                   ; $6bbf: $11 $67 $99
	and  c                                           ; $6bc2: $a1
	ld   [hl], l                                     ; $6bc3: $75
	ld   h, a                                        ; $6bc4: $67
	ld   e, c                                        ; $6bc5: $59
	ld   sp, hl                                      ; $6bc6: $f9
	dec  c                                           ; $6bc7: $0d
	nop                                              ; $6bc8: $00
	ld   a, [bc]                                     ; $6bc9: $0a
	inc  e                                           ; $6bca: $1c
	inc  bc                                          ; $6bcb: $03
	inc  bc                                          ; $6bcc: $03
	inc  bc                                          ; $6bcd: $03
	dec  e                                           ; $6bce: $1d
	ld   b, b                                        ; $6bcf: $40
	inc  de                                          ; $6bd0: $13
	inc  bc                                          ; $6bd1: $03
	inc  de                                          ; $6bd2: $13
	ld   bc, $2801                                   ; $6bd3: $01 $01 $28
	nop                                              ; $6bd6: $00
	ld   bc, $d6d6                                   ; $6bd7: $01 $d6 $d6
	rst  $38                                         ; $6bda: $ff
	rst  $38                                         ; $6bdb: $ff
	add  e                                           ; $6bdc: $83
	ld   [hl], d                                     ; $6bdd: $72
	ld   d, h                                        ; $6bde: $54
	ld   a, h                                        ; $6bdf: $7c
	dec  b                                           ; $6be0: $05
	ld   [bc], a                                     ; $6be1: $02
	dec  b                                           ; $6be2: $05
	ld   de, $9f96                                   ; $6be3: $11 $96 $9f
	dec  c                                           ; $6be6: $0d
	ld   d, b                                        ; $6be7: $50
	ld   a, b                                        ; $6be8: $78
	ld   l, l                                        ; $6be9: $6d
	inc  b                                           ; $6bea: $04
	ret  c                                           ; $6beb: $d8

	inc  b                                           ; $6bec: $04
	xor  h                                           ; $6bed: $ac
	ld   d, d                                        ; $6bee: $52
	ld   h, c                                        ; $6bef: $61
	halt                                             ; $6bf0: $76
	ld   [bc], a                                     ; $6bf1: $02
	sbc  l                                           ; $6bf2: $9d
	ld   d, h                                        ; $6bf3: $54
	ld   a, h                                        ; $6bf4: $7c
	ld   a, e                                        ; $6bf5: $7b
	sbc  a                                           ; $6bf6: $9f
	dec  c                                           ; $6bf7: $0d
	nop                                              ; $6bf8: $00
	ld   a, [bc]                                     ; $6bf9: $0a
	inc  e                                           ; $6bfa: $1c
	inc  bc                                          ; $6bfb: $03
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	ld   bc, $9e63                                   ; $6bfe: $01 $63 $9e
	ld   e, b                                        ; $6c01: $58
	ld   h, l                                        ; $6c02: $65
	sub  c                                           ; $6c03: $91
	add  a                                           ; $6c04: $87
	sbc  b                                           ; $6c05: $98
	ld   a, l                                        ; $6c06: $7d
	inc  bc                                          ; $6c07: $03
	ld   a, [hl]                                     ; $6c08: $7e
	sbc  l                                           ; $6c09: $9d
	sbc  b                                           ; $6c0a: $98
	sbc  a                                           ; $6c0b: $9f
	dec  c                                           ; $6c0c: $0d
	inc  bc                                          ; $6c0d: $03
	ld   l, l                                        ; $6c0e: $6d
	dec  b                                           ; $6c0f: $05
	add  hl, de                                      ; $6c10: $19
	ld   a, h                                        ; $6c11: $7c
	inc  bc                                          ; $6c12: $03
	ld   l, a                                        ; $6c13: $6f
	ld   [bc], a                                     ; $6c14: $02
	xor  c                                           ; $6c15: $a9
	sub  [hl]                                        ; $6c16: $96
	sbc  a                                           ; $6c17: $9f
	dec  c                                           ; $6c18: $0d
	nop                                              ; $6c19: $00
	ld   a, [bc]                                     ; $6c1a: $0a
	dec  c                                           ; $6c1b: $0d
	nop                                              ; $6c1c: $00
	nop                                              ; $6c1d: $00
	rrca                                             ; $6c1e: $0f
	nop                                              ; $6c1f: $00
	ld   bc, $1e09                                   ; $6c20: $01 $09 $1e
	nop                                              ; $6c23: $00
	rrca                                             ; $6c24: $0f
	nop                                              ; $6c25: $00
	ld   bc, $6301                                   ; $6c26: $01 $01 $63
	ld   e, l                                        ; $6c29: $5d
	sub  a                                           ; $6c2a: $97
	ld   h, e                                        ; $6c2b: $63
	and  c                                           ; $6c2c: $a1
	ld   [hl], h                                     ; $6c2d: $74
	sbc  [hl]                                        ; $6c2e: $9e
	dec  c                                           ; $6c2f: $0d
	rst  JumpTable                                         ; $6c30: $df
	db   $ec                                         ; $6c31: $ec
	and  e                                           ; $6c32: $a3
	ld   h, e                                        ; $6c33: $63
	and  c                                           ; $6c34: $a1
	ld   e, c                                        ; $6c35: $59
	sub  a                                           ; $6c36: $97
	ld   [bc], a                                     ; $6c37: $02
	sub  l                                           ; $6c38: $95
	ld   [hl], h                                     ; $6c39: $74
	dec  c                                           ; $6c3a: $0d
	ld   [hl], a                                     ; $6c3b: $77
	and  c                                           ; $6c3c: $a1
	ld   a, b                                        ; $6c3d: $78
	inc  b                                           ; $6c3e: $04
	ld   a, b                                        ; $6c3f: $78
	ld   [hl], l                                     ; $6c40: $75
	ld   h, a                                        ; $6c41: $67
	ld   e, c                                        ; $6c42: $59
	ld   sp, hl                                      ; $6c43: $f9
	dec  c                                           ; $6c44: $0d
	nop                                              ; $6c45: $00
	ld   a, [bc]                                     ; $6c46: $0a
	inc  e                                           ; $6c47: $1c
	inc  bc                                          ; $6c48: $03
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	ld   bc, $546b                                   ; $6c4b: $01 $6b $54
	ld   a, e                                        ; $6c4e: $7b
	rst  $38                                         ; $6c4f: $ff
	rst  $38                                         ; $6c50: $ff
	adc  h                                           ; $6c51: $8c
	ld   h, [hl]                                     ; $6c52: $66
	adc  a                                           ; $6c53: $8f
	ld   [hl], l                                     ; $6c54: $75
	inc  bc                                          ; $6c55: $03
	db   $d3                                         ; $6c56: $d3
	dec  b                                           ; $6c57: $05
	ld   a, [bc]                                     ; $6c58: $0a
	ld   [bc], a                                     ; $6c59: $02
	and  [hl]                                        ; $6c5a: $a6
	ld   [hl], l                                     ; $6c5b: $75
	dec  c                                           ; $6c5c: $0d
	ld   l, e                                        ; $6c5d: $6b
	ld   h, l                                        ; $6c5e: $65
	ld   [hl], h                                     ; $6c5f: $74
	sbc  [hl]                                        ; $6c60: $9e
	add  b                                           ; $6c61: $80
	adc  a                                           ; $6c62: $8f
	sub  a                                           ; $6c63: $97
	sbc  d                                           ; $6c64: $9a
	ld   l, l                                        ; $6c65: $6d
	dec  b                                           ; $6c66: $05
	ld   a, [bc]                                     ; $6c67: $0a
	and  b                                           ; $6c68: $a0
	inc  bc                                          ; $6c69: $03
	and  b                                           ; $6c6a: $a0
	ld   [hl], c                                     ; $6c6b: $71
	ld   l, l                                        ; $6c6c: $6d
	dec  c                                           ; $6c6d: $0d
	inc  bc                                          ; $6c6e: $03
	ld   l, [hl]                                     ; $6c6f: $6e
	ld   a, h                                        ; $6c70: $7c
	inc  bc                                          ; $6c71: $03
	add  [hl]                                        ; $6c72: $86
	ld   l, [hl]                                     ; $6c73: $6e
	sbc  l                                           ; $6c74: $9d
	sbc  a                                           ; $6c75: $9f
	dec  c                                           ; $6c76: $0d
	nop                                              ; $6c77: $00
	ld   a, [bc]                                     ; $6c78: $0a
	inc  e                                           ; $6c79: $1c
	inc  bc                                          ; $6c7a: $03
	inc  bc                                          ; $6c7b: $03
	inc  bc                                          ; $6c7c: $03
	ld   bc, $6e6d                                   ; $6c7d: $01 $6d $6e
	ld   e, d                                        ; $6c80: $5a
	and  c                                           ; $6c81: $a1
	ld   a, [hl]                                     ; $6c82: $7e
	sbc  b                                           ; $6c83: $98
	ld   h, a                                        ; $6c84: $67
	ld   e, h                                        ; $6c85: $5c
	ld   [hl], h                                     ; $6c86: $74
	dec  c                                           ; $6c87: $0d
	ld   l, a                                        ; $6c88: $6f
	sub  l                                           ; $6c89: $95
	ld   [hl], c                                     ; $6c8a: $71
	halt                                             ; $6c8b: $76
	ld   [bc], a                                     ; $6c8c: $02
	or   [hl]                                        ; $6c8d: $b6
	ld   [bc], a                                     ; $6c8e: $02
	sub  e                                           ; $6c8f: $93
	sbc  b                                           ; $6c90: $98
	ld   h, l                                        ; $6c91: $65
	ld   l, a                                        ; $6c92: $6f
	sub  c                                           ; $6c93: $91
	ld   d, h                                        ; $6c94: $54
	dec  c                                           ; $6c95: $0d
	halt                                             ; $6c96: $76
	ld   h, c                                        ; $6c97: $61
	sbc  e                                           ; $6c98: $9b
	ld   e, d                                        ; $6c99: $5a
	ld   d, b                                        ; $6c9a: $50
	sbc  c                                           ; $6c9b: $99
	ld   e, a                                        ; $6c9c: $5f
	ld   [hl], a                                     ; $6c9d: $77
	rst  $38                                         ; $6c9e: $ff
	rst  $38                                         ; $6c9f: $ff
	sub  $d6                                         ; $6ca0: $d6 $d6
	sbc  a                                           ; $6ca2: $9f
	dec  c                                           ; $6ca3: $0d
	nop                                              ; $6ca4: $00
	ld   a, [bc]                                     ; $6ca5: $0a
	inc  e                                           ; $6ca6: $1c
	inc  bc                                          ; $6ca7: $03
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	ld   bc, $9e63                                   ; $6caa: $01 $63 $9e
	ld   e, b                                        ; $6cad: $58
	ld   h, l                                        ; $6cae: $65
	sub  c                                           ; $6caf: $91
	add  a                                           ; $6cb0: $87
	sbc  b                                           ; $6cb1: $98
	ld   a, l                                        ; $6cb2: $7d
	inc  bc                                          ; $6cb3: $03
	ld   a, [hl]                                     ; $6cb4: $7e
	sbc  l                                           ; $6cb5: $9d
	sbc  b                                           ; $6cb6: $98
	sbc  a                                           ; $6cb7: $9f
	dec  c                                           ; $6cb8: $0d
	inc  bc                                          ; $6cb9: $03
	ld   l, l                                        ; $6cba: $6d
	dec  b                                           ; $6cbb: $05
	add  hl, de                                      ; $6cbc: $19
	ld   a, h                                        ; $6cbd: $7c
	inc  bc                                          ; $6cbe: $03
	ld   l, a                                        ; $6cbf: $6f
	ld   [bc], a                                     ; $6cc0: $02
	xor  c                                           ; $6cc1: $a9
	sub  [hl]                                        ; $6cc2: $96
	sbc  a                                           ; $6cc3: $9f
	dec  c                                           ; $6cc4: $0d
	nop                                              ; $6cc5: $00
	ld   a, [bc]                                     ; $6cc6: $0a
	dec  c                                           ; $6cc7: $0d
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	rrca                                             ; $6cca: $0f
	nop                                              ; $6ccb: $00
	ld   bc, $1e09                                   ; $6ccc: $01 $09 $1e
	nop                                              ; $6ccf: $00
	rrca                                             ; $6cd0: $0f
	nop                                              ; $6cd1: $00
	ld   bc, $0201                                   ; $6cd2: $01 $01 $02
	and  l                                           ; $6cd5: $a5
	inc  b                                           ; $6cd6: $04
	xor  d                                           ; $6cd7: $aa
	ld   a, h                                        ; $6cd8: $7c
	inc  b                                           ; $6cd9: $04
	inc  de                                          ; $6cda: $13
	ld   [bc], a                                     ; $6cdb: $02
	and  c                                           ; $6cdc: $a1
	ld   a, l                                        ; $6cdd: $7d
	dec  c                                           ; $6cde: $0d
	ld   [hl], a                                     ; $6cdf: $77
	ld   d, h                                        ; $6ce0: $54
	ld   [hl], l                                     ; $6ce1: $75
	ld   h, a                                        ; $6ce2: $67
	ld   e, c                                        ; $6ce3: $59
	ld   a, e                                        ; $6ce4: $7b
	ld   sp, hl                                      ; $6ce5: $f9
	dec  c                                           ; $6ce6: $0d
	nop                                              ; $6ce7: $00
	ld   a, [bc]                                     ; $6ce8: $0a
	inc  e                                           ; $6ce9: $1c
	inc  bc                                          ; $6cea: $03
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	ld   bc, $d405                                   ; $6ced: $01 $05 $d4
	sbc  d                                           ; $6cf0: $9a
	sbc  c                                           ; $6cf1: $99
	and  c                                           ; $6cf2: $a1
	ld   h, [hl]                                     ; $6cf3: $66
	sub  c                                           ; $6cf4: $91
	ld   a, b                                        ; $6cf5: $78
	ld   d, d                                        ; $6cf6: $52
	ld   e, c                                        ; $6cf7: $59
	ld   h, l                                        ; $6cf8: $65
	sub  a                                           ; $6cf9: $97
	ld   sp, hl                                      ; $6cfa: $f9
	dec  c                                           ; $6cfb: $0d
	ld   e, l                                        ; $6cfc: $5d
	sub  b                                           ; $6cfd: $90
	sub  b                                           ; $6cfe: $90
	ld   a, b                                        ; $6cff: $78
	ld   d, d                                        ; $6d00: $52
	adc  l                                           ; $6d01: $8d
	ld   l, l                                        ; $6d02: $6d
	ld   d, d                                        ; $6d03: $52
	ld   l, [hl]                                     ; $6d04: $6e
	ld   h, l                                        ; $6d05: $65
	rst  $38                                         ; $6d06: $ff
	rst  $38                                         ; $6d07: $ff
	dec  c                                           ; $6d08: $0d
	nop                                              ; $6d09: $00
	ld   a, [bc]                                     ; $6d0a: $0a
	add  hl, de                                      ; $6d0b: $19
	dec  b                                           ; $6d0c: $05
	inc  bc                                          ; $6d0d: $03
	dec  b                                           ; $6d0e: $05
	call nc, $5a9a                                   ; $6d0f: $d4 $9a $5a
	ld   [bc], a                                     ; $6d12: $02
	jr   nz, jr_056_6d19                             ; $6d13: $20 $04

	ld   a, c                                        ; $6d15: $79
	ld   [hl], l                                     ; $6d16: $75
	ld   h, a                                        ; $6d17: $67
	sub  [hl]                                        ; $6d18: $96

jr_056_6d19:
	ld   a, e                                        ; $6d19: $7b
	sbc  a                                           ; $6d1a: $9f
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	ld   e, l                                        ; $6d1d: $5d
	sub  b                                           ; $6d1e: $90
	sbc  b                                           ; $6d1f: $98
	ld   e, d                                        ; $6d20: $5a
	ld   d, d                                        ; $6d21: $52
	ld   d, d                                        ; $6d22: $52
	ld   [hl], l                                     ; $6d23: $75
	ld   h, a                                        ; $6d24: $67
	sub  [hl]                                        ; $6d25: $96
	ld   a, e                                        ; $6d26: $7b
	sbc  a                                           ; $6d27: $9f
	nop                                              ; $6d28: $00
	ld   bc, $2202                                   ; $6d29: $01 $02 $22
	ld   a, h                                        ; $6d2c: $7c
	inc  b                                           ; $6d2d: $04
	xor  d                                           ; $6d2e: $aa
	ld   [hl], c                                     ; $6d2f: $71
	ld   [hl], h                                     ; $6d30: $74
	ld   d, d                                        ; $6d31: $52
	ld   d, d                                        ; $6d32: $52
	ld   [hl], l                                     ; $6d33: $75
	ld   h, a                                        ; $6d34: $67
	sub  [hl]                                        ; $6d35: $96
	ld   a, e                                        ; $6d36: $7b
	sbc  a                                           ; $6d37: $9f
	nop                                              ; $6d38: $00
	ld   [bc], a                                     ; $6d39: $02
	rlca                                             ; $6d3a: $07
	add  l                                           ; $6d3b: $85
	inc  bc                                          ; $6d3c: $03
	ld   [bc], a                                     ; $6d3d: $02
	inc  bc                                          ; $6d3e: $03
	ld   bc, $2000                                   ; $6d3f: $01 $00 $20
	nop                                              ; $6d42: $00
	rlca                                             ; $6d43: $07
	db   $e4                                         ; $6d44: $e4
	inc  bc                                          ; $6d45: $03
	ld   [bc], a                                     ; $6d46: $02
	inc  bc                                          ; $6d47: $03
	ld   bc, $2001                                   ; $6d48: $01 $01 $20
	nop                                              ; $6d4b: $00
	rlca                                             ; $6d4c: $07
	add  hl, hl                                      ; $6d4d: $29
	inc  b                                           ; $6d4e: $04
	ld   [bc], a                                     ; $6d4f: $02
	inc  bc                                          ; $6d50: $03
	ld   bc, $2002                                   ; $6d51: $01 $02 $20
	nop                                              ; $6d54: $00
	ld   b, $7f                                      ; $6d55: $06 $7f
	inc  b                                           ; $6d57: $04
	rrca                                             ; $6d58: $0f
	nop                                              ; $6d59: $00
	ld   bc, $0501                                   ; $6d5a: $01 $01 $05
	call nc, $5a9a                                   ; $6d5d: $d4 $9a $5a
	ld   [bc], a                                     ; $6d60: $02
	jr   nz, jr_056_6d67                             ; $6d61: $20 $04

	ld   a, c                                        ; $6d63: $79
	ld   [hl], l                                     ; $6d64: $75
	ld   h, a                                        ; $6d65: $67
	sub  [hl]                                        ; $6d66: $96

jr_056_6d67:
	ld   a, e                                        ; $6d67: $7b
	sbc  a                                           ; $6d68: $9f
	dec  c                                           ; $6d69: $0d
	ld   a, b                                        ; $6d6a: $78
	ld   a, c                                        ; $6d6b: $79
	sub  [hl]                                        ; $6d6c: $96
	sbc  b                                           ; $6d6d: $98
	sub  b                                           ; $6d6e: $90
	sbc  [hl]                                        ; $6d6f: $9e
	ld   [bc], a                                     ; $6d70: $02
	and  c                                           ; $6d71: $a1
	inc  bc                                          ; $6d72: $03
	and  b                                           ; $6d73: $a0
	ld   l, a                                        ; $6d74: $6f
	ld   e, d                                        ; $6d75: $5a
	dec  c                                           ; $6d76: $0d
	ld   d, d                                        ; $6d77: $52
	ld   d, d                                        ; $6d78: $52
	ld   [hl], l                                     ; $6d79: $75
	ld   h, a                                        ; $6d7a: $67
	ld   h, l                                        ; $6d7b: $65
	sbc  a                                           ; $6d7c: $9f
	dec  c                                           ; $6d7d: $0d
	nop                                              ; $6d7e: $00
	ld   a, [bc]                                     ; $6d7f: $0a
	inc  e                                           ; $6d80: $1c
	inc  bc                                          ; $6d81: $03
	inc  bc                                          ; $6d82: $03
	inc  bc                                          ; $6d83: $03
	dec  e                                           ; $6d84: $1d
	ld   b, b                                        ; $6d85: $40
	inc  de                                          ; $6d86: $13
	inc  bc                                          ; $6d87: $03
	inc  de                                          ; $6d88: $13
	ld   bc, $2801                                   ; $6d89: $01 $01 $28
	nop                                              ; $6d8c: $00
	ld   bc, $546b                                   ; $6d8d: $01 $6b $54
	ld   a, e                                        ; $6d90: $7b
	sbc  a                                           ; $6d91: $9f
	dec  c                                           ; $6d92: $0d
	ld   [hl], l                                     ; $6d93: $75
	sub  b                                           ; $6d94: $90
	ld   [bc], a                                     ; $6d95: $02
	ld   [hl+], a                                    ; $6d96: $22
	ld   a, h                                        ; $6d97: $7c
	inc  b                                           ; $6d98: $04
	xor  d                                           ; $6d99: $aa
	sub  b                                           ; $6d9a: $90
	dec  b                                           ; $6d9b: $05
	ld   [de], a                                     ; $6d9c: $12
	ld   l, a                                        ; $6d9d: $6f
	ld   [hl], d                                     ; $6d9e: $72
	ld   e, l                                        ; $6d9f: $5d
	sbc  l                                           ; $6da0: $9d
	rst  $38                                         ; $6da1: $ff
	rst  $38                                         ; $6da2: $ff
	dec  c                                           ; $6da3: $0d
	inc  b                                           ; $6da4: $04
	ld   de, $5503                                   ; $6da5: $11 $03 $55
	ld   a, c                                        ; $6da8: $79
	ld   a, l                                        ; $6da9: $7d
	inc  bc                                          ; $6daa: $03
	ld   l, c                                        ; $6dab: $69
	inc  bc                                          ; $6dac: $03
	push af                                          ; $6dad: $f5
	ld   l, [hl]                                     ; $6dae: $6e
	ld   h, l                                        ; $6daf: $65
	sbc  a                                           ; $6db0: $9f
	dec  c                                           ; $6db1: $0d
	nop                                              ; $6db2: $00
	ld   a, [bc]                                     ; $6db3: $0a
	ld   b, $7f                                      ; $6db4: $06 $7f
	inc  b                                           ; $6db6: $04
	rrca                                             ; $6db7: $0f
	nop                                              ; $6db8: $00
	ld   bc, $5d01                                   ; $6db9: $01 $01 $5d
	sub  b                                           ; $6dbc: $90
	sbc  b                                           ; $6dbd: $98
	ld   [hl], c                                     ; $6dbe: $71
	ld   [hl], h                                     ; $6dbf: $74
	ld   d, d                                        ; $6dc0: $52
	ld   d, d                                        ; $6dc1: $52
	ld   [hl], l                                     ; $6dc2: $75
	ld   h, a                                        ; $6dc3: $67
	sub  [hl]                                        ; $6dc4: $96
	ld   a, e                                        ; $6dc5: $7b
	rst  $38                                         ; $6dc6: $ff
	rst  $38                                         ; $6dc7: $ff
	dec  c                                           ; $6dc8: $0d
	nop                                              ; $6dc9: $00
	ld   a, [bc]                                     ; $6dca: $0a
	inc  e                                           ; $6dcb: $1c
	inc  bc                                          ; $6dcc: $03
	inc  b                                           ; $6dcd: $04
	inc  b                                           ; $6dce: $04
	dec  e                                           ; $6dcf: $1d
	ld   b, b                                        ; $6dd0: $40
	inc  de                                          ; $6dd1: $13
	inc  bc                                          ; $6dd2: $03
	inc  de                                          ; $6dd3: $13
	ld   bc, $2901                                   ; $6dd4: $01 $01 $29
	nop                                              ; $6dd7: $00
	ld   bc, $546b                                   ; $6dd8: $01 $6b $54
	ld   e, c                                        ; $6ddb: $59
	ld   h, l                                        ; $6ddc: $65
	sub  a                                           ; $6ddd: $97
	ld   sp, hl                                      ; $6dde: $f9
	dec  c                                           ; $6ddf: $0d
	ld   a, b                                        ; $6de0: $78
	and  c                                           ; $6de1: $a1
	ld   l, [hl]                                     ; $6de2: $6e
	ld   e, c                                        ; $6de3: $59
	inc  b                                           ; $6de4: $04
	dec  bc                                          ; $6de5: $0b
	inc  b                                           ; $6de6: $04
	ld   [hl-], a                                    ; $6de7: $32
	ret  nc                                          ; $6de8: $d0

	push af                                          ; $6de9: $f5
	jp   nc, $0d75                                   ; $6dea: $d2 $75 $0d

	ld   [bc], a                                     ; $6ded: $02
	sbc  d                                           ; $6dee: $9a
	ld   e, e                                        ; $6def: $5b
	ld   h, [hl]                                     ; $6df0: $66
	sub  c                                           ; $6df1: $91
	ld   a, b                                        ; $6df2: $78
	ld   d, d                                        ; $6df3: $52
	sbc  l                                           ; $6df4: $9d
	sbc  a                                           ; $6df5: $9f
	dec  c                                           ; $6df6: $0d
	nop                                              ; $6df7: $00
	ld   a, [bc]                                     ; $6df8: $0a
	ld   b, $7f                                      ; $6df9: $06 $7f
	inc  b                                           ; $6dfb: $04
	rrca                                             ; $6dfc: $0f
	nop                                              ; $6dfd: $00
	ld   bc, $0201                                   ; $6dfe: $01 $01 $02
	ld   [hl+], a                                    ; $6e01: $22
	ld   a, h                                        ; $6e02: $7c
	inc  b                                           ; $6e03: $04
	xor  d                                           ; $6e04: $aa
	ld   [hl], c                                     ; $6e05: $71
	ld   [hl], h                                     ; $6e06: $74
	ld   d, d                                        ; $6e07: $52
	ld   d, d                                        ; $6e08: $52
	ld   [hl], l                                     ; $6e09: $75
	ld   h, a                                        ; $6e0a: $67
	sub  [hl]                                        ; $6e0b: $96
	ld   a, e                                        ; $6e0c: $7b
	sbc  a                                           ; $6e0d: $9f
	dec  c                                           ; $6e0e: $0d
	ld   a, b                                        ; $6e0f: $78
	and  c                                           ; $6e10: $a1
	ld   l, [hl]                                     ; $6e11: $6e
	ld   e, c                                        ; $6e12: $59
	ld   h, l                                        ; $6e13: $65
	ld   [hl], c                                     ; $6e14: $71
	halt                                             ; $6e15: $76
	sbc  b                                           ; $6e16: $98
	dec  b                                           ; $6e17: $05
	ld   [de], a                                     ; $6e18: $12
	ld   l, a                                        ; $6e19: $6f
	ld   [hl], d                                     ; $6e1a: $72
	ld   d, d                                        ; $6e1b: $52
	ld   [hl], h                                     ; $6e1c: $74
	sbc  a                                           ; $6e1d: $9f
	dec  c                                           ; $6e1e: $0d
	nop                                              ; $6e1f: $00
	ld   a, [bc]                                     ; $6e20: $0a
	inc  e                                           ; $6e21: $1c
	inc  bc                                          ; $6e22: $03
	inc  bc                                          ; $6e23: $03
	inc  bc                                          ; $6e24: $03
	dec  e                                           ; $6e25: $1d
	ld   b, b                                        ; $6e26: $40
	inc  de                                          ; $6e27: $13
	inc  bc                                          ; $6e28: $03
	inc  de                                          ; $6e29: $13
	ld   bc, $2803                                   ; $6e2a: $01 $03 $28
	nop                                              ; $6e2d: $00
	ld   bc, $546b                                   ; $6e2e: $01 $6b $54
	ld   a, e                                        ; $6e31: $7b
	sbc  a                                           ; $6e32: $9f
	dec  c                                           ; $6e33: $0d
	ld   [bc], a                                     ; $6e34: $02
	ld   [hl+], a                                    ; $6e35: $22
	ld   a, h                                        ; $6e36: $7c
	inc  b                                           ; $6e37: $04
	xor  d                                           ; $6e38: $aa
	ld   a, l                                        ; $6e39: $7d
	dec  b                                           ; $6e3a: $05
	ld   [de], a                                     ; $6e3b: $12
	ld   l, a                                        ; $6e3c: $6f
	ld   [hl], d                                     ; $6e3d: $72
	ld   e, l                                        ; $6e3e: $5d
	sbc  l                                           ; $6e3f: $9d
	ld   a, e                                        ; $6e40: $7b
	sbc  a                                           ; $6e41: $9f
	dec  c                                           ; $6e42: $0d
	inc  b                                           ; $6e43: $04
	ld   de, $5503                                   ; $6e44: $11 $03 $55
	ld   a, c                                        ; $6e47: $79
	inc  bc                                          ; $6e48: $03
	ld   l, c                                        ; $6e49: $69
	inc  bc                                          ; $6e4a: $03
	push af                                          ; $6e4b: $f5
	ld   l, [hl]                                     ; $6e4c: $6e
	ld   h, l                                        ; $6e4d: $65
	sbc  a                                           ; $6e4e: $9f
	dec  c                                           ; $6e4f: $0d
	nop                                              ; $6e50: $00
	ld   a, [bc]                                     ; $6e51: $0a
	inc  e                                           ; $6e52: $1c
	inc  bc                                          ; $6e53: $03
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	ld   bc, $9e63                                   ; $6e56: $01 $63 $9e
	ld   e, b                                        ; $6e59: $58
	ld   h, l                                        ; $6e5a: $65
	sub  c                                           ; $6e5b: $91
	add  a                                           ; $6e5c: $87
	sbc  b                                           ; $6e5d: $98
	ld   a, l                                        ; $6e5e: $7d
	inc  bc                                          ; $6e5f: $03
	ld   a, [hl]                                     ; $6e60: $7e
	sbc  l                                           ; $6e61: $9d
	sbc  b                                           ; $6e62: $98
	sbc  a                                           ; $6e63: $9f
	dec  c                                           ; $6e64: $0d
	inc  bc                                          ; $6e65: $03
	ld   l, l                                        ; $6e66: $6d
	dec  b                                           ; $6e67: $05
	add  hl, de                                      ; $6e68: $19
	ld   a, h                                        ; $6e69: $7c
	inc  bc                                          ; $6e6a: $03
	ld   l, a                                        ; $6e6b: $6f
	ld   [bc], a                                     ; $6e6c: $02
	xor  c                                           ; $6e6d: $a9
	sub  [hl]                                        ; $6e6e: $96
	sbc  a                                           ; $6e6f: $9f
	dec  c                                           ; $6e70: $0d
	nop                                              ; $6e71: $00
	ld   a, [bc]                                     ; $6e72: $0a
	dec  c                                           ; $6e73: $0d
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	rrca                                             ; $6e76: $0f
	nop                                              ; $6e77: $00
	ld   bc, $1e09                                   ; $6e78: $01 $09 $1e
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	inc  e                                           ; $6e7d: $1c
	inc  b                                           ; $6e7e: $04
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	ld   [bc], a                                     ; $6e81: $02
	ld   bc, $9e50                                   ; $6e82: $01 $50 $9e
	ld   l, a                                        ; $6e85: $6f
	ld   d, d                                        ; $6e86: $52
	ld   [bc], a                                     ; $6e87: $02
	inc  de                                          ; $6e88: $13
	ld   l, a                                        ; $6e89: $6f
	sub  c                                           ; $6e8a: $91
	and  c                                           ; $6e8b: $a1
	sbc  a                                           ; $6e8c: $9f
	dec  c                                           ; $6e8d: $0d
	ld   e, b                                        ; $6e8e: $58
	ld   a, l                                        ; $6e8f: $7d
	sub  [hl]                                        ; $6e90: $96
	ld   d, h                                        ; $6e91: $54
	ld   a, [$000d]                                  ; $6e92: $fa $0d $00
	ld   a, [bc]                                     ; $6e95: $0a
	rrca                                             ; $6e96: $0f
	nop                                              ; $6e97: $00
	ld   bc, $5801                                   ; $6e98: $01 $01 $58
	ld   a, l                                        ; $6e9b: $7d
	sub  [hl]                                        ; $6e9c: $96
	ld   d, h                                        ; $6e9d: $54
	sbc  [hl]                                        ; $6e9e: $9e
	and  e                                           ; $6e9f: $a3
	and  l                                           ; $6ea0: $a5
	db   $ec                                         ; $6ea1: $ec
	cp   d                                           ; $6ea2: $ba
	sbc  a                                           ; $6ea3: $9f
	dec  c                                           ; $6ea4: $0d
	nop                                              ; $6ea5: $00
	ld   a, [bc]                                     ; $6ea6: $0a
	ld   bc, $0301                                   ; $6ea7: $01 $01 $03
	inc  b                                           ; $6eaa: $04
	ld   c, c                                        ; $6eab: $49
	and  b                                           ; $6eac: $a0
	ld   [bc], a                                     ; $6ead: $02
	jp   nz, Jump_056_5461                           ; $6eae: $c2 $61 $54

	ld   e, c                                        ; $6eb1: $59
	rst  $38                                         ; $6eb2: $ff
	rst  $38                                         ; $6eb3: $ff
	ld   sp, hl                                      ; $6eb4: $f9
	ld   bc, $0d04                                   ; $6eb5: $01 $04 $0d
	nop                                              ; $6eb8: $00
	ld   a, [bc]                                     ; $6eb9: $0a
	add  hl, de                                      ; $6eba: $19
	dec  b                                           ; $6ebb: $05
	inc  bc                                          ; $6ebc: $03
	cp   c                                           ; $6ebd: $b9
	push hl                                          ; $6ebe: $e5
	push af                                          ; $6ebf: $f5
	sbc  $fb                                         ; $6ec0: $de $fb
	db   $ed                                         ; $6ec2: $ed
	ld   a, c                                        ; $6ec3: $79
	ld   [hl], d                                     ; $6ec4: $72
	ld   d, d                                        ; $6ec5: $52
	ld   [hl], h                                     ; $6ec6: $74
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	inc  b                                           ; $6ec9: $04
	adc  [hl]                                        ; $6eca: $8e
	inc  b                                           ; $6ecb: $04
	inc  c                                           ; $6ecc: $0c
	ld   a, c                                        ; $6ecd: $79
	ld   [hl], d                                     ; $6ece: $72
	ld   d, d                                        ; $6ecf: $52
	ld   [hl], h                                     ; $6ed0: $74
	nop                                              ; $6ed1: $00
	ld   bc, $f5ac                                   ; $6ed2: $01 $ac $f5
	bit  7, c                                        ; $6ed5: $cb $79
	ld   [hl], d                                     ; $6ed7: $72
	ld   d, d                                        ; $6ed8: $52
	ld   [hl], h                                     ; $6ed9: $74
	nop                                              ; $6eda: $00
	ld   [bc], a                                     ; $6edb: $02
	rlca                                             ; $6edc: $07
	sub  [hl]                                        ; $6edd: $96
	nop                                              ; $6ede: $00
	ld   [bc], a                                     ; $6edf: $02
	inc  bc                                          ; $6ee0: $03
	ld   bc, $2000                                   ; $6ee1: $01 $00 $20
	nop                                              ; $6ee4: $00
	rlca                                             ; $6ee5: $07
	add  hl, de                                      ; $6ee6: $19
	ld   bc, $0302                                   ; $6ee7: $01 $02 $03
	ld   bc, $2001                                   ; $6eea: $01 $01 $20
	nop                                              ; $6eed: $00
	rlca                                             ; $6eee: $07
	add  d                                           ; $6eef: $82
	ld   bc, $0302                                   ; $6ef0: $01 $02 $03
	ld   bc, $2002                                   ; $6ef3: $01 $02 $20
	nop                                              ; $6ef6: $00
	ld   b, $7d                                      ; $6ef7: $06 $7d
	nop                                              ; $6ef9: $00
	inc  e                                           ; $6efa: $1c
	inc  b                                           ; $6efb: $04
	ld   bc, $0101                                   ; $6efc: $01 $01 $01
	ld   e, e                                        ; $6eff: $5b
	sub  l                                           ; $6f00: $95
	ld   d, h                                        ; $6f01: $54
	sub  b                                           ; $6f02: $90
	ld   d, d                                        ; $6f03: $52
	ld   l, a                                        ; $6f04: $6f
	ld   a, c                                        ; $6f05: $79
	ld   l, a                                        ; $6f06: $6f
	dec  c                                           ; $6f07: $0d
	ld   e, d                                        ; $6f08: $5a
	and  c                                           ; $6f09: $a1
	ld   a, [hl]                                     ; $6f0a: $7e
	sbc  e                                           ; $6f0b: $9b
	ld   d, h                                        ; $6f0c: $54
	ld   a, e                                        ; $6f0d: $7b
	ld   a, [$000d]                                  ; $6f0e: $fa $0d $00
	ld   a, [bc]                                     ; $6f11: $0a
	nop                                              ; $6f12: $00
	rrca                                             ; $6f13: $0f
	nop                                              ; $6f14: $00
	ld   bc, $b901                                   ; $6f15: $01 $01 $b9
	push hl                                          ; $6f18: $e5
	push af                                          ; $6f19: $f5
	sbc  $fb                                         ; $6f1a: $de $fb
	db   $ed                                         ; $6f1c: $ed
	ld   [hl], c                                     ; $6f1d: $71
	ld   [hl], h                                     ; $6f1e: $74
	dec  c                                           ; $6f1f: $0d
	dec  b                                           ; $6f20: $05
	dec  bc                                          ; $6f21: $0b
	inc  bc                                          ; $6f22: $03
	add  d                                           ; $6f23: $82
	halt                                             ; $6f24: $76
	ld   e, c                                        ; $6f25: $59
	ld   d, d                                        ; $6f26: $52
	ld   a, b                                        ; $6f27: $78
	ld   d, d                                        ; $6f28: $52
	ld   a, h                                        ; $6f29: $7c
	ld   sp, hl                                      ; $6f2a: $f9
	dec  c                                           ; $6f2b: $0d
	nop                                              ; $6f2c: $00
	ld   a, [bc]                                     ; $6f2d: $0a
	inc  e                                           ; $6f2e: $1c
	inc  b                                           ; $6f2f: $04
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	ld   bc, $9952                                   ; $6f32: $01 $52 $99
	sub  [hl]                                        ; $6f35: $96
	sbc  a                                           ; $6f36: $9f
	dec  c                                           ; $6f37: $0d
	and  a                                           ; $6f38: $a7
	or   [hl]                                        ; $6f39: $b6
	xor  a                                           ; $6f3a: $af
	ld   a, h                                        ; $6f3b: $7c
	sub  $eb                                         ; $6f3c: $d6 $eb
	push af                                          ; $6f3e: $f5
	cp   b                                           ; $6f3f: $b8
	ei                                               ; $6f40: $fb
	call $9f5a                                       ; $6f41: $cd $5a $9f
	dec  c                                           ; $6f44: $0d
	nop                                              ; $6f45: $00
	ld   a, [bc]                                     ; $6f46: $0a
	inc  e                                           ; $6f47: $1c
	inc  b                                           ; $6f48: $04
	ld   bc, $1d01                                   ; $6f49: $01 $01 $1d
	ld   b, b                                        ; $6f4c: $40
	inc  d                                           ; $6f4d: $14
	inc  bc                                          ; $6f4e: $03
	inc  d                                           ; $6f4f: $14
	ld   bc, $2802                                   ; $6f50: $01 $02 $28
	nop                                              ; $6f53: $00
	ld   bc, $526f                                   ; $6f54: $01 $6f $52
	ld   [bc], a                                     ; $6f57: $02
	inc  de                                          ; $6f58: $13
	ld   l, a                                        ; $6f59: $6f
	sub  c                                           ; $6f5a: $91
	and  c                                           ; $6f5b: $a1
	sub  b                                           ; $6f5c: $90
	dec  c                                           ; $6f5d: $0d
	cp   c                                           ; $6f5e: $b9
	push hl                                          ; $6f5f: $e5
	push af                                          ; $6f60: $f5
	sbc  $fb                                         ; $6f61: $de $fb
	db   $ed                                         ; $6f63: $ed
	ld   a, h                                        ; $6f64: $7c
	ld   h, c                                        ; $6f65: $61
	halt                                             ; $6f66: $76
	ld   e, d                                        ; $6f67: $5a
	dec  c                                           ; $6f68: $0d
	ld   e, e                                        ; $6f69: $5b
	ld   a, c                                        ; $6f6a: $79
	ld   a, b                                        ; $6f6b: $78
	sbc  c                                           ; $6f6c: $99
	and  c                                           ; $6f6d: $a1
	ld   l, [hl]                                     ; $6f6e: $6e
	rst  $38                                         ; $6f6f: $ff
	rst  $38                                         ; $6f70: $ff
	xor  c                                           ; $6f71: $a9
	reti                                             ; $6f72: $d9


	reti                                             ; $6f73: $d9


	dec  c                                           ; $6f74: $0d
	nop                                              ; $6f75: $00
	ld   a, [bc]                                     ; $6f76: $0a
	ld   bc, $a161                                   ; $6f77: $01 $61 $a1
	ld   [hl], a                                     ; $6f7a: $77
	sbc  [hl]                                        ; $6f7b: $9e
	ld   l, a                                        ; $6f7c: $6f
	ld   d, d                                        ; $6f7d: $52
	ld   [bc], a                                     ; $6f7e: $02
	inc  de                                          ; $6f7f: $13
	ld   l, a                                        ; $6f80: $6f
	sub  c                                           ; $6f81: $91
	and  c                                           ; $6f82: $a1
	ld   a, c                                        ; $6f83: $79
	sub  b                                           ; $6f84: $90
	dec  c                                           ; $6f85: $0d
	ld   h, l                                        ; $6f86: $65
	sub  l                                           ; $6f87: $95
	ld   d, h                                        ; $6f88: $54
	ld   e, c                                        ; $6f89: $59
	ld   d, d                                        ; $6f8a: $52
	ld   h, l                                        ; $6f8b: $65
	ld   [hl], h                                     ; $6f8c: $74
	ld   d, b                                        ; $6f8d: $50
	ld   h, b                                        ; $6f8e: $60
	sbc  c                                           ; $6f8f: $99
	ld   a, e                                        ; $6f90: $7b
	sbc  a                                           ; $6f91: $9f
	dec  c                                           ; $6f92: $0d
	nop                                              ; $6f93: $00
	ld   a, [bc]                                     ; $6f94: $0a
	nop                                              ; $6f95: $00
	rrca                                             ; $6f96: $0f
	nop                                              ; $6f97: $00
	ld   bc, $a301                                   ; $6f98: $01 $01 $a3
	and  l                                           ; $6f9b: $a5
	db   $ec                                         ; $6f9c: $ec
	cp   d                                           ; $6f9d: $ba
	ld   a, l                                        ; $6f9e: $7d
	sbc  [hl]                                        ; $6f9f: $9e
	ld   e, b                                        ; $6fa0: $58
	inc  bc                                          ; $6fa1: $03
	sub  c                                           ; $6fa2: $91
	ld   [bc], a                                     ; $6fa3: $02
	dec  h                                           ; $6fa4: $25
	ld   a, h                                        ; $6fa5: $7c
	dec  c                                           ; $6fa6: $0d
	ld   [hl], a                                     ; $6fa7: $77
	ld   d, h                                        ; $6fa8: $54
	ld   d, d                                        ; $6fa9: $52
	ld   d, h                                        ; $6faa: $54
	halt                                             ; $6fab: $76
	ld   h, c                                        ; $6fac: $61
	sbc  e                                           ; $6fad: $9b
	ld   e, d                                        ; $6fae: $5a
	ld   [bc], a                                     ; $6faf: $02
	sbc  d                                           ; $6fb0: $9a
	ld   e, e                                        ; $6fb1: $5b
	ld   a, b                                        ; $6fb2: $78
	ld   a, h                                        ; $6fb3: $7c
	ld   sp, hl                                      ; $6fb4: $f9
	dec  c                                           ; $6fb5: $0d
	nop                                              ; $6fb6: $00
	ld   a, [bc]                                     ; $6fb7: $0a
	inc  e                                           ; $6fb8: $1c
	inc  b                                           ; $6fb9: $04
	ld   bc, $0101                                   ; $6fba: $01 $01 $01
	ld   d, d                                        ; $6fbd: $52
	ld   [hl], c                                     ; $6fbe: $71
	ld   h, l                                        ; $6fbf: $65
	sub  l                                           ; $6fc0: $95
	ld   d, h                                        ; $6fc1: $54
	ld   e, a                                        ; $6fc2: $5f
	and  c                                           ; $6fc3: $a1
	adc  a                                           ; $6fc4: $8f
	ld   d, d                                        ; $6fc5: $52
	dec  c                                           ; $6fc6: $0d
	ld   e, b                                        ; $6fc7: $58
	ld   e, a                                        ; $6fc8: $5f
	ld   d, d                                        ; $6fc9: $52
	ld   h, c                                        ; $6fca: $61
	ld   h, l                                        ; $6fcb: $65
	ld   l, l                                        ; $6fcc: $6d
	ld   h, c                                        ; $6fcd: $61
	halt                                             ; $6fce: $76
	ld   e, d                                        ; $6fcf: $5a
	dec  c                                           ; $6fd0: $0d
	ld   h, [hl]                                     ; $6fd1: $66
	sub  l                                           ; $6fd2: $95
	ld   d, h                                        ; $6fd3: $54
	ld   l, b                                        ; $6fd4: $68
	ld   a, c                                        ; $6fd5: $79
	ld   [hl], l                                     ; $6fd6: $75
	ld   e, e                                        ; $6fd7: $5b
	ld   [hl], h                                     ; $6fd8: $74
	dec  c                                           ; $6fd9: $0d
	nop                                              ; $6fda: $00
	ld   a, [bc]                                     ; $6fdb: $0a
	ld   bc, $5b58                                   ; $6fdc: $01 $58 $5b
	sub  c                                           ; $6fdf: $91
	ld   e, l                                        ; $6fe0: $5d
	ld   h, e                                        ; $6fe1: $63
	and  c                                           ; $6fe2: $a1
	ld   e, d                                        ; $6fe3: $5a
	dec  c                                           ; $6fe4: $0d
	ld   a, l                                        ; $6fe5: $7d
	ld   e, l                                        ; $6fe6: $5d
	ld   h, l                                        ; $6fe7: $65
	sub  e                                           ; $6fe8: $93
	ld   h, l                                        ; $6fe9: $65
	ld   [hl], h                                     ; $6fea: $74
	ld   e, l                                        ; $6feb: $5d
	sbc  d                                           ; $6fec: $9a
	sbc  c                                           ; $6fed: $99
	halt                                             ; $6fee: $76
	dec  c                                           ; $6fef: $0d
	ld   h, a                                        ; $6ff0: $67
	ld   h, d                                        ; $6ff1: $62
	ld   e, l                                        ; $6ff2: $5d
	ld   d, h                                        ; $6ff3: $54
	sbc  d                                           ; $6ff4: $9a
	ld   h, l                                        ; $6ff5: $65
	ld   d, d                                        ; $6ff6: $52
	ld   a, h                                        ; $6ff7: $7c
	sbc  a                                           ; $6ff8: $9f
	dec  c                                           ; $6ff9: $0d
	nop                                              ; $6ffa: $00
	ld   a, [bc]                                     ; $6ffb: $0a
	ld   b, $f9                                      ; $6ffc: $06 $f9
	ld   bc, $000f                                   ; $6ffe: $01 $0f $00
	ld   bc, $a301                                   ; $7001: $01 $01 $a3
	and  l                                           ; $7004: $a5
	db   $ec                                         ; $7005: $ec
	cp   d                                           ; $7006: $ba
	ld   e, c                                        ; $7007: $59
	sub  a                                           ; $7008: $97
	ld   [bc], a                                     ; $7009: $02
	sub  l                                           ; $700a: $95
	ld   [hl], h                                     ; $700b: $74
	sbc  [hl]                                        ; $700c: $9e
	dec  c                                           ; $700d: $0d
	xor  h                                           ; $700e: $ac
	push af                                          ; $700f: $f5
	bit  4, e                                        ; $7010: $cb $63
	and  c                                           ; $7012: $a1
	ld   [hl], h                                     ; $7013: $74
	dec  c                                           ; $7014: $0d
	ld   [hl], a                                     ; $7015: $77
	and  c                                           ; $7016: $a1
	ld   a, b                                        ; $7017: $78
	inc  bc                                          ; $7018: $03
	add  d                                           ; $7019: $82
	ld   e, c                                        ; $701a: $59
	ld   a, b                                        ; $701b: $78
	ld   sp, hl                                      ; $701c: $f9
	dec  c                                           ; $701d: $0d
	nop                                              ; $701e: $00
	ld   a, [bc]                                     ; $701f: $0a
	inc  e                                           ; $7020: $1c
	inc  b                                           ; $7021: $04
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	ld   bc, $7d62                                   ; $7024: $01 $62 $7d
	and  c                                           ; $7027: $a1
	ld   d, d                                        ; $7028: $52
	ld   [hl], c                                     ; $7029: $71
	ld   a, a                                        ; $702a: $7f
	ld   d, d                                        ; $702b: $52
	ld   l, l                                        ; $702c: $6d
	add  a                                           ; $702d: $87
	ld   [hl], h                                     ; $702e: $74
	rst  $38                                         ; $702f: $ff
	rst  $38                                         ; $7030: $ff
	dec  c                                           ; $7031: $0d
	ld   h, a                                        ; $7032: $67
	ld   [hl], c                                     ; $7033: $71
	ld   h, d                                        ; $7034: $62
	ld   e, l                                        ; $7035: $5d
	ld   [hl], d                                     ; $7036: $72
	sub  [hl]                                        ; $7037: $96
	ld   e, l                                        ; $7038: $5d
	ld   [hl], h                                     ; $7039: $74
	rst  $38                                         ; $703a: $ff
	rst  $38                                         ; $703b: $ff
	dec  c                                           ; $703c: $0d
	ld   e, b                                        ; $703d: $58
	ld   [hl], c                                     ; $703e: $71
	ld   e, e                                        ; $703f: $5b
	ld   a, b                                        ; $7040: $78
	ld   e, b                                        ; $7041: $58
	ld   a, e                                        ; $7042: $7b
	ei                                               ; $7043: $fb
	ld   l, a                                        ; $7044: $6f
	sub  c                                           ; $7045: $91
	and  c                                           ; $7046: $a1
	sbc  a                                           ; $7047: $9f
	dec  c                                           ; $7048: $0d
	nop                                              ; $7049: $00
	ld   a, [bc]                                     ; $704a: $0a
	inc  e                                           ; $704b: $1c
	inc  b                                           ; $704c: $04
	ld   bc, $0101                                   ; $704d: $01 $01 $01
	and  e                                           ; $7050: $a3
	and  l                                           ; $7051: $a5
	db   $ec                                         ; $7052: $ec
	cp   d                                           ; $7053: $ba
	sbc  [hl]                                        ; $7054: $9e
	ld   l, [hl]                                     ; $7055: $6e
	ld   d, d                                        ; $7056: $52
	ld   h, a                                        ; $7057: $67
	ld   e, e                                        ; $7058: $5b
	ld   l, [hl]                                     ; $7059: $6e
	sub  [hl]                                        ; $705a: $96
	sbc  a                                           ; $705b: $9f
	dec  c                                           ; $705c: $0d
	xor  h                                           ; $705d: $ac
	push af                                          ; $705e: $f5
	bit  6, c                                        ; $705f: $cb $71
	ld   [hl], h                                     ; $7061: $74
	sbc  [hl]                                        ; $7062: $9e
	ld   d, b                                        ; $7063: $50
	ld   d, b                                        ; $7064: $50
	adc  l                                           ; $7065: $8d
	ld   d, [hl]                                     ; $7066: $56
	ld   [hl], h                                     ; $7067: $74
	dec  c                                           ; $7068: $0d
	ld   h, a                                        ; $7069: $67
	ld   h, d                                        ; $706a: $62
	ld   e, l                                        ; $706b: $5d
	sub  d                                           ; $706c: $92
	ld   h, e                                        ; $706d: $63
	ld   h, l                                        ; $706e: $65
	ld   d, d                                        ; $706f: $52
	sub  b                                           ; $7070: $90
	and  c                                           ; $7071: $a1
	sbc  a                                           ; $7072: $9f
	dec  c                                           ; $7073: $0d
	nop                                              ; $7074: $00
	ld   a, [bc]                                     ; $7075: $0a
	inc  e                                           ; $7076: $1c
	inc  b                                           ; $7077: $04
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	ld   bc, $9166                                   ; $707a: $01 $66 $91
	ld   d, b                                        ; $707d: $50
	sbc  [hl]                                        ; $707e: $9e
	ld   e, e                                        ; $707f: $5b
	sub  l                                           ; $7080: $95
	ld   d, h                                        ; $7081: $54
	sub  b                                           ; $7082: $90
	ld   d, d                                        ; $7083: $52
	ld   l, a                                        ; $7084: $6f
	ld   a, c                                        ; $7085: $79
	ld   l, a                                        ; $7086: $6f
	sbc  [hl]                                        ; $7087: $9e
	dec  c                                           ; $7088: $0d
	ld   e, d                                        ; $7089: $5a
	and  c                                           ; $708a: $a1
	ld   a, [hl]                                     ; $708b: $7e
	sbc  e                                           ; $708c: $9b
	ld   d, h                                        ; $708d: $54
	ld   a, e                                        ; $708e: $7b
	ld   a, [$000d]                                  ; $708f: $fa $0d $00
	ld   a, [bc]                                     ; $7092: $0a
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	rrca                                             ; $7095: $0f
	nop                                              ; $7096: $00
	ld   bc, $050d                                   ; $7097: $01 $0d $05
	nop                                              ; $709a: $00
	ld   [bc], a                                     ; $709b: $02
	ld   bc, $7d58                                   ; $709c: $01 $58 $7d
	sub  [hl]                                        ; $709f: $96
	ld   d, h                                        ; $70a0: $54
	ld   h, d                                        ; $70a1: $62
	ld   h, h                                        ; $70a2: $64
	ld   d, d                                        ; $70a3: $52
	adc  h                                           ; $70a4: $8c
	ld   h, a                                        ; $70a5: $67
	sbc  [hl]                                        ; $70a6: $9e
	dec  c                                           ; $70a7: $0d
	ld   [bc], a                                     ; $70a8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70a9: $cf
	dec  b                                           ; $70aa: $05
	ld   a, [de]                                     ; $70ab: $1a
	ld   h, e                                        ; $70ac: $63
	and  c                                           ; $70ad: $a1
	sbc  a                                           ; $70ae: $9f
	dec  c                                           ; $70af: $0d
	nop                                              ; $70b0: $00
	ld   a, [bc]                                     ; $70b1: $0a
	inc  e                                           ; $70b2: $1c
	dec  b                                           ; $70b3: $05
	ld   bc, $0101                                   ; $70b4: $01 $01 $01
	sub  [hl]                                        ; $70b7: $96
	ld   [hl], c                                     ; $70b8: $71
	sbc  [hl]                                        ; $70b9: $9e
	ld   [$7d00], sp                                 ; $70ba: $08 $00 $7d
	and  c                                           ; $70bd: $a1
	sbc  a                                           ; $70be: $9f
	dec  c                                           ; $70bf: $0d
	ld   e, b                                        ; $70c0: $58
	ld   a, l                                        ; $70c1: $7d
	sub  [hl]                                        ; $70c2: $96
	ld   d, h                                        ; $70c3: $54
	ld   h, e                                        ; $70c4: $63
	and  c                                           ; $70c5: $a1
	sbc  a                                           ; $70c6: $9f
	dec  c                                           ; $70c7: $0d
	nop                                              ; $70c8: $00
	ld   a, [bc]                                     ; $70c9: $0a
	rrca                                             ; $70ca: $0f
	nop                                              ; $70cb: $00
	ld   bc, $0101                                   ; $70cc: $01 $01 $01
	inc  bc                                          ; $70cf: $03
	inc  b                                           ; $70d0: $04
	ld   e, [hl]                                     ; $70d1: $5e
	inc  b                                           ; $70d2: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70d3: $cf
	inc  b                                           ; $70d4: $04
	ld   h, c                                        ; $70d5: $61
	ld   a, h                                        ; $70d6: $7c
	ld   h, c                                        ; $70d7: $61
	halt                                             ; $70d8: $76
	and  b                                           ; $70d9: $a0
	dec  c                                           ; $70da: $0d
	db   $10                                         ; $70db: $10
	ld   [bc], a                                     ; $70dc: $02
	jp   nz, Jump_056_7452                           ; $70dd: $c2 $52 $74

	adc  l                                           ; $70e0: $8d
	sub  [hl]                                        ; $70e1: $96
	ld   d, h                                        ; $70e2: $54
	ld   e, c                                        ; $70e3: $59
	ld   a, b                                        ; $70e4: $78
	ld   sp, hl                                      ; $70e5: $f9
	ld   bc, $0d04                                   ; $70e6: $01 $04 $0d
	nop                                              ; $70e9: $00
	ld   a, [bc]                                     ; $70ea: $0a
	add  hl, de                                      ; $70eb: $19
	dec  b                                           ; $70ec: $05
	inc  bc                                          ; $70ed: $03
	inc  bc                                          ; $70ee: $03
	rrca                                             ; $70ef: $0f
	ld   [bc], a                                     ; $70f0: $02
	and  c                                           ; $70f1: $a1
	pop  de                                          ; $70f2: $d1
	and  l                                           ; $70f3: $a5
	or   b                                           ; $70f4: $b0
	ld   a, c                                        ; $70f5: $79
	ld   [hl], d                                     ; $70f6: $72
	ld   d, d                                        ; $70f7: $52
	ld   [hl], h                                     ; $70f8: $74
	ld   [bc], a                                     ; $70f9: $02
	jp   nz, $005d                                   ; $70fa: $c2 $5d $00

	nop                                              ; $70fd: $00
	adc  h                                           ; $70fe: $8c
	ld   h, c                                        ; $70ff: $61
	halt                                             ; $7100: $76

jr_056_7101:
	ld   e, l                                        ; $7101: $5d
	and  c                                           ; $7102: $a1
	ld   a, c                                        ; $7103: $79
	ld   [hl], d                                     ; $7104: $72
	ld   d, d                                        ; $7105: $52
	ld   [hl], h                                     ; $7106: $74
	ld   [bc], a                                     ; $7107: $02
	jp   nz, $005d                                   ; $7108: $c2 $5d $00

	ld   bc, $a156                                   ; $710b: $01 $56 $a1
	ld   e, c                                        ; $710e: $59
	ld   d, d                                        ; $710f: $52
	ld   e, l                                        ; $7110: $5d
	and  c                                           ; $7111: $a1
	ld   a, c                                        ; $7112: $79
	ld   [hl], d                                     ; $7113: $72
	ld   d, d                                        ; $7114: $52
	ld   [hl], h                                     ; $7115: $74
	ld   [bc], a                                     ; $7116: $02
	jp   nz, $005d                                   ; $7117: $c2 $5d $00

	ld   [bc], a                                     ; $711a: $02
	rlca                                             ; $711b: $07
	cp   h                                           ; $711c: $bc
	nop                                              ; $711d: $00
	ld   [bc], a                                     ; $711e: $02
	inc  bc                                          ; $711f: $03
	ld   bc, $2000                                   ; $7120: $01 $00 $20
	nop                                              ; $7123: $00
	rlca                                             ; $7124: $07
	ld   [hl+], a                                    ; $7125: $22
	inc  bc                                          ; $7126: $03
	ld   [bc], a                                     ; $7127: $02
	inc  bc                                          ; $7128: $03
	ld   bc, $2001                                   ; $7129: $01 $01 $20
	nop                                              ; $712c: $00
	rlca                                             ; $712d: $07
	sub  $05                                         ; $712e: $d6 $05
	ld   [bc], a                                     ; $7130: $02
	inc  bc                                          ; $7131: $03
	ld   bc, $2002                                   ; $7132: $01 $02 $20
	nop                                              ; $7135: $00
	ld   b, $a4                                      ; $7136: $06 $a4
	nop                                              ; $7138: $00
	inc  e                                           ; $7139: $1c
	dec  b                                           ; $713a: $05
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	ld   bc, $a502                                   ; $713d: $01 $02 $a5
	inc  b                                           ; $7140: $04
	xor  d                                           ; $7141: $aa
	sub  b                                           ; $7142: $90
	ld   [bc], a                                     ; $7143: $02
	jr   nz, jr_056_714a                             ; $7144: $20 $04

	xor  d                                           ; $7146: $aa
	ld   e, d                                        ; $7147: $5a
	and  c                                           ; $7148: $a1
	ld   a, [hl]                                     ; $7149: $7e

jr_056_714a:
	sbc  e                                           ; $714a: $9b
	ld   a, b                                        ; $714b: $78
	sbc  a                                           ; $714c: $9f
	dec  c                                           ; $714d: $0d
	nop                                              ; $714e: $00
	ld   a, [bc]                                     ; $714f: $0a
	nop                                              ; $7150: $00
	rrca                                             ; $7151: $0f
	nop                                              ; $7152: $00
	ld   bc, $0301                                   ; $7153: $01 $01 $03
	rrca                                             ; $7156: $0f
	ld   [bc], a                                     ; $7157: $02
	and  c                                           ; $7158: $a1
	pop  de                                          ; $7159: $d1
	and  l                                           ; $715a: $a5
	or   b                                           ; $715b: $b0
	ld   a, h                                        ; $715c: $7c
	ld   e, b                                        ; $715d: $58
	dec  b                                           ; $715e: $05
	jr   nz, jr_056_7101                             ; $715f: $20 $a0

	dec  c                                           ; $7161: $0d
	ld   [bc], a                                     ; $7162: $02
	jp   nz, Jump_056_6959                           ; $7163: $c2 $59 $69

	ld   [hl], h                                     ; $7166: $74
	ld   e, l                                        ; $7167: $5d
	ld   l, [hl]                                     ; $7168: $6e
	ld   h, e                                        ; $7169: $63
	ld   d, d                                        ; $716a: $52
	sbc  a                                           ; $716b: $9f
	dec  c                                           ; $716c: $0d
	nop                                              ; $716d: $00
	ld   a, [bc]                                     ; $716e: $0a
	inc  e                                           ; $716f: $1c
	dec  b                                           ; $7170: $05
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	ld   bc, $0f03                                   ; $7173: $01 $03 $0f
	ld   [bc], a                                     ; $7176: $02
	and  c                                           ; $7177: $a1
	pop  de                                          ; $7178: $d1
	and  l                                           ; $7179: $a5
	or   b                                           ; $717a: $b0
	ld   e, c                                        ; $717b: $59
	rst  $38                                         ; $717c: $ff
	rst  $38                                         ; $717d: $ff
	sbc  a                                           ; $717e: $9f
	dec  c                                           ; $717f: $0d
	ret  nc                                          ; $7180: $d0

	rst  JumpTable                                         ; $7181: $df
	and  l                                           ; $7182: $a5
	jp   nz, Jump_056_617c                           ; $7183: $c2 $7c $61

	halt                                             ; $7186: $76
	sub  d                                           ; $7187: $92
	ld   a, b                                        ; $7188: $78
	sbc  a                                           ; $7189: $9f
	dec  c                                           ; $718a: $0d
	nop                                              ; $718b: $00
	ld   a, [bc]                                     ; $718c: $0a
	ld   bc, wRandomNumStruct                                   ; $718d: $01 $a7 $c2
	ld   e, d                                        ; $7190: $5a
	ld   h, e                                        ; $7191: $63
	ld   [hl], c                                     ; $7192: $71
	ld   l, e                                        ; $7193: $6b
	ld   d, h                                        ; $7194: $54
	halt                                             ; $7195: $76
	inc  b                                           ; $7196: $04
	ld   [$9202], sp                                 ; $7197: $08 $02 $92
	add  [hl]                                        ; $719a: $86
	ld   b, $4f                                      ; $719b: $06 $4f
	inc  b                                           ; $719d: $04
	ld   a, d                                        ; $719e: $7a
	ld   a, [$ff0d]                                  ; $719f: $fa $0d $ff
	rst  $38                                         ; $71a2: $ff
	ld   h, a                                        ; $71a3: $67
	sbc  c                                           ; $71a4: $99
	ld   a, l                                        ; $71a5: $7d
	ld   l, b                                        ; $71a6: $68
	sub  d                                           ; $71a7: $92
	ld   [hl], c                                     ; $71a8: $71
	ld   [hl], h                                     ; $71a9: $74
	and  c                                           ; $71aa: $a1
	ld   e, a                                        ; $71ab: $5f
	ld   [hl], a                                     ; $71ac: $77
	sbc  a                                           ; $71ad: $9f
	dec  c                                           ; $71ae: $0d
	ld   [bc], a                                     ; $71af: $02

Jump_056_71b0:
	sub  d                                           ; $71b0: $92
	inc  b                                           ; $71b1: $04
	ld   a, d                                        ; $71b2: $7a
	ld   a, h                                        ; $71b3: $7c
	inc  bc                                          ; $71b4: $03
	ld   c, a                                        ; $71b5: $4f
	ld   [hl], l                                     ; $71b6: $75
	jp   z, $acc4                                    ; $71b7: $ca $c4 $ac

	ei                                               ; $71ba: $fb
	push af                                          ; $71bb: $f5
	rst  $38                                         ; $71bc: $ff
	rst  $38                                         ; $71bd: $ff
	dec  c                                           ; $71be: $0d
	nop                                              ; $71bf: $00
	ld   a, [bc]                                     ; $71c0: $0a
	inc  e                                           ; $71c1: $1c
	dec  b                                           ; $71c2: $05
	ld   [bc], a                                     ; $71c3: $02
	ld   [bc], a                                     ; $71c4: $02
	ld   bc, $0215                                   ; $71c5: $01 $15 $02
	and  c                                           ; $71c8: $a1
	ld   b, $50                                      ; $71c9: $06 $50
	ld   [de], a                                     ; $71cb: $12
	rla                                              ; $71cc: $17
	pop  de                                          ; $71cd: $d1
	db   $ed                                         ; $71ce: $ed
	rst  $10                                         ; $71cf: $d7
	ld   [de], a                                     ; $71d0: $12
	ld   de, $0411                                   ; $71d1: $11 $11 $04
	ld   d, [hl]                                     ; $71d4: $56
	dec  b                                           ; $71d5: $05
	ld   a, [bc]                                     ; $71d6: $0a
	ld   [hl], l                                     ; $71d7: $75
	dec  c                                           ; $71d8: $0d
	inc  de                                          ; $71d9: $13
	ld   de, $ae11                                   ; $71da: $11 $11 $ae
	rst  $28                                         ; $71dd: $ef
	ld   a, l                                        ; $71de: $7d
	ld   [bc], a                                     ; $71df: $02
	ld   a, a                                        ; $71e0: $7f
	ld   e, l                                        ; $71e1: $5d
	ld   a, l                                        ; $71e2: $7d
	ld   l, b                                        ; $71e3: $68
	dec  c                                           ; $71e4: $0d
	sub  d                                           ; $71e5: $92
	ld   [hl], c                                     ; $71e6: $71
	ld   [hl], h                                     ; $71e7: $74
	and  c                                           ; $71e8: $a1
	ld   e, a                                        ; $71e9: $5f
	ld   [hl], a                                     ; $71ea: $77
	ld   a, b                                        ; $71eb: $78
	db   $fc                                         ; $71ec: $fc
	sbc  a                                           ; $71ed: $9f
	dec  c                                           ; $71ee: $0d
	nop                                              ; $71ef: $00
	ld   a, [bc]                                     ; $71f0: $0a
	add  hl, de                                      ; $71f1: $19
	dec  b                                           ; $71f2: $05
	inc  bc                                          ; $71f3: $03
	adc  c                                           ; $71f4: $89
	adc  a                                           ; $71f5: $8f
	sbc  c                                           ; $71f6: $99
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	ld   b, $0d                                      ; $71f9: $06 $0d
	inc  b                                           ; $71fb: $04
	ld   e, [hl]                                     ; $71fc: $5e
	ld   sp, hl                                      ; $71fd: $f9
	nop                                              ; $71fe: $00
	ld   bc, $b2dd                                   ; $71ff: $01 $dd $b2
	ld   [hl], h                                     ; $7202: $74
	adc  l                                           ; $7203: $8d
	sbc  c                                           ; $7204: $99
	nop                                              ; $7205: $00
	ld   [bc], a                                     ; $7206: $02
	rlca                                             ; $7207: $07
	sub  b                                           ; $7208: $90
	ld   bc, $0302                                   ; $7209: $01 $02 $03
	ld   bc, $2000                                   ; $720c: $01 $00 $20
	nop                                              ; $720f: $00
	rlca                                             ; $7210: $07
	db   $e3                                         ; $7211: $e3
	ld   bc, $0302                                   ; $7212: $01 $02 $03
	ld   bc, $2001                                   ; $7215: $01 $01 $20
	nop                                              ; $7218: $00
	rlca                                             ; $7219: $07
	dec  h                                           ; $721a: $25
	ld   [bc], a                                     ; $721b: $02
	ld   [bc], a                                     ; $721c: $02
	inc  bc                                          ; $721d: $03
	ld   bc, $2002                                   ; $721e: $01 $02 $20
	nop                                              ; $7221: $00
	ld   b, $e7                                      ; $7222: $06 $e7
	ld   [bc], a                                     ; $7224: $02
	rrca                                             ; $7225: $0f
	nop                                              ; $7226: $00
	ld   bc, $6701                                   ; $7227: $01 $01 $67
	ld   h, d                                        ; $722a: $62
	ld   d, d                                        ; $722b: $52
	ld   [hl], l                                     ; $722c: $75
	ld   h, a                                        ; $722d: $67
	ld   a, e                                        ; $722e: $7b
	db   $fc                                         ; $722f: $fc
	sbc  a                                           ; $7230: $9f
	dec  c                                           ; $7231: $0d
	inc  de                                          ; $7232: $13
	ld   de, $ae11                                   ; $7233: $11 $11 $ae
	rst  $28                                         ; $7236: $ef
	ld   [hl], c                                     ; $7237: $71
	ld   [hl], h                                     ; $7238: $74
	inc  bc                                          ; $7239: $03
	ld   a, [de]                                     ; $723a: $1a
	ld   b, $4b                                      ; $723b: $06 $4b
	sub  b                                           ; $723d: $90
	dec  c                                           ; $723e: $0d
	ld   [hl], l                                     ; $723f: $75
	ld   e, e                                        ; $7240: $5b
	adc  h                                           ; $7241: $8c
	ld   l, c                                        ; $7242: $69
	and  c                                           ; $7243: $a1
	sub  [hl]                                        ; $7244: $96
	sbc  a                                           ; $7245: $9f
	dec  c                                           ; $7246: $0d
	nop                                              ; $7247: $00
	ld   a, [bc]                                     ; $7248: $0a
	inc  e                                           ; $7249: $1c
	dec  b                                           ; $724a: $05
	inc  b                                           ; $724b: $04
	inc  b                                           ; $724c: $04
	dec  e                                           ; $724d: $1d
	ld   b, b                                        ; $724e: $40
	dec  d                                           ; $724f: $15
	inc  bc                                          ; $7250: $03
	dec  d                                           ; $7251: $15
	ld   bc, $2802                                   ; $7252: $01 $02 $28
	nop                                              ; $7255: $00
	ld   bc, $d0d0                                   ; $7256: $01 $d0 $d0
	ret  nc                                          ; $7259: $d0

	ret  nc                                          ; $725a: $d0

	sbc  a                                           ; $725b: $9f
	dec  c                                           ; $725c: $0d
	ld   l, e                                        ; $725d: $6b
	ld   d, h                                        ; $725e: $54
	cp   d                                           ; $725f: $ba
	ret                                              ; $7260: $c9


	xor  $fb                                         ; $7261: $ee $fb
	ret                                              ; $7263: $c9


	ld   a, c                                        ; $7264: $79
	adc  c                                           ; $7265: $89
	adc  a                                           ; $7266: $8f
	sub  a                                           ; $7267: $97
	sbc  d                                           ; $7268: $9a
	sbc  c                                           ; $7269: $99
	halt                                             ; $726a: $76
	dec  c                                           ; $726b: $0d
	rst  ToBoot                                         ; $726c: $c7
	xor  $99                                         ; $726d: $ee $99
	ld   e, d                                        ; $726f: $5a
	ld   a, b                                        ; $7270: $78
	sbc  a                                           ; $7271: $9f
	dec  c                                           ; $7272: $0d
	nop                                              ; $7273: $00
	ld   a, [bc]                                     ; $7274: $0a
	ld   b, $b7                                      ; $7275: $06 $b7
	ld   [bc], a                                     ; $7277: $02
	rrca                                             ; $7278: $0f
	nop                                              ; $7279: $00
	ld   bc, $9201                                   ; $727a: $01 $01 $92
	ld   [hl], c                                     ; $727d: $71
	ld   a, a                                        ; $727e: $7f
	sbc  b                                           ; $727f: $98
	ld   b, $0d                                      ; $7280: $06 $0d
	inc  b                                           ; $7282: $04
	ld   e, [hl]                                     ; $7283: $5e
	ld   h, l                                        ; $7284: $65
	ld   l, l                                        ; $7285: $6d
	and  c                                           ; $7286: $a1
	ld   [hl], l                                     ; $7287: $75
	ld   h, a                                        ; $7288: $67
	ld   a, e                                        ; $7289: $7b
	sbc  a                                           ; $728a: $9f
	dec  c                                           ; $728b: $0d
	nop                                              ; $728c: $00
	ld   a, [bc]                                     ; $728d: $0a
	inc  e                                           ; $728e: $1c
	dec  b                                           ; $728f: $05
	ld   b, $06                                      ; $7290: $06 $06
	dec  e                                           ; $7292: $1d
	ld   b, b                                        ; $7293: $40
	dec  d                                           ; $7294: $15
	inc  bc                                          ; $7295: $03
	dec  d                                           ; $7296: $15
	ld   bc, $2902                                   ; $7297: $01 $02 $29
	nop                                              ; $729a: $00
	ld   bc, $0d06                                   ; $729b: $01 $06 $0d
	inc  b                                           ; $729e: $04
	ld   e, [hl]                                     ; $729f: $5e
	ld   h, l                                        ; $72a0: $65
	ld   l, l                                        ; $72a1: $6d
	ld   e, a                                        ; $72a2: $5f
	ld   [hl], a                                     ; $72a3: $77
	rst  $38                                         ; $72a4: $ff
	rst  $38                                         ; $72a5: $ff
	dec  c                                           ; $72a6: $0d
	cp   e                                           ; $72a7: $bb
	pop  de                                          ; $72a8: $d1
	db   $ec                                         ; $72a9: $ec
	ld   [bc], a                                     ; $72aa: $02
	sbc  l                                           ; $72ab: $9d
	ld   d, h                                        ; $72ac: $54
	ld   h, c                                        ; $72ad: $61
	halt                                             ; $72ae: $76
	ld   a, b                                        ; $72af: $78
	ld   d, d                                        ; $72b0: $52
	sub  d                                           ; $72b1: $92
	and  c                                           ; $72b2: $a1
	sbc  a                                           ; $72b3: $9f
	dec  c                                           ; $72b4: $0d
	nop                                              ; $72b5: $00
	ld   a, [bc]                                     ; $72b6: $0a
	ld   b, $b7                                      ; $72b7: $06 $b7
	ld   [bc], a                                     ; $72b9: $02
	rrca                                             ; $72ba: $0f
	nop                                              ; $72bb: $00
	ld   bc, $8601                                   ; $72bc: $01 $01 $86
	db   $fc                                         ; $72bf: $fc
	sbc  [hl]                                        ; $72c0: $9e
	inc  b                                           ; $72c1: $04
	ld   d, [hl]                                     ; $72c2: $56
	ld   [de], a                                     ; $72c3: $12
	ld   de, $0311                                   ; $72c4: $11 $11 $03
	ret  c                                           ; $72c7: $d8

	ld   [hl], l                                     ; $72c8: $75
	ld   [bc], a                                     ; $72c9: $02
	inc  l                                           ; $72ca: $2c
	ld   [hl], c                                     ; $72cb: $71
	ld   a, a                                        ; $72cc: $7f
	ld   [hl], c                                     ; $72cd: $71
	ld   l, l                                        ; $72ce: $6d
	dec  c                                           ; $72cf: $0d
	and  c                                           ; $72d0: $a1
	ld   [hl], l                                     ; $72d1: $75
	ld   h, a                                        ; $72d2: $67
	ld   e, c                                        ; $72d3: $59
	sbc  a                                           ; $72d4: $9f
	dec  b                                           ; $72d5: $05
	cp   c                                           ; $72d6: $b9
	ld   [hl], c                                     ; $72d7: $71
	ld   [hl], h                                     ; $72d8: $74
	sbc  c                                           ; $72d9: $99
	ld   h, a                                        ; $72da: $67
	ld   e, d                                        ; $72db: $5a
	ld   l, l                                        ; $72dc: $6d
	and  b                                           ; $72dd: $a0
	dec  c                                           ; $72de: $0d
	inc  bc                                          ; $72df: $03
	ld   a, [de]                                     ; $72e0: $1a
	ld   b, $4b                                      ; $72e1: $06 $4b
	ld   h, a                                        ; $72e3: $67
	sbc  c                                           ; $72e4: $99
	ld   a, h                                        ; $72e5: $7c
	ld   h, c                                        ; $72e6: $61
	sbc  l                                           ; $72e7: $9d
	ld   d, d                                        ; $72e8: $52
	ld   [hl], l                                     ; $72e9: $75
	ld   h, a                                        ; $72ea: $67
	ld   a, e                                        ; $72eb: $7b
	sbc  a                                           ; $72ec: $9f
	dec  c                                           ; $72ed: $0d
	nop                                              ; $72ee: $00
	ld   a, [bc]                                     ; $72ef: $0a
	inc  e                                           ; $72f0: $1c
	dec  b                                           ; $72f1: $05
	inc  bc                                          ; $72f2: $03
	inc  bc                                          ; $72f3: $03
	ld   bc, $a178                                   ; $72f4: $01 $78 $a1
	ld   [hl], l                                     ; $72f7: $75
	sub  d                                           ; $72f8: $92
	ld   a, e                                        ; $72f9: $7b
	and  c                                           ; $72fa: $a1
	ld   a, [$6b0d]                                  ; $72fb: $fa $0d $6b
	sub  a                                           ; $72fe: $97
	ld   [de], a                                     ; $72ff: $12
	ld   de, $0411                                   ; $7300: $11 $11 $04
	ld   d, [hl]                                     ; $7303: $56
	dec  b                                           ; $7304: $05
	ld   a, [bc]                                     ; $7305: $0a
	sub  d                                           ; $7306: $92
	ld   e, a                                        ; $7307: $5f
	ld   [hl], a                                     ; $7308: $77
	sbc  [hl]                                        ; $7309: $9e
	dec  c                                           ; $730a: $0d
	inc  b                                           ; $730b: $04
	ld   d, [hl]                                     ; $730c: $56
	ld   [hl], l                                     ; $730d: $75
	ld   [bc], a                                     ; $730e: $02
	inc  l                                           ; $730f: $2c
	ld   [hl], c                                     ; $7310: $71
	ld   a, a                                        ; $7311: $7f
	ld   [hl], c                                     ; $7312: $71
	ld   [hl], h                                     ; $7313: $74
	and  c                                           ; $7314: $a1
	ld   a, h                                        ; $7315: $7c
	ld   l, a                                        ; $7316: $6f
	sub  c                                           ; $7317: $91
	ld   d, h                                        ; $7318: $54
	ld   [hl], l                                     ; $7319: $75
	sbc  a                                           ; $731a: $9f
	dec  c                                           ; $731b: $0d
	nop                                              ; $731c: $00
	ld   a, [bc]                                     ; $731d: $0a
	inc  e                                           ; $731e: $1c
	dec  b                                           ; $731f: $05
	ld   bc, $1d01                                   ; $7320: $01 $01 $1d
	ld   b, b                                        ; $7323: $40
	dec  d                                           ; $7324: $15
	inc  bc                                          ; $7325: $03
	dec  d                                           ; $7326: $15
	ld   bc, $2801                                   ; $7327: $01 $01 $28
	nop                                              ; $732a: $00
	ld   bc, $fca1                                   ; $732b: $01 $a1 $fc
	rst  $38                                         ; $732e: $ff
	rst  $38                                         ; $732f: $ff
	dec  c                                           ; $7330: $0d
	db   $dd                                         ; $7331: $dd
	or   d                                           ; $7332: $b2
	halt                                             ; $7333: $76
	ld   h, l                                        ; $7334: $65
	ld   [hl], h                                     ; $7335: $74
	ld   a, l                                        ; $7336: $7d
	sbc  [hl]                                        ; $7337: $9e
	adc  h                                           ; $7338: $8c
	ld   l, b                                        ; $7339: $68
	adc  h                                           ; $733a: $8c
	ld   l, b                                        ; $733b: $68
	ld   [hl], c                                     ; $733c: $71
	dec  c                                           ; $733d: $0d
	ld   l, a                                        ; $733e: $6f
	sub  e                                           ; $733f: $93
	ei                                               ; $7340: $fb
	halt                                             ; $7341: $76
	ld   h, c                                        ; $7342: $61
	ld   e, c                                        ; $7343: $59
	ld   a, b                                        ; $7344: $78
	sbc  a                                           ; $7345: $9f
	dec  c                                           ; $7346: $0d
	nop                                              ; $7347: $00
	ld   a, [bc]                                     ; $7348: $0a
	ld   b, $b7                                      ; $7349: $06 $b7
	ld   [bc], a                                     ; $734b: $02
	inc  e                                           ; $734c: $1c
	dec  b                                           ; $734d: $05
	ld   bc, $0101                                   ; $734e: $01 $01 $01
	ld   d, b                                        ; $7351: $50
	sbc  [hl]                                        ; $7352: $9e
	sub  b                                           ; $7353: $90
	ld   d, h                                        ; $7354: $54
	ld   [bc], a                                     ; $7355: $02
	ld   a, a                                        ; $7356: $7f
	ld   e, c                                        ; $7357: $59
	and  c                                           ; $7358: $a1
	halt                                             ; $7359: $76
	rst  $38                                         ; $735a: $ff
	rst  $38                                         ; $735b: $ff
	sbc  a                                           ; $735c: $9f
	dec  c                                           ; $735d: $0d
	adc  c                                           ; $735e: $89
	ld   a, b                                        ; $735f: $78
	sbc  [hl]                                        ; $7360: $9e
	ld   [bc], a                                     ; $7361: $02
	and  l                                           ; $7362: $a5
	inc  b                                           ; $7363: $04
	xor  d                                           ; $7364: $aa

jr_056_7365:
	sub  b                                           ; $7365: $90
	ld   [bc], a                                     ; $7366: $02
	jr   nz, jr_056_736d                             ; $7367: $20 $04

	xor  d                                           ; $7369: $aa
	ld   e, d                                        ; $736a: $5a
	and  c                                           ; $736b: $a1
	ld   a, [hl]                                     ; $736c: $7e

jr_056_736d:
	sbc  e                                           ; $736d: $9b
	ld   a, b                                        ; $736e: $78
	sbc  a                                           ; $736f: $9f
	dec  c                                           ; $7370: $0d
	nop                                              ; $7371: $00
	ld   a, [bc]                                     ; $7372: $0a
	dec  c                                           ; $7373: $0d
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	rrca                                             ; $7376: $0f
	nop                                              ; $7377: $00
	ld   bc, $1e09                                   ; $7378: $01 $09 $1e
	nop                                              ; $737b: $00
	inc  e                                           ; $737c: $1c
	dec  b                                           ; $737d: $05
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	ld   bc, $508c                                   ; $7380: $01 $8c $50
	sbc  [hl]                                        ; $7383: $9e
	ld   h, c                                        ; $7384: $61
	and  c                                           ; $7385: $a1
	ld   a, b                                        ; $7386: $78
	halt                                             ; $7387: $76
	ld   h, c                                        ; $7388: $61
	sub  d                                           ; $7389: $92
	sbc  a                                           ; $738a: $9f
	dec  c                                           ; $738b: $0d
	ld   d, b                                        ; $738c: $50
	sbc  [hl]                                        ; $738d: $9e
	sub  b                                           ; $738e: $90
	ld   d, h                                        ; $738f: $54
	ld   [bc], a                                     ; $7390: $02
	ld   a, a                                        ; $7391: $7f
	ld   e, c                                        ; $7392: $59
	and  c                                           ; $7393: $a1
	halt                                             ; $7394: $76
	rst  $38                                         ; $7395: $ff
	rst  $38                                         ; $7396: $ff
	sbc  a                                           ; $7397: $9f
	dec  c                                           ; $7398: $0d
	adc  c                                           ; $7399: $89
	ld   a, b                                        ; $739a: $78
	sbc  [hl]                                        ; $739b: $9e
	ld   [bc], a                                     ; $739c: $02
	and  l                                           ; $739d: $a5
	inc  b                                           ; $739e: $04
	xor  d                                           ; $739f: $aa
	sub  b                                           ; $73a0: $90
	ld   [bc], a                                     ; $73a1: $02
	jr   nz, jr_056_73a8                             ; $73a2: $20 $04

	xor  d                                           ; $73a4: $aa
	ld   e, d                                        ; $73a5: $5a
	and  c                                           ; $73a6: $a1
	ld   a, [hl]                                     ; $73a7: $7e

jr_056_73a8:
	sbc  e                                           ; $73a8: $9b
	ld   a, b                                        ; $73a9: $78
	sbc  a                                           ; $73aa: $9f
	dec  c                                           ; $73ab: $0d
	nop                                              ; $73ac: $00
	ld   a, [bc]                                     ; $73ad: $0a
	dec  c                                           ; $73ae: $0d
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	rrca                                             ; $73b1: $0f
	nop                                              ; $73b2: $00
	ld   bc, $1e09                                   ; $73b3: $01 $09 $1e
	nop                                              ; $73b6: $00
	rrca                                             ; $73b7: $0f
	nop                                              ; $73b8: $00
	ld   bc, $8c01                                   ; $73b9: $01 $01 $8c
	ld   h, c                                        ; $73bc: $61
	halt                                             ; $73bd: $76
	ld   e, l                                        ; $73be: $5d
	and  c                                           ; $73bf: $a1
	ld   a, h                                        ; $73c0: $7c
	ld   e, b                                        ; $73c1: $58
	dec  b                                           ; $73c2: $05
	jr   nz, jr_056_7365                             ; $73c3: $20 $a0

	dec  c                                           ; $73c5: $0d
	ld   [bc], a                                     ; $73c6: $02
	jp   nz, Jump_056_6959                           ; $73c7: $c2 $59 $69

	ld   [hl], h                                     ; $73ca: $74
	ld   e, l                                        ; $73cb: $5d
	ld   l, [hl]                                     ; $73cc: $6e
	ld   h, e                                        ; $73cd: $63
	ld   d, d                                        ; $73ce: $52
	sbc  a                                           ; $73cf: $9f
	dec  c                                           ; $73d0: $0d
	nop                                              ; $73d1: $00
	ld   a, [bc]                                     ; $73d2: $0a
	inc  e                                           ; $73d3: $1c
	dec  b                                           ; $73d4: $05
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	ld   bc, $618c                                   ; $73d7: $01 $8c $61
	halt                                             ; $73da: $76
	ld   e, l                                        ; $73db: $5d
	and  c                                           ; $73dc: $a1
	ld   a, l                                        ; $73dd: $7d
	ld   a, b                                        ; $73de: $78
	sbc  [hl]                                        ; $73df: $9e
	dec  c                                           ; $73e0: $0d
	and  a                                           ; $73e1: $a7
	cp   [hl]                                        ; $73e2: $be
	inc  b                                           ; $73e3: $04
	ld   e, [hl]                                     ; $73e4: $5e
	ld   [bc], a                                     ; $73e5: $02
	sub  l                                           ; $73e6: $95
	ld   [bc], a                                     ; $73e7: $02
	ld   d, a                                        ; $73e8: $57
	ld   a, b                                        ; $73e9: $78
	and  c                                           ; $73ea: $a1
	sub  d                                           ; $73eb: $92
	sbc  a                                           ; $73ec: $9f
	dec  c                                           ; $73ed: $0d
	nop                                              ; $73ee: $00
	ld   a, [bc]                                     ; $73ef: $0a
	add  hl, de                                      ; $73f0: $19
	dec  b                                           ; $73f1: $05
	inc  bc                                          ; $73f2: $03
	ldh  [$be], a                                    ; $73f3: $e0 $be
	inc  b                                           ; $73f5: $04
	ld   e, [hl]                                     ; $73f6: $5e
	ld   [bc], a                                     ; $73f7: $02
	sub  l                                           ; $73f8: $95
	ld   [bc], a                                     ; $73f9: $02
	ld   d, a                                        ; $73fa: $57
	ld   sp, hl                                      ; $73fb: $f9
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	ld   b, $0d                                      ; $73fe: $06 $0d
	inc  b                                           ; $7400: $04
	ld   e, [hl]                                     ; $7401: $5e
	ld   sp, hl                                      ; $7402: $f9
	nop                                              ; $7403: $00
	ld   bc, $bea7                                   ; $7404: $01 $a7 $be
	ld   a, l                                        ; $7407: $7d
	pop  bc                                          ; $7408: $c1
	db   $e3                                         ; $7409: $e3
	nop                                              ; $740a: $00
	ld   [bc], a                                     ; $740b: $02
	rlca                                             ; $740c: $07
	sub  l                                           ; $740d: $95
	inc  bc                                          ; $740e: $03
	ld   [bc], a                                     ; $740f: $02
	inc  bc                                          ; $7410: $03
	ld   bc, $2000                                   ; $7411: $01 $00 $20
	nop                                              ; $7414: $00
	rlca                                             ; $7415: $07
	dec  d                                           ; $7416: $15
	inc  b                                           ; $7417: $04
	ld   [bc], a                                     ; $7418: $02
	inc  bc                                          ; $7419: $03
	ld   bc, $2001                                   ; $741a: $01 $01 $20
	nop                                              ; $741d: $00
	rlca                                             ; $741e: $07
	ld   e, l                                        ; $741f: $5d
	inc  b                                           ; $7420: $04
	ld   [bc], a                                     ; $7421: $02
	inc  bc                                          ; $7422: $03
	ld   bc, $2002                                   ; $7423: $01 $02 $20
	nop                                              ; $7426: $00
	ld   b, $a6                                      ; $7427: $06 $a6
	dec  b                                           ; $7429: $05
	rrca                                             ; $742a: $0f
	nop                                              ; $742b: $00
	ld   bc, $e001                                   ; $742c: $01 $01 $e0
	cp   [hl]                                        ; $742f: $be
	inc  b                                           ; $7430: $04
	ld   e, [hl]                                     ; $7431: $5e
	ld   [bc], a                                     ; $7432: $02
	sub  l                                           ; $7433: $95
	ld   [bc], a                                     ; $7434: $02
	ld   d, a                                        ; $7435: $57
	ld   [hl], l                                     ; $7436: $75
	ld   h, a                                        ; $7437: $67
	ld   e, c                                        ; $7438: $59
	ld   sp, hl                                      ; $7439: $f9
	dec  c                                           ; $743a: $0d
	ld   [bc], a                                     ; $743b: $02
	ld   hl, sp+$06                                  ; $743c: $f8 $06
	ld   b, a                                        ; $743e: $47
	ld   a, h                                        ; $743f: $7c
	inc  b                                           ; $7440: $04
	ld   a, b                                        ; $7441: $78
	ld   bc, $0414                                   ; $7442: $01 $14 $04
	ld   c, $96                                      ; $7445: $0e $96
	sbc  e                                           ; $7447: $9b
	ld   h, c                                        ; $7448: $61
	add  c                                           ; $7449: $81
	ld   [hl], l                                     ; $744a: $75
	ld   h, a                                        ; $744b: $67
	ld   a, e                                        ; $744c: $7b
	sbc  a                                           ; $744d: $9f
	dec  c                                           ; $744e: $0d
	nop                                              ; $744f: $00
	ld   a, [bc]                                     ; $7450: $0a
	rrca                                             ; $7451: $0f

Jump_056_7452:
	dec  b                                           ; $7452: $05
	nop                                              ; $7453: $00
	ld   bc, $546b                                   ; $7454: $01 $6b $54
	ld   l, e                                        ; $7457: $6b
	ld   d, h                                        ; $7458: $54
	sbc  [hl]                                        ; $7459: $9e
	inc  bc                                          ; $745a: $03
	ld   bc, $bee0                                   ; $745b: $01 $e0 $be
	halt                                             ; $745e: $76
	inc  b                                           ; $745f: $04
	xor  h                                           ; $7460: $ac
	ldh  [$be], a                                    ; $7461: $e0 $be
	and  b                                           ; $7463: $a0
	dec  c                                           ; $7464: $0d
	ld   [bc], a                                     ; $7465: $02
	sub  l                                           ; $7466: $95
	inc  b                                           ; $7467: $04
	sbc  [hl]                                        ; $7468: $9e
	ld   e, a                                        ; $7469: $5f
	sbc  c                                           ; $746a: $99
	ld   [bc], a                                     ; $746b: $02
	ld   e, b                                        ; $746c: $58
	ld   [bc], a                                     ; $746d: $02
	ld   d, [hl]                                     ; $746e: $56
	ld   a, b                                        ; $746f: $78
	and  c                                           ; $7470: $a1
	sub  d                                           ; $7471: $92
	sbc  a                                           ; $7472: $9f
	dec  c                                           ; $7473: $0d
	nop                                              ; $7474: $00
	inc  e                                           ; $7475: $1c
	dec  b                                           ; $7476: $05
	inc  bc                                          ; $7477: $03
	inc  bc                                          ; $7478: $03
	ld   bc, $ffff                                   ; $7479: $01 $ff $ff
	ld   [hl], h                                     ; $747c: $74
	sbc  [hl]                                        ; $747d: $9e
	ld   a, b                                        ; $747e: $78
	and  c                                           ; $747f: $a1
	ld   [hl], l                                     ; $7480: $75
	sub  d                                           ; $7481: $92
	ld   a, e                                        ; $7482: $7b
	and  c                                           ; $7483: $a1
	ld   a, [$000d]                                  ; $7484: $fa $0d $00
	ld   a, [bc]                                     ; $7487: $0a
	inc  e                                           ; $7488: $1c
	dec  b                                           ; $7489: $05
	ld   bc, $1d01                                   ; $748a: $01 $01 $1d
	ld   b, b                                        ; $748d: $40
	dec  d                                           ; $748e: $15
	inc  bc                                          ; $748f: $03
	dec  d                                           ; $7490: $15
	ld   bc, $2802                                   ; $7491: $01 $02 $28
	nop                                              ; $7494: $00
	ld   bc, $5978                                   ; $7495: $01 $78 $59
	ld   a, b                                        ; $7498: $78
	ld   e, c                                        ; $7499: $59
	sbc  [hl]                                        ; $749a: $9e
	xor  c                                           ; $749b: $a9
	xor  c                                           ; $749c: $a9
	db   $dd                                         ; $749d: $dd
	or   d                                           ; $749e: $b2
	sub  d                                           ; $749f: $92
	ld   [hl], c                                     ; $74a0: $71
	ld   l, l                                        ; $74a1: $6d
	ld   [hl], l                                     ; $74a2: $75
	sbc  a                                           ; $74a3: $9f
	dec  c                                           ; $74a4: $0d
	nop                                              ; $74a5: $00
	ld   a, [bc]                                     ; $74a6: $0a
	ld   b, $9f                                      ; $74a7: $06 $9f
	inc  b                                           ; $74a9: $04
	rrca                                             ; $74aa: $0f
	nop                                              ; $74ab: $00
	ld   bc, $9201                                   ; $74ac: $01 $01 $92
	ld   [hl], c                                     ; $74af: $71
	ld   a, a                                        ; $74b0: $7f
	sbc  b                                           ; $74b1: $98
	ld   b, $0d                                      ; $74b2: $06 $0d
	inc  b                                           ; $74b4: $04
	ld   e, [hl]                                     ; $74b5: $5e
	ld   h, a                                        ; $74b6: $67
	sbc  c                                           ; $74b7: $99
	and  c                                           ; $74b8: $a1
	ld   [hl], l                                     ; $74b9: $75
	ld   h, a                                        ; $74ba: $67
	ld   a, e                                        ; $74bb: $7b
	rst  $38                                         ; $74bc: $ff
	rst  $38                                         ; $74bd: $ff
	dec  c                                           ; $74be: $0d
	nop                                              ; $74bf: $00
	ld   a, [bc]                                     ; $74c0: $0a
	inc  e                                           ; $74c1: $1c
	dec  b                                           ; $74c2: $05
	ld   bc, $1d01                                   ; $74c3: $01 $01 $1d
	ld   b, b                                        ; $74c6: $40
	dec  d                                           ; $74c7: $15
	inc  bc                                          ; $74c8: $03
	dec  d                                           ; $74c9: $15
	ld   bc, $2802                                   ; $74ca: $01 $02 $28
	nop                                              ; $74cd: $00
	ld   bc, $546b                                   ; $74ce: $01 $6b $54
	sub  d                                           ; $74d1: $92
	ld   [hl], l                                     ; $74d2: $75
	sbc  a                                           ; $74d3: $9f
	dec  c                                           ; $74d4: $0d
	and  a                                           ; $74d5: $a7
	cp   [hl]                                        ; $74d6: $be
	and  b                                           ; $74d7: $a0
	ld   [hl], d                                     ; $74d8: $72
	ld   e, l                                        ; $74d9: $5d
	halt                                             ; $74da: $76
	sbc  [hl]                                        ; $74db: $9e
	ld   b, $0d                                      ; $74dc: $06 $0d
	inc  b                                           ; $74de: $04
	ld   e, [hl]                                     ; $74df: $5e
	ld   h, a                                        ; $74e0: $67
	sbc  c                                           ; $74e1: $99
	dec  c                                           ; $74e2: $0d
	ld   h, l                                        ; $74e3: $65
	ld   e, c                                        ; $74e4: $59
	ld   e, a                                        ; $74e5: $5f
	ld   a, b                                        ; $74e6: $78
	and  c                                           ; $74e7: $a1
	sub  d                                           ; $74e8: $92
	ld   [hl], l                                     ; $74e9: $75
	db   $fc                                         ; $74ea: $fc
	sbc  a                                           ; $74eb: $9f
	dec  c                                           ; $74ec: $0d
	nop                                              ; $74ed: $00
	ld   a, [bc]                                     ; $74ee: $0a
	ld   b, $9f                                      ; $74ef: $06 $9f
	inc  b                                           ; $74f1: $04
	rrca                                             ; $74f2: $0f
	nop                                              ; $74f3: $00
	ld   bc, $5401                                   ; $74f4: $01 $01 $54
	and  c                                           ; $74f7: $a1
	ld   d, h                                        ; $74f8: $54
	and  c                                           ; $74f9: $a1
	sbc  a                                           ; $74fa: $9f
	dec  c                                           ; $74fb: $0d
	and  a                                           ; $74fc: $a7
	cp   [hl]                                        ; $74fd: $be
	ld   a, l                                        ; $74fe: $7d
	ld   d, d                                        ; $74ff: $52
	ld   e, a                                        ; $7500: $5f
	adc  h                                           ; $7501: $8c
	ld   l, c                                        ; $7502: $69
	and  c                                           ; $7503: $a1
	sub  [hl]                                        ; $7504: $96
	ld   a, e                                        ; $7505: $7b
	sbc  a                                           ; $7506: $9f
	dec  c                                           ; $7507: $0d
	nop                                              ; $7508: $00
	ld   a, [bc]                                     ; $7509: $0a
	rrca                                             ; $750a: $0f
	dec  b                                           ; $750b: $05
	nop                                              ; $750c: $00
	ld   bc, $6f90                                   ; $750d: $01 $90 $6f
	sbc  e                                           ; $7510: $9b
	and  c                                           ; $7511: $a1
	sub  d                                           ; $7512: $92
	ld   a, [$a70d]                                  ; $7513: $fa $0d $a7
	cp   [hl]                                        ; $7516: $be
	halt                                             ; $7517: $76
	inc  b                                           ; $7518: $04
	dec  a                                           ; $7519: $3d
	inc  bc                                          ; $751a: $03
	reti                                             ; $751b: $d9


	ld   a, l                                        ; $751c: $7d
	and  a                                           ; $751d: $a7
	jp   nz, $047c                                   ; $751e: $c2 $7c $04

	ld   c, $5b                                      ; $7521: $0e $5b
	sub  a                                           ; $7523: $97
	ld   d, d                                        ; $7524: $52
	ld   a, b                                        ; $7525: $78
	dec  c                                           ; $7526: $0d
	sub  b                                           ; $7527: $90
	and  c                                           ; $7528: $a1
	sub  d                                           ; $7529: $92
	ld   e, c                                        ; $752a: $59
	sub  a                                           ; $752b: $97
	ld   a, b                                        ; $752c: $78
	sbc  a                                           ; $752d: $9f
	dec  c                                           ; $752e: $0d
	nop                                              ; $752f: $00
	ld   a, [bc]                                     ; $7530: $0a
	ld   b, $9f                                      ; $7531: $06 $9f
	inc  b                                           ; $7533: $04
	inc  e                                           ; $7534: $1c
	dec  b                                           ; $7535: $05
	dec  b                                           ; $7536: $05
	dec  b                                           ; $7537: $05
	ld   bc, $9e50                                   ; $7538: $01 $50 $9e
	ld   l, e                                        ; $753b: $6b
	sub  d                                           ; $753c: $92
	ld   a, [$780d]                                  ; $753d: $fa $0d $78
	and  c                                           ; $7540: $a1
	sub  d                                           ; $7541: $92
	ld   [hl], c                                     ; $7542: $71
	ld   l, l                                        ; $7543: $6d
	sub  a                                           ; $7544: $97
	sbc  [hl]                                        ; $7545: $9e
	ld   [$7d00], sp                                 ; $7546: $08 $00 $7d
	and  c                                           ; $7549: $a1
	dec  c                                           ; $754a: $0d
	adc  h                                           ; $754b: $8c
	ld   h, c                                        ; $754c: $61
	halt                                             ; $754d: $76
	ld   e, l                                        ; $754e: $5d
	and  c                                           ; $754f: $a1
	sub  d                                           ; $7550: $92
	ld   [hl], c                                     ; $7551: $71
	ld   [hl], h                                     ; $7552: $74
	adc  l                                           ; $7553: $8d
	sbc  c                                           ; $7554: $99
	ld   sp, hl                                      ; $7555: $f9

Call_056_7556:
	dec  c                                           ; $7556: $0d
	nop                                              ; $7557: $00
	ld   a, [bc]                                     ; $7558: $0a
	add  hl, de                                      ; $7559: $19
	dec  b                                           ; $755a: $05
	ld   [bc], a                                     ; $755b: $02
	sub  d                                           ; $755c: $92
	sbc  c                                           ; $755d: $99
	nop                                              ; $755e: $00
	nop                                              ; $755f: $00
	ld   d, [hl]                                     ; $7560: $56
	and  c                                           ; $7561: $a1
	sbc  b                                           ; $7562: $98
	sub  l                                           ; $7563: $95
	ld   h, a                                        ; $7564: $67
	sbc  c                                           ; $7565: $99
	nop                                              ; $7566: $00
	ld   bc, $e807                                   ; $7567: $01 $07 $e8
	inc  b                                           ; $756a: $04
	ld   [bc], a                                     ; $756b: $02
	inc  bc                                          ; $756c: $03
	ld   bc, $2000                                   ; $756d: $01 $00 $20
	nop                                              ; $7570: $00
	rlca                                             ; $7571: $07
	ld   c, e                                        ; $7572: $4b
	dec  b                                           ; $7573: $05
	ld   [bc], a                                     ; $7574: $02
	inc  bc                                          ; $7575: $03
	ld   bc, $2001                                   ; $7576: $01 $01 $20
	nop                                              ; $7579: $00
	ld   b, $4b                                      ; $757a: $06 $4b
	dec  b                                           ; $757c: $05
	rrca                                             ; $757d: $0f
	nop                                              ; $757e: $00
	ld   bc, $6a01                                   ; $757f: $01 $01 $6a
	add  b                                           ; $7582: $80
	ld   e, b                                        ; $7583: $58
	ld   [bc], a                                     ; $7584: $02
	add  b                                           ; $7585: $80
	ld   d, d                                        ; $7586: $52
	ld   h, l                                        ; $7587: $65
	adc  h                                           ; $7588: $8c
	ld   h, a                                        ; $7589: $67
	sbc  a                                           ; $758a: $9f
	dec  c                                           ; $758b: $0d
	nop                                              ; $758c: $00
	ld   a, [bc]                                     ; $758d: $0a
	inc  e                                           ; $758e: $1c
	dec  b                                           ; $758f: $05
	ld   bc, $1d01                                   ; $7590: $01 $01 $1d
	ld   b, b                                        ; $7593: $40
	dec  d                                           ; $7594: $15
	inc  bc                                          ; $7595: $03
	dec  d                                           ; $7596: $15
	ld   bc, $2802                                   ; $7597: $01 $02 $28
	nop                                              ; $759a: $00
	ld   bc, $546b                                   ; $759b: $01 $6b $54
	ld   e, c                                        ; $759e: $59
	ld   a, [$6b10]                                  ; $759f: $fa $10 $6b
	ld   h, l                                        ; $75a2: $65
	ld   l, l                                        ; $75a3: $6d
	sub  a                                           ; $75a4: $97
	sbc  [hl]                                        ; $75a5: $9e
	ld   [bc], a                                     ; $75a6: $02
	and  l                                           ; $75a7: $a5
	inc  b                                           ; $75a8: $04
	xor  d                                           ; $75a9: $aa
	ld   a, h                                        ; $75aa: $7c
	dec  c                                           ; $75ab: $0d
	ld   e, b                                        ; $75ac: $58
	inc  b                                           ; $75ad: $04
	xor  l                                           ; $75ae: $ad
	ld   a, c                                        ; $75af: $79
	sbc  [hl]                                        ; $75b0: $9e
	and  a                                           ; $75b1: $a7
	jp   nz, $047c                                   ; $75b2: $c2 $7c $04

	sub  l                                           ; $75b5: $95
	ld   [bc], a                                     ; $75b6: $02
	ld   hl, $0579                                   ; $75b7: $21 $79 $05
	db   $10                                         ; $75ba: $10
	ld   [hl], h                                     ; $75bb: $74
	sbc  a                                           ; $75bc: $9f
	dec  c                                           ; $75bd: $0d
	nop                                              ; $75be: $00
	dec  b                                           ; $75bf: $05
	add  b                                           ; $75c0: $80
	daa                                              ; $75c1: $27
	ld   bc, $0001                                   ; $75c2: $01 $01 $00
	dec  b                                           ; $75c5: $05
	ld   b, b                                        ; $75c6: $40
	ld   e, d                                        ; $75c7: $5a
	ld   [bc], a                                     ; $75c8: $02
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	ld   bc, $1704                                   ; $75cb: $01 $04 $17
	ld   [hl], c                                     ; $75ce: $71
	ld   [hl], h                                     ; $75cf: $74
	sbc  c                                           ; $75d0: $99
	ld   e, c                                        ; $75d1: $59
	sub  a                                           ; $75d2: $97
	sbc  a                                           ; $75d3: $9f
	dec  c                                           ; $75d4: $0d
	nop                                              ; $75d5: $00
	ld   a, [bc]                                     ; $75d6: $0a
	dec  c                                           ; $75d7: $0d
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	rrca                                             ; $75da: $0f
	nop                                              ; $75db: $00
	ld   bc, $1e09                                   ; $75dc: $01 $09 $1e
	nop                                              ; $75df: $00
	rrca                                             ; $75e0: $0f
	nop                                              ; $75e1: $00
	ld   bc, $5201                                   ; $75e2: $01 $01 $52
	ld   d, [hl]                                     ; $75e5: $56
	rst  $38                                         ; $75e6: $ff
	rst  $38                                         ; $75e7: $ff
	dec  c                                           ; $75e8: $0d
	ld   b, $0d                                      ; $75e9: $06 $0d
	inc  b                                           ; $75eb: $04
	ld   e, [hl]                                     ; $75ec: $5e
	ld   h, a                                        ; $75ed: $67
	sbc  c                                           ; $75ee: $99
	sub  d                                           ; $75ef: $92
	ld   [hl], d                                     ; $75f0: $72
	ld   a, l                                        ; $75f1: $7d
	ld   d, [hl]                                     ; $75f2: $56
	and  c                                           ; $75f3: $a1
	sbc  b                                           ; $75f4: $98
	sub  l                                           ; $75f5: $95
	ld   h, e                                        ; $75f6: $63
	ld   l, c                                        ; $75f7: $69
	ld   [hl], h                                     ; $75f8: $74
	dec  c                                           ; $75f9: $0d
	ld   d, d                                        ; $75fa: $52
	ld   l, l                                        ; $75fb: $6d
	ld   l, [hl]                                     ; $75fc: $6e
	ld   e, e                                        ; $75fd: $5b
	adc  h                                           ; $75fe: $8c
	ld   h, a                                        ; $75ff: $67
	sbc  a                                           ; $7600: $9f
	dec  c                                           ; $7601: $0d
	nop                                              ; $7602: $00
	ld   a, [bc]                                     ; $7603: $0a
	inc  e                                           ; $7604: $1c
	dec  b                                           ; $7605: $05
	ld   [bc], a                                     ; $7606: $02
	ld   [bc], a                                     ; $7607: $02
	dec  e                                           ; $7608: $1d
	ld   b, b                                        ; $7609: $40
	dec  d                                           ; $760a: $15
	inc  bc                                          ; $760b: $03
	dec  d                                           ; $760c: $15
	ld   bc, $2901                                   ; $760d: $01 $01 $29
	nop                                              ; $7610: $00
	ld   bc, $546b                                   ; $7611: $01 $6b $54
	ld   e, c                                        ; $7614: $59
	rst  $38                                         ; $7615: $ff
	rst  $38                                         ; $7616: $ff
	dec  c                                           ; $7617: $0d
	inc  bc                                          ; $7618: $03
	jr   z, jr_056_761f                              ; $7619: $28 $04

	ld   c, b                                        ; $761b: $48
	sub  d                                           ; $761c: $92
	ld   a, b                                        ; $761d: $78
	db   $fc                                         ; $761e: $fc

jr_056_761f:
	sbc  a                                           ; $761f: $9f
	ld   e, b                                        ; $7620: $58
	sub  b                                           ; $7621: $90
	sbc  e                                           ; $7622: $9b
	ld   d, d                                        ; $7623: $52
	ld   a, h                                        ; $7624: $7c
	ld   a, c                                        ; $7625: $79
	sbc  a                                           ; $7626: $9f
	dec  c                                           ; $7627: $0d
	adc  c                                           ; $7628: $89
	ld   a, b                                        ; $7629: $78
	sbc  [hl]                                        ; $762a: $9e
	adc  h                                           ; $762b: $8c
	ld   l, l                                        ; $762c: $6d
	ld   a, b                                        ; $762d: $78
	sbc  a                                           ; $762e: $9f
	dec  c                                           ; $762f: $0d
	nop                                              ; $7630: $00
	ld   a, [bc]                                     ; $7631: $0a
	dec  c                                           ; $7632: $0d
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	rrca                                             ; $7635: $0f
	nop                                              ; $7636: $00
	ld   bc, $1e09                                   ; $7637: $01 $09 $1e
	nop                                              ; $763a: $00
	inc  e                                           ; $763b: $1c
	dec  b                                           ; $763c: $05
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	ld   bc, $9e50                                   ; $763f: $01 $50 $9e
	sub  b                                           ; $7642: $90
	ld   d, h                                        ; $7643: $54
	ld   [bc], a                                     ; $7644: $02
	ld   a, a                                        ; $7645: $7f
	ld   e, c                                        ; $7646: $59
	and  c                                           ; $7647: $a1
	halt                                             ; $7648: $76
	rst  $38                                         ; $7649: $ff
	rst  $38                                         ; $764a: $ff
	sbc  a                                           ; $764b: $9f
	dec  c                                           ; $764c: $0d
	adc  c                                           ; $764d: $89
	ld   a, b                                        ; $764e: $78
	sbc  [hl]                                        ; $764f: $9e
	ld   [bc], a                                     ; $7650: $02
	and  l                                           ; $7651: $a5

Jump_056_7652:
	inc  b                                           ; $7652: $04
	xor  d                                           ; $7653: $aa
	sub  b                                           ; $7654: $90
	ld   [bc], a                                     ; $7655: $02
	jr   nz, jr_056_765c                             ; $7656: $20 $04

	xor  d                                           ; $7658: $aa
	ld   e, d                                        ; $7659: $5a
	and  c                                           ; $765a: $a1
	ld   a, [hl]                                     ; $765b: $7e

jr_056_765c:
	sbc  e                                           ; $765c: $9b
	ld   a, b                                        ; $765d: $78
	sbc  a                                           ; $765e: $9f
	dec  c                                           ; $765f: $0d
	nop                                              ; $7660: $00
	ld   a, [bc]                                     ; $7661: $0a
	dec  c                                           ; $7662: $0d
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	rrca                                             ; $7665: $0f
	nop                                              ; $7666: $00
	ld   bc, $1e09                                   ; $7667: $01 $09 $1e
	nop                                              ; $766a: $00
	rrca                                             ; $766b: $0f
	nop                                              ; $766c: $00
	ld   bc, $5601                                   ; $766d: $01 $01 $56
	and  c                                           ; $7670: $a1
	ld   e, c                                        ; $7671: $59
	ld   d, d                                        ; $7672: $52
	ld   e, l                                        ; $7673: $5d
	and  c                                           ; $7674: $a1
	ld   a, h                                        ; $7675: $7c
	ld   e, b                                        ; $7676: $58
	dec  b                                           ; $7677: $05
	jr   nz, @-$5e                                   ; $7678: $20 $a0

	dec  c                                           ; $767a: $0d
	ld   [bc], a                                     ; $767b: $02
	jp   nz, Jump_056_6959                           ; $767c: $c2 $59 $69

	ld   [hl], h                                     ; $767f: $74
	ld   e, l                                        ; $7680: $5d
	ld   l, [hl]                                     ; $7681: $6e
	ld   h, e                                        ; $7682: $63
	ld   d, d                                        ; $7683: $52
	sbc  a                                           ; $7684: $9f
	dec  c                                           ; $7685: $0d
	nop                                              ; $7686: $00
	ld   a, [bc]                                     ; $7687: $0a
	inc  e                                           ; $7688: $1c
	dec  b                                           ; $7689: $05
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	ld   bc, $a156                                   ; $768c: $01 $56 $a1
	ld   e, c                                        ; $768f: $59
	ld   d, d                                        ; $7690: $52
	ld   e, l                                        ; $7691: $5d
	and  c                                           ; $7692: $a1
	ld   a, l                                        ; $7693: $7d
	inc  bc                                          ; $7694: $03
	rst  $38                                         ; $7695: $ff
	ld   b, $3c                                      ; $7696: $06 $3c
	ld   [bc], a                                     ; $7698: $02
	add  [hl]                                        ; $7699: $86
	db   $e3                                         ; $769a: $e3
	xor  h                                           ; $769b: $ac
	sub  d                                           ; $769c: $92
	sbc  a                                           ; $769d: $9f
	dec  c                                           ; $769e: $0d
	ld   bc, $0407                                   ; $769f: $01 $07 $04
	inc  a                                           ; $76a2: $3c
	ld   [bc], a                                     ; $76a3: $02
	ld   b, e                                        ; $76a4: $43
	ld   l, l                                        ; $76a5: $6d
	adc  h                                           ; $76a6: $8c
	ld   h, a                                        ; $76a7: $67
	ld   l, [hl]                                     ; $76a8: $6e
	sbc  d                                           ; $76a9: $9a
	ld   bc, $7808                                   ; $76aa: $01 $08 $78
	and  c                                           ; $76ad: $a1
	ld   e, c                                        ; $76ae: $59
	sub  b                                           ; $76af: $90
	dec  c                                           ; $76b0: $0d
	ld   [hl], l                                     ; $76b1: $75
	ld   e, e                                        ; $76b2: $5b
	sbc  c                                           ; $76b3: $99
	and  c                                           ; $76b4: $a1
	sub  d                                           ; $76b5: $92
	sbc  a                                           ; $76b6: $9f
	dec  c                                           ; $76b7: $0d
	nop                                              ; $76b8: $00
	ld   a, [bc]                                     ; $76b9: $0a
	add  hl, de                                      ; $76ba: $19
	dec  b                                           ; $76bb: $05
	inc  bc                                          ; $76bc: $03
	inc  b                                           ; $76bd: $04
	adc  d                                           ; $76be: $8a
	inc  b                                           ; $76bf: $04
	rst  JumpTable                                         ; $76c0: $df
	ld   d, b                                        ; $76c1: $50
	sbc  c                                           ; $76c2: $99
	ld   a, h                                        ; $76c3: $7c
	ld   sp, hl                                      ; $76c4: $f9
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	ld   b, $0d                                      ; $76c7: $06 $0d
	inc  b                                           ; $76c9: $04
	ld   e, [hl]                                     ; $76ca: $5e
	ld   sp, hl                                      ; $76cb: $f9
	nop                                              ; $76cc: $00
	ld   bc, $e6ab                                   ; $76cd: $01 $ab $e6
	cp   c                                           ; $76d0: $b9
	xor  a                                           ; $76d1: $af
	push hl                                          ; $76d2: $e5
	or   c                                           ; $76d3: $b1
	ld   b, $8d                                      ; $76d4: $06 $8d
	inc  b                                           ; $76d6: $04
	ld   a, [$0200]                                  ; $76d7: $fa $00 $02
	rlca                                             ; $76da: $07
	ld   h, e                                        ; $76db: $63
	ld   b, $02                                      ; $76dc: $06 $02
	inc  bc                                          ; $76de: $03
	ld   bc, $2000                                   ; $76df: $01 $00 $20
	nop                                              ; $76e2: $00
	rlca                                             ; $76e3: $07
	db   $ed                                         ; $76e4: $ed
	ld   b, $02                                      ; $76e5: $06 $02
	inc  bc                                          ; $76e7: $03
	ld   bc, $2001                                   ; $76e8: $01 $01 $20
	nop                                              ; $76eb: $00
	rlca                                             ; $76ec: $07
	dec  l                                           ; $76ed: $2d
	rlca                                             ; $76ee: $07
	ld   [bc], a                                     ; $76ef: $02
	inc  bc                                          ; $76f0: $03
	ld   bc, $2002                                   ; $76f1: $01 $02 $20
	nop                                              ; $76f4: $00
	ld   b, $9f                                      ; $76f5: $06 $9f
	rlca                                             ; $76f7: $07
	rrca                                             ; $76f8: $0f
	nop                                              ; $76f9: $00
	ld   bc, $0601                                   ; $76fa: $01 $01 $06
	inc  a                                           ; $76fd: $3c
	ld   [bc], a                                     ; $76fe: $02
	add  [hl]                                        ; $76ff: $86
	db   $e3                                         ; $7700: $e3
	xor  h                                           ; $7701: $ac
	ld   [hl], c                                     ; $7702: $71
	ld   [hl], h                                     ; $7703: $74
	rst  $38                                         ; $7704: $ff
	rst  $38                                         ; $7705: $ff
	dec  c                                           ; $7706: $0d
	ld   [bc], a                                     ; $7707: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7708: $cf
	dec  b                                           ; $7709: $05
	ld   a, [de]                                     ; $770a: $1a
	ld   h, e                                        ; $770b: $63
	and  c                                           ; $770c: $a1
	ld   e, d                                        ; $770d: $5a
	ld   d, d                                        ; $770e: $52
	sbc  c                                           ; $770f: $99
	ld   a, h                                        ; $7710: $7c
	ld   a, c                                        ; $7711: $79
	dec  c                                           ; $7712: $0d
	inc  b                                           ; $7713: $04
	adc  d                                           ; $7714: $8a
	inc  b                                           ; $7715: $04
	rst  JumpTable                                         ; $7716: $df
	ld   d, b                                        ; $7717: $50
	sbc  c                                           ; $7718: $99
	and  c                                           ; $7719: $a1
	ld   [hl], l                                     ; $771a: $75
	ld   h, a                                        ; $771b: $67
	ld   e, c                                        ; $771c: $59
	ld   sp, hl                                      ; $771d: $f9
	dec  c                                           ; $771e: $0d
	nop                                              ; $771f: $00
	ld   a, [bc]                                     ; $7720: $0a
	inc  e                                           ; $7721: $1c
	dec  b                                           ; $7722: $05
	ld   bc, $0101                                   ; $7723: $01 $01 $01
	adc  h                                           ; $7726: $8c
	ld   d, b                                        ; $7727: $50
	ld   a, b                                        ; $7728: $78
	sbc  a                                           ; $7729: $9f
	dec  c                                           ; $772a: $0d
	ld   b, $3c                                      ; $772b: $06 $3c
	ld   [bc], a                                     ; $772d: $02
	add  [hl]                                        ; $772e: $86
	ld   [hl], l                                     ; $772f: $75
	ld   a, l                                        ; $7730: $7d
	sbc  [hl]                                        ; $7731: $9e
	and  a                                           ; $7732: $a7
	jp   nz, $b67c                                   ; $7733: $c2 $7c $b6

	db   $eb                                         ; $7736: $eb
	ld   [bc], a                                     ; $7737: $02
	sub  e                                           ; $7738: $93
	ld   h, l                                        ; $7739: $65
	ld   e, d                                        ; $773a: $5a
	dec  c                                           ; $773b: $0d
	ld   h, e                                        ; $773c: $63
	ld   e, l                                        ; $773d: $5d
	sbc  d                                           ; $773e: $9a
	ld   [hl], d                                     ; $773f: $72
	ld   h, a                                        ; $7740: $67
	sbc  c                                           ; $7741: $99
	ld   h, e                                        ; $7742: $63
	ld   e, c                                        ; $7743: $59
	ld   d, d                                        ; $7744: $52
	ld   a, b                                        ; $7745: $78
	db   $fc                                         ; $7746: $fc
	sbc  a                                           ; $7747: $9f
	dec  c                                           ; $7748: $0d
	nop                                              ; $7749: $00
	ld   a, [bc]                                     ; $774a: $0a
	dec  e                                           ; $774b: $1d
	ld   b, b                                        ; $774c: $40
	dec  d                                           ; $774d: $15
	inc  bc                                          ; $774e: $03
	dec  d                                           ; $774f: $15
	ld   bc, $2802                                   ; $7750: $01 $02 $28
	nop                                              ; $7753: $00
	ld   bc, $9269                                   ; $7754: $01 $69 $92
	ld   e, c                                        ; $7757: $59
	sub  a                                           ; $7758: $97
	and  a                                           ; $7759: $a7
	jp   nz, Jump_056_5676                           ; $775a: $c2 $76 $56

	and  c                                           ; $775d: $a1
	ld   e, c                                        ; $775e: $59
	ld   d, d                                        ; $775f: $52
	ld   e, l                                        ; $7760: $5d
	and  c                                           ; $7761: $a1
	ld   e, d                                        ; $7762: $5a
	dec  c                                           ; $7763: $0d
	ret  nz                                          ; $7764: $c0

	call nz, $a0b1                                   ; $7765: $c4 $b1 $a0
	inc  bc                                          ; $7768: $03
	nop                                              ; $7769: $00
	and  c                                           ; $776a: $a1
	ld   l, [hl]                                     ; $776b: $6e
	sub  a                                           ; $776c: $97
	dec  c                                           ; $776d: $0d
	adc  a                                           ; $776e: $8f
	ld   [hl], c                                     ; $776f: $71
	ld   l, a                                        ; $7770: $6f
	sub  c                                           ; $7771: $91
	dec  b                                           ; $7772: $05
	push hl                                          ; $7773: $e5
	sbc  b                                           ; $7774: $98
	inc  bc                                          ; $7775: $03
	ld   h, l                                        ; $7776: $65
	ld   e, d                                        ; $7777: $5a
	sbc  c                                           ; $7778: $99
	ld   a, e                                        ; $7779: $7b
	and  c                                           ; $777a: $a1
	sbc  a                                           ; $777b: $9f
	dec  c                                           ; $777c: $0d
	nop                                              ; $777d: $00
	ld   a, [bc]                                     ; $777e: $0a
	ld   b, $6f                                      ; $777f: $06 $6f
	rlca                                             ; $7781: $07
	rrca                                             ; $7782: $0f
	nop                                              ; $7783: $00
	ld   bc, $8c01                                   ; $7784: $01 $01 $8c
	ld   l, l                                        ; $7787: $6d
	ld   b, $0d                                      ; $7788: $06 $0d
	inc  b                                           ; $778a: $04
	ld   e, [hl]                                     ; $778b: $5e
	ld   h, l                                        ; $778c: $65
	ld   l, l                                        ; $778d: $6d
	and  c                                           ; $778e: $a1
	ld   [hl], l                                     ; $778f: $75
	ld   h, l                                        ; $7790: $65
	sub  l                                           ; $7791: $95
	sbc  a                                           ; $7792: $9f
	dec  c                                           ; $7793: $0d
	nop                                              ; $7794: $00
	ld   a, [bc]                                     ; $7795: $0a
	inc  e                                           ; $7796: $1c
	dec  b                                           ; $7797: $05
	ld   b, $06                                      ; $7798: $06 $06
	dec  e                                           ; $779a: $1d
	ld   b, b                                        ; $779b: $40
	dec  d                                           ; $779c: $15
	inc  bc                                          ; $779d: $03
	dec  d                                           ; $779e: $15
	ld   bc, $2902                                   ; $779f: $01 $02 $29
	nop                                              ; $77a2: $00
	ld   bc, $0d06                                   ; $77a3: $01 $06 $0d
	inc  b                                           ; $77a6: $04
	ld   e, [hl]                                     ; $77a7: $5e
	ld   h, l                                        ; $77a8: $65
	ld   l, l                                        ; $77a9: $6d
	ld   e, a                                        ; $77aa: $5f
	ld   [hl], a                                     ; $77ab: $77
	rst  $38                                         ; $77ac: $ff
	rst  $38                                         ; $77ad: $ff
	dec  c                                           ; $77ae: $0d
	cp   e                                           ; $77af: $bb
	pop  de                                          ; $77b0: $d1
	db   $ec                                         ; $77b1: $ec
	ld   [bc], a                                     ; $77b2: $02
	sbc  l                                           ; $77b3: $9d
	ld   d, h                                        ; $77b4: $54
	ld   h, c                                        ; $77b5: $61
	halt                                             ; $77b6: $76
	ld   a, b                                        ; $77b7: $78
	ld   d, d                                        ; $77b8: $52
	sub  d                                           ; $77b9: $92
	and  c                                           ; $77ba: $a1
	sbc  a                                           ; $77bb: $9f
	dec  c                                           ; $77bc: $0d
	nop                                              ; $77bd: $00
	ld   a, [bc]                                     ; $77be: $0a
	ld   b, $6f                                      ; $77bf: $06 $6f
	rlca                                             ; $77c1: $07
	rrca                                             ; $77c2: $0f
	nop                                              ; $77c3: $00
	ld   bc, $6b01                                   ; $77c4: $01 $01 $6b
	and  c                                           ; $77c7: $a1
	ld   a, b                                        ; $77c8: $78
	inc  b                                           ; $77c9: $04
	rst  ToBoot                                         ; $77ca: $c7
	inc  bc                                          ; $77cb: $03
	ld   c, a                                        ; $77cc: $4f
	ld   [hl], l                                     ; $77cd: $75
	xor  c                                           ; $77ce: $a9
	xor  c                                           ; $77cf: $a9
	db   $fc                                         ; $77d0: $fc
	and  c                                           ; $77d1: $a1
	ld   e, c                                        ; $77d2: $59
	ld   d, d                                        ; $77d3: $52
	ld   sp, hl                                      ; $77d4: $f9
	dec  c                                           ; $77d5: $0d
	ld   a, b                                        ; $77d6: $78
	ei                                               ; $77d7: $fb
	and  c                                           ; $77d8: $a1
	ld   l, a                                        ; $77d9: $6f
	sub  c                                           ; $77da: $91
	ld   [hl], c                                     ; $77db: $71
	ld   [hl], h                                     ; $77dc: $74
	sbc  a                                           ; $77dd: $9f
	dec  c                                           ; $77de: $0d
	nop                                              ; $77df: $00
	ld   a, [bc]                                     ; $77e0: $0a
	inc  e                                           ; $77e1: $1c
	dec  b                                           ; $77e2: $05
	rlca                                             ; $77e3: $07
	rlca                                             ; $77e4: $07
	dec  e                                           ; $77e5: $1d
	ld   b, b                                        ; $77e6: $40
	dec  d                                           ; $77e7: $15
	inc  bc                                          ; $77e8: $03
	dec  d                                           ; $77e9: $15
	ld   bc, $2902                                   ; $77ea: $01 $02 $29
	nop                                              ; $77ed: $00
	ld   bc, $ffff                                   ; $77ee: $01 $ff $ff
	rst  $38                                         ; $77f1: $ff
	rst  $38                                         ; $77f2: $ff
	rst  $38                                         ; $77f3: $ff
	rst  $38                                         ; $77f4: $ff
	dec  c                                           ; $77f5: $0d
	ld   l, e                                        ; $77f6: $6b
	ld   a, h                                        ; $77f7: $7c
	adc  h                                           ; $77f8: $8c
	and  c                                           ; $77f9: $a1
	adc  h                                           ; $77fa: $8c
	sub  d                                           ; $77fb: $92
	and  c                                           ; $77fc: $a1
	ld   a, [$000d]                                  ; $77fd: $fa $0d $00
	ld   a, [bc]                                     ; $7800: $0a
	ld   b, $6f                                      ; $7801: $06 $6f
	rlca                                             ; $7803: $07
	inc  e                                           ; $7804: $1c
	dec  b                                           ; $7805: $05
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	ld   bc, $9e50                                   ; $7808: $01 $50 $9e
	sub  b                                           ; $780b: $90
	ld   d, h                                        ; $780c: $54
	ld   [bc], a                                     ; $780d: $02
	ld   a, a                                        ; $780e: $7f
	ld   e, c                                        ; $780f: $59
	and  c                                           ; $7810: $a1
	halt                                             ; $7811: $76
	rst  $38                                         ; $7812: $ff
	rst  $38                                         ; $7813: $ff
	sbc  a                                           ; $7814: $9f
	dec  c                                           ; $7815: $0d
	adc  c                                           ; $7816: $89
	ld   a, b                                        ; $7817: $78
	sbc  [hl]                                        ; $7818: $9e
	ld   [bc], a                                     ; $7819: $02
	and  l                                           ; $781a: $a5
	inc  b                                           ; $781b: $04
	xor  d                                           ; $781c: $aa
	sub  b                                           ; $781d: $90
	ld   [bc], a                                     ; $781e: $02
	jr   nz, jr_056_7825                             ; $781f: $20 $04

	xor  d                                           ; $7821: $aa
	ld   e, d                                        ; $7822: $5a
	and  c                                           ; $7823: $a1
	ld   a, [hl]                                     ; $7824: $7e

jr_056_7825:
	sbc  e                                           ; $7825: $9b
	ld   a, b                                        ; $7826: $78
	sbc  a                                           ; $7827: $9f
	dec  c                                           ; $7828: $0d
	nop                                              ; $7829: $00
	ld   a, [bc]                                     ; $782a: $0a
	dec  c                                           ; $782b: $0d
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	rrca                                             ; $782e: $0f
	nop                                              ; $782f: $00
	ld   bc, $1e09                                   ; $7830: $01 $09 $1e
	nop                                              ; $7833: $00
	inc  e                                           ; $7834: $1c
	dec  b                                           ; $7835: $05
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	ld   bc, $936f                                   ; $7838: $01 $6f $93
	ei                                               ; $783b: $fb
	ld   h, c                                        ; $783c: $61
	halt                                             ; $783d: $76
	ld   [hl], l                                     ; $783e: $75
	sbc  [hl]                                        ; $783f: $9e
	dec  c                                           ; $7840: $0d
	ld   d, b                                        ; $7841: $50
	sbc  [hl]                                        ; $7842: $9e
	sub  b                                           ; $7843: $90
	ld   d, h                                        ; $7844: $54

jr_056_7845:
	ld   [bc], a                                     ; $7845: $02
	ld   a, a                                        ; $7846: $7f
	ld   e, c                                        ; $7847: $59
	and  c                                           ; $7848: $a1
	halt                                             ; $7849: $76
	rst  $38                                         ; $784a: $ff
	rst  $38                                         ; $784b: $ff
	sbc  a                                           ; $784c: $9f
	dec  c                                           ; $784d: $0d
	adc  c                                           ; $784e: $89
	ld   a, b                                        ; $784f: $78
	sbc  [hl]                                        ; $7850: $9e
	ld   [bc], a                                     ; $7851: $02
	and  l                                           ; $7852: $a5
	inc  b                                           ; $7853: $04
	xor  d                                           ; $7854: $aa
	sub  b                                           ; $7855: $90
	ld   [bc], a                                     ; $7856: $02
	jr   nz, jr_056_785d                             ; $7857: $20 $04

Jump_056_7859:
	xor  d                                           ; $7859: $aa

Jump_056_785a:
	ld   e, d                                        ; $785a: $5a
	and  c                                           ; $785b: $a1
	ld   a, [hl]                                     ; $785c: $7e

jr_056_785d:
	sbc  e                                           ; $785d: $9b
	ld   a, b                                        ; $785e: $78
	sbc  a                                           ; $785f: $9f
	dec  c                                           ; $7860: $0d
	nop                                              ; $7861: $00
	ld   a, [bc]                                     ; $7862: $0a
	dec  c                                           ; $7863: $0d
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	rrca                                             ; $7866: $0f
	nop                                              ; $7867: $00
	ld   bc, $1e09                                   ; $7868: $01 $09 $1e
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	rrca                                             ; $786d: $0f

Jump_056_786e:
	nop                                              ; $786e: $00
	ld   bc, $0102                                   ; $786f: $01 $02 $01
	ld   e, b                                        ; $7872: $58
	ld   a, l                                        ; $7873: $7d
	sub  [hl]                                        ; $7874: $96
	ld   d, h                                        ; $7875: $54
	ld   h, d                                        ; $7876: $62
	ld   h, h                                        ; $7877: $64
	ld   d, d                                        ; $7878: $52

Call_056_7879:
	adc  h                                           ; $7879: $8c
	ld   h, a                                        ; $787a: $67
	sbc  a                                           ; $787b: $9f
	dec  c                                           ; $787c: $0d
	ld   h, a                                        ; $787d: $67
	adc  l                                           ; $787e: $8d
	sbc  d                                           ; $787f: $9a
	ld   h, e                                        ; $7880: $63
	and  c                                           ; $7881: $a1
	sbc  a                                           ; $7882: $9f
	dec  c                                           ; $7883: $0d
	nop                                              ; $7884: $00
	ld   a, [bc]                                     ; $7885: $0a
	inc  e                                           ; $7886: $1c
	ld   [bc], a                                     ; $7887: $02
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	ld   bc, $0008                                   ; $788a: $01 $08 $00
	ld   h, e                                        ; $788d: $63
	and  c                                           ; $788e: $a1
	sbc  a                                           ; $788f: $9f
	dec  c                                           ; $7890: $0d
	ld   e, b                                        ; $7891: $58
	ld   a, l                                        ; $7892: $7d
	sub  [hl]                                        ; $7893: $96
	ld   d, h                                        ; $7894: $54
	sbc  a                                           ; $7895: $9f
	dec  c                                           ; $7896: $0d
	nop                                              ; $7897: $00
	ld   a, [bc]                                     ; $7898: $0a
	rrca                                             ; $7899: $0f
	nop                                              ; $789a: $00
	ld   bc, $0101                                   ; $789b: $01 $01 $01
	inc  bc                                          ; $789e: $03
	inc  b                                           ; $789f: $04
	ld   c, c                                        ; $78a0: $49
	ld   a, h                                        ; $78a1: $7c
	dec  b                                           ; $78a2: $05
	jr   nz, jr_056_7845                             ; $78a3: $20 $a0

	ld   h, l                                        ; $78a5: $65
	sub  [hl]                                        ; $78a6: $96
	ld   d, h                                        ; $78a7: $54
	ld   e, c                                        ; $78a8: $59
	ld   a, b                                        ; $78a9: $78
	rst  $38                                         ; $78aa: $ff
	rst  $38                                         ; $78ab: $ff
	ld   bc, $0d04                                   ; $78ac: $01 $04 $0d
	nop                                              ; $78af: $00
	ld   a, [bc]                                     ; $78b0: $0a
	add  hl, de                                      ; $78b1: $19
	dec  b                                           ; $78b2: $05
	inc  bc                                          ; $78b3: $03
	ld   h, a                                        ; $78b4: $67
	adc  l                                           ; $78b5: $8d
	sbc  d                                           ; $78b6: $9a
	ld   a, c                                        ; $78b7: $79
	ld   [hl], d                                     ; $78b8: $72
	ld   d, d                                        ; $78b9: $52
	ld   [hl], h                                     ; $78ba: $74
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	inc  bc                                          ; $78bd: $03
	ld   l, d                                        ; $78be: $6a
	add  a                                           ; $78bf: $87
	inc  b                                           ; $78c0: $04
	sub  d                                           ; $78c1: $92
	ld   a, h                                        ; $78c2: $7c
	dec  b                                           ; $78c3: $05
	jr   nz, @+$06                                   ; $78c4: $20 $04

	dec  d                                           ; $78c6: $15
	nop                                              ; $78c7: $00
	ld   bc, $0804                                   ; $78c8: $01 $04 $08
	ld   [bc], a                                     ; $78cb: $02
	sub  d                                           ; $78cc: $92
	ld   a, c                                        ; $78cd: $79
	ld   [hl], d                                     ; $78ce: $72
	ld   d, d                                        ; $78cf: $52
	ld   [hl], h                                     ; $78d0: $74
	nop                                              ; $78d1: $00
	ld   [bc], a                                     ; $78d2: $02
	rlca                                             ; $78d3: $07
	and  [hl]                                        ; $78d4: $a6
	nop                                              ; $78d5: $00
	ld   [bc], a                                     ; $78d6: $02
	inc  bc                                          ; $78d7: $03
	ld   bc, $2000                                   ; $78d8: $01 $00 $20
	nop                                              ; $78db: $00
	rlca                                             ; $78dc: $07
	ret                                              ; $78dd: $c9


	ld   [bc], a                                     ; $78de: $02
	ld   [bc], a                                     ; $78df: $02
	inc  bc                                          ; $78e0: $03
	ld   bc, $2001                                   ; $78e1: $01 $01 $20
	nop                                              ; $78e4: $00
	rlca                                             ; $78e5: $07
	sub  e                                           ; $78e6: $93
	inc  b                                           ; $78e7: $04
	ld   [bc], a                                     ; $78e8: $02
	inc  bc                                          ; $78e9: $03
	ld   bc, $2002                                   ; $78ea: $01 $02 $20
	nop                                              ; $78ed: $00
	ld   b, $84                                      ; $78ee: $06 $84
	nop                                              ; $78f0: $00
	rrca                                             ; $78f1: $0f
	ld   [bc], a                                     ; $78f2: $02
	nop                                              ; $78f3: $00
	ld   bc, $a502                                   ; $78f4: $01 $02 $a5
	inc  b                                           ; $78f7: $04
	xor  d                                           ; $78f8: $aa
	sub  b                                           ; $78f9: $90
	ld   [bc], a                                     ; $78fa: $02
	jr   nz, jr_056_7901                             ; $78fb: $20 $04

	xor  d                                           ; $78fd: $aa
	sbc  [hl]                                        ; $78fe: $9e
	ld   e, d                                        ; $78ff: $5a
	and  c                                           ; $7900: $a1

jr_056_7901:
	ld   a, [hl]                                     ; $7901: $7e
	sbc  b                                           ; $7902: $98
	ld   a, b                                        ; $7903: $78
	ld   h, e                                        ; $7904: $63
	ld   d, d                                        ; $7905: $52
	sbc  a                                           ; $7906: $9f
	dec  c                                           ; $7907: $0d
	nop                                              ; $7908: $00
	ld   a, [bc]                                     ; $7909: $0a
	dec  c                                           ; $790a: $0d
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	rrca                                             ; $790d: $0f
	nop                                              ; $790e: $00
	ld   bc, $1e09                                   ; $790f: $01 $09 $1e
	nop                                              ; $7912: $00
	rrca                                             ; $7913: $0f
	nop                                              ; $7914: $00
	ld   bc, $6701                                   ; $7915: $01 $01 $67
	adc  l                                           ; $7918: $8d
	sbc  d                                           ; $7919: $9a
	ld   h, e                                        ; $791a: $63
	and  c                                           ; $791b: $a1
	ld   [hl], h                                     ; $791c: $74
	dec  c                                           ; $791d: $0d
	inc  bc                                          ; $791e: $03
	db   $fc                                         ; $791f: $fc
	inc  bc                                          ; $7920: $03
	ld   d, d                                        ; $7921: $52
	inc  b                                           ; $7922: $04
	xor  d                                           ; $7923: $aa
	ld   a, l                                        ; $7924: $7d
	ld   d, d                                        ; $7925: $52
	ld   [hl], d                                     ; $7926: $72
	ld   [hl], l                                     ; $7927: $75
	ld   h, a                                        ; $7928: $67
	ld   e, c                                        ; $7929: $59
	ld   sp, hl                                      ; $792a: $f9
	dec  c                                           ; $792b: $0d
	nop                                              ; $792c: $00
	ld   a, [bc]                                     ; $792d: $0a
	rrca                                             ; $792e: $0f
	ld   [bc], a                                     ; $792f: $02
	nop                                              ; $7930: $00
	ld   bc, $6d9d                                   ; $7931: $01 $9d $6d
	ld   e, l                                        ; $7934: $5d
	ld   h, l                                        ; $7935: $65
	ld   a, h                                        ; $7936: $7c
	inc  bc                                          ; $7937: $03
	db   $fc                                         ; $7938: $fc
	inc  bc                                          ; $7939: $03
	ld   d, d                                        ; $793a: $52
	inc  b                                           ; $793b: $04
	xor  d                                           ; $793c: $aa
	ld   [hl], l                                     ; $793d: $75
	ld   h, a                                        ; $793e: $67
	ld   e, c                                        ; $793f: $59
	ld   sp, hl                                      ; $7940: $f9
	dec  c                                           ; $7941: $0d
	ld   [de], a                                     ; $7942: $12
	ld   [bc], a                                     ; $7943: $02
	sbc  e                                           ; $7944: $9b
	add  hl, de                                      ; $7945: $19
	inc  b                                           ; $7946: $04
	xor  d                                           ; $7947: $aa
	ld   [hl], l                                     ; $7948: $75
	ld   h, a                                        ; $7949: $67
	sbc  l                                           ; $794a: $9d
	sub  [hl]                                        ; $794b: $96
	sbc  a                                           ; $794c: $9f
	dec  c                                           ; $794d: $0d
	nop                                              ; $794e: $00
	ld   a, [bc]                                     ; $794f: $0a
	add  hl, de                                      ; $7950: $19
	dec  b                                           ; $7951: $05
	inc  bc                                          ; $7952: $03
	ld   [bc], a                                     ; $7953: $02
	db   $e4                                         ; $7954: $e4
	ld   d, d                                        ; $7955: $52
	ld   [hl], l                                     ; $7956: $75
	ld   h, a                                        ; $7957: $67
	ld   a, e                                        ; $7958: $7b
	db   $fc                                         ; $7959: $fc
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	inc  bc                                          ; $795c: $03
	db   $fc                                         ; $795d: $fc
	inc  bc                                          ; $795e: $03
	ld   d, d                                        ; $795f: $52
	inc  bc                                          ; $7960: $03
	cp   a                                           ; $7961: $bf
	ld   a, l                                        ; $7962: $7d
	ld   l, l                                        ; $7963: $6d
	ld   h, l                                        ; $7964: $65
	ld   e, c                                        ; $7965: $59
	rst  $38                                         ; $7966: $ff
	rst  $38                                         ; $7967: $ff
	nop                                              ; $7968: $00
	ld   bc, $936f                                   ; $7969: $01 $6f $93
	ld   d, h                                        ; $796c: $54
	halt                                             ; $796d: $76
	ret  nc                                          ; $796e: $d0

	push af                                          ; $796f: $f5
	jp   nc, Jump_056_6775                           ; $7970: $d2 $75 $67

	ld   a, e                                        ; $7973: $7b
	nop                                              ; $7974: $00
	ld   [bc], a                                     ; $7975: $02
	rlca                                             ; $7976: $07
	daa                                              ; $7977: $27
	ld   bc, $0302                                   ; $7978: $01 $02 $03
	ld   bc, $2000                                   ; $797b: $01 $00 $20
	nop                                              ; $797e: $00
	rlca                                             ; $797f: $07
	sub  h                                           ; $7980: $94
	ld   bc, $0302                                   ; $7981: $01 $02 $03
	ld   bc, $2001                                   ; $7984: $01 $01 $20
	nop                                              ; $7987: $00
	rlca                                             ; $7988: $07
	or   $01                                         ; $7989: $f6 $01
	ld   [bc], a                                     ; $798b: $02
	inc  bc                                          ; $798c: $03
	ld   bc, $2002                                   ; $798d: $01 $02 $20
	nop                                              ; $7990: $00
	ld   b, $91                                      ; $7991: $06 $91
	ld   [bc], a                                     ; $7993: $02
	rrca                                             ; $7994: $0f
	nop                                              ; $7995: $00
	ld   bc, $1201                                   ; $7996: $01 $01 $12
	ld   [bc], a                                     ; $7999: $02
	sbc  e                                           ; $799a: $9b
	ld   [hl], l                                     ; $799b: $75
	ld   h, a                                        ; $799c: $67
	ld   e, c                                        ; $799d: $59
	sbc  a                                           ; $799e: $9f
	dec  c                                           ; $799f: $0d
	ld   h, c                                        ; $79a0: $61
	sbc  d                                           ; $79a1: $9a
	adc  h                                           ; $79a2: $8c
	ld   l, l                                        ; $79a3: $6d
	ld   [bc], a                                     ; $79a4: $02
	db   $e4                                         ; $79a5: $e4
	ld   d, d                                        ; $79a6: $52
	halt                                             ; $79a7: $76
	ld   e, e                                        ; $79a8: $5b
	ld   a, c                                        ; $79a9: $79
	dec  c                                           ; $79aa: $0d
	inc  bc                                          ; $79ab: $03
	ld   d, d                                        ; $79ac: $52
	adc  h                                           ; $79ad: $8c
	sbc  d                                           ; $79ae: $9a
	ld   l, l                                        ; $79af: $6d
	and  c                                           ; $79b0: $a1
	ld   [hl], l                                     ; $79b1: $75
	ld   h, a                                        ; $79b2: $67
	ld   a, e                                        ; $79b3: $7b
	sbc  a                                           ; $79b4: $9f
	dec  c                                           ; $79b5: $0d
	nop                                              ; $79b6: $00
	ld   a, [bc]                                     ; $79b7: $0a
	inc  e                                           ; $79b8: $1c
	ld   [bc], a                                     ; $79b9: $02
	rlca                                             ; $79ba: $07
	rlca                                             ; $79bb: $07
	dec  e                                           ; $79bc: $1d
	ld   b, b                                        ; $79bd: $40
	ld   [de], a                                     ; $79be: $12
	inc  bc                                          ; $79bf: $03
	ld   [de], a                                     ; $79c0: $12
	ld   bc, $2901                                   ; $79c1: $01 $01 $29
	nop                                              ; $79c4: $00
	ld   bc, $f5d6                                   ; $79c5: $01 $d6 $f5
	rst  $38                                         ; $79c8: $ff
	rst  $38                                         ; $79c9: $ff
	dec  c                                           ; $79ca: $0d
	ld   l, e                                        ; $79cb: $6b
	adc  h                                           ; $79cc: $8c
	ld   [hl], d                                     ; $79cd: $72
	ld   a, b                                        ; $79ce: $78
	ld   [bc], a                                     ; $79cf: $02
	scf                                              ; $79d0: $37
	inc  bc                                          ; $79d1: $03
	ld   a, [de]                                     ; $79d2: $1a
	ld   [hl], l                                     ; $79d3: $75
	ld   h, a                                        ; $79d4: $67
	ld   h, c                                        ; $79d5: $61
	halt                                             ; $79d6: $76
	sbc  a                                           ; $79d7: $9f

Call_056_79d8:
	dec  c                                           ; $79d8: $0d
	nop                                              ; $79d9: $00
	ld   a, [bc]                                     ; $79da: $0a
	ld   bc, $9166                                   ; $79db: $01 $66 $91
	ld   d, b                                        ; $79de: $50
	sbc  [hl]                                        ; $79df: $9e
	sbc  l                                           ; $79e0: $9d
	ld   l, l                                        ; $79e1: $6d
	ld   e, l                                        ; $79e2: $5d
	ld   h, l                                        ; $79e3: $65
	inc  b                                           ; $79e4: $04
	di                                               ; $79e5: $f3
	ld   e, d                                        ; $79e6: $5a
	dec  c                                           ; $79e7: $0d
	ld   d, b                                        ; $79e8: $50
	sbc  b                                           ; $79e9: $98
	adc  h                                           ; $79ea: $8c
	ld   h, a                                        ; $79eb: $67
	ld   e, c                                        ; $79ec: $59
	sub  a                                           ; $79ed: $97
	rst  $38                                         ; $79ee: $ff
	inc  bc                                          ; $79ef: $03
	add  e                                           ; $79f0: $83
	dec  b                                           ; $79f1: $05
	dec  c                                           ; $79f2: $0d
	rst  $38                                         ; $79f3: $ff
	rst  $38                                         ; $79f4: $ff
	dec  c                                           ; $79f5: $0d
	nop                                              ; $79f6: $00
	ld   a, [bc]                                     ; $79f7: $0a
	dec  c                                           ; $79f8: $0d
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	rrca                                             ; $79fb: $0f
	nop                                              ; $79fc: $00
	ld   bc, $1e09                                   ; $79fd: $01 $09 $1e
	nop                                              ; $7a00: $00
	rrca                                             ; $7a01: $0f

Jump_056_7a02:
	nop                                              ; $7a02: $00
	ld   bc, $0301                                   ; $7a03: $01 $01 $03
	db   $fc                                         ; $7a06: $fc
	inc  bc                                          ; $7a07: $03
	ld   d, d                                        ; $7a08: $52
	inc  bc                                          ; $7a09: $03
	cp   a                                           ; $7a0a: $bf
	ld   a, l                                        ; $7a0b: $7d
	ld   l, l                                        ; $7a0c: $6d
	ld   h, l                                        ; $7a0d: $65
	ld   e, c                                        ; $7a0e: $59
	rst  $38                                         ; $7a0f: $ff
	rst  $38                                         ; $7a10: $ff
	dec  c                                           ; $7a11: $0d
	ld   bc, $6407                                   ; $7a12: $01 $07 $64
	ld   e, l                                        ; $7a15: $5d
	sbc  e                                           ; $7a16: $9b
	inc  bc                                          ; $7a17: $03
	cp   a                                           ; $7a18: $bf
	ld   bc, $7508                                   ; $7a19: $01 $08 $75
	ld   h, a                                        ; $7a1c: $67
	sub  [hl]                                        ; $7a1d: $96
	ld   a, e                                        ; $7a1e: $7b
	sbc  a                                           ; $7a1f: $9f
	dec  c                                           ; $7a20: $0d
	nop                                              ; $7a21: $00
	ld   a, [bc]                                     ; $7a22: $0a
	inc  e                                           ; $7a23: $1c
	ld   [bc], a                                     ; $7a24: $02
	ld   b, $06                                      ; $7a25: $06 $06
	ld   bc, $9e6b                                   ; $7a27: $01 $6b $9e
	ld   l, e                                        ; $7a2a: $6b
	ld   a, h                                        ; $7a2b: $7c
	ld   [bc], a                                     ; $7a2c: $02
	ld   a, b                                        ; $7a2d: $78
	add  c                                           ; $7a2e: $81
	inc  b                                           ; $7a2f: $04
	ld   a, b                                        ; $7a30: $78
	ld   a, l                                        ; $7a31: $7d
	sub  d                                           ; $7a32: $92
	adc  a                                           ; $7a33: $8f
	ld   [hl], h                                     ; $7a34: $74
	rst  $38                                         ; $7a35: $ff
	rst  $38                                         ; $7a36: $ff
	dec  c                                           ; $7a37: $0d
	ld   bc, $ad07                                   ; $7a38: $01 $07 $ad
	ei                                               ; $7a3b: $fb
	adc  $c4                                         ; $7a3c: $ce $c4
	ret                                              ; $7a3e: $c9


	ld   bc, $7608                                   ; $7a3f: $01 $08 $76
	ld   [bc], a                                     ; $7a42: $02
	ld   a, b                                        ; $7a43: $78
	and  c                                           ; $7a44: $a1
	ld   [hl], l                                     ; $7a45: $75
	ld   e, l                                        ; $7a46: $5d
	ld   l, [hl]                                     ; $7a47: $6e
	dec  c                                           ; $7a48: $0d
	ld   h, e                                        ; $7a49: $63
	sub  a                                           ; $7a4a: $97
	ld   a, b                                        ; $7a4b: $78
	ld   d, d                                        ; $7a4c: $52
	sbc  a                                           ; $7a4d: $9f
	ld   d, b                                        ; $7a4e: $50
	ld   d, b                                        ; $7a4f: $50
	sbc  [hl]                                        ; $7a50: $9e
	adc  a                                           ; $7a51: $8f
	adc  h                                           ; $7a52: $8c
	ld   d, d                                        ; $7a53: $52
	ld   e, d                                        ; $7a54: $5a
	rst  $38                                         ; $7a55: $ff
	rst  $38                                         ; $7a56: $ff
	dec  c                                           ; $7a57: $0d
	nop                                              ; $7a58: $00
	ld   a, [bc]                                     ; $7a59: $0a
	dec  c                                           ; $7a5a: $0d
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	rrca                                             ; $7a5d: $0f
	nop                                              ; $7a5e: $00
	ld   bc, $1e09                                   ; $7a5f: $01 $09 $1e
	nop                                              ; $7a62: $00
	rrca                                             ; $7a63: $0f
	nop                                              ; $7a64: $00
	ld   bc, $1201                                   ; $7a65: $01 $01 $12
	ld   [bc], a                                     ; $7a68: $02
	sbc  e                                           ; $7a69: $9b
	add  hl, de                                      ; $7a6a: $19
	inc  b                                           ; $7a6b: $04
	xor  d                                           ; $7a6c: $aa
	rst  $38                                         ; $7a6d: $ff
	rst  $38                                         ; $7a6e: $ff
	dec  c                                           ; $7a6f: $0d
	inc  bc                                          ; $7a70: $03
	inc  sp                                          ; $7a71: $33
	ld   e, d                                        ; $7a72: $5a
	inc  b                                           ; $7a73: $04
	xor  d                                           ; $7a74: $aa
	ld   e, c                                        ; $7a75: $59
	sub  a                                           ; $7a76: $97
	sub  b                                           ; $7a77: $90
	ld   a, l                                        ; $7a78: $7d
	ld   l, b                                        ; $7a79: $68
	sbc  d                                           ; $7a7a: $9a
	sbc  [hl]                                        ; $7a7b: $9e
	dec  c                                           ; $7a7c: $0d
	inc  bc                                          ; $7a7d: $03
	ld   [de], a                                     ; $7a7e: $12
	inc  bc                                          ; $7a7f: $03
	add  d                                           ; $7a80: $82
	ld   [bc], a                                     ; $7a81: $02
	push af                                          ; $7a82: $f5
	ld   e, c                                        ; $7a83: $59
	sub  a                                           ; $7a84: $97
	sub  b                                           ; $7a85: $90
	ld   a, l                                        ; $7a86: $7d
	ld   l, b                                        ; $7a87: $68
	sbc  d                                           ; $7a88: $9a
	ld   [hl], h                                     ; $7a89: $74
	sbc  [hl]                                        ; $7a8a: $9e
	dec  c                                           ; $7a8b: $0d
	nop                                              ; $7a8c: $00
	ld   a, [bc]                                     ; $7a8d: $0a
	ld   bc, $a178                                   ; $7a8e: $01 $78 $a1
	halt                                             ; $7a91: $76
	sub  b                                           ; $7a92: $90
	adc  h                                           ; $7a93: $8c
	ld   d, b                                        ; $7a94: $50
	sbc  [hl]                                        ; $7a95: $9e
	dec  c                                           ; $7a96: $0d
	ld   h, a                                        ; $7a97: $67
	adc  l                                           ; $7a98: $8d
	sbc  d                                           ; $7a99: $9a
	ld   h, e                                        ; $7a9a: $63
	and  c                                           ; $7a9b: $a1
	sub  a                                           ; $7a9c: $97
	ld   h, l                                        ; $7a9d: $65
	ld   e, l                                        ; $7a9e: $5d
	ld   a, b                                        ; $7a9f: $78
	ld   d, d                                        ; $7aa0: $52
	sbc  [hl]                                        ; $7aa1: $9e
	dec  c                                           ; $7aa2: $0d
	inc  bc                                          ; $7aa3: $03
	ld   l, $03                                      ; $7aa4: $2e $03
	pop  hl                                          ; $7aa6: $e1
	ld   a, h                                        ; $7aa7: $7c
	inc  b                                           ; $7aa8: $04
	xor  d                                           ; $7aa9: $aa
	ld   a, c                                        ; $7aaa: $79
	inc  bc                                          ; $7aab: $03
	ld   d, d                                        ; $7aac: $52
	adc  h                                           ; $7aad: $8c
	sbc  d                                           ; $7aae: $9a
	ld   l, l                                        ; $7aaf: $6d
	and  c                                           ; $7ab0: $a1
	ld   [hl], l                                     ; $7ab1: $75
	ld   h, a                                        ; $7ab2: $67
	ld   a, e                                        ; $7ab3: $7b
	sbc  a                                           ; $7ab4: $9f
	dec  c                                           ; $7ab5: $0d
	nop                                              ; $7ab6: $00
	ld   a, [bc]                                     ; $7ab7: $0a
	inc  e                                           ; $7ab8: $1c
	ld   [bc], a                                     ; $7ab9: $02
	ld   [bc], a                                     ; $7aba: $02
	ld   [bc], a                                     ; $7abb: $02
	dec  e                                           ; $7abc: $1d
	ld   b, b                                        ; $7abd: $40
	ld   [de], a                                     ; $7abe: $12
	inc  bc                                          ; $7abf: $03
	ld   [de], a                                     ; $7ac0: $12
	ld   bc, $2903                                   ; $7ac1: $01 $03 $29
	nop                                              ; $7ac4: $00
	ld   bc, $7189                                   ; $7ac5: $01 $89 $71
	halt                                             ; $7ac8: $76
	ld   d, d                                        ; $7ac9: $52
	ld   [hl], h                                     ; $7aca: $74
	ld   e, l                                        ; $7acb: $5d
	ld   l, [hl]                                     ; $7acc: $6e
	ld   h, e                                        ; $7acd: $63
	sub  a                                           ; $7ace: $97
	ld   a, b                                        ; $7acf: $78
	ld   d, d                                        ; $7ad0: $52
	sbc  a                                           ; $7ad1: $9f
	dec  c                                           ; $7ad2: $0d
	sbc  l                                           ; $7ad3: $9d
	ld   l, l                                        ; $7ad4: $6d
	ld   e, l                                        ; $7ad5: $5d
	ld   h, l                                        ; $7ad6: $65
	ld   a, h                                        ; $7ad7: $7c
	inc  bc                                          ; $7ad8: $03
	db   $fc                                         ; $7ad9: $fc
	inc  bc                                          ; $7ada: $03
	ld   d, d                                        ; $7adb: $52
	inc  b                                           ; $7adc: $04
	xor  d                                           ; $7add: $aa
	sbc  [hl]                                        ; $7ade: $9e
	ld   d, b                                        ; $7adf: $50
	ld   a, b                                        ; $7ae0: $78
	ld   l, l                                        ; $7ae1: $6d
	ld   a, c                                        ; $7ae2: $79
	ld   a, l                                        ; $7ae3: $7d
	dec  c                                           ; $7ae4: $0d
	ld   [bc], a                                     ; $7ae5: $02
	ld   c, d                                        ; $7ae6: $4a
	ld   [bc], a                                     ; $7ae7: $02
	ld   c, e                                        ; $7ae8: $4b
	ld   h, d                                        ; $7ae9: $62
	ld   h, h                                        ; $7aea: $64
	ld   d, d                                        ; $7aeb: $52
	adc  h                                           ; $7aec: $8c
	ld   l, c                                        ; $7aed: $69
	and  c                                           ; $7aee: $a1
	ld   e, c                                        ; $7aef: $59
	sub  a                                           ; $7af0: $97
	sbc  a                                           ; $7af1: $9f
	dec  c                                           ; $7af2: $0d
	nop                                              ; $7af3: $00
	ld   a, [bc]                                     ; $7af4: $0a
	dec  c                                           ; $7af5: $0d
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	rrca                                             ; $7af8: $0f
	nop                                              ; $7af9: $00
	ld   bc, $1e09                                   ; $7afa: $01 $09 $1e
	nop                                              ; $7afd: $00
	inc  e                                           ; $7afe: $1c
	ld   [bc], a                                     ; $7aff: $02
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	ld   bc, $6d9d                                   ; $7b02: $01 $9d $6d
	ld   e, l                                        ; $7b05: $5d
	ld   h, l                                        ; $7b06: $65
	ld   a, h                                        ; $7b07: $7c
	inc  bc                                          ; $7b08: $03
	db   $fc                                         ; $7b09: $fc
	inc  bc                                          ; $7b0a: $03
	ld   d, d                                        ; $7b0b: $52
	inc  b                                           ; $7b0c: $04
	xor  d                                           ; $7b0d: $aa
	ld   e, d                                        ; $7b0e: $5a
	dec  c                                           ; $7b0f: $0d
	ld   [hl], a                                     ; $7b10: $77
	ld   d, h                                        ; $7b11: $54
	ld   e, c                                        ; $7b12: $59
	ld   h, l                                        ; $7b13: $65
	adc  h                                           ; $7b14: $8c
	ld   h, l                                        ; $7b15: $65
	ld   l, l                                        ; $7b16: $6d
	ld   e, c                                        ; $7b17: $59
	ld   sp, hl                                      ; $7b18: $f9
	dec  c                                           ; $7b19: $0d
	inc  b                                           ; $7b1a: $04
	ld   e, $79                                      ; $7b1b: $1e $79
	inc  b                                           ; $7b1d: $04
	di                                               ; $7b1e: $f3
	ld   e, d                                        ; $7b1f: $5a
	ld   a, b                                        ; $7b20: $78
	ld   d, d                                        ; $7b21: $52
	ld   a, h                                        ; $7b22: $7c
	ld   a, b                                        ; $7b23: $78
	sub  a                                           ; $7b24: $97
	sbc  [hl]                                        ; $7b25: $9e
	ld   h, c                                        ; $7b26: $61
	sbc  d                                           ; $7b27: $9a
	ld   [hl], l                                     ; $7b28: $75
	rst  $38                                         ; $7b29: $ff
	dec  c                                           ; $7b2a: $0d
	nop                                              ; $7b2b: $00
	ld   a, [bc]                                     ; $7b2c: $0a
	dec  c                                           ; $7b2d: $0d
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	rrca                                             ; $7b30: $0f
	nop                                              ; $7b31: $00
	ld   bc, $1e09                                   ; $7b32: $01 $09 $1e
	nop                                              ; $7b35: $00
	rrca                                             ; $7b36: $0f
	nop                                              ; $7b37: $00
	ld   bc, $6701                                   ; $7b38: $01 $01 $67
	adc  l                                           ; $7b3b: $8d
	sbc  d                                           ; $7b3c: $9a
	ld   h, e                                        ; $7b3d: $63
	and  c                                           ; $7b3e: $a1
	ld   a, h                                        ; $7b3f: $7c
	dec  c                                           ; $7b40: $0d
	ld   [bc], a                                     ; $7b41: $02
	sbc  d                                           ; $7b42: $9a
	ld   e, e                                        ; $7b43: $5b
	ld   a, b                                        ; $7b44: $78
	inc  bc                                          ; $7b45: $03
	ld   l, d                                        ; $7b46: $6a
	add  a                                           ; $7b47: $87
	inc  b                                           ; $7b48: $04
	sub  d                                           ; $7b49: $92
	ld   [hl], c                                     ; $7b4a: $71
	ld   [hl], h                                     ; $7b4b: $74
	inc  b                                           ; $7b4c: $04
	ld   c, c                                        ; $7b4d: $49
	ld   [hl], l                                     ; $7b4e: $75
	ld   h, a                                        ; $7b4f: $67
	ld   e, c                                        ; $7b50: $59
	ld   sp, hl                                      ; $7b51: $f9
	dec  c                                           ; $7b52: $0d
	nop                                              ; $7b53: $00
	ld   a, [bc]                                     ; $7b54: $0a
	rrca                                             ; $7b55: $0f
	ld   [bc], a                                     ; $7b56: $02
	nop                                              ; $7b57: $00
	ld   bc, $0008                                   ; $7b58: $01 $08 $00
	ld   h, e                                        ; $7b5b: $63
	and  c                                           ; $7b5c: $a1
	ld   a, l                                        ; $7b5d: $7d
	dec  c                                           ; $7b5e: $0d
	inc  b                                           ; $7b5f: $04
	ld   c, c                                        ; $7b60: $49
	ld   e, c                                        ; $7b61: $59
	ld   h, l                                        ; $7b62: $65
	sub  a                                           ; $7b63: $97
	ld   sp, hl                                      ; $7b64: $f9
	dec  c                                           ; $7b65: $0d
	nop                                              ; $7b66: $00
	ld   a, [bc]                                     ; $7b67: $0a
	add  hl, de                                      ; $7b68: $19
	dec  b                                           ; $7b69: $05
	inc  bc                                          ; $7b6a: $03
	ld   e, c                                        ; $7b6b: $59
	ld   e, a                                        ; $7b6c: $5f
	ld   l, e                                        ; $7b6d: $6b
	ld   a, [hl]                                     ; $7b6e: $7e
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	ret  nc                                          ; $7b71: $d0

	and  $b8                                         ; $7b72: $e6 $b8
	db   $eb                                         ; $7b74: $eb
	and  l                                           ; $7b75: $a5
	cp   d                                           ; $7b76: $ba
	nop                                              ; $7b77: $00
	ld   bc, $0804                                   ; $7b78: $01 $04 $08
	ld   [bc], a                                     ; $7b7b: $02
	sub  d                                           ; $7b7c: $92
	ld   a, h                                        ; $7b7d: $7c
	inc  b                                           ; $7b7e: $04
	adc  b                                           ; $7b7f: $88
	inc  b                                           ; $7b80: $04
	jr   jr_056_7b83                                 ; $7b81: $18 $00

jr_056_7b83:
	ld   [bc], a                                     ; $7b83: $02
	rlca                                             ; $7b84: $07
	dec  [hl]                                        ; $7b85: $35
	inc  bc                                          ; $7b86: $03
	ld   [bc], a                                     ; $7b87: $02
	inc  bc                                          ; $7b88: $03
	ld   bc, $2000                                   ; $7b89: $01 $00 $20
	nop                                              ; $7b8c: $00
	rlca                                             ; $7b8d: $07
	sbc  [hl]                                        ; $7b8e: $9e
	inc  bc                                          ; $7b8f: $03
	ld   [bc], a                                     ; $7b90: $02
	inc  bc                                          ; $7b91: $03
	ld   bc, $2001                                   ; $7b92: $01 $01 $20
	nop                                              ; $7b95: $00
	rlca                                             ; $7b96: $07
	db   $10                                         ; $7b97: $10
	inc  b                                           ; $7b98: $04
	ld   [bc], a                                     ; $7b99: $02
	inc  bc                                          ; $7b9a: $03
	ld   bc, $2002                                   ; $7b9b: $01 $02 $20
	nop                                              ; $7b9e: $00
	ld   b, $67                                      ; $7b9f: $06 $67
	inc  b                                           ; $7ba1: $04
	rrca                                             ; $7ba2: $0f
	nop                                              ; $7ba3: $00
	ld   bc, $5901                                   ; $7ba4: $01 $01 $59
	ld   e, a                                        ; $7ba7: $5f
	ld   l, e                                        ; $7ba8: $6b
	ld   a, [hl]                                     ; $7ba9: $7e
	ld   [hl], l                                     ; $7baa: $75
	ld   h, a                                        ; $7bab: $67
	sbc  a                                           ; $7bac: $9f
	dec  c                                           ; $7bad: $0d
	nop                                              ; $7bae: $00
	ld   a, [bc]                                     ; $7baf: $0a
	db   $10                                         ; $7bb0: $10
	inc  de                                          ; $7bb1: $13
	nop                                              ; $7bb2: $00
	rrca                                             ; $7bb3: $0f
	ld   [bc], a                                     ; $7bb4: $02
	nop                                              ; $7bb5: $00
	ld   bc, $c403                                   ; $7bb6: $01 $03 $c4
	inc  b                                           ; $7bb9: $04
	sbc  $75                                         ; $7bba: $de $75
	ld   h, a                                        ; $7bbc: $67
	sbc  l                                           ; $7bbd: $9d
	ld   a, e                                        ; $7bbe: $7b
	sbc  a                                           ; $7bbf: $9f
	dec  c                                           ; $7bc0: $0d
	sbc  l                                           ; $7bc1: $9d
	ld   l, l                                        ; $7bc2: $6d
	ld   e, l                                        ; $7bc3: $5d
	ld   h, l                                        ; $7bc4: $65
	ld   a, l                                        ; $7bc5: $7d
	sbc  [hl]                                        ; $7bc6: $9e
	ld   h, c                                        ; $7bc7: $61
	ld   a, h                                        ; $7bc8: $7c
	inc  b                                           ; $7bc9: $04
	dec  bc                                          ; $7bca: $0b
	ld   l, [hl]                                     ; $7bcb: $6e
	halt                                             ; $7bcc: $76
	dec  c                                           ; $7bcd: $0d
	inc  b                                           ; $7bce: $04
	ld   [$9202], sp                                 ; $7bcf: $08 $02 $92
	ld   a, h                                        ; $7bd2: $7c
	ld   e, b                                        ; $7bd3: $58
	inc  b                                           ; $7bd4: $04
	adc  b                                           ; $7bd5: $88
	inc  b                                           ; $7bd6: $04
	jr   jr_056_7c32                                 ; $7bd7: $18 $59

	ld   h, l                                        ; $7bd9: $65
	sub  a                                           ; $7bda: $97
	sbc  a                                           ; $7bdb: $9f
	dec  c                                           ; $7bdc: $0d
	nop                                              ; $7bdd: $00
	ld   a, [bc]                                     ; $7bde: $0a
	ld   bc, $5978                                   ; $7bdf: $01 $78 $59
	ld   a, b                                        ; $7be2: $78
	ld   e, c                                        ; $7be3: $59
	sbc  [hl]                                        ; $7be4: $9e
	ld   d, d                                        ; $7be5: $52
	ld   e, a                                        ; $7be6: $5f
	adc  h                                           ; $7be7: $8c
	ld   h, a                                        ; $7be8: $67
	ld   a, h                                        ; $7be9: $7c
	sub  [hl]                                        ; $7bea: $96
	sbc  a                                           ; $7beb: $9f
	dec  c                                           ; $7bec: $0d
	ld   d, b                                        ; $7bed: $50
	sub  a                                           ; $7bee: $97
	sbc  [hl]                                        ; $7bef: $9e
	inc  bc                                          ; $7bf0: $03
	ld   l, l                                        ; $7bf1: $6d
	dec  b                                           ; $7bf2: $05
	add  hl, de                                      ; $7bf3: $19
	ld   a, h                                        ; $7bf4: $7c
	inc  bc                                          ; $7bf5: $03
	ld   l, a                                        ; $7bf6: $6f
	ld   [bc], a                                     ; $7bf7: $02
	xor  c                                           ; $7bf8: $a9
	ld   h, [hl]                                     ; $7bf9: $66
	sub  c                                           ; $7bfa: $91
	ld   a, b                                        ; $7bfb: $78
	ld   e, l                                        ; $7bfc: $5d
	ld   [hl], h                                     ; $7bfd: $74
	sbc  a                                           ; $7bfe: $9f
	dec  c                                           ; $7bff: $0d
	dec  b                                           ; $7c00: $05
	jr   z, jr_056_7c5f                              ; $7c01: $28 $5c

	ld   a, b                                        ; $7c03: $78
	ld   h, e                                        ; $7c04: $63
	ld   d, d                                        ; $7c05: $52
	sbc  a                                           ; $7c06: $9f
	dec  c                                           ; $7c07: $0d
	nop                                              ; $7c08: $00
	ld   a, [bc]                                     ; $7c09: $0a
	nop                                              ; $7c0a: $00
	rrca                                             ; $7c0b: $0f
	nop                                              ; $7c0c: $00
	ld   bc, $d001                                   ; $7c0d: $01 $01 $d0
	and  $b8                                         ; $7c10: $e6 $b8
	db   $eb                                         ; $7c12: $eb
	and  l                                           ; $7c13: $a5
	cp   d                                           ; $7c14: $ba
	ld   [hl], l                                     ; $7c15: $75
	ld   h, a                                        ; $7c16: $67
	sbc  a                                           ; $7c17: $9f
	dec  c                                           ; $7c18: $0d
	nop                                              ; $7c19: $00
	ld   a, [bc]                                     ; $7c1a: $0a
	db   $10                                         ; $7c1b: $10
	inc  d                                           ; $7c1c: $14
	nop                                              ; $7c1d: $00
	rrca                                             ; $7c1e: $0f
	ld   [bc], a                                     ; $7c1f: $02
	nop                                              ; $7c20: $00
	ld   bc, $508c                                   ; $7c21: $01 $8c $50
	sbc  [hl]                                        ; $7c24: $9e
	ld   [bc], a                                     ; $7c25: $02
	and  l                                           ; $7c26: $a5
	inc  bc                                          ; $7c27: $03
	ld   l, a                                        ; $7c28: $6f
	ld   a, h                                        ; $7c29: $7c
	inc  bc                                          ; $7c2a: $03
	call c, Call_056_7556                            ; $7c2b: $dc $56 $75
	ld   h, a                                        ; $7c2e: $67
	sbc  l                                           ; $7c2f: $9d
	ld   a, e                                        ; $7c30: $7b
	sbc  a                                           ; $7c31: $9f

jr_056_7c32:
	dec  c                                           ; $7c32: $0d
	sbc  l                                           ; $7c33: $9d
	ld   l, l                                        ; $7c34: $6d
	ld   e, l                                        ; $7c35: $5d
	ld   h, l                                        ; $7c36: $65
	ld   a, l                                        ; $7c37: $7d
	sbc  [hl]                                        ; $7c38: $9e
	ld   h, c                                        ; $7c39: $61
	ld   a, h                                        ; $7c3a: $7c
	inc  b                                           ; $7c3b: $04
	dec  bc                                          ; $7c3c: $0b
	ld   l, [hl]                                     ; $7c3d: $6e
	halt                                             ; $7c3e: $76
	dec  c                                           ; $7c3f: $0d
	inc  b                                           ; $7c40: $04
	ld   [$9202], sp                                 ; $7c41: $08 $02 $92
	ld   a, h                                        ; $7c44: $7c
	ld   e, b                                        ; $7c45: $58
	inc  b                                           ; $7c46: $04
	adc  b                                           ; $7c47: $88
	inc  b                                           ; $7c48: $04
	jr   jr_056_7ca4                                 ; $7c49: $18 $59

	ld   h, l                                        ; $7c4b: $65
	sub  a                                           ; $7c4c: $97
	sbc  a                                           ; $7c4d: $9f
	dec  c                                           ; $7c4e: $0d
	nop                                              ; $7c4f: $00
	ld   a, [bc]                                     ; $7c50: $0a
	ld   bc, $5978                                   ; $7c51: $01 $78 $59
	ld   a, b                                        ; $7c54: $78
	ld   e, c                                        ; $7c55: $59
	sbc  [hl]                                        ; $7c56: $9e
	ld   d, d                                        ; $7c57: $52
	ld   e, a                                        ; $7c58: $5f
	adc  h                                           ; $7c59: $8c
	ld   h, a                                        ; $7c5a: $67
	ld   a, h                                        ; $7c5b: $7c
	sub  [hl]                                        ; $7c5c: $96
	sbc  a                                           ; $7c5d: $9f
	dec  c                                           ; $7c5e: $0d

jr_056_7c5f:
	ld   d, b                                        ; $7c5f: $50
	sub  a                                           ; $7c60: $97
	sbc  [hl]                                        ; $7c61: $9e
	inc  bc                                          ; $7c62: $03
	ld   l, l                                        ; $7c63: $6d
	dec  b                                           ; $7c64: $05
	add  hl, de                                      ; $7c65: $19
	ld   a, h                                        ; $7c66: $7c
	inc  bc                                          ; $7c67: $03
	ld   l, a                                        ; $7c68: $6f
	ld   [bc], a                                     ; $7c69: $02
	xor  c                                           ; $7c6a: $a9
	ld   h, [hl]                                     ; $7c6b: $66
	sub  c                                           ; $7c6c: $91
	ld   a, b                                        ; $7c6d: $78
	ld   e, l                                        ; $7c6e: $5d
	ld   [hl], h                                     ; $7c6f: $74
	sbc  a                                           ; $7c70: $9f
	dec  c                                           ; $7c71: $0d
	dec  b                                           ; $7c72: $05
	jr   z, jr_056_7cd1                              ; $7c73: $28 $5c

	ld   a, b                                        ; $7c75: $78
	ld   h, e                                        ; $7c76: $63
	ld   d, d                                        ; $7c77: $52
	sbc  a                                           ; $7c78: $9f
	dec  c                                           ; $7c79: $0d
	nop                                              ; $7c7a: $00
	ld   a, [bc]                                     ; $7c7b: $0a
	nop                                              ; $7c7c: $00
	rrca                                             ; $7c7d: $0f
	nop                                              ; $7c7e: $00
	ld   bc, $0401                                   ; $7c7f: $01 $01 $04
	ld   [$9202], sp                                 ; $7c82: $08 $02 $92
	ld   a, h                                        ; $7c85: $7c
	ld   e, b                                        ; $7c86: $58
	inc  b                                           ; $7c87: $04
	adc  b                                           ; $7c88: $88
	inc  b                                           ; $7c89: $04
	jr   jr_056_7d01                                 ; $7c8a: $18 $75

	ld   h, a                                        ; $7c8c: $67
	sbc  a                                           ; $7c8d: $9f
	dec  c                                           ; $7c8e: $0d
	nop                                              ; $7c8f: $00
	ld   a, [bc]                                     ; $7c90: $0a
	db   $10                                         ; $7c91: $10
	dec  d                                           ; $7c92: $15
	nop                                              ; $7c93: $00
	inc  e                                           ; $7c94: $1c
	ld   [bc], a                                     ; $7c95: $02
	ld   bc, $1d01                                   ; $7c96: $01 $01 $1d
	ld   b, b                                        ; $7c99: $40
	ld   [de], a                                     ; $7c9a: $12
	inc  bc                                          ; $7c9b: $03
	ld   [de], a                                     ; $7c9c: $12
	ld   bc, $2802                                   ; $7c9d: $01 $02 $28
	nop                                              ; $7ca0: $00
	ld   bc, $546b                                   ; $7ca1: $01 $6b $54

jr_056_7ca4:
	ld   a, e                                        ; $7ca4: $7b
	sbc  a                                           ; $7ca5: $9f
	dec  c                                           ; $7ca6: $0d
	ld   d, b                                        ; $7ca7: $50
	sbc  d                                           ; $7ca8: $9a
	sub  b                                           ; $7ca9: $90
	ld   [bc], a                                     ; $7caa: $02
	jr   z, jr_056_7d0a                              ; $7cab: $28 $5d

	ld   a, b                                        ; $7cad: $78
	ld   d, d                                        ; $7cae: $52
	sbc  l                                           ; $7caf: $9d
	ld   a, e                                        ; $7cb0: $7b
	sbc  a                                           ; $7cb1: $9f
	dec  c                                           ; $7cb2: $0d
	nop                                              ; $7cb3: $00
	ld   a, [bc]                                     ; $7cb4: $0a
	ld   bc, $9750                                   ; $7cb5: $01 $50 $97
	sbc  [hl]                                        ; $7cb8: $9e
	inc  bc                                          ; $7cb9: $03
	ld   l, l                                        ; $7cba: $6d
	dec  b                                           ; $7cbb: $05
	add  hl, de                                      ; $7cbc: $19
	ld   a, h                                        ; $7cbd: $7c
	inc  bc                                          ; $7cbe: $03
	ld   l, a                                        ; $7cbf: $6f
	ld   [bc], a                                     ; $7cc0: $02
	xor  c                                           ; $7cc1: $a9
	ld   h, [hl]                                     ; $7cc2: $66
	sub  c                                           ; $7cc3: $91
	ld   a, b                                        ; $7cc4: $78
	ld   e, l                                        ; $7cc5: $5d
	ld   [hl], h                                     ; $7cc6: $74
	sbc  a                                           ; $7cc7: $9f
	dec  c                                           ; $7cc8: $0d
	dec  b                                           ; $7cc9: $05
	jr   z, jr_056_7d28                              ; $7cca: $28 $5c

	ld   a, b                                        ; $7ccc: $78
	ld   h, e                                        ; $7ccd: $63
	ld   d, d                                        ; $7cce: $52
	sbc  a                                           ; $7ccf: $9f
	dec  c                                           ; $7cd0: $0d

jr_056_7cd1:
	nop                                              ; $7cd1: $00
	ld   a, [bc]                                     ; $7cd2: $0a
	nop                                              ; $7cd3: $00
	rrca                                             ; $7cd4: $0f
	ld   [bc], a                                     ; $7cd5: $02
	nop                                              ; $7cd6: $00
	ld   bc, $5477                                   ; $7cd7: $01 $77 $54
	ld   e, c                                        ; $7cda: $59
	ld   h, l                                        ; $7cdb: $65
	adc  h                                           ; $7cdc: $8c
	ld   h, l                                        ; $7cdd: $65
	ld   l, l                                        ; $7cde: $6d
	ld   e, c                                        ; $7cdf: $59
	ld   sp, hl                                      ; $7ce0: $f9
	dec  c                                           ; $7ce1: $0d
	ld   d, b                                        ; $7ce2: $50
	sub  a                                           ; $7ce3: $97
	sbc  [hl]                                        ; $7ce4: $9e
	inc  bc                                          ; $7ce5: $03
	ld   l, l                                        ; $7ce6: $6d
	dec  b                                           ; $7ce7: $05
	add  hl, de                                      ; $7ce8: $19
	ld   a, h                                        ; $7ce9: $7c
	inc  bc                                          ; $7cea: $03
	ld   l, a                                        ; $7ceb: $6f
	ld   [bc], a                                     ; $7cec: $02
	xor  c                                           ; $7ced: $a9
	ld   h, [hl]                                     ; $7cee: $66
	sub  c                                           ; $7cef: $91
	ld   a, b                                        ; $7cf0: $78
	ld   e, l                                        ; $7cf1: $5d
	ld   [hl], h                                     ; $7cf2: $74
	sbc  a                                           ; $7cf3: $9f
	dec  c                                           ; $7cf4: $0d
	dec  b                                           ; $7cf5: $05
	jr   z, jr_056_7d54                              ; $7cf6: $28 $5c

	ld   a, b                                        ; $7cf8: $78
	ld   h, e                                        ; $7cf9: $63
	ld   d, d                                        ; $7cfa: $52
	sbc  a                                           ; $7cfb: $9f
	dec  c                                           ; $7cfc: $0d
	nop                                              ; $7cfd: $00
	ld   a, [bc]                                     ; $7cfe: $0a
	nop                                              ; $7cff: $00
	rrca                                             ; $7d00: $0f

jr_056_7d01:
	nop                                              ; $7d01: $00
	ld   bc, $0401                                   ; $7d02: $01 $01 $04
	ld   [$9202], sp                                 ; $7d05: $08 $02 $92
	ld   a, c                                        ; $7d08: $79
	ld   [hl], d                                     ; $7d09: $72

jr_056_7d0a:
	ld   d, d                                        ; $7d0a: $52
	ld   [hl], h                                     ; $7d0b: $74
	inc  b                                           ; $7d0c: $04
	ld   c, c                                        ; $7d0d: $49
	ld   e, c                                        ; $7d0e: $59
	dec  c                                           ; $7d0f: $0d
	ld   [bc], a                                     ; $7d10: $02
	ret  nc                                          ; $7d11: $d0

	ld   d, [hl]                                     ; $7d12: $56
	ld   [hl], h                                     ; $7d13: $74
	ld   [bc], a                                     ; $7d14: $02
	inc  [hl]                                        ; $7d15: $34
	ld   h, e                                        ; $7d16: $63
	ld   d, d                                        ; $7d17: $52
	sbc  a                                           ; $7d18: $9f
	dec  c                                           ; $7d19: $0d
	nop                                              ; $7d1a: $00
	ld   a, [bc]                                     ; $7d1b: $0a
	rrca                                             ; $7d1c: $0f
	ld   [bc], a                                     ; $7d1d: $02
	nop                                              ; $7d1e: $00
	ld   bc, $546b                                   ; $7d1f: $01 $6b $54
	ld   [hl], l                                     ; $7d22: $75
	ld   h, a                                        ; $7d23: $67
	sbc  l                                           ; $7d24: $9d
	ld   a, e                                        ; $7d25: $7b
	rst  $38                                         ; $7d26: $ff
	rst  $38                                         ; $7d27: $ff

jr_056_7d28:
	dec  c                                           ; $7d28: $0d
	ld   h, c                                        ; $7d29: $61
	ld   a, h                                        ; $7d2a: $7c
	inc  b                                           ; $7d2b: $04
	ld   [$9202], sp                                 ; $7d2c: $08 $02 $92
	ld   a, l                                        ; $7d2f: $7d
	sbc  [hl]                                        ; $7d30: $9e
	inc  bc                                          ; $7d31: $03
	sub  b                                           ; $7d32: $90
	inc  bc                                          ; $7d33: $03
	cp   e                                           ; $7d34: $bb
	inc  bc                                          ; $7d35: $03
	cp   d                                           ; $7d36: $ba
	inc  b                                           ; $7d37: $04
	xor  a                                           ; $7d38: $af
	ld   e, d                                        ; $7d39: $5a
	dec  c                                           ; $7d3a: $0d
	ld   [bc], a                                     ; $7d3b: $02
	pop  hl                                          ; $7d3c: $e1
	ld   [hl], h                                     ; $7d3d: $74
	ld   l, l                                        ; $7d3e: $6d
	sub  [hl]                                        ; $7d3f: $96
	ld   d, h                                        ; $7d40: $54
	ld   a, b                                        ; $7d41: $78
	sub  b                                           ; $7d42: $90
	ld   a, h                                        ; $7d43: $7c
	ld   [hl], l                                     ; $7d44: $75
	ld   h, a                                        ; $7d45: $67
	sbc  l                                           ; $7d46: $9d
	ld   a, e                                        ; $7d47: $7b
	sbc  a                                           ; $7d48: $9f
	dec  c                                           ; $7d49: $0d
	nop                                              ; $7d4a: $00
	ld   a, [bc]                                     ; $7d4b: $0a
	add  hl, de                                      ; $7d4c: $19
	dec  b                                           ; $7d4d: $05
	inc  bc                                          ; $7d4e: $03
	inc  bc                                          ; $7d4f: $03
	adc  e                                           ; $7d50: $8b
	ld   [bc], a                                     ; $7d51: $02
	and  [hl]                                        ; $7d52: $a6
	ld   a, l                                        ; $7d53: $7d

jr_056_7d54:
	inc  b                                           ; $7d54: $04
	ld   c, $02                                      ; $7d55: $0e $02
	ld   c, a                                        ; $7d57: $4f
	ld   h, e                                        ; $7d58: $63
	and  c                                           ; $7d59: $a1
	ld   sp, hl                                      ; $7d5a: $f9
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	inc  bc                                          ; $7d5d: $03
	sub  b                                           ; $7d5e: $90
	inc  bc                                          ; $7d5f: $03
	cp   e                                           ; $7d60: $bb
	inc  bc                                          ; $7d61: $03
	cp   d                                           ; $7d62: $ba
	inc  b                                           ; $7d63: $04
	xor  a                                           ; $7d64: $af
	ld   [hl], c                                     ; $7d65: $71
	ld   [hl], h                                     ; $7d66: $74
	ld   sp, hl                                      ; $7d67: $f9
	nop                                              ; $7d68: $00
	ld   bc, $6267                                   ; $7d69: $01 $67 $62
	ld   d, d                                        ; $7d6c: $52
	ld   [hl], l                                     ; $7d6d: $75
	ld   h, a                                        ; $7d6e: $67
	ld   a, e                                        ; $7d6f: $7b
	nop                                              ; $7d70: $00
	ld   [bc], a                                     ; $7d71: $02
	rlca                                             ; $7d72: $07
	inc  hl                                          ; $7d73: $23
	dec  b                                           ; $7d74: $05
	ld   [bc], a                                     ; $7d75: $02
	inc  bc                                          ; $7d76: $03
	ld   bc, $2000                                   ; $7d77: $01 $00 $20
	nop                                              ; $7d7a: $00
	rlca                                             ; $7d7b: $07
	adc  [hl]                                        ; $7d7c: $8e
	dec  b                                           ; $7d7d: $05
	ld   [bc], a                                     ; $7d7e: $02
	inc  bc                                          ; $7d7f: $03
	ld   bc, $2001                                   ; $7d80: $01 $01 $20
	nop                                              ; $7d83: $00
	rlca                                             ; $7d84: $07
	ld   bc, $0206                                   ; $7d85: $01 $06 $02
	inc  bc                                          ; $7d88: $03
	ld   bc, $2002                                   ; $7d89: $01 $02 $20
	nop                                              ; $7d8c: $00
	ld   b, $41                                      ; $7d8d: $06 $41
	ld   b, $0f                                      ; $7d8f: $06 $0f
	nop                                              ; $7d91: $00
	ld   bc, $6701                                   ; $7d92: $01 $01 $67
	adc  l                                           ; $7d95: $8d
	sbc  d                                           ; $7d96: $9a
	ld   h, e                                        ; $7d97: $63
	and  c                                           ; $7d98: $a1
	ld   a, h                                        ; $7d99: $7c
	inc  bc                                          ; $7d9a: $03
	adc  e                                           ; $7d9b: $8b
	ld   [bc], a                                     ; $7d9c: $02
	and  [hl]                                        ; $7d9d: $a6
	ld   a, l                                        ; $7d9e: $7d
	dec  c                                           ; $7d9f: $0d
	inc  b                                           ; $7da0: $04
	ld   c, $02                                      ; $7da1: $0e $02
	ld   c, a                                        ; $7da3: $4f
	ld   h, e                                        ; $7da4: $63
	and  c                                           ; $7da5: $a1
	ld   a, b                                        ; $7da6: $78
	and  c                                           ; $7da7: $a1
	ld   [hl], l                                     ; $7da8: $75
	ld   h, a                                        ; $7da9: $67
	ld   e, c                                        ; $7daa: $59
	ld   sp, hl                                      ; $7dab: $f9
	dec  c                                           ; $7dac: $0d
	nop                                              ; $7dad: $00
	ld   a, [bc]                                     ; $7dae: $0a
	inc  e                                           ; $7daf: $1c
	ld   [bc], a                                     ; $7db0: $02
	dec  b                                           ; $7db1: $05
	dec  b                                           ; $7db2: $05
	ld   bc, $5a6f                                   ; $7db3: $01 $6f $5a
	ld   d, d                                        ; $7db6: $52
	adc  h                                           ; $7db7: $8c
	ld   h, a                                        ; $7db8: $67
	sbc  l                                           ; $7db9: $9d
	sbc  a                                           ; $7dba: $9f
	dec  c                                           ; $7dbb: $0d
	and  a                                           ; $7dbc: $a7
	jp   nz, $045a                                   ; $7dbd: $c2 $5a $04

	or   b                                           ; $7dc0: $b0
	inc  b                                           ; $7dc1: $04
	di                                               ; $7dc2: $f3
	and  b                                           ; $7dc3: $a0
	inc  bc                                          ; $7dc4: $03
	add  b                                           ; $7dc5: $80
	ld   h, l                                        ; $7dc6: $65
	ld   l, l                                        ; $7dc7: $6d
	ld   [hl], c                                     ; $7dc8: $71
	ld   [hl], h                                     ; $7dc9: $74
	dec  c                                           ; $7dca: $0d
	ld   h, c                                        ; $7dcb: $61
	halt                                             ; $7dcc: $76
	ld   [hl], l                                     ; $7dcd: $75
	ld   h, a                                        ; $7dce: $67
	sbc  l                                           ; $7dcf: $9d
	sbc  a                                           ; $7dd0: $9f
	dec  c                                           ; $7dd1: $0d
	nop                                              ; $7dd2: $00
	ld   a, [bc]                                     ; $7dd3: $0a
	dec  e                                           ; $7dd4: $1d
	ld   b, b                                        ; $7dd5: $40
	ld   [de], a                                     ; $7dd6: $12
	inc  bc                                          ; $7dd7: $03
	ld   [de], a                                     ; $7dd8: $12
	ld   bc, $2901                                   ; $7dd9: $01 $01 $29
	nop                                              ; $7ddc: $00
	ld   bc, $a178                                   ; $7ddd: $01 $78 $a1
	ld   l, [hl]                                     ; $7de0: $6e
	ld   e, c                                        ; $7de1: $59
	sbc  [hl]                                        ; $7de2: $9e
	ld   [$6300], sp                                 ; $7de3: $08 $00 $63
	and  c                                           ; $7de6: $a1
	dec  c                                           ; $7de7: $0d
	db   $dd                                         ; $7de8: $dd
	or   d                                           ; $7de9: $b2
	ld   [hl], h                                     ; $7dea: $74
	ld   d, d                                        ; $7deb: $52
	sub  a                                           ; $7dec: $97
	ld   [hl], c                                     ; $7ded: $71
	ld   h, l                                        ; $7dee: $65
	sub  c                                           ; $7def: $91
	sub  a                                           ; $7df0: $97
	ld   a, b                                        ; $7df1: $78
	ld   e, l                                        ; $7df2: $5d
	ld   [hl], h                                     ; $7df3: $74
	ld   sp, hl                                      ; $7df4: $f9
	dec  c                                           ; $7df5: $0d
	nop                                              ; $7df6: $00
	ld   a, [bc]                                     ; $7df7: $0a
	ld   b, $44                                      ; $7df8: $06 $44
	ld   b, $0f                                      ; $7dfa: $06 $0f
	nop                                              ; $7dfc: $00
	ld   bc, $0301                                   ; $7dfd: $01 $01 $03
	sub  b                                           ; $7e00: $90
	inc  bc                                          ; $7e01: $03
	cp   e                                           ; $7e02: $bb
	inc  bc                                          ; $7e03: $03
	cp   d                                           ; $7e04: $ba
	inc  b                                           ; $7e05: $04
	xor  a                                           ; $7e06: $af
	ld   [hl], c                                     ; $7e07: $71
	ld   [hl], h                                     ; $7e08: $74
	inc  b                                           ; $7e09: $04
	ld   c, c                                        ; $7e0a: $49
	ld   [hl], l                                     ; $7e0b: $75
	ld   h, a                                        ; $7e0c: $67
	ld   e, c                                        ; $7e0d: $59
	ld   sp, hl                                      ; $7e0e: $f9
	dec  c                                           ; $7e0f: $0d
	nop                                              ; $7e10: $00
	ld   a, [bc]                                     ; $7e11: $0a
	inc  e                                           ; $7e12: $1c
	ld   [bc], a                                     ; $7e13: $02
	inc  bc                                          ; $7e14: $03
	inc  bc                                          ; $7e15: $03
	dec  e                                           ; $7e16: $1d
	ld   b, b                                        ; $7e17: $40
	ld   [de], a                                     ; $7e18: $12
	inc  bc                                          ; $7e19: $03
	ld   [de], a                                     ; $7e1a: $12
	ld   bc, $2902                                   ; $7e1b: $01 $02 $29
	nop                                              ; $7e1e: $00
	ld   bc, $9e6b                                   ; $7e1f: $01 $6b $9e
	ld   l, e                                        ; $7e22: $6b
	and  c                                           ; $7e23: $a1
	ld   a, b                                        ; $7e24: $78
	ld   h, c                                        ; $7e25: $61
	halt                                             ; $7e26: $76
	sub  b                                           ; $7e27: $90
	inc  b                                           ; $7e28: $04
	dec  hl                                          ; $7e29: $2b
	sub  a                                           ; $7e2a: $97
	ld   a, b                                        ; $7e2b: $78
	ld   d, d                                        ; $7e2c: $52
	dec  c                                           ; $7e2d: $0d
	ld   a, h                                        ; $7e2e: $7c
	ld   [hl], l                                     ; $7e2f: $75
	ld   h, a                                        ; $7e30: $67
	ld   e, c                                        ; $7e31: $59
	ld   sp, hl                                      ; $7e32: $f9
	dec  c                                           ; $7e33: $0d
	ld   d, b                                        ; $7e34: $50
	ld   d, b                                        ; $7e35: $50
	sbc  [hl]                                        ; $7e36: $9e
	adc  a                                           ; $7e37: $8f
	adc  h                                           ; $7e38: $8c
	ld   d, d                                        ; $7e39: $52
	ld   e, d                                        ; $7e3a: $5a
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	dec  c                                           ; $7e3d: $0d
	nop                                              ; $7e3e: $00
	ld   a, [bc]                                     ; $7e3f: $0a
	inc  e                                           ; $7e40: $1c
	ld   [bc], a                                     ; $7e41: $02
	dec  b                                           ; $7e42: $05
	dec  b                                           ; $7e43: $05
	ld   bc, $9003                                   ; $7e44: $01 $03 $90
	inc  bc                                          ; $7e47: $03
	cp   e                                           ; $7e48: $bb
	inc  bc                                          ; $7e49: $03
	cp   d                                           ; $7e4a: $ba
	inc  b                                           ; $7e4b: $04
	xor  a                                           ; $7e4c: $af
	ld   a, l                                        ; $7e4d: $7d
	sbc  l                                           ; $7e4e: $9d
	ld   l, l                                        ; $7e4f: $6d
	ld   e, l                                        ; $7e50: $5d
	ld   h, l                                        ; $7e51: $65
	ld   a, h                                        ; $7e52: $7c
	dec  c                                           ; $7e53: $0d
	inc  bc                                          ; $7e54: $03
	adc  e                                           ; $7e55: $8b
	ld   [bc], a                                     ; $7e56: $02
	and  [hl]                                        ; $7e57: $a6
	ld   [hl], l                                     ; $7e58: $75
	ld   h, a                                        ; $7e59: $67
	sbc  l                                           ; $7e5a: $9d
	sbc  a                                           ; $7e5b: $9f
	dec  c                                           ; $7e5c: $0d
	sub  b                                           ; $7e5d: $90
	ld   [hl], c                                     ; $7e5e: $71
	halt                                             ; $7e5f: $76
	inc  b                                           ; $7e60: $04
	xor  [hl]                                        ; $7e61: $ae
	ld   [bc], a                                     ; $7e62: $02
	call nc, Call_056_6378                           ; $7e63: $d4 $78 $63
	ld   d, d                                        ; $7e66: $52
	sbc  a                                           ; $7e67: $9f
	dec  c                                           ; $7e68: $0d
	nop                                              ; $7e69: $00
	ld   a, [bc]                                     ; $7e6a: $0a
	ld   b, $44                                      ; $7e6b: $06 $44
	ld   b, $0f                                      ; $7e6d: $06 $0f
	nop                                              ; $7e6f: $00
	ld   bc, $6701                                   ; $7e70: $01 $01 $67
	adc  l                                           ; $7e73: $8d
	sbc  d                                           ; $7e74: $9a
	ld   h, e                                        ; $7e75: $63
	and  c                                           ; $7e76: $a1
	ld   a, h                                        ; $7e77: $7c
	inc  bc                                          ; $7e78: $03
	adc  e                                           ; $7e79: $8b
	ld   [bc], a                                     ; $7e7a: $02
	and  [hl]                                        ; $7e7b: $a6
	ld   [hl], c                                     ; $7e7c: $71
	ld   [hl], h                                     ; $7e7d: $74
	dec  c                                           ; $7e7e: $0d
	ld   h, a                                        ; $7e7f: $67
	ld   h, d                                        ; $7e80: $62
	ld   d, d                                        ; $7e81: $52
	and  c                                           ; $7e82: $a1
	ld   [hl], l                                     ; $7e83: $75
	ld   h, a                                        ; $7e84: $67
	ld   a, e                                        ; $7e85: $7b
	sbc  a                                           ; $7e86: $9f
	dec  c                                           ; $7e87: $0d
	nop                                              ; $7e88: $00
	ld   a, [bc]                                     ; $7e89: $0a
	inc  e                                           ; $7e8a: $1c
	ld   [bc], a                                     ; $7e8b: $02
	jr   nc, jr_056_7ea7                             ; $7e8c: $30 $19

	dec  e                                           ; $7e8e: $1d
	ld   b, b                                        ; $7e8f: $40
	ld   [de], a                                     ; $7e90: $12
	inc  bc                                          ; $7e91: $03
	ld   [de], a                                     ; $7e92: $12
	ld   bc, $2802                                   ; $7e93: $01 $02 $28
	nop                                              ; $7e96: $00
	ld   bc, $508c                                   ; $7e97: $01 $8c $50
	sbc  [hl]                                        ; $7e9a: $9e
	ld   l, e                                        ; $7e9b: $6b
	ld   d, h                                        ; $7e9c: $54
	ld   a, e                                        ; $7e9d: $7b
	sbc  a                                           ; $7e9e: $9f
	dec  c                                           ; $7e9f: $0d
	ld   e, b                                        ; $7ea0: $58
	adc  c                                           ; $7ea1: $89
	adc  c                                           ; $7ea2: $89
	adc  c                                           ; $7ea3: $89
	adc  c                                           ; $7ea4: $89
	adc  c                                           ; $7ea5: $89
	rst  $38                                         ; $7ea6: $ff

jr_056_7ea7:
	rst  $38                                         ; $7ea7: $ff
	dec  c                                           ; $7ea8: $0d
	nop                                              ; $7ea9: $00
	ld   a, [bc]                                     ; $7eaa: $0a
	ld   b, $44                                      ; $7eab: $06 $44
	ld   b, $0f                                      ; $7ead: $06 $0f
	ld   [bc], a                                     ; $7eaf: $02
	nop                                              ; $7eb0: $00
	ld   bc, $9750                                   ; $7eb1: $01 $50 $97
	sbc  [hl]                                        ; $7eb4: $9e
	inc  bc                                          ; $7eb5: $03

jr_056_7eb6:
	ld   l, l                                        ; $7eb6: $6d
	dec  b                                           ; $7eb7: $05
	add  hl, de                                      ; $7eb8: $19
	ld   a, h                                        ; $7eb9: $7c
	inc  bc                                          ; $7eba: $03
	ld   l, a                                        ; $7ebb: $6f
	ld   [bc], a                                     ; $7ebc: $02
	xor  c                                           ; $7ebd: $a9
	ld   h, [hl]                                     ; $7ebe: $66
	sub  c                                           ; $7ebf: $91
	ld   a, b                                        ; $7ec0: $78
	ld   e, l                                        ; $7ec1: $5d
	ld   [hl], h                                     ; $7ec2: $74
	sbc  a                                           ; $7ec3: $9f
	dec  c                                           ; $7ec4: $0d
	dec  b                                           ; $7ec5: $05
	jr   z, jr_056_7f24                              ; $7ec6: $28 $5c

	ld   a, b                                        ; $7ec8: $78
	ld   h, e                                        ; $7ec9: $63
	ld   d, d                                        ; $7eca: $52
	sbc  a                                           ; $7ecb: $9f
	dec  c                                           ; $7ecc: $0d
	nop                                              ; $7ecd: $00
	ld   a, [bc]                                     ; $7ece: $0a
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	inc  bc                                          ; $7ed1: $03
	ld   c, [hl]                                     ; $7ed2: $4e
	ld   [bc], a                                     ; $7ed3: $02
	nop                                              ; $7ed4: $00
	inc  bc                                          ; $7ed5: $03
	ld   c, b                                        ; $7ed6: $48
	add  hl, hl                                      ; $7ed7: $29
	add  hl, hl                                      ; $7ed8: $29
	ld   bc, $2201                                   ; $7ed9: $01 $01 $22
	nop                                              ; $7edc: $00
	rrca                                             ; $7edd: $0f
	nop                                              ; $7ede: $00
	ld   bc, $010d                                   ; $7edf: $01 $0d $01
	nop                                              ; $7ee2: $00
	ld   [bc], a                                     ; $7ee3: $02
	ld   bc, $7d58                                   ; $7ee4: $01 $58 $7d
	sub  [hl]                                        ; $7ee7: $96
	ld   d, h                                        ; $7ee8: $54
	ld   h, d                                        ; $7ee9: $62
	ld   h, h                                        ; $7eea: $64
	ld   d, d                                        ; $7eeb: $52
	adc  h                                           ; $7eec: $8c
	ld   h, a                                        ; $7eed: $67
	sbc  a                                           ; $7eee: $9f
	dec  c                                           ; $7eef: $0d
	nop                                              ; $7ef0: $00
	ld   a, [bc]                                     ; $7ef1: $0a
	inc  e                                           ; $7ef2: $1c
	ld   bc, $0101                                   ; $7ef3: $01 $01 $01
	ld   bc, $0008                                   ; $7ef6: $01 $08 $00
	ld   h, e                                        ; $7ef9: $63
	and  c                                           ; $7efa: $a1
	sbc  a                                           ; $7efb: $9f
	dec  c                                           ; $7efc: $0d
	ld   e, b                                        ; $7efd: $58
	ld   a, l                                        ; $7efe: $7d
	sub  [hl]                                        ; $7eff: $96
	ld   d, h                                        ; $7f00: $54
	ld   h, d                                        ; $7f01: $62
	ld   h, h                                        ; $7f02: $64
	ld   d, d                                        ; $7f03: $52
	adc  h                                           ; $7f04: $8c
	ld   h, a                                        ; $7f05: $67
	sbc  a                                           ; $7f06: $9f
	dec  c                                           ; $7f07: $0d
	nop                                              ; $7f08: $00
	ld   a, [bc]                                     ; $7f09: $0a
	rrca                                             ; $7f0a: $0f
	nop                                              ; $7f0b: $00
	ld   bc, $0101                                   ; $7f0c: $01 $01 $01
	inc  bc                                          ; $7f0f: $03
	inc  b                                           ; $7f10: $04
	ld   c, c                                        ; $7f11: $49
	ld   a, h                                        ; $7f12: $7c
	dec  b                                           ; $7f13: $05
	jr   nz, jr_056_7eb6                             ; $7f14: $20 $a0

	ld   h, l                                        ; $7f16: $65
	sub  [hl]                                        ; $7f17: $96
	ld   d, h                                        ; $7f18: $54
	ld   e, c                                        ; $7f19: $59
	ld   a, b                                        ; $7f1a: $78
	rst  $38                                         ; $7f1b: $ff
	rst  $38                                         ; $7f1c: $ff
	ld   bc, $0d04                                   ; $7f1d: $01 $04 $0d
	nop                                              ; $7f20: $00
	ld   a, [bc]                                     ; $7f21: $0a
	add  hl, de                                      ; $7f22: $19
	dec  b                                           ; $7f23: $05

jr_056_7f24:
	inc  bc                                          ; $7f24: $03
	xor  h                                           ; $7f25: $ac
	push af                                          ; $7f26: $f5
	bit  7, c                                        ; $7f27: $cb $79
	ld   [hl], d                                     ; $7f29: $72
	ld   d, d                                        ; $7f2a: $52
	ld   [hl], h                                     ; $7f2b: $74
	ld   [bc], a                                     ; $7f2c: $02
	jp   nz, $005d                                   ; $7f2d: $c2 $5d $00

	nop                                              ; $7f30: $00
	ld   h, l                                        ; $7f31: $65
	sub  e                                           ; $7f32: $93
	adc  l                                           ; $7f33: $8d
	ld   a, c                                        ; $7f34: $79
	ld   [hl], d                                     ; $7f35: $72
	ld   d, d                                        ; $7f36: $52
	ld   [hl], h                                     ; $7f37: $74
	ld   [bc], a                                     ; $7f38: $02
	jp   nz, $005d                                   ; $7f39: $c2 $5d $00

	ld   bc, $1304                                   ; $7f3c: $01 $04 $13
	ld   [bc], a                                     ; $7f3f: $02
	and  c                                           ; $7f40: $a1
	ld   a, c                                        ; $7f41: $79
	ld   [hl], d                                     ; $7f42: $72
	ld   d, d                                        ; $7f43: $52
	ld   [hl], h                                     ; $7f44: $74
	ld   [bc], a                                     ; $7f45: $02
	jp   nz, $005d                                   ; $7f46: $c2 $5d $00

	ld   [bc], a                                     ; $7f49: $02
	rlca                                             ; $7f4a: $07
	or   c                                           ; $7f4b: $b1
	nop                                              ; $7f4c: $00
	ld   [bc], a                                     ; $7f4d: $02
	inc  bc                                          ; $7f4e: $03
	ld   bc, $2000                                   ; $7f4f: $01 $00 $20
	nop                                              ; $7f52: $00
	rlca                                             ; $7f53: $07
	ld   h, h                                        ; $7f54: $64
	ld   bc, $0302                                   ; $7f55: $01 $02 $03
	ld   bc, $2001                                   ; $7f58: $01 $01 $20
	nop                                              ; $7f5b: $00
	rlca                                             ; $7f5c: $07
	ld   [hl], $03                                   ; $7f5d: $36 $03
	ld   [bc], a                                     ; $7f5f: $02
	inc  bc                                          ; $7f60: $03
	ld   bc, $2002                                   ; $7f61: $01 $02 $20
	nop                                              ; $7f64: $00
	ld   b, $8b                                      ; $7f65: $06 $8b
	nop                                              ; $7f67: $00
	inc  e                                           ; $7f68: $1c
	ld   bc, $0101                                   ; $7f69: $01 $01 $01
	ld   bc, $a502                                   ; $7f6c: $01 $02 $a5
	inc  b                                           ; $7f6f: $04
	xor  d                                           ; $7f70: $aa
	sub  b                                           ; $7f71: $90
	ld   [bc], a                                     ; $7f72: $02
	jr   nz, jr_056_7f79                             ; $7f73: $20 $04

	xor  d                                           ; $7f75: $aa
	sbc  [hl]                                        ; $7f76: $9e
	dec  c                                           ; $7f77: $0d
	ld   e, d                                        ; $7f78: $5a

jr_056_7f79:
	and  c                                           ; $7f79: $a1
	ld   a, [hl]                                     ; $7f7a: $7e
	sbc  b                                           ; $7f7b: $98
	adc  h                                           ; $7f7c: $8c
	ld   h, l                                        ; $7f7d: $65
	sub  l                                           ; $7f7e: $95
	ld   d, h                                        ; $7f7f: $54
	ld   a, e                                        ; $7f80: $7b
	sbc  a                                           ; $7f81: $9f
	dec  c                                           ; $7f82: $0d
	nop                                              ; $7f83: $00
	ld   a, [bc]                                     ; $7f84: $0a
	dec  c                                           ; $7f85: $0d
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	rrca                                             ; $7f88: $0f
	nop                                              ; $7f89: $00
	ld   bc, $1e09                                   ; $7f8a: $01 $09 $1e
	nop                                              ; $7f8d: $00
	rrca                                             ; $7f8e: $0f
	nop                                              ; $7f8f: $00
	ld   bc, $ac01                                   ; $7f90: $01 $01 $ac
	push af                                          ; $7f93: $f5
	bit  4, e                                        ; $7f94: $cb $63
	and  c                                           ; $7f96: $a1
	ld   [hl], h                                     ; $7f97: $74
	rst  $38                                         ; $7f98: $ff
	rst  $38                                         ; $7f99: $ff
	dec  c                                           ; $7f9a: $0d
	ld   h, e                                        ; $7f9b: $63
	ld   e, l                                        ; $7f9c: $5d
	sub  a                                           ; $7f9d: $97
	ld   h, e                                        ; $7f9e: $63
	and  c                                           ; $7f9f: $a1
	ld   e, c                                        ; $7fa0: $59
	sub  a                                           ; $7fa1: $97
	ld   [bc], a                                     ; $7fa2: $02
	sub  l                                           ; $7fa3: $95
	ld   [hl], h                                     ; $7fa4: $74
	dec  c                                           ; $7fa5: $0d
	ld   [hl], a                                     ; $7fa6: $77
	and  c                                           ; $7fa7: $a1
	ld   a, b                                        ; $7fa8: $78
	inc  b                                           ; $7fa9: $04
	ld   a, b                                        ; $7faa: $78
	ld   [hl], l                                     ; $7fab: $75
	ld   h, a                                        ; $7fac: $67
	ld   e, c                                        ; $7fad: $59
	ld   sp, hl                                      ; $7fae: $f9
	dec  c                                           ; $7faf: $0d
	nop                                              ; $7fb0: $00
	ld   a, [bc]                                     ; $7fb1: $0a
	inc  e                                           ; $7fb2: $1c
	ld   bc, $0303                                   ; $7fb3: $01 $03 $03
	ld   bc, $f5ac                                   ; $7fb6: $01 $ac $f5
	bit  4, e                                        ; $7fb9: $cb $63
	and  c                                           ; $7fbb: $a1
	ld   [hl], l                                     ; $7fbc: $75
	ld   h, a                                        ; $7fbd: $67
	ld   e, c                                        ; $7fbe: $59
	ld   sp, hl                                      ; $7fbf: $f9
	dec  c                                           ; $7fc0: $0d
	nop                                              ; $7fc1: $00
	ld   a, [bc]                                     ; $7fc2: $0a
	inc  e                                           ; $7fc3: $1c
	ld   bc, $0000                                   ; $7fc4: $01 $00 $00
	ld   bc, $7502                                   ; $7fc7: $01 $02 $75
	dec  b                                           ; $7fca: $05
	rst  $38                                         ; $7fcb: $ff
	ld   [bc], a                                     ; $7fcc: $02
	adc  h                                           ; $7fcd: $8c
	ld   e, d                                        ; $7fce: $5a
	ld   [bc], a                                     ; $7fcf: $02
	call nc, $745d                                   ; $7fd0: $d4 $5d $74
	sbc  [hl]                                        ; $7fd3: $9e
	inc  bc                                          ; $7fd4: $03
	ld   [hl], l                                     ; $7fd5: $75
	sub  d                                           ; $7fd6: $92
	ld   h, e                                        ; $7fd7: $63
	ld   h, l                                        ; $7fd8: $65
	ld   e, l                                        ; $7fd9: $5d
	ld   [hl], h                                     ; $7fda: $74
	dec  c                                           ; $7fdb: $0d
	inc  bc                                          ; $7fdc: $03
	add  [hl]                                        ; $7fdd: $86
	ld   [bc], a                                     ; $7fde: $02
	xor  l                                           ; $7fdf: $ad
	ld   e, d                                        ; $7fe0: $5a
	inc  b                                           ; $7fe1: $04
	ld   c, $02                                      ; $7fe2: $0e $02
	sbc  d                                           ; $7fe4: $9a
	ld   e, e                                        ; $7fe5: $5b
	ld   a, b                                        ; $7fe6: $78
	inc  bc                                          ; $7fe7: $03
	add  d                                           ; $7fe8: $82
	ld   [hl], l                                     ; $7fe9: $75
	ld   h, a                                        ; $7fea: $67
	sub  [hl]                                        ; $7feb: $96
	sbc  a                                           ; $7fec: $9f
	dec  c                                           ; $7fed: $0d
	nop                                              ; $7fee: $00
	ld   a, [bc]                                     ; $7fef: $0a
	inc  e                                           ; $7ff0: $1c
	ld   bc, $0101                                   ; $7ff1: $01 $01 $01
	ld   bc, $7650                                   ; $7ff4: $01 $50 $76
	sbc  [hl]                                        ; $7ff7: $9e
	ld   h, d                                        ; $7ff8: $62
	inc  b                                           ; $7ff9: $04
	sbc  h                                           ; $7ffa: $9c
	sub  b                                           ; $7ffb: $90
	ld   d, d                                        ; $7ffc: $52
	ld   [hl], c                                     ; $7ffd: $71
	ld   a, a                                        ; $7ffe: $7f
	ld   d, d                                        ; $7fff: $52
