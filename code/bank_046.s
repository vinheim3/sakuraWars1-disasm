; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

	adc  c                                           ; $4000: $89
	adc  c                                           ; $4001: $89
	adc  c                                           ; $4002: $89
	rst  $38                                         ; $4003: $ff
	rst  $38                                         ; $4004: $ff
	dec  c                                           ; $4005: $0d
	nop                                              ; $4006: $00
	ld   a, [bc]                                     ; $4007: $0a
	inc  e                                           ; $4008: $1c
	ld   [bc], a                                     ; $4009: $02
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	ld   bc, $9a6b                                   ; $400c: $01 $6b $9a
	ld   [hl], l                                     ; $400f: $75
	ld   a, l                                        ; $4010: $7d
	sbc  [hl]                                        ; $4011: $9e
	inc  b                                           ; $4012: $04
	adc  a                                           ; $4013: $8f
	inc  b                                           ; $4014: $04
	xor  d                                           ; $4015: $aa
	ld   a, h                                        ; $4016: $7c
	ld   [bc], a                                     ; $4017: $02
	or   d                                           ; $4018: $b2
	inc  bc                                          ; $4019: $03
	ld   c, a                                        ; $401a: $4f
	ld   a, h                                        ; $401b: $7c
	inc  bc                                          ; $401c: $03
	ld   l, l                                        ; $401d: $6d
	dec  b                                           ; $401e: $05
	add  hl, de                                      ; $401f: $19
	and  b                                           ; $4020: $a0
	dec  c                                           ; $4021: $0d
	nop                                              ; $4022: $00
	dec  b                                           ; $4023: $05
	ld   b, b                                        ; $4024: $40
	ld   b, e                                        ; $4025: $43
	inc  bc                                          ; $4026: $03
	ld   b, e                                        ; $4027: $43
	ld   bc, $2801                                   ; $4028: $01 $01 $28
	nop                                              ; $402b: $00
	ld   bc, $7e03                                   ; $402c: $01 $03 $7e
	sbc  l                                           ; $402f: $9d
	sbc  b                                           ; $4030: $98
	adc  h                                           ; $4031: $8c
	ld   h, a                                        ; $4032: $67
	sbc  l                                           ; $4033: $9d
	sbc  a                                           ; $4034: $9f
	dec  c                                           ; $4035: $0d
	ld   h, c                                        ; $4036: $61
	sbc  d                                           ; $4037: $9a
	ld   e, c                                        ; $4038: $59
	sub  a                                           ; $4039: $97
	sub  b                                           ; $403a: $90
	dec  b                                           ; $403b: $05
	ldh  [rTIMA], a                                  ; $403c: $e0 $05
	db   $dd                                         ; $403e: $dd
	ld   a, b                                        ; $403f: $78
	ld   h, e                                        ; $4040: $63
	ld   d, d                                        ; $4041: $52
	sbc  a                                           ; $4042: $9f
	dec  c                                           ; $4043: $0d
	nop                                              ; $4044: $00
	ld   a, [bc]                                     ; $4045: $0a
	dec  c                                           ; $4046: $0d
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	rrca                                             ; $4049: $0f
	nop                                              ; $404a: $00
	ld   bc, $1c00                                   ; $404b: $01 $00 $1c
	ld   [bc], a                                     ; $404e: $02
	nop                                              ; $404f: $00
	nop                                              ; $4050: $00
	ld   bc, $a161                                   ; $4051: $01 $61 $a1
	ld   a, c                                        ; $4054: $79
	ld   l, a                                        ; $4055: $6f
	ld   a, l                                        ; $4056: $7d
	sbc  [hl]                                        ; $4057: $9e
	ld   [$6300], sp                                 ; $4058: $08 $00 $63
	and  c                                           ; $405b: $a1
	sbc  a                                           ; $405c: $9f
	dec  c                                           ; $405d: $0d
	ld   l, e                                        ; $405e: $6b
	sbc  d                                           ; $405f: $9a
	ld   [hl], l                                     ; $4060: $75
	ld   a, l                                        ; $4061: $7d
	sbc  [hl]                                        ; $4062: $9e
	ld   h, e                                        ; $4063: $63
	ld   [hl], c                                     ; $4064: $71
	ld   l, e                                        ; $4065: $6b
	ld   e, l                                        ; $4066: $5d
	inc  bc                                          ; $4067: $03
	ld   l, l                                        ; $4068: $6d
	dec  b                                           ; $4069: $05
	add  hl, de                                      ; $406a: $19
	and  b                                           ; $406b: $a0
	dec  c                                           ; $406c: $0d
	dec  b                                           ; $406d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $406e: $cf
	adc  a                                           ; $406f: $8f
	adc  h                                           ; $4070: $8c
	ld   h, a                                        ; $4071: $67
	sbc  l                                           ; $4072: $9d
	sub  [hl]                                        ; $4073: $96
	sbc  a                                           ; $4074: $9f
	dec  c                                           ; $4075: $0d
	nop                                              ; $4076: $00
	ld   a, [bc]                                     ; $4077: $0a
	dec  h                                           ; $4078: $25
	ld   [bc], a                                     ; $4079: $02
	inc  e                                           ; $407a: $1c
	ld   [bc], a                                     ; $407b: $02
	ld   bc, $1c01                                   ; $407c: $01 $01 $1c
	ld   [bc], a                                     ; $407f: $02
	ld   bc, $0101                                   ; $4080: $01 $01 $01
	inc  bc                                          ; $4083: $03
	and  [hl]                                        ; $4084: $a6
	dec  b                                           ; $4085: $05
	call nc, Call_046_6597                           ; $4086: $d4 $97 $65
	ld   d, d                                        ; $4089: $52
	ld   [hl], l                                     ; $408a: $75
	ld   h, a                                        ; $408b: $67
	sbc  l                                           ; $408c: $9d
	dec  c                                           ; $408d: $0d
	ld   [$6300], sp                                 ; $408e: $08 $00 $63
	and  c                                           ; $4091: $a1
	sbc  a                                           ; $4092: $9f
	dec  c                                           ; $4093: $0d
	nop                                              ; $4094: $00
	ld   a, [bc]                                     ; $4095: $0a
	inc  e                                           ; $4096: $1c
	ld   [bc], a                                     ; $4097: $02
	nop                                              ; $4098: $00
	nop                                              ; $4099: $00
	ld   bc, $9a6b                                   ; $409a: $01 $6b $9a
	ld   [hl], l                                     ; $409d: $75
	ld   a, l                                        ; $409e: $7d
	sbc  [hl]                                        ; $409f: $9e
	inc  b                                           ; $40a0: $04
	adc  a                                           ; $40a1: $8f
	inc  b                                           ; $40a2: $04
	xor  d                                           ; $40a3: $aa
	ld   a, h                                        ; $40a4: $7c
	ld   [bc], a                                     ; $40a5: $02
	or   d                                           ; $40a6: $b2
	inc  bc                                          ; $40a7: $03
	ld   c, a                                        ; $40a8: $4f
	ld   a, h                                        ; $40a9: $7c
	inc  bc                                          ; $40aa: $03
	ld   l, l                                        ; $40ab: $6d
	dec  b                                           ; $40ac: $05
	add  hl, de                                      ; $40ad: $19
	and  b                                           ; $40ae: $a0
	dec  c                                           ; $40af: $0d
	nop                                              ; $40b0: $00
	dec  b                                           ; $40b1: $05
	ld   b, b                                        ; $40b2: $40
	ld   b, e                                        ; $40b3: $43
	inc  bc                                          ; $40b4: $03
	ld   b, e                                        ; $40b5: $43
	ld   bc, $2801                                   ; $40b6: $01 $01 $28
	nop                                              ; $40b9: $00
	ld   bc, $7e03                                   ; $40ba: $01 $03 $7e
	sbc  l                                           ; $40bd: $9d
	sbc  b                                           ; $40be: $98
	adc  h                                           ; $40bf: $8c
	ld   h, a                                        ; $40c0: $67
	sbc  l                                           ; $40c1: $9d
	sbc  a                                           ; $40c2: $9f
	dec  c                                           ; $40c3: $0d
	ld   h, c                                        ; $40c4: $61
	sbc  d                                           ; $40c5: $9a
	ld   e, c                                        ; $40c6: $59
	sub  a                                           ; $40c7: $97
	sub  b                                           ; $40c8: $90
	dec  b                                           ; $40c9: $05
	ldh  [rTIMA], a                                  ; $40ca: $e0 $05
	db   $dd                                         ; $40cc: $dd
	ld   a, b                                        ; $40cd: $78
	ld   h, e                                        ; $40ce: $63
	ld   d, d                                        ; $40cf: $52
	sbc  a                                           ; $40d0: $9f
	dec  c                                           ; $40d1: $0d
	nop                                              ; $40d2: $00
	ld   a, [bc]                                     ; $40d3: $0a
	dec  c                                           ; $40d4: $0d
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	rrca                                             ; $40d7: $0f
	nop                                              ; $40d8: $00
	ld   bc, $0100                                   ; $40d9: $01 $00 $01
	ld   h, c                                        ; $40dc: $61
	and  c                                           ; $40dd: $a1
	ld   a, c                                        ; $40de: $79
	ld   l, a                                        ; $40df: $6f
	ld   a, l                                        ; $40e0: $7d
	sbc  [hl]                                        ; $40e1: $9e
	ld   [$6300], sp                                 ; $40e2: $08 $00 $63
	and  c                                           ; $40e5: $a1
	sbc  a                                           ; $40e6: $9f
	dec  c                                           ; $40e7: $0d
	ld   l, e                                        ; $40e8: $6b
	sbc  d                                           ; $40e9: $9a
	ld   [hl], l                                     ; $40ea: $75
	ld   a, l                                        ; $40eb: $7d
	sbc  [hl]                                        ; $40ec: $9e
	ld   h, e                                        ; $40ed: $63
	ld   [hl], c                                     ; $40ee: $71
	ld   l, e                                        ; $40ef: $6b
	ld   e, l                                        ; $40f0: $5d
	inc  bc                                          ; $40f1: $03
	ld   l, l                                        ; $40f2: $6d
	dec  b                                           ; $40f3: $05
	add  hl, de                                      ; $40f4: $19
	and  b                                           ; $40f5: $a0
	dec  c                                           ; $40f6: $0d
	dec  b                                           ; $40f7: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40f8: $cf
	adc  a                                           ; $40f9: $8f
	adc  h                                           ; $40fa: $8c
	ld   h, a                                        ; $40fb: $67
	sbc  l                                           ; $40fc: $9d
	sub  [hl]                                        ; $40fd: $96
	sbc  a                                           ; $40fe: $9f
	dec  c                                           ; $40ff: $0d
	nop                                              ; $4100: $00
	ld   a, [bc]                                     ; $4101: $0a
	dec  h                                           ; $4102: $25
	ld   [bc], a                                     ; $4103: $02
	rlca                                             ; $4104: $07
	cp   a                                           ; $4105: $bf
	inc  b                                           ; $4106: $04
	inc  bc                                          ; $4107: $03
	jr   nz, jr_046_410b                             ; $4108: $20 $01

	nop                                              ; $410a: $00

jr_046_410b:
	jr   nz, jr_046_410d                             ; $410b: $20 $00

jr_046_410d:
	inc  e                                           ; $410d: $1c
	ld   [bc], a                                     ; $410e: $02
	ld   bc, $0101                                   ; $410f: $01 $01 $01
	inc  bc                                          ; $4112: $03
	and  [hl]                                        ; $4113: $a6
	dec  b                                           ; $4114: $05
	call nc, Call_046_6597                           ; $4115: $d4 $97 $65
	ld   d, d                                        ; $4118: $52
	ld   [hl], l                                     ; $4119: $75
	ld   h, a                                        ; $411a: $67
	sbc  l                                           ; $411b: $9d
	dec  c                                           ; $411c: $0d
	ld   [$6300], sp                                 ; $411d: $08 $00 $63
	and  c                                           ; $4120: $a1
	sbc  a                                           ; $4121: $9f
	dec  c                                           ; $4122: $0d
	nop                                              ; $4123: $00
	ld   a, [bc]                                     ; $4124: $0a
	inc  e                                           ; $4125: $1c
	ld   [bc], a                                     ; $4126: $02
	nop                                              ; $4127: $00
	nop                                              ; $4128: $00
	ld   bc, $9a6b                                   ; $4129: $01 $6b $9a
	ld   [hl], l                                     ; $412c: $75
	ld   a, l                                        ; $412d: $7d
	sbc  [hl]                                        ; $412e: $9e
	inc  b                                           ; $412f: $04
	adc  a                                           ; $4130: $8f
	inc  b                                           ; $4131: $04
	xor  d                                           ; $4132: $aa
	ld   a, h                                        ; $4133: $7c
	ld   [bc], a                                     ; $4134: $02
	or   d                                           ; $4135: $b2
	inc  bc                                          ; $4136: $03
	ld   c, a                                        ; $4137: $4f
	ld   a, h                                        ; $4138: $7c
	inc  bc                                          ; $4139: $03
	ld   l, l                                        ; $413a: $6d
	dec  b                                           ; $413b: $05
	add  hl, de                                      ; $413c: $19
	and  b                                           ; $413d: $a0
	dec  c                                           ; $413e: $0d
	nop                                              ; $413f: $00
	dec  b                                           ; $4140: $05
	ld   b, b                                        ; $4141: $40
	ld   b, e                                        ; $4142: $43
	inc  bc                                          ; $4143: $03
	ld   b, e                                        ; $4144: $43
	ld   bc, $2801                                   ; $4145: $01 $01 $28
	nop                                              ; $4148: $00
	ld   bc, $7e03                                   ; $4149: $01 $03 $7e
	sbc  l                                           ; $414c: $9d
	sbc  b                                           ; $414d: $98
	adc  h                                           ; $414e: $8c
	ld   h, a                                        ; $414f: $67
	sbc  l                                           ; $4150: $9d
	sbc  a                                           ; $4151: $9f
	dec  c                                           ; $4152: $0d
	nop                                              ; $4153: $00
	ld   a, [bc]                                     ; $4154: $0a
	dec  c                                           ; $4155: $0d
	nop                                              ; $4156: $00
	nop                                              ; $4157: $00
	rrca                                             ; $4158: $0f
	nop                                              ; $4159: $00
	ld   bc, $0e00                                   ; $415a: $01 $00 $0e
	ld   bc, $0702                                   ; $415d: $01 $02 $07
	inc  a                                           ; $4160: $3c
	ld   a, [bc]                                     ; $4161: $0a
	inc  bc                                          ; $4162: $03
	jr   nz, jr_046_4166                             ; $4163: $20 $01

	ld   b, b                                        ; $4165: $40

jr_046_4166:
	dec  h                                           ; $4166: $25
	nop                                              ; $4167: $00
	dec  b                                           ; $4168: $05
	ld   b, b                                        ; $4169: $40
	ld   c, a                                        ; $416a: $4f
	ld   bc, $0000                                   ; $416b: $01 $00 $00
	ld   bc, $ffff                                   ; $416e: $01 $ff $ff
	ld   d, h                                        ; $4171: $54
	db   $fc                                         ; $4172: $fc
	and  c                                           ; $4173: $a1
	rst  $38                                         ; $4174: $ff
	rst  $38                                         ; $4175: $ff
	dec  c                                           ; $4176: $0d
	ld   a, b                                        ; $4177: $78
	and  c                                           ; $4178: $a1
	ld   l, [hl]                                     ; $4179: $6e
	ld   e, c                                        ; $417a: $59
	inc  b                                           ; $417b: $04
	dec  c                                           ; $417c: $0d
	inc  bc                                          ; $417d: $03
	cp   $5a                                         ; $417e: $fe $5a
	ld   [bc], a                                     ; $4180: $02
	jr   z, jr_046_41d5                              ; $4181: $28 $52

	ld   a, b                                        ; $4183: $78
	rst  $38                                         ; $4184: $ff
	rst  $38                                         ; $4185: $ff
	dec  c                                           ; $4186: $0d
	ld   [bc], a                                     ; $4187: $02
	and  l                                           ; $4188: $a5
	inc  b                                           ; $4189: $04
	xor  d                                           ; $418a: $aa
	ld   a, h                                        ; $418b: $7c
	inc  bc                                          ; $418c: $03
	ld   l, l                                        ; $418d: $6d
	dec  b                                           ; $418e: $05
	add  hl, de                                      ; $418f: $19
	ld   a, l                                        ; $4190: $7d
	inc  bc                                          ; $4191: $03
	and  a                                           ; $4192: $a7
	adc  [hl]                                        ; $4193: $8e
	ld   e, c                                        ; $4194: $59
	ld   a, b                                        ; $4195: $78
	sbc  a                                           ; $4196: $9f
	dec  c                                           ; $4197: $0d
	nop                                              ; $4198: $00
	ld   a, [bc]                                     ; $4199: $0a
	ld   b, $67                                      ; $419a: $06 $67
	ld   a, [bc]                                     ; $419c: $0a
	ld   bc, $a502                                   ; $419d: $01 $02 $a5
	inc  b                                           ; $41a0: $04
	xor  d                                           ; $41a1: $aa
	ld   a, l                                        ; $41a2: $7d
	ld   a, b                                        ; $41a3: $78
	and  c                                           ; $41a4: $a1
	ld   l, [hl]                                     ; $41a5: $6e
	ld   e, c                                        ; $41a6: $59
	inc  bc                                          ; $41a7: $03
	ld   l, l                                        ; $41a8: $6d
	dec  b                                           ; $41a9: $05
	add  hl, de                                      ; $41aa: $19
	ld   a, c                                        ; $41ab: $79
	dec  c                                           ; $41ac: $0d
	ld   [bc], a                                     ; $41ad: $02
	ld   a, a                                        ; $41ae: $7f
	ld   e, e                                        ; $41af: $5b
	ld   l, l                                        ; $41b0: $6d
	ld   e, l                                        ; $41b1: $5d
	ld   a, b                                        ; $41b2: $78
	ld   d, d                                        ; $41b3: $52
	ld   a, b                                        ; $41b4: $78
	ld   d, b                                        ; $41b5: $50
	rst  $38                                         ; $41b6: $ff
	rst  $38                                         ; $41b7: $ff
	dec  c                                           ; $41b8: $0d
	inc  bc                                          ; $41b9: $03
	ld   l, l                                        ; $41ba: $6d
	dec  b                                           ; $41bb: $05
	add  hl, de                                      ; $41bc: $19
	rst  $38                                         ; $41bd: $ff
	rst  $38                                         ; $41be: $ff
	inc  bc                                          ; $41bf: $03
	and  a                                           ; $41c0: $a7
	adc  [hl]                                        ; $41c1: $8e
	ld   e, c                                        ; $41c2: $59
	ld   a, b                                        ; $41c3: $78
	sbc  a                                           ; $41c4: $9f
	dec  c                                           ; $41c5: $0d
	nop                                              ; $41c6: $00
	ld   a, [bc]                                     ; $41c7: $0a
	inc  hl                                          ; $41c8: $23
	ld   b, h                                        ; $41c9: $44
	inc  d                                           ; $41ca: $14
	ld   b, $01                                      ; $41cb: $06 $01
	add  hl, bc                                      ; $41cd: $09
	ld   e, $01                                      ; $41ce: $1e $01
	ld   h, a                                        ; $41d0: $67
	adc  l                                           ; $41d1: $8d
	sbc  d                                           ; $41d2: $9a
	ld   h, e                                        ; $41d3: $63
	and  c                                           ; $41d4: $a1

jr_046_41d5:
	sbc  [hl]                                        ; $41d5: $9e
	dec  c                                           ; $41d6: $0d
	ld   d, d                                        ; $41d7: $52
	sub  a                                           ; $41d8: $97
	ld   [hl], c                                     ; $41d9: $71
	ld   h, l                                        ; $41da: $65
	sub  c                                           ; $41db: $91
	ld   d, d                                        ; $41dc: $52
	adc  h                                           ; $41dd: $8c
	ld   h, a                                        ; $41de: $67
	ld   e, c                                        ; $41df: $59
	ld   sp, hl                                      ; $41e0: $f9
	dec  c                                           ; $41e1: $0d
	nop                                              ; $41e2: $00
	ld   a, [bc]                                     ; $41e3: $0a
	rrca                                             ; $41e4: $0f
	ld   [bc], a                                     ; $41e5: $02
	nop                                              ; $41e6: $00
	ld   bc, $527d                                   ; $41e7: $01 $7d $52
	sbc  a                                           ; $41ea: $9f
	dec  c                                           ; $41eb: $0d
	ld   d, d                                        ; $41ec: $52
	adc  h                                           ; $41ed: $8c
	ld   d, b                                        ; $41ee: $50
	ld   e, a                                        ; $41ef: $5f
	adc  h                                           ; $41f0: $8c
	ld   h, a                                        ; $41f1: $67
	sbc  l                                           ; $41f2: $9d
	sbc  a                                           ; $41f3: $9f
	dec  c                                           ; $41f4: $0d
	nop                                              ; $41f5: $00
	ld   a, [bc]                                     ; $41f6: $0a
	inc  d                                           ; $41f7: $14
	ld   a, [bc]                                     ; $41f8: $0a
	ld   bc, $450e                                   ; $41f9: $01 $0e $45
	rlca                                             ; $41fc: $07
	ld   b, e                                        ; $41fd: $43
	dec  bc                                          ; $41fe: $0b
	inc  bc                                          ; $41ff: $03
	jr   nz, jr_046_4203                             ; $4200: $20 $01

	ld   b, b                                        ; $4202: $40

jr_046_4203:
	dec  h                                           ; $4203: $25
	nop                                              ; $4204: $00
	inc  e                                           ; $4205: $1c
	ld   [bc], a                                     ; $4206: $02
	dec  b                                           ; $4207: $05
	dec  b                                           ; $4208: $05
	ld   bc, $ffff                                   ; $4209: $01 $ff $ff
	rst  $38                                         ; $420c: $ff
	rst  $38                                         ; $420d: $ff
	ld   d, b                                        ; $420e: $50
	sub  a                                           ; $420f: $97
	sbc  [hl]                                        ; $4210: $9e
	dec  c                                           ; $4211: $0d
	ld   [hl], a                                     ; $4212: $77
	ld   d, h                                        ; $4213: $54
	ld   a, b                                        ; $4214: $78
	ld   h, e                                        ; $4215: $63
	ld   d, d                                        ; $4216: $52
	adc  h                                           ; $4217: $8c
	ld   h, l                                        ; $4218: $65
	ld   l, l                                        ; $4219: $6d
	ld   a, h                                        ; $421a: $7c
	ld   sp, hl                                      ; $421b: $f9
	dec  c                                           ; $421c: $0d
	ld   [bc], a                                     ; $421d: $02
	ld   [hl], d                                     ; $421e: $72
	inc  bc                                          ; $421f: $03
	dec  bc                                          ; $4220: $0b
	ld   e, d                                        ; $4221: $5a
	sbc  l                                           ; $4222: $9d
	sbc  c                                           ; $4223: $99
	ld   d, d                                        ; $4224: $52
	ld   [hl], l                                     ; $4225: $75
	ld   h, a                                        ; $4226: $67
	sbc  l                                           ; $4227: $9d
	sub  [hl]                                        ; $4228: $96
	sbc  a                                           ; $4229: $9f
	dec  c                                           ; $422a: $0d
	nop                                              ; $422b: $00
	ld   a, [bc]                                     ; $422c: $0a
	rrca                                             ; $422d: $0f
	nop                                              ; $422e: $00
	ld   bc, $7d01                                   ; $422f: $01 $01 $7d
	ld   d, d                                        ; $4232: $52
	sbc  [hl]                                        ; $4233: $9e
	ld   l, a                                        ; $4234: $6f
	sub  l                                           ; $4235: $95
	ld   [hl], c                                     ; $4236: $71
	halt                                             ; $4237: $76
	inc  b                                           ; $4238: $04
	dec  c                                           ; $4239: $0d
	inc  bc                                          ; $423a: $03
	cp   $5a                                         ; $423b: $fe $5a
	dec  c                                           ; $423d: $0d
	sbc  l                                           ; $423e: $9d
	sbc  c                                           ; $423f: $99
	ld   e, l                                        ; $4240: $5d
	ld   [hl], h                                     ; $4241: $74
	rst  $38                                         ; $4242: $ff
	rst  $38                                         ; $4243: $ff
	ld   [bc], a                                     ; $4244: $02
	and  l                                           ; $4245: $a5
	inc  b                                           ; $4246: $04
	xor  d                                           ; $4247: $aa
	ld   a, h                                        ; $4248: $7c
	inc  bc                                          ; $4249: $03
	ld   l, l                                        ; $424a: $6d
	dec  b                                           ; $424b: $05
	add  hl, de                                      ; $424c: $19
	ld   a, l                                        ; $424d: $7d
	dec  c                                           ; $424e: $0d
	inc  bc                                          ; $424f: $03
	and  a                                           ; $4250: $a7
	adc  h                                           ; $4251: $8c
	ld   l, c                                        ; $4252: $69
	ld   [hl], h                                     ; $4253: $74
	adc  c                                           ; $4254: $89
	ld   h, l                                        ; $4255: $65
	ld   d, d                                        ; $4256: $52
	ld   a, h                                        ; $4257: $7c
	ld   [hl], l                                     ; $4258: $75
	ld   h, a                                        ; $4259: $67
	ld   e, d                                        ; $425a: $5a
	rst  $38                                         ; $425b: $ff
	rst  $38                                         ; $425c: $ff
	dec  c                                           ; $425d: $0d
	nop                                              ; $425e: $00
	ld   a, [bc]                                     ; $425f: $0a
	inc  e                                           ; $4260: $1c
	ld   [bc], a                                     ; $4261: $02
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	ld   bc, $599d                                   ; $4264: $01 $9d $59
	sbc  b                                           ; $4267: $98
	adc  h                                           ; $4268: $8c
	ld   h, l                                        ; $4269: $65
	ld   l, l                                        ; $426a: $6d
	sbc  a                                           ; $426b: $9f
	dec  c                                           ; $426c: $0d
	ld   [hl], l                                     ; $426d: $75
	ld   a, l                                        ; $426e: $7d
	sbc  [hl]                                        ; $426f: $9e
	ld   [bc], a                                     ; $4270: $02
	and  l                                           ; $4271: $a5
	inc  b                                           ; $4272: $04
	xor  d                                           ; $4273: $aa
	ld   a, h                                        ; $4274: $7c
	inc  bc                                          ; $4275: $03
	ld   l, l                                        ; $4276: $6d
	dec  b                                           ; $4277: $05
	add  hl, de                                      ; $4278: $19
	ld   a, l                                        ; $4279: $7d
	dec  c                                           ; $427a: $0d
	ld   e, b                                        ; $427b: $58
	inc  bc                                          ; $427c: $03
	and  a                                           ; $427d: $a7
	adc  l                                           ; $427e: $8d
	ld   a, c                                        ; $427f: $79
	ld   h, l                                        ; $4280: $65
	adc  h                                           ; $4281: $8c
	ld   h, l                                        ; $4282: $65
	sub  l                                           ; $4283: $95
	ld   d, h                                        ; $4284: $54
	sbc  a                                           ; $4285: $9f
	dec  c                                           ; $4286: $0d
	nop                                              ; $4287: $00
	ld   a, [bc]                                     ; $4288: $0a
	ld   bc, $9a6b                                   ; $4289: $01 $6b $9a
	ld   [hl], l                                     ; $428c: $75
	ld   a, l                                        ; $428d: $7d
	sbc  [hl]                                        ; $428e: $9e
	ld   e, b                                        ; $428f: $58
	inc  b                                           ; $4290: $04
	ld   c, $02                                      ; $4291: $0e $02
	jp   $9f79                                       ; $4293: $c3 $79 $9f


	dec  c                                           ; $4296: $0d
	nop                                              ; $4297: $00
	ld   a, [bc]                                     ; $4298: $0a
	dec  c                                           ; $4299: $0d
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	rrca                                             ; $429c: $0f
	nop                                              ; $429d: $00
	ld   bc, $1e09                                   ; $429e: $01 $09 $1e
	ld   b, $d6                                      ; $42a1: $06 $d6
	ld   [bc], a                                     ; $42a3: $02
	inc  e                                           ; $42a4: $1c
	ld   [bc], a                                     ; $42a5: $02
	nop                                              ; $42a6: $00
	nop                                              ; $42a7: $00
	ld   bc, $7978                                   ; $42a8: $01 $78 $79
	ld   e, c                                        ; $42ab: $59
	ld   h, d                                        ; $42ac: $62
	inc  b                                           ; $42ad: $04
	di                                               ; $42ae: $f3
	ld   [hl], l                                     ; $42af: $75
	ld   h, a                                        ; $42b0: $67
	ld   a, h                                        ; $42b1: $7c
	ld   sp, hl                                      ; $42b2: $f9
	dec  c                                           ; $42b3: $0d
	sub  b                                           ; $42b4: $90
	ld   d, h                                        ; $42b5: $54
	ld   h, a                                        ; $42b6: $67
	ld   e, [hl]                                     ; $42b7: $5e
	inc  bc                                          ; $42b8: $03
	ld   l, l                                        ; $42b9: $6d
	dec  b                                           ; $42ba: $05
	add  hl, de                                      ; $42bb: $19
	ld   a, h                                        ; $42bc: $7c
	inc  bc                                          ; $42bd: $03
	ld   l, a                                        ; $42be: $6f
	ld   [bc], a                                     ; $42bf: $02
	xor  c                                           ; $42c0: $a9
	ld   [hl], l                                     ; $42c1: $75
	ld   h, a                                        ; $42c2: $67
	sbc  l                                           ; $42c3: $9d
	sub  [hl]                                        ; $42c4: $96
	sbc  a                                           ; $42c5: $9f
	dec  c                                           ; $42c6: $0d
	nop                                              ; $42c7: $00
	ld   a, [bc]                                     ; $42c8: $0a
	rrca                                             ; $42c9: $0f
	nop                                              ; $42ca: $00
	ld   bc, $7d01                                   ; $42cb: $01 $01 $7d
	ld   d, d                                        ; $42ce: $52
	rst  $38                                         ; $42cf: $ff
	rst  $38                                         ; $42d0: $ff
	ld   d, b                                        ; $42d1: $50
	ld   a, h                                        ; $42d2: $7c
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	dec  c                                           ; $42d5: $0d
	ld   [bc], a                                     ; $42d6: $02
	and  l                                           ; $42d7: $a5
	inc  b                                           ; $42d8: $04
	xor  d                                           ; $42d9: $aa
	ld   a, h                                        ; $42da: $7c
	inc  bc                                          ; $42db: $03
	ld   l, l                                        ; $42dc: $6d
	dec  b                                           ; $42dd: $05
	add  hl, de                                      ; $42de: $19
	and  b                                           ; $42df: $a0
	inc  bc                                          ; $42e0: $03
	and  a                                           ; $42e1: $a7
	adc  h                                           ; $42e2: $8c
	ld   l, c                                        ; $42e3: $69
	ld   [hl], h                                     ; $42e4: $74
	dec  c                                           ; $42e5: $0d
	inc  b                                           ; $42e6: $04
	db   $e3                                         ; $42e7: $e3
	ld   h, l                                        ; $42e8: $65
	ld   d, d                                        ; $42e9: $52
	ld   a, h                                        ; $42ea: $7c
	ld   [hl], l                                     ; $42eb: $75
	ld   h, a                                        ; $42ec: $67
	ld   e, d                                        ; $42ed: $5a
	rst  $38                                         ; $42ee: $ff
	rst  $38                                         ; $42ef: $ff
	dec  c                                           ; $42f0: $0d
	nop                                              ; $42f1: $00
	ld   a, [bc]                                     ; $42f2: $0a
	inc  e                                           ; $42f3: $1c
	ld   [bc], a                                     ; $42f4: $02
	dec  b                                           ; $42f5: $05
	dec  b                                           ; $42f6: $05
	ld   bc, $9a6b                                   ; $42f7: $01 $6b $9a
	ld   a, l                                        ; $42fa: $7d
	dec  b                                           ; $42fb: $05
	adc  a                                           ; $42fc: $8f
	ld   d, d                                        ; $42fd: $52
	adc  h                                           ; $42fe: $8c
	ld   l, c                                        ; $42ff: $69
	and  c                                           ; $4300: $a1
	ld   e, d                                        ; $4301: $5a
	rst  $38                                         ; $4302: $ff
	rst  $38                                         ; $4303: $ff
	dec  c                                           ; $4304: $0d
	ld   a, b                                        ; $4305: $78
	ld   a, c                                        ; $4306: $79
	ld   e, c                                        ; $4307: $59
	inc  b                                           ; $4308: $04
	di                                               ; $4309: $f3
	ld   [bc], a                                     ; $430a: $02
	jp   $9075                                       ; $430b: $c3 $75 $90


	ld   d, b                                        ; $430e: $50
	sbc  b                                           ; $430f: $98
	adc  h                                           ; $4310: $8c
	ld   h, a                                        ; $4311: $67
	ld   a, h                                        ; $4312: $7c
	ld   sp, hl                                      ; $4313: $f9
	dec  c                                           ; $4314: $0d
	nop                                              ; $4315: $00
	ld   a, [bc]                                     ; $4316: $0a
	rrca                                             ; $4317: $0f
	nop                                              ; $4318: $00
	ld   bc, $5201                                   ; $4319: $01 $01 $52
	ld   d, [hl]                                     ; $431c: $56
	sbc  [hl]                                        ; $431d: $9e
	halt                                             ; $431e: $76
	ld   e, l                                        ; $431f: $5d
	ld   a, c                                        ; $4320: $79
	inc  b                                           ; $4321: $04
	di                                               ; $4322: $f3
	ld   [bc], a                                     ; $4323: $02
	jp   $5276                                       ; $4324: $c3 $76 $52


	ld   d, h                                        ; $4327: $54
	dec  c                                           ; $4328: $0d
	sbc  l                                           ; $4329: $9d
	ld   e, a                                        ; $432a: $5f
	ld   [hl], l                                     ; $432b: $75
	sub  b                                           ; $432c: $90
	ld   a, b                                        ; $432d: $78
	ld   d, d                                        ; $432e: $52
	and  c                                           ; $432f: $a1
	ld   [hl], l                                     ; $4330: $75
	ld   h, a                                        ; $4331: $67
	ld   e, d                                        ; $4332: $5a
	rst  $38                                         ; $4333: $ff
	rst  $38                                         ; $4334: $ff
	dec  c                                           ; $4335: $0d
	nop                                              ; $4336: $00
	ld   a, [bc]                                     ; $4337: $0a
	rrca                                             ; $4338: $0f
	ld   [bc], a                                     ; $4339: $02
	dec  b                                           ; $433a: $05
	dec  e                                           ; $433b: $1d
	ld   b, b                                        ; $433c: $40
	ld   [de], a                                     ; $433d: $12
	inc  bc                                          ; $433e: $03
	ld   [de], a                                     ; $433f: $12
	ld   bc, $2902                                   ; $4340: $01 $02 $29
	nop                                              ; $4343: $00
	ld   bc, $ffff                                   ; $4344: $01 $ff $ff
	rst  $38                                         ; $4347: $ff
	rst  $38                                         ; $4348: $ff
	adc  h                                           ; $4349: $8c
	ld   d, b                                        ; $434a: $50
	ld   d, d                                        ; $434b: $52
	ld   d, d                                        ; $434c: $52
	ld   [hl], l                                     ; $434d: $75
	ld   h, l                                        ; $434e: $65
	sub  l                                           ; $434f: $95
	ld   d, h                                        ; $4350: $54
	sbc  a                                           ; $4351: $9f
	dec  c                                           ; $4352: $0d
	ld   [hl], l                                     ; $4353: $75
	ld   a, l                                        ; $4354: $7d
	sbc  [hl]                                        ; $4355: $9e
	ld   [bc], a                                     ; $4356: $02
	and  l                                           ; $4357: $a5
	inc  b                                           ; $4358: $04
	xor  d                                           ; $4359: $aa
	ld   a, h                                        ; $435a: $7c
	inc  bc                                          ; $435b: $03
	ld   l, l                                        ; $435c: $6d
	dec  b                                           ; $435d: $05
	add  hl, de                                      ; $435e: $19
	ld   a, l                                        ; $435f: $7d
	ld   e, b                                        ; $4360: $58
	inc  bc                                          ; $4361: $03
	and  a                                           ; $4362: $a7
	adc  l                                           ; $4363: $8d
	dec  c                                           ; $4364: $0d
	halt                                             ; $4365: $76
	ld   d, d                                        ; $4366: $52
	ld   d, h                                        ; $4367: $54
	ld   h, c                                        ; $4368: $61
	halt                                             ; $4369: $76
	ld   a, c                                        ; $436a: $79
	ld   h, l                                        ; $436b: $65
	ld   [hl], h                                     ; $436c: $74
	ld   e, b                                        ; $436d: $58
	ld   e, e                                        ; $436e: $5b
	adc  h                                           ; $436f: $8c
	ld   h, a                                        ; $4370: $67
	sbc  l                                           ; $4371: $9d
	sbc  a                                           ; $4372: $9f
	dec  c                                           ; $4373: $0d
	nop                                              ; $4374: $00
	ld   a, [bc]                                     ; $4375: $0a
	ld   bc, $9a6b                                   ; $4376: $01 $6b $9a
	ld   [hl], l                                     ; $4379: $75
	ld   a, l                                        ; $437a: $7d
	rst  $38                                         ; $437b: $ff
	rst  $38                                         ; $437c: $ff
	sbc  a                                           ; $437d: $9f
	dec  c                                           ; $437e: $0d
	nop                                              ; $437f: $00
	ld   a, [bc]                                     ; $4380: $0a
	dec  c                                           ; $4381: $0d
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	rrca                                             ; $4384: $0f
	nop                                              ; $4385: $00
	ld   bc, $1e09                                   ; $4386: $01 $09 $1e
	ld   b, $d6                                      ; $4389: $06 $d6
	ld   [bc], a                                     ; $438b: $02
	nop                                              ; $438c: $00
	ld   [bc], a                                     ; $438d: $02
	ld   b, $01                                      ; $438e: $06 $01
	ld   bc, $0020                                   ; $4390: $01 $20 $00
	rrca                                             ; $4393: $0f
	nop                                              ; $4394: $00
	ld   bc, $0706                                   ; $4395: $01 $06 $07
	nop                                              ; $4398: $00
	ld   [bc], a                                     ; $4399: $02
	rlca                                             ; $439a: $07
	rst  $28                                         ; $439b: $ef
	rlca                                             ; $439c: $07
	inc  b                                           ; $439d: $04
	add  b                                           ; $439e: $80
	add  $00                                         ; $439f: $c6 $00
	ld   c, $9d                                      ; $43a1: $0e $9d
	rlca                                             ; $43a3: $07
	dec  bc                                          ; $43a4: $0b
	ld   [bc], a                                     ; $43a5: $02
	inc  bc                                          ; $43a6: $03
	jr   nz, @+$03                                   ; $43a7: $20 $01

	jr   nz, jr_046_43ce                             ; $43a9: $20 $23

	nop                                              ; $43ab: $00
	rlca                                             ; $43ac: $07
	and  d                                           ; $43ad: $a2
	ld   bc, $4e03                                   ; $43ae: $01 $03 $4e
	ld   [bc], a                                     ; $43b1: $02
	nop                                              ; $43b2: $00
	inc  bc                                          ; $43b3: $03
	ld   c, b                                        ; $43b4: $48
	add  hl, hl                                      ; $43b5: $29
	add  hl, hl                                      ; $43b6: $29
	ld   bc, $2501                                   ; $43b7: $01 $01 $25
	nop                                              ; $43ba: $00
	rlca                                             ; $43bb: $07
	ld   e, b                                        ; $43bc: $58
	nop                                              ; $43bd: $00
	inc  bc                                          ; $43be: $03
	ld   b, d                                        ; $43bf: $42
	ld   bc, $2000                                   ; $43c0: $01 $00 $20
	nop                                              ; $43c3: $00
	rlca                                             ; $43c4: $07
	and  e                                           ; $43c5: $a3
	inc  b                                           ; $43c6: $04
	inc  bc                                          ; $43c7: $03
	ld   b, d                                        ; $43c8: $42
	ld   bc, $2501                                   ; $43c9: $01 $01 $25
	inc  bc                                          ; $43cc: $03
	ld   b, d                                        ; $43cd: $42

jr_046_43ce:
	ld   bc, $2302                                   ; $43ce: $01 $02 $23
	inc  e                                           ; $43d1: $1c
	nop                                              ; $43d2: $00
	rlca                                             ; $43d3: $07
	inc  [hl]                                        ; $43d4: $34
	dec  b                                           ; $43d5: $05
	inc  bc                                          ; $43d6: $03
	ld   b, d                                        ; $43d7: $42
	ld   bc, $2503                                   ; $43d8: $01 $03 $25
	inc  bc                                          ; $43db: $03
	ld   b, d                                        ; $43dc: $42
	ld   bc, $2305                                   ; $43dd: $01 $05 $23
	inc  e                                           ; $43e0: $1c
	nop                                              ; $43e1: $00
	rlca                                             ; $43e2: $07
	halt                                             ; $43e3: $76
	ld   b, $03                                      ; $43e4: $06 $03
	ld   b, d                                        ; $43e6: $42
	ld   bc, $2506                                   ; $43e7: $01 $06 $25
	nop                                              ; $43ea: $00
	inc  e                                           ; $43eb: $1c
	ld   bc, $0101                                   ; $43ec: $01 $01 $01
	ld   [bc], a                                     ; $43ef: $02
	ld   bc, $a161                                   ; $43f0: $01 $61 $a1
	ld   a, c                                        ; $43f3: $79
	ld   l, a                                        ; $43f4: $6f
	ld   a, l                                        ; $43f5: $7d
	sbc  [hl]                                        ; $43f6: $9e
	ld   [$6300], sp                                 ; $43f7: $08 $00 $63
	and  c                                           ; $43fa: $a1
	sbc  a                                           ; $43fb: $9f
	dec  c                                           ; $43fc: $0d
	ld   [bc], a                                     ; $43fd: $02
	and  l                                           ; $43fe: $a5
	inc  b                                           ; $43ff: $04
	xor  d                                           ; $4400: $aa
	ld   e, c                                        ; $4401: $59
	sub  a                                           ; $4402: $97
	sbc  [hl]                                        ; $4403: $9e
	ld   h, c                                        ; $4404: $61
	ld   a, h                                        ; $4405: $7c
	inc  bc                                          ; $4406: $03
	ld   l, a                                        ; $4407: $6f
	ld   [bc], a                                     ; $4408: $02
	xor  c                                           ; $4409: $a9
	ld   a, l                                        ; $440a: $7d
	dec  c                                           ; $440b: $0d
	ld   [bc], a                                     ; $440c: $02
	or   d                                           ; $440d: $b2
	inc  bc                                          ; $440e: $03
	ld   c, a                                        ; $440f: $4f
	ld   a, h                                        ; $4410: $7c
	inc  bc                                          ; $4411: $03
	ld   l, l                                        ; $4412: $6d
	dec  b                                           ; $4413: $05
	add  hl, de                                      ; $4414: $19
	and  b                                           ; $4415: $a0
	ld   h, l                                        ; $4416: $65
	ld   [hl], h                                     ; $4417: $74
	sub  b                                           ; $4418: $90
	sub  a                                           ; $4419: $97
	ld   d, d                                        ; $441a: $52
	adc  h                                           ; $441b: $8c
	ld   h, a                                        ; $441c: $67
	sbc  a                                           ; $441d: $9f
	dec  c                                           ; $441e: $0d
	nop                                              ; $441f: $00
	ld   a, [bc]                                     ; $4420: $0a
	ld   bc, $6d03                                   ; $4421: $01 $03 $6d
	dec  b                                           ; $4424: $05
	add  hl, de                                      ; $4425: $19
	ld   a, l                                        ; $4426: $7d
	sbc  [hl]                                        ; $4427: $9e
	ld   d, b                                        ; $4428: $50
	ld   l, l                                        ; $4429: $6d
	ld   h, l                                        ; $442a: $65
	ld   l, l                                        ; $442b: $6d
	ld   l, a                                        ; $442c: $6f
	ld   [bc], a                                     ; $442d: $02
	sbc  b                                           ; $442e: $98
	inc  bc                                          ; $442f: $03
	nop                                              ; $4430: $00
	ld   a, h                                        ; $4431: $7c
	dec  c                                           ; $4432: $0d
	db   $e3                                         ; $4433: $e3
	push af                                          ; $4434: $f5
	pop  de                                          ; $4435: $d1
	ei                                               ; $4436: $fb
	ld   e, d                                        ; $4437: $5a
	ld   [bc], a                                     ; $4438: $02
	ld   e, e                                        ; $4439: $5b
	inc  bc                                          ; $443a: $03
	sbc  $75                                         ; $443b: $de $75
	ld   [bc], a                                     ; $443d: $02
	rst  $38                                         ; $443e: $ff
	ld   e, a                                        ; $443f: $5f
	inc  bc                                          ; $4440: $03
	and  b                                           ; $4441: $a0
	ld   l, a                                        ; $4442: $6f
	dec  c                                           ; $4443: $0d
	adc  h                                           ; $4444: $8c
	ld   h, a                                        ; $4445: $67
	sbc  a                                           ; $4446: $9f
	dec  c                                           ; $4447: $0d
	nop                                              ; $4448: $00
	ld   a, [bc]                                     ; $4449: $0a
	inc  e                                           ; $444a: $1c
	ld   bc, $0000                                   ; $444b: $01 $00 $00
	ld   bc, $786f                                   ; $444e: $01 $6f $78
	adc  l                                           ; $4451: $8d
	ld   a, c                                        ; $4452: $79
	sbc  [hl]                                        ; $4453: $9e
	ld   d, b                                        ; $4454: $50
	ld   l, l                                        ; $4455: $6d
	ld   h, l                                        ; $4456: $65
	ld   a, h                                        ; $4457: $7c
	inc  bc                                          ; $4458: $03
	ld   l, l                                        ; $4459: $6d
	dec  b                                           ; $445a: $05
	add  hl, de                                      ; $445b: $19
	ld   a, l                                        ; $445c: $7d
	dec  c                                           ; $445d: $0d
	ld   [bc], a                                     ; $445e: $02
	dec  h                                           ; $445f: $25
	ld   [bc], a                                     ; $4460: $02
	ld   a, e                                        ; $4461: $7b
	ld   d, d                                        ; $4462: $52
	ld   [hl], l                                     ; $4463: $75
	ld   h, a                                        ; $4464: $67
	sbc  a                                           ; $4465: $9f
	dec  c                                           ; $4466: $0d
	nop                                              ; $4467: $00
	ld   a, [bc]                                     ; $4468: $0a
	ld   bc, $e005                                   ; $4469: $01 $05 $e0
	inc  bc                                          ; $446c: $03
	sub  b                                           ; $446d: $90
	dec  b                                           ; $446e: $05
	ld   a, [bc]                                     ; $446f: $0a
	sbc  [hl]                                        ; $4470: $9e
	cp   d                                           ; $4471: $ba
	push de                                          ; $4472: $d5
	ei                                               ; $4473: $fb
	jp   z, $029e                                    ; $4474: $ca $9e $02

	and  c                                           ; $4477: $a1
	ld   [bc], a                                     ; $4478: $02
	ld   a, e                                        ; $4479: $7b
	ld   d, d                                        ; $447a: $52
	dec  c                                           ; $447b: $0d
	ld   a, b                                        ; $447c: $78
	ld   [hl], a                                     ; $447d: $77
	ld   b, $7f                                      ; $447e: $06 $7f
	ld   [bc], a                                     ; $4480: $02
	ld   a, e                                        ; $4481: $7b
	inc  b                                           ; $4482: $04
	jr   nz, jr_046_44fd                             ; $4483: $20 $78

	dec  b                                           ; $4485: $05
	ld   a, [bc]                                     ; $4486: $0a
	and  b                                           ; $4487: $a0
	inc  b                                           ; $4488: $04
	push af                                          ; $4489: $f5
	ld   d, h                                        ; $448a: $54
	ld   l, l                                        ; $448b: $6d
	adc  a                                           ; $448c: $8f
	ld   a, h                                        ; $448d: $7c
	dec  c                                           ; $448e: $0d
	inc  bc                                          ; $448f: $03
	ld   l, l                                        ; $4490: $6d
	dec  b                                           ; $4491: $05
	add  hl, de                                      ; $4492: $19
	ld   a, b                                        ; $4493: $78
	and  c                                           ; $4494: $a1
	ld   [hl], l                                     ; $4495: $75
	ld   h, a                                        ; $4496: $67
	sub  [hl]                                        ; $4497: $96
	sbc  a                                           ; $4498: $9f
	dec  c                                           ; $4499: $0d
	nop                                              ; $449a: $00
	ld   a, [bc]                                     ; $449b: $0a
	inc  e                                           ; $449c: $1c
	ld   bc, $0202                                   ; $449d: $01 $02 $02
	ld   bc, $7d75                                   ; $44a0: $01 $75 $7d
	sbc  [hl]                                        ; $44a3: $9e
	dec  b                                           ; $44a4: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44a5: $cf
	adc  a                                           ; $44a6: $8f
	adc  h                                           ; $44a7: $8c
	ld   h, a                                        ; $44a8: $67
	ld   a, [$000d]                                  ; $44a9: $fa $0d $00
	ld   a, [bc]                                     ; $44ac: $0a
	dec  h                                           ; $44ad: $25
	ld   bc, $1a07                                   ; $44ae: $01 $07 $1a
	inc  b                                           ; $44b1: $04
	inc  bc                                          ; $44b2: $03
	jr   nz, jr_046_44b6                             ; $44b3: $20 $01

	nop                                              ; $44b5: $00

jr_046_44b6:
	jr   nz, jr_046_44b8                             ; $44b6: $20 $00

jr_046_44b8:
	inc  e                                           ; $44b8: $1c
	ld   bc, $0101                                   ; $44b9: $01 $01 $01
	ld   bc, $0458                                   ; $44bc: $01 $58 $04
	ld   a, e                                        ; $44bf: $7b
	sbc  d                                           ; $44c0: $9a
	ld   h, e                                        ; $44c1: $63
	adc  h                                           ; $44c2: $8c
	ld   [hl], l                                     ; $44c3: $75
	ld   h, l                                        ; $44c4: $65
	ld   l, l                                        ; $44c5: $6d
	sbc  a                                           ; $44c6: $9f
	dec  c                                           ; $44c7: $0d
	nop                                              ; $44c8: $00
	ld   a, [bc]                                     ; $44c9: $0a
	inc  e                                           ; $44ca: $1c
	ld   bc, $0000                                   ; $44cb: $01 $00 $00
	ld   bc, $6d03                                   ; $44ce: $01 $03 $6d
	dec  b                                           ; $44d1: $05
	add  hl, de                                      ; $44d2: $19
	ld   a, l                                        ; $44d3: $7d
	sbc  [hl]                                        ; $44d4: $9e
	dec  b                                           ; $44d5: $05
	ret  nz                                          ; $44d6: $c0

	adc  a                                           ; $44d7: $8f
	ld   a, [hl]                                     ; $44d8: $7e
	dec  b                                           ; $44d9: $05
	ret  nz                                          ; $44da: $c0

	adc  [hl]                                        ; $44db: $8e
	adc  c                                           ; $44dc: $89
	ld   [hl], a                                     ; $44dd: $77
	dec  c                                           ; $44de: $0d
	inc  bc                                          ; $44df: $03
	ld   h, l                                        ; $44e0: $65
	inc  bc                                          ; $44e1: $03
	rst  $30                                         ; $44e2: $f7
	ld   h, l                                        ; $44e3: $65
	ld   [hl], h                                     ; $44e4: $74
	ld   d, d                                        ; $44e5: $52
	ld   e, e                                        ; $44e6: $5b
	adc  h                                           ; $44e7: $8c
	ld   h, a                                        ; $44e8: $67
	sbc  a                                           ; $44e9: $9f
	ld   h, e                                        ; $44ea: $63
	adc  d                                           ; $44eb: $8a
	sub  a                                           ; $44ec: $97
	ld   l, b                                        ; $44ed: $68
	sbc  [hl]                                        ; $44ee: $9e
	dec  c                                           ; $44ef: $0d
	ld   a, b                                        ; $44f0: $78
	adc  h                                           ; $44f1: $8c
	ld   e, a                                        ; $44f2: $5f
	ld   l, b                                        ; $44f3: $68
	sbc  [hl]                                        ; $44f4: $9e
	dec  b                                           ; $44f5: $05
	ldh  [rTIMA], a                                  ; $44f6: $e0 $05
	db   $dd                                         ; $44f8: $dd
	ld   h, l                                        ; $44f9: $65
	ld   [hl], h                                     ; $44fa: $74
	ld   [bc], a                                     ; $44fb: $02
	inc  [hl]                                        ; $44fc: $34

jr_046_44fd:
	ld   h, e                                        ; $44fd: $63
	ld   d, d                                        ; $44fe: $52
	sbc  a                                           ; $44ff: $9f
	dec  c                                           ; $4500: $0d
	nop                                              ; $4501: $00
	ld   a, [bc]                                     ; $4502: $0a
	ld   bc, $9a6b                                   ; $4503: $01 $6b $9a
	ld   [hl], l                                     ; $4506: $75
	ld   a, l                                        ; $4507: $7d
	sbc  [hl]                                        ; $4508: $9e
	inc  b                                           ; $4509: $04
	adc  a                                           ; $450a: $8f
	inc  b                                           ; $450b: $04
	xor  d                                           ; $450c: $aa
	ld   a, h                                        ; $450d: $7c
	ld   [bc], a                                     ; $450e: $02
	or   d                                           ; $450f: $b2
	inc  bc                                          ; $4510: $03
	ld   c, a                                        ; $4511: $4f
	ld   a, h                                        ; $4512: $7c
	inc  bc                                          ; $4513: $03
	ld   l, l                                        ; $4514: $6d
	dec  b                                           ; $4515: $05
	add  hl, de                                      ; $4516: $19
	and  b                                           ; $4517: $a0
	dec  c                                           ; $4518: $0d
	nop                                              ; $4519: $00
	dec  b                                           ; $451a: $05
	ld   b, b                                        ; $451b: $40
	ld   b, d                                        ; $451c: $42
	inc  bc                                          ; $451d: $03
	ld   b, d                                        ; $451e: $42
	ld   bc, $2801                                   ; $451f: $01 $01 $28
	nop                                              ; $4522: $00
	ld   bc, $7e03                                   ; $4523: $01 $03 $7e
	sbc  l                                           ; $4526: $9d
	sbc  b                                           ; $4527: $98
	adc  h                                           ; $4528: $8c
	ld   h, a                                        ; $4529: $67
	sbc  a                                           ; $452a: $9f
	dec  c                                           ; $452b: $0d
	nop                                              ; $452c: $00
	ld   a, [bc]                                     ; $452d: $0a
	dec  c                                           ; $452e: $0d
	nop                                              ; $452f: $00
	nop                                              ; $4530: $00
	rrca                                             ; $4531: $0f
	nop                                              ; $4532: $00
	ld   bc, $1c00                                   ; $4533: $01 $00 $1c
	ld   bc, $0707                                   ; $4536: $01 $07 $07
	ld   [bc], a                                     ; $4539: $02
	ld   bc, $ffff                                   ; $453a: $01 $ff $ff
	rst  $38                                         ; $453d: $ff
	rst  $38                                         ; $453e: $ff
	ld   l, e                                        ; $453f: $6b
	sbc  d                                           ; $4540: $9a
	ld   [hl], l                                     ; $4541: $75
	ld   a, l                                        ; $4542: $7d
	inc  bc                                          ; $4543: $03
	ld   l, l                                        ; $4544: $6d
	dec  b                                           ; $4545: $05
	add  hl, de                                      ; $4546: $19
	and  b                                           ; $4547: $a0
	dec  c                                           ; $4548: $0d
	ld   a, l                                        ; $4549: $7d
	ld   h, [hl]                                     ; $454a: $66
	adc  a                                           ; $454b: $8f
	adc  h                                           ; $454c: $8c
	ld   h, a                                        ; $454d: $67
	sbc  a                                           ; $454e: $9f
	dec  c                                           ; $454f: $0d
	nop                                              ; $4550: $00
	ld   a, [bc]                                     ; $4551: $0a
	dec  b                                           ; $4552: $05
	ld   b, b                                        ; $4553: $40
	ld   c, [hl]                                     ; $4554: $4e
	ld   bc, $0000                                   ; $4555: $01 $00 $00
	dec  h                                           ; $4558: $25
	ld   bc, $1a07                                   ; $4559: $01 $07 $1a
	inc  b                                           ; $455c: $04
	inc  bc                                          ; $455d: $03
	jr   nz, jr_046_4561                             ; $455e: $20 $01

	nop                                              ; $4560: $00

jr_046_4561:
	jr   nz, jr_046_4563                             ; $4561: $20 $00

jr_046_4563:
	inc  e                                           ; $4563: $1c
	ld   bc, $0707                                   ; $4564: $01 $07 $07
	ld   bc, $0458                                   ; $4567: $01 $58 $04
	ld   a, e                                        ; $456a: $7b
	sbc  d                                           ; $456b: $9a
	ld   h, e                                        ; $456c: $63
	adc  h                                           ; $456d: $8c
	ld   [hl], l                                     ; $456e: $75
	ld   h, l                                        ; $456f: $65
	ld   l, l                                        ; $4570: $6d
	rst  $38                                         ; $4571: $ff
	rst  $38                                         ; $4572: $ff
	dec  c                                           ; $4573: $0d
	nop                                              ; $4574: $00
	ld   a, [bc]                                     ; $4575: $0a
	dec  c                                           ; $4576: $0d
	nop                                              ; $4577: $00
	nop                                              ; $4578: $00
	rrca                                             ; $4579: $0f
	nop                                              ; $457a: $00
	ld   bc, $4005                                   ; $457b: $01 $05 $40
	ld   b, d                                        ; $457e: $42
	inc  bc                                          ; $457f: $03
	ld   b, d                                        ; $4580: $42
	ld   bc, $2801                                   ; $4581: $01 $01 $28
	nop                                              ; $4584: $00
	ld   bc, $ffff                                   ; $4585: $01 $ff $ff
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	ld   h, e                                        ; $458a: $63
	ld   e, l                                        ; $458b: $5d
	sub  a                                           ; $458c: $97
	ld   h, e                                        ; $458d: $63
	and  c                                           ; $458e: $a1
	sbc  [hl]                                        ; $458f: $9e
	dec  c                                           ; $4590: $0d
	ld   e, e                                        ; $4591: $5b
	ld   h, b                                        ; $4592: $60
	and  c                                           ; $4593: $a1
	ld   [bc], a                                     ; $4594: $02
	jr   z, jr_046_45e9                              ; $4595: $28 $52

	ld   l, h                                        ; $4597: $6c
	rst  $38                                         ; $4598: $ff
	rst  $38                                         ; $4599: $ff
	dec  c                                           ; $459a: $0d
	nop                                              ; $459b: $00
	ld   a, [bc]                                     ; $459c: $0a
	nop                                              ; $459d: $00
	inc  e                                           ; $459e: $1c
	ld   bc, $0000                                   ; $459f: $01 $00 $00
	dec  b                                           ; $45a2: $05
	ld   b, b                                        ; $45a3: $40
	ld   c, [hl]                                     ; $45a4: $4e
	ld   bc, $0000                                   ; $45a5: $01 $00 $00
	ld   [bc], a                                     ; $45a8: $02
	ld   bc, $a161                                   ; $45a9: $01 $61 $a1
	ld   a, c                                        ; $45ac: $79
	ld   l, a                                        ; $45ad: $6f
	ld   a, l                                        ; $45ae: $7d
	rst  $38                                         ; $45af: $ff
	rst  $38                                         ; $45b0: $ff
	ld   d, b                                        ; $45b1: $50
	sub  a                                           ; $45b2: $97
	ld   sp, hl                                      ; $45b3: $f9
	dec  c                                           ; $45b4: $0d
	nop                                              ; $45b5: $00
	inc  e                                           ; $45b6: $1c
	ld   bc, $0303                                   ; $45b7: $01 $03 $03
	ld   bc, $5477                                   ; $45ba: $01 $77 $54
	ld   h, l                                        ; $45bd: $65
	ld   l, l                                        ; $45be: $6d
	and  c                                           ; $45bf: $a1
	ld   [hl], l                                     ; $45c0: $75
	ld   h, a                                        ; $45c1: $67
	ld   e, c                                        ; $45c2: $59
	sbc  [hl]                                        ; $45c3: $9e
	dec  c                                           ; $45c4: $0d
	ld   [bc], a                                     ; $45c5: $02
	ld   [hl], d                                     ; $45c6: $72
	inc  bc                                          ; $45c7: $03
	dec  bc                                          ; $45c8: $0b
	ld   e, d                                        ; $45c9: $5a
	sbc  l                                           ; $45ca: $9d
	sbc  c                                           ; $45cb: $99
	ld   d, d                                        ; $45cc: $52
	ld   [hl], l                                     ; $45cd: $75
	ld   h, a                                        ; $45ce: $67
	sub  [hl]                                        ; $45cf: $96
	sbc  a                                           ; $45d0: $9f
	dec  c                                           ; $45d1: $0d
	nop                                              ; $45d2: $00
	ld   a, [bc]                                     ; $45d3: $0a
	inc  e                                           ; $45d4: $1c
	ld   bc, $0404                                   ; $45d5: $01 $04 $04
	ld   bc, $a502                                   ; $45d8: $01 $02 $a5
	ld   [bc], a                                     ; $45db: $02
	sub  e                                           ; $45dc: $93
	ld   a, h                                        ; $45dd: $7c
	inc  bc                                          ; $45de: $03
	ld   l, l                                        ; $45df: $6d
	dec  b                                           ; $45e0: $05
	add  hl, de                                      ; $45e1: $19
	ld   a, l                                        ; $45e2: $7d
	inc  bc                                          ; $45e3: $03
	and  a                                           ; $45e4: $a7
	and  c                                           ; $45e5: $a1
	ld   l, [hl]                                     ; $45e6: $6e
	inc  b                                           ; $45e7: $04
	ld   a, b                                        ; $45e8: $78

jr_046_45e9:
	ld   e, d                                        ; $45e9: $5a
	dec  c                                           ; $45ea: $0d
	ld   d, d                                        ; $45eb: $52
	ld   d, d                                        ; $45ec: $52
	and  c                                           ; $45ed: $a1
	ld   h, [hl]                                     ; $45ee: $66
	sub  c                                           ; $45ef: $91
	ld   a, b                                        ; $45f0: $78
	ld   d, d                                        ; $45f1: $52
	ld   [hl], l                                     ; $45f2: $75
	ld   h, a                                        ; $45f3: $67
	ld   e, c                                        ; $45f4: $59
	ld   sp, hl                                      ; $45f5: $f9
	dec  c                                           ; $45f6: $0d
	nop                                              ; $45f7: $00
	ld   a, [bc]                                     ; $45f8: $0a
	jr   jr_046_45fd                                 ; $45f9: $18 $02

	nop                                              ; $45fb: $00
	inc  bc                                          ; $45fc: $03

jr_046_45fd:
	and  a                                           ; $45fd: $a7
	adc  [hl]                                        ; $45fe: $8e
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	ld   e, d                                        ; $4601: $5a
	and  c                                           ; $4602: $a1
	ld   a, [hl]                                     ; $4603: $7e
	sbc  c                                           ; $4604: $99
	nop                                              ; $4605: $00
	ld   bc, $8607                                   ; $4606: $01 $07 $86
	ld   [bc], a                                     ; $4609: $02
	ld   [bc], a                                     ; $460a: $02
	ld   [bc], a                                     ; $460b: $02
	ld   bc, $2000                                   ; $460c: $01 $00 $20
	nop                                              ; $460f: $00
	rlca                                             ; $4610: $07
	ld   e, c                                        ; $4611: $59
	inc  bc                                          ; $4612: $03
	ld   [bc], a                                     ; $4613: $02
	ld   [bc], a                                     ; $4614: $02
	ld   bc, $2001                                   ; $4615: $01 $01 $20
	nop                                              ; $4618: $00
	rrca                                             ; $4619: $0f
	nop                                              ; $461a: $00
	ld   bc, $6701                                   ; $461b: $01 $01 $67
	adc  l                                           ; $461e: $8d
	adc  h                                           ; $461f: $8c
	ld   l, c                                        ; $4620: $69
	and  c                                           ; $4621: $a1
	rst  $38                                         ; $4622: $ff
	rst  $38                                         ; $4623: $ff
	dec  c                                           ; $4624: $0d
	ld   l, e                                        ; $4625: $6b
	sbc  d                                           ; $4626: $9a
	ld   [hl], l                                     ; $4627: $75
	ld   a, l                                        ; $4628: $7d
	sbc  [hl]                                        ; $4629: $9e
	ld   [bc], a                                     ; $462a: $02
	and  l                                           ; $462b: $a5
	inc  b                                           ; $462c: $04
	xor  d                                           ; $462d: $aa
	ld   a, h                                        ; $462e: $7c
	inc  bc                                          ; $462f: $03
	ld   l, l                                        ; $4630: $6d
	dec  b                                           ; $4631: $05
	add  hl, de                                      ; $4632: $19
	ld   a, l                                        ; $4633: $7d
	dec  c                                           ; $4634: $0d
	inc  bc                                          ; $4635: $03
	and  a                                           ; $4636: $a7
	adc  h                                           ; $4637: $8c
	ld   l, c                                        ; $4638: $69
	ld   [hl], h                                     ; $4639: $74
	ld   d, d                                        ; $463a: $52
	ld   l, l                                        ; $463b: $6d
	ld   l, [hl]                                     ; $463c: $6e
	ld   e, e                                        ; $463d: $5b
	adc  h                                           ; $463e: $8c
	ld   h, a                                        ; $463f: $67
	sbc  a                                           ; $4640: $9f
	dec  c                                           ; $4641: $0d
	nop                                              ; $4642: $00
	ld   a, [bc]                                     ; $4643: $0a
	inc  e                                           ; $4644: $1c
	ld   bc, $0000                                   ; $4645: $01 $00 $00
	ld   bc, $599d                                   ; $4648: $01 $9d $59
	sbc  b                                           ; $464b: $98
	adc  h                                           ; $464c: $8c
	ld   h, l                                        ; $464d: $65
	ld   l, l                                        ; $464e: $6d
	sbc  a                                           ; $464f: $9f
	dec  c                                           ; $4650: $0d
	ld   l, e                                        ; $4651: $6b
	sbc  d                                           ; $4652: $9a
	ld   [hl], l                                     ; $4653: $75
	ld   a, l                                        ; $4654: $7d
	sbc  [hl]                                        ; $4655: $9e
	ld   [bc], a                                     ; $4656: $02
	and  l                                           ; $4657: $a5
	inc  b                                           ; $4658: $04
	xor  d                                           ; $4659: $aa
	ld   a, l                                        ; $465a: $7d
	ld   e, b                                        ; $465b: $58
	inc  bc                                          ; $465c: $03
	and  a                                           ; $465d: $a7
	adc  l                                           ; $465e: $8d
	halt                                             ; $465f: $76
	ld   d, d                                        ; $4660: $52
	ld   d, h                                        ; $4661: $54
	dec  c                                           ; $4662: $0d
	ld   h, c                                        ; $4663: $61
	halt                                             ; $4664: $76
	ld   [hl], l                                     ; $4665: $75
	sbc  a                                           ; $4666: $9f
	dec  c                                           ; $4667: $0d
	nop                                              ; $4668: $00
	ld   a, [bc]                                     ; $4669: $0a
	ld   bc, $a15a                                   ; $466a: $01 $5a $a1
	ld   a, [hl]                                     ; $466d: $7e
	sbc  c                                           ; $466e: $99
	ld   a, h                                        ; $466f: $7c
	sub  b                                           ; $4670: $90
	ld   d, d                                        ; $4671: $52
	ld   d, d                                        ; $4672: $52
	ld   [hl], l                                     ; $4673: $75
	ld   h, a                                        ; $4674: $67
	ld   e, d                                        ; $4675: $5a
	sbc  [hl]                                        ; $4676: $9e
	dec  c                                           ; $4677: $0d
	inc  bc                                          ; $4678: $03
	sub  h                                           ; $4679: $94
	dec  b                                           ; $467a: $05
	inc  sp                                          ; $467b: $33
	ld   [bc], a                                     ; $467c: $02
	ld   l, b                                        ; $467d: $68
	dec  b                                           ; $467e: $05
	ld   de, $6f7d                                   ; $467f: $11 $7d $6f
	sub  c                                           ; $4682: $91
	and  c                                           ; $4683: $a1
	halt                                             ; $4684: $76
	dec  c                                           ; $4685: $0d
	ld   h, l                                        ; $4686: $65
	adc  h                                           ; $4687: $8c
	ld   h, l                                        ; $4688: $65
	sub  l                                           ; $4689: $95
	ld   d, h                                        ; $468a: $54
	ld   a, e                                        ; $468b: $7b
	sbc  a                                           ; $468c: $9f
	dec  c                                           ; $468d: $0d
	nop                                              ; $468e: $00
	ld   a, [bc]                                     ; $468f: $0a
	rrca                                             ; $4690: $0f
	nop                                              ; $4691: $00
	ld   bc, $7d01                                   ; $4692: $01 $01 $7d
	ld   d, d                                        ; $4695: $52
	sbc  [hl]                                        ; $4696: $9e
	sbc  l                                           ; $4697: $9d
	ld   e, c                                        ; $4698: $59
	sbc  b                                           ; $4699: $98
	adc  h                                           ; $469a: $8c
	ld   h, l                                        ; $469b: $65
	ld   l, l                                        ; $469c: $6d
	sbc  a                                           ; $469d: $9f
	dec  c                                           ; $469e: $0d
	ld   l, e                                        ; $469f: $6b
	sbc  d                                           ; $46a0: $9a
	ld   [hl], l                                     ; $46a1: $75
	ld   a, l                                        ; $46a2: $7d
	inc  bc                                          ; $46a3: $03
	add  e                                           ; $46a4: $83
	dec  b                                           ; $46a5: $05
	dec  c                                           ; $46a6: $0d
	ld   h, l                                        ; $46a7: $65
	adc  h                                           ; $46a8: $8c
	ld   h, a                                        ; $46a9: $67
	sbc  a                                           ; $46aa: $9f
	dec  c                                           ; $46ab: $0d
	nop                                              ; $46ac: $00
	ld   a, [bc]                                     ; $46ad: $0a
	dec  c                                           ; $46ae: $0d
	nop                                              ; $46af: $00
	nop                                              ; $46b0: $00
	inc  hl                                          ; $46b1: $23
	ld   bc, $6b01                                   ; $46b2: $01 $01 $6b
	sbc  d                                           ; $46b5: $9a
	ld   h, [hl]                                     ; $46b6: $66
	sub  c                                           ; $46b7: $91
	sbc  [hl]                                        ; $46b8: $9e
	inc  bc                                          ; $46b9: $03
	ld   l, h                                        ; $46ba: $6c
	ld   h, l                                        ; $46bb: $65
	inc  bc                                          ; $46bc: $03
	and  a                                           ; $46bd: $a7
	adc  [hl]                                        ; $46be: $8e
	halt                                             ; $46bf: $76
	ld   h, a                                        ; $46c0: $67
	sbc  c                                           ; $46c1: $99
	ld   e, c                                        ; $46c2: $59
	sbc  a                                           ; $46c3: $9f
	dec  c                                           ; $46c4: $0d
	nop                                              ; $46c5: $00
	ld   a, [bc]                                     ; $46c6: $0a
	dec  h                                           ; $46c7: $25
	nop                                              ; $46c8: $00
	rrca                                             ; $46c9: $0f
	nop                                              ; $46ca: $00
	ld   bc, $5401                                   ; $46cb: $01 $01 $54
	db   $fc                                         ; $46ce: $fc
	and  c                                           ; $46cf: $a1
	sub  [hl]                                        ; $46d0: $96
	ld   e, l                                        ; $46d1: $5d
	inc  b                                           ; $46d2: $04
	ld   b, d                                        ; $46d3: $42
	ld   l, l                                        ; $46d4: $6d
	rst  $38                                         ; $46d5: $ff
	rst  $38                                         ; $46d6: $ff
	dec  c                                           ; $46d7: $0d
	ld   e, c                                        ; $46d8: $59
	ld   a, b                                        ; $46d9: $78
	sbc  b                                           ; $46da: $98
	inc  b                                           ; $46db: $04
	dec  c                                           ; $46dc: $0d
	ld   e, d                                        ; $46dd: $5a
	dec  b                                           ; $46de: $05
	inc  de                                          ; $46df: $13
	ld   a, c                                        ; $46e0: $79
	ld   a, b                                        ; $46e1: $78
	ld   [hl], c                                     ; $46e2: $71
	ld   l, l                                        ; $46e3: $6d
	ld   l, h                                        ; $46e4: $6c
	sbc  a                                           ; $46e5: $9f
	dec  c                                           ; $46e6: $0d
	nop                                              ; $46e7: $00
	ld   a, [bc]                                     ; $46e8: $0a
	add  hl, hl                                      ; $46e9: $29
	dec  b                                           ; $46ea: $05
	nop                                              ; $46eb: $00
	rrca                                             ; $46ec: $0f
	nop                                              ; $46ed: $00
	ld   bc, $5201                                   ; $46ee: $01 $01 $52
	ld   d, [hl]                                     ; $46f1: $56
	sbc  [hl]                                        ; $46f2: $9e
	inc  b                                           ; $46f3: $04
	ld   c, $03                                      ; $46f4: $0e $03
	sbc  l                                           ; $46f6: $9d
	inc  b                                           ; $46f7: $04
	and  [hl]                                        ; $46f8: $a6
	ld   [hl], l                                     ; $46f9: $75
	ld   h, a                                        ; $46fa: $67
	sbc  a                                           ; $46fb: $9f
	dec  c                                           ; $46fc: $0d
	ld   e, d                                        ; $46fd: $5a
	and  c                                           ; $46fe: $a1
	ld   a, [hl]                                     ; $46ff: $7e
	sbc  b                                           ; $4700: $98
	adc  h                                           ; $4701: $8c
	ld   h, a                                        ; $4702: $67
	ld   a, [$000d]                                  ; $4703: $fa $0d $00
	ld   a, [bc]                                     ; $4706: $0a
	rrca                                             ; $4707: $0f
	ld   bc, $0104                              ; $4708: $01 $04 $01
	ld   l, e                                        ; $470b: $6b
	ld   d, h                                        ; $470c: $54
	ld   [hl], l                                     ; $470d: $75
	ld   h, a                                        ; $470e: $67
	ld   e, c                                        ; $470f: $59
	rst  $38                                         ; $4710: $ff
	rst  $38                                         ; $4711: $ff
	dec  c                                           ; $4712: $0d
	ld   l, e                                        ; $4713: $6b
	sbc  d                                           ; $4714: $9a
	ld   h, [hl]                                     ; $4715: $66
	sub  c                                           ; $4716: $91
	sbc  [hl]                                        ; $4717: $9e
	inc  bc                                          ; $4718: $03
	ld   l, l                                        ; $4719: $6d
	dec  b                                           ; $471a: $05
	add  hl, de                                      ; $471b: $19
	and  b                                           ; $471c: $a0
	dec  b                                           ; $471d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $471e: $cf
	adc  a                                           ; $471f: $8f
	adc  h                                           ; $4720: $8c
	ld   h, a                                        ; $4721: $67
	sbc  a                                           ; $4722: $9f
	dec  c                                           ; $4723: $0d
	nop                                              ; $4724: $00
	ld   a, [bc]                                     ; $4725: $0a
	dec  h                                           ; $4726: $25
	ld   bc, $4005                                   ; $4727: $01 $05 $40
	ld   b, d                                        ; $472a: $42
	inc  bc                                          ; $472b: $03
	ld   b, d                                        ; $472c: $42
	ld   bc, $2801                                   ; $472d: $01 $01 $28
	nop                                              ; $4730: $00
	inc  e                                           ; $4731: $1c
	ld   bc, $0404                                   ; $4732: $01 $04 $04
	ld   bc, $7258                                   ; $4735: $01 $58 $72
	ld   e, c                                        ; $4738: $59
	sbc  d                                           ; $4739: $9a
	ld   h, e                                        ; $473a: $63
	adc  h                                           ; $473b: $8c
	ld   [hl], l                                     ; $473c: $75
	ld   h, l                                        ; $473d: $65
	ld   l, l                                        ; $473e: $6d
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	dec  c                                           ; $4741: $0d
	ld   d, b                                        ; $4742: $50
	ld   a, h                                        ; $4743: $7c
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	call c, $c9f5                                    ; $4746: $dc $f5 $c9
	ld   a, c                                        ; $4749: $79
	inc  bc                                          ; $474a: $03
	and  a                                           ; $474b: $a7
	and  c                                           ; $474c: $a1
	ld   l, [hl]                                     ; $474d: $6e
	adc  c                                           ; $474e: $89
	ld   d, h                                        ; $474f: $54
	ld   e, d                                        ; $4750: $5a
	dec  c                                           ; $4751: $0d
	ld   d, d                                        ; $4752: $52
	ld   d, d                                        ; $4753: $52
	halt                                             ; $4754: $76
	dec  b                                           ; $4755: $05
	pop  de                                          ; $4756: $d1
	ld   d, d                                        ; $4757: $52
	adc  h                                           ; $4758: $8c
	ld   h, a                                        ; $4759: $67
	sub  [hl]                                        ; $475a: $96
	rst  $38                                         ; $475b: $ff
	rst  $38                                         ; $475c: $ff
	dec  c                                           ; $475d: $0d
	nop                                              ; $475e: $00
	ld   a, [bc]                                     ; $475f: $0a
	rlca                                             ; $4760: $07
	add  sp, $03                                     ; $4761: $e8 $03
	inc  bc                                          ; $4763: $03
	jr   nz, jr_046_4767                             ; $4764: $20 $01

	nop                                              ; $4766: $00

jr_046_4767:
	jr   nz, jr_046_4769                             ; $4767: $20 $00

jr_046_4769:
	ld   bc, $9a6b                                   ; $4769: $01 $6b $9a
	ld   [hl], l                                     ; $476c: $75
	ld   a, l                                        ; $476d: $7d
	sbc  a                                           ; $476e: $9f
	dec  c                                           ; $476f: $0d
	nop                                              ; $4770: $00
	ld   a, [bc]                                     ; $4771: $0a
	rrca                                             ; $4772: $0f
	nop                                              ; $4773: $00
	ld   bc, $000d                                   ; $4774: $01 $0d $00
	nop                                              ; $4777: $00
	add  hl, bc                                      ; $4778: $09
	ld   e, $00                                      ; $4779: $1e $00
	rrca                                             ; $477b: $0f
	nop                                              ; $477c: $00
	ld   bc, $7d01                                   ; $477d: $01 $01 $7d
	ld   d, d                                        ; $4780: $52
	sbc  [hl]                                        ; $4781: $9e
	sbc  l                                           ; $4782: $9d
	ld   e, c                                        ; $4783: $59
	rst  $38                                         ; $4784: $ff
	sbc  b                                           ; $4785: $98
	rst  $38                                         ; $4786: $ff
	rst  $38                                         ; $4787: $ff
	adc  h                                           ; $4788: $8c
	rst  $38                                         ; $4789: $ff
	rst  $38                                         ; $478a: $ff
	dec  c                                           ; $478b: $0d
	nop                                              ; $478c: $00
	dec  c                                           ; $478d: $0d
	nop                                              ; $478e: $00
	nop                                              ; $478f: $00
	inc  c                                           ; $4790: $0c
	ld   [bc], a                                     ; $4791: $02
	ld   c, $03                                      ; $4792: $0e $03
	ld   bc, $9a50                                   ; $4794: $01 $50 $9a
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	rst  $38                                         ; $4799: $ff
	ld   sp, hl                                      ; $479a: $f9
	dec  c                                           ; $479b: $0d
	ld   e, c                                        ; $479c: $59
	sub  a                                           ; $479d: $97
	rst  $38                                         ; $479e: $ff
	rst  $38                                         ; $479f: $ff
	ld   l, [hl]                                     ; $47a0: $6e
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	ld   e, d                                        ; $47a3: $5a
	rst  $38                                         ; $47a4: $ff
	rst  $38                                         ; $47a5: $ff
	dec  c                                           ; $47a6: $0d
	nop                                              ; $47a7: $00
	ld   a, [bc]                                     ; $47a8: $0a
	ld   l, $01                                      ; $47a9: $2e $01
	nop                                              ; $47ab: $00
	nop                                              ; $47ac: $00
	dec  b                                           ; $47ad: $05
	ld   b, b                                        ; $47ae: $40
	ld   b, d                                        ; $47af: $42
	inc  bc                                          ; $47b0: $03
	ld   b, d                                        ; $47b1: $42
	ld   bc, $2801                                   ; $47b2: $01 $01 $28
	nop                                              ; $47b5: $00
	inc  e                                           ; $47b6: $1c
	ld   bc, $0000                                   ; $47b7: $01 $00 $00
	ld   bc, $0458                                   ; $47ba: $01 $58 $04
	ld   a, e                                        ; $47bd: $7b
	sbc  d                                           ; $47be: $9a
	ld   h, e                                        ; $47bf: $63
	adc  h                                           ; $47c0: $8c
	ld   [hl], l                                     ; $47c1: $75
	ld   h, l                                        ; $47c2: $65
	ld   l, l                                        ; $47c3: $6d
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	dec  c                                           ; $47c6: $0d
	nop                                              ; $47c7: $00
	inc  e                                           ; $47c8: $1c
	ld   bc, $0303                                   ; $47c9: $01 $03 $03
	ld   bc, $9750                                   ; $47cc: $01 $50 $97
	ld   sp, hl                                      ; $47cf: $f9
	db   $10                                         ; $47d0: $10
	ld   [hl], a                                     ; $47d1: $77
	ld   d, h                                        ; $47d2: $54
	ld   h, l                                        ; $47d3: $65
	ld   l, l                                        ; $47d4: $6d
	and  c                                           ; $47d5: $a1
	ld   [hl], l                                     ; $47d6: $75
	ld   h, a                                        ; $47d7: $67
	ld   e, c                                        ; $47d8: $59
	ld   sp, hl                                      ; $47d9: $f9
	dec  c                                           ; $47da: $0d
	ld   [bc], a                                     ; $47db: $02
	ld   [hl], d                                     ; $47dc: $72
	ld   e, d                                        ; $47dd: $5a
	inc  bc                                          ; $47de: $03
	xor  l                                           ; $47df: $ad
	ld   [hl], c                                     ; $47e0: $71
	inc  bc                                          ; $47e1: $03
	ld   a, [bc]                                     ; $47e2: $0a
	ld   [hl], l                                     ; $47e3: $75
	ld   h, a                                        ; $47e4: $67
	sub  [hl]                                        ; $47e5: $96
	sbc  a                                           ; $47e6: $9f
	dec  c                                           ; $47e7: $0d
	nop                                              ; $47e8: $00
	ld   a, [bc]                                     ; $47e9: $0a
	rrca                                             ; $47ea: $0f
	nop                                              ; $47eb: $00
	ld   bc, $5601                                   ; $47ec: $01 $01 $56
	ld   d, [hl]                                     ; $47ef: $56
	rst  $38                                         ; $47f0: $ff
	rst  $38                                         ; $47f1: $ff
	ld   a, b                                        ; $47f2: $78
	and  c                                           ; $47f3: $a1
	ld   l, [hl]                                     ; $47f4: $6e
	ld   e, c                                        ; $47f5: $59
	ld   h, e                                        ; $47f6: $63
	ld   [hl], c                                     ; $47f7: $71
	ld   e, e                                        ; $47f8: $5b
	ld   e, c                                        ; $47f9: $59
	sub  a                                           ; $47fa: $97
	dec  c                                           ; $47fb: $0d
	inc  b                                           ; $47fc: $04
	dec  c                                           ; $47fd: $0d
	ld   e, d                                        ; $47fe: $5a
	ld   l, [hl]                                     ; $47ff: $6e
	sbc  c                                           ; $4800: $99
	ld   e, l                                        ; $4801: $5d
	ld   [hl], h                                     ; $4802: $74
	rst  $38                                         ; $4803: $ff
	rst  $38                                         ; $4804: $ff
	dec  c                                           ; $4805: $0d
	nop                                              ; $4806: $00
	ld   a, [bc]                                     ; $4807: $0a
	ld   bc, $6254                                   ; $4808: $01 $54 $62
	rst  $38                                         ; $480b: $ff
	rst  $38                                         ; $480c: $ff
	ld   e, c                                        ; $480d: $59
	rst  $38                                         ; $480e: $ff
	rst  $38                                         ; $480f: $ff
	ld   a, b                                        ; $4810: $78
	rst  $38                                         ; $4811: $ff
	rst  $38                                         ; $4812: $ff
	dec  c                                           ; $4813: $0d
	nop                                              ; $4814: $00
	dec  c                                           ; $4815: $0d
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	inc  c                                           ; $4818: $0c
	ld   [bc], a                                     ; $4819: $02
	ld   c, $03                                      ; $481a: $0e $03
	ld   bc, $9a50                                   ; $481c: $01 $50 $9a
	rst  $38                                         ; $481f: $ff
	rst  $38                                         ; $4820: $ff
	rst  $38                                         ; $4821: $ff
	ld   sp, hl                                      ; $4822: $f9
	dec  c                                           ; $4823: $0d
	ld   [hl], a                                     ; $4824: $77
	ld   d, h                                        ; $4825: $54
	ld   h, l                                        ; $4826: $65
	rst  $38                                         ; $4827: $ff
	rst  $38                                         ; $4828: $ff
	ld   l, l                                        ; $4829: $6d
	rst  $38                                         ; $482a: $ff
	rst  $38                                         ; $482b: $ff
	and  c                                           ; $482c: $a1
	rst  $38                                         ; $482d: $ff
	rst  $38                                         ; $482e: $ff
	dec  c                                           ; $482f: $0d
	nop                                              ; $4830: $00
	ld   a, [bc]                                     ; $4831: $0a
	ld   l, $01                                      ; $4832: $2e $01
	nop                                              ; $4834: $00
	nop                                              ; $4835: $00
	inc  e                                           ; $4836: $1c
	ld   bc, $0000                                   ; $4837: $01 $00 $00
	ld   [bc], a                                     ; $483a: $02
	ld   bc, $a161                                   ; $483b: $01 $61 $a1
	ld   a, c                                        ; $483e: $79
	ld   l, a                                        ; $483f: $6f
	ld   a, l                                        ; $4840: $7d
	sbc  [hl]                                        ; $4841: $9e
	ld   [$6300], sp                                 ; $4842: $08 $00 $63
	and  c                                           ; $4845: $a1
	sbc  a                                           ; $4846: $9f
	dec  c                                           ; $4847: $0d
	ld   l, e                                        ; $4848: $6b
	sbc  d                                           ; $4849: $9a
	ld   [hl], l                                     ; $484a: $75
	ld   a, l                                        ; $484b: $7d
	sbc  [hl]                                        ; $484c: $9e
	ld   h, e                                        ; $484d: $63
	ld   [hl], c                                     ; $484e: $71
	ld   l, e                                        ; $484f: $6b
	ld   e, l                                        ; $4850: $5d
	inc  bc                                          ; $4851: $03
	ld   l, l                                        ; $4852: $6d
	dec  b                                           ; $4853: $05
	add  hl, de                                      ; $4854: $19
	and  b                                           ; $4855: $a0
	dec  c                                           ; $4856: $0d
	dec  b                                           ; $4857: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4858: $cf
	adc  a                                           ; $4859: $8f
	adc  h                                           ; $485a: $8c
	ld   h, l                                        ; $485b: $65
	sub  l                                           ; $485c: $95
	ld   d, h                                        ; $485d: $54
	sbc  a                                           ; $485e: $9f
	dec  c                                           ; $485f: $0d
	nop                                              ; $4860: $00
	ld   a, [bc]                                     ; $4861: $0a
	dec  h                                           ; $4862: $25
	ld   bc, $1a07                                   ; $4863: $01 $07 $1a
	inc  b                                           ; $4866: $04
	inc  bc                                          ; $4867: $03
	jr   nz, jr_046_486b                             ; $4868: $20 $01

	nop                                              ; $486a: $00

jr_046_486b:
	jr   nz, jr_046_486d                             ; $486b: $20 $00

jr_046_486d:
	inc  e                                           ; $486d: $1c
	ld   bc, $0000                                   ; $486e: $01 $00 $00
	ld   bc, $0458                                   ; $4871: $01 $58 $04
	ld   a, e                                        ; $4874: $7b
	sbc  d                                           ; $4875: $9a
	ld   h, e                                        ; $4876: $63
	adc  h                                           ; $4877: $8c
	ld   [hl], l                                     ; $4878: $75
	ld   h, l                                        ; $4879: $65
	ld   l, l                                        ; $487a: $6d
	sbc  a                                           ; $487b: $9f
	dec  c                                           ; $487c: $0d
	nop                                              ; $487d: $00
	dec  b                                           ; $487e: $05
	ld   b, b                                        ; $487f: $40
	ld   b, d                                        ; $4880: $42
	inc  bc                                          ; $4881: $03
	ld   b, d                                        ; $4882: $42
	ld   bc, $2801                                   ; $4883: $01 $01 $28
	nop                                              ; $4886: $00
	ld   bc, $a502                                   ; $4887: $01 $02 $a5
	inc  b                                           ; $488a: $04
	xor  d                                           ; $488b: $aa
	ld   a, l                                        ; $488c: $7d
	ld   h, c                                        ; $488d: $61
	sbc  d                                           ; $488e: $9a
	ld   e, l                                        ; $488f: $5d
	sub  a                                           ; $4890: $97
	ld   d, d                                        ; $4891: $52
	ld   a, c                                        ; $4892: $79
	dec  c                                           ; $4893: $0d
	ld   h, l                                        ; $4894: $65
	ld   [hl], h                                     ; $4895: $74
	ld   e, b                                        ; $4896: $58
	ld   e, e                                        ; $4897: $5b
	adc  h                                           ; $4898: $8c
	ld   h, l                                        ; $4899: $65
	sub  l                                           ; $489a: $95
	ld   d, h                                        ; $489b: $54
	sbc  a                                           ; $489c: $9f
	dec  c                                           ; $489d: $0d
	nop                                              ; $489e: $00
	ld   a, [bc]                                     ; $489f: $0a
	ld   bc, $9a6b                                   ; $48a0: $01 $6b $9a
	ld   [hl], l                                     ; $48a3: $75
	ld   a, l                                        ; $48a4: $7d
	sbc  [hl]                                        ; $48a5: $9e
	inc  b                                           ; $48a6: $04
	adc  a                                           ; $48a7: $8f
	inc  b                                           ; $48a8: $04
	xor  d                                           ; $48a9: $aa
	ld   a, h                                        ; $48aa: $7c
	ld   [bc], a                                     ; $48ab: $02
	or   d                                           ; $48ac: $b2
	inc  bc                                          ; $48ad: $03
	ld   c, a                                        ; $48ae: $4f
	ld   a, h                                        ; $48af: $7c
	inc  bc                                          ; $48b0: $03
	ld   l, l                                        ; $48b1: $6d
	dec  b                                           ; $48b2: $05
	add  hl, de                                      ; $48b3: $19
	and  b                                           ; $48b4: $a0
	dec  c                                           ; $48b5: $0d
	inc  bc                                          ; $48b6: $03
	ld   a, [hl]                                     ; $48b7: $7e
	sbc  l                                           ; $48b8: $9d
	sbc  b                                           ; $48b9: $98
	adc  h                                           ; $48ba: $8c
	ld   h, a                                        ; $48bb: $67
	sbc  a                                           ; $48bc: $9f
	dec  c                                           ; $48bd: $0d
	nop                                              ; $48be: $00
	ld   a, [bc]                                     ; $48bf: $0a
	dec  c                                           ; $48c0: $0d
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	rrca                                             ; $48c3: $0f
	nop                                              ; $48c4: $00
	ld   bc, $0700                                   ; $48c5: $01 $00 $07
	jp   hl                                          ; $48c8: $e9


	dec  b                                           ; $48c9: $05
	inc  bc                                          ; $48ca: $03
	ld   b, d                                        ; $48cb: $42
	ld   bc, $2504                                   ; $48cc: $01 $04 $25
	nop                                              ; $48cf: $00
	inc  e                                           ; $48d0: $1c
	ld   bc, $0000                                   ; $48d1: $01 $00 $00
	ld   [bc], a                                     ; $48d4: $02
	ld   bc, $a161                                   ; $48d5: $01 $61 $a1
	ld   a, c                                        ; $48d8: $79
	ld   l, a                                        ; $48d9: $6f
	ld   a, l                                        ; $48da: $7d
	sbc  [hl]                                        ; $48db: $9e
	ld   [$6300], sp                                 ; $48dc: $08 $00 $63
	and  c                                           ; $48df: $a1
	sbc  a                                           ; $48e0: $9f
	dec  c                                           ; $48e1: $0d
	ld   l, e                                        ; $48e2: $6b
	sbc  d                                           ; $48e3: $9a
	ld   [hl], l                                     ; $48e4: $75
	ld   a, l                                        ; $48e5: $7d
	sbc  [hl]                                        ; $48e6: $9e
	ld   h, e                                        ; $48e7: $63
	ld   [hl], c                                     ; $48e8: $71
	ld   l, e                                        ; $48e9: $6b
	ld   e, l                                        ; $48ea: $5d
	inc  bc                                          ; $48eb: $03
	ld   l, l                                        ; $48ec: $6d
	dec  b                                           ; $48ed: $05
	add  hl, de                                      ; $48ee: $19
	and  b                                           ; $48ef: $a0
	dec  c                                           ; $48f0: $0d
	dec  b                                           ; $48f1: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48f2: $cf
	adc  a                                           ; $48f3: $8f
	adc  h                                           ; $48f4: $8c
	ld   h, l                                        ; $48f5: $65
	sub  l                                           ; $48f6: $95
	ld   d, h                                        ; $48f7: $54
	sbc  a                                           ; $48f8: $9f
	dec  c                                           ; $48f9: $0d
	nop                                              ; $48fa: $00
	ld   a, [bc]                                     ; $48fb: $0a
	dec  h                                           ; $48fc: $25
	ld   bc, $1a07                                   ; $48fd: $01 $07 $1a
	inc  b                                           ; $4900: $04
	inc  bc                                          ; $4901: $03
	jr   nz, jr_046_4905                             ; $4902: $20 $01

	nop                                              ; $4904: $00

jr_046_4905:
	jr   nz, jr_046_4907                             ; $4905: $20 $00

jr_046_4907:
	inc  e                                           ; $4907: $1c
	ld   bc, $0000                                   ; $4908: $01 $00 $00
	ld   bc, $0458                                   ; $490b: $01 $58 $04
	ld   a, e                                        ; $490e: $7b
	sbc  d                                           ; $490f: $9a
	ld   h, e                                        ; $4910: $63
	adc  h                                           ; $4911: $8c
	ld   [hl], l                                     ; $4912: $75
	ld   h, l                                        ; $4913: $65
	ld   l, l                                        ; $4914: $6d
	sbc  a                                           ; $4915: $9f
	dec  c                                           ; $4916: $0d
	ld   l, b                                        ; $4917: $68
	ld   d, d                                        ; $4918: $52
	add  h                                           ; $4919: $84
	and  c                                           ; $491a: $a1
	inc  bc                                          ; $491b: $03
	ld   h, l                                        ; $491c: $65
	inc  bc                                          ; $491d: $03
	rst  $30                                         ; $491e: $f7
	ld   h, l                                        ; $491f: $65
	adc  h                                           ; $4920: $8c
	ld   h, l                                        ; $4921: $65
	ld   l, l                                        ; $4922: $6d
	ld   a, e                                        ; $4923: $7b
	sbc  a                                           ; $4924: $9f
	dec  c                                           ; $4925: $0d
	nop                                              ; $4926: $00
	ld   a, [bc]                                     ; $4927: $0a
	inc  e                                           ; $4928: $1c
	ld   bc, $0101                                   ; $4929: $01 $01 $01
	ld   bc, $9a61                                   ; $492c: $01 $61 $9a
	ld   e, c                                        ; $492f: $59
	sub  a                                           ; $4930: $97
	sub  b                                           ; $4931: $90
	sbc  [hl]                                        ; $4932: $9e
	ld   h, c                                        ; $4933: $61
	ld   a, h                                        ; $4934: $7c
	inc  bc                                          ; $4935: $03
	cp   $03                                         ; $4936: $fe $03
	add  [hl]                                        ; $4938: $86
	ld   [hl], l                                     ; $4939: $75
	dec  c                                           ; $493a: $0d
	ld   e, d                                        ; $493b: $5a
	and  c                                           ; $493c: $a1
	ld   a, [hl]                                     ; $493d: $7e
	sbc  b                                           ; $493e: $98
	adc  h                                           ; $493f: $8c
	ld   h, l                                        ; $4940: $65
	sub  l                                           ; $4941: $95
	ld   d, h                                        ; $4942: $54
	ld   a, e                                        ; $4943: $7b
	sbc  a                                           ; $4944: $9f
	dec  c                                           ; $4945: $0d
	nop                                              ; $4946: $00
	ld   a, [bc]                                     ; $4947: $0a
	dec  b                                           ; $4948: $05
	ld   b, b                                        ; $4949: $40
	ld   b, d                                        ; $494a: $42
	inc  bc                                          ; $494b: $03
	ld   b, d                                        ; $494c: $42
	ld   bc, $2801                                   ; $494d: $01 $01 $28
	nop                                              ; $4950: $00
	inc  e                                           ; $4951: $1c
	ld   bc, $0000                                   ; $4952: $01 $00 $00
	ld   bc, $9a6b                                   ; $4955: $01 $6b $9a
	ld   [hl], l                                     ; $4958: $75
	ld   a, l                                        ; $4959: $7d
	sbc  [hl]                                        ; $495a: $9e
	inc  b                                           ; $495b: $04
	adc  a                                           ; $495c: $8f
	inc  b                                           ; $495d: $04
	xor  d                                           ; $495e: $aa
	ld   a, h                                        ; $495f: $7c
	ld   [bc], a                                     ; $4960: $02
	or   d                                           ; $4961: $b2
	inc  bc                                          ; $4962: $03
	ld   c, a                                        ; $4963: $4f
	ld   a, h                                        ; $4964: $7c
	inc  bc                                          ; $4965: $03
	ld   l, l                                        ; $4966: $6d
	dec  b                                           ; $4967: $05
	add  hl, de                                      ; $4968: $19
	and  b                                           ; $4969: $a0
	dec  c                                           ; $496a: $0d
	inc  bc                                          ; $496b: $03
	ld   a, [hl]                                     ; $496c: $7e
	sbc  l                                           ; $496d: $9d
	sbc  b                                           ; $496e: $98
	adc  h                                           ; $496f: $8c
	ld   h, a                                        ; $4970: $67
	sbc  a                                           ; $4971: $9f
	dec  c                                           ; $4972: $0d
	nop                                              ; $4973: $00
	ld   a, [bc]                                     ; $4974: $0a
	dec  c                                           ; $4975: $0d
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	rrca                                             ; $4978: $0f
	nop                                              ; $4979: $00
	ld   bc, $1c00                                   ; $497a: $01 $00 $1c
	ld   bc, $0000                                   ; $497d: $01 $00 $00
	ld   [bc], a                                     ; $4980: $02
	ld   bc, $a161                                   ; $4981: $01 $61 $a1
	ld   a, c                                        ; $4984: $79
	ld   l, a                                        ; $4985: $6f
	ld   a, l                                        ; $4986: $7d
	sbc  [hl]                                        ; $4987: $9e
	ld   [$6300], sp                                 ; $4988: $08 $00 $63
	and  c                                           ; $498b: $a1
	sbc  a                                           ; $498c: $9f
	dec  c                                           ; $498d: $0d
	ld   l, e                                        ; $498e: $6b
	sbc  d                                           ; $498f: $9a
	ld   [hl], l                                     ; $4990: $75
	ld   a, l                                        ; $4991: $7d
	sbc  [hl]                                        ; $4992: $9e
	ld   h, e                                        ; $4993: $63
	ld   [hl], c                                     ; $4994: $71
	ld   l, e                                        ; $4995: $6b
	ld   e, l                                        ; $4996: $5d
	inc  bc                                          ; $4997: $03
	ld   l, l                                        ; $4998: $6d
	dec  b                                           ; $4999: $05
	add  hl, de                                      ; $499a: $19
	and  b                                           ; $499b: $a0
	dec  c                                           ; $499c: $0d
	dec  b                                           ; $499d: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $499e: $cf
	adc  a                                           ; $499f: $8f
	adc  h                                           ; $49a0: $8c
	ld   h, l                                        ; $49a1: $65
	sub  l                                           ; $49a2: $95
	ld   d, h                                        ; $49a3: $54
	sbc  a                                           ; $49a4: $9f
	dec  c                                           ; $49a5: $0d
	nop                                              ; $49a6: $00
	ld   a, [bc]                                     ; $49a7: $0a
	dec  h                                           ; $49a8: $25
	ld   bc, $1a07                                   ; $49a9: $01 $07 $1a
	inc  b                                           ; $49ac: $04
	inc  bc                                          ; $49ad: $03
	jr   nz, jr_046_49b1                             ; $49ae: $20 $01

	nop                                              ; $49b0: $00

jr_046_49b1:
	jr   nz, jr_046_49b3                             ; $49b1: $20 $00

jr_046_49b3:
	inc  e                                           ; $49b3: $1c
	ld   bc, $0101                                   ; $49b4: $01 $01 $01
	ld   bc, $0458                                   ; $49b7: $01 $58 $04
	ld   a, e                                        ; $49ba: $7b
	sbc  d                                           ; $49bb: $9a
	ld   h, e                                        ; $49bc: $63
	adc  h                                           ; $49bd: $8c
	ld   [hl], l                                     ; $49be: $75
	ld   h, l                                        ; $49bf: $65
	ld   l, l                                        ; $49c0: $6d
	sbc  a                                           ; $49c1: $9f
	dec  c                                           ; $49c2: $0d
	ld   l, b                                        ; $49c3: $68
	ld   d, d                                        ; $49c4: $52
	add  h                                           ; $49c5: $84
	and  c                                           ; $49c6: $a1
	sbc  [hl]                                        ; $49c7: $9e
	ld   d, d                                        ; $49c8: $52
	ld   d, d                                        ; $49c9: $52
	ld   [bc], a                                     ; $49ca: $02
	scf                                              ; $49cb: $37
	ld   h, [hl]                                     ; $49cc: $66
	ld   [hl], l                                     ; $49cd: $75
	ld   h, l                                        ; $49ce: $65
	ld   l, l                                        ; $49cf: $6d
	sub  [hl]                                        ; $49d0: $96
	sbc  a                                           ; $49d1: $9f
	dec  c                                           ; $49d2: $0d
	nop                                              ; $49d3: $00
	ld   a, [bc]                                     ; $49d4: $0a
	dec  b                                           ; $49d5: $05
	ld   b, b                                        ; $49d6: $40
	ld   b, d                                        ; $49d7: $42
	inc  bc                                          ; $49d8: $03
	ld   b, d                                        ; $49d9: $42
	ld   bc, $2801                                   ; $49da: $01 $01 $28
	nop                                              ; $49dd: $00
	inc  e                                           ; $49de: $1c
	ld   bc, $0000                                   ; $49df: $01 $00 $00
	ld   bc, $9a6b                                   ; $49e2: $01 $6b $9a
	ld   [hl], l                                     ; $49e5: $75
	ld   a, l                                        ; $49e6: $7d
	sbc  [hl]                                        ; $49e7: $9e
	inc  b                                           ; $49e8: $04
	adc  a                                           ; $49e9: $8f
	inc  b                                           ; $49ea: $04
	xor  d                                           ; $49eb: $aa
	ld   a, h                                        ; $49ec: $7c
	ld   [bc], a                                     ; $49ed: $02
	or   d                                           ; $49ee: $b2
	inc  bc                                          ; $49ef: $03
	ld   c, a                                        ; $49f0: $4f
	ld   a, h                                        ; $49f1: $7c
	inc  bc                                          ; $49f2: $03
	ld   l, l                                        ; $49f3: $6d
	dec  b                                           ; $49f4: $05
	add  hl, de                                      ; $49f5: $19
	and  b                                           ; $49f6: $a0
	dec  c                                           ; $49f7: $0d
	inc  bc                                          ; $49f8: $03
	ld   a, [hl]                                     ; $49f9: $7e
	sbc  l                                           ; $49fa: $9d
	sbc  b                                           ; $49fb: $98
	adc  h                                           ; $49fc: $8c
	ld   h, a                                        ; $49fd: $67
	sbc  a                                           ; $49fe: $9f
	dec  c                                           ; $49ff: $0d
	nop                                              ; $4a00: $00
	ld   a, [bc]                                     ; $4a01: $0a
	dec  c                                           ; $4a02: $0d
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	rrca                                             ; $4a05: $0f
	nop                                              ; $4a06: $00
	ld   bc, $0700                                   ; $4a07: $01 $00 $07
	ld   e, [hl]                                     ; $4a0a: $5e
	rlca                                             ; $4a0b: $07
	inc  bc                                          ; $4a0c: $03
	ld   b, d                                        ; $4a0d: $42
	ld   bc, $2507                                   ; $4a0e: $01 $07 $25
	nop                                              ; $4a11: $00
	inc  e                                           ; $4a12: $1c
	ld   bc, $0000                                   ; $4a13: $01 $00 $00
	ld   [bc], a                                     ; $4a16: $02
	ld   bc, $a161                                   ; $4a17: $01 $61 $a1
	ld   a, c                                        ; $4a1a: $79
	ld   l, a                                        ; $4a1b: $6f
	ld   a, l                                        ; $4a1c: $7d
	sbc  [hl]                                        ; $4a1d: $9e
	ld   [$6300], sp                                 ; $4a1e: $08 $00 $63
	and  c                                           ; $4a21: $a1
	sbc  a                                           ; $4a22: $9f
	dec  c                                           ; $4a23: $0d
	ld   l, e                                        ; $4a24: $6b
	sbc  d                                           ; $4a25: $9a
	ld   [hl], l                                     ; $4a26: $75
	ld   a, l                                        ; $4a27: $7d
	sbc  [hl]                                        ; $4a28: $9e
	ld   h, e                                        ; $4a29: $63
	ld   [hl], c                                     ; $4a2a: $71
	ld   l, e                                        ; $4a2b: $6b
	ld   e, l                                        ; $4a2c: $5d
	inc  bc                                          ; $4a2d: $03
	ld   l, l                                        ; $4a2e: $6d
	dec  b                                           ; $4a2f: $05
	add  hl, de                                      ; $4a30: $19
	and  b                                           ; $4a31: $a0
	dec  c                                           ; $4a32: $0d
	dec  b                                           ; $4a33: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a34: $cf
	adc  a                                           ; $4a35: $8f
	adc  h                                           ; $4a36: $8c
	ld   h, l                                        ; $4a37: $65
	sub  l                                           ; $4a38: $95
	ld   d, h                                        ; $4a39: $54
	sbc  a                                           ; $4a3a: $9f
	dec  c                                           ; $4a3b: $0d
	nop                                              ; $4a3c: $00
	ld   a, [bc]                                     ; $4a3d: $0a
	dec  h                                           ; $4a3e: $25
	ld   bc, $1a07                                   ; $4a3f: $01 $07 $1a
	inc  b                                           ; $4a42: $04
	inc  bc                                          ; $4a43: $03
	jr   nz, jr_046_4a47                             ; $4a44: $20 $01

	nop                                              ; $4a46: $00

jr_046_4a47:
	jr   nz, jr_046_4a49                             ; $4a47: $20 $00

jr_046_4a49:
	inc  e                                           ; $4a49: $1c
	ld   bc, $0101                                   ; $4a4a: $01 $01 $01
	ld   bc, $0458                                   ; $4a4d: $01 $58 $04
	ld   a, e                                        ; $4a50: $7b
	sbc  d                                           ; $4a51: $9a
	ld   h, e                                        ; $4a52: $63
	adc  h                                           ; $4a53: $8c
	ld   [hl], l                                     ; $4a54: $75
	ld   h, l                                        ; $4a55: $65
	ld   l, l                                        ; $4a56: $6d
	sbc  a                                           ; $4a57: $9f
	dec  c                                           ; $4a58: $0d
	inc  bc                                          ; $4a59: $03
	and  [hl]                                        ; $4a5a: $a6
	dec  b                                           ; $4a5b: $05
	call nc, Call_046_6597                           ; $4a5c: $d4 $97 $65
	ld   d, d                                        ; $4a5f: $52
	inc  bc                                          ; $4a60: $03
	ld   h, l                                        ; $4a61: $65
	inc  bc                                          ; $4a62: $03
	rst  $30                                         ; $4a63: $f7
	add  h                                           ; $4a64: $84
	sbc  b                                           ; $4a65: $98
	ld   [hl], l                                     ; $4a66: $75
	ld   h, a                                        ; $4a67: $67
	ld   a, e                                        ; $4a68: $7b
	ld   a, [$630d]                                  ; $4a69: $fa $0d $63
	ld   h, a                                        ; $4a6c: $67
	ld   e, d                                        ; $4a6d: $5a
	ld   [$6300], sp                                 ; $4a6e: $08 $00 $63
	and  c                                           ; $4a71: $a1
	sbc  a                                           ; $4a72: $9f
	dec  c                                           ; $4a73: $0d
	nop                                              ; $4a74: $00
	ld   a, [bc]                                     ; $4a75: $0a
	ld   bc, $668c                                   ; $4a76: $01 $8c $66
	adc  a                                           ; $4a79: $8f
	ld   a, c                                        ; $4a7a: $79
	inc  bc                                          ; $4a7b: $03
	ld   l, l                                        ; $4a7c: $6d
	dec  b                                           ; $4a7d: $05
	add  hl, de                                      ; $4a7e: $19
	ld   h, l                                        ; $4a7f: $65
	ld   [hl], h                                     ; $4a80: $74
	ld   e, e                                        ; $4a81: $5b
	ld   l, l                                        ; $4a82: $6d
	halt                                             ; $4a83: $76
	ld   a, l                                        ; $4a84: $7d
	ld   d, d                                        ; $4a85: $52
	ld   d, [hl]                                     ; $4a86: $56
	dec  c                                           ; $4a87: $0d
	ld   h, c                                        ; $4a88: $61
	ld   h, c                                        ; $4a89: $61
	adc  h                                           ; $4a8a: $8c
	ld   [hl], l                                     ; $4a8b: $75
	inc  bc                                          ; $4a8c: $03
	ld   h, l                                        ; $4a8d: $65
	inc  bc                                          ; $4a8e: $03
	rst  $30                                         ; $4a8f: $f7
	ld   h, a                                        ; $4a90: $67
	sbc  c                                           ; $4a91: $99
	ld   a, b                                        ; $4a92: $78
	and  c                                           ; $4a93: $a1
	ld   [hl], h                                     ; $4a94: $74
	rst  $38                                         ; $4a95: $ff
	rst  $38                                         ; $4a96: $ff
	dec  c                                           ; $4a97: $0d
	ld   d, b                                        ; $4a98: $50
	ld   l, l                                        ; $4a99: $6d
	ld   h, l                                        ; $4a9a: $65
	ld   [bc], a                                     ; $4a9b: $02
	scf                                              ; $4a9c: $37
	inc  bc                                          ; $4a9d: $03
	ld   [hl], l                                     ; $4a9e: $75
	ld   h, l                                        ; $4a9f: $65
	adc  h                                           ; $4aa0: $8c
	ld   h, l                                        ; $4aa1: $65
	ld   l, l                                        ; $4aa2: $6d
	sbc  a                                           ; $4aa3: $9f
	dec  c                                           ; $4aa4: $0d
	nop                                              ; $4aa5: $00
	ld   a, [bc]                                     ; $4aa6: $0a
	dec  b                                           ; $4aa7: $05
	ld   b, b                                        ; $4aa8: $40
	ld   b, d                                        ; $4aa9: $42
	inc  bc                                          ; $4aaa: $03
	ld   b, d                                        ; $4aab: $42
	ld   bc, $2801                                   ; $4aac: $01 $01 $28
	nop                                              ; $4aaf: $00
	ld   bc, $9a61                                   ; $4ab0: $01 $61 $9a
	ld   e, c                                        ; $4ab3: $59
	sub  a                                           ; $4ab4: $97
	sub  b                                           ; $4ab5: $90
	sbc  [hl]                                        ; $4ab6: $9e
	ld   e, d                                        ; $4ab7: $5a
	and  c                                           ; $4ab8: $a1
	ld   a, [hl]                                     ; $4ab9: $7e
	ld   [hl], c                                     ; $4aba: $71
	ld   [hl], h                                     ; $4abb: $74
	dec  c                                           ; $4abc: $0d
	ld   e, l                                        ; $4abd: $5d
	ld   l, [hl]                                     ; $4abe: $6e
	ld   h, e                                        ; $4abf: $63
	ld   d, d                                        ; $4ac0: $52
	ld   a, e                                        ; $4ac1: $7b
	sbc  a                                           ; $4ac2: $9f
	dec  c                                           ; $4ac3: $0d
	nop                                              ; $4ac4: $00
	ld   a, [bc]                                     ; $4ac5: $0a
	inc  e                                           ; $4ac6: $1c
	ld   bc, $0000                                   ; $4ac7: $01 $00 $00
	ld   bc, $9a6b                                   ; $4aca: $01 $6b $9a
	ld   [hl], l                                     ; $4acd: $75
	ld   a, l                                        ; $4ace: $7d
	sbc  [hl]                                        ; $4acf: $9e
	inc  b                                           ; $4ad0: $04
	adc  a                                           ; $4ad1: $8f
	inc  b                                           ; $4ad2: $04
	xor  d                                           ; $4ad3: $aa
	ld   a, h                                        ; $4ad4: $7c
	ld   [bc], a                                     ; $4ad5: $02
	or   d                                           ; $4ad6: $b2
	inc  bc                                          ; $4ad7: $03
	ld   c, a                                        ; $4ad8: $4f
	ld   a, h                                        ; $4ad9: $7c
	inc  bc                                          ; $4ada: $03
	ld   l, l                                        ; $4adb: $6d
	dec  b                                           ; $4adc: $05
	add  hl, de                                      ; $4add: $19
	and  b                                           ; $4ade: $a0
	dec  c                                           ; $4adf: $0d
	inc  bc                                          ; $4ae0: $03
	ld   a, [hl]                                     ; $4ae1: $7e
	sbc  l                                           ; $4ae2: $9d
	sbc  b                                           ; $4ae3: $98
	adc  h                                           ; $4ae4: $8c
	ld   h, a                                        ; $4ae5: $67
	sbc  a                                           ; $4ae6: $9f
	dec  c                                           ; $4ae7: $0d
	nop                                              ; $4ae8: $00
	ld   a, [bc]                                     ; $4ae9: $0a
	dec  c                                           ; $4aea: $0d
	nop                                              ; $4aeb: $00
	nop                                              ; $4aec: $00
	rrca                                             ; $4aed: $0f
	nop                                              ; $4aee: $00
	ld   bc, $1c00                                   ; $4aef: $01 $00 $1c
	ld   bc, $0000                                   ; $4af2: $01 $00 $00
	ld   [bc], a                                     ; $4af5: $02
	ld   bc, $a161                                   ; $4af6: $01 $61 $a1
	ld   a, c                                        ; $4af9: $79
	ld   l, a                                        ; $4afa: $6f
	ld   a, l                                        ; $4afb: $7d
	sbc  [hl]                                        ; $4afc: $9e
	ld   [$6300], sp                                 ; $4afd: $08 $00 $63
	and  c                                           ; $4b00: $a1
	sbc  a                                           ; $4b01: $9f
	dec  c                                           ; $4b02: $0d
	ld   l, e                                        ; $4b03: $6b
	sbc  d                                           ; $4b04: $9a
	ld   [hl], l                                     ; $4b05: $75
	ld   a, l                                        ; $4b06: $7d
	sbc  [hl]                                        ; $4b07: $9e
	ld   h, e                                        ; $4b08: $63
	ld   [hl], c                                     ; $4b09: $71
	ld   l, e                                        ; $4b0a: $6b
	ld   e, l                                        ; $4b0b: $5d
	inc  bc                                          ; $4b0c: $03
	ld   l, l                                        ; $4b0d: $6d
	dec  b                                           ; $4b0e: $05
	add  hl, de                                      ; $4b0f: $19
	and  b                                           ; $4b10: $a0
	dec  c                                           ; $4b11: $0d
	dec  b                                           ; $4b12: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b13: $cf
	adc  a                                           ; $4b14: $8f
	adc  h                                           ; $4b15: $8c
	ld   h, l                                        ; $4b16: $65
	sub  l                                           ; $4b17: $95
	ld   d, h                                        ; $4b18: $54
	sbc  a                                           ; $4b19: $9f
	dec  c                                           ; $4b1a: $0d
	nop                                              ; $4b1b: $00
	ld   a, [bc]                                     ; $4b1c: $0a
	dec  h                                           ; $4b1d: $25
	ld   bc, $1a07                                   ; $4b1e: $01 $07 $1a
	inc  b                                           ; $4b21: $04
	inc  bc                                          ; $4b22: $03
	jr   nz, jr_046_4b26                             ; $4b23: $20 $01

	nop                                              ; $4b25: $00

jr_046_4b26:
	jr   nz, jr_046_4b28                             ; $4b26: $20 $00

jr_046_4b28:
	inc  e                                           ; $4b28: $1c
	ld   bc, $0101                                   ; $4b29: $01 $01 $01
	ld   bc, $0458                                   ; $4b2c: $01 $58 $04
	ld   a, e                                        ; $4b2f: $7b
	sbc  d                                           ; $4b30: $9a
	ld   h, e                                        ; $4b31: $63
	adc  h                                           ; $4b32: $8c
	ld   [hl], l                                     ; $4b33: $75
	ld   h, l                                        ; $4b34: $65
	ld   l, l                                        ; $4b35: $6d
	sbc  a                                           ; $4b36: $9f
	dec  c                                           ; $4b37: $0d
	ld   d, d                                        ; $4b38: $52
	ld   d, d                                        ; $4b39: $52
	inc  bc                                          ; $4b3a: $03
	cp   $03                                         ; $4b3b: $fe $03
	add  [hl]                                        ; $4b3d: $86
	ld   [hl], l                                     ; $4b3e: $75
	ld   h, l                                        ; $4b3f: $65
	ld   l, l                                        ; $4b40: $6d
	sub  [hl]                                        ; $4b41: $96
	sbc  a                                           ; $4b42: $9f
	dec  c                                           ; $4b43: $0d
	nop                                              ; $4b44: $00
	dec  b                                           ; $4b45: $05
	ld   b, b                                        ; $4b46: $40
	ld   b, d                                        ; $4b47: $42
	inc  bc                                          ; $4b48: $03
	ld   b, d                                        ; $4b49: $42
	ld   bc, $2801                                   ; $4b4a: $01 $01 $28
	nop                                              ; $4b4d: $00
	ld   bc, $d6d6                                   ; $4b4e: $01 $d6 $d6
	sub  $ff                                         ; $4b51: $d6 $ff
	rst  $38                                         ; $4b53: $ff
	dec  c                                           ; $4b54: $0d
	nop                                              ; $4b55: $00
	ld   a, [bc]                                     ; $4b56: $0a
	inc  e                                           ; $4b57: $1c
	ld   bc, $0000                                   ; $4b58: $01 $00 $00
	ld   bc, $9a6b                                   ; $4b5b: $01 $6b $9a
	ld   [hl], l                                     ; $4b5e: $75
	ld   a, l                                        ; $4b5f: $7d
	sbc  [hl]                                        ; $4b60: $9e
	inc  b                                           ; $4b61: $04
	adc  a                                           ; $4b62: $8f
	inc  b                                           ; $4b63: $04
	xor  d                                           ; $4b64: $aa
	ld   a, h                                        ; $4b65: $7c
	ld   [bc], a                                     ; $4b66: $02
	or   d                                           ; $4b67: $b2
	inc  bc                                          ; $4b68: $03
	ld   c, a                                        ; $4b69: $4f
	ld   a, h                                        ; $4b6a: $7c
	inc  bc                                          ; $4b6b: $03
	ld   l, l                                        ; $4b6c: $6d
	dec  b                                           ; $4b6d: $05
	add  hl, de                                      ; $4b6e: $19
	and  b                                           ; $4b6f: $a0
	dec  c                                           ; $4b70: $0d
	inc  bc                                          ; $4b71: $03
	ld   a, [hl]                                     ; $4b72: $7e
	sbc  l                                           ; $4b73: $9d
	sbc  b                                           ; $4b74: $98
	adc  h                                           ; $4b75: $8c
	ld   h, a                                        ; $4b76: $67
	sbc  a                                           ; $4b77: $9f
	dec  c                                           ; $4b78: $0d
	nop                                              ; $4b79: $00
	ld   a, [bc]                                     ; $4b7a: $0a
	dec  c                                           ; $4b7b: $0d
	nop                                              ; $4b7c: $00
	nop                                              ; $4b7d: $00
	rrca                                             ; $4b7e: $0f
	nop                                              ; $4b7f: $00
	ld   bc, $0e00                                   ; $4b80: $01 $00 $0e
	ld   bc, $0702                                   ; $4b83: $01 $02 $07
	jr   nc, jr_046_4b90                             ; $4b86: $30 $08

	inc  bc                                          ; $4b88: $03
	jr   nz, jr_046_4b8c                             ; $4b89: $20 $01

	ld   b, b                                        ; $4b8b: $40

jr_046_4b8c:
	dec  h                                           ; $4b8c: $25
	nop                                              ; $4b8d: $00
	dec  b                                           ; $4b8e: $05
	ld   b, b                                        ; $4b8f: $40

jr_046_4b90:
	ld   c, [hl]                                     ; $4b90: $4e
	ld   bc, $0000                                   ; $4b91: $01 $00 $00
	ld   bc, $ffff                                   ; $4b94: $01 $ff $ff
	ld   d, h                                        ; $4b97: $54
	db   $fc                                         ; $4b98: $fc
	and  c                                           ; $4b99: $a1
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	dec  c                                           ; $4b9c: $0d
	ld   a, b                                        ; $4b9d: $78
	and  c                                           ; $4b9e: $a1
	ld   l, [hl]                                     ; $4b9f: $6e
	ld   e, c                                        ; $4ba0: $59
	inc  b                                           ; $4ba1: $04
	dec  c                                           ; $4ba2: $0d
	inc  bc                                          ; $4ba3: $03
	cp   $5a                                         ; $4ba4: $fe $5a
	ld   [bc], a                                     ; $4ba6: $02
	jr   z, jr_046_4bfb                              ; $4ba7: $28 $52

	ld   a, b                                        ; $4ba9: $78
	rst  $38                                         ; $4baa: $ff
	rst  $38                                         ; $4bab: $ff
	dec  c                                           ; $4bac: $0d
	ld   [bc], a                                     ; $4bad: $02
	and  l                                           ; $4bae: $a5
	inc  b                                           ; $4baf: $04
	xor  d                                           ; $4bb0: $aa
	ld   a, h                                        ; $4bb1: $7c
	inc  bc                                          ; $4bb2: $03
	ld   l, l                                        ; $4bb3: $6d
	dec  b                                           ; $4bb4: $05
	add  hl, de                                      ; $4bb5: $19
	ld   a, l                                        ; $4bb6: $7d
	inc  bc                                          ; $4bb7: $03
	and  a                                           ; $4bb8: $a7
	adc  [hl]                                        ; $4bb9: $8e
	ld   e, c                                        ; $4bba: $59
	ld   a, b                                        ; $4bbb: $78
	sbc  a                                           ; $4bbc: $9f
	dec  c                                           ; $4bbd: $0d
	nop                                              ; $4bbe: $00
	ld   a, [bc]                                     ; $4bbf: $0a
	ld   b, $5b                                      ; $4bc0: $06 $5b
	ld   [$0201], sp                                 ; $4bc2: $08 $01 $02
	and  l                                           ; $4bc5: $a5
	inc  b                                           ; $4bc6: $04
	xor  d                                           ; $4bc7: $aa
	ld   a, l                                        ; $4bc8: $7d
	ld   a, b                                        ; $4bc9: $78
	and  c                                           ; $4bca: $a1
	ld   l, [hl]                                     ; $4bcb: $6e
	ld   e, c                                        ; $4bcc: $59
	inc  bc                                          ; $4bcd: $03
	ld   l, l                                        ; $4bce: $6d
	dec  b                                           ; $4bcf: $05
	add  hl, de                                      ; $4bd0: $19
	ld   a, c                                        ; $4bd1: $79
	dec  c                                           ; $4bd2: $0d
	ld   [bc], a                                     ; $4bd3: $02
	ld   a, a                                        ; $4bd4: $7f
	ld   e, e                                        ; $4bd5: $5b
	ld   l, l                                        ; $4bd6: $6d
	ld   e, l                                        ; $4bd7: $5d
	ld   a, b                                        ; $4bd8: $78
	ld   d, d                                        ; $4bd9: $52
	ld   a, b                                        ; $4bda: $78
	ld   d, b                                        ; $4bdb: $50
	rst  $38                                         ; $4bdc: $ff
	rst  $38                                         ; $4bdd: $ff
	dec  c                                           ; $4bde: $0d
	inc  bc                                          ; $4bdf: $03
	ld   l, l                                        ; $4be0: $6d
	dec  b                                           ; $4be1: $05
	add  hl, de                                      ; $4be2: $19
	rst  $38                                         ; $4be3: $ff
	rst  $38                                         ; $4be4: $ff
	inc  bc                                          ; $4be5: $03
	and  a                                           ; $4be6: $a7
	adc  [hl]                                        ; $4be7: $8e
	ld   e, c                                        ; $4be8: $59
	ld   a, b                                        ; $4be9: $78
	sbc  a                                           ; $4bea: $9f
	dec  c                                           ; $4beb: $0d
	nop                                              ; $4bec: $00
	ld   a, [bc]                                     ; $4bed: $0a
	inc  hl                                          ; $4bee: $23
	ld   b, d                                        ; $4bef: $42
	inc  d                                           ; $4bf0: $14
	ld   b, $01                                      ; $4bf1: $06 $01
	add  hl, bc                                      ; $4bf3: $09
	ld   e, $01                                      ; $4bf4: $1e $01
	ld   h, e                                        ; $4bf6: $63
	ld   e, l                                        ; $4bf7: $5d
	sub  a                                           ; $4bf8: $97
	ld   h, e                                        ; $4bf9: $63
	and  c                                           ; $4bfa: $a1

jr_046_4bfb:
	sbc  [hl]                                        ; $4bfb: $9e
	dec  c                                           ; $4bfc: $0d
	ld   d, d                                        ; $4bfd: $52
	sub  a                                           ; $4bfe: $97
	ld   [hl], c                                     ; $4bff: $71
	ld   h, l                                        ; $4c00: $65
	sub  c                                           ; $4c01: $91
	ld   d, d                                        ; $4c02: $52
	adc  h                                           ; $4c03: $8c
	ld   h, a                                        ; $4c04: $67
	ld   e, c                                        ; $4c05: $59
	ld   sp, hl                                      ; $4c06: $f9
	dec  c                                           ; $4c07: $0d
	nop                                              ; $4c08: $00
	ld   a, [bc]                                     ; $4c09: $0a
	rrca                                             ; $4c0a: $0f
	ld   bc, $0100                                   ; $4c0b: $01 $00 $01
	ld   a, l                                        ; $4c0e: $7d
	ei                                               ; $4c0f: $fb
	ld   d, d                                        ; $4c10: $52
	sbc  a                                           ; $4c11: $9f
	dec  c                                           ; $4c12: $0d
	ld   d, d                                        ; $4c13: $52
	adc  h                                           ; $4c14: $8c
	ld   d, b                                        ; $4c15: $50
	ld   e, a                                        ; $4c16: $5f
	adc  h                                           ; $4c17: $8c
	ld   h, a                                        ; $4c18: $67
	sbc  a                                           ; $4c19: $9f
	dec  c                                           ; $4c1a: $0d
	nop                                              ; $4c1b: $00
	ld   a, [bc]                                     ; $4c1c: $0a
	inc  d                                           ; $4c1d: $14
	ld   a, [bc]                                     ; $4c1e: $0a
	ld   bc, $430e                                   ; $4c1f: $01 $0e $43
	inc  e                                           ; $4c22: $1c
	ld   bc, $0101                                   ; $4c23: $01 $01 $01
	ld   bc, $7d58                                   ; $4c26: $01 $58 $7d
	sub  [hl]                                        ; $4c29: $96
	ld   d, h                                        ; $4c2a: $54
	ld   h, d                                        ; $4c2b: $62
	ld   h, h                                        ; $4c2c: $64
	ld   d, d                                        ; $4c2d: $52
	adc  h                                           ; $4c2e: $8c
	ld   h, a                                        ; $4c2f: $67
	sbc  a                                           ; $4c30: $9f
	dec  c                                           ; $4c31: $0d
	ld   [$6300], sp                                 ; $4c32: $08 $00 $63
	and  c                                           ; $4c35: $a1
	sbc  a                                           ; $4c36: $9f
	dec  c                                           ; $4c37: $0d
	nop                                              ; $4c38: $00
	ld   a, [bc]                                     ; $4c39: $0a
	rlca                                             ; $4c3a: $07
	ld   c, e                                        ; $4c3b: $4b
	add  hl, bc                                      ; $4c3c: $09
	inc  bc                                          ; $4c3d: $03
	jr   nz, jr_046_4c41                             ; $4c3e: $20 $01

	ld   b, b                                        ; $4c40: $40

jr_046_4c41:
	dec  h                                           ; $4c41: $25
	nop                                              ; $4c42: $00
	inc  e                                           ; $4c43: $1c
	ld   bc, $0404                                   ; $4c44: $01 $04 $04
	ld   bc, $ffff                                   ; $4c47: $01 $ff $ff
	ld   d, b                                        ; $4c4a: $50
	sub  a                                           ; $4c4b: $97
	ld   sp, hl                                      ; $4c4c: $f9
	dec  c                                           ; $4c4d: $0d
	ld   [hl], a                                     ; $4c4e: $77
	ld   d, h                                        ; $4c4f: $54
	ld   h, l                                        ; $4c50: $65
	ld   l, l                                        ; $4c51: $6d
	and  c                                           ; $4c52: $a1
	ld   [hl], l                                     ; $4c53: $75
	ld   h, a                                        ; $4c54: $67
	ld   e, c                                        ; $4c55: $59
	sbc  [hl]                                        ; $4c56: $9e
	dec  c                                           ; $4c57: $0d
	ld   [bc], a                                     ; $4c58: $02
	ld   [hl], d                                     ; $4c59: $72
	inc  bc                                          ; $4c5a: $03
	dec  bc                                          ; $4c5b: $0b
	ld   e, d                                        ; $4c5c: $5a
	sbc  l                                           ; $4c5d: $9d
	sbc  c                                           ; $4c5e: $99
	ld   d, d                                        ; $4c5f: $52
	ld   [hl], l                                     ; $4c60: $75
	ld   h, a                                        ; $4c61: $67
	sub  [hl]                                        ; $4c62: $96
	ld   sp, hl                                      ; $4c63: $f9
	dec  c                                           ; $4c64: $0d
	nop                                              ; $4c65: $00
	ld   a, [bc]                                     ; $4c66: $0a
	rrca                                             ; $4c67: $0f
	nop                                              ; $4c68: $00
	ld   bc, $7d01                                   ; $4c69: $01 $01 $7d
	ld   d, d                                        ; $4c6c: $52
	sbc  [hl]                                        ; $4c6d: $9e
	ld   l, a                                        ; $4c6e: $6f
	sub  l                                           ; $4c6f: $95
	ld   [hl], c                                     ; $4c70: $71
	halt                                             ; $4c71: $76
	inc  b                                           ; $4c72: $04
	dec  c                                           ; $4c73: $0d
	inc  bc                                          ; $4c74: $03
	cp   $5a                                         ; $4c75: $fe $5a
	dec  c                                           ; $4c77: $0d
	sbc  l                                           ; $4c78: $9d
	sbc  c                                           ; $4c79: $99
	ld   e, l                                        ; $4c7a: $5d
	ld   [hl], h                                     ; $4c7b: $74
	rst  $38                                         ; $4c7c: $ff
	rst  $38                                         ; $4c7d: $ff
	ld   [bc], a                                     ; $4c7e: $02
	and  l                                           ; $4c7f: $a5
	inc  b                                           ; $4c80: $04
	xor  d                                           ; $4c81: $aa
	ld   a, h                                        ; $4c82: $7c
	inc  bc                                          ; $4c83: $03
	ld   l, l                                        ; $4c84: $6d
	dec  b                                           ; $4c85: $05
	add  hl, de                                      ; $4c86: $19
	ld   a, l                                        ; $4c87: $7d
	dec  c                                           ; $4c88: $0d
	inc  bc                                          ; $4c89: $03
	and  a                                           ; $4c8a: $a7
	adc  h                                           ; $4c8b: $8c
	ld   l, c                                        ; $4c8c: $69
	ld   [hl], h                                     ; $4c8d: $74
	adc  c                                           ; $4c8e: $89
	ld   h, l                                        ; $4c8f: $65
	ld   d, d                                        ; $4c90: $52
	ld   a, h                                        ; $4c91: $7c
	ld   [hl], l                                     ; $4c92: $75
	ld   h, a                                        ; $4c93: $67
	ld   e, d                                        ; $4c94: $5a
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	dec  c                                           ; $4c97: $0d
	nop                                              ; $4c98: $00
	ld   a, [bc]                                     ; $4c99: $0a
	inc  e                                           ; $4c9a: $1c
	ld   bc, $0000                                   ; $4c9b: $01 $00 $00
	ld   bc, $599d                                   ; $4c9e: $01 $9d $59
	sbc  b                                           ; $4ca1: $98
	adc  h                                           ; $4ca2: $8c
	ld   h, l                                        ; $4ca3: $65
	ld   l, l                                        ; $4ca4: $6d
	sbc  a                                           ; $4ca5: $9f
	dec  c                                           ; $4ca6: $0d
	ld   [hl], l                                     ; $4ca7: $75
	ld   a, l                                        ; $4ca8: $7d
	sbc  [hl]                                        ; $4ca9: $9e
	ld   [bc], a                                     ; $4caa: $02
	and  l                                           ; $4cab: $a5
	inc  b                                           ; $4cac: $04
	xor  d                                           ; $4cad: $aa
	ld   a, h                                        ; $4cae: $7c
	inc  bc                                          ; $4caf: $03
	ld   l, l                                        ; $4cb0: $6d
	dec  b                                           ; $4cb1: $05
	add  hl, de                                      ; $4cb2: $19
	ld   a, l                                        ; $4cb3: $7d
	dec  c                                           ; $4cb4: $0d
	ld   e, b                                        ; $4cb5: $58
	inc  bc                                          ; $4cb6: $03
	and  a                                           ; $4cb7: $a7
	adc  l                                           ; $4cb8: $8d
	ld   a, c                                        ; $4cb9: $79
	ld   h, l                                        ; $4cba: $65
	adc  h                                           ; $4cbb: $8c
	ld   h, l                                        ; $4cbc: $65
	sub  l                                           ; $4cbd: $95
	ld   d, h                                        ; $4cbe: $54
	sbc  a                                           ; $4cbf: $9f
	dec  c                                           ; $4cc0: $0d
	nop                                              ; $4cc1: $00
	ld   a, [bc]                                     ; $4cc2: $0a
	ld   bc, $9a6b                                   ; $4cc3: $01 $6b $9a
	ld   [hl], l                                     ; $4cc6: $75
	ld   a, l                                        ; $4cc7: $7d
	sbc  [hl]                                        ; $4cc8: $9e
	ld   e, b                                        ; $4cc9: $58
	inc  b                                           ; $4cca: $04
	ld   c, $02                                      ; $4ccb: $0e $02
	jp   $9f79                                       ; $4ccd: $c3 $79 $9f


	dec  c                                           ; $4cd0: $0d
	nop                                              ; $4cd1: $00
	ld   a, [bc]                                     ; $4cd2: $0a
	dec  c                                           ; $4cd3: $0d
	nop                                              ; $4cd4: $00
	nop                                              ; $4cd5: $00
	rrca                                             ; $4cd6: $0f
	nop                                              ; $4cd7: $00
	ld   bc, $1e09                                   ; $4cd8: $01 $09 $1e
	ld   b, $1e                                      ; $4cdb: $06 $1e
	inc  bc                                          ; $4cdd: $03
	inc  e                                           ; $4cde: $1c
	ld   bc, $0000                                   ; $4cdf: $01 $00 $00
	ld   bc, $7978                                   ; $4ce2: $01 $78 $79
	ld   e, c                                        ; $4ce5: $59
	ld   h, d                                        ; $4ce6: $62
	inc  b                                           ; $4ce7: $04
	di                                               ; $4ce8: $f3
	ld   [hl], l                                     ; $4ce9: $75
	ld   h, a                                        ; $4cea: $67
	ld   e, c                                        ; $4ceb: $59
	ld   sp, hl                                      ; $4cec: $f9
	dec  c                                           ; $4ced: $0d
	sub  b                                           ; $4cee: $90
	ld   d, h                                        ; $4cef: $54
	ld   h, a                                        ; $4cf0: $67
	ld   e, [hl]                                     ; $4cf1: $5e
	inc  bc                                          ; $4cf2: $03
	ld   l, l                                        ; $4cf3: $6d
	dec  b                                           ; $4cf4: $05
	add  hl, de                                      ; $4cf5: $19
	ld   a, h                                        ; $4cf6: $7c
	inc  bc                                          ; $4cf7: $03
	ld   l, a                                        ; $4cf8: $6f
	ld   [bc], a                                     ; $4cf9: $02
	xor  c                                           ; $4cfa: $a9
	ld   [hl], l                                     ; $4cfb: $75
	ld   h, a                                        ; $4cfc: $67
	sub  [hl]                                        ; $4cfd: $96
	sbc  a                                           ; $4cfe: $9f
	dec  c                                           ; $4cff: $0d
	nop                                              ; $4d00: $00
	ld   a, [bc]                                     ; $4d01: $0a
	rrca                                             ; $4d02: $0f
	nop                                              ; $4d03: $00
	ld   bc, $7d01                                   ; $4d04: $01 $01 $7d
	ld   d, d                                        ; $4d07: $52
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	ld   d, b                                        ; $4d0a: $50
	ld   a, h                                        ; $4d0b: $7c
	rst  $38                                         ; $4d0c: $ff
	rst  $38                                         ; $4d0d: $ff
	dec  c                                           ; $4d0e: $0d
	ld   [bc], a                                     ; $4d0f: $02
	and  l                                           ; $4d10: $a5
	inc  b                                           ; $4d11: $04
	xor  d                                           ; $4d12: $aa
	ld   a, h                                        ; $4d13: $7c
	inc  bc                                          ; $4d14: $03
	ld   l, l                                        ; $4d15: $6d
	dec  b                                           ; $4d16: $05
	add  hl, de                                      ; $4d17: $19
	and  b                                           ; $4d18: $a0
	inc  bc                                          ; $4d19: $03
	and  a                                           ; $4d1a: $a7
	adc  h                                           ; $4d1b: $8c
	ld   l, c                                        ; $4d1c: $69
	ld   [hl], h                                     ; $4d1d: $74
	dec  c                                           ; $4d1e: $0d
	inc  b                                           ; $4d1f: $04
	db   $e3                                         ; $4d20: $e3
	ld   h, l                                        ; $4d21: $65
	ld   d, d                                        ; $4d22: $52
	ld   a, h                                        ; $4d23: $7c
	ld   [hl], l                                     ; $4d24: $75
	ld   h, a                                        ; $4d25: $67
	ld   e, d                                        ; $4d26: $5a
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	dec  c                                           ; $4d29: $0d
	nop                                              ; $4d2a: $00
	ld   a, [bc]                                     ; $4d2b: $0a
	inc  e                                           ; $4d2c: $1c
	ld   bc, $0404                                   ; $4d2d: $01 $04 $04
	ld   bc, $5252                                   ; $4d30: $01 $52 $52
	ld   [hl], l                                     ; $4d33: $75
	ld   h, a                                        ; $4d34: $67
	ld   e, a                                        ; $4d35: $5f
	ld   [hl], a                                     ; $4d36: $77
	rst  $38                                         ; $4d37: $ff
	rst  $38                                         ; $4d38: $ff
	dec  c                                           ; $4d39: $0d
	ld   a, b                                        ; $4d3a: $78
	ld   a, c                                        ; $4d3b: $79
	ld   e, c                                        ; $4d3c: $59
	inc  b                                           ; $4d3d: $04
	di                                               ; $4d3e: $f3
	ld   [bc], a                                     ; $4d3f: $02
	jp   $9075                                       ; $4d40: $c3 $75 $90


	ld   sp, hl                                      ; $4d43: $f9
	dec  c                                           ; $4d44: $0d
	nop                                              ; $4d45: $00
	ld   a, [bc]                                     ; $4d46: $0a
	rrca                                             ; $4d47: $0f
	nop                                              ; $4d48: $00
	ld   bc, $5201                                   ; $4d49: $01 $01 $52
	ld   d, [hl]                                     ; $4d4c: $56
	sbc  [hl]                                        ; $4d4d: $9e
	halt                                             ; $4d4e: $76
	ld   e, l                                        ; $4d4f: $5d
	ld   a, c                                        ; $4d50: $79
	inc  b                                           ; $4d51: $04
	di                                               ; $4d52: $f3
	ld   [bc], a                                     ; $4d53: $02
	jp   $5276                                       ; $4d54: $c3 $76 $52


	ld   d, h                                        ; $4d57: $54
	dec  c                                           ; $4d58: $0d
	sbc  l                                           ; $4d59: $9d
	ld   e, a                                        ; $4d5a: $5f
	ld   [hl], l                                     ; $4d5b: $75
	sub  b                                           ; $4d5c: $90
	ld   a, b                                        ; $4d5d: $78
	ld   d, d                                        ; $4d5e: $52
	and  c                                           ; $4d5f: $a1
	ld   [hl], l                                     ; $4d60: $75
	ld   h, a                                        ; $4d61: $67
	ld   e, d                                        ; $4d62: $5a
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	dec  c                                           ; $4d65: $0d
	nop                                              ; $4d66: $00
	ld   a, [bc]                                     ; $4d67: $0a
	rrca                                             ; $4d68: $0f
	ld   bc, $1d04                                   ; $4d69: $01 $04 $1d
	ld   b, b                                        ; $4d6c: $40
	ld   de, $1103                                   ; $4d6d: $11 $03 $11
	ld   bc, $2902                                   ; $4d70: $01 $02 $29
	nop                                              ; $4d73: $00
	ld   bc, $ffff                                   ; $4d74: $01 $ff $ff
	rst  $38                                         ; $4d77: $ff
	rst  $38                                         ; $4d78: $ff
	sbc  l                                           ; $4d79: $9d
	ld   e, c                                        ; $4d7a: $59
	sbc  b                                           ; $4d7b: $98
	adc  h                                           ; $4d7c: $8c
	ld   h, l                                        ; $4d7d: $65
	ld   l, l                                        ; $4d7e: $6d
	sbc  a                                           ; $4d7f: $9f
	dec  c                                           ; $4d80: $0d
	ld   [hl], l                                     ; $4d81: $75
	ld   a, l                                        ; $4d82: $7d
	sbc  [hl]                                        ; $4d83: $9e
	ld   [bc], a                                     ; $4d84: $02
	and  l                                           ; $4d85: $a5
	inc  b                                           ; $4d86: $04
	xor  d                                           ; $4d87: $aa
	ld   a, h                                        ; $4d88: $7c
	inc  bc                                          ; $4d89: $03
	ld   l, l                                        ; $4d8a: $6d
	dec  b                                           ; $4d8b: $05
	add  hl, de                                      ; $4d8c: $19
	ld   a, l                                        ; $4d8d: $7d
	ld   e, b                                        ; $4d8e: $58
	inc  bc                                          ; $4d8f: $03
	and  a                                           ; $4d90: $a7
	adc  l                                           ; $4d91: $8d
	dec  c                                           ; $4d92: $0d
	halt                                             ; $4d93: $76
	ld   d, d                                        ; $4d94: $52
	ld   d, h                                        ; $4d95: $54
	ld   h, c                                        ; $4d96: $61
	halt                                             ; $4d97: $76
	ld   a, c                                        ; $4d98: $79
	ld   h, l                                        ; $4d99: $65
	adc  h                                           ; $4d9a: $8c
	ld   h, l                                        ; $4d9b: $65
	sub  l                                           ; $4d9c: $95
	ld   d, h                                        ; $4d9d: $54
	sbc  a                                           ; $4d9e: $9f
	dec  c                                           ; $4d9f: $0d
	nop                                              ; $4da0: $00
	ld   a, [bc]                                     ; $4da1: $0a
	ld   bc, $9a6b                                   ; $4da2: $01 $6b $9a
	ld   [hl], l                                     ; $4da5: $75
	ld   a, l                                        ; $4da6: $7d
	rst  $38                                         ; $4da7: $ff
	rst  $38                                         ; $4da8: $ff
	sbc  a                                           ; $4da9: $9f
	dec  c                                           ; $4daa: $0d
	nop                                              ; $4dab: $00
	ld   a, [bc]                                     ; $4dac: $0a
	dec  c                                           ; $4dad: $0d
	nop                                              ; $4dae: $00
	nop                                              ; $4daf: $00
	rrca                                             ; $4db0: $0f
	nop                                              ; $4db1: $00
	ld   bc, $1e09                                   ; $4db2: $01 $09 $1e
	ld   b, $1e                                      ; $4db5: $06 $1e
	inc  bc                                          ; $4db7: $03
	nop                                              ; $4db8: $00
	ld   c, $01                                      ; $4db9: $0e $01
	rrca                                             ; $4dbb: $0f
	nop                                              ; $4dbc: $00
	ld   bc, $0702                                   ; $4dbd: $01 $02 $07
	halt                                             ; $4dc0: $76
	nop                                              ; $4dc1: $00
	inc  b                                           ; $4dc2: $04
	add  b                                           ; $4dc3: $80
	add  $01                                         ; $4dc4: $c6 $01
	rst  $38                                         ; $4dc6: $ff
	jr   nz, jr_046_4dc9                             ; $4dc7: $20 $00

jr_046_4dc9:
	ld   bc, $5483                                   ; $4dc9: $01 $83 $54
	db   $fc                                         ; $4dcc: $fc
	sbc  [hl]                                        ; $4dcd: $9e
	ld   [hl], d                                     ; $4dce: $72
	ld   e, c                                        ; $4dcf: $59
	sbc  d                                           ; $4dd0: $9a
	ld   l, l                                        ; $4dd1: $6d
	rst  $38                                         ; $4dd2: $ff
	rst  $38                                         ; $4dd3: $ff
	dec  c                                           ; $4dd4: $0d
	ld   h, e                                        ; $4dd5: $63
	ld   e, l                                        ; $4dd6: $5d
	sub  a                                           ; $4dd7: $97
	ld   h, e                                        ; $4dd8: $63
	and  c                                           ; $4dd9: $a1
	ld   a, h                                        ; $4dda: $7c
	inc  bc                                          ; $4ddb: $03
	ld   l, l                                        ; $4ddc: $6d
	dec  b                                           ; $4ddd: $05
	add  hl, de                                      ; $4dde: $19
	sbc  [hl]                                        ; $4ddf: $9e
	dec  c                                           ; $4de0: $0d
	ld   e, e                                        ; $4de1: $5b
	add  c                                           ; $4de2: $81
	ld   h, l                                        ; $4de3: $65
	ld   e, c                                        ; $4de4: $59
	ld   [hl], c                                     ; $4de5: $71
	ld   l, l                                        ; $4de6: $6d
	ld   a, b                                        ; $4de7: $78
	ld   d, b                                        ; $4de8: $50
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	dec  c                                           ; $4deb: $0d
	nop                                              ; $4dec: $00
	ld   a, [bc]                                     ; $4ded: $0a
	ld   bc, $6803                                   ; $4dee: $01 $03 $68
	ld   a, l                                        ; $4df1: $7d
	rst  $38                                         ; $4df2: $ff
	halt                                             ; $4df3: $76
	sbc  [hl]                                        ; $4df4: $9e
	ld   [bc], a                                     ; $4df5: $02
	or   d                                           ; $4df6: $b2
	ld   [bc], a                                     ; $4df7: $02
	xor  d                                           ; $4df8: $aa
	ld   a, h                                        ; $4df9: $7c
	inc  bc                                          ; $4dfa: $03
	ld   l, l                                        ; $4dfb: $6d
	dec  b                                           ; $4dfc: $05
	add  hl, de                                      ; $4dfd: $19
	ld   a, h                                        ; $4dfe: $7c
	inc  bc                                          ; $4dff: $03
	ld   c, a                                        ; $4e00: $4f
	ld   a, c                                        ; $4e01: $79
	dec  c                                           ; $4e02: $0d
	inc  bc                                          ; $4e03: $03
	ld   l, h                                        ; $4e04: $6c
	ld   h, l                                        ; $4e05: $65
	inc  bc                                          ; $4e06: $03
	ld   l, a                                        ; $4e07: $6f
	ld   [bc], a                                     ; $4e08: $02
	xor  c                                           ; $4e09: $a9
	ld   e, d                                        ; $4e0a: $5a
	ld   d, b                                        ; $4e0b: $50
	sbc  c                                           ; $4e0c: $99
	sub  [hl]                                        ; $4e0d: $96
	ld   d, h                                        ; $4e0e: $54
	ld   l, [hl]                                     ; $4e0f: $6e
	ld   a, b                                        ; $4e10: $78
	sbc  a                                           ; $4e11: $9f
	dec  c                                           ; $4e12: $0d
	nop                                              ; $4e13: $00
	ld   a, [bc]                                     ; $4e14: $0a
	ld   bc, $0804                                   ; $4e15: $01 $04 $08
	ld   [bc], a                                     ; $4e18: $02
	sub  d                                           ; $4e19: $92
	ld   a, h                                        ; $4e1a: $7c
	inc  b                                           ; $4e1b: $04
	dec  bc                                          ; $4e1c: $0b
	ld   [hl], l                                     ; $4e1d: $75
	sub  b                                           ; $4e1e: $90
	ld   [bc], a                                     ; $4e1f: $02
	sub  l                                           ; $4e20: $95
	ld   [hl], h                                     ; $4e21: $74
	ld   [bc], a                                     ; $4e22: $02
	sub  e                                           ; $4e23: $93
	sbc  e                                           ; $4e24: $9b
	ld   d, h                                        ; $4e25: $54
	dec  c                                           ; $4e26: $0d
	ld   e, c                                        ; $4e27: $59
	ld   a, b                                        ; $4e28: $78
	rst  $38                                         ; $4e29: $ff
	rst  $38                                         ; $4e2a: $ff
	dec  c                                           ; $4e2b: $0d
	nop                                              ; $4e2c: $00
	ld   a, [bc]                                     ; $4e2d: $0a
	nop                                              ; $4e2e: $00
	ld   bc, $6803                                   ; $4e2f: $01 $03 $68
	ld   a, l                                        ; $4e32: $7d
	rst  $38                                         ; $4e33: $ff
	halt                                             ; $4e34: $76
	sbc  [hl]                                        ; $4e35: $9e
	ld   [bc], a                                     ; $4e36: $02
	or   d                                           ; $4e37: $b2
	ld   [bc], a                                     ; $4e38: $02
	xor  d                                           ; $4e39: $aa
	ld   a, h                                        ; $4e3a: $7c
	inc  bc                                          ; $4e3b: $03
	ld   l, l                                        ; $4e3c: $6d
	dec  b                                           ; $4e3d: $05
	add  hl, de                                      ; $4e3e: $19
	ld   a, h                                        ; $4e3f: $7c
	inc  bc                                          ; $4e40: $03
	ld   c, a                                        ; $4e41: $4f
	ld   a, c                                        ; $4e42: $79
	dec  c                                           ; $4e43: $0d
	inc  bc                                          ; $4e44: $03
	ld   l, h                                        ; $4e45: $6c
	ld   h, l                                        ; $4e46: $65
	inc  bc                                          ; $4e47: $03
	ld   l, a                                        ; $4e48: $6f
	ld   [bc], a                                     ; $4e49: $02
	xor  c                                           ; $4e4a: $a9
	ld   e, d                                        ; $4e4b: $5a
	ld   d, b                                        ; $4e4c: $50
	sbc  c                                           ; $4e4d: $99
	sub  [hl]                                        ; $4e4e: $96
	ld   d, h                                        ; $4e4f: $54
	ld   l, [hl]                                     ; $4e50: $6e
	ld   a, b                                        ; $4e51: $78
	sbc  a                                           ; $4e52: $9f
	dec  c                                           ; $4e53: $0d
	nop                                              ; $4e54: $00
	ld   a, [bc]                                     ; $4e55: $0a
	dec  b                                           ; $4e56: $05
	add  b                                           ; $4e57: $80
	add  $01                                         ; $4e58: $c6 $01
	nop                                              ; $4e5a: $00
	nop                                              ; $4e5b: $00
	ld   bc, $0804                                   ; $4e5c: $01 $04 $08
	ld   [bc], a                                     ; $4e5f: $02
	sub  d                                           ; $4e60: $92
	ld   a, h                                        ; $4e61: $7c
	inc  b                                           ; $4e62: $04
	dec  bc                                          ; $4e63: $0b
	ld   [hl], l                                     ; $4e64: $75
	sub  b                                           ; $4e65: $90
	ld   [bc], a                                     ; $4e66: $02
	sub  l                                           ; $4e67: $95
	ld   [hl], h                                     ; $4e68: $74
	ld   [bc], a                                     ; $4e69: $02
	sub  e                                           ; $4e6a: $93
	sbc  e                                           ; $4e6b: $9b
	ld   d, h                                        ; $4e6c: $54
	dec  c                                           ; $4e6d: $0d
	ld   e, c                                        ; $4e6e: $59
	ld   a, b                                        ; $4e6f: $78
	rst  $38                                         ; $4e70: $ff
	rst  $38                                         ; $4e71: $ff
	dec  c                                           ; $4e72: $0d
	nop                                              ; $4e73: $00
	ld   a, [bc]                                     ; $4e74: $0a
	nop                                              ; $4e75: $00
	nop                                              ; $4e76: $00
	inc  b                                           ; $4e77: $04
	add  b                                           ; $4e78: $80
	ld   h, h                                        ; $4e79: $64
	ld   bc, $20ff                                   ; $4e7a: $01 $ff $20
	inc  b                                           ; $4e7d: $04
	add  b                                           ; $4e7e: $80
	ld   h, l                                        ; $4e7f: $65
	ld   bc, $2000                                   ; $4e80: $01 $00 $20
	inc  e                                           ; $4e83: $1c
	inc  bc                                          ; $4e84: $03
	ld   l, e                                        ; $4e85: $6b
	ld   [bc], a                                     ; $4e86: $02
	nop                                              ; $4e87: $00
	jr   nz, jr_046_4ea6                             ; $4e88: $20 $1c

	nop                                              ; $4e8a: $00
	ld   c, $01                                      ; $4e8b: $0e $01
	rrca                                             ; $4e8d: $0f
	nop                                              ; $4e8e: $00
	ld   bc, $0102                                   ; $4e8f: $01 $02 $01
	ld   e, b                                        ; $4e92: $58
	inc  b                                           ; $4e93: $04
	xor  l                                           ; $4e94: $ad
	ld   l, [hl]                                     ; $4e95: $6e
	ld   a, b                                        ; $4e96: $78
	db   $fc                                         ; $4e97: $fc
	sbc  a                                           ; $4e98: $9f
	dec  c                                           ; $4e99: $0d
	ld   [hl], a                                     ; $4e9a: $77
	ld   d, h                                        ; $4e9b: $54
	ld   h, l                                        ; $4e9c: $65
	sub  [hl]                                        ; $4e9d: $96
	ld   d, h                                        ; $4e9e: $54
	ld   e, c                                        ; $4e9f: $59
	ld   a, b                                        ; $4ea0: $78
	rst  $38                                         ; $4ea1: $ff
	rst  $38                                         ; $4ea2: $ff
	dec  c                                           ; $4ea3: $0d
	nop                                              ; $4ea4: $00
	ld   a, [bc]                                     ; $4ea5: $0a

jr_046_4ea6:
	inc  d                                           ; $4ea6: $14
	ld   b, $01                                      ; $4ea7: $06 $01
	rrca                                             ; $4ea9: $0f
	inc  bc                                          ; $4eaa: $03
	ld   [bc], a                                     ; $4eab: $02
	ld   bc, $0008                                   ; $4eac: $01 $08 $00
	ld   e, l                                        ; $4eaf: $5d
	and  c                                           ; $4eb0: $a1
	sbc  a                                           ; $4eb1: $9f
	ld   d, d                                        ; $4eb2: $52
	sbc  c                                           ; $4eb3: $99
	ld   sp, hl                                      ; $4eb4: $f9
	dec  c                                           ; $4eb5: $0d
	inc  b                                           ; $4eb6: $04
	ld   b, l                                        ; $4eb7: $45
	sbc  c                                           ; $4eb8: $99
	sbc  l                                           ; $4eb9: $9d
	sub  [hl]                                        ; $4eba: $96
	sbc  a                                           ; $4ebb: $9f
	dec  c                                           ; $4ebc: $0d
	nop                                              ; $4ebd: $00
	ld   a, [bc]                                     ; $4ebe: $0a
	inc  d                                           ; $4ebf: $14
	ld   a, [bc]                                     ; $4ec0: $0a
	ld   bc, $010e                                   ; $4ec1: $01 $0e $01
	inc  e                                           ; $4ec4: $1c
	inc  bc                                          ; $4ec5: $03
	ld   [bc], a                                     ; $4ec6: $02
	ld   [bc], a                                     ; $4ec7: $02
	ld   bc, $0008                                   ; $4ec8: $01 $08 $00
	ld   e, l                                        ; $4ecb: $5d
	and  c                                           ; $4ecc: $a1
	sbc  a                                           ; $4ecd: $9f
	dec  c                                           ; $4ece: $0d
	ld   [bc], a                                     ; $4ecf: $02
	and  l                                           ; $4ed0: $a5
	inc  bc                                          ; $4ed1: $03
	ld   d, $9e                                      ; $4ed2: $16 $9e
	inc  bc                                          ; $4ed4: $03
	db   $ec                                         ; $4ed5: $ec
	dec  b                                           ; $4ed6: $05
	add  hl, de                                      ; $4ed7: $19
	inc  bc                                          ; $4ed8: $03
	ld   c, l                                        ; $4ed9: $4d
	ld   a, c                                        ; $4eda: $79
	dec  b                                           ; $4edb: $05
	db   $10                                         ; $4edc: $10
	sbc  c                                           ; $4edd: $99
	sub  [hl]                                        ; $4ede: $96
	ld   d, h                                        ; $4edf: $54
	ld   a, c                                        ; $4ee0: $79
	ld   [hl], c                                     ; $4ee1: $71
	ld   [hl], h                                     ; $4ee2: $74
	dec  c                                           ; $4ee3: $0d
	ld   [bc], a                                     ; $4ee4: $02
	sbc  l                                           ; $4ee5: $9d
	ld   [hl], c                                     ; $4ee6: $71
	ld   l, l                                        ; $4ee7: $6d
	ld   [hl], l                                     ; $4ee8: $75
	ld   h, l                                        ; $4ee9: $65
	sub  l                                           ; $4eea: $95
	sbc  a                                           ; $4eeb: $9f
	dec  c                                           ; $4eec: $0d
	nop                                              ; $4eed: $00
	ld   a, [bc]                                     ; $4eee: $0a
	ld   bc, $a304                                   ; $4eef: $01 $04 $a3
	sbc  d                                           ; $4ef2: $9a
	ld   [hl], h                                     ; $4ef3: $74
	ld   d, d                                        ; $4ef4: $52
	ld   l, l                                        ; $4ef5: $6d
	ld   a, h                                        ; $4ef6: $7c
	ld   [hl], l                                     ; $4ef7: $75
	ld   h, a                                        ; $4ef8: $67
	ld   e, c                                        ; $4ef9: $59
	ld   sp, hl                                      ; $4efa: $f9
	dec  c                                           ; $4efb: $0d
	inc  bc                                          ; $4efc: $03
	db   $ec                                         ; $4efd: $ec
	dec  b                                           ; $4efe: $05
	add  hl, de                                      ; $4eff: $19
	inc  bc                                          ; $4f00: $03
	ld   c, l                                        ; $4f01: $4d
	ld   [hl], l                                     ; $4f02: $75
	inc  b                                           ; $4f03: $04
	rla                                              ; $4f04: $17
	ld   [hl], c                                     ; $4f05: $71
	ld   [hl], h                                     ; $4f06: $74
	ld   l, l                                        ; $4f07: $6d
	ld   a, h                                        ; $4f08: $7c
	ld   [hl], l                                     ; $4f09: $75
	ld   h, a                                        ; $4f0a: $67
	sub  [hl]                                        ; $4f0b: $96
	sbc  a                                           ; $4f0c: $9f
	dec  c                                           ; $4f0d: $0d
	nop                                              ; $4f0e: $00
	ld   a, [bc]                                     ; $4f0f: $0a
	inc  e                                           ; $4f10: $1c
	inc  bc                                          ; $4f11: $03
	ld   b, $06                                      ; $4f12: $06 $06
	dec  e                                           ; $4f14: $1d
	ld   b, b                                        ; $4f15: $40
	inc  de                                          ; $4f16: $13
	inc  bc                                          ; $4f17: $03
	inc  de                                          ; $4f18: $13
	ld   bc, $2903                                   ; $4f19: $01 $03 $29
	nop                                              ; $4f1c: $00
	ld   bc, $718c                                   ; $4f1d: $01 $8c $71
	ld   l, l                                        ; $4f20: $6d
	ld   e, l                                        ; $4f21: $5d
	sbc  [hl]                                        ; $4f22: $9e
	ld   d, b                                        ; $4f23: $50
	ld   a, b                                        ; $4f24: $78
	ld   l, l                                        ; $4f25: $6d
	ld   a, l                                        ; $4f26: $7d
	dec  c                                           ; $4f27: $0d
	ld   l, l                                        ; $4f28: $6d
	sbc  c                                           ; $4f29: $99
	adc  l                                           ; $4f2a: $8d
	ld   h, a                                        ; $4f2b: $67
	ld   e, h                                        ; $4f2c: $5c
	ld   [hl], l                                     ; $4f2d: $75
	ld   h, a                                        ; $4f2e: $67
	ld   a, [$000d]                                  ; $4f2f: $fa $0d $00
	ld   a, [bc]                                     ; $4f32: $0a
	ld   bc, $0b02                                   ; $4f33: $01 $02 $0b
	ld   [bc], a                                     ; $4f36: $02
	xor  d                                           ; $4f37: $aa
	sbc  [hl]                                        ; $4f38: $9e
	ld   [bc], a                                     ; $4f39: $02
	and  c                                           ; $4f3a: $a1
	and  b                                           ; $4f3b: $a0
	ld   [hl], d                                     ; $4f3c: $72
	ld   e, a                                        ; $4f3d: $5f
	sbc  c                                           ; $4f3e: $99
	sub  [hl]                                        ; $4f3f: $96
	ld   d, h                                        ; $4f40: $54
	ld   a, c                                        ; $4f41: $79
	sbc  a                                           ; $4f42: $9f
	dec  c                                           ; $4f43: $0d
	nop                                              ; $4f44: $00
	ld   a, [bc]                                     ; $4f45: $0a
	dec  c                                           ; $4f46: $0d
	nop                                              ; $4f47: $00
	nop                                              ; $4f48: $00
	rrca                                             ; $4f49: $0f
	nop                                              ; $4f4a: $00
	ld   bc, $1e09                                   ; $4f4b: $01 $09 $1e
	add  hl, hl                                      ; $4f4e: $29
	inc  bc                                          ; $4f4f: $03
	nop                                              ; $4f50: $00
	nop                                              ; $4f51: $00
	inc  b                                           ; $4f52: $04
	add  b                                           ; $4f53: $80
	inc  de                                          ; $4f54: $13
	ld   bc, $20ff                                   ; $4f55: $01 $ff $20
	nop                                              ; $4f58: $00
	rrca                                             ; $4f59: $0f
	nop                                              ; $4f5a: $00
	ld   bc, $020d                                   ; $4f5b: $01 $0d $02
	nop                                              ; $4f5e: $00
	ld   [bc], a                                     ; $4f5f: $02
	ld   bc, $8d67                                   ; $4f60: $01 $67 $8d
	sbc  d                                           ; $4f63: $9a
	ld   h, e                                        ; $4f64: $63
	and  c                                           ; $4f65: $a1
	sbc  a                                           ; $4f66: $9f
	dec  c                                           ; $4f67: $0d
	ld   e, b                                        ; $4f68: $58
	inc  b                                           ; $4f69: $04
	ld   a, e                                        ; $4f6a: $7b
	sbc  d                                           ; $4f6b: $9a
	ld   h, e                                        ; $4f6c: $63
	adc  h                                           ; $4f6d: $8c
	ld   [hl], l                                     ; $4f6e: $75
	ld   h, a                                        ; $4f6f: $67
	sbc  a                                           ; $4f70: $9f
	dec  c                                           ; $4f71: $0d
	nop                                              ; $4f72: $00
	ld   a, [bc]                                     ; $4f73: $0a
	dec  b                                           ; $4f74: $05
	add  b                                           ; $4f75: $80
	sub  b                                           ; $4f76: $90
	ld   bc, $0001                                   ; $4f77: $01 $01 $00
	ld   bc, $0301                                   ; $4f7a: $01 $01 $03
	ld   l, e                                        ; $4f7d: $6b
	ld   d, h                                        ; $4f7e: $54
	ld   l, [hl]                                     ; $4f7f: $6e
	rst  $38                                         ; $4f80: $ff
	rst  $38                                         ; $4f81: $ff
	dec  c                                           ; $4f82: $0d
	db   $10                                         ; $4f83: $10
	inc  b                                           ; $4f84: $04
	pop  hl                                          ; $4f85: $e1
	inc  b                                           ; $4f86: $04
	rst  $38                                         ; $4f87: $ff
	ld   h, e                                        ; $4f88: $63
	and  c                                           ; $4f89: $a1
	ld   e, c                                        ; $4f8a: $59
	sub  a                                           ; $4f8b: $97
	ld   [bc], a                                     ; $4f8c: $02
	jp   nz, Jump_046_6d52                           ; $4f8d: $c2 $52 $6d

	dec  c                                           ; $4f90: $0d
	db   $10                                         ; $4f91: $10
	ld   e, b                                        ; $4f92: $58
	inc  b                                           ; $4f93: $04
	add  c                                           ; $4f94: $81
	ld   h, e                                        ; $4f95: $63
	and  c                                           ; $4f96: $a1
	ld   a, h                                        ; $4f97: $7c
	dec  b                                           ; $4f98: $05
	jr   nz, @+$04                                   ; $4f99: $20 $02

	jp   nz, Jump_046_7452                           ; $4f9b: $c2 $52 $74

	adc  l                                           ; $4f9e: $8d
	sub  [hl]                                        ; $4f9f: $96
	ld   d, h                                        ; $4fa0: $54
	ld   bc, $0d04                                   ; $4fa1: $01 $04 $0d
	nop                                              ; $4fa4: $00
	ld   a, [bc]                                     ; $4fa5: $0a
	ld   bc, $8d67                                   ; $4fa6: $01 $67 $8d
	sbc  d                                           ; $4fa9: $9a
	ld   h, e                                        ; $4faa: $63
	and  c                                           ; $4fab: $a1
	sbc  a                                           ; $4fac: $9f
	dec  c                                           ; $4fad: $0d
	ld   h, a                                        ; $4fae: $67
	adc  l                                           ; $4faf: $8d
	sbc  d                                           ; $4fb0: $9a
	ld   h, e                                        ; $4fb1: $63
	and  c                                           ; $4fb2: $a1
	ld   a, h                                        ; $4fb3: $7c
	ld   e, b                                        ; $4fb4: $58
	inc  b                                           ; $4fb5: $04
	add  c                                           ; $4fb6: $81
	inc  bc                                          ; $4fb7: $03
	sbc  b                                           ; $4fb8: $98
	ld   [hl], c                                     ; $4fb9: $71
	ld   [hl], h                                     ; $4fba: $74
	dec  c                                           ; $4fbb: $0d
	cp   d                                           ; $4fbc: $ba
	or   l                                           ; $4fbd: $b5
	and  l                                           ; $4fbe: $a5
	inc  b                                           ; $4fbf: $04
	ld   a, b                                        ; $4fc0: $78
	sub  a                                           ; $4fc1: $97
	ld   h, l                                        ; $4fc2: $65
	ld   d, d                                        ; $4fc3: $52
	ld   [hl], l                                     ; $4fc4: $75
	ld   h, a                                        ; $4fc5: $67
	ld   a, e                                        ; $4fc6: $7b
	sbc  a                                           ; $4fc7: $9f
	dec  c                                           ; $4fc8: $0d
	nop                                              ; $4fc9: $00
	ld   a, [bc]                                     ; $4fca: $0a
	rrca                                             ; $4fcb: $0f
	ld   [bc], a                                     ; $4fcc: $02
	nop                                              ; $4fcd: $00
	ld   bc, $6d9d                                   ; $4fce: $01 $9d $6d
	ld   e, l                                        ; $4fd1: $5d
	ld   h, l                                        ; $4fd2: $65
	ld   a, h                                        ; $4fd3: $7c
	inc  b                                           ; $4fd4: $04
	add  c                                           ; $4fd5: $81
	ld   a, l                                        ; $4fd6: $7d
	ld   [bc], a                                     ; $4fd7: $02
	ld   l, h                                        ; $4fd8: $6c
	inc  b                                           ; $4fd9: $04
	reti                                             ; $4fda: $d9


	cp   d                                           ; $4fdb: $ba
	ret  nz                                          ; $4fdc: $c0

	and  e                                           ; $4fdd: $a3
	ld   a, h                                        ; $4fde: $7c
	dec  c                                           ; $4fdf: $0d
	ld   bc, $0307                                   ; $4fe0: $01 $07 $03
	call $d504                                       ; $4fe3: $cd $04 $d5
	add  b                                           ; $4fe6: $80
	ld   a, b                                        ; $4fe7: $78
	ld   bc, $9608                                   ; $4fe8: $01 $08 $96
	sbc  a                                           ; $4feb: $9f
	dec  c                                           ; $4fec: $0d
	inc  b                                           ; $4fed: $04
	dec  hl                                          ; $4fee: $2b
	ld   [hl], c                                     ; $4fef: $71
	ld   [hl], h                                     ; $4ff0: $74
	sbc  c                                           ; $4ff1: $99
	ld   [hl], l                                     ; $4ff2: $75
	ld   h, l                                        ; $4ff3: $65
	sub  l                                           ; $4ff4: $95
	sbc  a                                           ; $4ff5: $9f
	dec  c                                           ; $4ff6: $0d
	nop                                              ; $4ff7: $00
	ld   a, [bc]                                     ; $4ff8: $0a
	add  hl, de                                      ; $4ff9: $19
	dec  b                                           ; $4ffa: $05
	inc  bc                                          ; $4ffb: $03
	inc  b                                           ; $4ffc: $04
	ld   c, $d6                                      ; $4ffd: $0e $d6
	and  d                                           ; $4fff: $a2
	push af                                          ; $5000: $f5
	ld   [hl], l                                     ; $5001: $75
	ld   h, a                                        ; $5002: $67
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	inc  b                                           ; $5005: $04
	dec  hl                                          ; $5006: $2b
	sub  a                                           ; $5007: $97
	ld   a, b                                        ; $5008: $78
	ld   d, d                                        ; $5009: $52
	nop                                              ; $500a: $00
	ld   bc, $dfb5                                   ; $500b: $01 $b5 $df
	and  b                                           ; $500e: $a0
	ld   h, a                                        ; $500f: $67
	sbc  c                                           ; $5010: $99
	nop                                              ; $5011: $00
	ld   [bc], a                                     ; $5012: $02
	rlca                                             ; $5013: $07
	ret  c                                           ; $5014: $d8

	nop                                              ; $5015: $00
	ld   [bc], a                                     ; $5016: $02
	inc  bc                                          ; $5017: $03
	ld   bc, $2000                                   ; $5018: $01 $00 $20
	nop                                              ; $501b: $00
	rlca                                             ; $501c: $07
	sub  a                                           ; $501d: $97
	ld   bc, $0302                                   ; $501e: $01 $02 $03
	ld   bc, $2001                                   ; $5021: $01 $01 $20
	nop                                              ; $5024: $00
	rlca                                             ; $5025: $07
	push af                                          ; $5026: $f5
	ld   bc, $0302                                   ; $5027: $01 $02 $03
	ld   bc, $2002                                   ; $502a: $01 $02 $20
	nop                                              ; $502d: $00
	ld   b, $ac                                      ; $502e: $06 $ac
	ld   [bc], a                                     ; $5030: $02
	rrca                                             ; $5031: $0f
	nop                                              ; $5032: $00
	ld   bc, $5601                                   ; $5033: $01 $01 $56
	ld   d, [hl]                                     ; $5036: $56
	sbc  [hl]                                        ; $5037: $9e
	inc  b                                           ; $5038: $04
	dec  hl                                          ; $5039: $2b
	ld   [hl], c                                     ; $503a: $71
	ld   [hl], h                                     ; $503b: $74
	adc  h                                           ; $503c: $8c
	ld   h, a                                        ; $503d: $67
	halt                                             ; $503e: $76
	sub  b                                           ; $503f: $90
	sbc  a                                           ; $5040: $9f
	dec  c                                           ; $5041: $0d
	inc  b                                           ; $5042: $04
	ld   l, l                                        ; $5043: $6d
	sbc  [hl]                                        ; $5044: $9e
	inc  b                                           ; $5045: $04
	ld   c, $d6                                      ; $5046: $0e $d6
	and  d                                           ; $5048: $a2
	push af                                          ; $5049: $f5
	ld   a, b                                        ; $504a: $78
	and  c                                           ; $504b: $a1
	ld   [hl], l                                     ; $504c: $75
	ld   h, a                                        ; $504d: $67
	sbc  a                                           ; $504e: $9f
	dec  c                                           ; $504f: $0d
	nop                                              ; $5050: $00
	ld   a, [bc]                                     ; $5051: $0a
	inc  e                                           ; $5052: $1c
	ld   [bc], a                                     ; $5053: $02
	jr   nc, jr_046_506f                             ; $5054: $30 $19

	dec  e                                           ; $5056: $1d
	ld   b, b                                        ; $5057: $40
	ld   [de], a                                     ; $5058: $12
	inc  bc                                          ; $5059: $03

Jump_046_505a:
	ld   [de], a                                     ; $505a: $12
	ld   bc, $2802                                   ; $505b: $01 $02 $28
	nop                                              ; $505e: $00
	ld   bc, $7c6b                                   ; $505f: $01 $6b $7c
	inc  b                                           ; $5062: $04
	ld   c, $ba                                      ; $5063: $0e $ba
	ret  nz                                          ; $5065: $c0

	and  e                                           ; $5066: $a3
	ld   a, h                                        ; $5067: $7c
	ld   [bc], a                                     ; $5068: $02
	cp   b                                           ; $5069: $b8
	ld   [hl], l                                     ; $506a: $75
	ld   d, b                                        ; $506b: $50
	sbc  c                                           ; $506c: $99
	dec  c                                           ; $506d: $0d
	sbc  l                                           ; $506e: $9d

jr_046_506f:
	ld   l, l                                        ; $506f: $6d
	ld   e, l                                        ; $5070: $5d
	ld   h, l                                        ; $5071: $65
	ld   e, d                                        ; $5072: $5a
	inc  bc                                          ; $5073: $03
	ld   d, d                                        ; $5074: $52
	adc  h                                           ; $5075: $8c
	sbc  d                                           ; $5076: $9a
	ld   a, b                                        ; $5077: $78
	ld   e, d                                        ; $5078: $5a
	sub  a                                           ; $5079: $97
	ld   a, c                                        ; $507a: $79
	ld   h, l                                        ; $507b: $65
	ld   [hl], h                                     ; $507c: $74
	dec  c                                           ; $507d: $0d
	cp   d                                           ; $507e: $ba
	ret  nz                                          ; $507f: $c0

	and  e                                           ; $5080: $a3
	ld   a, h                                        ; $5081: $7c
	inc  bc                                          ; $5082: $03
	and  [hl]                                        ; $5083: $a6
	inc  bc                                          ; $5084: $03
	dec  d                                           ; $5085: $15
	and  b                                           ; $5086: $a0
	inc  bc                                          ; $5087: $03
	and  b                                           ; $5088: $a0
	ld   [hl], c                                     ; $5089: $71
	ld   [hl], h                                     ; $508a: $74
	ld   d, d                                        ; $508b: $52
	sbc  c                                           ; $508c: $99
	sbc  a                                           ; $508d: $9f
	dec  c                                           ; $508e: $0d
	nop                                              ; $508f: $00
	ld   a, [bc]                                     ; $5090: $0a
	ld   bc, $9a61                                   ; $5091: $01 $61 $9a
	ld   a, l                                        ; $5094: $7d
	inc  b                                           ; $5095: $04
	jr   jr_046_509b                                 ; $5096: $18 $03

	sbc  c                                           ; $5098: $99
	ld   a, h                                        ; $5099: $7c
	ld   h, c                                        ; $509a: $61

jr_046_509b:
	halt                                             ; $509b: $76
	ld   [hl], l                                     ; $509c: $75
	ld   h, a                                        ; $509d: $67
	sbc  l                                           ; $509e: $9d
	sub  [hl]                                        ; $509f: $96
	ld   a, e                                        ; $50a0: $7b
	sbc  a                                           ; $50a1: $9f
	dec  c                                           ; $50a2: $0d
	ld   h, e                                        ; $50a3: $63
	ld   e, l                                        ; $50a4: $5d
	sub  a                                           ; $50a5: $97
	ld   h, e                                        ; $50a6: $63
	and  c                                           ; $50a7: $a1
	ld   a, c                                        ; $50a8: $79
	sub  b                                           ; $50a9: $90
	inc  b                                           ; $50aa: $04
	sbc  [hl]                                        ; $50ab: $9e
	ld   e, a                                        ; $50ac: $5f
	ld   [hl], h                                     ; $50ad: $74
	dec  c                                           ; $50ae: $0d
	ld   h, e                                        ; $50af: $63
	ld   h, l                                        ; $50b0: $65
	inc  bc                                          ; $50b1: $03
	ld   h, l                                        ; $50b2: $65
	ld   h, b                                        ; $50b3: $60
	ld   l, l                                        ; $50b4: $6d
	ld   d, d                                        ; $50b5: $52
	sbc  l                                           ; $50b6: $9d
	sbc  a                                           ; $50b7: $9f
	adc  c                                           ; $50b8: $89
	adc  c                                           ; $50b9: $89
	adc  c                                           ; $50ba: $89
	sbc  a                                           ; $50bb: $9f
	dec  c                                           ; $50bc: $0d
	nop                                              ; $50bd: $00
	ld   a, [bc]                                     ; $50be: $0a
	inc  e                                           ; $50bf: $1c
	ld   [bc], a                                     ; $50c0: $02
	ld   bc, $0101                                   ; $50c1: $01 $01 $01
	ld   d, b                                        ; $50c4: $50
	sub  a                                           ; $50c5: $97
	rst  $38                                         ; $50c6: $ff
	rst  $38                                         ; $50c7: $ff
	dec  c                                           ; $50c8: $0d
	ld   l, e                                        ; $50c9: $6b
	sbc  e                                           ; $50ca: $9b
	ld   l, e                                        ; $50cb: $6b
	sbc  e                                           ; $50cc: $9b
	inc  bc                                          ; $50cd: $03
	ld   l, l                                        ; $50ce: $6d
	dec  b                                           ; $50cf: $05
	add  hl, de                                      ; $50d0: $19
	ld   a, h                                        ; $50d1: $7c
	inc  bc                                          ; $50d2: $03
	ld   l, a                                        ; $50d3: $6f
	ld   [bc], a                                     ; $50d4: $02
	xor  c                                           ; $50d5: $a9
	ld   [hl], l                                     ; $50d6: $75
	ld   h, a                                        ; $50d7: $67
	sbc  l                                           ; $50d8: $9d
	ld   a, e                                        ; $50d9: $7b
	sbc  a                                           ; $50da: $9f
	dec  c                                           ; $50db: $0d
	ld   e, d                                        ; $50dc: $5a
	and  c                                           ; $50dd: $a1
	ld   a, [hl]                                     ; $50de: $7e
	sbc  b                                           ; $50df: $98
	ld   a, b                                        ; $50e0: $78
	ld   h, e                                        ; $50e1: $63
	ld   d, d                                        ; $50e2: $52
	sbc  a                                           ; $50e3: $9f
	dec  c                                           ; $50e4: $0d
	nop                                              ; $50e5: $00
	ld   a, [bc]                                     ; $50e6: $0a
	dec  c                                           ; $50e7: $0d
	nop                                              ; $50e8: $00
	nop                                              ; $50e9: $00
	rrca                                             ; $50ea: $0f
	nop                                              ; $50eb: $00
	ld   bc, $1e09                                   ; $50ec: $01 $09 $1e
	nop                                              ; $50ef: $00
	rrca                                             ; $50f0: $0f
	nop                                              ; $50f1: $00
	ld   bc, $0301                                   ; $50f2: $01 $01 $03
	xor  c                                           ; $50f5: $a9
	ld   [hl], l                                     ; $50f6: $75
	ld   h, a                                        ; $50f7: $67
	ld   e, c                                        ; $50f8: $59
	ld   sp, hl                                      ; $50f9: $f9
	db   $10                                         ; $50fa: $10
	ld   l, e                                        ; $50fb: $6b
	ld   a, h                                        ; $50fc: $7c
	inc  b                                           ; $50fd: $04
	ld   a, b                                        ; $50fe: $78
	sbc  a                                           ; $50ff: $9f
	dec  c                                           ; $5100: $0d
	inc  b                                           ; $5101: $04
	dec  hl                                          ; $5102: $2b
	sub  a                                           ; $5103: $97
	ld   a, b                                        ; $5104: $78
	ld   d, d                                        ; $5105: $52
	ld   a, h                                        ; $5106: $7c
	ld   [hl], l                                     ; $5107: $75
	ld   h, a                                        ; $5108: $67
	ld   e, d                                        ; $5109: $5a
	rst  $38                                         ; $510a: $ff
	rst  $38                                         ; $510b: $ff
	dec  c                                           ; $510c: $0d
	nop                                              ; $510d: $00
	ld   a, [bc]                                     ; $510e: $0a
	inc  e                                           ; $510f: $1c
	ld   [bc], a                                     ; $5110: $02
	inc  bc                                          ; $5111: $03
	inc  bc                                          ; $5112: $03
	dec  e                                           ; $5113: $1d
	ld   b, b                                        ; $5114: $40
	ld   [de], a                                     ; $5115: $12
	inc  bc                                          ; $5116: $03
	ld   [de], a                                     ; $5117: $12
	ld   bc, $2902                                   ; $5118: $01 $02 $29
	nop                                              ; $511b: $00
	ld   bc, $a16b                                   ; $511c: $01 $6b $a1
	ld   a, b                                        ; $511f: $78
	ld   h, c                                        ; $5120: $61
	halt                                             ; $5121: $76
	sub  b                                           ; $5122: $90
	inc  b                                           ; $5123: $04
	dec  hl                                          ; $5124: $2b
	sub  a                                           ; $5125: $97
	ld   a, b                                        ; $5126: $78
	ld   d, d                                        ; $5127: $52
	ld   [hl], l                                     ; $5128: $75
	sbc  [hl]                                        ; $5129: $9e
	dec  c                                           ; $512a: $0d
	sub  [hl]                                        ; $512b: $96
	ld   e, l                                        ; $512c: $5d
	ld   h, c                                        ; $512d: $61
	ld   a, h                                        ; $512e: $7c
	inc  b                                           ; $512f: $04
	ld   [$9202], sp                                 ; $5130: $08 $02 $92
	ld   a, c                                        ; $5133: $79
	ld   d, d                                        ; $5134: $52
	adc  h                                           ; $5135: $8c
	ld   h, a                                        ; $5136: $67
	sbc  l                                           ; $5137: $9d
	ld   a, e                                        ; $5138: $7b
	sbc  a                                           ; $5139: $9f
	dec  c                                           ; $513a: $0d
	ld   d, b                                        ; $513b: $50
	ld   e, e                                        ; $513c: $5b
	sbc  d                                           ; $513d: $9a
	adc  h                                           ; $513e: $8c
	ld   h, a                                        ; $513f: $67
	sbc  l                                           ; $5140: $9d
	sbc  a                                           ; $5141: $9f
	dec  c                                           ; $5142: $0d
	nop                                              ; $5143: $00
	ld   a, [bc]                                     ; $5144: $0a
	dec  c                                           ; $5145: $0d
	nop                                              ; $5146: $00
	nop                                              ; $5147: $00
	rrca                                             ; $5148: $0f
	nop                                              ; $5149: $00
	ld   bc, $1e09                                   ; $514a: $01 $09 $1e
	nop                                              ; $514d: $00
	rrca                                             ; $514e: $0f
	nop                                              ; $514f: $00
	ld   bc, $6e01                                   ; $5150: $01 $01 $6e
	ld   e, c                                        ; $5153: $59
	sub  a                                           ; $5154: $97
	sbc  [hl]                                        ; $5155: $9e
	ld   h, a                                        ; $5156: $67
	adc  l                                           ; $5157: $8d
	sbc  d                                           ; $5158: $9a
	ld   h, e                                        ; $5159: $63
	and  c                                           ; $515a: $a1
	sub  b                                           ; $515b: $90
	dec  c                                           ; $515c: $0d
	cp   d                                           ; $515d: $ba
	or   l                                           ; $515e: $b5
	and  l                                           ; $515f: $a5
	and  c                                           ; $5160: $a1
	ld   [hl], l                                     ; $5161: $75
	ld   h, a                                        ; $5162: $67
	ld   a, e                                        ; $5163: $7b
	sbc  a                                           ; $5164: $9f
	dec  c                                           ; $5165: $0d
	nop                                              ; $5166: $00
	ld   a, [bc]                                     ; $5167: $0a
	inc  e                                           ; $5168: $1c
	ld   [bc], a                                     ; $5169: $02
	jr   nc, jr_046_5185                             ; $516a: $30 $19

	dec  e                                           ; $516c: $1d
	ld   b, b                                        ; $516d: $40
	ld   [de], a                                     ; $516e: $12
	inc  bc                                          ; $516f: $03
	ld   [de], a                                     ; $5170: $12
	ld   bc, $2803                                   ; $5171: $01 $03 $28
	nop                                              ; $5174: $00
	ld   bc, $5d96                                   ; $5175: $01 $96 $5d
	ld   e, b                                        ; $5178: $58
	sbc  l                                           ; $5179: $9d
	ld   e, c                                        ; $517a: $59
	sbc  b                                           ; $517b: $98
	ld   a, e                                        ; $517c: $7b
	sbc  a                                           ; $517d: $9f
	ld   [hl], l                                     ; $517e: $75
	ld   h, a                                        ; $517f: $67
	ld   e, c                                        ; $5180: $59
	sub  a                                           ; $5181: $97
	dec  c                                           ; $5182: $0d
	sbc  l                                           ; $5183: $9d
	ld   l, l                                        ; $5184: $6d

jr_046_5185:
	ld   e, l                                        ; $5185: $5d
	ld   h, l                                        ; $5186: $65
	ld   a, l                                        ; $5187: $7d
	inc  bc                                          ; $5188: $03
	ld   d, d                                        ; $5189: $52
	adc  h                                           ; $518a: $8c
	sbc  d                                           ; $518b: $9a
	ld   a, b                                        ; $518c: $78
	ld   e, d                                        ; $518d: $5a
	sub  a                                           ; $518e: $97
	ld   a, c                                        ; $518f: $79
	ld   h, l                                        ; $5190: $65
	ld   [hl], h                                     ; $5191: $74
	dec  c                                           ; $5192: $0d
	cp   d                                           ; $5193: $ba
	ret  nz                                          ; $5194: $c0

	and  e                                           ; $5195: $a3
	ld   a, h                                        ; $5196: $7c
	inc  bc                                          ; $5197: $03
	and  [hl]                                        ; $5198: $a6
	inc  bc                                          ; $5199: $03
	dec  d                                           ; $519a: $15
	and  b                                           ; $519b: $a0
	inc  bc                                          ; $519c: $03
	and  b                                           ; $519d: $a0
	ld   [hl], c                                     ; $519e: $71
	ld   [hl], h                                     ; $519f: $74
	ld   d, d                                        ; $51a0: $52
	sbc  c                                           ; $51a1: $99
	sbc  a                                           ; $51a2: $9f
	dec  c                                           ; $51a3: $0d
	nop                                              ; $51a4: $00
	ld   a, [bc]                                     ; $51a5: $0a
	ld   bc, $9a61                                   ; $51a6: $01 $61 $9a
	ld   a, l                                        ; $51a9: $7d
	inc  b                                           ; $51aa: $04
	jr   jr_046_51b0                                 ; $51ab: $18 $03

	sbc  c                                           ; $51ad: $99
	ld   a, h                                        ; $51ae: $7c
	ld   h, c                                        ; $51af: $61

jr_046_51b0:
	halt                                             ; $51b0: $76
	ld   [hl], l                                     ; $51b1: $75
	ld   h, a                                        ; $51b2: $67
	sbc  l                                           ; $51b3: $9d
	sub  [hl]                                        ; $51b4: $96
	ld   a, e                                        ; $51b5: $7b
	sbc  a                                           ; $51b6: $9f
	dec  c                                           ; $51b7: $0d
	xor  h                                           ; $51b8: $ac
	push af                                          ; $51b9: $f5
	bit  4, e                                        ; $51ba: $cb $63
	and  c                                           ; $51bc: $a1
	ld   a, c                                        ; $51bd: $79
	sub  b                                           ; $51be: $90
	inc  b                                           ; $51bf: $04
	sbc  [hl]                                        ; $51c0: $9e
	ld   e, a                                        ; $51c1: $5f
	ld   [hl], h                                     ; $51c2: $74
	dec  c                                           ; $51c3: $0d
	ld   h, e                                        ; $51c4: $63
	ld   h, l                                        ; $51c5: $65
	inc  bc                                          ; $51c6: $03
	ld   h, l                                        ; $51c7: $65
	ld   h, b                                        ; $51c8: $60
	ld   l, l                                        ; $51c9: $6d
	ld   d, d                                        ; $51ca: $52
	sbc  l                                           ; $51cb: $9d
	sbc  a                                           ; $51cc: $9f
	adc  c                                           ; $51cd: $89
	adc  c                                           ; $51ce: $89
	adc  c                                           ; $51cf: $89
	sbc  a                                           ; $51d0: $9f
	dec  c                                           ; $51d1: $0d
	nop                                              ; $51d2: $00
	ld   a, [bc]                                     ; $51d3: $0a
	inc  e                                           ; $51d4: $1c
	ld   [bc], a                                     ; $51d5: $02
	ld   bc, $0101                                   ; $51d6: $01 $01 $01
	ld   d, b                                        ; $51d9: $50
	sub  a                                           ; $51da: $97
	rst  $38                                         ; $51db: $ff
	rst  $38                                         ; $51dc: $ff
	dec  c                                           ; $51dd: $0d
	ld   l, e                                        ; $51de: $6b
	sbc  e                                           ; $51df: $9b
	ld   l, e                                        ; $51e0: $6b
	sbc  e                                           ; $51e1: $9b
	inc  bc                                          ; $51e2: $03
	ld   l, l                                        ; $51e3: $6d
	dec  b                                           ; $51e4: $05
	add  hl, de                                      ; $51e5: $19
	ld   a, h                                        ; $51e6: $7c
	inc  bc                                          ; $51e7: $03
	ld   l, a                                        ; $51e8: $6f
	ld   [bc], a                                     ; $51e9: $02
	xor  c                                           ; $51ea: $a9
	ld   [hl], l                                     ; $51eb: $75
	ld   h, a                                        ; $51ec: $67
	sbc  l                                           ; $51ed: $9d
	ld   a, e                                        ; $51ee: $7b
	sbc  a                                           ; $51ef: $9f
	dec  c                                           ; $51f0: $0d
	ld   e, d                                        ; $51f1: $5a
	and  c                                           ; $51f2: $a1
	ld   a, [hl]                                     ; $51f3: $7e
	sbc  b                                           ; $51f4: $98
	ld   a, b                                        ; $51f5: $78
	ld   h, e                                        ; $51f6: $63
	ld   d, d                                        ; $51f7: $52
	sbc  a                                           ; $51f8: $9f
	dec  c                                           ; $51f9: $0d
	nop                                              ; $51fa: $00
	ld   a, [bc]                                     ; $51fb: $0a
	dec  c                                           ; $51fc: $0d
	nop                                              ; $51fd: $00
	nop                                              ; $51fe: $00
	rrca                                             ; $51ff: $0f
	nop                                              ; $5200: $00
	ld   bc, $1e09                                   ; $5201: $01 $09 $1e
	nop                                              ; $5204: $00
	inc  e                                           ; $5205: $1c
	ld   [bc], a                                     ; $5206: $02
	ld   [bc], a                                     ; $5207: $02
	ld   [bc], a                                     ; $5208: $02
	dec  e                                           ; $5209: $1d
	ld   b, b                                        ; $520a: $40
	ld   [de], a                                     ; $520b: $12
	inc  bc                                          ; $520c: $03
	ld   [de], a                                     ; $520d: $12
	ld   bc, $2903                                   ; $520e: $01 $03 $29
	nop                                              ; $5211: $00
	ld   bc, $9403                                   ; $5212: $01 $03 $94
	inc  b                                           ; $5215: $04
	sbc  [hl]                                        ; $5216: $9e
	ld   e, c                                        ; $5217: $59
	sub  a                                           ; $5218: $97
	dec  b                                           ; $5219: $05
	jr   nz, jr_046_5281                             ; $521a: $20 $65

	ld   e, c                                        ; $521c: $59
	ld   e, a                                        ; $521d: $5f
	ld   [hl], h                                     ; $521e: $74
	ld   e, b                                        ; $521f: $58
	ld   d, d                                        ; $5220: $52
	ld   [hl], h                                     ; $5221: $74
	dec  c                                           ; $5222: $0d
	ld   l, [hl]                                     ; $5223: $6e
	adc  h                                           ; $5224: $8c
	ld   [hl], c                                     ; $5225: $71
	ld   [hl], h                                     ; $5226: $74
	ld   d, d                                        ; $5227: $52
	sbc  c                                           ; $5228: $99
	ld   a, b                                        ; $5229: $78
	and  c                                           ; $522a: $a1
	ld   [hl], h                                     ; $522b: $74
	sbc  [hl]                                        ; $522c: $9e
	dec  c                                           ; $522d: $0d
	inc  bc                                          ; $522e: $03
	add  e                                           ; $522f: $83
	dec  b                                           ; $5230: $05
	dec  c                                           ; $5231: $0d
	ld   a, b                                        ; $5232: $78
	inc  bc                                          ; $5233: $03
	add  d                                           ; $5234: $82
	ld   [hl], l                                     ; $5235: $75
	ld   h, a                                        ; $5236: $67
	sbc  l                                           ; $5237: $9d
	ld   a, e                                        ; $5238: $7b
	ld   a, [$000d]                                  ; $5239: $fa $0d $00
	ld   a, [bc]                                     ; $523c: $0a
	dec  c                                           ; $523d: $0d
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00
	rrca                                             ; $5240: $0f
	nop                                              ; $5241: $00
	ld   bc, $1e09                                   ; $5242: $01 $09 $1e
	nop                                              ; $5245: $00
	nop                                              ; $5246: $00
	inc  b                                           ; $5247: $04
	add  b                                           ; $5248: $80
	add  d                                           ; $5249: $82
	ld   bc, $20ff                                   ; $524a: $01 $ff $20
	nop                                              ; $524d: $00
	rrca                                             ; $524e: $0f

jr_046_524f:
	nop                                              ; $524f: $00
	ld   bc, $0502                                   ; $5250: $01 $02 $05
	add  b                                           ; $5253: $80
	add  e                                           ; $5254: $83
	ld   bc, $0001                                   ; $5255: $01 $01 $00
	ld   bc, $f5ac                                   ; $5258: $01 $ac $f5
	bit  4, e                                        ; $525b: $cb $63
	and  c                                           ; $525d: $a1
	sbc  a                                           ; $525e: $9f
	dec  c                                           ; $525f: $0d
	nop                                              ; $5260: $00
	ld   a, [bc]                                     ; $5261: $0a
	rlca                                             ; $5262: $07
	rst  ToBoot                                         ; $5263: $c7
	ld   [bc], a                                     ; $5264: $02
	inc  bc                                          ; $5265: $03
	ld   d, e                                        ; $5266: $53
	ld   [bc], a                                     ; $5267: $02
	nop                                              ; $5268: $00
	inc  bc                                          ; $5269: $03
	ld   c, l                                        ; $526a: $4d
	add  hl, hl                                      ; $526b: $29
	add  hl, hl                                      ; $526c: $29
	ld   bc, $2501                                   ; $526d: $01 $01 $25
	nop                                              ; $5270: $00
	inc  e                                           ; $5271: $1c
	ld   b, $00                                      ; $5272: $06 $00
	nop                                              ; $5274: $00
	ld   bc, $5896                                   ; $5275: $01 $96 $58
	sbc  [hl]                                        ; $5278: $9e
	ld   [$9f00], sp                                 ; $5279: $08 $00 $9f
	dec  c                                           ; $527c: $0d
	inc  b                                           ; $527d: $04
	ld   c, c                                        ; $527e: $49
	ld   e, c                                        ; $527f: $59
	inc  b                                           ; $5280: $04

jr_046_5281:
	di                                               ; $5281: $f3
	ld   e, c                                        ; $5282: $59
	ld   sp, hl                                      ; $5283: $f9
	dec  c                                           ; $5284: $0d
	nop                                              ; $5285: $00
	ld   a, [bc]                                     ; $5286: $0a
	rrca                                             ; $5287: $0f
	nop                                              ; $5288: $00
	ld   bc, $0101                                   ; $5289: $01 $01 $01
	inc  bc                                          ; $528c: $03
	inc  b                                           ; $528d: $04
	pop  hl                                          ; $528e: $e1
	inc  b                                           ; $528f: $04
	rst  $38                                         ; $5290: $ff
	ld   h, e                                        ; $5291: $63
	and  c                                           ; $5292: $a1
	ld   e, c                                        ; $5293: $59
	sub  a                                           ; $5294: $97
	ld   [bc], a                                     ; $5295: $02
	jp   nz, Jump_046_6d52                           ; $5296: $c2 $52 $6d

	dec  c                                           ; $5299: $0d
	db   $10                                         ; $529a: $10
	xor  h                                           ; $529b: $ac
	push af                                          ; $529c: $f5
	bit  4, e                                        ; $529d: $cb $63
	and  c                                           ; $529f: $a1
	ld   a, l                                        ; $52a0: $7d
	inc  bc                                          ; $52a1: $03
	add  [hl]                                        ; $52a2: $86
	ld   [bc], a                                     ; $52a3: $02
	xor  l                                           ; $52a4: $ad
	ld   [bc], a                                     ; $52a5: $02
	sbc  d                                           ; $52a6: $9a
	ld   e, e                                        ; $52a7: $5b
	ld   [hl], c                                     ; $52a8: $71
	ld   [hl], h                                     ; $52a9: $74
	dec  c                                           ; $52aa: $0d
	db   $10                                         ; $52ab: $10
	dec  b                                           ; $52ac: $05
	jr   nz, jr_046_524f                             ; $52ad: $20 $a0

	ld   h, l                                        ; $52af: $65
	ld   [hl], h                                     ; $52b0: $74
	adc  l                                           ; $52b1: $8d
	sub  [hl]                                        ; $52b2: $96
	ld   d, h                                        ; $52b3: $54
	rst  $38                                         ; $52b4: $ff
	rst  $38                                         ; $52b5: $ff
	ld   bc, $0d04                                   ; $52b6: $01 $04 $0d
	nop                                              ; $52b9: $00
	ld   a, [bc]                                     ; $52ba: $0a
	add  hl, de                                      ; $52bb: $19
	dec  b                                           ; $52bc: $05
	inc  bc                                          ; $52bd: $03
	inc  bc                                          ; $52be: $03
	add  [hl]                                        ; $52bf: $86
	ld   [bc], a                                     ; $52c0: $02
	xor  l                                           ; $52c1: $ad
	ld   [bc], a                                     ; $52c2: $02
	sbc  d                                           ; $52c3: $9a
	ld   e, e                                        ; $52c4: $5b
	ld   a, b                                        ; $52c5: $78
	and  c                                           ; $52c6: $a1
	ld   [hl], l                                     ; $52c7: $75
	ld   h, a                                        ; $52c8: $67
	ld   e, c                                        ; $52c9: $59
	ld   sp, hl                                      ; $52ca: $f9
	nop                                              ; $52cb: $00
	nop                                              ; $52cc: $00
	inc  bc                                          ; $52cd: $03
	add  [hl]                                        ; $52ce: $86
	ld   [bc], a                                     ; $52cf: $02
	xor  l                                           ; $52d0: $ad
	ld   a, l                                        ; $52d1: $7d
	inc  b                                           ; $52d2: $04
	ld   c, c                                        ; $52d3: $49
	inc  bc                                          ; $52d4: $03
	add  d                                           ; $52d5: $82
	inc  b                                           ; $52d6: $04
	db   $e3                                         ; $52d7: $e3
	ld   h, l                                        ; $52d8: $65
	ld   d, d                                        ; $52d9: $52
	ld   [hl], l                                     ; $52da: $75
	ld   h, a                                        ; $52db: $67
	ld   e, c                                        ; $52dc: $59
	ld   sp, hl                                      ; $52dd: $f9
	nop                                              ; $52de: $00
	ld   bc, $6d04                                   ; $52df: $01 $04 $6d
	halt                                             ; $52e2: $76
	inc  b                                           ; $52e3: $04
	ldh  a, [c]                                      ; $52e4: $f2
	add  c                                           ; $52e5: $81
	adc  h                                           ; $52e6: $8c
	ld   l, a                                        ; $52e7: $6f
	ld   d, l                                        ; $52e8: $55
	and  c                                           ; $52e9: $a1
	ld   e, c                                        ; $52ea: $59
	db   $fc                                         ; $52eb: $fc
	nop                                              ; $52ec: $00
	ld   [bc], a                                     ; $52ed: $02
	rlca                                             ; $52ee: $07
	halt                                             ; $52ef: $76
	ld   bc, $0302                                   ; $52f0: $01 $02 $03
	ld   bc, $2000                                   ; $52f3: $01 $00 $20
	nop                                              ; $52f6: $00
	rlca                                             ; $52f7: $07
	ldh  [rP1], a                                    ; $52f8: $e0 $00
	ld   [bc], a                                     ; $52fa: $02
	inc  bc                                          ; $52fb: $03
	ld   bc, $2001                                   ; $52fc: $01 $01 $20
	nop                                              ; $52ff: $00
	rlca                                             ; $5300: $07
	inc  bc                                          ; $5301: $03
	ld   bc, $0302                                   ; $5302: $01 $02 $03
	ld   bc, $2002                                   ; $5305: $01 $02 $20
	nop                                              ; $5308: $00
	ld   b, $be                                      ; $5309: $06 $be
	nop                                              ; $530b: $00
	rrca                                             ; $530c: $0f
	ld   b, $00                                      ; $530d: $06 $00
	ld   bc, $f304                                   ; $530f: $01 $04 $f3
	ld   e, d                                        ; $5312: $5a
	ld   a, b                                        ; $5313: $78
	ld   d, d                                        ; $5314: $52
	ld   a, b                                        ; $5315: $78
	sub  a                                           ; $5316: $97
	sbc  [hl]                                        ; $5317: $9e
	dec  c                                           ; $5318: $0d
	ld   d, b                                        ; $5319: $50
	ld   l, l                                        ; $531a: $6d
	ld   d, d                                        ; $531b: $52
	ld   a, l                                        ; $531c: $7d
	ld   [bc], a                                     ; $531d: $02
	ld   a, a                                        ; $531e: $7f
	ld   e, l                                        ; $531f: $5d
	ld   l, d                                        ; $5320: $6a
	sbc  a                                           ; $5321: $9f
	dec  c                                           ; $5322: $0d
	nop                                              ; $5323: $00
	ld   a, [bc]                                     ; $5324: $0a
	dec  c                                           ; $5325: $0d
	nop                                              ; $5326: $00
	nop                                              ; $5327: $00
	rrca                                             ; $5328: $0f
	nop                                              ; $5329: $00
	ld   bc, $1e09                                   ; $532a: $01 $09 $1e
	nop                                              ; $532d: $00
	rrca                                             ; $532e: $0f
	nop                                              ; $532f: $00
	ld   bc, $ac01                                   ; $5330: $01 $01 $ac
	push af                                          ; $5333: $f5
	bit  4, e                                        ; $5334: $cb $63
	and  c                                           ; $5336: $a1
	ld   [hl], c                                     ; $5337: $71
	ld   [hl], h                                     ; $5338: $74
	dec  c                                           ; $5339: $0d
	inc  bc                                          ; $533a: $03
	add  [hl]                                        ; $533b: $86
	ld   [bc], a                                     ; $533c: $02
	xor  l                                           ; $533d: $ad
	ld   a, l                                        ; $533e: $7d
	inc  b                                           ; $533f: $04
	ld   c, c                                        ; $5340: $49
	inc  bc                                          ; $5341: $03
	add  d                                           ; $5342: $82
	inc  b                                           ; $5343: $04
	db   $e3                                         ; $5344: $e3
	ld   h, l                                        ; $5345: $65
	ld   d, d                                        ; $5346: $52
	ld   [hl], l                                     ; $5347: $75
	ld   h, a                                        ; $5348: $67
	ld   e, c                                        ; $5349: $59
	ld   sp, hl                                      ; $534a: $f9
	dec  c                                           ; $534b: $0d
	nop                                              ; $534c: $00
	ld   a, [bc]                                     ; $534d: $0a
	ld   b, $2a                                      ; $534e: $06 $2a
	ld   bc, $000f                                   ; $5350: $01 $0f $00
	ld   bc, $0401                                   ; $5353: $01 $01 $04
	ld   l, l                                        ; $5356: $6d
	halt                                             ; $5357: $76
	inc  b                                           ; $5358: $04
	ldh  a, [c]                                      ; $5359: $f2
	add  c                                           ; $535a: $81
	adc  h                                           ; $535b: $8c
	ld   l, a                                        ; $535c: $6f
	ld   d, l                                        ; $535d: $55
	and  c                                           ; $535e: $a1
	ld   e, c                                        ; $535f: $59
	db   $fc                                         ; $5360: $fc
	sbc  a                                           ; $5361: $9f
	dec  c                                           ; $5362: $0d
	inc  b                                           ; $5363: $04
	ld   l, l                                        ; $5364: $6d
	ld   l, a                                        ; $5365: $6f
	sub  c                                           ; $5366: $91
	and  c                                           ; $5367: $a1
	inc  bc                                          ; $5368: $03
	add  [hl]                                        ; $5369: $86
	ld   [bc], a                                     ; $536a: $02
	xor  l                                           ; $536b: $ad
	ld   [hl], l                                     ; $536c: $75
	ld   l, a                                        ; $536d: $6f
	sub  e                                           ; $536e: $93
	sub  [hl]                                        ; $536f: $96
	db   $fc                                         ; $5370: $fc
	sbc  a                                           ; $5371: $9f
	dec  c                                           ; $5372: $0d
	nop                                              ; $5373: $00
	ld   a, [bc]                                     ; $5374: $0a
	ld   b, $2a                                      ; $5375: $06 $2a
	ld   bc, $061c                                   ; $5377: $01 $1c $06
	dec  b                                           ; $537a: $05
	dec  b                                           ; $537b: $05
	ld   bc, $4f7d                                   ; $537c: $01 $7d $4f
	ld   sp, hl                                      ; $537f: $f9
	dec  c                                           ; $5380: $0d
	ld   e, b                                        ; $5381: $58
	adc  h                                           ; $5382: $8c
	ld   d, [hl]                                     ; $5383: $56
	inc  b                                           ; $5384: $04
	ld   b, d                                        ; $5385: $42
	adc  d                                           ; $5386: $8a
	ld   e, a                                        ; $5387: $5f
	ld   [hl], h                                     ; $5388: $74
	sbc  c                                           ; $5389: $99
	ld   a, h                                        ; $538a: $7c
	ld   e, c                                        ; $538b: $59
	ld   sp, hl                                      ; $538c: $f9
	dec  c                                           ; $538d: $0d
	nop                                              ; $538e: $00
	ld   a, [bc]                                     ; $538f: $0a
	inc  e                                           ; $5390: $1c
	ld   b, $02                                      ; $5391: $06 $02
	ld   [bc], a                                     ; $5393: $02
	dec  e                                           ; $5394: $1d
	ld   b, b                                        ; $5395: $40
	ld   d, $03                                      ; $5396: $16 $03
	ld   d, $01                                      ; $5398: $16 $01
	ld   [bc], a                                     ; $539a: $02
	add  hl, hl                                      ; $539b: $29
	nop                                              ; $539c: $00
	ld   bc, $1605                                   ; $539d: $01 $05 $16
	ld   [hl], c                                     ; $53a0: $71
	ld   l, l                                        ; $53a1: $6d
	adc  h                                           ; $53a2: $8c
	adc  h                                           ; $53a3: $8c
	inc  b                                           ; $53a4: $04
	ld   b, d                                        ; $53a5: $42
	ld   [bc], a                                     ; $53a6: $02
	sbc  l                                           ; $53a7: $9d
	ld   d, d                                        ; $53a8: $52
	ld   d, h                                        ; $53a9: $54
	ld   a, b                                        ; $53aa: $78
	sub  a                                           ; $53ab: $97
	dec  c                                           ; $53ac: $0d
	ld   [bc], a                                     ; $53ad: $02
	ld   [hl], d                                     ; $53ae: $72
	ld   d, b                                        ; $53af: $50
	sub  a                                           ; $53b0: $97
	ld   [hl], c                                     ; $53b1: $71
	ld   [hl], h                                     ; $53b2: $74
	ld   h, c                                        ; $53b3: $61
	ld   d, d                                        ; $53b4: $52
	ld   a, [$000d]                                  ; $53b5: $fa $0d $00
	ld   a, [bc]                                     ; $53b8: $0a
	dec  c                                           ; $53b9: $0d
	nop                                              ; $53ba: $00
	nop                                              ; $53bb: $00
	rrca                                             ; $53bc: $0f
	nop                                              ; $53bd: $00
	ld   bc, $1e09                                   ; $53be: $01 $09 $1e
	add  hl, hl                                      ; $53c1: $29
	inc  bc                                          ; $53c2: $03
	nop                                              ; $53c3: $00
	rrca                                             ; $53c4: $0f
	nop                                              ; $53c5: $00
	ld   bc, $0301                                   ; $53c6: $01 $01 $03
	add  [hl]                                        ; $53c9: $86
	ld   [bc], a                                     ; $53ca: $02
	xor  l                                           ; $53cb: $ad
	ld   [bc], a                                     ; $53cc: $02
	sbc  d                                           ; $53cd: $9a
	ld   e, e                                        ; $53ce: $5b
	ld   a, b                                        ; $53cf: $78
	and  c                                           ; $53d0: $a1
	ld   [hl], l                                     ; $53d1: $75
	ld   h, a                                        ; $53d2: $67
	ld   e, c                                        ; $53d3: $59
	ld   sp, hl                                      ; $53d4: $f9
	dec  c                                           ; $53d5: $0d
	nop                                              ; $53d6: $00
	ld   a, [bc]                                     ; $53d7: $0a
	inc  e                                           ; $53d8: $1c
	ld   b, $04                                      ; $53d9: $06 $04
	inc  b                                           ; $53db: $04
	ld   bc, $a178                                   ; $53dc: $01 $78 $a1
	ld   l, [hl]                                     ; $53df: $6e
	sub  [hl]                                        ; $53e0: $96
	sbc  [hl]                                        ; $53e1: $9e
	sub  d                                           ; $53e2: $92
	add  h                                           ; $53e3: $84
	ld   e, c                                        ; $53e4: $59
	sub  a                                           ; $53e5: $97
	adc  d                                           ; $53e6: $8a
	ld   d, h                                        ; $53e7: $54
	ld   a, c                                        ; $53e8: $79
	rst  $38                                         ; $53e9: $ff
	rst  $38                                         ; $53ea: $ff
	dec  c                                           ; $53eb: $0d
	adc  h                                           ; $53ec: $8c
	ld   d, b                                        ; $53ed: $50
	sbc  [hl]                                        ; $53ee: $9e
	ld   [bc], a                                     ; $53ef: $02
	sbc  d                                           ; $53f0: $9a
	ld   e, e                                        ; $53f1: $5b
	ld   l, [hl]                                     ; $53f2: $6e
	ld   e, a                                        ; $53f3: $5f
	ld   [hl], a                                     ; $53f4: $77
	ld   a, b                                        ; $53f5: $78
	sbc  a                                           ; $53f6: $9f
	dec  c                                           ; $53f7: $0d
	ld   l, e                                        ; $53f8: $6b
	ld   d, h                                        ; $53f9: $54
	ld   d, d                                        ; $53fa: $52
	ld   d, h                                        ; $53fb: $54
	ld   e, b                                        ; $53fc: $58
	inc  bc                                          ; $53fd: $03
	ld   c, a                                        ; $53fe: $4f
	ld   a, l                                        ; $53ff: $7d
	ld   [hl], a                                     ; $5400: $77
	ld   d, h                                        ; $5401: $54
	ld   a, b                                        ; $5402: $78
	and  c                                           ; $5403: $a1
	ld   l, [hl]                                     ; $5404: $6e
	ld   sp, hl                                      ; $5405: $f9
	dec  c                                           ; $5406: $0d
	nop                                              ; $5407: $00
	ld   a, [bc]                                     ; $5408: $0a
	add  hl, de                                      ; $5409: $19
	dec  b                                           ; $540a: $05
	ld   [bc], a                                     ; $540b: $02
	ld   [bc], a                                     ; $540c: $02
	sbc  d                                           ; $540d: $9a
	ld   e, e                                        ; $540e: $5b
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	ld   e, e                                        ; $5411: $5b
	sub  a                                           ; $5412: $97
	ld   d, d                                        ; $5413: $52
	nop                                              ; $5414: $00
	ld   bc, $dd07                                   ; $5415: $01 $07 $dd
	ld   bc, $0302                                   ; $5418: $01 $02 $03
	ld   bc, $2000                                   ; $541b: $01 $00 $20
	nop                                              ; $541e: $00
	rlca                                             ; $541f: $07
	ld   b, c                                        ; $5420: $41
	ld   [bc], a                                     ; $5421: $02
	ld   [bc], a                                     ; $5422: $02
	inc  bc                                          ; $5423: $03
	ld   bc, $2001                                   ; $5424: $01 $01 $20
	nop                                              ; $5427: $00
	ld   b, $7e                                      ; $5428: $06 $7e
	ld   [bc], a                                     ; $542a: $02
	rrca                                             ; $542b: $0f
	nop                                              ; $542c: $00
	ld   bc, $0401                                   ; $542d: $01 $01 $04
	ld   l, l                                        ; $5430: $6d
	sub  b                                           ; $5431: $90
	ld   [bc], a                                     ; $5432: $02
	sbc  d                                           ; $5433: $9a
	ld   e, e                                        ; $5434: $5b
	ld   [hl], l                                     ; $5435: $75
	ld   h, a                                        ; $5436: $67
	sbc  a                                           ; $5437: $9f
	dec  c                                           ; $5438: $0d
	nop                                              ; $5439: $00
	ld   a, [bc]                                     ; $543a: $0a
	inc  e                                           ; $543b: $1c
	ld   b, $01                                      ; $543c: $06 $01
	ld   bc, $401d                                   ; $543e: $01 $1d $40
	ld   d, $03                                      ; $5441: $16 $03
	ld   d, $01                                      ; $5443: $16 $01
	ld   [bc], a                                     ; $5445: $02
	jr   z, jr_046_5448                              ; $5446: $28 $00

jr_046_5448:
	ld   bc, $546b                                   ; $5448: $01 $6b $54
	ld   l, [hl]                                     ; $544b: $6e
	sub  [hl]                                        ; $544c: $96
	ld   a, b                                        ; $544d: $78
	sbc  a                                           ; $544e: $9f
	dec  c                                           ; $544f: $0d
	inc  bc                                          ; $5450: $03
	add  [hl]                                        ; $5451: $86
	ld   [bc], a                                     ; $5452: $02
	xor  l                                           ; $5453: $ad
	ld   [hl], c                                     ; $5454: $71
	ld   [hl], h                                     ; $5455: $74
	ld   d, d                                        ; $5456: $52
	ld   d, d                                        ; $5457: $52
	sub  [hl]                                        ; $5458: $96
	ld   a, b                                        ; $5459: $78
	rst  $38                                         ; $545a: $ff
	rst  $38                                         ; $545b: $ff
	dec  c                                           ; $545c: $0d
	adc  [hl]                                        ; $545d: $8e
	ld   h, [hl]                                     ; $545e: $66
	sub  c                                           ; $545f: $91
	ld   e, e                                        ; $5460: $5b
	ld   [hl], l                                     ; $5461: $75
	sbc  [hl]                                        ; $5462: $9e
	ld   e, c                                        ; $5463: $59
	sbc  l                                           ; $5464: $9d
	ld   d, d                                        ; $5465: $52
	ld   e, l                                        ; $5466: $5d
	ld   [hl], h                                     ; $5467: $74
	ld   h, e                                        ; $5468: $63
	sbc  a                                           ; $5469: $9f
	dec  c                                           ; $546a: $0d
	nop                                              ; $546b: $00
	ld   a, [bc]                                     ; $546c: $0a
	inc  e                                           ; $546d: $1c
	ld   b, $00                                      ; $546e: $06 $00
	nop                                              ; $5470: $00
	ld   bc, $7463                                   ; $5471: $01 $63 $74
	halt                                             ; $5474: $76
	sbc  [hl]                                        ; $5475: $9e
	ld   [bc], a                                     ; $5476: $02
	ld   a, a                                        ; $5477: $7f
	ld   e, l                                        ; $5478: $5d
	ld   e, c                                        ; $5479: $59
	sbc  a                                           ; $547a: $9f
	dec  c                                           ; $547b: $0d

Jump_046_547c:
	ld   h, [hl]                                     ; $547c: $66
	sub  c                                           ; $547d: $91
	ld   d, b                                        ; $547e: $50
	ld   a, b                                        ; $547f: $78
	sbc  a                                           ; $5480: $9f
	dec  c                                           ; $5481: $0d
	nop                                              ; $5482: $00
	ld   a, [bc]                                     ; $5483: $0a
	dec  c                                           ; $5484: $0d
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	rrca                                             ; $5487: $0f
	nop                                              ; $5488: $00
	ld   bc, $1e09                                   ; $5489: $01 $09 $1e
	add  hl, hl                                      ; $548c: $29
	inc  bc                                          ; $548d: $03
	nop                                              ; $548e: $00
	rrca                                             ; $548f: $0f
	nop                                              ; $5490: $00
	ld   bc, $0401                                   ; $5491: $01 $01 $04
	ld   l, l                                        ; $5494: $6d
	ld   a, l                                        ; $5495: $7d
	ld   e, e                                        ; $5496: $5b
	sub  a                                           ; $5497: $97
	ld   d, d                                        ; $5498: $52
	ld   [hl], l                                     ; $5499: $75
	ld   h, a                                        ; $549a: $67
	sbc  a                                           ; $549b: $9f
	dec  c                                           ; $549c: $0d
	nop                                              ; $549d: $00
	ld   a, [bc]                                     ; $549e: $0a
	inc  e                                           ; $549f: $1c
	ld   b, $05                                      ; $54a0: $06 $05
	dec  b                                           ; $54a2: $05
	dec  e                                           ; $54a3: $1d
	ld   b, b                                        ; $54a4: $40
	ld   d, $03                                      ; $54a5: $16 $03
	ld   d, $01                                      ; $54a7: $16 $01
	ld   [bc], a                                     ; $54a9: $02
	add  hl, hl                                      ; $54aa: $29
	nop                                              ; $54ab: $00
	ld   bc, $5483                                   ; $54ac: $01 $83 $54
	and  c                                           ; $54af: $a1
	rst  $38                                         ; $54b0: $ff
	rst  $38                                         ; $54b1: $ff
	rst  $38                                         ; $54b2: $ff
	rst  $38                                         ; $54b3: $ff
	dec  c                                           ; $54b4: $0d
	adc  h                                           ; $54b5: $8c
	ld   d, b                                        ; $54b6: $50
	sbc  [hl]                                        ; $54b7: $9e
	ld   d, d                                        ; $54b8: $52
	ld   d, d                                        ; $54b9: $52
	ld   e, a                                        ; $54ba: $5f
	ld   [hl], a                                     ; $54bb: $77
	ld   a, b                                        ; $54bc: $78
	sbc  a                                           ; $54bd: $9f
	dec  c                                           ; $54be: $0d
	nop                                              ; $54bf: $00
	ld   a, [bc]                                     ; $54c0: $0a
	dec  c                                           ; $54c1: $0d
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	rrca                                             ; $54c4: $0f
	nop                                              ; $54c5: $00
	ld   bc, $1e09                                   ; $54c6: $01 $09 $1e
	add  hl, hl                                      ; $54c9: $29
	inc  bc                                          ; $54ca: $03
	nop                                              ; $54cb: $00
	inc  e                                           ; $54cc: $1c
	ld   b, $02                                      ; $54cd: $06 $02
	ld   [bc], a                                     ; $54cf: $02
	dec  e                                           ; $54d0: $1d
	ld   b, b                                        ; $54d1: $40
	ld   d, $03                                      ; $54d2: $16 $03
	ld   d, $01                                      ; $54d4: $16 $01
	inc  bc                                          ; $54d6: $03
	add  hl, hl                                      ; $54d7: $29
	nop                                              ; $54d8: $00
	ld   bc, $a178                                   ; $54d9: $01 $78 $a1
	ld   l, [hl]                                     ; $54dc: $6e
	sub  [hl]                                        ; $54dd: $96
	rst  $38                                         ; $54de: $ff
	rst  $38                                         ; $54df: $ff
	dec  c                                           ; $54e0: $0d
	nop                                              ; $54e1: $00
	dec  b                                           ; $54e2: $05
	ld   b, b                                        ; $54e3: $40
	ld   c, l                                        ; $54e4: $4d
	ld   [bc], a                                     ; $54e5: $02
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	ld   bc, $8203                                   ; $54e8: $01 $03 $82
	ld   e, d                                        ; $54eb: $5a
	ld   [bc], a                                     ; $54ec: $02
	jp   nz, Jump_046_7452                           ; $54ed: $c2 $52 $74

	sbc  c                                           ; $54f0: $99
	ld   a, h                                        ; $54f1: $7c
	ld   a, c                                        ; $54f2: $79
	cp   b                                           ; $54f3: $b8
	xor  h                                           ; $54f4: $ac
	ret                                              ; $54f5: $c9


	ld   e, c                                        ; $54f6: $59
	sub  [hl]                                        ; $54f7: $96
	sbc  a                                           ; $54f8: $9f
	dec  c                                           ; $54f9: $0d
	nop                                              ; $54fa: $00
	dec  b                                           ; $54fb: $05
	ld   b, b                                        ; $54fc: $40
	ld   d, e                                        ; $54fd: $53
	ld   bc, $0001                                   ; $54fe: $01 $01 $00
	ld   bc, $5490                                   ; $5501: $01 $90 $54
	ld   d, d                                        ; $5504: $52
	ld   d, d                                        ; $5505: $52
	ld   a, [$000d]                                  ; $5506: $fa $0d $00
	ld   a, [bc]                                     ; $5509: $0a
	dec  c                                           ; $550a: $0d
	nop                                              ; $550b: $00
	nop                                              ; $550c: $00
	rrca                                             ; $550d: $0f
	nop                                              ; $550e: $00
	ld   bc, $1e09                                   ; $550f: $01 $09 $1e
	add  hl, hl                                      ; $5512: $29
	inc  bc                                          ; $5513: $03
	nop                                              ; $5514: $00
	inc  e                                           ; $5515: $1c
	ld   b, $00                                      ; $5516: $06 $00
	nop                                              ; $5518: $00
	ld   bc, $ff50                                   ; $5519: $01 $50 $ff
	rst  $38                                         ; $551c: $ff
	rst  $38                                         ; $551d: $ff
	dec  c                                           ; $551e: $0d
	nop                                              ; $551f: $00
	inc  e                                           ; $5520: $1c
	ld   b, $02                                      ; $5521: $06 $02
	ld   [bc], a                                     ; $5523: $02
	ld   bc, $a178                                   ; $5524: $01 $78 $a1
	ld   l, [hl]                                     ; $5527: $6e
	sub  [hl]                                        ; $5528: $96
	sbc  [hl]                                        ; $5529: $9e
	ld   [$9f00], sp                                 ; $552a: $08 $00 $9f
	dec  c                                           ; $552d: $0d
	inc  b                                           ; $552e: $04
	ld   c, c                                        ; $552f: $49
	ld   e, c                                        ; $5530: $59
	inc  b                                           ; $5531: $04
	di                                               ; $5532: $f3
	ld   e, c                                        ; $5533: $59
	ld   sp, hl                                      ; $5534: $f9
	dec  c                                           ; $5535: $0d
	nop                                              ; $5536: $00
	ld   a, [bc]                                     ; $5537: $0a
	rrca                                             ; $5538: $0f
	nop                                              ; $5539: $00
	ld   bc, $0101                                   ; $553a: $01 $01 $01
	inc  bc                                          ; $553d: $03
	inc  b                                           ; $553e: $04
	pop  hl                                          ; $553f: $e1
	inc  b                                           ; $5540: $04
	rst  $38                                         ; $5541: $ff
	ld   h, e                                        ; $5542: $63
	and  c                                           ; $5543: $a1
	ld   e, c                                        ; $5544: $59
	sub  a                                           ; $5545: $97
	ld   [bc], a                                     ; $5546: $02
	jp   nz, Jump_046_6d52                           ; $5547: $c2 $52 $6d

	dec  c                                           ; $554a: $0d
	db   $10                                         ; $554b: $10
	xor  h                                           ; $554c: $ac
	push af                                          ; $554d: $f5
	bit  4, e                                        ; $554e: $cb $63
	and  c                                           ; $5550: $a1
	ld   a, l                                        ; $5551: $7d
	inc  bc                                          ; $5552: $03
	add  [hl]                                        ; $5553: $86
	ld   [bc], a                                     ; $5554: $02
	xor  l                                           ; $5555: $ad
	ld   [bc], a                                     ; $5556: $02
	sbc  d                                           ; $5557: $9a
	ld   e, e                                        ; $5558: $5b
	ld   [hl], c                                     ; $5559: $71
	ld   [hl], h                                     ; $555a: $74
	dec  c                                           ; $555b: $0d
	db   $10                                         ; $555c: $10
	dec  b                                           ; $555d: $05
	jr   nz, @-$5e                                   ; $555e: $20 $a0

	ld   h, l                                        ; $5560: $65
	ld   [hl], h                                     ; $5561: $74
	adc  l                                           ; $5562: $8d
	sub  [hl]                                        ; $5563: $96
	ld   d, h                                        ; $5564: $54
	rst  $38                                         ; $5565: $ff
	rst  $38                                         ; $5566: $ff
	ld   bc, $0d04                                   ; $5567: $01 $04 $0d
	nop                                              ; $556a: $00
	ld   a, [bc]                                     ; $556b: $0a
	dec  b                                           ; $556c: $05
	ld   b, b                                        ; $556d: $40
	ld   d, e                                        ; $556e: $53
	ld   bc, $0000                                   ; $556f: $01 $00 $00
	ld   bc, $7c50                                   ; $5572: $01 $50 $7c
	rst  $38                                         ; $5575: $ff
	rst  $38                                         ; $5576: $ff
	xor  h                                           ; $5577: $ac
	push af                                          ; $5578: $f5
	bit  4, e                                        ; $5579: $cb $63
	and  c                                           ; $557b: $a1
	ld   [hl], c                                     ; $557c: $71
	ld   [hl], h                                     ; $557d: $74
	sbc  [hl]                                        ; $557e: $9e
	dec  c                                           ; $557f: $0d
	inc  bc                                          ; $5580: $03
	add  [hl]                                        ; $5581: $86
	ld   [bc], a                                     ; $5582: $02
	xor  l                                           ; $5583: $ad
	ld   [bc], a                                     ; $5584: $02
	sbc  d                                           ; $5585: $9a
	ld   e, e                                        ; $5586: $5b
	ld   a, b                                        ; $5587: $78
	and  c                                           ; $5588: $a1
	ld   [hl], l                                     ; $5589: $75
	ld   h, a                                        ; $558a: $67
	ld   e, c                                        ; $558b: $59
	ld   sp, hl                                      ; $558c: $f9
	dec  c                                           ; $558d: $0d
	nop                                              ; $558e: $00
	ld   a, [bc]                                     ; $558f: $0a
	rrca                                             ; $5590: $0f
	ld   b, $02                                      ; $5591: $06 $02
	ld   bc, $ffff                                   ; $5593: $01 $ff $ff
	rst  $38                                         ; $5596: $ff
	rst  $38                                         ; $5597: $ff
	dec  c                                           ; $5598: $0d
	inc  b                                           ; $5599: $04
	di                                               ; $559a: $f3
	ld   a, l                                        ; $559b: $7d
	ld   l, e                                        ; $559c: $6b
	sbc  d                                           ; $559d: $9a
	ld   l, [hl]                                     ; $559e: $6e
	ld   e, a                                        ; $559f: $5f
	ld   e, c                                        ; $55a0: $59
	ld   sp, hl                                      ; $55a1: $f9
	dec  c                                           ; $55a2: $0d
	ld   h, [hl]                                     ; $55a3: $66
	sub  c                                           ; $55a4: $91
	ld   d, b                                        ; $55a5: $50
	ld   a, b                                        ; $55a6: $78
	sbc  a                                           ; $55a7: $9f
	dec  c                                           ; $55a8: $0d
	nop                                              ; $55a9: $00
	ld   a, [bc]                                     ; $55aa: $0a
	dec  c                                           ; $55ab: $0d
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	rrca                                             ; $55ae: $0f
	nop                                              ; $55af: $00
	ld   bc, $5601                                   ; $55b0: $01 $01 $56
	rst  $38                                         ; $55b3: $ff
	rst  $38                                         ; $55b4: $ff
	ld   sp, hl                                      ; $55b5: $f9
	db   $10                                         ; $55b6: $10
	xor  h                                           ; $55b7: $ac
	push af                                          ; $55b8: $f5
	bit  4, e                                        ; $55b9: $cb $63
	and  c                                           ; $55bb: $a1
	ld   sp, hl                                      ; $55bc: $f9
	dec  c                                           ; $55bd: $0d
	ld   d, b                                        ; $55be: $50
	rst  $38                                         ; $55bf: $ff
	rst  $38                                         ; $55c0: $ff
	ld   [bc], a                                     ; $55c1: $02
	ld   a, a                                        ; $55c2: $7f
	ld   [hl], c                                     ; $55c3: $71
	ld   l, a                                        ; $55c4: $6f
	sub  c                                           ; $55c5: $91
	ld   [hl], c                                     ; $55c6: $71
	ld   l, l                                        ; $55c7: $6d
	sbc  a                                           ; $55c8: $9f
	dec  c                                           ; $55c9: $0d
	inc  bc                                          ; $55ca: $03
	ld   hl, sp+$71                                  ; $55cb: $f8 $71
	ld   [hl], h                                     ; $55cd: $74
	ld   l, l                                        ; $55ce: $6d
	ld   a, b                                        ; $55cf: $78
	rst  $38                                         ; $55d0: $ff
	rst  $38                                         ; $55d1: $ff
	sbc  a                                           ; $55d2: $9f
	dec  c                                           ; $55d3: $0d
	nop                                              ; $55d4: $00
	ld   a, [bc]                                     ; $55d5: $0a
	nop                                              ; $55d6: $00
	nop                                              ; $55d7: $00
	inc  bc                                          ; $55d8: $03
	ld   c, a                                        ; $55d9: $4f
	ld   [bc], a                                     ; $55da: $02
	nop                                              ; $55db: $00
	inc  bc                                          ; $55dc: $03
	ld   c, c                                        ; $55dd: $49
	add  hl, hl                                      ; $55de: $29
	add  hl, hl                                      ; $55df: $29
	ld   bc, $2501                                   ; $55e0: $01 $01 $25
	nop                                              ; $55e3: $00
	rrca                                             ; $55e4: $0f
	nop                                              ; $55e5: $00
	ld   bc, $0702                                   ; $55e6: $01 $02 $07
	ld   [hl+], a                                    ; $55e9: $22
	nop                                              ; $55ea: $00
	inc  bc                                          ; $55eb: $03
	ld   c, a                                        ; $55ec: $4f
	ld   [bc], a                                     ; $55ed: $02
	nop                                              ; $55ee: $00
	inc  bc                                          ; $55ef: $03
	ld   c, c                                        ; $55f0: $49
	add  hl, hl                                      ; $55f1: $29
	add  hl, hl                                      ; $55f2: $29
	ld   bc, $2002                                   ; $55f3: $01 $02 $20
	nop                                              ; $55f6: $00
	rlca                                             ; $55f7: $07
	ld   l, d                                        ; $55f8: $6a
	nop                                              ; $55f9: $00
	inc  bc                                          ; $55fa: $03
	ld   c, a                                        ; $55fb: $4f
	ld   [bc], a                                     ; $55fc: $02
	nop                                              ; $55fd: $00
	inc  bc                                          ; $55fe: $03
	ld   c, c                                        ; $55ff: $49
	add  hl, hl                                      ; $5600: $29
	add  hl, hl                                      ; $5601: $29
	ld   bc, $2001                                   ; $5602: $01 $01 $20
	nop                                              ; $5605: $00
	dec  c                                           ; $5606: $0d
	ld   [bc], a                                     ; $5607: $02
	ld   [bc], a                                     ; $5608: $02
	add  hl, bc                                      ; $5609: $09
	ld   e, $01                                      ; $560a: $1e $01
	ld   d, b                                        ; $560c: $50
	ld   [hl], c                                     ; $560d: $71
	sbc  [hl]                                        ; $560e: $9e
	ld   h, a                                        ; $560f: $67
	adc  l                                           ; $5610: $8d
	sbc  d                                           ; $5611: $9a
	ld   h, e                                        ; $5612: $63
	and  c                                           ; $5613: $a1
	rst  $38                                         ; $5614: $ff
	rst  $38                                         ; $5615: $ff
	dec  c                                           ; $5616: $0d
	nop                                              ; $5617: $00
	ld   a, [bc]                                     ; $5618: $0a
	dec  c                                           ; $5619: $0d
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	dec  b                                           ; $561c: $05
	ld   b, b                                        ; $561d: $40
	ld   c, a                                        ; $561e: $4f
	ld   bc, $0000                                   ; $561f: $01 $00 $00
	ld   bc, $ffff                                   ; $5622: $01 $ff $ff
	ld   d, d                                        ; $5625: $52
	sbc  [hl]                                        ; $5626: $9e
	ld   [bc], a                                     ; $5627: $02
	ld   a, a                                        ; $5628: $7f
	ld   [hl], c                                     ; $5629: $71
	ld   [hl], h                                     ; $562a: $74
	ld   h, l                                        ; $562b: $65
	adc  h                                           ; $562c: $8c
	ld   [hl], c                                     ; $562d: $71
	ld   l, l                                        ; $562e: $6d
	rst  $38                                         ; $562f: $ff
	rst  $38                                         ; $5630: $ff
	dec  c                                           ; $5631: $0d
	ld   a, b                                        ; $5632: $78
	and  c                                           ; $5633: $a1
	ld   l, [hl]                                     ; $5634: $6e
	ld   e, c                                        ; $5635: $59
	rst  $38                                         ; $5636: $ff
	rst  $38                                         ; $5637: $ff
	sub  b                                           ; $5638: $90
	ld   a, h                                        ; $5639: $7c
	ld   h, a                                        ; $563a: $67
	ld   h, d                                        ; $563b: $62
	ld   e, l                                        ; $563c: $5d
	dec  c                                           ; $563d: $0d
	inc  bc                                          ; $563e: $03
	ld   hl, sp+$71                                  ; $563f: $f8 $71
	ld   [hl], h                                     ; $5641: $74
	sbc  c                                           ; $5642: $99
	adc  l                                           ; $5643: $8d
	ld   l, l                                        ; $5644: $6d
	ld   d, d                                        ; $5645: $52
	rst  $38                                         ; $5646: $ff
	rst  $38                                         ; $5647: $ff
	rst  $38                                         ; $5648: $ff
	rst  $38                                         ; $5649: $ff
	dec  c                                           ; $564a: $0d
	nop                                              ; $564b: $00
	ld   a, [bc]                                     ; $564c: $0a
	nop                                              ; $564d: $00
	dec  c                                           ; $564e: $0d
	ld   [bc], a                                     ; $564f: $02
	rlca                                             ; $5650: $07
	ld   bc, $7150                                   ; $5651: $01 $50 $71
	sbc  [hl]                                        ; $5654: $9e
	ld   h, a                                        ; $5655: $67
	adc  l                                           ; $5656: $8d
	sbc  d                                           ; $5657: $9a
	ld   h, e                                        ; $5658: $63
	and  c                                           ; $5659: $a1
	rst  $38                                         ; $565a: $ff
	rst  $38                                         ; $565b: $ff
	dec  c                                           ; $565c: $0d
	nop                                              ; $565d: $00
	ld   a, [bc]                                     ; $565e: $0a
	rrca                                             ; $565f: $0f
	ld   [bc], a                                     ; $5660: $02
	rlca                                             ; $5661: $07
	ld   bc, $ffff                                   ; $5662: $01 $ff $ff
	rst  $38                                         ; $5665: $ff
	rst  $38                                         ; $5666: $ff
	rst  $38                                         ; $5667: $ff
	rst  $38                                         ; $5668: $ff
	rst  $38                                         ; $5669: $ff
	rst  $38                                         ; $566a: $ff
	rst  $38                                         ; $566b: $ff
	rst  $38                                         ; $566c: $ff
	rst  $38                                         ; $566d: $ff
	rst  $38                                         ; $566e: $ff
	rst  $38                                         ; $566f: $ff
	rst  $38                                         ; $5670: $ff
	dec  c                                           ; $5671: $0d
	rst  $38                                         ; $5672: $ff
	rst  $38                                         ; $5673: $ff
	rst  $38                                         ; $5674: $ff
	rst  $38                                         ; $5675: $ff
	rst  $38                                         ; $5676: $ff
	dec  c                                           ; $5677: $0d
	nop                                              ; $5678: $00
	ld   a, [bc]                                     ; $5679: $0a
	dec  c                                           ; $567a: $0d
	nop                                              ; $567b: $00
	nop                                              ; $567c: $00
	rrca                                             ; $567d: $0f
	nop                                              ; $567e: $00
	ld   bc, $4005                                   ; $567f: $01 $05 $40
	ld   c, a                                        ; $5682: $4f
	ld   bc, $0000                                   ; $5683: $01 $00 $00
	ld   bc, $ffff                                   ; $5686: $01 $ff $ff
	ld   e, b                                        ; $5689: $58
	sbc  [hl]                                        ; $568a: $9e
	inc  bc                                          ; $568b: $03
	ld   hl, sp+$71                                  ; $568c: $f8 $71
	ld   [hl], h                                     ; $568e: $74
	sbc  c                                           ; $568f: $99
	rst  $38                                         ; $5690: $ff
	rst  $38                                         ; $5691: $ff
	rst  $38                                         ; $5692: $ff
	rst  $38                                         ; $5693: $ff
	dec  c                                           ; $5694: $0d
	nop                                              ; $5695: $00
	ld   a, [bc]                                     ; $5696: $0a
	nop                                              ; $5697: $00
	nop                                              ; $5698: $00
	inc  bc                                          ; $5699: $03
	ld   c, [hl]                                     ; $569a: $4e
	ld   [bc], a                                     ; $569b: $02
	nop                                              ; $569c: $00
	inc  bc                                          ; $569d: $03
	ld   c, b                                        ; $569e: $48
	add  hl, hl                                      ; $569f: $29
	add  hl, hl                                      ; $56a0: $29
	ld   bc, $2501                                   ; $56a1: $01 $01 $25
	nop                                              ; $56a4: $00
	rrca                                             ; $56a5: $0f
	nop                                              ; $56a6: $00
	ld   bc, $0702                                   ; $56a7: $01 $02 $07
	ld   [hl+], a                                    ; $56aa: $22
	nop                                              ; $56ab: $00
	inc  bc                                          ; $56ac: $03
	ld   c, [hl]                                     ; $56ad: $4e
	ld   [bc], a                                     ; $56ae: $02
	nop                                              ; $56af: $00
	inc  bc                                          ; $56b0: $03
	ld   c, b                                        ; $56b1: $48
	add  hl, hl                                      ; $56b2: $29
	add  hl, hl                                      ; $56b3: $29
	ld   bc, $2002                                   ; $56b4: $01 $02 $20
	nop                                              ; $56b7: $00
	rlca                                             ; $56b8: $07
	ld   l, b                                        ; $56b9: $68
	nop                                              ; $56ba: $00
	inc  bc                                          ; $56bb: $03
	ld   c, [hl]                                     ; $56bc: $4e
	ld   [bc], a                                     ; $56bd: $02
	nop                                              ; $56be: $00
	inc  bc                                          ; $56bf: $03
	ld   c, b                                        ; $56c0: $48
	add  hl, hl                                      ; $56c1: $29
	add  hl, hl                                      ; $56c2: $29
	ld   bc, $2001                                   ; $56c3: $01 $01 $20
	nop                                              ; $56c6: $00
	dec  c                                           ; $56c7: $0d
	ld   bc, $0102                                   ; $56c8: $01 $02 $01
	ld   d, b                                        ; $56cb: $50
	ld   [hl], c                                     ; $56cc: $71
	sbc  [hl]                                        ; $56cd: $9e
	ld   h, e                                        ; $56ce: $63
	ld   e, l                                        ; $56cf: $5d
	sub  a                                           ; $56d0: $97
	ld   h, e                                        ; $56d1: $63
	and  c                                           ; $56d2: $a1
	rst  $38                                         ; $56d3: $ff
	rst  $38                                         ; $56d4: $ff
	dec  c                                           ; $56d5: $0d
	nop                                              ; $56d6: $00
	ld   a, [bc]                                     ; $56d7: $0a
	dec  c                                           ; $56d8: $0d
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	dec  b                                           ; $56db: $05
	ld   b, b                                        ; $56dc: $40
	ld   c, [hl]                                     ; $56dd: $4e
	ld   bc, $0000                                   ; $56de: $01 $00 $00
	ld   bc, $ffff                                   ; $56e1: $01 $ff $ff
	ld   d, d                                        ; $56e4: $52
	sbc  [hl]                                        ; $56e5: $9e
	ld   [bc], a                                     ; $56e6: $02
	ld   a, a                                        ; $56e7: $7f
	ld   [hl], c                                     ; $56e8: $71
	ld   [hl], h                                     ; $56e9: $74
	ld   h, l                                        ; $56ea: $65
	adc  h                                           ; $56eb: $8c
	ld   [hl], c                                     ; $56ec: $71
	ld   l, l                                        ; $56ed: $6d
	rst  $38                                         ; $56ee: $ff
	rst  $38                                         ; $56ef: $ff
	dec  c                                           ; $56f0: $0d
	ld   a, b                                        ; $56f1: $78
	and  c                                           ; $56f2: $a1
	ld   l, [hl]                                     ; $56f3: $6e
	ld   e, c                                        ; $56f4: $59
	rst  $38                                         ; $56f5: $ff
	rst  $38                                         ; $56f6: $ff
	sub  b                                           ; $56f7: $90
	ld   a, h                                        ; $56f8: $7c
	ld   h, a                                        ; $56f9: $67
	ld   h, d                                        ; $56fa: $62
	ld   e, l                                        ; $56fb: $5d
	dec  c                                           ; $56fc: $0d
	inc  bc                                          ; $56fd: $03
	ld   hl, sp+$71                                  ; $56fe: $f8 $71
	ld   [hl], h                                     ; $5700: $74
	sbc  c                                           ; $5701: $99
	adc  l                                           ; $5702: $8d
	ld   l, l                                        ; $5703: $6d
	ld   d, d                                        ; $5704: $52
	rst  $38                                         ; $5705: $ff
	rst  $38                                         ; $5706: $ff
	rst  $38                                         ; $5707: $ff
	rst  $38                                         ; $5708: $ff
	dec  c                                           ; $5709: $0d
	nop                                              ; $570a: $00
	ld   a, [bc]                                     ; $570b: $0a
	nop                                              ; $570c: $00
	dec  c                                           ; $570d: $0d
	ld   bc, $0106                                   ; $570e: $01 $06 $01
	ld   d, b                                        ; $5711: $50
	ld   [hl], c                                     ; $5712: $71
	sbc  [hl]                                        ; $5713: $9e
	ld   h, e                                        ; $5714: $63
	ld   e, l                                        ; $5715: $5d
	sub  a                                           ; $5716: $97
	ld   h, e                                        ; $5717: $63
	and  c                                           ; $5718: $a1
	rst  $38                                         ; $5719: $ff
	rst  $38                                         ; $571a: $ff
	dec  c                                           ; $571b: $0d
	nop                                              ; $571c: $00
	ld   a, [bc]                                     ; $571d: $0a
	inc  e                                           ; $571e: $1c
	ld   bc, $0707                                   ; $571f: $01 $07 $07
	ld   bc, $ff50                                   ; $5722: $01 $50 $ff
	rst  $38                                         ; $5725: $ff
	ld   [$6300], sp                                 ; $5726: $08 $00 $63
	and  c                                           ; $5729: $a1
	rst  $38                                         ; $572a: $ff
	rst  $38                                         ; $572b: $ff
	dec  c                                           ; $572c: $0d
	rst  $38                                         ; $572d: $ff
	rst  $38                                         ; $572e: $ff
	rst  $38                                         ; $572f: $ff
	rst  $38                                         ; $5730: $ff
	rst  $38                                         ; $5731: $ff
	dec  c                                           ; $5732: $0d
	nop                                              ; $5733: $00
	ld   a, [bc]                                     ; $5734: $0a
	dec  c                                           ; $5735: $0d
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	rrca                                             ; $5738: $0f
	nop                                              ; $5739: $00
	ld   bc, $4005                                   ; $573a: $01 $05 $40
	ld   c, [hl]                                     ; $573d: $4e
	ld   bc, $0000                                   ; $573e: $01 $00 $00
	ld   bc, $ffff                                   ; $5741: $01 $ff $ff
	ld   h, e                                        ; $5744: $63
	ld   e, l                                        ; $5745: $5d
	sub  a                                           ; $5746: $97
	ld   h, e                                        ; $5747: $63
	and  c                                           ; $5748: $a1
	rst  $38                                         ; $5749: $ff
	rst  $38                                         ; $574a: $ff
	dec  c                                           ; $574b: $0d
	inc  bc                                          ; $574c: $03
	ld   hl, sp+$71                                  ; $574d: $f8 $71
	ld   [hl], h                                     ; $574f: $74
	sbc  c                                           ; $5750: $99
	ld   l, h                                        ; $5751: $6c
	rst  $38                                         ; $5752: $ff
	rst  $38                                         ; $5753: $ff
	rst  $38                                         ; $5754: $ff
	rst  $38                                         ; $5755: $ff
	dec  c                                           ; $5756: $0d
	nop                                              ; $5757: $00
	ld   a, [bc]                                     ; $5758: $0a
	nop                                              ; $5759: $00
	nop                                              ; $575a: $00
	inc  bc                                          ; $575b: $03
	ld   d, b                                        ; $575c: $50
	ld   [bc], a                                     ; $575d: $02
	nop                                              ; $575e: $00
	inc  bc                                          ; $575f: $03
	ld   c, d                                        ; $5760: $4a
	add  hl, hl                                      ; $5761: $29
	add  hl, hl                                      ; $5762: $29
	ld   bc, $2501                                   ; $5763: $01 $01 $25
	nop                                              ; $5766: $00
	rrca                                             ; $5767: $0f
	nop                                              ; $5768: $00
	ld   bc, $0702                                   ; $5769: $01 $02 $07
	ld   [hl+], a                                    ; $576c: $22
	nop                                              ; $576d: $00
	inc  bc                                          ; $576e: $03
	ld   d, b                                        ; $576f: $50
	ld   [bc], a                                     ; $5770: $02
	nop                                              ; $5771: $00
	inc  bc                                          ; $5772: $03
	ld   c, d                                        ; $5773: $4a
	add  hl, hl                                      ; $5774: $29
	add  hl, hl                                      ; $5775: $29
	ld   bc, $2002                                   ; $5776: $01 $02 $20
	nop                                              ; $5779: $00
	rlca                                             ; $577a: $07
	ld   l, b                                        ; $577b: $68
	nop                                              ; $577c: $00
	inc  bc                                          ; $577d: $03
	ld   d, b                                        ; $577e: $50
	ld   [bc], a                                     ; $577f: $02
	nop                                              ; $5780: $00
	inc  bc                                          ; $5781: $03
	ld   c, d                                        ; $5782: $4a
	add  hl, hl                                      ; $5783: $29
	add  hl, hl                                      ; $5784: $29
	ld   bc, $2001                                   ; $5785: $01 $01 $20
	nop                                              ; $5788: $00
	dec  c                                           ; $5789: $0d
	inc  bc                                          ; $578a: $03
	ld   b, $01                                      ; $578b: $06 $01
	ld   d, b                                        ; $578d: $50
	ld   [hl], c                                     ; $578e: $71
	sbc  [hl]                                        ; $578f: $9e
	rst  JumpTable                                         ; $5790: $df
	db   $ec                                         ; $5791: $ec
	and  e                                           ; $5792: $a3
	ld   h, e                                        ; $5793: $63
	and  c                                           ; $5794: $a1
	rst  $38                                         ; $5795: $ff
	rst  $38                                         ; $5796: $ff
	dec  c                                           ; $5797: $0d
	nop                                              ; $5798: $00
	ld   a, [bc]                                     ; $5799: $0a
	dec  c                                           ; $579a: $0d
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	dec  b                                           ; $579d: $05
	ld   b, b                                        ; $579e: $40
	ld   d, b                                        ; $579f: $50
	ld   bc, $0000                                   ; $57a0: $01 $00 $00
	ld   bc, $ffff                                   ; $57a3: $01 $ff $ff
	ld   d, d                                        ; $57a6: $52
	sbc  [hl]                                        ; $57a7: $9e
	ld   [bc], a                                     ; $57a8: $02
	ld   a, a                                        ; $57a9: $7f
	ld   [hl], c                                     ; $57aa: $71
	ld   [hl], h                                     ; $57ab: $74
	ld   h, l                                        ; $57ac: $65
	adc  h                                           ; $57ad: $8c
	ld   [hl], c                                     ; $57ae: $71
	ld   l, l                                        ; $57af: $6d
	rst  $38                                         ; $57b0: $ff
	rst  $38                                         ; $57b1: $ff
	dec  c                                           ; $57b2: $0d
	ld   a, b                                        ; $57b3: $78
	and  c                                           ; $57b4: $a1
	ld   l, [hl]                                     ; $57b5: $6e
	ld   e, c                                        ; $57b6: $59
	rst  $38                                         ; $57b7: $ff
	rst  $38                                         ; $57b8: $ff
	sub  b                                           ; $57b9: $90
	ld   a, h                                        ; $57ba: $7c
	ld   h, a                                        ; $57bb: $67
	ld   h, d                                        ; $57bc: $62
	ld   e, l                                        ; $57bd: $5d
	dec  c                                           ; $57be: $0d
	inc  bc                                          ; $57bf: $03
	ld   hl, sp+$71                                  ; $57c0: $f8 $71
	ld   [hl], h                                     ; $57c2: $74
	sbc  c                                           ; $57c3: $99
	adc  l                                           ; $57c4: $8d
	ld   l, l                                        ; $57c5: $6d
	ld   d, d                                        ; $57c6: $52
	rst  $38                                         ; $57c7: $ff
	rst  $38                                         ; $57c8: $ff
	rst  $38                                         ; $57c9: $ff
	rst  $38                                         ; $57ca: $ff
	dec  c                                           ; $57cb: $0d
	nop                                              ; $57cc: $00
	ld   a, [bc]                                     ; $57cd: $0a
	nop                                              ; $57ce: $00
	dec  c                                           ; $57cf: $0d
	inc  bc                                          ; $57d0: $03
	dec  b                                           ; $57d1: $05
	ld   bc, $7150                                   ; $57d2: $01 $50 $71
	sbc  [hl]                                        ; $57d5: $9e
	rst  JumpTable                                         ; $57d6: $df
	db   $ec                                         ; $57d7: $ec
	and  e                                           ; $57d8: $a3
	ld   h, e                                        ; $57d9: $63
	and  c                                           ; $57da: $a1
	rst  $38                                         ; $57db: $ff
	rst  $38                                         ; $57dc: $ff
	dec  c                                           ; $57dd: $0d
	nop                                              ; $57de: $00
	ld   a, [bc]                                     ; $57df: $0a
	inc  e                                           ; $57e0: $1c
	inc  bc                                          ; $57e1: $03
	inc  b                                           ; $57e2: $04
	inc  b                                           ; $57e3: $04
	ld   bc, $f9a1                                   ; $57e4: $01 $a1 $f9
	db   $10                                         ; $57e7: $10
	rst  $38                                         ; $57e8: $ff
	rst  $38                                         ; $57e9: $ff
	rst  $38                                         ; $57ea: $ff
	rst  $38                                         ; $57eb: $ff
	dec  c                                           ; $57ec: $0d
	rst  $38                                         ; $57ed: $ff
	rst  $38                                         ; $57ee: $ff
	rst  $38                                         ; $57ef: $ff
	rst  $38                                         ; $57f0: $ff
	rst  $38                                         ; $57f1: $ff
	dec  c                                           ; $57f2: $0d
	nop                                              ; $57f3: $00
	ld   a, [bc]                                     ; $57f4: $0a
	dec  c                                           ; $57f5: $0d
	nop                                              ; $57f6: $00
	nop                                              ; $57f7: $00
	rrca                                             ; $57f8: $0f
	nop                                              ; $57f9: $00
	ld   bc, $4005                                   ; $57fa: $01 $05 $40
	ld   d, b                                        ; $57fd: $50
	ld   bc, $0000                                   ; $57fe: $01 $00 $00
	ld   bc, $ffff                                   ; $5801: $01 $ff $ff
	rst  JumpTable                                         ; $5804: $df
	db   $ec                                         ; $5805: $ec
	and  e                                           ; $5806: $a3
	ld   h, e                                        ; $5807: $63
	and  c                                           ; $5808: $a1
	rst  $38                                         ; $5809: $ff
	rst  $38                                         ; $580a: $ff
	dec  c                                           ; $580b: $0d
	inc  bc                                          ; $580c: $03
	ld   hl, sp+$71                                  ; $580d: $f8 $71
	ld   [hl], h                                     ; $580f: $74
	sbc  c                                           ; $5810: $99
	ld   l, h                                        ; $5811: $6c
	rst  $38                                         ; $5812: $ff
	rst  $38                                         ; $5813: $ff
	rst  $38                                         ; $5814: $ff
	rst  $38                                         ; $5815: $ff
	dec  c                                           ; $5816: $0d
	nop                                              ; $5817: $00
	ld   a, [bc]                                     ; $5818: $0a
	nop                                              ; $5819: $00
	nop                                              ; $581a: $00
	inc  bc                                          ; $581b: $03
	ld   d, d                                        ; $581c: $52
	ld   [bc], a                                     ; $581d: $02
	nop                                              ; $581e: $00
	inc  bc                                          ; $581f: $03
	ld   c, h                                        ; $5820: $4c
	add  hl, hl                                      ; $5821: $29
	add  hl, hl                                      ; $5822: $29
	ld   bc, $2501                                   ; $5823: $01 $01 $25
	nop                                              ; $5826: $00
	rrca                                             ; $5827: $0f
	nop                                              ; $5828: $00
	ld   bc, $0702                                   ; $5829: $01 $02 $07
	ld   [hl+], a                                    ; $582c: $22
	nop                                              ; $582d: $00
	inc  bc                                          ; $582e: $03
	ld   d, d                                        ; $582f: $52
	ld   [bc], a                                     ; $5830: $02
	nop                                              ; $5831: $00
	inc  bc                                          ; $5832: $03
	ld   c, h                                        ; $5833: $4c
	add  hl, hl                                      ; $5834: $29
	add  hl, hl                                      ; $5835: $29
	ld   bc, $2002                                   ; $5836: $01 $02 $20
	nop                                              ; $5839: $00
	rlca                                             ; $583a: $07
	ld   l, c                                        ; $583b: $69
	nop                                              ; $583c: $00
	inc  bc                                          ; $583d: $03
	ld   d, d                                        ; $583e: $52
	ld   [bc], a                                     ; $583f: $02
	nop                                              ; $5840: $00
	inc  bc                                          ; $5841: $03
	ld   c, h                                        ; $5842: $4c
	add  hl, hl                                      ; $5843: $29
	add  hl, hl                                      ; $5844: $29
	ld   bc, $2001                                   ; $5845: $01 $01 $20
	nop                                              ; $5848: $00
	dec  c                                           ; $5849: $0d
	dec  b                                           ; $584a: $05
	rlca                                             ; $584b: $07
	ld   bc, $7150                                   ; $584c: $01 $50 $71
	sbc  [hl]                                        ; $584f: $9e
	ld   [bc], a                                     ; $5850: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5851: $cf
	dec  b                                           ; $5852: $05
	ld   a, [de]                                     ; $5853: $1a
	ld   h, e                                        ; $5854: $63
	and  c                                           ; $5855: $a1
	rst  $38                                         ; $5856: $ff
	rst  $38                                         ; $5857: $ff
	dec  c                                           ; $5858: $0d
	nop                                              ; $5859: $00
	ld   a, [bc]                                     ; $585a: $0a
	dec  c                                           ; $585b: $0d
	nop                                              ; $585c: $00
	nop                                              ; $585d: $00
	dec  b                                           ; $585e: $05
	ld   b, b                                        ; $585f: $40
	ld   d, d                                        ; $5860: $52
	ld   bc, $0000                                   ; $5861: $01 $00 $00
	ld   bc, $ffff                                   ; $5864: $01 $ff $ff
	ld   d, d                                        ; $5867: $52
	sbc  [hl]                                        ; $5868: $9e
	ld   [bc], a                                     ; $5869: $02
	ld   a, a                                        ; $586a: $7f
	ld   [hl], c                                     ; $586b: $71
	ld   [hl], h                                     ; $586c: $74
	ld   h, l                                        ; $586d: $65
	adc  h                                           ; $586e: $8c
	ld   [hl], c                                     ; $586f: $71
	ld   l, l                                        ; $5870: $6d
	rst  $38                                         ; $5871: $ff
	rst  $38                                         ; $5872: $ff
	dec  c                                           ; $5873: $0d
	ld   a, b                                        ; $5874: $78
	and  c                                           ; $5875: $a1
	ld   l, [hl]                                     ; $5876: $6e
	ld   e, c                                        ; $5877: $59
	rst  $38                                         ; $5878: $ff
	rst  $38                                         ; $5879: $ff
	sub  b                                           ; $587a: $90
	ld   a, h                                        ; $587b: $7c
	ld   h, a                                        ; $587c: $67
	ld   h, d                                        ; $587d: $62
	ld   e, l                                        ; $587e: $5d
	dec  c                                           ; $587f: $0d
	inc  bc                                          ; $5880: $03
	ld   hl, sp+$71                                  ; $5881: $f8 $71
	ld   [hl], h                                     ; $5883: $74
	sbc  c                                           ; $5884: $99
	adc  l                                           ; $5885: $8d
	ld   l, l                                        ; $5886: $6d
	ld   d, d                                        ; $5887: $52
	rst  $38                                         ; $5888: $ff
	rst  $38                                         ; $5889: $ff
	rst  $38                                         ; $588a: $ff
	rst  $38                                         ; $588b: $ff
	dec  c                                           ; $588c: $0d
	nop                                              ; $588d: $00
	ld   a, [bc]                                     ; $588e: $0a
	nop                                              ; $588f: $00
	dec  c                                           ; $5890: $0d
	dec  b                                           ; $5891: $05
	ld   b, $01                                      ; $5892: $06 $01
	ld   d, b                                        ; $5894: $50
	ld   [hl], c                                     ; $5895: $71
	sbc  [hl]                                        ; $5896: $9e
	ld   [bc], a                                     ; $5897: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5898: $cf
	dec  b                                           ; $5899: $05
	ld   a, [de]                                     ; $589a: $1a
	ld   h, e                                        ; $589b: $63
	and  c                                           ; $589c: $a1
	rst  $38                                         ; $589d: $ff
	rst  $38                                         ; $589e: $ff
	dec  c                                           ; $589f: $0d
	nop                                              ; $58a0: $00
	ld   a, [bc]                                     ; $58a1: $0a
	inc  e                                           ; $58a2: $1c
	dec  b                                           ; $58a3: $05
	ld   [bc], a                                     ; $58a4: $02
	ld   [bc], a                                     ; $58a5: $02
	ld   bc, $ff50                                   ; $58a6: $01 $50 $ff
	rst  $38                                         ; $58a9: $ff
	ld   [$7d00], sp                                 ; $58aa: $08 $00 $7d
	and  c                                           ; $58ad: $a1
	rst  $38                                         ; $58ae: $ff
	rst  $38                                         ; $58af: $ff
	dec  c                                           ; $58b0: $0d
	rst  $38                                         ; $58b1: $ff
	rst  $38                                         ; $58b2: $ff
	rst  $38                                         ; $58b3: $ff
	rst  $38                                         ; $58b4: $ff
	rst  $38                                         ; $58b5: $ff
	dec  c                                           ; $58b6: $0d
	nop                                              ; $58b7: $00
	ld   a, [bc]                                     ; $58b8: $0a
	dec  c                                           ; $58b9: $0d
	nop                                              ; $58ba: $00
	nop                                              ; $58bb: $00
	rrca                                             ; $58bc: $0f
	nop                                              ; $58bd: $00
	ld   bc, $4005                                   ; $58be: $01 $05 $40
	ld   d, d                                        ; $58c1: $52
	ld   bc, $0000                                   ; $58c2: $01 $00 $00
	ld   bc, $ffff                                   ; $58c5: $01 $ff $ff
	ld   [bc], a                                     ; $58c8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58c9: $cf
	dec  b                                           ; $58ca: $05
	ld   a, [de]                                     ; $58cb: $1a
	ld   h, e                                        ; $58cc: $63
	and  c                                           ; $58cd: $a1
	rst  $38                                         ; $58ce: $ff
	rst  $38                                         ; $58cf: $ff
	dec  c                                           ; $58d0: $0d
	inc  bc                                          ; $58d1: $03
	ld   hl, sp+$71                                  ; $58d2: $f8 $71
	ld   [hl], h                                     ; $58d4: $74
	sbc  c                                           ; $58d5: $99
	ld   l, h                                        ; $58d6: $6c
	rst  $38                                         ; $58d7: $ff
	rst  $38                                         ; $58d8: $ff
	rst  $38                                         ; $58d9: $ff
	rst  $38                                         ; $58da: $ff
	dec  c                                           ; $58db: $0d
	nop                                              ; $58dc: $00
	ld   a, [bc]                                     ; $58dd: $0a
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	inc  bc                                          ; $58e0: $03
	ld   d, e                                        ; $58e1: $53
	ld   [bc], a                                     ; $58e2: $02
	nop                                              ; $58e3: $00
	inc  bc                                          ; $58e4: $03
	ld   c, l                                        ; $58e5: $4d
	add  hl, hl                                      ; $58e6: $29
	add  hl, hl                                      ; $58e7: $29
	ld   bc, $2501                                   ; $58e8: $01 $01 $25
	nop                                              ; $58eb: $00
	rrca                                             ; $58ec: $0f
	nop                                              ; $58ed: $00
	ld   bc, $0702                                   ; $58ee: $01 $02 $07
	ld   [hl+], a                                    ; $58f1: $22
	nop                                              ; $58f2: $00
	inc  bc                                          ; $58f3: $03
	ld   d, e                                        ; $58f4: $53
	ld   [bc], a                                     ; $58f5: $02
	nop                                              ; $58f6: $00
	inc  bc                                          ; $58f7: $03
	ld   c, l                                        ; $58f8: $4d
	add  hl, hl                                      ; $58f9: $29
	add  hl, hl                                      ; $58fa: $29
	ld   bc, $2002                                   ; $58fb: $01 $02 $20
	nop                                              ; $58fe: $00
	rlca                                             ; $58ff: $07
	ld   l, b                                        ; $5900: $68
	nop                                              ; $5901: $00
	inc  bc                                          ; $5902: $03
	ld   d, e                                        ; $5903: $53
	ld   [bc], a                                     ; $5904: $02
	nop                                              ; $5905: $00
	inc  bc                                          ; $5906: $03
	ld   c, l                                        ; $5907: $4d
	add  hl, hl                                      ; $5908: $29
	add  hl, hl                                      ; $5909: $29
	ld   bc, $2001                                   ; $590a: $01 $01 $20
	nop                                              ; $590d: $00
	dec  c                                           ; $590e: $0d
	ld   b, $02                                      ; $590f: $06 $02
	ld   bc, $7150                                   ; $5911: $01 $50 $71
	sbc  [hl]                                        ; $5914: $9e
	xor  h                                           ; $5915: $ac
	push af                                          ; $5916: $f5
	bit  4, e                                        ; $5917: $cb $63
	and  c                                           ; $5919: $a1
	rst  $38                                         ; $591a: $ff
	rst  $38                                         ; $591b: $ff
	dec  c                                           ; $591c: $0d
	nop                                              ; $591d: $00
	ld   a, [bc]                                     ; $591e: $0a
	dec  c                                           ; $591f: $0d
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	dec  b                                           ; $5922: $05
	ld   b, b                                        ; $5923: $40
	ld   d, e                                        ; $5924: $53
	ld   bc, $0000                                   ; $5925: $01 $00 $00
	ld   bc, $ffff                                   ; $5928: $01 $ff $ff
	ld   d, d                                        ; $592b: $52
	sbc  [hl]                                        ; $592c: $9e
	ld   [bc], a                                     ; $592d: $02
	ld   a, a                                        ; $592e: $7f
	ld   [hl], c                                     ; $592f: $71
	ld   [hl], h                                     ; $5930: $74
	ld   h, l                                        ; $5931: $65
	adc  h                                           ; $5932: $8c
	ld   [hl], c                                     ; $5933: $71
	ld   l, l                                        ; $5934: $6d
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	dec  c                                           ; $5937: $0d
	ld   a, b                                        ; $5938: $78
	and  c                                           ; $5939: $a1
	ld   l, [hl]                                     ; $593a: $6e
	ld   e, c                                        ; $593b: $59
	rst  $38                                         ; $593c: $ff
	rst  $38                                         ; $593d: $ff
	sub  b                                           ; $593e: $90
	ld   a, h                                        ; $593f: $7c
	ld   h, a                                        ; $5940: $67
	ld   h, d                                        ; $5941: $62
	ld   e, l                                        ; $5942: $5d
	dec  c                                           ; $5943: $0d
	inc  bc                                          ; $5944: $03
	ld   hl, sp+$71                                  ; $5945: $f8 $71
	ld   [hl], h                                     ; $5947: $74
	sbc  c                                           ; $5948: $99
	adc  l                                           ; $5949: $8d
	ld   l, l                                        ; $594a: $6d
	ld   d, d                                        ; $594b: $52
	rst  $38                                         ; $594c: $ff
	rst  $38                                         ; $594d: $ff
	rst  $38                                         ; $594e: $ff
	rst  $38                                         ; $594f: $ff
	dec  c                                           ; $5950: $0d
	nop                                              ; $5951: $00
	ld   a, [bc]                                     ; $5952: $0a
	nop                                              ; $5953: $00
	dec  c                                           ; $5954: $0d
	ld   b, $06                                      ; $5955: $06 $06
	ld   bc, $7150                                   ; $5957: $01 $50 $71
	sbc  [hl]                                        ; $595a: $9e
	xor  h                                           ; $595b: $ac
	push af                                          ; $595c: $f5
	bit  4, e                                        ; $595d: $cb $63
	and  c                                           ; $595f: $a1
	rst  $38                                         ; $5960: $ff
	rst  $38                                         ; $5961: $ff
	dec  c                                           ; $5962: $0d
	nop                                              ; $5963: $00
	ld   a, [bc]                                     ; $5964: $0a
	inc  e                                           ; $5965: $1c
	ld   b, $05                                      ; $5966: $06 $05
	dec  b                                           ; $5968: $05
	ld   bc, $f9a1                                   ; $5969: $01 $a1 $f9
	db   $10                                         ; $596c: $10
	rst  $38                                         ; $596d: $ff
	rst  $38                                         ; $596e: $ff
	ld   [$ff00], sp                                 ; $596f: $08 $00 $ff
	rst  $38                                         ; $5972: $ff
	dec  c                                           ; $5973: $0d
	rst  $38                                         ; $5974: $ff
	rst  $38                                         ; $5975: $ff
	rst  $38                                         ; $5976: $ff
	rst  $38                                         ; $5977: $ff
	rst  $38                                         ; $5978: $ff
	dec  c                                           ; $5979: $0d
	nop                                              ; $597a: $00
	ld   a, [bc]                                     ; $597b: $0a
	dec  c                                           ; $597c: $0d
	nop                                              ; $597d: $00
	nop                                              ; $597e: $00
	rrca                                             ; $597f: $0f
	nop                                              ; $5980: $00
	ld   bc, $4005                                   ; $5981: $01 $05 $40
	ld   d, e                                        ; $5984: $53
	ld   bc, $0000                                   ; $5985: $01 $00 $00
	ld   bc, $ffff                                   ; $5988: $01 $ff $ff
	xor  h                                           ; $598b: $ac
	push af                                          ; $598c: $f5
	bit  4, e                                        ; $598d: $cb $63
	and  c                                           ; $598f: $a1
	rst  $38                                         ; $5990: $ff
	rst  $38                                         ; $5991: $ff
	dec  c                                           ; $5992: $0d
	inc  bc                                          ; $5993: $03
	ld   hl, sp+$71                                  ; $5994: $f8 $71
	ld   [hl], h                                     ; $5996: $74
	sbc  c                                           ; $5997: $99
	ld   l, h                                        ; $5998: $6c
	rst  $38                                         ; $5999: $ff
	rst  $38                                         ; $599a: $ff
	rst  $38                                         ; $599b: $ff
	rst  $38                                         ; $599c: $ff
	dec  c                                           ; $599d: $0d
	nop                                              ; $599e: $00
	ld   a, [bc]                                     ; $599f: $0a
	nop                                              ; $59a0: $00
	nop                                              ; $59a1: $00
	inc  bc                                          ; $59a2: $03
	ld   d, c                                        ; $59a3: $51
	ld   [bc], a                                     ; $59a4: $02
	nop                                              ; $59a5: $00
	inc  bc                                          ; $59a6: $03
	ld   c, e                                        ; $59a7: $4b
	add  hl, hl                                      ; $59a8: $29
	add  hl, hl                                      ; $59a9: $29
	ld   bc, $2501                                   ; $59aa: $01 $01 $25
	nop                                              ; $59ad: $00
	rrca                                             ; $59ae: $0f
	nop                                              ; $59af: $00
	ld   bc, $0702                                   ; $59b0: $01 $02 $07
	ld   [hl+], a                                    ; $59b3: $22
	nop                                              ; $59b4: $00
	inc  bc                                          ; $59b5: $03
	ld   d, c                                        ; $59b6: $51
	ld   [bc], a                                     ; $59b7: $02
	nop                                              ; $59b8: $00
	inc  bc                                          ; $59b9: $03
	ld   c, e                                        ; $59ba: $4b
	add  hl, hl                                      ; $59bb: $29
	add  hl, hl                                      ; $59bc: $29
	ld   bc, $2002                                   ; $59bd: $01 $02 $20
	nop                                              ; $59c0: $00
	rlca                                             ; $59c1: $07
	ld   h, a                                        ; $59c2: $67
	nop                                              ; $59c3: $00
	inc  bc                                          ; $59c4: $03
	ld   d, c                                        ; $59c5: $51
	ld   [bc], a                                     ; $59c6: $02
	nop                                              ; $59c7: $00
	inc  bc                                          ; $59c8: $03
	ld   c, e                                        ; $59c9: $4b
	add  hl, hl                                      ; $59ca: $29
	add  hl, hl                                      ; $59cb: $29
	ld   bc, $2001                                   ; $59cc: $01 $01 $20
	nop                                              ; $59cf: $00
	dec  c                                           ; $59d0: $0d
	inc  b                                           ; $59d1: $04
	ld   [bc], a                                     ; $59d2: $02
	ld   bc, $7150                                   ; $59d3: $01 $50 $71
	sbc  [hl]                                        ; $59d6: $9e
	and  e                                           ; $59d7: $a3
	and  l                                           ; $59d8: $a5
	db   $ec                                         ; $59d9: $ec
	cp   d                                           ; $59da: $ba
	rst  $38                                         ; $59db: $ff
	rst  $38                                         ; $59dc: $ff
	dec  c                                           ; $59dd: $0d
	nop                                              ; $59de: $00
	ld   a, [bc]                                     ; $59df: $0a
	dec  c                                           ; $59e0: $0d
	nop                                              ; $59e1: $00
	nop                                              ; $59e2: $00
	dec  b                                           ; $59e3: $05
	ld   b, b                                        ; $59e4: $40
	ld   d, c                                        ; $59e5: $51
	ld   bc, $0000                                   ; $59e6: $01 $00 $00
	ld   bc, $ffff                                   ; $59e9: $01 $ff $ff
	ld   d, d                                        ; $59ec: $52
	sbc  [hl]                                        ; $59ed: $9e
	ld   [bc], a                                     ; $59ee: $02
	ld   a, a                                        ; $59ef: $7f
	ld   [hl], c                                     ; $59f0: $71
	ld   [hl], h                                     ; $59f1: $74
	ld   h, l                                        ; $59f2: $65
	adc  h                                           ; $59f3: $8c
	ld   [hl], c                                     ; $59f4: $71
	ld   l, l                                        ; $59f5: $6d
	rst  $38                                         ; $59f6: $ff
	rst  $38                                         ; $59f7: $ff
	dec  c                                           ; $59f8: $0d
	ld   a, b                                        ; $59f9: $78
	and  c                                           ; $59fa: $a1
	ld   l, [hl]                                     ; $59fb: $6e
	ld   e, c                                        ; $59fc: $59
	rst  $38                                         ; $59fd: $ff
	rst  $38                                         ; $59fe: $ff
	sub  b                                           ; $59ff: $90
	ld   a, h                                        ; $5a00: $7c
	ld   h, a                                        ; $5a01: $67
	ld   h, d                                        ; $5a02: $62
	ld   e, l                                        ; $5a03: $5d
	dec  c                                           ; $5a04: $0d
	inc  bc                                          ; $5a05: $03
	ld   hl, sp+$71                                  ; $5a06: $f8 $71
	ld   [hl], h                                     ; $5a08: $74
	sbc  c                                           ; $5a09: $99
	adc  l                                           ; $5a0a: $8d
	ld   l, l                                        ; $5a0b: $6d
	ld   d, d                                        ; $5a0c: $52
	rst  $38                                         ; $5a0d: $ff
	rst  $38                                         ; $5a0e: $ff
	rst  $38                                         ; $5a0f: $ff
	rst  $38                                         ; $5a10: $ff
	dec  c                                           ; $5a11: $0d
	nop                                              ; $5a12: $00
	ld   a, [bc]                                     ; $5a13: $0a
	nop                                              ; $5a14: $00
	dec  c                                           ; $5a15: $0d
	inc  b                                           ; $5a16: $04
	rlca                                             ; $5a17: $07
	ld   bc, $7150                                   ; $5a18: $01 $50 $71
	sbc  [hl]                                        ; $5a1b: $9e
	and  e                                           ; $5a1c: $a3
	and  l                                           ; $5a1d: $a5
	db   $ec                                         ; $5a1e: $ec
	cp   d                                           ; $5a1f: $ba
	rst  $38                                         ; $5a20: $ff
	rst  $38                                         ; $5a21: $ff
	dec  c                                           ; $5a22: $0d
	nop                                              ; $5a23: $00
	ld   a, [bc]                                     ; $5a24: $0a
	rrca                                             ; $5a25: $0f
	inc  b                                           ; $5a26: $04
	rlca                                             ; $5a27: $07
	ld   bc, $ff50                                   ; $5a28: $01 $50 $ff
	rst  $38                                         ; $5a2b: $ff
	rst  $38                                         ; $5a2c: $ff
	rst  $38                                         ; $5a2d: $ff
	dec  c                                           ; $5a2e: $0d
	rst  $38                                         ; $5a2f: $ff
	rst  $38                                         ; $5a30: $ff
	rst  $38                                         ; $5a31: $ff
	rst  $38                                         ; $5a32: $ff
	rst  $38                                         ; $5a33: $ff
	dec  c                                           ; $5a34: $0d
	nop                                              ; $5a35: $00
	ld   a, [bc]                                     ; $5a36: $0a
	dec  c                                           ; $5a37: $0d
	nop                                              ; $5a38: $00
	nop                                              ; $5a39: $00
	rrca                                             ; $5a3a: $0f
	nop                                              ; $5a3b: $00
	ld   bc, $4005                                   ; $5a3c: $01 $05 $40
	ld   d, c                                        ; $5a3f: $51
	ld   bc, $0000                                   ; $5a40: $01 $00 $00
	ld   bc, $ffff                                   ; $5a43: $01 $ff $ff
	and  e                                           ; $5a46: $a3
	and  l                                           ; $5a47: $a5
	db   $ec                                         ; $5a48: $ec
	cp   d                                           ; $5a49: $ba
	rst  $38                                         ; $5a4a: $ff
	rst  $38                                         ; $5a4b: $ff
	dec  c                                           ; $5a4c: $0d
	inc  bc                                          ; $5a4d: $03
	ld   hl, sp+$71                                  ; $5a4e: $f8 $71
	ld   [hl], h                                     ; $5a50: $74
	sbc  c                                           ; $5a51: $99
	ld   l, h                                        ; $5a52: $6c
	rst  $38                                         ; $5a53: $ff
	rst  $38                                         ; $5a54: $ff
	rst  $38                                         ; $5a55: $ff
	rst  $38                                         ; $5a56: $ff
	dec  c                                           ; $5a57: $0d
	nop                                              ; $5a58: $00
	ld   a, [bc]                                     ; $5a59: $0a
	nop                                              ; $5a5a: $00
	nop                                              ; $5a5b: $00
	ld   c, $41                                      ; $5a5c: $0e $41
	rrca                                             ; $5a5e: $0f
	nop                                              ; $5a5f: $00
	ld   bc, $1c02                                   ; $5a60: $01 $02 $1c
	add  hl, bc                                      ; $5a63: $09
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	ld   bc, $0008                                   ; $5a66: $01 $08 $00
	ld   e, l                                        ; $5a69: $5d
	and  c                                           ; $5a6a: $a1
	ld   h, [hl]                                     ; $5a6b: $66
	sub  c                                           ; $5a6c: $91
	ld   a, b                                        ; $5a6d: $78
	ld   d, d                                        ; $5a6e: $52
	ld   e, c                                        ; $5a6f: $59
	sbc  a                                           ; $5a70: $9f
	dec  c                                           ; $5a71: $0d
	ld   a, b                                        ; $5a72: $78
	ld   a, c                                        ; $5a73: $79
	ld   e, c                                        ; $5a74: $59
	inc  b                                           ; $5a75: $04
	di                                               ; $5a76: $f3
	ld   e, c                                        ; $5a77: $59
	ld   d, d                                        ; $5a78: $52
	ld   sp, hl                                      ; $5a79: $f9
	dec  c                                           ; $5a7a: $0d
	nop                                              ; $5a7b: $00
	ld   a, [bc]                                     ; $5a7c: $0a
	add  hl, de                                      ; $5a7d: $19
	dec  b                                           ; $5a7e: $05
	ld   [bc], a                                     ; $5a7f: $02
	inc  b                                           ; $5a80: $04
	ld   a, [bc]                                     ; $5a81: $0a
	ld   [bc], a                                     ; $5a82: $02
	nop                                              ; $5a83: $00
	ld   e, c                                        ; $5a84: $59
	sub  a                                           ; $5a85: $97
	ld   a, h                                        ; $5a86: $7c
	inc  b                                           ; $5a87: $04
	ld   d, a                                        ; $5a88: $57
	inc  b                                           ; $5a89: $04
	ld   h, e                                        ; $5a8a: $63
	and  b                                           ; $5a8b: $a0
	ld   [bc], a                                     ; $5a8c: $02
	jp   nz, $005d                                   ; $5a8d: $c2 $5d $00

	nop                                              ; $5a90: $00
	inc  bc                                          ; $5a91: $03
	ld   l, l                                        ; $5a92: $6d
	dec  b                                           ; $5a93: $05
	add  hl, de                                      ; $5a94: $19
	ld   a, h                                        ; $5a95: $7c
	and  e                                           ; $5a96: $a3
	jp   z, $a5d1                                    ; $5a97: $ca $d1 $a5

	cp   d                                           ; $5a9a: $ba
	and  b                                           ; $5a9b: $a0
	ld   [bc], a                                     ; $5a9c: $02
	jp   nz, $005d                                   ; $5a9d: $c2 $5d $00

	ld   bc, $8b07                                   ; $5aa0: $01 $07 $8b
	ld   bc, $0302                                   ; $5aa3: $01 $02 $03
	ld   bc, $2000                                   ; $5aa6: $01 $00 $20
	nop                                              ; $5aa9: $00
	rlca                                             ; $5aaa: $07
	ld   c, c                                        ; $5aab: $49
	ld   a, [bc]                                     ; $5aac: $0a
	ld   [bc], a                                     ; $5aad: $02
	inc  bc                                          ; $5aae: $03
	ld   bc, $2001                                   ; $5aaf: $01 $01 $20
	nop                                              ; $5ab2: $00
	ld   b, $5a                                      ; $5ab3: $06 $5a
	nop                                              ; $5ab5: $00
	rrca                                             ; $5ab6: $0f
	nop                                              ; $5ab7: $00
	ld   bc, $5201                                   ; $5ab8: $01 $01 $52
	ld   d, [hl]                                     ; $5abb: $56
	rst  $38                                         ; $5abc: $ff
	rst  $38                                         ; $5abd: $ff
	sbc  a                                           ; $5abe: $9f
	dec  c                                           ; $5abf: $0d
	halt                                             ; $5ac0: $76
	ld   e, l                                        ; $5ac1: $5d
	ld   a, c                                        ; $5ac2: $79
	inc  b                                           ; $5ac3: $04
	di                                               ; $5ac4: $f3
	ld   [bc], a                                     ; $5ac5: $02
	jp   $5276                                       ; $5ac6: $c3 $76 $52


	ld   d, h                                        ; $5ac9: $54
	sbc  l                                           ; $5aca: $9d
	ld   e, a                                        ; $5acb: $5f
	ld   [hl], l                                     ; $5acc: $75
	ld   a, l                                        ; $5acd: $7d
	rst  $38                                         ; $5ace: $ff
	sbc  a                                           ; $5acf: $9f
	dec  c                                           ; $5ad0: $0d
	nop                                              ; $5ad1: $00
	ld   a, [bc]                                     ; $5ad2: $0a
	rlca                                             ; $5ad3: $07
	rst  JumpTable                                         ; $5ad4: $df
	nop                                              ; $5ad5: $00
	inc  bc                                          ; $5ad6: $03
	jr   nz, jr_046_5ada                             ; $5ad7: $20 $01

	ld   h, h                                        ; $5ad9: $64

jr_046_5ada:
	inc  hl                                          ; $5ada: $23
	nop                                              ; $5adb: $00
	rrca                                             ; $5adc: $0f
	add  hl, bc                                      ; $5add: $09
	nop                                              ; $5ade: $00
	ld   bc, $546b                                   ; $5adf: $01 $6b $54
	ld   e, c                                        ; $5ae2: $59
	rst  $38                                         ; $5ae3: $ff
	rst  $38                                         ; $5ae4: $ff
	adc  h                                           ; $5ae5: $8c
	ld   d, b                                        ; $5ae6: $50
	sbc  [hl]                                        ; $5ae7: $9e
	dec  c                                           ; $5ae8: $0d
	ld   a, b                                        ; $5ae9: $78
	ld   a, c                                        ; $5aea: $79
	ld   e, c                                        ; $5aeb: $59
	ld   [bc], a                                     ; $5aec: $02
	ld   a, [de]                                     ; $5aed: $1a
	dec  b                                           ; $5aee: $05
	ldh  a, [$5a]                                    ; $5aef: $f0 $5a
	ld   d, b                                        ; $5af1: $50
	sbc  c                                           ; $5af2: $99
	ld   a, b                                        ; $5af3: $78
	sub  a                                           ; $5af4: $97
	dec  c                                           ; $5af5: $0d
	ld   d, d                                        ; $5af6: $52
	ld   [hl], d                                     ; $5af7: $72
	ld   [hl], l                                     ; $5af8: $75
	sub  b                                           ; $5af9: $90
	dec  b                                           ; $5afa: $05
	db   $10                                         ; $5afb: $10
	sbc  c                                           ; $5afc: $99
	halt                                             ; $5afd: $76
	ld   d, d                                        ; $5afe: $52
	ld   d, d                                        ; $5aff: $52
	sbc  a                                           ; $5b00: $9f
	dec  c                                           ; $5b01: $0d
	nop                                              ; $5b02: $00
	ld   a, [bc]                                     ; $5b03: $0a
	rrca                                             ; $5b04: $0f
	nop                                              ; $5b05: $00
	ld   bc, $7d01                                   ; $5b06: $01 $01 $7d
	rst  $38                                         ; $5b09: $ff
	rst  $38                                         ; $5b0a: $ff
	ld   a, l                                        ; $5b0b: $7d
	ld   d, d                                        ; $5b0c: $52
	sbc  a                                           ; $5b0d: $9f
	dec  c                                           ; $5b0e: $0d
	ld   d, b                                        ; $5b0f: $50
	sbc  b                                           ; $5b10: $98
	ld   e, d                                        ; $5b11: $5a
	halt                                             ; $5b12: $76
	ld   d, h                                        ; $5b13: $54
	ld   h, d                                        ; $5b14: $62
	ld   h, h                                        ; $5b15: $64
	ld   d, d                                        ; $5b16: $52
	adc  h                                           ; $5b17: $8c
	ld   h, a                                        ; $5b18: $67
	sbc  a                                           ; $5b19: $9f
	dec  c                                           ; $5b1a: $0d
	nop                                              ; $5b1b: $00
	ld   a, [bc]                                     ; $5b1c: $0a
	rrca                                             ; $5b1d: $0f
	add  hl, bc                                      ; $5b1e: $09
	nop                                              ; $5b1f: $00
	ld   bc, $9a6b                                   ; $5b20: $01 $6b $9a
	ld   h, [hl]                                     ; $5b23: $66
	sub  c                                           ; $5b24: $91
	sbc  [hl]                                        ; $5b25: $9e
	dec  b                                           ; $5b26: $05
	ld   [hl], e                                     ; $5b27: $73
	sub  b                                           ; $5b28: $90
	inc  bc                                          ; $5b29: $03
	dec  c                                           ; $5b2a: $0d
	ld   [bc], a                                     ; $5b2b: $02
	jp   Jump_046_505a                               ; $5b2c: $c3 $5a $50


	sbc  c                                           ; $5b2f: $99
	ld   e, c                                        ; $5b30: $59
	sub  a                                           ; $5b31: $97
	dec  c                                           ; $5b32: $0d
	ld   h, c                                        ; $5b33: $61
	sbc  d                                           ; $5b34: $9a
	ld   [hl], l                                     ; $5b35: $75
	sbc  a                                           ; $5b36: $9f
	dec  c                                           ; $5b37: $0d
	nop                                              ; $5b38: $00
	ld   a, [bc]                                     ; $5b39: $0a
	nop                                              ; $5b3a: $00
	inc  e                                           ; $5b3b: $1c
	add  hl, bc                                      ; $5b3c: $09
	dec  b                                           ; $5b3d: $05
	ld   a, [bc]                                     ; $5b3e: $0a
	ld   bc, $0008                                   ; $5b3f: $01 $08 $00
	ld   e, l                                        ; $5b42: $5d
	and  c                                           ; $5b43: $a1
	sbc  a                                           ; $5b44: $9f
	dec  c                                           ; $5b45: $0d
	ld   a, b                                        ; $5b46: $78
	and  c                                           ; $5b47: $a1
	ld   l, [hl]                                     ; $5b48: $6e
	ld   e, c                                        ; $5b49: $59
	ld   [bc], a                                     ; $5b4a: $02
	ld   [hl], d                                     ; $5b4b: $72
	inc  bc                                          ; $5b4c: $03
	dec  bc                                          ; $5b4d: $0b
	ld   e, d                                        ; $5b4e: $5a
	ld   [bc], a                                     ; $5b4f: $02
	jr   z, jr_046_5ba4                              ; $5b50: $28 $52

	ld   l, h                                        ; $5b52: $6c
	sbc  a                                           ; $5b53: $9f
	dec  c                                           ; $5b54: $0d
	nop                                              ; $5b55: $00
	ld   a, [bc]                                     ; $5b56: $0a
	inc  e                                           ; $5b57: $1c
	add  hl, bc                                      ; $5b58: $09
	nop                                              ; $5b59: $00
	nop                                              ; $5b5a: $00
	ld   bc, $a15a                                   ; $5b5b: $01 $5a $a1
	ld   a, [hl]                                     ; $5b5e: $7e
	sbc  c                                           ; $5b5f: $99
	ld   a, h                                        ; $5b60: $7c
	sub  b                                           ; $5b61: $90
	ld   d, d                                        ; $5b62: $52
	ld   d, d                                        ; $5b63: $52
	ld   e, d                                        ; $5b64: $5a
	sbc  [hl]                                        ; $5b65: $9e
	dec  c                                           ; $5b66: $0d
	ld   l, l                                        ; $5b67: $6d
	adc  h                                           ; $5b68: $8c
	ld   a, c                                        ; $5b69: $79
	ld   a, l                                        ; $5b6a: $7d
	inc  bc                                          ; $5b6b: $03
	and  a                                           ; $5b6c: $a7
	adc  l                                           ; $5b6d: $8d
	and  b                                           ; $5b6e: $a0
	halt                                             ; $5b6f: $76
	sub  a                                           ; $5b70: $97
	ld   a, b                                        ; $5b71: $78
	ld   d, d                                        ; $5b72: $52
	halt                                             ; $5b73: $76
	dec  c                                           ; $5b74: $0d
	inc  b                                           ; $5b75: $04
	dec  c                                           ; $5b76: $0d
	ld   e, d                                        ; $5b77: $5a
	sub  b                                           ; $5b78: $90
	ld   l, l                                        ; $5b79: $6d
	ld   a, b                                        ; $5b7a: $78
	ld   d, d                                        ; $5b7b: $52
	ld   l, h                                        ; $5b7c: $6c
	sbc  a                                           ; $5b7d: $9f
	dec  c                                           ; $5b7e: $0d
	nop                                              ; $5b7f: $00
	ld   a, [bc]                                     ; $5b80: $0a
	ld   bc, $0a04                                   ; $5b81: $01 $04 $0a
	ld   [bc], a                                     ; $5b84: $02
	nop                                              ; $5b85: $00
	ld   a, c                                        ; $5b86: $79
	halt                                             ; $5b87: $76
	ld   [hl], c                                     ; $5b88: $71
	ld   [hl], h                                     ; $5b89: $74
	ld   a, l                                        ; $5b8a: $7d
	inc  bc                                          ; $5b8b: $03
	sub  h                                           ; $5b8c: $94
	dec  b                                           ; $5b8d: $05
	inc  sp                                          ; $5b8e: $33
	ld   [bc], a                                     ; $5b8f: $02
	ld   l, b                                        ; $5b90: $68
	dec  b                                           ; $5b91: $05
	ld   de, $0d90                                   ; $5b92: $11 $90 $0d
	inc  b                                           ; $5b95: $04
	ld   c, $02                                      ; $5b96: $0e $02
	jp   $0378                                       ; $5b98: $c3 $78 $03


	dec  c                                           ; $5b9b: $0d
	ld   [bc], a                                     ; $5b9c: $02
	jp   Jump_046_547c                               ; $5b9d: $c3 $7c $54


	ld   l, a                                        ; $5ba0: $6f
	ld   l, [hl]                                     ; $5ba1: $6e
	ld   e, c                                        ; $5ba2: $59
	sub  a                                           ; $5ba3: $97

jr_046_5ba4:
	ld   a, b                                        ; $5ba4: $78
	sbc  a                                           ; $5ba5: $9f
	dec  c                                           ; $5ba6: $0d
	nop                                              ; $5ba7: $00
	ld   a, [bc]                                     ; $5ba8: $0a
	rrca                                             ; $5ba9: $0f
	nop                                              ; $5baa: $00
	ld   bc, $7d01                                   ; $5bab: $01 $01 $7d
	rst  $38                                         ; $5bae: $ff
	rst  $38                                         ; $5baf: $ff
	ld   a, l                                        ; $5bb0: $7d
	ld   d, d                                        ; $5bb1: $52
	sbc  a                                           ; $5bb2: $9f
	dec  c                                           ; $5bb3: $0d
	ld   [bc], a                                     ; $5bb4: $02
	and  c                                           ; $5bb5: $a1
	and  b                                           ; $5bb6: $a0
	ld   [hl], d                                     ; $5bb7: $72
	ld   e, a                                        ; $5bb8: $5f
	adc  h                                           ; $5bb9: $8c
	ld   h, a                                        ; $5bba: $67
	sbc  a                                           ; $5bbb: $9f
	dec  c                                           ; $5bbc: $0d
	nop                                              ; $5bbd: $00
	ld   a, [bc]                                     ; $5bbe: $0a
	inc  e                                           ; $5bbf: $1c
	add  hl, bc                                      ; $5bc0: $09
	ld   bc, $0101                                   ; $5bc1: $01 $01 $01
	ld   d, h                                        ; $5bc4: $54
	and  c                                           ; $5bc5: $a1
	sbc  a                                           ; $5bc6: $9f
	dec  c                                           ; $5bc7: $0d
	ld   l, e                                        ; $5bc8: $6b
	sbc  d                                           ; $5bc9: $9a
	ld   h, [hl]                                     ; $5bca: $66
	sub  c                                           ; $5bcb: $91
	sbc  [hl]                                        ; $5bcc: $9e
	dec  b                                           ; $5bcd: $05
	ld   [hl], e                                     ; $5bce: $73
	sub  b                                           ; $5bcf: $90
	ld   l, e                                        ; $5bd0: $6b
	sbc  e                                           ; $5bd1: $9b
	ld   l, e                                        ; $5bd2: $6b
	sbc  e                                           ; $5bd3: $9b
	inc  bc                                          ; $5bd4: $03
	dec  c                                           ; $5bd5: $0d
	ld   [bc], a                                     ; $5bd6: $02
	jp   $0d79                                       ; $5bd7: $c3 $79 $0d


	sub  b                                           ; $5bda: $90
	ld   [hl], a                                     ; $5bdb: $77
	sbc  c                                           ; $5bdc: $99
	ld   e, c                                        ; $5bdd: $59
	sub  a                                           ; $5bde: $97
	ld   h, c                                        ; $5bdf: $61
	sbc  d                                           ; $5be0: $9a
	ld   [hl], l                                     ; $5be1: $75
	sbc  a                                           ; $5be2: $9f
	dec  c                                           ; $5be3: $0d
	nop                                              ; $5be4: $00
	ld   a, [bc]                                     ; $5be5: $0a
	nop                                              ; $5be6: $00
	rrca                                             ; $5be7: $0f
	nop                                              ; $5be8: $00
	ld   bc, $5001                                   ; $5be9: $01 $01 $50
	ld   a, h                                        ; $5bec: $7c
	rst  $38                                         ; $5bed: $ff
	rst  $38                                         ; $5bee: $ff
	ld   l, a                                        ; $5bef: $6f
	sub  l                                           ; $5bf0: $95
	ld   [hl], c                                     ; $5bf1: $71
	halt                                             ; $5bf2: $76
	dec  c                                           ; $5bf3: $0d
	ld   e, b                                        ; $5bf4: $58
	ld   [bc], a                                     ; $5bf5: $02
	jp   nz, Jump_046_655b                           ; $5bf6: $c2 $5b $65

	ld   l, l                                        ; $5bf9: $6d
	ld   d, d                                        ; $5bfa: $52
	ld   h, c                                        ; $5bfb: $61
	halt                                             ; $5bfc: $76
	ld   e, d                                        ; $5bfd: $5a
	dec  c                                           ; $5bfe: $0d
	ld   d, b                                        ; $5bff: $50
	sbc  c                                           ; $5c00: $99
	and  c                                           ; $5c01: $a1
	ld   [hl], l                                     ; $5c02: $75
	ld   h, a                                        ; $5c03: $67
	ld   e, a                                        ; $5c04: $5f
	ld   [hl], a                                     ; $5c05: $77
	rst  $38                                         ; $5c06: $ff
	dec  c                                           ; $5c07: $0d
	nop                                              ; $5c08: $00
	ld   a, [bc]                                     ; $5c09: $0a
	rrca                                             ; $5c0a: $0f
	add  hl, bc                                      ; $5c0b: $09
	nop                                              ; $5c0c: $00
	ld   bc, $ffff                                   ; $5c0d: $01 $ff $ff
	ld   [bc], a                                     ; $5c10: $02
	jp   nz, Jump_046_6d5b                           ; $5c11: $c2 $5b $6d

	ld   d, d                                        ; $5c14: $52
	ld   h, c                                        ; $5c15: $61
	halt                                             ; $5c16: $76
	ld   sp, hl                                      ; $5c17: $f9
	dec  c                                           ; $5c18: $0d
	nop                                              ; $5c19: $00
	ld   a, [bc]                                     ; $5c1a: $0a
	jr   jr_046_5c20                                 ; $5c1b: $18 $03

	ld   bc, $5d63                                   ; $5c1d: $01 $63 $5d

jr_046_5c20:
	sub  a                                           ; $5c20: $97
	ld   e, c                                        ; $5c21: $59
	sub  a                                           ; $5c22: $97
	ld   a, h                                        ; $5c23: $7c
	inc  b                                           ; $5c24: $04
	ld   d, a                                        ; $5c25: $57
	inc  b                                           ; $5c26: $04
	ld   h, e                                        ; $5c27: $63
	and  b                                           ; $5c28: $a0
	ld   e, e                                        ; $5c29: $5b
	ld   e, l                                        ; $5c2a: $5d
	nop                                              ; $5c2b: $00
	nop                                              ; $5c2c: $00
	ld   h, a                                        ; $5c2d: $67
	adc  l                                           ; $5c2e: $8d
	sbc  d                                           ; $5c2f: $9a
	ld   e, c                                        ; $5c30: $59
	sub  a                                           ; $5c31: $97
	ld   a, h                                        ; $5c32: $7c
	inc  b                                           ; $5c33: $04
	ld   d, a                                        ; $5c34: $57
	inc  b                                           ; $5c35: $04
	ld   h, e                                        ; $5c36: $63
	and  b                                           ; $5c37: $a0
	ld   e, e                                        ; $5c38: $5b
	ld   e, l                                        ; $5c39: $5d
	nop                                              ; $5c3a: $00
	ld   bc, $7c6b                                   ; $5c3b: $01 $6b $7c
	inc  b                                           ; $5c3e: $04
	ld   e, $7c                                      ; $5c3f: $1e $7c
	inc  bc                                          ; $5c41: $03
	add  d                                           ; $5c42: $82
	ld   a, h                                        ; $5c43: $7c
	inc  b                                           ; $5c44: $04
	ld   d, a                                        ; $5c45: $57
	inc  b                                           ; $5c46: $04
	ld   h, e                                        ; $5c47: $63
	and  b                                           ; $5c48: $a0
	ld   e, e                                        ; $5c49: $5b
	ld   e, l                                        ; $5c4a: $5d
	nop                                              ; $5c4b: $00
	ld   [bc], a                                     ; $5c4c: $02
	rlca                                             ; $5c4d: $07
	ld   h, $03                                      ; $5c4e: $26 $03
	ld   [bc], a                                     ; $5c50: $02
	ld   [bc], a                                     ; $5c51: $02
	ld   bc, $2000                                   ; $5c52: $01 $00 $20
	nop                                              ; $5c55: $00
	rlca                                             ; $5c56: $07
	ld   d, d                                        ; $5c57: $52
	inc  b                                           ; $5c58: $04
	ld   [bc], a                                     ; $5c59: $02
	ld   [bc], a                                     ; $5c5a: $02
	ld   bc, $2001                                   ; $5c5b: $01 $01 $20
	nop                                              ; $5c5e: $00
	rlca                                             ; $5c5f: $07
	inc  c                                           ; $5c60: $0c
	ld   [bc], a                                     ; $5c61: $02
	ld   [bc], a                                     ; $5c62: $02
	ld   [bc], a                                     ; $5c63: $02
	ld   bc, $2002                                   ; $5c64: $01 $02 $20
	nop                                              ; $5c67: $00
	jr   jr_046_5c6d                                 ; $5c68: $18 $03

	ld   bc, $ecdf                                   ; $5c6a: $01 $df $ec

jr_046_5c6d:
	and  e                                           ; $5c6d: $a3
	ld   e, c                                        ; $5c6e: $59
	sub  a                                           ; $5c6f: $97
	ld   a, h                                        ; $5c70: $7c
	inc  b                                           ; $5c71: $04
	ld   d, a                                        ; $5c72: $57
	inc  b                                           ; $5c73: $04
	ld   h, e                                        ; $5c74: $63
	and  b                                           ; $5c75: $a0
	ld   e, e                                        ; $5c76: $5b
	ld   e, l                                        ; $5c77: $5d
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	xor  h                                           ; $5c7a: $ac
	push af                                          ; $5c7b: $f5
	bit  3, c                                        ; $5c7c: $cb $59
	sub  a                                           ; $5c7e: $97
	ld   a, h                                        ; $5c7f: $7c
	inc  b                                           ; $5c80: $04
	ld   d, a                                        ; $5c81: $57
	inc  b                                           ; $5c82: $04
	ld   h, e                                        ; $5c83: $63
	and  b                                           ; $5c84: $a0
	ld   e, e                                        ; $5c85: $5b
	ld   e, l                                        ; $5c86: $5d
	nop                                              ; $5c87: $00
	ld   bc, $7c6b                                   ; $5c88: $01 $6b $7c
	inc  b                                           ; $5c8b: $04
	ld   e, $7c                                      ; $5c8c: $1e $7c
	inc  bc                                          ; $5c8e: $03
	add  d                                           ; $5c8f: $82
	ld   a, h                                        ; $5c90: $7c
	inc  b                                           ; $5c91: $04
	ld   d, a                                        ; $5c92: $57
	inc  b                                           ; $5c93: $04
	ld   h, e                                        ; $5c94: $63
	and  b                                           ; $5c95: $a0
	ld   e, e                                        ; $5c96: $5b
	ld   e, l                                        ; $5c97: $5d
	nop                                              ; $5c98: $00
	ld   [bc], a                                     ; $5c99: $02
	rlca                                             ; $5c9a: $07
	ld   a, [hl]                                     ; $5c9b: $7e
	dec  b                                           ; $5c9c: $05
	ld   [bc], a                                     ; $5c9d: $02
	ld   [bc], a                                     ; $5c9e: $02
	ld   bc, $2000                                   ; $5c9f: $01 $00 $20
	nop                                              ; $5ca2: $00
	rlca                                             ; $5ca3: $07
	or   $08                                         ; $5ca4: $f6 $08
	ld   [bc], a                                     ; $5ca6: $02
	ld   [bc], a                                     ; $5ca7: $02
	ld   bc, $2001                                   ; $5ca8: $01 $01 $20
	nop                                              ; $5cab: $00
	rlca                                             ; $5cac: $07
	ld   e, c                                        ; $5cad: $59
	ld   [bc], a                                     ; $5cae: $02
	ld   [bc], a                                     ; $5caf: $02
	ld   [bc], a                                     ; $5cb0: $02
	ld   bc, $2002                                   ; $5cb1: $01 $02 $20
	nop                                              ; $5cb4: $00
	jr   jr_046_5cba                                 ; $5cb5: $18 $03

	ld   bc, $cf02                                   ; $5cb7: $01 $02 $cf

jr_046_5cba:
	dec  b                                           ; $5cba: $05
	ld   a, [de]                                     ; $5cbb: $1a
	ld   e, c                                        ; $5cbc: $59
	sub  a                                           ; $5cbd: $97
	ld   a, h                                        ; $5cbe: $7c
	inc  b                                           ; $5cbf: $04
	ld   d, a                                        ; $5cc0: $57
	inc  b                                           ; $5cc1: $04
	ld   h, e                                        ; $5cc2: $63
	and  b                                           ; $5cc3: $a0
	ld   e, e                                        ; $5cc4: $5b
	ld   e, l                                        ; $5cc5: $5d
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	and  e                                           ; $5cc8: $a3
	and  l                                           ; $5cc9: $a5
	db   $ec                                         ; $5cca: $ec
	cp   d                                           ; $5ccb: $ba
	ld   e, c                                        ; $5ccc: $59
	sub  a                                           ; $5ccd: $97
	ld   a, h                                        ; $5cce: $7c
	inc  b                                           ; $5ccf: $04
	ld   d, a                                        ; $5cd0: $57
	inc  b                                           ; $5cd1: $04
	ld   h, e                                        ; $5cd2: $63
	and  b                                           ; $5cd3: $a0
	ld   e, e                                        ; $5cd4: $5b
	ld   e, l                                        ; $5cd5: $5d
	nop                                              ; $5cd6: $00
	ld   bc, $7c6b                                   ; $5cd7: $01 $6b $7c
	inc  b                                           ; $5cda: $04
	ld   e, $7c                                      ; $5cdb: $1e $7c
	inc  bc                                          ; $5cdd: $03
	add  d                                           ; $5cde: $82
	ld   a, h                                        ; $5cdf: $7c
	inc  b                                           ; $5ce0: $04
	ld   d, a                                        ; $5ce1: $57
	inc  b                                           ; $5ce2: $04
	ld   h, e                                        ; $5ce3: $63
	and  b                                           ; $5ce4: $a0
	ld   e, e                                        ; $5ce5: $5b
	ld   e, l                                        ; $5ce6: $5d
	nop                                              ; $5ce7: $00
	ld   [bc], a                                     ; $5ce8: $02
	rlca                                             ; $5ce9: $07
	call z, $0207                                    ; $5cea: $cc $07 $02
	ld   [bc], a                                     ; $5ced: $02
	ld   bc, $2000                                   ; $5cee: $01 $00 $20
	nop                                              ; $5cf1: $00
	rlca                                             ; $5cf2: $07
	and  h                                           ; $5cf3: $a4
	ld   b, $02                                      ; $5cf4: $06 $02
	ld   [bc], a                                     ; $5cf6: $02
	ld   bc, $2001                                   ; $5cf7: $01 $01 $20
	nop                                              ; $5cfa: $00
	rlca                                             ; $5cfb: $07
	xor  b                                           ; $5cfc: $a8
	ld   [bc], a                                     ; $5cfd: $02
	ld   [bc], a                                     ; $5cfe: $02
	ld   [bc], a                                     ; $5cff: $02
	ld   bc, $2002                                   ; $5d00: $01 $02 $20
	nop                                              ; $5d03: $00
	jr   @+$04                                       ; $5d04: $18 $02

	ld   bc, $7192                                   ; $5d06: $01 $92 $71
	ld   a, a                                        ; $5d09: $7f
	sbc  b                                           ; $5d0a: $98
	sub  d                                           ; $5d0b: $92
	adc  a                                           ; $5d0c: $8f
	sbc  c                                           ; $5d0d: $99
	nop                                              ; $5d0e: $00
	nop                                              ; $5d0f: $00
	ld   l, e                                        ; $5d10: $6b
	ld   a, h                                        ; $5d11: $7c
	inc  b                                           ; $5d12: $04
	ld   e, $7c                                      ; $5d13: $1e $7c
	inc  bc                                          ; $5d15: $03
	add  d                                           ; $5d16: $82
	ld   a, h                                        ; $5d17: $7c
	inc  b                                           ; $5d18: $04
	ld   d, a                                        ; $5d19: $57
	inc  b                                           ; $5d1a: $04
	ld   h, e                                        ; $5d1b: $63
	and  b                                           ; $5d1c: $a0
	ld   e, e                                        ; $5d1d: $5b
	ld   e, l                                        ; $5d1e: $5d
	nop                                              ; $5d1f: $00
	ld   bc, $d707                                   ; $5d20: $01 $07 $d7
	ld   [bc], a                                     ; $5d23: $02
	ld   [bc], a                                     ; $5d24: $02
	ld   [bc], a                                     ; $5d25: $02
	ld   bc, $2000                                   ; $5d26: $01 $00 $20
	nop                                              ; $5d29: $00
	rlca                                             ; $5d2a: $07
	cp   a                                           ; $5d2b: $bf
	ld   bc, $0202                                   ; $5d2c: $01 $02 $02
	ld   bc, $2001                                   ; $5d2f: $01 $01 $20
	nop                                              ; $5d32: $00
	rrca                                             ; $5d33: $0f
	nop                                              ; $5d34: $00
	ld   bc, $5001                                   ; $5d35: $01 $01 $50
	sbc  [hl]                                        ; $5d38: $9e
	sub  d                                           ; $5d39: $92
	ld   [hl], c                                     ; $5d3a: $71
	ld   a, a                                        ; $5d3b: $7f
	sbc  b                                           ; $5d3c: $98
	ld   d, d                                        ; $5d3d: $52
	ld   d, d                                        ; $5d3e: $52
	ld   [hl], l                                     ; $5d3f: $75
	ld   h, a                                        ; $5d40: $67
	sbc  a                                           ; $5d41: $9f
	dec  c                                           ; $5d42: $0d
	ld   [hl], l                                     ; $5d43: $75
	ld   a, l                                        ; $5d44: $7d
	sbc  [hl]                                        ; $5d45: $9e
	inc  bc                                          ; $5d46: $03
	add  e                                           ; $5d47: $83
	dec  b                                           ; $5d48: $05
	dec  c                                           ; $5d49: $0d
	ld   h, l                                        ; $5d4a: $65
	adc  h                                           ; $5d4b: $8c
	ld   h, a                                        ; $5d4c: $67
	sbc  a                                           ; $5d4d: $9f
	dec  c                                           ; $5d4e: $0d
	nop                                              ; $5d4f: $00
	ld   a, [bc]                                     ; $5d50: $0a
	rrca                                             ; $5d51: $0f
	add  hl, bc                                      ; $5d52: $09
	nop                                              ; $5d53: $00
	ld   bc, $546b                                   ; $5d54: $01 $6b $54
	ld   e, c                                        ; $5d57: $59
	ld   d, d                                        ; $5d58: $52
	sbc  a                                           ; $5d59: $9f
	dec  c                                           ; $5d5a: $0d
	ld   [hl], l                                     ; $5d5b: $75
	sub  b                                           ; $5d5c: $90
	sbc  [hl]                                        ; $5d5d: $9e
	inc  b                                           ; $5d5e: $04
	di                                               ; $5d5f: $f3
	ld   e, d                                        ; $5d60: $5a
	ld   d, b                                        ; $5d61: $50
	ld   [hl], c                                     ; $5d62: $71
	ld   l, l                                        ; $5d63: $6d
	sub  a                                           ; $5d64: $97
	dec  c                                           ; $5d65: $0d
	ld   d, d                                        ; $5d66: $52
	ld   [hl], d                                     ; $5d67: $72
	ld   [hl], l                                     ; $5d68: $75
	sub  b                                           ; $5d69: $90
	dec  b                                           ; $5d6a: $05
	db   $10                                         ; $5d6b: $10
	sbc  c                                           ; $5d6c: $99
	halt                                             ; $5d6d: $76
	ld   d, d                                        ; $5d6e: $52
	ld   d, d                                        ; $5d6f: $52
	sbc  a                                           ; $5d70: $9f
	dec  c                                           ; $5d71: $0d
	nop                                              ; $5d72: $00
	ld   a, [bc]                                     ; $5d73: $0a
	ld   bc, $9166                                   ; $5d74: $01 $66 $91
	sbc  [hl]                                        ; $5d77: $9e
	ld   e, d                                        ; $5d78: $5a
	and  c                                           ; $5d79: $a1
	ld   a, [hl]                                     ; $5d7a: $7e
	sbc  d                                           ; $5d7b: $9a
	sub  [hl]                                        ; $5d7c: $96
	sbc  a                                           ; $5d7d: $9f
	dec  c                                           ; $5d7e: $0d
	nop                                              ; $5d7f: $00
	ld   a, [bc]                                     ; $5d80: $0a
	nop                                              ; $5d81: $00
	rrca                                             ; $5d82: $0f
	nop                                              ; $5d83: $00
	ld   bc, $6301                                   ; $5d84: $01 $01 $63

jr_046_5d87:
	ld   e, l                                        ; $5d87: $5d
	sub  a                                           ; $5d88: $97
	ld   h, e                                        ; $5d89: $63
	and  c                                           ; $5d8a: $a1
	ld   a, h                                        ; $5d8b: $7c
	inc  b                                           ; $5d8c: $04
	ld   l, l                                        ; $5d8d: $6d
	add  [hl]                                        ; $5d8e: $86
	ld   a, h                                        ; $5d8f: $7c
	inc  b                                           ; $5d90: $04
	ld   d, a                                        ; $5d91: $57
	inc  b                                           ; $5d92: $04
	ld   h, e                                        ; $5d93: $63
	ld   [hl], c                                     ; $5d94: $71
	ld   [hl], h                                     ; $5d95: $74
	dec  c                                           ; $5d96: $0d
	ld   [hl], a                                     ; $5d97: $77
	ld   d, h                                        ; $5d98: $54
	ld   a, b                                        ; $5d99: $78
	and  c                                           ; $5d9a: $a1
	ld   [hl], l                                     ; $5d9b: $75
	ld   h, l                                        ; $5d9c: $65
	sub  l                                           ; $5d9d: $95

jr_046_5d9e:
	ld   d, h                                        ; $5d9e: $54
	ld   e, c                                        ; $5d9f: $59
	ld   sp, hl                                      ; $5da0: $f9
	dec  c                                           ; $5da1: $0d
	nop                                              ; $5da2: $00
	ld   a, [bc]                                     ; $5da3: $0a
	rrca                                             ; $5da4: $0f
	add  hl, bc                                      ; $5da5: $09
	nop                                              ; $5da6: $00
	ld   bc, $8e83                                   ; $5da7: $01 $83 $8e
	sbc  [hl]                                        ; $5daa: $9e
	ld   l, e                                        ; $5dab: $6b
	ld   d, h                                        ; $5dac: $54
	ld   l, [hl]                                     ; $5dad: $6e
	ld   a, b                                        ; $5dae: $78
	rst  $38                                         ; $5daf: $ff
	rst  $38                                         ; $5db0: $ff
	dec  c                                           ; $5db1: $0d
	nop                                              ; $5db2: $00
	ld   a, [bc]                                     ; $5db3: $0a
	rlca                                             ; $5db4: $07
	ret  nz                                          ; $5db5: $c0

	inc  bc                                          ; $5db6: $03
	inc  bc                                          ; $5db7: $03
	ld   de, $6401                                   ; $5db8: $11 $01 $64
	inc  hl                                          ; $5dbb: $23
	nop                                              ; $5dbc: $00
	rlca                                             ; $5dbd: $07
	rrca                                             ; $5dbe: $0f
	inc  b                                           ; $5dbf: $04
	inc  bc                                          ; $5dc0: $03
	ld   de, $7c01                                   ; $5dc1: $11 $01 $7c
	dec  h                                           ; $5dc4: $25
	nop                                              ; $5dc5: $00
	ld   bc, $5d63                                   ; $5dc6: $01 $63 $5d
	sub  a                                           ; $5dc9: $97
	ld   e, l                                        ; $5dca: $5d
	and  c                                           ; $5dcb: $a1
	ld   a, h                                        ; $5dcc: $7c
	sbc  [hl]                                        ; $5dcd: $9e
	ld   [$5d00], sp                                 ; $5dce: $08 $00 $5d
	and  c                                           ; $5dd1: $a1
	dec  c                                           ; $5dd2: $0d
	add  [hl]                                        ; $5dd3: $86
	ld   a, h                                        ; $5dd4: $7c
	inc  b                                           ; $5dd5: $04
	ld   d, a                                        ; $5dd6: $57
	inc  b                                           ; $5dd7: $04
	ld   h, e                                        ; $5dd8: $63
	ld   a, l                                        ; $5dd9: $7d
	sbc  [hl]                                        ; $5dda: $9e
	adc  h                                           ; $5ddb: $8c
	ld   d, b                                        ; $5ddc: $50
	adc  h                                           ; $5ddd: $8c
	ld   d, b                                        ; $5dde: $50
	dec  c                                           ; $5ddf: $0d
	halt                                             ; $5de0: $76
	ld   d, d                                        ; $5de1: $52
	ld   [hl], c                                     ; $5de2: $71
	ld   l, l                                        ; $5de3: $6d
	halt                                             ; $5de4: $76
	ld   h, c                                        ; $5de5: $61
	sbc  e                                           ; $5de6: $9b
	ld   e, c                                        ; $5de7: $59
	ld   a, b                                        ; $5de8: $78
	sbc  a                                           ; $5de9: $9f
	dec  c                                           ; $5dea: $0d
	nop                                              ; $5deb: $00
	ld   a, [bc]                                     ; $5dec: $0a
	ld   bc, $5d76                                   ; $5ded: $01 $76 $5d
	ld   a, c                                        ; $5df0: $79
	ld   [bc], a                                     ; $5df1: $02
	jr   z, jr_046_5e46                              ; $5df2: $28 $52

	dec  b                                           ; $5df4: $05
	jr   nz, jr_046_5d87                             ; $5df5: $20 $90

	ld   [bc], a                                     ; $5df7: $02
	jp   nz, $7859                                   ; $5df8: $c2 $59 $78

	ld   d, d                                        ; $5dfb: $52
	ld   h, l                                        ; $5dfc: $65
	rst  $38                                         ; $5dfd: $ff
	rst  $38                                         ; $5dfe: $ff
	dec  c                                           ; $5dff: $0d
	ld   e, c                                        ; $5e00: $59
	halt                                             ; $5e01: $76
	ld   d, d                                        ; $5e02: $52
	ld   [hl], c                                     ; $5e03: $71
	ld   [hl], h                                     ; $5e04: $74
	sbc  [hl]                                        ; $5e05: $9e
	ld   d, d                                        ; $5e06: $52
	ld   d, d                                        ; $5e07: $52
	halt                                             ; $5e08: $76
	ld   d, d                                        ; $5e09: $52
	ld   d, h                                        ; $5e0a: $54
	dec  b                                           ; $5e0b: $05
	jr   nz, jr_046_5d9e                             ; $5e0c: $20 $90

	dec  c                                           ; $5e0e: $0d
	ld   [bc], a                                     ; $5e0f: $02
	jp   nz, $7859                                   ; $5e10: $c2 $59 $78

	ld   d, d                                        ; $5e13: $52
	ld   a, b                                        ; $5e14: $78
	sbc  a                                           ; $5e15: $9f
	dec  c                                           ; $5e16: $0d
	nop                                              ; $5e17: $00
	ld   a, [bc]                                     ; $5e18: $0a
	ld   b, $1c                                      ; $5e19: $06 $1c
	ld   a, [bc]                                     ; $5e1b: $0a
	ld   bc, $5d63                                   ; $5e1c: $01 $63 $5d
	sub  a                                           ; $5e1f: $97
	ld   e, l                                        ; $5e20: $5d
	and  c                                           ; $5e21: $a1
	ld   a, h                                        ; $5e22: $7c
	sbc  [hl]                                        ; $5e23: $9e
	ld   [$5d00], sp                                 ; $5e24: $08 $00 $5d
	and  c                                           ; $5e27: $a1
	dec  c                                           ; $5e28: $0d
	add  [hl]                                        ; $5e29: $86
	ld   a, h                                        ; $5e2a: $7c
	inc  b                                           ; $5e2b: $04
	ld   d, a                                        ; $5e2c: $57
	inc  b                                           ; $5e2d: $04
	ld   h, e                                        ; $5e2e: $63
	ld   a, l                                        ; $5e2f: $7d
	rst  $38                                         ; $5e30: $ff
	rst  $38                                         ; $5e31: $ff
	dec  c                                           ; $5e32: $0d
	ld   d, b                                        ; $5e33: $50
	adc  h                                           ; $5e34: $8c
	sbc  b                                           ; $5e35: $98
	sub  [hl]                                        ; $5e36: $96
	ld   e, l                                        ; $5e37: $5d
	ld   a, b                                        ; $5e38: $78
	ld   d, d                                        ; $5e39: $52
	ld   a, b                                        ; $5e3a: $78
	sbc  a                                           ; $5e3b: $9f
	dec  c                                           ; $5e3c: $0d
	nop                                              ; $5e3d: $00
	ld   a, [bc]                                     ; $5e3e: $0a
	ld   bc, $7190                                   ; $5e3f: $01 $90 $71
	halt                                             ; $5e42: $76
	ld   [bc], a                                     ; $5e43: $02
	ld   a, [de]                                     ; $5e44: $1a
	inc  bc                                          ; $5e45: $03

jr_046_5e46:
	ld   l, e                                        ; $5e46: $6b
	ld   a, h                                        ; $5e47: $7c
	ld   [bc], a                                     ; $5e48: $02
	and  c                                           ; $5e49: $a1
	inc  bc                                          ; $5e4a: $03
	and  b                                           ; $5e4b: $a0
	ld   l, a                                        ; $5e4c: $6f
	and  b                                           ; $5e4d: $a0
	dec  c                                           ; $5e4e: $0d
	ld   [bc], a                                     ; $5e4f: $02
	ld   h, l                                        ; $5e50: $65
	ld   d, [hl]                                     ; $5e51: $56
	ld   [hl], h                                     ; $5e52: $74
	ld   [bc], a                                     ; $5e53: $02
	ld   a, a                                        ; $5e54: $7f
	inc  b                                           ; $5e55: $04
	dec  de                                          ; $5e56: $1b
	ld   h, l                                        ; $5e57: $65
	ld   l, l                                        ; $5e58: $6d
	adc  c                                           ; $5e59: $89
	ld   d, h                                        ; $5e5a: $54
	ld   e, d                                        ; $5e5b: $5a
	ld   d, d                                        ; $5e5c: $52
	ld   d, d                                        ; $5e5d: $52
	halt                                             ; $5e5e: $76
	dec  c                                           ; $5e5f: $0d
	dec  b                                           ; $5e60: $05
	pop  de                                          ; $5e61: $d1
	ld   d, h                                        ; $5e62: $54
	ld   l, h                                        ; $5e63: $6c
	sbc  a                                           ; $5e64: $9f
	dec  c                                           ; $5e65: $0d
	nop                                              ; $5e66: $00
	ld   a, [bc]                                     ; $5e67: $0a
	ld   b, $1c                                      ; $5e68: $06 $1c
	ld   a, [bc]                                     ; $5e6a: $0a
	ld   bc, $5d63                                   ; $5e6b: $01 $63 $5d
	sub  a                                           ; $5e6e: $97
	ld   e, l                                        ; $5e6f: $5d
	and  c                                           ; $5e70: $a1
	ld   a, h                                        ; $5e71: $7c
	sbc  [hl]                                        ; $5e72: $9e
	ld   [$5d00], sp                                 ; $5e73: $08 $00 $5d
	and  c                                           ; $5e76: $a1
	dec  c                                           ; $5e77: $0d
	add  [hl]                                        ; $5e78: $86
	ld   a, h                                        ; $5e79: $7c
	inc  b                                           ; $5e7a: $04
	ld   d, a                                        ; $5e7b: $57
	inc  b                                           ; $5e7c: $04
	ld   h, e                                        ; $5e7d: $63
	ld   a, l                                        ; $5e7e: $7d
	sbc  [hl]                                        ; $5e7f: $9e
	ld   e, c                                        ; $5e80: $59
	ld   a, b                                        ; $5e81: $78
	sbc  b                                           ; $5e82: $98
	ld   d, d                                        ; $5e83: $52
	ld   d, d                                        ; $5e84: $52
	dec  c                                           ; $5e85: $0d
	halt                                             ; $5e86: $76
	dec  b                                           ; $5e87: $05
	pop  de                                          ; $5e88: $d1
	ld   d, h                                        ; $5e89: $54
	ld   l, h                                        ; $5e8a: $6c
	sbc  a                                           ; $5e8b: $9f
	dec  c                                           ; $5e8c: $0d
	nop                                              ; $5e8d: $00
	ld   a, [bc]                                     ; $5e8e: $0a
	ld   bc, $ca02                                   ; $5e8f: $01 $02 $ca
	sub  b                                           ; $5e92: $90
	ld   l, e                                        ; $5e93: $6b
	sbc  d                                           ; $5e94: $9a
	ld   a, c                                        ; $5e95: $79
	ld   [bc], a                                     ; $5e96: $02
	add  hl, bc                                      ; $5e97: $09
	ld   d, [hl]                                     ; $5e98: $56
	sub  a                                           ; $5e99: $97
	sbc  d                                           ; $5e9a: $9a
	sbc  c                                           ; $5e9b: $99
	sub  [hl]                                        ; $5e9c: $96
	ld   d, h                                        ; $5e9d: $54
	ld   a, c                                        ; $5e9e: $79
	dec  c                                           ; $5e9f: $0d
	ld   e, d                                        ; $5ea0: $5a
	and  c                                           ; $5ea1: $a1
	ld   a, [hl]                                     ; $5ea2: $7e
	sbc  c                                           ; $5ea3: $99
	and  c                                           ; $5ea4: $a1
	ld   l, [hl]                                     ; $5ea5: $6e
	ld   l, h                                        ; $5ea6: $6c
	sbc  a                                           ; $5ea7: $9f
	dec  c                                           ; $5ea8: $0d
	nop                                              ; $5ea9: $00
	ld   a, [bc]                                     ; $5eaa: $0a
	ld   b, $1c                                      ; $5eab: $06 $1c
	ld   a, [bc]                                     ; $5ead: $0a
	rrca                                             ; $5eae: $0f
	nop                                              ; $5eaf: $00
	ld   bc, $6701                                   ; $5eb0: $01 $01 $67

jr_046_5eb3:
	adc  l                                           ; $5eb3: $8d
	sbc  d                                           ; $5eb4: $9a
	ld   h, e                                        ; $5eb5: $63
	and  c                                           ; $5eb6: $a1
	ld   a, h                                        ; $5eb7: $7c
	inc  b                                           ; $5eb8: $04
	ld   l, l                                        ; $5eb9: $6d
	add  [hl]                                        ; $5eba: $86
	ld   a, h                                        ; $5ebb: $7c
	inc  b                                           ; $5ebc: $04
	ld   d, a                                        ; $5ebd: $57
	inc  b                                           ; $5ebe: $04
	ld   h, e                                        ; $5ebf: $63
	ld   [hl], c                                     ; $5ec0: $71
	ld   [hl], h                                     ; $5ec1: $74
	dec  c                                           ; $5ec2: $0d
	ld   [hl], a                                     ; $5ec3: $77
	ld   d, h                                        ; $5ec4: $54
	ld   a, b                                        ; $5ec5: $78
	and  c                                           ; $5ec6: $a1
	ld   [hl], l                                     ; $5ec7: $75
	ld   h, l                                        ; $5ec8: $65
	sub  l                                           ; $5ec9: $95

jr_046_5eca:
	ld   d, h                                        ; $5eca: $54
	ld   e, c                                        ; $5ecb: $59
	ld   sp, hl                                      ; $5ecc: $f9
	dec  c                                           ; $5ecd: $0d
	nop                                              ; $5ece: $00
	ld   a, [bc]                                     ; $5ecf: $0a
	rrca                                             ; $5ed0: $0f
	add  hl, bc                                      ; $5ed1: $09
	nop                                              ; $5ed2: $00
	ld   bc, $8e83                                   ; $5ed3: $01 $83 $8e
	sbc  [hl]                                        ; $5ed6: $9e
	ld   l, e                                        ; $5ed7: $6b
	ld   d, h                                        ; $5ed8: $54
	ld   l, [hl]                                     ; $5ed9: $6e
	ld   a, b                                        ; $5eda: $78
	rst  $38                                         ; $5edb: $ff
	rst  $38                                         ; $5edc: $ff
	dec  c                                           ; $5edd: $0d
	nop                                              ; $5ede: $00
	ld   a, [bc]                                     ; $5edf: $0a
	rlca                                             ; $5ee0: $07
	db   $ec                                         ; $5ee1: $ec
	inc  b                                           ; $5ee2: $04
	inc  bc                                          ; $5ee3: $03
	ld   [de], a                                     ; $5ee4: $12
	ld   bc, $2364                                   ; $5ee5: $01 $64 $23
	nop                                              ; $5ee8: $00
	rlca                                             ; $5ee9: $07
	dec  sp                                          ; $5eea: $3b
	dec  b                                           ; $5eeb: $05
	inc  bc                                          ; $5eec: $03
	ld   [de], a                                     ; $5eed: $12
	ld   bc, $257c                                   ; $5eee: $01 $7c $25
	nop                                              ; $5ef1: $00
	ld   bc, $8d67                                   ; $5ef2: $01 $67 $8d
	sbc  d                                           ; $5ef5: $9a
	ld   e, l                                        ; $5ef6: $5d
	and  c                                           ; $5ef7: $a1
	ld   a, h                                        ; $5ef8: $7c
	sbc  [hl]                                        ; $5ef9: $9e
	ld   [$5d00], sp                                 ; $5efa: $08 $00 $5d
	and  c                                           ; $5efd: $a1
	dec  c                                           ; $5efe: $0d
	add  [hl]                                        ; $5eff: $86
	ld   a, h                                        ; $5f00: $7c
	inc  b                                           ; $5f01: $04
	ld   d, a                                        ; $5f02: $57
	inc  b                                           ; $5f03: $04
	ld   h, e                                        ; $5f04: $63
	ld   a, l                                        ; $5f05: $7d
	sbc  [hl]                                        ; $5f06: $9e
	adc  h                                           ; $5f07: $8c
	ld   d, b                                        ; $5f08: $50
	adc  h                                           ; $5f09: $8c
	ld   d, b                                        ; $5f0a: $50
	dec  c                                           ; $5f0b: $0d
	halt                                             ; $5f0c: $76
	ld   d, d                                        ; $5f0d: $52
	ld   [hl], c                                     ; $5f0e: $71
	ld   l, l                                        ; $5f0f: $6d
	halt                                             ; $5f10: $76
	ld   h, c                                        ; $5f11: $61
	sbc  e                                           ; $5f12: $9b
	ld   e, c                                        ; $5f13: $59
	ld   a, b                                        ; $5f14: $78
	sbc  a                                           ; $5f15: $9f
	dec  c                                           ; $5f16: $0d
	nop                                              ; $5f17: $00
	ld   a, [bc]                                     ; $5f18: $0a
	ld   bc, $5d76                                   ; $5f19: $01 $76 $5d
	ld   a, c                                        ; $5f1c: $79
	ld   [bc], a                                     ; $5f1d: $02
	jr   z, jr_046_5f72                              ; $5f1e: $28 $52

	dec  b                                           ; $5f20: $05
	jr   nz, jr_046_5eb3                             ; $5f21: $20 $90

	ld   [bc], a                                     ; $5f23: $02
	jp   nz, $7859                                   ; $5f24: $c2 $59 $78

	ld   d, d                                        ; $5f27: $52
	ld   h, l                                        ; $5f28: $65
	rst  $38                                         ; $5f29: $ff
	rst  $38                                         ; $5f2a: $ff
	dec  c                                           ; $5f2b: $0d
	ld   e, c                                        ; $5f2c: $59
	halt                                             ; $5f2d: $76
	ld   d, d                                        ; $5f2e: $52
	ld   [hl], c                                     ; $5f2f: $71
	ld   [hl], h                                     ; $5f30: $74
	sbc  [hl]                                        ; $5f31: $9e
	ld   d, d                                        ; $5f32: $52
	ld   d, d                                        ; $5f33: $52
	halt                                             ; $5f34: $76
	ld   d, d                                        ; $5f35: $52
	ld   d, h                                        ; $5f36: $54
	dec  b                                           ; $5f37: $05
	jr   nz, jr_046_5eca                             ; $5f38: $20 $90

	dec  c                                           ; $5f3a: $0d
	ld   [bc], a                                     ; $5f3b: $02
	jp   nz, $7859                                   ; $5f3c: $c2 $59 $78

	ld   d, d                                        ; $5f3f: $52
	ld   a, b                                        ; $5f40: $78
	sbc  a                                           ; $5f41: $9f
	dec  c                                           ; $5f42: $0d
	nop                                              ; $5f43: $00
	ld   a, [bc]                                     ; $5f44: $0a
	ld   b, $1c                                      ; $5f45: $06 $1c
	ld   a, [bc]                                     ; $5f47: $0a
	ld   bc, $8d67                                   ; $5f48: $01 $67 $8d
	sbc  d                                           ; $5f4b: $9a
	ld   e, l                                        ; $5f4c: $5d
	and  c                                           ; $5f4d: $a1
	ld   a, h                                        ; $5f4e: $7c
	sbc  [hl]                                        ; $5f4f: $9e
	ld   [$5d00], sp                                 ; $5f50: $08 $00 $5d
	and  c                                           ; $5f53: $a1
	dec  c                                           ; $5f54: $0d
	add  [hl]                                        ; $5f55: $86
	ld   a, h                                        ; $5f56: $7c
	inc  b                                           ; $5f57: $04
	ld   d, a                                        ; $5f58: $57
	inc  b                                           ; $5f59: $04
	ld   h, e                                        ; $5f5a: $63
	ld   a, l                                        ; $5f5b: $7d
	rst  $38                                         ; $5f5c: $ff
	rst  $38                                         ; $5f5d: $ff
	dec  c                                           ; $5f5e: $0d
	ld   d, b                                        ; $5f5f: $50
	adc  h                                           ; $5f60: $8c
	sbc  b                                           ; $5f61: $98
	sub  [hl]                                        ; $5f62: $96
	ld   e, l                                        ; $5f63: $5d
	ld   a, b                                        ; $5f64: $78
	ld   d, d                                        ; $5f65: $52
	ld   a, b                                        ; $5f66: $78
	sbc  a                                           ; $5f67: $9f
	dec  c                                           ; $5f68: $0d
	nop                                              ; $5f69: $00
	ld   a, [bc]                                     ; $5f6a: $0a
	ld   bc, $7190                                   ; $5f6b: $01 $90 $71
	halt                                             ; $5f6e: $76
	ld   [bc], a                                     ; $5f6f: $02
	ld   a, [de]                                     ; $5f70: $1a
	inc  bc                                          ; $5f71: $03

jr_046_5f72:
	ld   l, e                                        ; $5f72: $6b
	ld   a, h                                        ; $5f73: $7c
	ld   [bc], a                                     ; $5f74: $02
	and  c                                           ; $5f75: $a1
	inc  bc                                          ; $5f76: $03
	and  b                                           ; $5f77: $a0
	ld   l, a                                        ; $5f78: $6f
	and  b                                           ; $5f79: $a0
	dec  c                                           ; $5f7a: $0d
	ld   [bc], a                                     ; $5f7b: $02
	ld   h, l                                        ; $5f7c: $65
	ld   d, [hl]                                     ; $5f7d: $56
	ld   [hl], h                                     ; $5f7e: $74
	ld   [bc], a                                     ; $5f7f: $02
	ld   a, a                                        ; $5f80: $7f
	inc  b                                           ; $5f81: $04
	dec  de                                          ; $5f82: $1b
	ld   h, l                                        ; $5f83: $65
	ld   l, l                                        ; $5f84: $6d
	adc  c                                           ; $5f85: $89
	ld   d, h                                        ; $5f86: $54
	ld   e, d                                        ; $5f87: $5a
	ld   d, d                                        ; $5f88: $52
	ld   d, d                                        ; $5f89: $52
	halt                                             ; $5f8a: $76
	dec  c                                           ; $5f8b: $0d
	dec  b                                           ; $5f8c: $05
	pop  de                                          ; $5f8d: $d1
	ld   d, h                                        ; $5f8e: $54
	ld   l, h                                        ; $5f8f: $6c
	sbc  a                                           ; $5f90: $9f
	dec  c                                           ; $5f91: $0d
	nop                                              ; $5f92: $00
	ld   a, [bc]                                     ; $5f93: $0a
	ld   b, $1c                                      ; $5f94: $06 $1c
	ld   a, [bc]                                     ; $5f96: $0a
	ld   bc, $8d67                                   ; $5f97: $01 $67 $8d
	sbc  d                                           ; $5f9a: $9a
	ld   e, l                                        ; $5f9b: $5d
	and  c                                           ; $5f9c: $a1
	ld   a, h                                        ; $5f9d: $7c
	sbc  [hl]                                        ; $5f9e: $9e
	ld   [$5d00], sp                                 ; $5f9f: $08 $00 $5d
	and  c                                           ; $5fa2: $a1
	dec  c                                           ; $5fa3: $0d
	add  [hl]                                        ; $5fa4: $86
	ld   a, h                                        ; $5fa5: $7c
	inc  b                                           ; $5fa6: $04
	ld   d, a                                        ; $5fa7: $57
	inc  b                                           ; $5fa8: $04
	ld   h, e                                        ; $5fa9: $63
	ld   a, l                                        ; $5faa: $7d
	sbc  [hl]                                        ; $5fab: $9e
	ld   e, c                                        ; $5fac: $59
	ld   a, b                                        ; $5fad: $78
	sbc  b                                           ; $5fae: $98
	ld   d, d                                        ; $5faf: $52
	ld   d, d                                        ; $5fb0: $52
	dec  c                                           ; $5fb1: $0d
	halt                                             ; $5fb2: $76
	dec  b                                           ; $5fb3: $05
	pop  de                                          ; $5fb4: $d1
	ld   d, h                                        ; $5fb5: $54
	ld   l, h                                        ; $5fb6: $6c
	sbc  a                                           ; $5fb7: $9f
	dec  c                                           ; $5fb8: $0d
	nop                                              ; $5fb9: $00
	ld   a, [bc]                                     ; $5fba: $0a
	ld   bc, $ca02                                   ; $5fbb: $01 $02 $ca
	sub  b                                           ; $5fbe: $90
	ld   l, e                                        ; $5fbf: $6b
	sbc  d                                           ; $5fc0: $9a
	ld   a, c                                        ; $5fc1: $79
	ld   [bc], a                                     ; $5fc2: $02
	add  hl, bc                                      ; $5fc3: $09
	ld   d, [hl]                                     ; $5fc4: $56
	sub  a                                           ; $5fc5: $97
	sbc  d                                           ; $5fc6: $9a
	sbc  c                                           ; $5fc7: $99
	sub  [hl]                                        ; $5fc8: $96
	ld   d, h                                        ; $5fc9: $54
	ld   a, c                                        ; $5fca: $79
	dec  c                                           ; $5fcb: $0d
	ld   e, d                                        ; $5fcc: $5a
	and  c                                           ; $5fcd: $a1
	ld   a, [hl]                                     ; $5fce: $7e
	sbc  c                                           ; $5fcf: $99
	and  c                                           ; $5fd0: $a1
	ld   l, [hl]                                     ; $5fd1: $6e
	ld   l, h                                        ; $5fd2: $6c
	sbc  a                                           ; $5fd3: $9f
	dec  c                                           ; $5fd4: $0d
	nop                                              ; $5fd5: $00
	ld   a, [bc]                                     ; $5fd6: $0a
	ld   b, $1c                                      ; $5fd7: $06 $1c
	ld   a, [bc]                                     ; $5fd9: $0a
	rrca                                             ; $5fda: $0f
	nop                                              ; $5fdb: $00
	ld   bc, $df01                                   ; $5fdc: $01 $01 $df
	db   $ec                                         ; $5fdf: $ec
	and  e                                           ; $5fe0: $a3
	ld   h, e                                        ; $5fe1: $63
	and  c                                           ; $5fe2: $a1
	ld   a, h                                        ; $5fe3: $7c
	inc  b                                           ; $5fe4: $04
	ld   l, l                                        ; $5fe5: $6d
	add  [hl]                                        ; $5fe6: $86
	ld   a, h                                        ; $5fe7: $7c
	inc  b                                           ; $5fe8: $04
	ld   d, a                                        ; $5fe9: $57
	inc  b                                           ; $5fea: $04
	ld   h, e                                        ; $5feb: $63
	ld   [hl], c                                     ; $5fec: $71
	ld   [hl], h                                     ; $5fed: $74
	dec  c                                           ; $5fee: $0d
	ld   [hl], a                                     ; $5fef: $77
	ld   d, h                                        ; $5ff0: $54
	ld   a, b                                        ; $5ff1: $78
	and  c                                           ; $5ff2: $a1
	ld   [hl], l                                     ; $5ff3: $75

jr_046_5ff4:
	ld   h, l                                        ; $5ff4: $65
	sub  l                                           ; $5ff5: $95
	ld   d, h                                        ; $5ff6: $54
	ld   e, c                                        ; $5ff7: $59
	ld   sp, hl                                      ; $5ff8: $f9
	dec  c                                           ; $5ff9: $0d
	nop                                              ; $5ffa: $00
	ld   a, [bc]                                     ; $5ffb: $0a
	rrca                                             ; $5ffc: $0f
	add  hl, bc                                      ; $5ffd: $09
	nop                                              ; $5ffe: $00
	ld   bc, $8e83                                   ; $5fff: $01 $83 $8e
	sbc  [hl]                                        ; $6002: $9e
	ld   l, e                                        ; $6003: $6b
	ld   d, h                                        ; $6004: $54
	ld   l, [hl]                                     ; $6005: $6e
	ld   a, b                                        ; $6006: $78
	rst  $38                                         ; $6007: $ff
	rst  $38                                         ; $6008: $ff
	dec  c                                           ; $6009: $0d
	nop                                              ; $600a: $00
	ld   a, [bc]                                     ; $600b: $0a
	rlca                                             ; $600c: $07
	ld   d, $06                                      ; $600d: $16 $06
	inc  bc                                          ; $600f: $03
	inc  de                                          ; $6010: $13
	ld   bc, $2364                                   ; $6011: $01 $64 $23
	nop                                              ; $6014: $00
	rlca                                             ; $6015: $07
	ld   h, e                                        ; $6016: $63
	ld   b, $03                                      ; $6017: $06 $03
	inc  de                                          ; $6019: $13
	ld   bc, $257c                                   ; $601a: $01 $7c $25
	nop                                              ; $601d: $00
	ld   bc, $ecdf                                   ; $601e: $01 $df $ec
	and  e                                           ; $6021: $a3
	ld   a, h                                        ; $6022: $7c
	sbc  [hl]                                        ; $6023: $9e
	ld   [$5d00], sp                                 ; $6024: $08 $00 $5d
	and  c                                           ; $6027: $a1
	dec  c                                           ; $6028: $0d
	add  [hl]                                        ; $6029: $86
	ld   a, h                                        ; $602a: $7c
	inc  b                                           ; $602b: $04
	ld   d, a                                        ; $602c: $57
	inc  b                                           ; $602d: $04
	ld   h, e                                        ; $602e: $63
	ld   a, l                                        ; $602f: $7d
	sbc  [hl]                                        ; $6030: $9e
	adc  h                                           ; $6031: $8c
	ld   d, b                                        ; $6032: $50
	adc  h                                           ; $6033: $8c
	ld   d, b                                        ; $6034: $50
	dec  c                                           ; $6035: $0d
	halt                                             ; $6036: $76
	ld   d, d                                        ; $6037: $52
	ld   [hl], c                                     ; $6038: $71
	ld   l, l                                        ; $6039: $6d
	halt                                             ; $603a: $76
	ld   h, c                                        ; $603b: $61
	sbc  e                                           ; $603c: $9b
	ld   e, c                                        ; $603d: $59
	ld   a, b                                        ; $603e: $78
	sbc  a                                           ; $603f: $9f
	dec  c                                           ; $6040: $0d
	nop                                              ; $6041: $00
	ld   a, [bc]                                     ; $6042: $0a
	ld   bc, $5d76                                   ; $6043: $01 $76 $5d
	ld   a, c                                        ; $6046: $79
	ld   [bc], a                                     ; $6047: $02
	jr   z, jr_046_609c                              ; $6048: $28 $52

	dec  b                                           ; $604a: $05
	jr   nz, @-$6e                                   ; $604b: $20 $90

	ld   [bc], a                                     ; $604d: $02
	jp   nz, $7859                                   ; $604e: $c2 $59 $78

	ld   d, d                                        ; $6051: $52
	ld   h, l                                        ; $6052: $65
	rst  $38                                         ; $6053: $ff
	rst  $38                                         ; $6054: $ff
	dec  c                                           ; $6055: $0d
	ld   e, c                                        ; $6056: $59
	halt                                             ; $6057: $76
	ld   d, d                                        ; $6058: $52
	ld   [hl], c                                     ; $6059: $71
	ld   [hl], h                                     ; $605a: $74
	sbc  [hl]                                        ; $605b: $9e
	ld   d, d                                        ; $605c: $52
	ld   d, d                                        ; $605d: $52
	halt                                             ; $605e: $76
	ld   d, d                                        ; $605f: $52
	ld   d, h                                        ; $6060: $54
	dec  b                                           ; $6061: $05
	jr   nz, jr_046_5ff4                             ; $6062: $20 $90

	dec  c                                           ; $6064: $0d
	ld   [bc], a                                     ; $6065: $02
	jp   nz, $7859                                   ; $6066: $c2 $59 $78

	ld   d, d                                        ; $6069: $52
	ld   a, b                                        ; $606a: $78
	sbc  a                                           ; $606b: $9f
	dec  c                                           ; $606c: $0d
	nop                                              ; $606d: $00
	ld   a, [bc]                                     ; $606e: $0a
	ld   b, $1c                                      ; $606f: $06 $1c
	ld   a, [bc]                                     ; $6071: $0a
	ld   bc, $ecdf                                   ; $6072: $01 $df $ec
	and  e                                           ; $6075: $a3
	ld   a, h                                        ; $6076: $7c
	sbc  [hl]                                        ; $6077: $9e
	ld   [$5d00], sp                                 ; $6078: $08 $00 $5d
	and  c                                           ; $607b: $a1
	dec  c                                           ; $607c: $0d
	add  [hl]                                        ; $607d: $86
	ld   a, h                                        ; $607e: $7c
	inc  b                                           ; $607f: $04
	ld   d, a                                        ; $6080: $57
	inc  b                                           ; $6081: $04
	ld   h, e                                        ; $6082: $63
	ld   a, l                                        ; $6083: $7d
	rst  $38                                         ; $6084: $ff
	rst  $38                                         ; $6085: $ff
	dec  c                                           ; $6086: $0d
	ld   d, b                                        ; $6087: $50
	adc  h                                           ; $6088: $8c
	sbc  b                                           ; $6089: $98
	sub  [hl]                                        ; $608a: $96
	ld   e, l                                        ; $608b: $5d
	ld   a, b                                        ; $608c: $78
	ld   d, d                                        ; $608d: $52
	ld   a, b                                        ; $608e: $78
	sbc  a                                           ; $608f: $9f
	dec  c                                           ; $6090: $0d
	nop                                              ; $6091: $00
	ld   a, [bc]                                     ; $6092: $0a
	ld   bc, $7190                                   ; $6093: $01 $90 $71
	halt                                             ; $6096: $76
	ld   [bc], a                                     ; $6097: $02
	ld   a, [de]                                     ; $6098: $1a
	inc  bc                                          ; $6099: $03
	ld   l, e                                        ; $609a: $6b
	ld   a, h                                        ; $609b: $7c

jr_046_609c:
	ld   [bc], a                                     ; $609c: $02
	and  c                                           ; $609d: $a1
	inc  bc                                          ; $609e: $03
	and  b                                           ; $609f: $a0
	ld   l, a                                        ; $60a0: $6f
	and  b                                           ; $60a1: $a0
	dec  c                                           ; $60a2: $0d
	ld   [bc], a                                     ; $60a3: $02
	ld   h, l                                        ; $60a4: $65
	ld   d, [hl]                                     ; $60a5: $56
	ld   [hl], h                                     ; $60a6: $74
	ld   [bc], a                                     ; $60a7: $02
	ld   a, a                                        ; $60a8: $7f
	inc  b                                           ; $60a9: $04
	dec  de                                          ; $60aa: $1b
	ld   h, l                                        ; $60ab: $65
	ld   l, l                                        ; $60ac: $6d
	adc  c                                           ; $60ad: $89
	ld   d, h                                        ; $60ae: $54
	ld   e, d                                        ; $60af: $5a
	ld   d, d                                        ; $60b0: $52
	ld   d, d                                        ; $60b1: $52
	halt                                             ; $60b2: $76
	dec  c                                           ; $60b3: $0d
	dec  b                                           ; $60b4: $05
	pop  de                                          ; $60b5: $d1
	ld   d, h                                        ; $60b6: $54
	ld   l, h                                        ; $60b7: $6c
	sbc  a                                           ; $60b8: $9f
	dec  c                                           ; $60b9: $0d
	nop                                              ; $60ba: $00
	ld   a, [bc]                                     ; $60bb: $0a
	ld   b, $1c                                      ; $60bc: $06 $1c
	ld   a, [bc]                                     ; $60be: $0a
	ld   bc, $ecdf                                   ; $60bf: $01 $df $ec
	and  e                                           ; $60c2: $a3
	ld   a, h                                        ; $60c3: $7c
	sbc  [hl]                                        ; $60c4: $9e
	ld   [$5d00], sp                                 ; $60c5: $08 $00 $5d
	and  c                                           ; $60c8: $a1
	dec  c                                           ; $60c9: $0d
	add  [hl]                                        ; $60ca: $86
	ld   a, h                                        ; $60cb: $7c
	inc  b                                           ; $60cc: $04
	ld   d, a                                        ; $60cd: $57
	inc  b                                           ; $60ce: $04
	ld   h, e                                        ; $60cf: $63
	ld   a, l                                        ; $60d0: $7d
	sbc  [hl]                                        ; $60d1: $9e
	ld   e, c                                        ; $60d2: $59
	ld   a, b                                        ; $60d3: $78
	sbc  b                                           ; $60d4: $98
	ld   d, d                                        ; $60d5: $52
	ld   d, d                                        ; $60d6: $52
	dec  c                                           ; $60d7: $0d
	halt                                             ; $60d8: $76
	dec  b                                           ; $60d9: $05
	pop  de                                          ; $60da: $d1
	ld   d, h                                        ; $60db: $54
	ld   l, h                                        ; $60dc: $6c
	sbc  a                                           ; $60dd: $9f
	dec  c                                           ; $60de: $0d
	nop                                              ; $60df: $00
	ld   a, [bc]                                     ; $60e0: $0a
	ld   bc, $ca02                                   ; $60e1: $01 $02 $ca
	sub  b                                           ; $60e4: $90
	ld   l, e                                        ; $60e5: $6b
	sbc  d                                           ; $60e6: $9a
	ld   a, c                                        ; $60e7: $79
	ld   [bc], a                                     ; $60e8: $02
	add  hl, bc                                      ; $60e9: $09
	ld   d, [hl]                                     ; $60ea: $56
	sub  a                                           ; $60eb: $97
	sbc  d                                           ; $60ec: $9a
	sbc  c                                           ; $60ed: $99
	sub  [hl]                                        ; $60ee: $96
	ld   d, h                                        ; $60ef: $54
	ld   a, c                                        ; $60f0: $79
	dec  c                                           ; $60f1: $0d
	ld   e, d                                        ; $60f2: $5a
	and  c                                           ; $60f3: $a1
	ld   a, [hl]                                     ; $60f4: $7e
	sbc  c                                           ; $60f5: $99
	and  c                                           ; $60f6: $a1
	ld   l, [hl]                                     ; $60f7: $6e
	ld   l, h                                        ; $60f8: $6c
	sbc  a                                           ; $60f9: $9f
	dec  c                                           ; $60fa: $0d
	nop                                              ; $60fb: $00
	ld   a, [bc]                                     ; $60fc: $0a
	ld   b, $1c                                      ; $60fd: $06 $1c
	ld   a, [bc]                                     ; $60ff: $0a
	rrca                                             ; $6100: $0f
	nop                                              ; $6101: $00
	ld   bc, $a301                                   ; $6102: $01 $01 $a3
	and  l                                           ; $6105: $a5
	db   $ec                                         ; $6106: $ec
	cp   d                                           ; $6107: $ba
	ld   a, h                                        ; $6108: $7c
	inc  b                                           ; $6109: $04
	ld   l, l                                        ; $610a: $6d
	add  [hl]                                        ; $610b: $86
	ld   a, h                                        ; $610c: $7c
	inc  b                                           ; $610d: $04
	ld   d, a                                        ; $610e: $57
	inc  b                                           ; $610f: $04
	ld   h, e                                        ; $6110: $63
	ld   [hl], c                                     ; $6111: $71
	ld   [hl], h                                     ; $6112: $74
	dec  c                                           ; $6113: $0d
	ld   [hl], a                                     ; $6114: $77
	ld   d, h                                        ; $6115: $54
	ld   a, b                                        ; $6116: $78
	and  c                                           ; $6117: $a1
	ld   [hl], l                                     ; $6118: $75
	ld   h, l                                        ; $6119: $65

jr_046_611a:
	sub  l                                           ; $611a: $95
	ld   d, h                                        ; $611b: $54
	ld   e, c                                        ; $611c: $59
	ld   sp, hl                                      ; $611d: $f9
	dec  c                                           ; $611e: $0d
	nop                                              ; $611f: $00
	ld   a, [bc]                                     ; $6120: $0a
	rrca                                             ; $6121: $0f
	add  hl, bc                                      ; $6122: $09
	nop                                              ; $6123: $00
	ld   bc, $8e83                                   ; $6124: $01 $83 $8e
	sbc  [hl]                                        ; $6127: $9e
	ld   l, e                                        ; $6128: $6b
	ld   d, h                                        ; $6129: $54
	ld   l, [hl]                                     ; $612a: $6e
	ld   a, b                                        ; $612b: $78
	rst  $38                                         ; $612c: $ff
	rst  $38                                         ; $612d: $ff
	dec  c                                           ; $612e: $0d
	nop                                              ; $612f: $00
	ld   a, [bc]                                     ; $6130: $0a
	rlca                                             ; $6131: $07
	inc  a                                           ; $6132: $3c
	rlca                                             ; $6133: $07
	inc  bc                                          ; $6134: $03
	inc  d                                           ; $6135: $14
	ld   bc, $2364                                   ; $6136: $01 $64 $23
	nop                                              ; $6139: $00
	rlca                                             ; $613a: $07
	adc  d                                           ; $613b: $8a
	rlca                                             ; $613c: $07
	inc  bc                                          ; $613d: $03
	inc  d                                           ; $613e: $14
	ld   bc, $257c                                   ; $613f: $01 $7c $25
	nop                                              ; $6142: $00
	ld   bc, $a5a3                                   ; $6143: $01 $a3 $a5
	db   $ec                                         ; $6146: $ec
	cp   d                                           ; $6147: $ba
	ld   a, h                                        ; $6148: $7c
	sbc  [hl]                                        ; $6149: $9e
	ld   [$5d00], sp                                 ; $614a: $08 $00 $5d
	and  c                                           ; $614d: $a1
	dec  c                                           ; $614e: $0d
	add  [hl]                                        ; $614f: $86
	ld   a, h                                        ; $6150: $7c
	inc  b                                           ; $6151: $04
	ld   d, a                                        ; $6152: $57
	inc  b                                           ; $6153: $04
	ld   h, e                                        ; $6154: $63
	ld   a, l                                        ; $6155: $7d
	sbc  [hl]                                        ; $6156: $9e
	adc  h                                           ; $6157: $8c
	ld   d, b                                        ; $6158: $50
	adc  h                                           ; $6159: $8c
	ld   d, b                                        ; $615a: $50
	dec  c                                           ; $615b: $0d
	halt                                             ; $615c: $76
	ld   d, d                                        ; $615d: $52
	ld   [hl], c                                     ; $615e: $71
	ld   l, l                                        ; $615f: $6d
	halt                                             ; $6160: $76
	ld   h, c                                        ; $6161: $61
	sbc  e                                           ; $6162: $9b
	ld   e, c                                        ; $6163: $59
	ld   a, b                                        ; $6164: $78
	sbc  a                                           ; $6165: $9f
	dec  c                                           ; $6166: $0d
	nop                                              ; $6167: $00
	ld   a, [bc]                                     ; $6168: $0a
	ld   bc, $5d76                                   ; $6169: $01 $76 $5d
	ld   a, c                                        ; $616c: $79
	ld   [bc], a                                     ; $616d: $02
	jr   z, jr_046_61c2                              ; $616e: $28 $52

	dec  b                                           ; $6170: $05
	jr   nz, @-$6e                                   ; $6171: $20 $90

	ld   [bc], a                                     ; $6173: $02
	jp   nz, $7859                                   ; $6174: $c2 $59 $78

	ld   d, d                                        ; $6177: $52
	ld   h, l                                        ; $6178: $65
	rst  $38                                         ; $6179: $ff
	rst  $38                                         ; $617a: $ff
	dec  c                                           ; $617b: $0d
	ld   e, c                                        ; $617c: $59
	halt                                             ; $617d: $76
	ld   d, d                                        ; $617e: $52
	ld   [hl], c                                     ; $617f: $71
	ld   [hl], h                                     ; $6180: $74
	sbc  [hl]                                        ; $6181: $9e
	ld   d, d                                        ; $6182: $52
	ld   d, d                                        ; $6183: $52
	halt                                             ; $6184: $76
	ld   d, d                                        ; $6185: $52
	ld   d, h                                        ; $6186: $54
	dec  b                                           ; $6187: $05
	jr   nz, jr_046_611a                             ; $6188: $20 $90

	dec  c                                           ; $618a: $0d
	ld   [bc], a                                     ; $618b: $02
	jp   nz, $7859                                   ; $618c: $c2 $59 $78

	ld   d, d                                        ; $618f: $52
	ld   a, b                                        ; $6190: $78
	sbc  a                                           ; $6191: $9f
	dec  c                                           ; $6192: $0d
	nop                                              ; $6193: $00
	ld   a, [bc]                                     ; $6194: $0a
	ld   b, $1c                                      ; $6195: $06 $1c
	ld   a, [bc]                                     ; $6197: $0a
	ld   bc, $a5a3                                   ; $6198: $01 $a3 $a5
	db   $ec                                         ; $619b: $ec
	cp   d                                           ; $619c: $ba
	ld   a, h                                        ; $619d: $7c
	sbc  [hl]                                        ; $619e: $9e
	ld   [$5d00], sp                                 ; $619f: $08 $00 $5d
	and  c                                           ; $61a2: $a1
	dec  c                                           ; $61a3: $0d
	add  [hl]                                        ; $61a4: $86
	ld   a, h                                        ; $61a5: $7c
	inc  b                                           ; $61a6: $04
	ld   d, a                                        ; $61a7: $57
	inc  b                                           ; $61a8: $04
	ld   h, e                                        ; $61a9: $63
	ld   a, l                                        ; $61aa: $7d
	rst  $38                                         ; $61ab: $ff
	rst  $38                                         ; $61ac: $ff
	dec  c                                           ; $61ad: $0d
	ld   d, b                                        ; $61ae: $50
	adc  h                                           ; $61af: $8c
	sbc  b                                           ; $61b0: $98
	sub  [hl]                                        ; $61b1: $96
	ld   e, l                                        ; $61b2: $5d
	ld   a, b                                        ; $61b3: $78
	ld   d, d                                        ; $61b4: $52
	ld   a, b                                        ; $61b5: $78
	sbc  a                                           ; $61b6: $9f
	dec  c                                           ; $61b7: $0d
	nop                                              ; $61b8: $00
	ld   a, [bc]                                     ; $61b9: $0a
	ld   bc, $7190                                   ; $61ba: $01 $90 $71
	halt                                             ; $61bd: $76
	ld   [bc], a                                     ; $61be: $02
	ld   a, [de]                                     ; $61bf: $1a
	inc  bc                                          ; $61c0: $03
	ld   l, e                                        ; $61c1: $6b

jr_046_61c2:
	ld   a, h                                        ; $61c2: $7c
	ld   [bc], a                                     ; $61c3: $02
	and  c                                           ; $61c4: $a1
	inc  bc                                          ; $61c5: $03
	and  b                                           ; $61c6: $a0
	ld   l, a                                        ; $61c7: $6f
	and  b                                           ; $61c8: $a0
	dec  c                                           ; $61c9: $0d
	ld   [bc], a                                     ; $61ca: $02
	ld   h, l                                        ; $61cb: $65
	ld   d, [hl]                                     ; $61cc: $56
	ld   [hl], h                                     ; $61cd: $74
	ld   [bc], a                                     ; $61ce: $02
	ld   a, a                                        ; $61cf: $7f
	inc  b                                           ; $61d0: $04
	dec  de                                          ; $61d1: $1b
	ld   h, l                                        ; $61d2: $65
	ld   l, l                                        ; $61d3: $6d
	adc  c                                           ; $61d4: $89
	ld   d, h                                        ; $61d5: $54
	ld   e, d                                        ; $61d6: $5a
	ld   d, d                                        ; $61d7: $52
	ld   d, d                                        ; $61d8: $52
	halt                                             ; $61d9: $76
	dec  c                                           ; $61da: $0d
	dec  b                                           ; $61db: $05
	pop  de                                          ; $61dc: $d1
	ld   d, h                                        ; $61dd: $54
	ld   l, h                                        ; $61de: $6c
	sbc  a                                           ; $61df: $9f
	dec  c                                           ; $61e0: $0d
	nop                                              ; $61e1: $00
	ld   a, [bc]                                     ; $61e2: $0a
	ld   b, $1c                                      ; $61e3: $06 $1c
	ld   a, [bc]                                     ; $61e5: $0a
	ld   bc, $a5a3                                   ; $61e6: $01 $a3 $a5
	db   $ec                                         ; $61e9: $ec
	cp   d                                           ; $61ea: $ba
	ld   a, h                                        ; $61eb: $7c
	sbc  [hl]                                        ; $61ec: $9e
	ld   [$5d00], sp                                 ; $61ed: $08 $00 $5d
	and  c                                           ; $61f0: $a1
	dec  c                                           ; $61f1: $0d
	add  [hl]                                        ; $61f2: $86
	ld   a, h                                        ; $61f3: $7c
	inc  b                                           ; $61f4: $04
	ld   d, a                                        ; $61f5: $57
	inc  b                                           ; $61f6: $04
	ld   h, e                                        ; $61f7: $63
	ld   a, l                                        ; $61f8: $7d
	sbc  [hl]                                        ; $61f9: $9e
	ld   e, c                                        ; $61fa: $59
	ld   a, b                                        ; $61fb: $78
	sbc  b                                           ; $61fc: $98
	ld   d, d                                        ; $61fd: $52
	ld   d, d                                        ; $61fe: $52
	dec  c                                           ; $61ff: $0d
	halt                                             ; $6200: $76
	dec  b                                           ; $6201: $05
	pop  de                                          ; $6202: $d1
	ld   d, h                                        ; $6203: $54
	ld   l, h                                        ; $6204: $6c
	sbc  a                                           ; $6205: $9f
	dec  c                                           ; $6206: $0d
	nop                                              ; $6207: $00
	ld   a, [bc]                                     ; $6208: $0a
	ld   bc, $ca02                                   ; $6209: $01 $02 $ca
	sub  b                                           ; $620c: $90
	ld   l, e                                        ; $620d: $6b
	sbc  d                                           ; $620e: $9a
	ld   a, c                                        ; $620f: $79
	ld   [bc], a                                     ; $6210: $02
	add  hl, bc                                      ; $6211: $09
	ld   d, [hl]                                     ; $6212: $56
	sub  a                                           ; $6213: $97
	sbc  d                                           ; $6214: $9a
	sbc  c                                           ; $6215: $99
	sub  [hl]                                        ; $6216: $96
	ld   d, h                                        ; $6217: $54
	ld   a, c                                        ; $6218: $79
	dec  c                                           ; $6219: $0d
	ld   e, d                                        ; $621a: $5a
	and  c                                           ; $621b: $a1
	ld   a, [hl]                                     ; $621c: $7e
	sbc  c                                           ; $621d: $99
	and  c                                           ; $621e: $a1
	ld   l, [hl]                                     ; $621f: $6e
	ld   l, h                                        ; $6220: $6c
	sbc  a                                           ; $6221: $9f
	dec  c                                           ; $6222: $0d
	nop                                              ; $6223: $00
	ld   a, [bc]                                     ; $6224: $0a
	ld   b, $1c                                      ; $6225: $06 $1c
	ld   a, [bc]                                     ; $6227: $0a
	rrca                                             ; $6228: $0f
	nop                                              ; $6229: $00
	ld   bc, $0201                                   ; $622a: $01 $01 $02

jr_046_622d:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $622d: $cf
	dec  b                                           ; $622e: $05
	ld   a, [de]                                     ; $622f: $1a
	ld   h, e                                        ; $6230: $63
	and  c                                           ; $6231: $a1
	ld   a, h                                        ; $6232: $7c
	inc  b                                           ; $6233: $04
	ld   l, l                                        ; $6234: $6d
	add  [hl]                                        ; $6235: $86
	ld   a, h                                        ; $6236: $7c
	inc  b                                           ; $6237: $04
	ld   d, a                                        ; $6238: $57
	inc  b                                           ; $6239: $04
	ld   h, e                                        ; $623a: $63
	ld   [hl], c                                     ; $623b: $71
	ld   [hl], h                                     ; $623c: $74
	dec  c                                           ; $623d: $0d
	ld   [hl], a                                     ; $623e: $77
	ld   d, h                                        ; $623f: $54
	ld   a, b                                        ; $6240: $78
	and  c                                           ; $6241: $a1
	ld   [hl], l                                     ; $6242: $75
	ld   h, l                                        ; $6243: $65

jr_046_6244:
	sub  l                                           ; $6244: $95
	ld   d, h                                        ; $6245: $54
	ld   e, c                                        ; $6246: $59
	ld   sp, hl                                      ; $6247: $f9
	dec  c                                           ; $6248: $0d
	nop                                              ; $6249: $00
	ld   a, [bc]                                     ; $624a: $0a
	rrca                                             ; $624b: $0f
	add  hl, bc                                      ; $624c: $09
	nop                                              ; $624d: $00
	ld   bc, $8e83                                   ; $624e: $01 $83 $8e
	sbc  [hl]                                        ; $6251: $9e
	ld   l, e                                        ; $6252: $6b
	ld   d, h                                        ; $6253: $54
	ld   l, [hl]                                     ; $6254: $6e
	ld   a, b                                        ; $6255: $78
	rst  $38                                         ; $6256: $ff
	rst  $38                                         ; $6257: $ff
	dec  c                                           ; $6258: $0d
	nop                                              ; $6259: $00
	ld   a, [bc]                                     ; $625a: $0a
	rlca                                             ; $625b: $07
	ld   h, [hl]                                     ; $625c: $66
	ld   [$1503], sp                                 ; $625d: $08 $03 $15
	ld   bc, $2364                                   ; $6260: $01 $64 $23
	nop                                              ; $6263: $00
	rlca                                             ; $6264: $07
	or   h                                           ; $6265: $b4
	ld   [$1503], sp                                 ; $6266: $08 $03 $15
	ld   bc, $257c                                   ; $6269: $01 $7c $25
	nop                                              ; $626c: $00
	ld   bc, $cf02                                   ; $626d: $01 $02 $cf
	dec  b                                           ; $6270: $05
	ld   a, [de]                                     ; $6271: $1a
	ld   a, h                                        ; $6272: $7c
	sbc  [hl]                                        ; $6273: $9e
	ld   [$5d00], sp                                 ; $6274: $08 $00 $5d
	and  c                                           ; $6277: $a1
	dec  c                                           ; $6278: $0d
	add  [hl]                                        ; $6279: $86
	ld   a, h                                        ; $627a: $7c
	inc  b                                           ; $627b: $04
	ld   d, a                                        ; $627c: $57
	inc  b                                           ; $627d: $04
	ld   h, e                                        ; $627e: $63
	ld   a, l                                        ; $627f: $7d
	sbc  [hl]                                        ; $6280: $9e
	adc  h                                           ; $6281: $8c
	ld   d, b                                        ; $6282: $50
	adc  h                                           ; $6283: $8c
	ld   d, b                                        ; $6284: $50
	dec  c                                           ; $6285: $0d
	halt                                             ; $6286: $76
	ld   d, d                                        ; $6287: $52
	ld   [hl], c                                     ; $6288: $71
	ld   l, l                                        ; $6289: $6d
	halt                                             ; $628a: $76
	ld   h, c                                        ; $628b: $61
	sbc  e                                           ; $628c: $9b
	ld   e, c                                        ; $628d: $59
	ld   a, b                                        ; $628e: $78
	sbc  a                                           ; $628f: $9f
	dec  c                                           ; $6290: $0d
	nop                                              ; $6291: $00
	ld   a, [bc]                                     ; $6292: $0a
	ld   bc, $5d76                                   ; $6293: $01 $76 $5d
	ld   a, c                                        ; $6296: $79
	ld   [bc], a                                     ; $6297: $02
	jr   z, jr_046_62ec                              ; $6298: $28 $52

	dec  b                                           ; $629a: $05
	jr   nz, jr_046_622d                             ; $629b: $20 $90

	ld   [bc], a                                     ; $629d: $02
	jp   nz, $7859                                   ; $629e: $c2 $59 $78

	ld   d, d                                        ; $62a1: $52
	ld   h, l                                        ; $62a2: $65
	rst  $38                                         ; $62a3: $ff
	rst  $38                                         ; $62a4: $ff
	dec  c                                           ; $62a5: $0d
	ld   e, c                                        ; $62a6: $59
	halt                                             ; $62a7: $76
	ld   d, d                                        ; $62a8: $52
	ld   [hl], c                                     ; $62a9: $71
	ld   [hl], h                                     ; $62aa: $74
	sbc  [hl]                                        ; $62ab: $9e
	ld   d, d                                        ; $62ac: $52
	ld   d, d                                        ; $62ad: $52
	halt                                             ; $62ae: $76
	ld   d, d                                        ; $62af: $52
	ld   d, h                                        ; $62b0: $54
	dec  b                                           ; $62b1: $05
	jr   nz, jr_046_6244                             ; $62b2: $20 $90

	dec  c                                           ; $62b4: $0d
	ld   [bc], a                                     ; $62b5: $02
	jp   nz, $7859                                   ; $62b6: $c2 $59 $78

	ld   d, d                                        ; $62b9: $52
	ld   a, b                                        ; $62ba: $78
	sbc  a                                           ; $62bb: $9f
	dec  c                                           ; $62bc: $0d
	nop                                              ; $62bd: $00
	ld   a, [bc]                                     ; $62be: $0a
	ld   b, $1c                                      ; $62bf: $06 $1c
	ld   a, [bc]                                     ; $62c1: $0a
	ld   bc, $cf02                                   ; $62c2: $01 $02 $cf
	dec  b                                           ; $62c5: $05
	ld   a, [de]                                     ; $62c6: $1a
	ld   a, h                                        ; $62c7: $7c
	sbc  [hl]                                        ; $62c8: $9e
	ld   [$5d00], sp                                 ; $62c9: $08 $00 $5d
	and  c                                           ; $62cc: $a1
	dec  c                                           ; $62cd: $0d
	add  [hl]                                        ; $62ce: $86
	ld   a, h                                        ; $62cf: $7c
	inc  b                                           ; $62d0: $04
	ld   d, a                                        ; $62d1: $57
	inc  b                                           ; $62d2: $04
	ld   h, e                                        ; $62d3: $63
	ld   a, l                                        ; $62d4: $7d
	rst  $38                                         ; $62d5: $ff
	rst  $38                                         ; $62d6: $ff
	dec  c                                           ; $62d7: $0d
	ld   d, b                                        ; $62d8: $50
	adc  h                                           ; $62d9: $8c
	sbc  b                                           ; $62da: $98
	sub  [hl]                                        ; $62db: $96
	ld   e, l                                        ; $62dc: $5d
	ld   a, b                                        ; $62dd: $78
	ld   d, d                                        ; $62de: $52
	ld   a, b                                        ; $62df: $78
	sbc  a                                           ; $62e0: $9f
	dec  c                                           ; $62e1: $0d
	nop                                              ; $62e2: $00
	ld   a, [bc]                                     ; $62e3: $0a
	ld   bc, $7190                                   ; $62e4: $01 $90 $71
	halt                                             ; $62e7: $76
	ld   [bc], a                                     ; $62e8: $02
	ld   a, [de]                                     ; $62e9: $1a
	inc  bc                                          ; $62ea: $03
	ld   l, e                                        ; $62eb: $6b

jr_046_62ec:
	ld   a, h                                        ; $62ec: $7c
	ld   [bc], a                                     ; $62ed: $02
	and  c                                           ; $62ee: $a1
	inc  bc                                          ; $62ef: $03
	and  b                                           ; $62f0: $a0
	ld   l, a                                        ; $62f1: $6f
	and  b                                           ; $62f2: $a0
	dec  c                                           ; $62f3: $0d
	ld   [bc], a                                     ; $62f4: $02
	ld   h, l                                        ; $62f5: $65
	ld   d, [hl]                                     ; $62f6: $56
	ld   [hl], h                                     ; $62f7: $74
	ld   [bc], a                                     ; $62f8: $02
	ld   a, a                                        ; $62f9: $7f
	inc  b                                           ; $62fa: $04
	dec  de                                          ; $62fb: $1b
	ld   h, l                                        ; $62fc: $65
	ld   l, l                                        ; $62fd: $6d
	adc  c                                           ; $62fe: $89
	ld   d, h                                        ; $62ff: $54
	ld   e, d                                        ; $6300: $5a
	ld   d, d                                        ; $6301: $52
	ld   d, d                                        ; $6302: $52
	halt                                             ; $6303: $76
	dec  c                                           ; $6304: $0d
	dec  b                                           ; $6305: $05
	pop  de                                          ; $6306: $d1
	ld   d, h                                        ; $6307: $54
	ld   l, h                                        ; $6308: $6c
	sbc  a                                           ; $6309: $9f
	dec  c                                           ; $630a: $0d
	nop                                              ; $630b: $00
	ld   a, [bc]                                     ; $630c: $0a
	ld   b, $1c                                      ; $630d: $06 $1c
	ld   a, [bc]                                     ; $630f: $0a
	ld   bc, $cf02                                   ; $6310: $01 $02 $cf
	dec  b                                           ; $6313: $05
	ld   a, [de]                                     ; $6314: $1a
	ld   a, h                                        ; $6315: $7c
	sbc  [hl]                                        ; $6316: $9e
	ld   [$5d00], sp                                 ; $6317: $08 $00 $5d
	and  c                                           ; $631a: $a1
	dec  c                                           ; $631b: $0d
	add  [hl]                                        ; $631c: $86
	ld   a, h                                        ; $631d: $7c
	inc  b                                           ; $631e: $04
	ld   d, a                                        ; $631f: $57
	inc  b                                           ; $6320: $04
	ld   h, e                                        ; $6321: $63
	ld   a, l                                        ; $6322: $7d
	sbc  [hl]                                        ; $6323: $9e
	ld   e, c                                        ; $6324: $59
	ld   a, b                                        ; $6325: $78
	sbc  b                                           ; $6326: $98
	ld   d, d                                        ; $6327: $52
	ld   d, d                                        ; $6328: $52
	dec  c                                           ; $6329: $0d
	halt                                             ; $632a: $76
	dec  b                                           ; $632b: $05
	pop  de                                          ; $632c: $d1
	ld   d, h                                        ; $632d: $54
	ld   l, h                                        ; $632e: $6c
	sbc  a                                           ; $632f: $9f
	dec  c                                           ; $6330: $0d
	nop                                              ; $6331: $00
	ld   a, [bc]                                     ; $6332: $0a
	ld   bc, $ca02                                   ; $6333: $01 $02 $ca
	sub  b                                           ; $6336: $90
	ld   l, e                                        ; $6337: $6b
	sbc  d                                           ; $6338: $9a
	ld   a, c                                        ; $6339: $79
	ld   [bc], a                                     ; $633a: $02
	add  hl, bc                                      ; $633b: $09
	ld   d, [hl]                                     ; $633c: $56
	sub  a                                           ; $633d: $97
	sbc  d                                           ; $633e: $9a
	sbc  c                                           ; $633f: $99
	sub  [hl]                                        ; $6340: $96
	ld   d, h                                        ; $6341: $54
	ld   a, c                                        ; $6342: $79
	dec  c                                           ; $6343: $0d
	ld   e, d                                        ; $6344: $5a
	and  c                                           ; $6345: $a1
	ld   a, [hl]                                     ; $6346: $7e
	sbc  c                                           ; $6347: $99
	and  c                                           ; $6348: $a1
	ld   l, [hl]                                     ; $6349: $6e
	ld   l, h                                        ; $634a: $6c
	sbc  a                                           ; $634b: $9f
	dec  c                                           ; $634c: $0d
	nop                                              ; $634d: $00
	ld   a, [bc]                                     ; $634e: $0a
	ld   b, $1c                                      ; $634f: $06 $1c
	ld   a, [bc]                                     ; $6351: $0a
	rrca                                             ; $6352: $0f
	nop                                              ; $6353: $00
	ld   bc, $ac01                                   ; $6354: $01 $01 $ac
	push af                                          ; $6357: $f5
	bit  4, e                                        ; $6358: $cb $63
	and  c                                           ; $635a: $a1
	ld   a, h                                        ; $635b: $7c
	inc  b                                           ; $635c: $04
	ld   l, l                                        ; $635d: $6d
	add  [hl]                                        ; $635e: $86
	ld   a, h                                        ; $635f: $7c
	inc  b                                           ; $6360: $04
	ld   d, a                                        ; $6361: $57
	inc  b                                           ; $6362: $04
	ld   h, e                                        ; $6363: $63
	ld   [hl], c                                     ; $6364: $71
	ld   [hl], h                                     ; $6365: $74
	dec  c                                           ; $6366: $0d
	ld   [hl], a                                     ; $6367: $77
	ld   d, h                                        ; $6368: $54
	ld   a, b                                        ; $6369: $78
	and  c                                           ; $636a: $a1
	ld   [hl], l                                     ; $636b: $75

jr_046_636c:
	ld   h, l                                        ; $636c: $65
	sub  l                                           ; $636d: $95
	ld   d, h                                        ; $636e: $54
	ld   e, c                                        ; $636f: $59
	ld   sp, hl                                      ; $6370: $f9
	dec  c                                           ; $6371: $0d
	nop                                              ; $6372: $00
	ld   a, [bc]                                     ; $6373: $0a
	rrca                                             ; $6374: $0f
	add  hl, bc                                      ; $6375: $09
	nop                                              ; $6376: $00
	ld   bc, $8e83                                   ; $6377: $01 $83 $8e
	sbc  [hl]                                        ; $637a: $9e
	ld   l, e                                        ; $637b: $6b
	ld   d, h                                        ; $637c: $54
	ld   l, [hl]                                     ; $637d: $6e
	ld   a, b                                        ; $637e: $78
	rst  $38                                         ; $637f: $ff
	rst  $38                                         ; $6380: $ff
	dec  c                                           ; $6381: $0d
	nop                                              ; $6382: $00
	ld   a, [bc]                                     ; $6383: $0a
	rlca                                             ; $6384: $07
	adc  [hl]                                        ; $6385: $8e
	add  hl, bc                                      ; $6386: $09
	inc  bc                                          ; $6387: $03
	ld   d, $01                                      ; $6388: $16 $01
	ld   h, h                                        ; $638a: $64
	inc  hl                                          ; $638b: $23
	nop                                              ; $638c: $00
	rlca                                             ; $638d: $07
	db   $db                                         ; $638e: $db
	add  hl, bc                                      ; $638f: $09
	inc  bc                                          ; $6390: $03
	ld   d, $01                                      ; $6391: $16 $01
	ld   a, h                                        ; $6393: $7c
	dec  h                                           ; $6394: $25
	nop                                              ; $6395: $00
	ld   bc, $f5ac                                   ; $6396: $01 $ac $f5
	bit  7, h                                        ; $6399: $cb $7c
	sbc  [hl]                                        ; $639b: $9e
	ld   [$5d00], sp                                 ; $639c: $08 $00 $5d
	and  c                                           ; $639f: $a1
	dec  c                                           ; $63a0: $0d
	add  [hl]                                        ; $63a1: $86
	ld   a, h                                        ; $63a2: $7c
	inc  b                                           ; $63a3: $04
	ld   d, a                                        ; $63a4: $57
	inc  b                                           ; $63a5: $04
	ld   h, e                                        ; $63a6: $63
	ld   a, l                                        ; $63a7: $7d
	sbc  [hl]                                        ; $63a8: $9e
	adc  h                                           ; $63a9: $8c
	ld   d, b                                        ; $63aa: $50
	adc  h                                           ; $63ab: $8c
	ld   d, b                                        ; $63ac: $50
	dec  c                                           ; $63ad: $0d
	halt                                             ; $63ae: $76
	ld   d, d                                        ; $63af: $52
	ld   [hl], c                                     ; $63b0: $71
	ld   l, l                                        ; $63b1: $6d
	halt                                             ; $63b2: $76
	ld   h, c                                        ; $63b3: $61
	sbc  e                                           ; $63b4: $9b
	ld   e, c                                        ; $63b5: $59
	ld   a, b                                        ; $63b6: $78
	sbc  a                                           ; $63b7: $9f
	dec  c                                           ; $63b8: $0d
	nop                                              ; $63b9: $00
	ld   a, [bc]                                     ; $63ba: $0a
	ld   bc, $5d76                                   ; $63bb: $01 $76 $5d
	ld   a, c                                        ; $63be: $79
	ld   [bc], a                                     ; $63bf: $02
	jr   z, jr_046_6414                              ; $63c0: $28 $52

	dec  b                                           ; $63c2: $05
	jr   nz, @-$6e                                   ; $63c3: $20 $90

	ld   [bc], a                                     ; $63c5: $02
	jp   nz, $7859                                   ; $63c6: $c2 $59 $78

	ld   d, d                                        ; $63c9: $52
	ld   h, l                                        ; $63ca: $65
	rst  $38                                         ; $63cb: $ff
	rst  $38                                         ; $63cc: $ff
	dec  c                                           ; $63cd: $0d
	ld   e, c                                        ; $63ce: $59
	halt                                             ; $63cf: $76
	ld   d, d                                        ; $63d0: $52
	ld   [hl], c                                     ; $63d1: $71
	ld   [hl], h                                     ; $63d2: $74
	sbc  [hl]                                        ; $63d3: $9e
	ld   d, d                                        ; $63d4: $52
	ld   d, d                                        ; $63d5: $52
	halt                                             ; $63d6: $76
	ld   d, d                                        ; $63d7: $52
	ld   d, h                                        ; $63d8: $54
	dec  b                                           ; $63d9: $05
	jr   nz, jr_046_636c                             ; $63da: $20 $90

	dec  c                                           ; $63dc: $0d
	ld   [bc], a                                     ; $63dd: $02
	jp   nz, $7859                                   ; $63de: $c2 $59 $78

	ld   d, d                                        ; $63e1: $52
	ld   a, b                                        ; $63e2: $78
	sbc  a                                           ; $63e3: $9f
	dec  c                                           ; $63e4: $0d
	nop                                              ; $63e5: $00
	ld   a, [bc]                                     ; $63e6: $0a
	ld   b, $1c                                      ; $63e7: $06 $1c
	ld   a, [bc]                                     ; $63e9: $0a
	ld   bc, $f5ac                                   ; $63ea: $01 $ac $f5
	bit  7, h                                        ; $63ed: $cb $7c
	sbc  [hl]                                        ; $63ef: $9e
	ld   [$5d00], sp                                 ; $63f0: $08 $00 $5d
	and  c                                           ; $63f3: $a1
	dec  c                                           ; $63f4: $0d
	add  [hl]                                        ; $63f5: $86
	ld   a, h                                        ; $63f6: $7c
	inc  b                                           ; $63f7: $04
	ld   d, a                                        ; $63f8: $57
	inc  b                                           ; $63f9: $04
	ld   h, e                                        ; $63fa: $63
	ld   a, l                                        ; $63fb: $7d
	rst  $38                                         ; $63fc: $ff
	rst  $38                                         ; $63fd: $ff
	dec  c                                           ; $63fe: $0d
	ld   d, b                                        ; $63ff: $50
	adc  h                                           ; $6400: $8c
	sbc  b                                           ; $6401: $98
	sub  [hl]                                        ; $6402: $96
	ld   e, l                                        ; $6403: $5d
	ld   a, b                                        ; $6404: $78
	ld   d, d                                        ; $6405: $52
	ld   a, b                                        ; $6406: $78
	sbc  a                                           ; $6407: $9f
	dec  c                                           ; $6408: $0d
	nop                                              ; $6409: $00
	ld   a, [bc]                                     ; $640a: $0a
	ld   bc, $7190                                   ; $640b: $01 $90 $71
	halt                                             ; $640e: $76
	ld   [bc], a                                     ; $640f: $02
	ld   a, [de]                                     ; $6410: $1a
	inc  bc                                          ; $6411: $03
	ld   l, e                                        ; $6412: $6b
	ld   a, h                                        ; $6413: $7c

jr_046_6414:
	ld   [bc], a                                     ; $6414: $02
	and  c                                           ; $6415: $a1
	inc  bc                                          ; $6416: $03
	and  b                                           ; $6417: $a0
	ld   l, a                                        ; $6418: $6f
	and  b                                           ; $6419: $a0
	dec  c                                           ; $641a: $0d
	ld   [bc], a                                     ; $641b: $02
	ld   h, l                                        ; $641c: $65
	ld   d, [hl]                                     ; $641d: $56
	ld   [hl], h                                     ; $641e: $74
	ld   [bc], a                                     ; $641f: $02
	ld   a, a                                        ; $6420: $7f
	inc  b                                           ; $6421: $04
	dec  de                                          ; $6422: $1b
	ld   h, l                                        ; $6423: $65
	ld   l, l                                        ; $6424: $6d
	adc  c                                           ; $6425: $89
	ld   d, h                                        ; $6426: $54
	ld   e, d                                        ; $6427: $5a
	ld   d, d                                        ; $6428: $52
	ld   d, d                                        ; $6429: $52
	halt                                             ; $642a: $76
	dec  c                                           ; $642b: $0d
	dec  b                                           ; $642c: $05
	pop  de                                          ; $642d: $d1
	ld   d, h                                        ; $642e: $54
	ld   l, h                                        ; $642f: $6c
	sbc  a                                           ; $6430: $9f
	dec  c                                           ; $6431: $0d
	nop                                              ; $6432: $00
	ld   a, [bc]                                     ; $6433: $0a
	ld   b, $1c                                      ; $6434: $06 $1c
	ld   a, [bc]                                     ; $6436: $0a
	ld   bc, $f5ac                                   ; $6437: $01 $ac $f5
	bit  7, h                                        ; $643a: $cb $7c
	sbc  [hl]                                        ; $643c: $9e
	ld   [$5d00], sp                                 ; $643d: $08 $00 $5d
	and  c                                           ; $6440: $a1
	dec  c                                           ; $6441: $0d
	add  [hl]                                        ; $6442: $86
	ld   a, h                                        ; $6443: $7c
	inc  b                                           ; $6444: $04
	ld   d, a                                        ; $6445: $57
	inc  b                                           ; $6446: $04
	ld   h, e                                        ; $6447: $63
	ld   a, l                                        ; $6448: $7d
	sbc  [hl]                                        ; $6449: $9e
	ld   e, c                                        ; $644a: $59
	ld   a, b                                        ; $644b: $78
	sbc  b                                           ; $644c: $98
	ld   d, d                                        ; $644d: $52
	ld   d, d                                        ; $644e: $52
	dec  c                                           ; $644f: $0d
	halt                                             ; $6450: $76
	dec  b                                           ; $6451: $05
	pop  de                                          ; $6452: $d1
	ld   d, h                                        ; $6453: $54
	ld   l, h                                        ; $6454: $6c
	sbc  a                                           ; $6455: $9f
	dec  c                                           ; $6456: $0d
	nop                                              ; $6457: $00
	ld   a, [bc]                                     ; $6458: $0a
	ld   bc, $ca02                                   ; $6459: $01 $02 $ca
	sub  b                                           ; $645c: $90
	ld   l, e                                        ; $645d: $6b
	sbc  d                                           ; $645e: $9a
	ld   a, c                                        ; $645f: $79
	ld   [bc], a                                     ; $6460: $02
	add  hl, bc                                      ; $6461: $09
	ld   d, [hl]                                     ; $6462: $56
	sub  a                                           ; $6463: $97
	sbc  d                                           ; $6464: $9a
	sbc  c                                           ; $6465: $99
	sub  [hl]                                        ; $6466: $96
	ld   d, h                                        ; $6467: $54
	ld   a, c                                        ; $6468: $79
	dec  c                                           ; $6469: $0d
	ld   e, d                                        ; $646a: $5a
	and  c                                           ; $646b: $a1
	ld   a, [hl]                                     ; $646c: $7e
	sbc  c                                           ; $646d: $99
	and  c                                           ; $646e: $a1
	ld   l, [hl]                                     ; $646f: $6e
	ld   l, h                                        ; $6470: $6c
	sbc  a                                           ; $6471: $9f
	dec  c                                           ; $6472: $0d
	nop                                              ; $6473: $00
	ld   a, [bc]                                     ; $6474: $0a
	ld   b, $1c                                      ; $6475: $06 $1c
	ld   a, [bc]                                     ; $6477: $0a
	rrca                                             ; $6478: $0f
	nop                                              ; $6479: $00
	ld   bc, $6b01                                   ; $647a: $01 $01 $6b
	ld   d, h                                        ; $647d: $54
	ld   [hl], l                                     ; $647e: $75
	ld   h, a                                        ; $647f: $67
	ld   e, c                                        ; $6480: $59
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	dec  c                                           ; $6483: $0d
	ld   d, b                                        ; $6484: $50
	sbc  b                                           ; $6485: $98
	ld   e, d                                        ; $6486: $5a
	halt                                             ; $6487: $76
	ld   d, h                                        ; $6488: $54
	ld   h, d                                        ; $6489: $62
	ld   h, h                                        ; $648a: $64
	ld   d, d                                        ; $648b: $52
	adc  h                                           ; $648c: $8c
	ld   h, l                                        ; $648d: $65
	ld   l, l                                        ; $648e: $6d
	sbc  a                                           ; $648f: $9f
	dec  c                                           ; $6490: $0d
	nop                                              ; $6491: $00
	ld   a, [bc]                                     ; $6492: $0a
	rrca                                             ; $6493: $0f
	add  hl, bc                                      ; $6494: $09
	nop                                              ; $6495: $00
	ld   bc, $a154                                   ; $6496: $01 $54 $a1
	sbc  a                                           ; $6499: $9f
	dec  c                                           ; $649a: $0d
	ld   e, d                                        ; $649b: $5a
	and  c                                           ; $649c: $a1
	ld   a, [hl]                                     ; $649d: $7e
	sbc  d                                           ; $649e: $9a
	sub  [hl]                                        ; $649f: $96
	sbc  a                                           ; $64a0: $9f
	dec  c                                           ; $64a1: $0d
	nop                                              ; $64a2: $00
	ld   a, [bc]                                     ; $64a3: $0a
	nop                                              ; $64a4: $00
	rrca                                             ; $64a5: $0f
	nop                                              ; $64a6: $00
	ld   bc, $5001                                   ; $64a7: $01 $01 $50
	ld   a, h                                        ; $64aa: $7c
	sbc  [hl]                                        ; $64ab: $9e
	inc  bc                                          ; $64ac: $03
	ld   l, l                                        ; $64ad: $6d
	dec  b                                           ; $64ae: $05
	add  hl, de                                      ; $64af: $19
	ld   a, h                                        ; $64b0: $7c
	and  e                                           ; $64b1: $a3
	jp   z, $a5d1                                    ; $64b2: $ca $d1 $a5

	cp   d                                           ; $64b5: $ba
	and  b                                           ; $64b6: $a0
	dec  c                                           ; $64b7: $0d
	ld   e, b                                        ; $64b8: $58
	ld   [bc], a                                     ; $64b9: $02
	add  b                                           ; $64ba: $80
	ld   d, d                                        ; $64bb: $52
	ld   h, l                                        ; $64bc: $65
	ld   l, l                                        ; $64bd: $6d
	ld   d, d                                        ; $64be: $52
	and  c                                           ; $64bf: $a1
	ld   [hl], l                                     ; $64c0: $75
	ld   h, a                                        ; $64c1: $67
	ld   e, a                                        ; $64c2: $5f
	ld   [hl], a                                     ; $64c3: $77
	sbc  a                                           ; $64c4: $9f
	dec  c                                           ; $64c5: $0d
	nop                                              ; $64c6: $00
	ld   a, [bc]                                     ; $64c7: $0a
	inc  e                                           ; $64c8: $1c
	add  hl, bc                                      ; $64c9: $09
	dec  b                                           ; $64ca: $05
	ld   a, [bc]                                     ; $64cb: $0a
	ld   bc, $5258                                   ; $64cc: $01 $58 $52
	ld   e, b                                        ; $64cf: $58
	ld   d, d                                        ; $64d0: $52
	sbc  [hl]                                        ; $64d1: $9e
	adc  h                                           ; $64d2: $8c
	ld   l, [hl]                                     ; $64d3: $6e
	ld   [bc], a                                     ; $64d4: $02
	jr   nz, jr_046_64da                             ; $64d5: $20 $03

	ld   a, c                                        ; $64d7: $79
	ld   [bc], a                                     ; $64d8: $02
	xor  c                                           ; $64d9: $a9

jr_046_64da:
	inc  b                                           ; $64da: $04
	call nc, Call_046_6c6e                           ; $64db: $d4 $6e $6c
	sbc  [hl]                                        ; $64de: $9e
	dec  c                                           ; $64df: $0d
	dec  b                                           ; $64e0: $05
	ld   [hl], e                                     ; $64e1: $73
	ld   e, d                                        ; $64e2: $5a
	and  e                                           ; $64e3: $a3
	jp   z, $a5d1                                    ; $64e4: $ca $d1 $a5

	cp   d                                           ; $64e7: $ba
	ld   h, a                                        ; $64e8: $67
	sbc  c                                           ; $64e9: $99
	adc  c                                           ; $64ea: $89
	ld   [hl], a                                     ; $64eb: $77
	dec  c                                           ; $64ec: $0d
	inc  bc                                          ; $64ed: $03
	ld   l, l                                        ; $64ee: $6d
	dec  b                                           ; $64ef: $05
	add  hl, de                                      ; $64f0: $19
	ld   h, l                                        ; $64f1: $65
	ld   [hl], h                                     ; $64f2: $74
	ld   a, b                                        ; $64f3: $78
	ld   d, d                                        ; $64f4: $52
	and  c                                           ; $64f5: $a1
	ld   h, [hl]                                     ; $64f6: $66
	sub  c                                           ; $64f7: $91
	ld   a, b                                        ; $64f8: $78
	ld   d, d                                        ; $64f9: $52
	ld   e, c                                        ; $64fa: $59
	ld   sp, hl                                      ; $64fb: $f9
	dec  c                                           ; $64fc: $0d
	nop                                              ; $64fd: $00
	ld   a, [bc]                                     ; $64fe: $0a
	inc  e                                           ; $64ff: $1c
	add  hl, bc                                      ; $6500: $09
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	ld   bc, $a102                                   ; $6503: $01 $02 $a1
	ld   e, d                                        ; $6506: $5a
	ld   a, l                                        ; $6507: $7d
	sub  d                                           ; $6508: $92
	sbc  c                                           ; $6509: $99
	ld   a, h                                        ; $650a: $7c
	sub  b                                           ; $650b: $90
	sbc  l                                           ; $650c: $9d
	ld   e, c                                        ; $650d: $59
	sbc  c                                           ; $650e: $99
	ld   e, d                                        ; $650f: $5a
	sbc  [hl]                                        ; $6510: $9e
	dec  c                                           ; $6511: $0d
	sub  b                                           ; $6512: $90
	ld   d, h                                        ; $6513: $54
	inc  bc                                          ; $6514: $03
	ld   l, h                                        ; $6515: $6c
	ld   h, l                                        ; $6516: $65
	inc  bc                                          ; $6517: $03
	ld   l, l                                        ; $6518: $6d
	dec  b                                           ; $6519: $05
	add  hl, de                                      ; $651a: $19
	ld   h, l                                        ; $651b: $65
	ld   [hl], h                                     ; $651c: $74
	ld   e, c                                        ; $651d: $59
	sub  a                                           ; $651e: $97
	dec  c                                           ; $651f: $0d
	dec  b                                           ; $6520: $05
	db   $10                                         ; $6521: $10
	ld   l, l                                        ; $6522: $6d
	inc  b                                           ; $6523: $04
	ld   a, b                                        ; $6524: $78
	ld   e, d                                        ; $6525: $5a
	ld   d, d                                        ; $6526: $52
	ld   d, d                                        ; $6527: $52
	and  c                                           ; $6528: $a1
	ld   h, [hl]                                     ; $6529: $66
	sub  c                                           ; $652a: $91
	ld   a, b                                        ; $652b: $78
	ld   d, d                                        ; $652c: $52
	ld   e, c                                        ; $652d: $59
	ld   a, b                                        ; $652e: $78
	sbc  a                                           ; $652f: $9f
	dec  c                                           ; $6530: $0d
	nop                                              ; $6531: $00
	ld   a, [bc]                                     ; $6532: $0a
	rrca                                             ; $6533: $0f
	nop                                              ; $6534: $00
	ld   bc, $7d01                                   ; $6535: $01 $01 $7d
	sbc  [hl]                                        ; $6538: $9e
	ld   a, l                                        ; $6539: $7d
	ld   d, d                                        ; $653a: $52
	sbc  a                                           ; $653b: $9f
	dec  c                                           ; $653c: $0d
	ld   l, e                                        ; $653d: $6b
	ld   d, h                                        ; $653e: $54
	ld   [hl], l                                     ; $653f: $75
	ld   h, a                                        ; $6540: $67
	ld   a, e                                        ; $6541: $7b
	rst  $38                                         ; $6542: $ff
	rst  $38                                         ; $6543: $ff
	dec  c                                           ; $6544: $0d
	ld   e, d                                        ; $6545: $5a
	and  c                                           ; $6546: $a1
	ld   a, [hl]                                     ; $6547: $7e
	sbc  b                                           ; $6548: $98
	adc  h                                           ; $6549: $8c
	ld   h, a                                        ; $654a: $67
	sbc  a                                           ; $654b: $9f
	dec  c                                           ; $654c: $0d
	nop                                              ; $654d: $00
	ld   a, [bc]                                     ; $654e: $0a
	ld   b, $f6                                      ; $654f: $06 $f6
	ld   a, [bc]                                     ; $6551: $0a
	inc  e                                           ; $6552: $1c
	add  hl, bc                                      ; $6553: $09
	ld   bc, $0101                                   ; $6554: $01 $01 $01
	ld   d, h                                        ; $6557: $54
	and  c                                           ; $6558: $a1
	sbc  a                                           ; $6559: $9f
	dec  c                                           ; $655a: $0d

Jump_046_655b:
	ld   l, e                                        ; $655b: $6b
	sbc  d                                           ; $655c: $9a
	ld   h, [hl]                                     ; $655d: $66
	sub  c                                           ; $655e: $91
	sbc  [hl]                                        ; $655f: $9e
	ld   e, d                                        ; $6560: $5a
	and  c                                           ; $6561: $a1
	ld   a, [hl]                                     ; $6562: $7e
	sbc  d                                           ; $6563: $9a
	sub  [hl]                                        ; $6564: $96
	sbc  a                                           ; $6565: $9f
	dec  c                                           ; $6566: $0d
	nop                                              ; $6567: $00
	ld   a, [bc]                                     ; $6568: $0a
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	inc  e                                           ; $656b: $1c
	ld   b, $00                                      ; $656c: $06 $00
	nop                                              ; $656e: $00
	ld   [bc], a                                     ; $656f: $02
	ld   bc, $5896                                   ; $6570: $01 $96 $58
	sbc  [hl]                                        ; $6573: $9e
	ld   [$9f00], sp                                 ; $6574: $08 $00 $9f
	dec  c                                           ; $6577: $0d
	nop                                              ; $6578: $00
	ld   a, [bc]                                     ; $6579: $0a
	ld   bc, $dfd3                                   ; $657a: $01 $d3 $df
	ld   l, [hl]                                     ; $657d: $6e
	ld   [hl], c                                     ; $657e: $71
	ld   l, l                                        ; $657f: $6d
	sub  a                                           ; $6580: $97
	sbc  [hl]                                        ; $6581: $9e
	ld   h, c                                        ; $6582: $61
	sbc  d                                           ; $6583: $9a
	ld   e, c                                        ; $6584: $59
	sub  a                                           ; $6585: $97
	dec  c                                           ; $6586: $0d
	ld   d, b                                        ; $6587: $50
	ld   l, l                                        ; $6588: $6d
	ld   d, d                                        ; $6589: $52
	ld   e, d                                        ; $658a: $5a
	inc  b                                           ; $658b: $04
	ld   [$9202], sp                                 ; $658c: $08 $02 $92
	ld   a, h                                        ; $658f: $7c
	inc  b                                           ; $6590: $04
	dec  bc                                          ; $6591: $0b
	and  b                                           ; $6592: $a0
	dec  c                                           ; $6593: $0d
	ld   [bc], a                                     ; $6594: $02
	dec  e                                           ; $6595: $1d
	inc  b                                           ; $6596: $04

Call_046_6597:
	ld   b, a                                        ; $6597: $47
	ld   h, l                                        ; $6598: $65
	ld   [hl], h                                     ; $6599: $74
	sub  d                                           ; $659a: $92
	sbc  c                                           ; $659b: $99
	ld   l, d                                        ; $659c: $6a
	sbc  a                                           ; $659d: $9f
	dec  c                                           ; $659e: $0d
	nop                                              ; $659f: $00
	ld   a, [bc]                                     ; $65a0: $0a
	add  hl, de                                      ; $65a1: $19
	dec  b                                           ; $65a2: $05
	ld   [bc], a                                     ; $65a3: $02
	ld   [bc], a                                     ; $65a4: $02
	dec  e                                           ; $65a5: $1d
	inc  b                                           ; $65a6: $04
	ld   b, a                                        ; $65a7: $47
	ld   h, l                                        ; $65a8: $65
	ld   [hl], h                                     ; $65a9: $74
	sub  b                                           ; $65aa: $90
	sub  a                                           ; $65ab: $97
	ld   d, h                                        ; $65ac: $54
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	ld   d, [hl]                                     ; $65af: $56
	and  c                                           ; $65b0: $a1
	sbc  b                                           ; $65b1: $98
	sub  l                                           ; $65b2: $95
	ld   h, a                                        ; $65b3: $67
	sbc  c                                           ; $65b4: $99
	nop                                              ; $65b5: $00
	ld   bc, $c707                                   ; $65b6: $01 $07 $c7
	nop                                              ; $65b9: $00
	ld   [bc], a                                     ; $65ba: $02
	inc  bc                                          ; $65bb: $03
	ld   bc, $2000                                   ; $65bc: $01 $00 $20
	nop                                              ; $65bf: $00
	rlca                                             ; $65c0: $07
	ld   h, c                                        ; $65c1: $61
	nop                                              ; $65c2: $00
	ld   [bc], a                                     ; $65c3: $02
	inc  bc                                          ; $65c4: $03
	ld   bc, $2001                                   ; $65c5: $01 $01 $20
	nop                                              ; $65c8: $00
	ld   b, $94                                      ; $65c9: $06 $94
	nop                                              ; $65cb: $00
	rrca                                             ; $65cc: $0f
	nop                                              ; $65cd: $00
	ld   bc, $6b01                                   ; $65ce: $01 $01 $6b
	sbc  d                                           ; $65d1: $9a
	ld   a, l                                        ; $65d2: $7d
	sbc  [hl]                                        ; $65d3: $9e
	adc  h                                           ; $65d4: $8c
	ld   l, l                                        ; $65d5: $6d
	ld   a, h                                        ; $65d6: $7c
	ld   [bc], a                                     ; $65d7: $02
	ld   e, b                                        ; $65d8: $58
	ld   [bc], a                                     ; $65d9: $02
	add  [hl]                                        ; $65da: $86
	ld   a, c                                        ; $65db: $79
	rst  $38                                         ; $65dc: $ff
	rst  $38                                         ; $65dd: $ff
	dec  c                                           ; $65de: $0d
	nop                                              ; $65df: $00
	ld   a, [bc]                                     ; $65e0: $0a
	inc  e                                           ; $65e1: $1c
	ld   b, $00                                      ; $65e2: $06 $00
	nop                                              ; $65e4: $00
	ld   bc, $546b                                   ; $65e5: $01 $6b $54
	ld   e, c                                        ; $65e8: $59
	sbc  a                                           ; $65e9: $9f
	dec  c                                           ; $65ea: $0d
	ld   h, [hl]                                     ; $65eb: $66
	sub  c                                           ; $65ec: $91
	ld   d, b                                        ; $65ed: $50
	sbc  [hl]                                        ; $65ee: $9e
	adc  h                                           ; $65ef: $8c
	ld   l, l                                        ; $65f0: $6d
	ld   a, b                                        ; $65f1: $78
	sbc  a                                           ; $65f2: $9f
	dec  c                                           ; $65f3: $0d
	nop                                              ; $65f4: $00
	ld   a, [bc]                                     ; $65f5: $0a
	dec  c                                           ; $65f6: $0d
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	rrca                                             ; $65f9: $0f
	nop                                              ; $65fa: $00
	ld   bc, $1e09                                   ; $65fb: $01 $09 $1e
	nop                                              ; $65fe: $00
	inc  e                                           ; $65ff: $1c
	ld   b, $02                                      ; $6600: $06 $02
	ld   [bc], a                                     ; $6602: $02
	dec  e                                           ; $6603: $1d
	ld   b, b                                        ; $6604: $40
	ld   d, $03                                      ; $6605: $16 $03
	ld   d, $01                                      ; $6607: $16 $01
	ld   [bc], a                                     ; $6609: $02
	add  hl, hl                                      ; $660a: $29
	nop                                              ; $660b: $00
	ld   bc, $ffff                                   ; $660c: $01 $ff $ff
	and  l                                           ; $660f: $a5
	and  $6e                                         ; $6610: $e6 $6e
	ld   [hl], c                                     ; $6612: $71
	ld   l, l                                        ; $6613: $6d
	sub  a                                           ; $6614: $97
	add  a                                           ; $6615: $87
	ld   [hl], d                                     ; $6616: $72
	ld   a, c                                        ; $6617: $79
	dec  c                                           ; $6618: $0d
	ld   d, d                                        ; $6619: $52
	ld   d, d                                        ; $661a: $52
	ld   e, a                                        ; $661b: $5f
	ld   [hl], a                                     ; $661c: $77
	sub  [hl]                                        ; $661d: $96
	rst  $38                                         ; $661e: $ff
	rst  $38                                         ; $661f: $ff
	dec  c                                           ; $6620: $0d
	ld   h, [hl]                                     ; $6621: $66
	sub  c                                           ; $6622: $91
	ld   d, b                                        ; $6623: $50
	ld   a, b                                        ; $6624: $78
	sbc  a                                           ; $6625: $9f
	dec  c                                           ; $6626: $0d
	nop                                              ; $6627: $00
	ld   a, [bc]                                     ; $6628: $0a
	dec  c                                           ; $6629: $0d
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	rrca                                             ; $662c: $0f
	nop                                              ; $662d: $00
	ld   bc, $1e09                                   ; $662e: $01 $09 $1e
	nop                                              ; $6631: $00
	rrca                                             ; $6632: $0f
	nop                                              ; $6633: $00
	ld   bc, $6a01                                   ; $6634: $01 $01 $6a
	add  b                                           ; $6637: $80
	sbc  [hl]                                        ; $6638: $9e
	ld   e, b                                        ; $6639: $58
	ld   [bc], a                                     ; $663a: $02
	add  b                                           ; $663b: $80
	ld   d, d                                        ; $663c: $52
	ld   h, l                                        ; $663d: $65
	adc  h                                           ; $663e: $8c
	ld   h, a                                        ; $663f: $67
	sbc  a                                           ; $6640: $9f
	dec  c                                           ; $6641: $0d
	nop                                              ; $6642: $00
	ld   a, [bc]                                     ; $6643: $0a
	inc  e                                           ; $6644: $1c
	ld   b, $01                                      ; $6645: $06 $01
	ld   bc, $9601                                   ; $6647: $01 $01 $96
	ld   h, l                                        ; $664a: $65
	sbc  a                                           ; $664b: $9f
	dec  c                                           ; $664c: $0d
	ld   h, [hl]                                     ; $664d: $66
	sub  c                                           ; $664e: $91
	sbc  [hl]                                        ; $664f: $9e
	ld   [hl], d                                     ; $6650: $72
	ld   d, d                                        ; $6651: $52
	ld   [hl], h                                     ; $6652: $74
	ld   e, e                                        ; $6653: $5b
	ld   a, b                                        ; $6654: $78
	sbc  a                                           ; $6655: $9f
	dec  c                                           ; $6656: $0d
	nop                                              ; $6657: $00
	ld   a, [bc]                                     ; $6658: $0a
	dec  c                                           ; $6659: $0d
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	rrca                                             ; $665c: $0f
	nop                                              ; $665d: $00
	ld   bc, $2623                                   ; $665e: $01 $23 $26
	rrca                                             ; $6661: $0f
	ld   b, $00                                      ; $6662: $06 $00
	ld   bc, $6161                                   ; $6664: $01 $61 $61
	ld   e, d                                        ; $6667: $5a
	inc  bc                                          ; $6668: $03
	ld   l, d                                        ; $6669: $6a
	inc  bc                                          ; $666a: $03
	db   $db                                         ; $666b: $db
	ld   l, [hl]                                     ; $666c: $6e
	sbc  a                                           ; $666d: $9f
	dec  c                                           ; $666e: $0d
	adc  h                                           ; $666f: $8c
	sbc  [hl]                                        ; $6670: $9e
	ld   l, a                                        ; $6671: $6f
	sub  c                                           ; $6672: $91
	and  c                                           ; $6673: $a1
	halt                                             ; $6674: $76
	db   $e3                                         ; $6675: $e3
	cp   b                                           ; $6676: $b8
	and  b                                           ; $6677: $a0
	inc  bc                                          ; $6678: $03
	ld   l, d                                        ; $6679: $6a
	ld   d, h                                        ; $667a: $54
	ld   a, h                                        ; $667b: $7c
	ld   a, l                                        ; $667c: $7d
	dec  c                                           ; $667d: $0d
	inc  bc                                          ; $667e: $03
	ld   d, d                                        ; $667f: $52
	ld   [bc], a                                     ; $6680: $02
	or   a                                           ; $6681: $b7
	ld   a, h                                        ; $6682: $7c
	dec  b                                           ; $6683: $05
	xor  c                                           ; $6684: $a9
	inc  b                                           ; $6685: $04
	adc  a                                           ; $6686: $8f
	ld   l, [hl]                                     ; $6687: $6e
	ld   e, c                                        ; $6688: $59
	sub  a                                           ; $6689: $97
	ld   a, b                                        ; $668a: $78
	sbc  a                                           ; $668b: $9f
	dec  c                                           ; $668c: $0d
	nop                                              ; $668d: $00
	ld   a, [bc]                                     ; $668e: $0a
	dec  c                                           ; $668f: $0d
	ld   b, $00                                      ; $6690: $06 $00
	ld   bc, $546b                                   ; $6692: $01 $6b $54
	ld   d, d                                        ; $6695: $52
	ld   d, [hl]                                     ; $6696: $56
	ld   a, [hl]                                     ; $6697: $7e
	sbc  [hl]                                        ; $6698: $9e
	ld   e, b                                        ; $6699: $58
	inc  bc                                          ; $669a: $03
	ld   c, a                                        ; $669b: $4f
	dec  c                                           ; $669c: $0d
	inc  bc                                          ; $669d: $03
	ld   l, d                                        ; $669e: $6a
	add  a                                           ; $669f: $87
	inc  b                                           ; $66a0: $04
	sub  d                                           ; $66a1: $92
	ld   a, h                                        ; $66a2: $7c
	ld   [bc], a                                     ; $66a3: $02
	sbc  d                                           ; $66a4: $9a
	ld   e, e                                        ; $66a5: $5b
	ld   e, e                                        ; $66a6: $5b
	sub  a                                           ; $66a7: $97
	ld   d, d                                        ; $66a8: $52
	ld   a, l                                        ; $66a9: $7d
	dec  c                                           ; $66aa: $0d
	ld   d, b                                        ; $66ab: $50
	sbc  c                                           ; $66ac: $99
	ld   a, h                                        ; $66ad: $7c
	ld   e, c                                        ; $66ae: $59
	ld   sp, hl                                      ; $66af: $f9
	dec  c                                           ; $66b0: $0d
	nop                                              ; $66b1: $00
	ld   a, [bc]                                     ; $66b2: $0a
	add  hl, de                                      ; $66b3: $19
	dec  b                                           ; $66b4: $05
	ld   [bc], a                                     ; $66b5: $02
	ld   d, b                                        ; $66b6: $50
	sbc  c                                           ; $66b7: $99
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	ld   a, b                                        ; $66ba: $78
	ld   d, d                                        ; $66bb: $52
	nop                                              ; $66bc: $00
	ld   bc, $6807                                   ; $66bd: $01 $07 $68
	ld   bc, $0302                                   ; $66c0: $01 $02 $03
	ld   bc, $2000                                   ; $66c3: $01 $00 $20
	nop                                              ; $66c6: $00
	rlca                                             ; $66c7: $07
	or   e                                           ; $66c8: $b3
	ld   bc, $0302                                   ; $66c9: $01 $02 $03
	ld   bc, $2001                                   ; $66cc: $01 $01 $20
	nop                                              ; $66cf: $00
	ld   b, $f0                                      ; $66d0: $06 $f0
	ld   bc, $000f                                   ; $66d2: $01 $0f $00
	ld   bc, $5001                                   ; $66d5: $01 $01 $50
	sbc  b                                           ; $66d8: $98
	adc  h                                           ; $66d9: $8c
	ld   h, a                                        ; $66da: $67
	sbc  a                                           ; $66db: $9f
	dec  c                                           ; $66dc: $0d
	nop                                              ; $66dd: $00
	ld   a, [bc]                                     ; $66de: $0a
	inc  e                                           ; $66df: $1c
	ld   b, $02                                      ; $66e0: $06 $02
	ld   [bc], a                                     ; $66e2: $02
	dec  e                                           ; $66e3: $1d
	ld   b, b                                        ; $66e4: $40
	ld   d, $03                                      ; $66e5: $16 $03
	ld   d, $01                                      ; $66e7: $16 $01
	ld   bc, $0029                                   ; $66e9: $01 $29 $00
	ld   bc, $9a02                                   ; $66ec: $01 $02 $9a
	ld   e, e                                        ; $66ef: $5b
	ld   e, e                                        ; $66f0: $5b
	sub  a                                           ; $66f1: $97
	ld   d, d                                        ; $66f2: $52
	ld   a, l                                        ; $66f3: $7d
	sub  [hl]                                        ; $66f4: $96
	ld   e, l                                        ; $66f5: $5d
	ld   a, b                                        ; $66f6: $78
	ld   d, d                                        ; $66f7: $52
	ld   l, d                                        ; $66f8: $6a
	sbc  a                                           ; $66f9: $9f
	dec  c                                           ; $66fa: $0d
	ld   a, b                                        ; $66fb: $78
	and  c                                           ; $66fc: $a1
	ld   [hl], l                                     ; $66fd: $75
	sub  b                                           ; $66fe: $90
	inc  bc                                          ; $66ff: $03
	ld   l, d                                        ; $6700: $6a
	add  a                                           ; $6701: $87
	sbc  d                                           ; $6702: $9a
	sbc  c                                           ; $6703: $99
	sub  [hl]                                        ; $6704: $96
	ld   d, h                                        ; $6705: $54
	ld   a, c                                        ; $6706: $79
	dec  c                                           ; $6707: $0d
	ld   a, b                                        ; $6708: $78
	sub  a                                           ; $6709: $97
	ld   a, b                                        ; $670a: $78
	ld   d, d                                        ; $670b: $52
	halt                                             ; $670c: $76
	pop  bc                                          ; $670d: $c1
	db   $e3                                         ; $670e: $e3
	ld   l, [hl]                                     ; $670f: $6e
	ld   l, h                                        ; $6710: $6c
	sbc  a                                           ; $6711: $9f
	dec  c                                           ; $6712: $0d
	nop                                              ; $6713: $00
	ld   a, [bc]                                     ; $6714: $0a
	dec  c                                           ; $6715: $0d
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	rrca                                             ; $6718: $0f
	nop                                              ; $6719: $00
	ld   bc, $2b06                                   ; $671a: $01 $06 $2b
	ld   [bc], a                                     ; $671d: $02
	rrca                                             ; $671e: $0f
	nop                                              ; $671f: $00
	ld   bc, $5001                                   ; $6720: $01 $01 $50
	sbc  b                                           ; $6723: $98
	adc  h                                           ; $6724: $8c
	ld   l, c                                        ; $6725: $69
	and  c                                           ; $6726: $a1
	sbc  a                                           ; $6727: $9f
	dec  c                                           ; $6728: $0d
	nop                                              ; $6729: $00
	ld   a, [bc]                                     ; $672a: $0a
	inc  e                                           ; $672b: $1c
	ld   b, $01                                      ; $672c: $06 $01
	ld   bc, $401d                                   ; $672e: $01 $1d $40
	ld   d, $03                                      ; $6731: $16 $03
	ld   d, $01                                      ; $6733: $16 $01
	ld   [bc], a                                     ; $6735: $02
	jr   z, jr_046_6738                              ; $6736: $28 $00

jr_046_6738:
	ld   bc, $7158                                   ; $6738: $01 $58 $71
	sbc  [hl]                                        ; $673b: $9e
	ld   d, [hl]                                     ; $673c: $56
	sub  a                                           ; $673d: $97
	ld   d, d                                        ; $673e: $52
	ld   l, h                                        ; $673f: $6c
	sbc  a                                           ; $6740: $9f
	dec  c                                           ; $6741: $0d
	sub  d                                           ; $6742: $92
	ld   [hl], c                                     ; $6743: $71
	ld   a, a                                        ; $6744: $7f
	sbc  [hl]                                        ; $6745: $9e
	ld   l, e                                        ; $6746: $6b
	ld   d, h                                        ; $6747: $54
	ld   [hl], l                                     ; $6748: $75
	ld   a, b                                        ; $6749: $78
	ld   e, l                                        ; $674a: $5d
	ld   l, a                                        ; $674b: $6f
	sub  c                                           ; $674c: $91
	ld   a, b                                        ; $674d: $78
	sbc  a                                           ; $674e: $9f
	dec  c                                           ; $674f: $0d
	nop                                              ; $6750: $00
	ld   a, [bc]                                     ; $6751: $0a
	dec  c                                           ; $6752: $0d
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	rrca                                             ; $6755: $0f
	nop                                              ; $6756: $00
	ld   bc, $2b06                                   ; $6757: $01 $06 $2b
	ld   [bc], a                                     ; $675a: $02
	inc  e                                           ; $675b: $1c
	ld   b, $02                                      ; $675c: $06 $02
	ld   [bc], a                                     ; $675e: $02
	dec  e                                           ; $675f: $1d
	ld   b, b                                        ; $6760: $40
	ld   d, $03                                      ; $6761: $16 $03
	ld   d, $01                                      ; $6763: $16 $01
	ld   [bc], a                                     ; $6765: $02
	add  hl, hl                                      ; $6766: $29
	nop                                              ; $6767: $00
	ld   bc, $5258                                   ; $6768: $01 $58 $52
	rst  $38                                         ; $676b: $ff
	rst  $38                                         ; $676c: $ff
	inc  b                                           ; $676d: $04
	sub  a                                           ; $676e: $97
	ld   [bc], a                                     ; $676f: $02
	jp   $ff7d                                       ; $6770: $c3 $7d $ff


	rst  $38                                         ; $6773: $ff
	dec  c                                           ; $6774: $0d
	rst  $38                                         ; $6775: $ff
	rst  $38                                         ; $6776: $ff
	rst  $38                                         ; $6777: $ff
	rst  $38                                         ; $6778: $ff
	rst  $38                                         ; $6779: $ff
	rst  $38                                         ; $677a: $ff
	dec  c                                           ; $677b: $0d
	adc  h                                           ; $677c: $8c
	ld   d, b                                        ; $677d: $50
	ld   d, d                                        ; $677e: $52
	ld   d, d                                        ; $677f: $52
	sub  d                                           ; $6780: $92
	rst  $38                                         ; $6781: $ff
	rst  $38                                         ; $6782: $ff
	inc  bc                                          ; $6783: $03
	ld   l, b                                        ; $6784: $68
	ld   [bc], a                                     ; $6785: $02
	ld   a, a                                        ; $6786: $7f
	ld   e, l                                        ; $6787: $5d
	ld   l, d                                        ; $6788: $6a
	sbc  a                                           ; $6789: $9f
	dec  c                                           ; $678a: $0d
	nop                                              ; $678b: $00
	ld   a, [bc]                                     ; $678c: $0a
	dec  c                                           ; $678d: $0d
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	rrca                                             ; $6790: $0f
	nop                                              ; $6791: $00
	ld   bc, $2b06                                   ; $6792: $01 $06 $2b
	ld   [bc], a                                     ; $6795: $02
	inc  hl                                          ; $6796: $23
	ld   l, [hl]                                     ; $6797: $6e
	rrca                                             ; $6798: $0f
	ld   b, $00                                      ; $6799: $06 $00
	ld   bc, $6161                                   ; $679b: $01 $61 $61
	ld   e, d                                        ; $679e: $5a
	inc  bc                                          ; $679f: $03
	db   $ec                                         ; $67a0: $ec
	dec  b                                           ; $67a1: $05
	add  hl, de                                      ; $67a2: $19
	inc  bc                                          ; $67a3: $03
	ld   c, l                                        ; $67a4: $4d
	ld   l, [hl]                                     ; $67a5: $6e
	sbc  a                                           ; $67a6: $9f
	dec  c                                           ; $67a7: $0d
	nop                                              ; $67a8: $00
	ld   a, [bc]                                     ; $67a9: $0a
	inc  e                                           ; $67aa: $1c
	ld   b, $00                                      ; $67ab: $06 $00
	nop                                              ; $67ad: $00
	ld   bc, $0358                                   ; $67ae: $01 $58 $03
	ld   c, a                                        ; $67b1: $4f
	sbc  [hl]                                        ; $67b2: $9e
	cp   d                                           ; $67b3: $ba
	xor  h                                           ; $67b4: $ac
	and  a                                           ; $67b5: $a7
	ret                                              ; $67b6: $c9


	ld   h, e                                        ; $67b7: $63
	sbc  d                                           ; $67b8: $9a
	ld   l, l                                        ; $67b9: $6d
	ld   e, [hl]                                     ; $67ba: $5e
	sub  a                                           ; $67bb: $97
	ld   d, d                                        ; $67bc: $52
	dec  c                                           ; $67bd: $0d
	ld   l, [hl]                                     ; $67be: $6e
	ld   e, c                                        ; $67bf: $59
	sub  a                                           ; $67c0: $97
	sbc  [hl]                                        ; $67c1: $9e
	or   d                                           ; $67c2: $b2
	push af                                          ; $67c3: $f5
	xor  h                                           ; $67c4: $ac
	halt                                             ; $67c5: $76
	ld   e, c                                        ; $67c6: $59
	ld   e, a                                        ; $67c7: $5f
	ld   [hl], c                                     ; $67c8: $71
	ld   h, c                                        ; $67c9: $61
	ld   d, h                                        ; $67ca: $54
	dec  c                                           ; $67cb: $0d
	ld   [bc], a                                     ; $67cc: $02
	call nc, $a152                                   ; $67cd: $d4 $52 $a1
	ld   l, [hl]                                     ; $67d0: $6e
	sbc  e                                           ; $67d1: $9b
	ld   sp, hl                                      ; $67d2: $f9
	dec  c                                           ; $67d3: $0d
	nop                                              ; $67d4: $00
	ld   a, [bc]                                     ; $67d5: $0a
	add  hl, de                                      ; $67d6: $19
	dec  b                                           ; $67d7: $05
	ld   [bc], a                                     ; $67d8: $02
	ld   [bc], a                                     ; $67d9: $02
	call nc, Call_046_7552                           ; $67da: $d4 $52 $75
	ld   h, a                                        ; $67dd: $67
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	inc  bc                                          ; $67e0: $03
	inc  a                                           ; $67e1: $3c
	ld   d, d                                        ; $67e2: $52
	ld   [hl], l                                     ; $67e3: $75
	ld   h, a                                        ; $67e4: $67
	nop                                              ; $67e5: $00
	ld   bc, $9107                                   ; $67e6: $01 $07 $91
	ld   [bc], a                                     ; $67e9: $02
	ld   [bc], a                                     ; $67ea: $02
	inc  bc                                          ; $67eb: $03
	ld   bc, $2000                                   ; $67ec: $01 $00 $20
	nop                                              ; $67ef: $00
	rlca                                             ; $67f0: $07
	ldh  [c], a                                      ; $67f1: $e2
	ld   [bc], a                                     ; $67f2: $02
	ld   [bc], a                                     ; $67f3: $02
	inc  bc                                          ; $67f4: $03
	ld   bc, $2001                                   ; $67f5: $01 $01 $20
	nop                                              ; $67f8: $00
	ld   b, $3a                                      ; $67f9: $06 $3a
	inc  bc                                          ; $67fb: $03
	rrca                                             ; $67fc: $0f
	nop                                              ; $67fd: $00
	ld   bc, $0201                                   ; $67fe: $01 $01 $02
	call nc, Call_046_7552                           ; $6801: $d4 $52 $75
	ld   h, a                                        ; $6804: $67
	sbc  a                                           ; $6805: $9f
	dec  c                                           ; $6806: $0d
	xor  h                                           ; $6807: $ac
	push af                                          ; $6808: $f5
	bit  4, e                                        ; $6809: $cb $63
	and  c                                           ; $680b: $a1
	adc  c                                           ; $680c: $89
	ld   [hl], a                                     ; $680d: $77
	ld   [hl], l                                     ; $680e: $75
	ld   a, l                                        ; $680f: $7d
	dec  c                                           ; $6810: $0d
	ld   d, b                                        ; $6811: $50
	sbc  b                                           ; $6812: $98
	adc  h                                           ; $6813: $8c
	ld   l, c                                        ; $6814: $69
	and  c                                           ; $6815: $a1
	ld   e, d                                        ; $6816: $5a
	rst  $38                                         ; $6817: $ff
	rst  $38                                         ; $6818: $ff
	dec  c                                           ; $6819: $0d
	nop                                              ; $681a: $00
	ld   a, [bc]                                     ; $681b: $0a
	inc  e                                           ; $681c: $1c
	ld   b, $01                                      ; $681d: $06 $01
	ld   bc, $401d                                   ; $681f: $01 $1d $40
	ld   d, $03                                      ; $6822: $16 $03
	ld   d, $01                                      ; $6824: $16 $01
	ld   [bc], a                                     ; $6826: $02
	jr   z, jr_046_6829                              ; $6827: $28 $00

jr_046_6829:
	ld   bc, $546b                                   ; $6829: $01 $6b $54
	ld   e, c                                        ; $682c: $59
	sbc  a                                           ; $682d: $9f
	dec  c                                           ; $682e: $0d
	ld   d, d                                        ; $682f: $52
	ld   [hl], d                                     ; $6830: $72
	ld   e, c                                        ; $6831: $59
	sbc  [hl]                                        ; $6832: $9e
	ld   d, b                                        ; $6833: $50
	ld   l, l                                        ; $6834: $6d
	ld   d, d                                        ; $6835: $52
	halt                                             ; $6836: $76
	dec  c                                           ; $6837: $0d
	inc  bc                                          ; $6838: $03
	ld   c, [hl]                                     ; $6839: $4e
	inc  b                                           ; $683a: $04
	ld   a, l                                        ; $683b: $7d
	ld   h, l                                        ; $683c: $65
	sub  [hl]                                        ; $683d: $96
	ld   d, h                                        ; $683e: $54
	ld   a, b                                        ; $683f: $78
	sbc  a                                           ; $6840: $9f
	dec  c                                           ; $6841: $0d
	nop                                              ; $6842: $00
	ld   a, [bc]                                     ; $6843: $0a
	dec  c                                           ; $6844: $0d
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	rrca                                             ; $6847: $0f
	nop                                              ; $6848: $00
	ld   bc, $7106                                   ; $6849: $01 $06 $71
	inc  bc                                          ; $684c: $03
	rrca                                             ; $684d: $0f
	nop                                              ; $684e: $00
	ld   bc, $0301                                   ; $684f: $01 $01 $03
	inc  a                                           ; $6852: $3c
	ld   d, d                                        ; $6853: $52
	ld   [hl], l                                     ; $6854: $75
	ld   h, a                                        ; $6855: $67
	sbc  a                                           ; $6856: $9f
	dec  c                                           ; $6857: $0d
	ld   l, l                                        ; $6858: $6d
	add  h                                           ; $6859: $84
	and  c                                           ; $685a: $a1
	and  e                                           ; $685b: $a3
	and  l                                           ; $685c: $a5
	db   $ec                                         ; $685d: $ec
	cp   d                                           ; $685e: $ba
	sub  [hl]                                        ; $685f: $96
	sbc  b                                           ; $6860: $98
	sub  b                                           ; $6861: $90
	rst  $38                                         ; $6862: $ff
	rst  $38                                         ; $6863: $ff
	dec  c                                           ; $6864: $0d
	nop                                              ; $6865: $00
	ld   a, [bc]                                     ; $6866: $0a
	inc  e                                           ; $6867: $1c
	ld   b, $05                                      ; $6868: $06 $05
	dec  b                                           ; $686a: $05
	dec  e                                           ; $686b: $1d
	ld   b, b                                        ; $686c: $40
	ld   d, $03                                      ; $686d: $16 $03
	ld   d, $01                                      ; $686f: $16 $01
	ld   bc, $0029                                   ; $6871: $01 $29 $00
	ld   bc, $5258                                   ; $6874: $01 $58 $52
	ld   e, b                                        ; $6877: $58
	ld   d, d                                        ; $6878: $52
	rst  $38                                         ; $6879: $ff
	rst  $38                                         ; $687a: $ff
	dec  c                                           ; $687b: $0d
	inc  bc                                          ; $687c: $03
	or   d                                           ; $687d: $b2
	ld   e, a                                        ; $687e: $5f
	ld   a, b                                        ; $687f: $78
	ld   d, d                                        ; $6880: $52
	ld   h, c                                        ; $6881: $61
	halt                                             ; $6882: $76
	ld   [bc], a                                     ; $6883: $02
	sbc  l                                           ; $6884: $9d
	ld   d, h                                        ; $6885: $54
	ld   a, b                                        ; $6886: $78
	sub  [hl]                                        ; $6887: $96
	rst  $38                                         ; $6888: $ff
	rst  $38                                         ; $6889: $ff
	dec  c                                           ; $688a: $0d
	adc  h                                           ; $688b: $8c
	ld   d, b                                        ; $688c: $50
	rst  $38                                         ; $688d: $ff
	rst  $38                                         ; $688e: $ff
	ld   h, [hl]                                     ; $688f: $66
	sub  c                                           ; $6890: $91
	sbc  [hl]                                        ; $6891: $9e
	ld   [hl], d                                     ; $6892: $72
	ld   e, h                                        ; $6893: $5c

jr_046_6894:
	ld   [bc], a                                     ; $6894: $02
	ld   a, a                                        ; $6895: $7f
	ld   e, l                                        ; $6896: $5d
	ld   l, h                                        ; $6897: $6c
	sbc  a                                           ; $6898: $9f
	dec  c                                           ; $6899: $0d
	nop                                              ; $689a: $00
	ld   a, [bc]                                     ; $689b: $0a
	dec  c                                           ; $689c: $0d
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	rrca                                             ; $689f: $0f
	nop                                              ; $68a0: $00
	ld   bc, $7106                                   ; $68a1: $01 $06 $71
	inc  bc                                          ; $68a4: $03
	inc  e                                           ; $68a5: $1c
	ld   b, $05                                      ; $68a6: $06 $05
	dec  b                                           ; $68a8: $05
	dec  e                                           ; $68a9: $1d
	ld   b, b                                        ; $68aa: $40
	ld   d, $03                                      ; $68ab: $16 $03
	ld   d, $01                                      ; $68ad: $16 $01
	ld   [bc], a                                     ; $68af: $02
	add  hl, hl                                      ; $68b0: $29
	nop                                              ; $68b1: $00
	ld   bc, $5258                                   ; $68b2: $01 $58 $52
	rst  $38                                         ; $68b5: $ff
	rst  $38                                         ; $68b6: $ff
	inc  b                                           ; $68b7: $04
	sub  a                                           ; $68b8: $97
	ld   [bc], a                                     ; $68b9: $02
	jp   $ff7d                                       ; $68ba: $c3 $7d $ff


	rst  $38                                         ; $68bd: $ff
	dec  c                                           ; $68be: $0d
	rst  $38                                         ; $68bf: $ff
	rst  $38                                         ; $68c0: $ff
	dec  c                                           ; $68c1: $0d
	adc  h                                           ; $68c2: $8c
	ld   d, b                                        ; $68c3: $50
	ld   d, d                                        ; $68c4: $52
	ld   d, d                                        ; $68c5: $52
	sub  d                                           ; $68c6: $92
	rst  $38                                         ; $68c7: $ff
	rst  $38                                         ; $68c8: $ff
	inc  bc                                          ; $68c9: $03
	ld   l, b                                        ; $68ca: $68
	ld   [bc], a                                     ; $68cb: $02
	ld   a, a                                        ; $68cc: $7f
	ld   e, l                                        ; $68cd: $5d
	ld   l, d                                        ; $68ce: $6a
	sbc  a                                           ; $68cf: $9f
	dec  c                                           ; $68d0: $0d
	nop                                              ; $68d1: $00
	ld   a, [bc]                                     ; $68d2: $0a
	dec  c                                           ; $68d3: $0d
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	rrca                                             ; $68d6: $0f
	nop                                              ; $68d7: $00
	ld   bc, $7106                                   ; $68d8: $01 $06 $71
	inc  bc                                          ; $68db: $03
	inc  hl                                          ; $68dc: $23
	ld   e, $0f                                      ; $68dd: $1e $0f
	ld   b, $00                                      ; $68df: $06 $00
	ld   bc, $6161                                   ; $68e1: $01 $61 $61
	ld   e, d                                        ; $68e4: $5a
	inc  b                                           ; $68e5: $04
	ld   c, $04                                      ; $68e6: $0e $04
	ld   d, $02                                      ; $68e8: $16 $02
	xor  b                                           ; $68ea: $a8
	inc  b                                           ; $68eb: $04
	sub  l                                           ; $68ec: $95
	ld   [bc], a                                     ; $68ed: $02
	ld   hl, $9f6e                                   ; $68ee: $21 $6e $9f
	dec  c                                           ; $68f1: $0d
	nop                                              ; $68f2: $00
	ld   a, [bc]                                     ; $68f3: $0a
	dec  c                                           ; $68f4: $0d
	ld   b, $00                                      ; $68f5: $06 $00
	ld   bc, $0e04                                   ; $68f7: $01 $04 $0e
	inc  b                                           ; $68fa: $04
	ld   d, $02                                      ; $68fb: $16 $02
	xor  b                                           ; $68fd: $a8
	ld   a, l                                        ; $68fe: $7d
	sbc  [hl]                                        ; $68ff: $9e
	ld   e, a                                        ; $6900: $5f
	ld   [hl], c                                     ; $6901: $71
	ld   h, c                                        ; $6902: $61
	ld   d, h                                        ; $6903: $54
	inc  bc                                          ; $6904: $03
	ccf                                              ; $6905: $3f
	ld   d, d                                        ; $6906: $52
	ld   e, c                                        ; $6907: $59
	sub  a                                           ; $6908: $97
	ld   a, b                                        ; $6909: $78
	dec  c                                           ; $690a: $0d
	rst  $38                                         ; $690b: $ff
	rst  $38                                         ; $690c: $ff
	ld   [bc], a                                     ; $690d: $02
	jr   nc, jr_046_6894                             ; $690e: $30 $84

	inc  bc                                          ; $6910: $03
	ld   l, a                                        ; $6911: $6f
	ld   a, l                                        ; $6912: $7d
	sbc  [hl]                                        ; $6913: $9e
	ld   e, b                                        ; $6914: $58
	inc  bc                                          ; $6915: $03
	ld   c, a                                        ; $6916: $4f
	sub  b                                           ; $6917: $90
	dec  c                                           ; $6918: $0d
	inc  bc                                          ; $6919: $03
	ld   l, e                                        ; $691a: $6b
	inc  b                                           ; $691b: $04
	ld   [de], a                                     ; $691c: $12
	ld   d, [hl]                                     ; $691d: $56
	sub  [hl]                                        ; $691e: $96
	ld   a, b                                        ; $691f: $78
	sbc  a                                           ; $6920: $9f
	dec  c                                           ; $6921: $0d
	nop                                              ; $6922: $00
	ld   a, [bc]                                     ; $6923: $0a
	add  hl, de                                      ; $6924: $19
	dec  b                                           ; $6925: $05
	ld   [bc], a                                     ; $6926: $02
	adc  h                                           ; $6927: $8c
	ld   e, c                                        ; $6928: $59
	ld   l, c                                        ; $6929: $69
	ld   [hl], h                                     ; $692a: $74
	ld   [bc], a                                     ; $692b: $02
	inc  [hl]                                        ; $692c: $34
	ld   h, e                                        ; $692d: $63
	ld   d, d                                        ; $692e: $52
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	ld   e, c                                        ; $6931: $59
	and  c                                           ; $6932: $a1
	add  a                                           ; $6933: $87
	and  c                                           ; $6934: $a1
	ld   h, l                                        ; $6935: $65
	ld   [hl], h                                     ; $6936: $74
	ld   [bc], a                                     ; $6937: $02
	inc  [hl]                                        ; $6938: $34
	ld   h, e                                        ; $6939: $63
	ld   d, d                                        ; $693a: $52
	nop                                              ; $693b: $00
	ld   bc, $e707                                   ; $693c: $01 $07 $e7
	inc  bc                                          ; $693f: $03
	ld   [bc], a                                     ; $6940: $02
	inc  bc                                          ; $6941: $03
	ld   bc, $2000                                   ; $6942: $01 $00 $20
	nop                                              ; $6945: $00
	rlca                                             ; $6946: $07
	ld   [hl-], a                                    ; $6947: $32
	inc  b                                           ; $6948: $04
	ld   [bc], a                                     ; $6949: $02
	inc  bc                                          ; $694a: $03
	ld   bc, $2001                                   ; $694b: $01 $01 $20
	nop                                              ; $694e: $00
	ld   b, $9a                                      ; $694f: $06 $9a
	inc  b                                           ; $6951: $04
	rrca                                             ; $6952: $0f
	nop                                              ; $6953: $00
	ld   bc, $8c01                                   ; $6954: $01 $01 $8c
	ld   e, c                                        ; $6957: $59
	ld   l, c                                        ; $6958: $69
	ld   [hl], h                                     ; $6959: $74
	ld   [bc], a                                     ; $695a: $02
	inc  [hl]                                        ; $695b: $34
	ld   h, e                                        ; $695c: $63
	ld   d, d                                        ; $695d: $52
	sbc  a                                           ; $695e: $9f
	dec  c                                           ; $695f: $0d
	inc  b                                           ; $6960: $04
	ld   l, l                                        ; $6961: $6d
	sbc  [hl]                                        ; $6962: $9e
	ld   e, d                                        ; $6963: $5a
	and  c                                           ; $6964: $a1
	ld   a, [hl]                                     ; $6965: $7e
	sbc  b                                           ; $6966: $98
	adc  h                                           ; $6967: $8c
	ld   h, a                                        ; $6968: $67
	sub  [hl]                                        ; $6969: $96
	sbc  a                                           ; $696a: $9f
	dec  c                                           ; $696b: $0d
	nop                                              ; $696c: $00
	ld   a, [bc]                                     ; $696d: $0a
	inc  e                                           ; $696e: $1c
	ld   b, $01                                      ; $696f: $06 $01
	ld   bc, $401d                                   ; $6971: $01 $1d $40
	ld   d, $03                                      ; $6974: $16 $03
	ld   d, $01                                      ; $6976: $16 $01
	ld   [bc], a                                     ; $6978: $02
	jr   z, jr_046_697b                              ; $6979: $28 $00

jr_046_697b:
	ld   bc, $7158                                   ; $697b: $01 $58 $71
	sbc  [hl]                                        ; $697e: $9e
	ld   l, l                                        ; $697f: $6d
	ld   a, h                                        ; $6980: $7c
	sub  b                                           ; $6981: $90
	ld   h, l                                        ; $6982: $65
	ld   d, d                                        ; $6983: $52
	ld   a, b                                        ; $6984: $78
	sbc  a                                           ; $6985: $9f
	dec  c                                           ; $6986: $0d
	ld   h, [hl]                                     ; $6987: $66
	sub  c                                           ; $6988: $91
	ld   d, b                                        ; $6989: $50
	sbc  [hl]                                        ; $698a: $9e
	ld   l, l                                        ; $698b: $6d
	ld   a, h                                        ; $698c: $7c
	and  c                                           ; $698d: $a1
	ld   l, [hl]                                     ; $698e: $6e
	ld   l, d                                        ; $698f: $6a
	sbc  a                                           ; $6990: $9f
	dec  c                                           ; $6991: $0d
	nop                                              ; $6992: $00
	ld   a, [bc]                                     ; $6993: $0a
	dec  c                                           ; $6994: $0d
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	rrca                                             ; $6997: $0f
	nop                                              ; $6998: $00
	ld   bc, $c706                                   ; $6999: $01 $06 $c7
	inc  b                                           ; $699c: $04
	rrca                                             ; $699d: $0f
	nop                                              ; $699e: $00
	ld   bc, $5901                                   ; $699f: $01 $01 $59
	and  c                                           ; $69a2: $a1
	add  a                                           ; $69a3: $87
	and  c                                           ; $69a4: $a1
	ld   h, l                                        ; $69a5: $65
	ld   [hl], h                                     ; $69a6: $74
	ld   [bc], a                                     ; $69a7: $02
	inc  [hl]                                        ; $69a8: $34
	ld   h, e                                        ; $69a9: $63
	ld   d, d                                        ; $69aa: $52
	sub  [hl]                                        ; $69ab: $96
	sbc  a                                           ; $69ac: $9f
	dec  c                                           ; $69ad: $0d
	inc  b                                           ; $69ae: $04
	ld   l, l                                        ; $69af: $6d
	sbc  [hl]                                        ; $69b0: $9e
	ret  nc                                          ; $69b1: $d0

	cp   b                                           ; $69b2: $b8
	sub  [hl]                                        ; $69b3: $96
	sbc  b                                           ; $69b4: $98
	inc  bc                                          ; $69b5: $03
	ccf                                              ; $69b6: $3f
	ld   d, d                                        ; $69b7: $52
	db   $e4                                         ; $69b8: $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69b9: $cf
	dec  c                                           ; $69ba: $0d
	inc  bc                                          ; $69bb: $03
	and  b                                           ; $69bc: $a0
	ld   [hl], c                                     ; $69bd: $71
	ld   l, l                                        ; $69be: $6d
	ld   h, c                                        ; $69bf: $61
	halt                                             ; $69c0: $76
	ld   a, b                                        ; $69c1: $78
	ld   d, d                                        ; $69c2: $52
	and  c                                           ; $69c3: $a1
	ld   [hl], l                                     ; $69c4: $75
	ld   h, a                                        ; $69c5: $67
	ld   e, c                                        ; $69c6: $59
	sub  a                                           ; $69c7: $97
	sbc  a                                           ; $69c8: $9f
	dec  c                                           ; $69c9: $0d
	nop                                              ; $69ca: $00
	ld   a, [bc]                                     ; $69cb: $0a
	inc  e                                           ; $69cc: $1c
	ld   b, $02                                      ; $69cd: $06 $02
	ld   [bc], a                                     ; $69cf: $02
	dec  e                                           ; $69d0: $1d
	ld   b, b                                        ; $69d1: $40
	ld   d, $03                                      ; $69d2: $16 $03
	ld   d, $01                                      ; $69d4: $16 $01
	ld   [bc], a                                     ; $69d6: $02
	add  hl, hl                                      ; $69d7: $29
	nop                                              ; $69d8: $00
	ld   bc, $b203                                   ; $69d9: $01 $03 $b2
	ld   e, a                                        ; $69dc: $5f
	ld   a, b                                        ; $69dd: $78
	ld   d, d                                        ; $69de: $52
	and  $c5                                         ; $69df: $e6 $c5
	ld   l, [hl]                                     ; $69e1: $6e
	ld   a, b                                        ; $69e2: $78
	rst  $38                                         ; $69e3: $ff
	rst  $38                                         ; $69e4: $ff
	dec  c                                           ; $69e5: $0d
	ld   l, e                                        ; $69e6: $6b
	and  c                                           ; $69e7: $a1
	ld   a, b                                        ; $69e8: $78
	and  c                                           ; $69e9: $a1
	ld   h, [hl]                                     ; $69ea: $66
	sub  c                                           ; $69eb: $91
	sbc  [hl]                                        ; $69ec: $9e
	ld   h, c                                        ; $69ed: $61
	ld   h, c                                        ; $69ee: $61
	ld   [hl], l                                     ; $69ef: $75
	dec  c                                           ; $69f0: $0d
	sub  d                                           ; $69f1: $92
	ld   [hl], c                                     ; $69f2: $71
	ld   [hl], h                                     ; $69f3: $74
	ld   e, a                                        ; $69f4: $5f
	ld   a, b                                        ; $69f5: $78
	ld   d, d                                        ; $69f6: $52
	ld   l, h                                        ; $69f7: $6c
	sbc  a                                           ; $69f8: $9f
	dec  c                                           ; $69f9: $0d
	nop                                              ; $69fa: $00
	ld   a, [bc]                                     ; $69fb: $0a
	dec  c                                           ; $69fc: $0d
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	rrca                                             ; $69ff: $0f
	nop                                              ; $6a00: $00
	ld   bc, $c706                                   ; $6a01: $01 $06 $c7
	inc  b                                           ; $6a04: $04
	inc  e                                           ; $6a05: $1c
	ld   b, $02                                      ; $6a06: $06 $02
	ld   [bc], a                                     ; $6a08: $02
	dec  e                                           ; $6a09: $1d
	ld   b, b                                        ; $6a0a: $40
	ld   d, $03                                      ; $6a0b: $16 $03
	ld   d, $01                                      ; $6a0d: $16 $01
	ld   [bc], a                                     ; $6a0f: $02
	add  hl, hl                                      ; $6a10: $29
	nop                                              ; $6a11: $00
	ld   bc, $5258                                   ; $6a12: $01 $58 $52
	rst  $38                                         ; $6a15: $ff
	rst  $38                                         ; $6a16: $ff
	inc  b                                           ; $6a17: $04
	sub  a                                           ; $6a18: $97
	ld   [bc], a                                     ; $6a19: $02
	jp   $ff7d                                       ; $6a1a: $c3 $7d $ff


	rst  $38                                         ; $6a1d: $ff
	dec  c                                           ; $6a1e: $0d
	rst  $38                                         ; $6a1f: $ff
	rst  $38                                         ; $6a20: $ff
	dec  c                                           ; $6a21: $0d
	adc  h                                           ; $6a22: $8c
	ld   d, b                                        ; $6a23: $50
	ld   d, d                                        ; $6a24: $52
	ld   d, d                                        ; $6a25: $52
	sub  d                                           ; $6a26: $92
	rst  $38                                         ; $6a27: $ff
	rst  $38                                         ; $6a28: $ff
	dec  c                                           ; $6a29: $0d
	nop                                              ; $6a2a: $00
	ld   a, [bc]                                     ; $6a2b: $0a
	dec  c                                           ; $6a2c: $0d
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	rrca                                             ; $6a2f: $0f
	nop                                              ; $6a30: $00
	ld   bc, $0423                                   ; $6a31: $01 $23 $04
	inc  e                                           ; $6a34: $1c
	ld   b, $01                                      ; $6a35: $06 $01
	ld   bc, $ff01                                   ; $6a37: $01 $01 $ff
	rst  $38                                         ; $6a3a: $ff
	ld   [bc], a                                     ; $6a3b: $02
	dec  bc                                          ; $6a3c: $0b
	inc  bc                                          ; $6a3d: $03
	ld   h, l                                        ; $6a3e: $65
	ld   [hl], l                                     ; $6a3f: $75
	sbc  [hl]                                        ; $6a40: $9e
	ld   [bc], a                                     ; $6a41: $02
	dec  e                                           ; $6a42: $1d
	inc  b                                           ; $6a43: $04
	ld   b, a                                        ; $6a44: $47
	ld   a, l                                        ; $6a45: $7d
	inc  bc                                          ; $6a46: $03
	ld   a, [hl]                                     ; $6a47: $7e
	sbc  l                                           ; $6a48: $9d
	sbc  b                                           ; $6a49: $98
	ld   l, [hl]                                     ; $6a4a: $6e
	sbc  a                                           ; $6a4b: $9f
	dec  c                                           ; $6a4c: $0d
	ld   h, [hl]                                     ; $6a4d: $66
	sub  c                                           ; $6a4e: $91
	sbc  [hl]                                        ; $6a4f: $9e
	xor  l                                           ; $6a50: $ad
	push af                                          ; $6a51: $f5
	pop  de                                          ; $6a52: $d1
	xor  $96                                         ; $6a53: $ee $96
	ld   a, b                                        ; $6a55: $78
	sbc  a                                           ; $6a56: $9f
	dec  c                                           ; $6a57: $0d
	nop                                              ; $6a58: $00
	ld   a, [bc]                                     ; $6a59: $0a
	dec  c                                           ; $6a5a: $0d
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	rrca                                             ; $6a5d: $0f
	nop                                              ; $6a5e: $00
	ld   bc, $1e09                                   ; $6a5f: $01 $09 $1e
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	inc  e                                           ; $6a64: $1c
	inc  bc                                          ; $6a65: $03
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	ld   [bc], a                                     ; $6a68: $02
	ld   bc, $9750                                   ; $6a69: $01 $50 $97
	sbc  [hl]                                        ; $6a6c: $9e
	ld   [$5d00], sp                                 ; $6a6d: $08 $00 $5d
	and  c                                           ; $6a70: $a1
	sbc  a                                           ; $6a71: $9f
	dec  c                                           ; $6a72: $0d
	ld   l, a                                        ; $6a73: $6f
	sub  l                                           ; $6a74: $95
	ld   d, h                                        ; $6a75: $54
	ld   [hl], a                                     ; $6a76: $77
	dec  b                                           ; $6a77: $05
	dec  d                                           ; $6a78: $15
	ld   e, c                                        ; $6a79: $59
	ld   [hl], c                                     ; $6a7a: $71
	ld   l, l                                        ; $6a7b: $6d
	sbc  l                                           ; $6a7c: $9d
	rst  $38                                         ; $6a7d: $ff
	rst  $38                                         ; $6a7e: $ff
	dec  c                                           ; $6a7f: $0d
	nop                                              ; $6a80: $00
	ld   a, [bc]                                     ; $6a81: $0a
	ld   bc, $6e8c                                   ; $6a82: $01 $8c $6e
	inc  b                                           ; $6a85: $04
	ld   [$9202], sp                                 ; $6a86: $08 $02 $92
	ld   a, h                                        ; $6a89: $7c
	inc  b                                           ; $6a8a: $04
	dec  bc                                          ; $6a8b: $0b
	ld   a, l                                        ; $6a8c: $7d
	dec  c                                           ; $6a8d: $0d
	sub  [hl]                                        ; $6a8e: $96
	ld   e, l                                        ; $6a8f: $5d
	sbc  l                                           ; $6a90: $9d
	ld   e, c                                        ; $6a91: $59
	sub  a                                           ; $6a92: $97
	ld   a, b                                        ; $6a93: $78
	ld   d, d                                        ; $6a94: $52
	ld   [hl], l                                     ; $6a95: $75
	ld   h, l                                        ; $6a96: $65
	sub  l                                           ; $6a97: $95
	ld   d, h                                        ; $6a98: $54
	ld   e, c                                        ; $6a99: $59
	sub  a                                           ; $6a9a: $97
	sbc  [hl]                                        ; $6a9b: $9e
	dec  c                                           ; $6a9c: $0d
	inc  bc                                          ; $6a9d: $03
	ret  z                                           ; $6a9e: $c8

	ld   e, d                                        ; $6a9f: $5a
	ld   [bc], a                                     ; $6aa0: $02
	dec  e                                           ; $6aa1: $1d
	inc  b                                           ; $6aa2: $04
	ld   b, a                                        ; $6aa3: $47
	ld   h, l                                        ; $6aa4: $65
	ld   [hl], h                                     ; $6aa5: $74
	ld   d, b                                        ; $6aa6: $50
	ld   h, b                                        ; $6aa7: $60
	sbc  c                                           ; $6aa8: $99
	sbc  l                                           ; $6aa9: $9d
	sbc  a                                           ; $6aaa: $9f
	dec  c                                           ; $6aab: $0d
	nop                                              ; $6aac: $00
	ld   a, [bc]                                     ; $6aad: $0a
	add  hl, de                                      ; $6aae: $19
	dec  b                                           ; $6aaf: $05
	ld   [bc], a                                     ; $6ab0: $02
	ld   [bc], a                                     ; $6ab1: $02
	dec  e                                           ; $6ab2: $1d
	inc  b                                           ; $6ab3: $04
	ld   b, a                                        ; $6ab4: $47
	ld   h, l                                        ; $6ab5: $65
	ld   [hl], h                                     ; $6ab6: $74
	sub  b                                           ; $6ab7: $90
	sub  a                                           ; $6ab8: $97
	ld   d, h                                        ; $6ab9: $54
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	ld   d, [hl]                                     ; $6abc: $56
	and  c                                           ; $6abd: $a1
	sbc  b                                           ; $6abe: $98
	sub  l                                           ; $6abf: $95
	ld   h, a                                        ; $6ac0: $67
	sbc  c                                           ; $6ac1: $99
	nop                                              ; $6ac2: $00
	ld   bc, $f807                                   ; $6ac3: $01 $07 $f8
	nop                                              ; $6ac6: $00
	ld   [bc], a                                     ; $6ac7: $02
	inc  bc                                          ; $6ac8: $03
	ld   bc, $2000                                   ; $6ac9: $01 $00 $20
	nop                                              ; $6acc: $00
	rlca                                             ; $6acd: $07
	ld   [hl], l                                     ; $6ace: $75
	nop                                              ; $6acf: $00
	ld   [bc], a                                     ; $6ad0: $02
	inc  bc                                          ; $6ad1: $03
	ld   bc, $2001                                   ; $6ad2: $01 $01 $20
	nop                                              ; $6ad5: $00
	ld   b, $bc                                      ; $6ad6: $06 $bc
	nop                                              ; $6ad8: $00
	rrca                                             ; $6ad9: $0f
	nop                                              ; $6ada: $00
	ld   bc, $6b01                                   ; $6adb: $01 $01 $6b
	sbc  d                                           ; $6ade: $9a
	ld   a, l                                        ; $6adf: $7d
	sbc  [hl]                                        ; $6ae0: $9e
	adc  h                                           ; $6ae1: $8c
	ld   l, l                                        ; $6ae2: $6d
	ld   a, h                                        ; $6ae3: $7c
	ld   [bc], a                                     ; $6ae4: $02
	ld   e, b                                        ; $6ae5: $58
	ld   [bc], a                                     ; $6ae6: $02
	add  [hl]                                        ; $6ae7: $86
	ld   a, c                                        ; $6ae8: $79
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	dec  c                                           ; $6aeb: $0d
	nop                                              ; $6aec: $00
	ld   a, [bc]                                     ; $6aed: $0a
	inc  e                                           ; $6aee: $1c
	inc  bc                                          ; $6aef: $03
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	dec  e                                           ; $6af2: $1d
	ld   b, b                                        ; $6af3: $40
	inc  de                                          ; $6af4: $13
	inc  bc                                          ; $6af5: $03
	inc  de                                          ; $6af6: $13
	ld   bc, $2901                                   ; $6af7: $01 $01 $29
	nop                                              ; $6afa: $00
	ld   bc, $546b                                   ; $6afb: $01 $6b $54
	rst  $38                                         ; $6afe: $ff
	rst  $38                                         ; $6aff: $ff
	ld   a, b                                        ; $6b00: $78
	sub  a                                           ; $6b01: $97
	inc  b                                           ; $6b02: $04
	ld   e, $7c                                      ; $6b03: $1e $7c
	inc  bc                                          ; $6b05: $03
	add  d                                           ; $6b06: $82
	ld   a, c                                        ; $6b07: $79
	dec  c                                           ; $6b08: $0d
	ld   [bc], a                                     ; $6b09: $02
	dec  e                                           ; $6b0a: $1d
	inc  b                                           ; $6b0b: $04
	ld   b, a                                        ; $6b0c: $47
	ld   h, l                                        ; $6b0d: $65
	ld   [hl], h                                     ; $6b0e: $74
	sub  b                                           ; $6b0f: $90
	sub  a                                           ; $6b10: $97
	ld   d, d                                        ; $6b11: $52
	ld   a, b                                        ; $6b12: $78
	ld   h, e                                        ; $6b13: $63
	ld   d, d                                        ; $6b14: $52
	sbc  a                                           ; $6b15: $9f
	dec  c                                           ; $6b16: $0d
	ld   l, e                                        ; $6b17: $6b
	sbc  d                                           ; $6b18: $9a
	ld   h, [hl]                                     ; $6b19: $66
	sub  c                                           ; $6b1a: $91
	sbc  a                                           ; $6b1b: $9f
	dec  c                                           ; $6b1c: $0d
	nop                                              ; $6b1d: $00
	ld   a, [bc]                                     ; $6b1e: $0a
	nop                                              ; $6b1f: $00
	inc  e                                           ; $6b20: $1c
	inc  bc                                          ; $6b21: $03
	ld   [bc], a                                     ; $6b22: $02
	ld   [bc], a                                     ; $6b23: $02
	dec  e                                           ; $6b24: $1d
	ld   b, b                                        ; $6b25: $40
	inc  de                                          ; $6b26: $13
	inc  bc                                          ; $6b27: $03
	inc  de                                          ; $6b28: $13
	ld   bc, $2902                                   ; $6b29: $01 $02 $29
	nop                                              ; $6b2c: $00
	ld   bc, $ffff                                   ; $6b2d: $01 $ff $ff
	rst  $38                                         ; $6b30: $ff
	rst  $38                                         ; $6b31: $ff
	ld   [$5d00], sp                                 ; $6b32: $08 $00 $5d
	and  c                                           ; $6b35: $a1
	sbc  [hl]                                        ; $6b36: $9e
	dec  c                                           ; $6b37: $0d
	inc  b                                           ; $6b38: $04
	sub  a                                           ; $6b39: $97
	ld   [bc], a                                     ; $6b3a: $02
	jp   $975d                                       ; $6b3b: $c3 $5d $97


	ld   d, d                                        ; $6b3e: $52
	ld   a, l                                        ; $6b3f: $7d
	ld   l, a                                        ; $6b40: $6f
	sub  c                                           ; $6b41: $91
	and  c                                           ; $6b42: $a1
	halt                                             ; $6b43: $76
	dec  c                                           ; $6b44: $0d
	ld   a, b                                        ; $6b45: $78
	ld   h, e                                        ; $6b46: $63
	ld   d, d                                        ; $6b47: $52
	sbc  a                                           ; $6b48: $9f
	dec  c                                           ; $6b49: $0d
	nop                                              ; $6b4a: $00
	ld   a, [bc]                                     ; $6b4b: $0a
	ld   bc, $9a6b                                   ; $6b4c: $01 $6b $9a
	ld   h, [hl]                                     ; $6b4f: $66
	sub  c                                           ; $6b50: $91
	sbc  a                                           ; $6b51: $9f
	dec  c                                           ; $6b52: $0d
	nop                                              ; $6b53: $00
	ld   a, [bc]                                     ; $6b54: $0a
	dec  c                                           ; $6b55: $0d
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	rrca                                             ; $6b58: $0f
	nop                                              ; $6b59: $00
	ld   bc, $0f00                                   ; $6b5a: $01 $00 $0f
	nop                                              ; $6b5d: $00
	ld   bc, $5801                                   ; $6b5e: $01 $01 $58
	ld   [bc], a                                     ; $6b61: $02
	add  b                                           ; $6b62: $80
	ld   d, d                                        ; $6b63: $52
	ld   h, l                                        ; $6b64: $65
	adc  h                                           ; $6b65: $8c
	ld   h, a                                        ; $6b66: $67
	sbc  [hl]                                        ; $6b67: $9e
	rst  JumpTable                                         ; $6b68: $df
	db   $ec                                         ; $6b69: $ec
	and  e                                           ; $6b6a: $a3
	ld   h, e                                        ; $6b6b: $63
	and  c                                           ; $6b6c: $a1
	sbc  a                                           ; $6b6d: $9f
	dec  c                                           ; $6b6e: $0d
	nop                                              ; $6b6f: $00
	ld   a, [bc]                                     ; $6b70: $0a
	inc  e                                           ; $6b71: $1c
	inc  bc                                          ; $6b72: $03
	inc  bc                                          ; $6b73: $03
	inc  bc                                          ; $6b74: $03
	ld   bc, $599d                                   ; $6b75: $01 $9d $59
	ld   [hl], c                                     ; $6b78: $71
	ld   l, l                                        ; $6b79: $6d
	sbc  l                                           ; $6b7a: $9d
	sbc  a                                           ; $6b7b: $9f
	dec  c                                           ; $6b7c: $0d
	ld   l, e                                        ; $6b7d: $6b
	sbc  d                                           ; $6b7e: $9a
	ld   h, [hl]                                     ; $6b7f: $66
	sub  c                                           ; $6b80: $91
	sbc  [hl]                                        ; $6b81: $9e
	ld   [bc], a                                     ; $6b82: $02
	ld   a, a                                        ; $6b83: $7f
	ld   e, e                                        ; $6b84: $5b
	adc  h                                           ; $6b85: $8c
	ld   h, l                                        ; $6b86: $65
	sub  l                                           ; $6b87: $95
	ld   d, h                                        ; $6b88: $54
	sbc  a                                           ; $6b89: $9f
	dec  c                                           ; $6b8a: $0d
	nop                                              ; $6b8b: $00
	ld   a, [bc]                                     ; $6b8c: $0a
	dec  c                                           ; $6b8d: $0d
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	rrca                                             ; $6b90: $0f
	nop                                              ; $6b91: $00
	ld   bc, $5a23                                   ; $6b92: $01 $23 $5a
	rrca                                             ; $6b95: $0f
	inc  bc                                          ; $6b96: $03
	nop                                              ; $6b97: $00
	ld   bc, $6161                                   ; $6b98: $01 $61 $61
	ld   e, d                                        ; $6b9b: $5a
	inc  b                                           ; $6b9c: $04
	rst  $10                                         ; $6b9d: $d7
	inc  b                                           ; $6b9e: $04
	ld   hl, $8503                                   ; $6b9f: $21 $03 $85
	inc  b                                           ; $6ba2: $04
	xor  e                                           ; $6ba3: $ab
	inc  bc                                          ; $6ba4: $03
	add  d                                           ; $6ba5: $82
	ld   a, h                                        ; $6ba6: $7c
	dec  c                                           ; $6ba7: $0d
	ld   e, b                                        ; $6ba8: $58
	inc  b                                           ; $6ba9: $04
	sub  l                                           ; $6baa: $95
	ld   [bc], a                                     ; $6bab: $02
	ld   hl, $9f96                                   ; $6bac: $21 $96 $9f
	dec  c                                           ; $6baf: $0d
	nop                                              ; $6bb0: $00
	ld   a, [bc]                                     ; $6bb1: $0a
	rrca                                             ; $6bb2: $0f
	inc  bc                                          ; $6bb3: $03
	nop                                              ; $6bb4: $00
	ld   bc, $8503                                   ; $6bb5: $01 $03 $85
	inc  b                                           ; $6bb8: $04
	xor  e                                           ; $6bb9: $ab
	inc  bc                                          ; $6bba: $03
	add  d                                           ; $6bbb: $82
	rst  $38                                         ; $6bbc: $ff
	rst  $38                                         ; $6bbd: $ff
	rst  JumpTable                                         ; $6bbe: $df
	db   $ec                                         ; $6bbf: $ec
	and  e                                           ; $6bc0: $a3
	ld   [hl], l                                     ; $6bc1: $75
	ld   h, a                                        ; $6bc2: $67
	sbc  a                                           ; $6bc3: $9f
	dec  c                                           ; $6bc4: $0d
	nop                                              ; $6bc5: $00
	ld   a, [bc]                                     ; $6bc6: $0a
	rrca                                             ; $6bc7: $0f
	ld   a, [bc]                                     ; $6bc8: $0a
	nop                                              ; $6bc9: $00
	ld   bc, $5458                                   ; $6bca: $01 $58 $54
	inc  b                                           ; $6bcd: $04
	ld   b, l                                        ; $6bce: $45
	sbc  d                                           ; $6bcf: $9a
	sbc  a                                           ; $6bd0: $9f
	dec  c                                           ; $6bd1: $0d
	nop                                              ; $6bd2: $00
	ld   a, [bc]                                     ; $6bd3: $0a
	rrca                                             ; $6bd4: $0f
	inc  bc                                          ; $6bd5: $03
	nop                                              ; $6bd6: $00
	ld   bc, $8303                                   ; $6bd7: $01 $03 $83
	dec  b                                           ; $6bda: $05
	dec  c                                           ; $6bdb: $0d
	ld   h, l                                        ; $6bdc: $65
	adc  h                                           ; $6bdd: $8c
	ld   h, a                                        ; $6bde: $67
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	dec  c                                           ; $6be1: $0d
	nop                                              ; $6be2: $00
	ld   a, [bc]                                     ; $6be3: $0a
	inc  hl                                          ; $6be4: $23
	dec  c                                           ; $6be5: $0d
	inc  e                                           ; $6be6: $1c
	ld   a, [bc]                                     ; $6be7: $0a
	dec  b                                           ; $6be8: $05
	ld   a, [bc]                                     ; $6be9: $0a
	ld   bc, $5458                                   ; $6bea: $01 $58 $54
	sbc  [hl]                                        ; $6bed: $9e
	rst  JumpTable                                         ; $6bee: $df
	db   $ec                                         ; $6bef: $ec
	and  e                                           ; $6bf0: $a3
	ld   a, c                                        ; $6bf1: $79
	ld   [$6600], sp                                 ; $6bf2: $08 $00 $66
	sub  c                                           ; $6bf5: $91
	dec  c                                           ; $6bf6: $0d
	ld   a, e                                        ; $6bf7: $7b
	ld   d, [hl]                                     ; $6bf8: $56
	ld   e, c                                        ; $6bf9: $59
	rst  $38                                         ; $6bfa: $ff
	rst  $38                                         ; $6bfb: $ff
	ld   e, b                                        ; $6bfc: $58
	inc  bc                                          ; $6bfd: $03
	ld   c, a                                        ; $6bfe: $4f
	sub  a                                           ; $6bff: $97
	sub  b                                           ; $6c00: $90
	dec  c                                           ; $6c01: $0d
	ld   [bc], a                                     ; $6c02: $02
	jr   nz, jr_046_6c0a                             ; $6c03: $20 $05

	ld   d, [hl]                                     ; $6c05: $56
	ld   [bc], a                                     ; $6c06: $02
	rlca                                             ; $6c07: $07
	and  c                                           ; $6c08: $a1
	ld   [hl], l                                     ; $6c09: $75

jr_046_6c0a:
	ld   e, l                                        ; $6c0a: $5d
	ld   e, c                                        ; $6c0b: $59
	rst  $38                                         ; $6c0c: $ff
	rst  $38                                         ; $6c0d: $ff
	dec  c                                           ; $6c0e: $0d
	nop                                              ; $6c0f: $00
	ld   a, [bc]                                     ; $6c10: $0a
	rrca                                             ; $6c11: $0f
	inc  bc                                          ; $6c12: $03
	ld   [bc], a                                     ; $6c13: $02
	ld   bc, $8503                                   ; $6c14: $01 $03 $85
	inc  b                                           ; $6c17: $04
	xor  e                                           ; $6c18: $ab
	inc  bc                                          ; $6c19: $03
	add  d                                           ; $6c1a: $82
	ld   a, [$780d]                                  ; $6c1b: $fa $0d $78
	and  c                                           ; $6c1e: $a1
	ld   [hl], l                                     ; $6c1f: $75
	ld   h, a                                        ; $6c20: $67
	ld   e, c                                        ; $6c21: $59
	sbc  [hl]                                        ; $6c22: $9e
	inc  b                                           ; $6c23: $04
	xor  l                                           ; $6c24: $ad
	ld   [bc], a                                     ; $6c25: $02
	xor  c                                           ; $6c26: $a9
	ld   [hl], c                                     ; $6c27: $71
	ld   e, c                                        ; $6c28: $59
	sub  a                                           ; $6c29: $97
	dec  c                                           ; $6c2a: $0d
	ld   e, b                                        ; $6c2b: $58
	inc  bc                                          ; $6c2c: $03
	jr   nz, jr_046_6ca7                             ; $6c2d: $20 $78

	and  c                                           ; $6c2f: $a1
	ld   e, c                                        ; $6c30: $59
	ld   [bc], a                                     ; $6c31: $02
	rlca                                             ; $6c32: $07
	and  c                                           ; $6c33: $a1
	ld   [hl], l                                     ; $6c34: $75
	ld   a, [$000d]                                  ; $6c35: $fa $0d $00
	ld   a, [bc]                                     ; $6c38: $0a
	inc  e                                           ; $6c39: $1c
	ld   a, [bc]                                     ; $6c3a: $0a
	ld   b, $0b                                      ; $6c3b: $06 $0b
	ld   bc, $9e9d                                   ; $6c3d: $01 $9d $9e
	sbc  l                                           ; $6c40: $9d
	ld   e, c                                        ; $6c41: $59
	ld   [hl], c                                     ; $6c42: $71
	ld   l, l                                        ; $6c43: $6d
	rst  JumpTable                                         ; $6c44: $df
	db   $ec                                         ; $6c45: $ec
	and  e                                           ; $6c46: $a3
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	dec  c                                           ; $6c49: $0d
	ld   l, e                                        ; $6c4a: $6b
	ld   d, h                                        ; $6c4b: $54
	inc  bc                                          ; $6c4c: $03
	ld   hl, sp-$67                                  ; $6c4d: $f8 $99
	ld   a, b                                        ; $6c4f: $78
	ld   [hl], c                                     ; $6c50: $71
	ld   [hl], h                                     ; $6c51: $74
	rst  $38                                         ; $6c52: $ff
	rst  $38                                         ; $6c53: $ff
	dec  c                                           ; $6c54: $0d
	nop                                              ; $6c55: $00
	ld   a, [bc]                                     ; $6c56: $0a
	rrca                                             ; $6c57: $0f
	inc  bc                                          ; $6c58: $03
	nop                                              ; $6c59: $00
	ld   bc, $6161                                   ; $6c5a: $01 $61 $61
	ld   a, l                                        ; $6c5d: $7d
	sbc  [hl]                                        ; $6c5e: $9e
	sub  b                                           ; $6c5f: $90
	ld   d, h                                        ; $6c60: $54
	ld   d, d                                        ; $6c61: $52
	ld   d, d                                        ; $6c62: $52
	sbc  l                                           ; $6c63: $9d
	rst  $38                                         ; $6c64: $ff
	rst  $38                                         ; $6c65: $ff
	dec  c                                           ; $6c66: $0d
	inc  bc                                          ; $6c67: $03
	ld   l, b                                        ; $6c68: $68
	ld   a, c                                        ; $6c69: $79
	ld   [bc], a                                     ; $6c6a: $02
	ld   a, a                                        ; $6c6b: $7f
	ld   e, l                                        ; $6c6c: $5d
	sbc  l                                           ; $6c6d: $9d

Call_046_6c6e:
	sub  [hl]                                        ; $6c6e: $96
	sbc  [hl]                                        ; $6c6f: $9e
	dec  c                                           ; $6c70: $0d
	ld   [$5d00], sp                                 ; $6c71: $08 $00 $5d
	and  c                                           ; $6c74: $a1
	sbc  a                                           ; $6c75: $9f
	dec  c                                           ; $6c76: $0d
	nop                                              ; $6c77: $00
	ld   a, [bc]                                     ; $6c78: $0a
	dec  c                                           ; $6c79: $0d
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	rrca                                             ; $6c7c: $0f
	nop                                              ; $6c7d: $00
	ld   bc, $6223                                   ; $6c7e: $01 $23 $62
	rrca                                             ; $6c81: $0f
	inc  bc                                          ; $6c82: $03
	nop                                              ; $6c83: $00
	ld   bc, $6161                                   ; $6c84: $01 $61 $61
	ld   e, d                                        ; $6c87: $5a
	inc  bc                                          ; $6c88: $03
	add  b                                           ; $6c89: $80
	ld   [bc], a                                     ; $6c8a: $02
	sub  c                                           ; $6c8b: $91
	inc  bc                                          ; $6c8c: $03
	ld   c, a                                        ; $6c8d: $4f
	ld   a, c                                        ; $6c8e: $79
	inc  bc                                          ; $6c8f: $03
	ld   h, d                                        ; $6c90: $62
	ld   [bc], a                                     ; $6c91: $02
	ld   a, e                                        ; $6c92: $7b
	ld   h, a                                        ; $6c93: $67
	sbc  c                                           ; $6c94: $99
	dec  c                                           ; $6c95: $0d
	inc  bc                                          ; $6c96: $03
	ld   a, [hl+]                                    ; $6c97: $2a
	dec  b                                           ; $6c98: $05
	ld   bc, $4d03                                   ; $6c99: $01 $03 $4d
	sub  [hl]                                        ; $6c9c: $96
	sbc  a                                           ; $6c9d: $9f
	dec  c                                           ; $6c9e: $0d
	nop                                              ; $6c9f: $00
	ld   a, [bc]                                     ; $6ca0: $0a
	add  hl, de                                      ; $6ca1: $19
	dec  b                                           ; $6ca2: $05
	ld   [bc], a                                     ; $6ca3: $02
	ld   a, l                                        ; $6ca4: $7d
	ld   h, l                                        ; $6ca5: $65
	sub  c                                           ; $6ca6: $91

jr_046_6ca7:
	ld   e, [hl]                                     ; $6ca7: $5e
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	db   $dd                                         ; $6caa: $dd
	ret  nz                                          ; $6cab: $c0

	push af                                          ; $6cac: $f5
	and  b                                           ; $6cad: $a0
	ld   [bc], a                                     ; $6cae: $02
	rla                                              ; $6caf: $17
	ld   h, a                                        ; $6cb0: $67
	nop                                              ; $6cb1: $00
	ld   bc, $6407                                   ; $6cb2: $01 $07 $64
	ld   [bc], a                                     ; $6cb5: $02
	ld   [bc], a                                     ; $6cb6: $02
	inc  bc                                          ; $6cb7: $03
	ld   bc, $2000                                   ; $6cb8: $01 $00 $20
	nop                                              ; $6cbb: $00
	rlca                                             ; $6cbc: $07
	xor  c                                           ; $6cbd: $a9
	ld   [bc], a                                     ; $6cbe: $02
	ld   [bc], a                                     ; $6cbf: $02
	inc  bc                                          ; $6cc0: $03
	ld   bc, $2001                                   ; $6cc1: $01 $01 $20
	nop                                              ; $6cc4: $00
	ld   b, $e8                                      ; $6cc5: $06 $e8
	ld   [bc], a                                     ; $6cc7: $02
	rrca                                             ; $6cc8: $0f
	nop                                              ; $6cc9: $00
	ld   bc, $6701                                   ; $6cca: $01 $01 $67
	ld   h, d                                        ; $6ccd: $62
	ld   d, d                                        ; $6cce: $52
	ld   a, [$670d]                                  ; $6ccf: $fa $0d $67
	ld   h, d                                        ; $6cd2: $62
	ld   d, d                                        ; $6cd3: $52
	ld   a, [$670d]                                  ; $6cd4: $fa $0d $67
	ld   h, d                                        ; $6cd7: $62
	ld   d, d                                        ; $6cd8: $52
	ld   a, [$000d]                                  ; $6cd9: $fa $0d $00
	ld   a, [bc]                                     ; $6cdc: $0a
	inc  e                                           ; $6cdd: $1c
	inc  bc                                          ; $6cde: $03
	inc  b                                           ; $6cdf: $04
	inc  b                                           ; $6ce0: $04
	dec  e                                           ; $6ce1: $1d
	ld   b, b                                        ; $6ce2: $40
	inc  de                                          ; $6ce3: $13
	inc  bc                                          ; $6ce4: $03
	inc  de                                          ; $6ce5: $13
	ld   bc, $2901                                   ; $6ce6: $01 $01 $29
	nop                                              ; $6ce9: $00
	ld   bc, $ffff                                   ; $6cea: $01 $ff $ff
	inc  bc                                          ; $6ced: $03
	add  [hl]                                        ; $6cee: $86
	ld   [bc], a                                     ; $6cef: $02
	xor  l                                           ; $6cf0: $ad
	ld   h, [hl]                                     ; $6cf1: $66
	sub  c                                           ; $6cf2: $91
	ld   a, b                                        ; $6cf3: $78
	ld   d, d                                        ; $6cf4: $52
	ld   a, h                                        ; $6cf5: $7c
	sub  [hl]                                        ; $6cf6: $96
	sbc  [hl]                                        ; $6cf7: $9e
	dec  c                                           ; $6cf8: $0d
	sub  b                                           ; $6cf9: $90
	ld   [hl], c                                     ; $6cfa: $71
	halt                                             ; $6cfb: $76
	dec  b                                           ; $6cfc: $05
	ld   [de], a                                     ; $6cfd: $12
	ld   l, a                                        ; $6cfe: $6f
	inc  b                                           ; $6cff: $04
	rlca                                             ; $6d00: $07
	ld   e, e                                        ; $6d01: $5b
	ld   a, b                                        ; $6d02: $78
	ld   h, e                                        ; $6d03: $63
	ld   d, d                                        ; $6d04: $52
	rst  $38                                         ; $6d05: $ff
	rst  $38                                         ; $6d06: $ff
	dec  c                                           ; $6d07: $0d
	nop                                              ; $6d08: $00
	ld   a, [bc]                                     ; $6d09: $0a
	ld   b, $13                                      ; $6d0a: $06 $13
	inc  bc                                          ; $6d0c: $03
	rrca                                             ; $6d0d: $0f
	nop                                              ; $6d0e: $00
	ld   bc, $6101                                   ; $6d0f: $01 $01 $61
	ld   a, h                                        ; $6d12: $7c
	db   $dd                                         ; $6d13: $dd
	ret  nz                                          ; $6d14: $c0

	push af                                          ; $6d15: $f5
	ld   a, l                                        ; $6d16: $7d
	inc  b                                           ; $6d17: $04
	ld   c, c                                        ; $6d18: $49
	ld   l, [hl]                                     ; $6d19: $6e
	sbc  e                                           ; $6d1a: $9b
	ld   d, h                                        ; $6d1b: $54
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	ld   sp, hl                                      ; $6d1e: $f9
	dec  c                                           ; $6d1f: $0d
	nop                                              ; $6d20: $00
	ld   a, [bc]                                     ; $6d21: $0a
	inc  e                                           ; $6d22: $1c
	inc  bc                                          ; $6d23: $03
	ld   b, $06                                      ; $6d24: $06 $06
	dec  e                                           ; $6d26: $1d
	ld   b, b                                        ; $6d27: $40
	inc  de                                          ; $6d28: $13
	inc  bc                                          ; $6d29: $03
	inc  de                                          ; $6d2a: $13
	ld   bc, $2903                                   ; $6d2b: $01 $03 $29
	nop                                              ; $6d2e: $00
	ld   bc, $8f92                                   ; $6d2f: $01 $92 $8f
	ld   a, b                                        ; $6d32: $78
	ld   h, e                                        ; $6d33: $63
	ld   d, d                                        ; $6d34: $52
	ld   a, [$050d]                                  ; $6d35: $fa $0d $05
	ld   a, h                                        ; $6d38: $7c
	inc  b                                           ; $6d39: $04
	ld   l, a                                        ; $6d3a: $6f
	ld   e, d                                        ; $6d3b: $5a
	ld   a, b                                        ; $6d3c: $78
	ld   [hl], c                                     ; $6d3d: $71
	ld   l, l                                        ; $6d3e: $6d
	sub  a                                           ; $6d3f: $97
	ld   [hl], a                                     ; $6d40: $77
	ld   d, h                                        ; $6d41: $54
	ld   h, a                                        ; $6d42: $67
	sbc  c                                           ; $6d43: $99
	ld   a, h                                        ; $6d44: $7c
	ld   a, [$000d]                                  ; $6d45: $fa $0d $00
	ld   a, [bc]                                     ; $6d48: $0a
	ld   b, $13                                      ; $6d49: $06 $13
	inc  bc                                          ; $6d4b: $03
	rrca                                             ; $6d4c: $0f
	inc  bc                                          ; $6d4d: $03
	nop                                              ; $6d4e: $00
	ld   bc, $7166                                   ; $6d4f: $01 $66 $71

Jump_046_6d52:
	ld   e, l                                        ; $6d52: $5d
	sbc  b                                           ; $6d53: $98
	ld   [bc], a                                     ; $6d54: $02
	sub  l                                           ; $6d55: $95
	ld   [hl], h                                     ; $6d56: $74
	ld   e, b                                        ; $6d57: $58
	ld   e, e                                        ; $6d58: $5b
	ld   a, b                                        ; $6d59: $78
	ld   h, e                                        ; $6d5a: $63

Jump_046_6d5b:
	ld   d, d                                        ; $6d5b: $52
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	dec  c                                           ; $6d5e: $0d
	ld   [bc], a                                     ; $6d5f: $02
	add  e                                           ; $6d60: $83
	ld   h, l                                        ; $6d61: $65
	ld   [hl], h                                     ; $6d62: $74
	db   $dd                                         ; $6d63: $dd
	ret  nz                                          ; $6d64: $c0

	push af                                          ; $6d65: $f5
	and  b                                           ; $6d66: $a0
	ld   [bc], a                                     ; $6d67: $02
	rla                                              ; $6d68: $17
	ld   h, l                                        ; $6d69: $65
	ld   l, l                                        ; $6d6a: $6d
	sbc  b                                           ; $6d6b: $98
	ld   h, l                                        ; $6d6c: $65
	ld   l, l                                        ; $6d6d: $6d
	sub  a                                           ; $6d6e: $97
	dec  c                                           ; $6d6f: $0d
	pop  bc                                          ; $6d70: $c1
	db   $e3                                         ; $6d71: $e3
	sub  [hl]                                        ; $6d72: $96
	sbc  a                                           ; $6d73: $9f
	dec  c                                           ; $6d74: $0d
	nop                                              ; $6d75: $00
	ld   a, [bc]                                     ; $6d76: $0a
	inc  e                                           ; $6d77: $1c
	inc  bc                                          ; $6d78: $03
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	ld   bc, $9e63                                   ; $6d7b: $01 $63 $9e
	inc  bc                                          ; $6d7e: $03
	ld   l, b                                        ; $6d7f: $68
	ld   a, c                                        ; $6d80: $79
	ld   [bc], a                                     ; $6d81: $02
	ld   a, a                                        ; $6d82: $7f
	ld   e, l                                        ; $6d83: $5d
	sbc  l                                           ; $6d84: $9d
	sub  [hl]                                        ; $6d85: $96
	sbc  a                                           ; $6d86: $9f
	dec  c                                           ; $6d87: $0d
	nop                                              ; $6d88: $00
	ld   a, [bc]                                     ; $6d89: $0a
	dec  c                                           ; $6d8a: $0d
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	rrca                                             ; $6d8d: $0f
	nop                                              ; $6d8e: $00
	ld   bc, $3d23                                   ; $6d8f: $01 $23 $3d
	rrca                                             ; $6d92: $0f
	inc  bc                                          ; $6d93: $03
	nop                                              ; $6d94: $00
	ld   bc, $6903                                   ; $6d95: $01 $03 $69
	ld   [bc], a                                     ; $6d98: $02
	xor  d                                           ; $6d99: $aa
	ld   a, l                                        ; $6d9a: $7d
	inc  bc                                          ; $6d9b: $03
	ld   d, l                                        ; $6d9c: $55
	ld   [bc], a                                     ; $6d9d: $02
	ld   e, c                                        ; $6d9e: $59
	sub  [hl]                                        ; $6d9f: $96
	rst  $38                                         ; $6da0: $ff
	rst  $38                                         ; $6da1: $ff
	dec  c                                           ; $6da2: $0d
	inc  bc                                          ; $6da3: $03
	cp   $87                                         ; $6da4: $fe $87
	ld   l, l                                        ; $6da6: $6d
	ld   d, d                                        ; $6da7: $52
	sub  b                                           ; $6da8: $90
	ld   a, h                                        ; $6da9: $7c
	ld   e, d                                        ; $6daa: $5a
	ld   d, b                                        ; $6dab: $50
	ld   [hl], c                                     ; $6dac: $71
	ld   l, l                                        ; $6dad: $6d
	sub  a                                           ; $6dae: $97
	dec  c                                           ; $6daf: $0d
	ld   h, c                                        ; $6db0: $61
	ld   h, c                                        ; $6db1: $61
	ld   a, c                                        ; $6db2: $79
	dec  b                                           ; $6db3: $05
	db   $10                                         ; $6db4: $10
	sbc  c                                           ; $6db5: $99
	halt                                             ; $6db6: $76
	ld   d, d                                        ; $6db7: $52
	ld   d, d                                        ; $6db8: $52
	sbc  l                                           ; $6db9: $9d
	sbc  a                                           ; $6dba: $9f
	dec  c                                           ; $6dbb: $0d
	nop                                              ; $6dbc: $00
	ld   a, [bc]                                     ; $6dbd: $0a
	inc  e                                           ; $6dbe: $1c
	inc  bc                                          ; $6dbf: $03
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	ld   bc, $1d02                                   ; $6dc2: $01 $02 $1d
	inc  b                                           ; $6dc5: $04
	ld   b, a                                        ; $6dc6: $47
	ld   a, l                                        ; $6dc7: $7d
	ld   h, c                                        ; $6dc8: $61
	sbc  d                                           ; $6dc9: $9a
	ld   [hl], l                                     ; $6dca: $75
	inc  bc                                          ; $6dcb: $03
	ld   a, [hl]                                     ; $6dcc: $7e
	sbc  l                                           ; $6dcd: $9d
	sbc  b                                           ; $6dce: $98
	sub  [hl]                                        ; $6dcf: $96
	sbc  a                                           ; $6dd0: $9f
	dec  c                                           ; $6dd1: $0d
	ld   [hl], l                                     ; $6dd2: $75
	ld   a, l                                        ; $6dd3: $7d
	sbc  [hl]                                        ; $6dd4: $9e
	inc  bc                                          ; $6dd5: $03
	ret  z                                           ; $6dd6: $c8

	ld   a, l                                        ; $6dd7: $7d
	inc  bc                                          ; $6dd8: $03
	and  b                                           ; $6dd9: $a0
	ld   l, a                                        ; $6dda: $6f
	inc  b                                           ; $6ddb: $04
	ld   a, d                                        ; $6ddc: $7a
	ld   a, c                                        ; $6ddd: $79
	inc  b                                           ; $6dde: $04
	jp   $9d99                                       ; $6ddf: $c3 $99 $9d


	sbc  a                                           ; $6de2: $9f
	dec  c                                           ; $6de3: $0d
	nop                                              ; $6de4: $00
	ld   a, [bc]                                     ; $6de5: $0a
	dec  c                                           ; $6de6: $0d
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	rrca                                             ; $6de9: $0f
	nop                                              ; $6dea: $00
	ld   bc, $1e09                                   ; $6deb: $01 $09 $1e
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	inc  e                                           ; $6df0: $1c
	inc  b                                           ; $6df1: $04
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	ld   [bc], a                                     ; $6df4: $02
	ld   bc, $9e50                                   ; $6df5: $01 $50 $9e
	ld   l, a                                        ; $6df8: $6f
	ld   d, d                                        ; $6df9: $52
	ld   [bc], a                                     ; $6dfa: $02
	inc  de                                          ; $6dfb: $13
	ld   l, a                                        ; $6dfc: $6f
	sub  c                                           ; $6dfd: $91
	and  c                                           ; $6dfe: $a1
	sbc  a                                           ; $6dff: $9f
	dec  c                                           ; $6e00: $0d
	nop                                              ; $6e01: $00
	ld   a, [bc]                                     ; $6e02: $0a
	ld   bc, $567b                                   ; $6e03: $01 $7b $56
	ld   a, e                                        ; $6e06: $7b
	ld   d, [hl]                                     ; $6e07: $56
	sbc  [hl]                                        ; $6e08: $9e
	ld   h, c                                        ; $6e09: $61
	sbc  d                                           ; $6e0a: $9a
	ld   e, c                                        ; $6e0b: $59
	sub  a                                           ; $6e0c: $97
	dec  c                                           ; $6e0d: $0d
	ld   [hl], h                                     ; $6e0e: $74
	ld   d, d                                        ; $6e0f: $52
	ld   h, b                                        ; $6e10: $60
	ld   e, e                                        ; $6e11: $5b
	ld   a, h                                        ; $6e12: $7c
	ld   a, b                                        ; $6e13: $78
	ld   e, c                                        ; $6e14: $59
	and  b                                           ; $6e15: $a0
	ld   d, b                                        ; $6e16: $50
	and  c                                           ; $6e17: $a1
	ld   a, b                                        ; $6e18: $78
	ld   d, d                                        ; $6e19: $52
	ld   h, l                                        ; $6e1a: $65
	ld   [hl], h                                     ; $6e1b: $74
	dec  c                                           ; $6e1c: $0d
	ld   d, b                                        ; $6e1d: $50
	ld   h, b                                        ; $6e1e: $60
	sub  [hl]                                        ; $6e1f: $96
	ld   d, h                                        ; $6e20: $54
	ld   e, c                                        ; $6e21: $59
	ld   sp, hl                                      ; $6e22: $f9
	dec  c                                           ; $6e23: $0d
	nop                                              ; $6e24: $00
	ld   a, [bc]                                     ; $6e25: $0a
	add  hl, de                                      ; $6e26: $19
	dec  b                                           ; $6e27: $05
	ld   [bc], a                                     ; $6e28: $02
	ld   [bc], a                                     ; $6e29: $02
	dec  e                                           ; $6e2a: $1d
	inc  b                                           ; $6e2b: $04
	ld   b, a                                        ; $6e2c: $47
	ld   h, l                                        ; $6e2d: $65
	ld   [hl], h                                     ; $6e2e: $74
	sub  b                                           ; $6e2f: $90
	sub  a                                           ; $6e30: $97
	ld   d, h                                        ; $6e31: $54
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	ld   d, [hl]                                     ; $6e34: $56
	and  c                                           ; $6e35: $a1
	sbc  b                                           ; $6e36: $98
	sub  l                                           ; $6e37: $95
	ld   h, a                                        ; $6e38: $67
	sbc  c                                           ; $6e39: $99
	nop                                              ; $6e3a: $00
	ld   bc, $d107                                   ; $6e3b: $01 $07 $d1
	nop                                              ; $6e3e: $00
	ld   [bc], a                                     ; $6e3f: $02
	inc  bc                                          ; $6e40: $03
	ld   bc, $2000                                   ; $6e41: $01 $00 $20
	nop                                              ; $6e44: $00
	rlca                                             ; $6e45: $07
	ld   h, c                                        ; $6e46: $61
	nop                                              ; $6e47: $00
	ld   [bc], a                                     ; $6e48: $02
	inc  bc                                          ; $6e49: $03
	ld   bc, $2001                                   ; $6e4a: $01 $01 $20
	nop                                              ; $6e4d: $00
	ld   b, $93                                      ; $6e4e: $06 $93
	nop                                              ; $6e50: $00
	rrca                                             ; $6e51: $0f
	nop                                              ; $6e52: $00
	ld   bc, $0201                                   ; $6e53: $01 $01 $02
	jr   z, @+$54                                    ; $6e56: $28 $52

	ld   e, a                                        ; $6e58: $5f
	ld   [hl], a                                     ; $6e59: $77
	sbc  [hl]                                        ; $6e5a: $9e
	adc  h                                           ; $6e5b: $8c
	ld   l, l                                        ; $6e5c: $6d
	ld   [bc], a                                     ; $6e5d: $02
	and  l                                           ; $6e5e: $a5
	inc  b                                           ; $6e5f: $04
	add  hl, hl                                      ; $6e60: $29
	ld   a, e                                        ; $6e61: $7b
	sbc  a                                           ; $6e62: $9f
	dec  c                                           ; $6e63: $0d
	nop                                              ; $6e64: $00
	ld   a, [bc]                                     ; $6e65: $0a
	inc  e                                           ; $6e66: $1c
	inc  b                                           ; $6e67: $04
	rlca                                             ; $6e68: $07
	rlca                                             ; $6e69: $07
	dec  e                                           ; $6e6a: $1d
	ld   b, b                                        ; $6e6b: $40
	inc  d                                           ; $6e6c: $14
	inc  bc                                          ; $6e6d: $03
	inc  d                                           ; $6e6e: $14
	ld   bc, $2901                                   ; $6e6f: $01 $01 $29
	nop                                              ; $6e72: $00
	ld   bc, $5484                                   ; $6e73: $01 $84 $54
	rst  $38                                         ; $6e76: $ff
	rst  $38                                         ; $6e77: $ff
	ld   [hl], d                                     ; $6e78: $72
	adc  h                                           ; $6e79: $8c
	and  c                                           ; $6e7a: $a1
	ld   a, b                                        ; $6e7b: $78
	ld   d, d                                        ; $6e7c: $52
	ld   a, h                                        ; $6e7d: $7c
	sbc  a                                           ; $6e7e: $9f
	dec  c                                           ; $6e7f: $0d
	nop                                              ; $6e80: $00
	ld   a, [bc]                                     ; $6e81: $0a
	nop                                              ; $6e82: $00
	inc  e                                           ; $6e83: $1c
	inc  b                                           ; $6e84: $04
	rlca                                             ; $6e85: $07
	rlca                                             ; $6e86: $07
	ld   bc, $ffff                                   ; $6e87: $01 $ff $ff
	rst  $38                                         ; $6e8a: $ff
	rst  $38                                         ; $6e8b: $ff
	ld   l, a                                        ; $6e8c: $6f
	ld   d, d                                        ; $6e8d: $52
	ld   [bc], a                                     ; $6e8e: $02
	inc  de                                          ; $6e8f: $13
	ld   l, a                                        ; $6e90: $6f
	sub  c                                           ; $6e91: $91
	and  c                                           ; $6e92: $a1
	dec  c                                           ; $6e93: $0d
	ld   a, b                                        ; $6e94: $78
	and  c                                           ; $6e95: $a1
	ld   [hl], l                                     ; $6e96: $75
	ldh  [c], a                                      ; $6e97: $e2
	cp   b                                           ; $6e98: $b8
	ld   h, a                                        ; $6e99: $67
	sbc  c                                           ; $6e9a: $99
	ld   a, h                                        ; $6e9b: $7c
	ld   sp, hl                                      ; $6e9c: $f9
	dec  c                                           ; $6e9d: $0d
	nop                                              ; $6e9e: $00
	ld   a, [bc]                                     ; $6e9f: $0a
	inc  e                                           ; $6ea0: $1c
	inc  b                                           ; $6ea1: $04
	ld   [bc], a                                     ; $6ea2: $02
	ld   [bc], a                                     ; $6ea3: $02
	dec  e                                           ; $6ea4: $1d
	ld   b, b                                        ; $6ea5: $40
	inc  d                                           ; $6ea6: $14
	inc  bc                                          ; $6ea7: $03
	inc  d                                           ; $6ea8: $14
	ld   bc, $2902                                   ; $6ea9: $01 $02 $29
	nop                                              ; $6eac: $00
	ld   bc, $5490                                   ; $6ead: $01 $90 $54
	ld   h, l                                        ; $6eb0: $65
	sub  a                                           ; $6eb1: $97
	ld   a, b                                        ; $6eb2: $78
	ld   d, d                                        ; $6eb3: $52
	ld   a, [$000d]                                  ; $6eb4: $fa $0d $00
	ld   a, [bc]                                     ; $6eb7: $0a
	dec  c                                           ; $6eb8: $0d
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	rrca                                             ; $6ebb: $0f
	nop                                              ; $6ebc: $00
	ld   bc, $1e09                                   ; $6ebd: $01 $09 $1e
	nop                                              ; $6ec0: $00
	rrca                                             ; $6ec1: $0f
	nop                                              ; $6ec2: $00
	ld   bc, $6601                                   ; $6ec3: $01 $01 $66
	sub  c                                           ; $6ec6: $91
	ld   d, b                                        ; $6ec7: $50
	sbc  [hl]                                        ; $6ec8: $9e
	ld   e, b                                        ; $6ec9: $58
	ld   [bc], a                                     ; $6eca: $02
	add  b                                           ; $6ecb: $80
	ld   d, d                                        ; $6ecc: $52
	ld   h, l                                        ; $6ecd: $65
	sub  [hl]                                        ; $6ece: $96
	ld   d, h                                        ; $6ecf: $54
	ld   e, c                                        ; $6ed0: $59
	ld   a, b                                        ; $6ed1: $78
	sbc  a                                           ; $6ed2: $9f
	dec  c                                           ; $6ed3: $0d
	nop                                              ; $6ed4: $00
	ld   a, [bc]                                     ; $6ed5: $0a
	inc  e                                           ; $6ed6: $1c
	inc  b                                           ; $6ed7: $04
	ld   bc, $0101                                   ; $6ed8: $01 $01 $01
	ld   d, h                                        ; $6edb: $54
	and  c                                           ; $6edc: $a1
	ld   a, [$660d]                                  ; $6edd: $fa $0d $66
	sub  c                                           ; $6ee0: $91
	sbc  [hl]                                        ; $6ee1: $9e
	ld   d, d                                        ; $6ee2: $52
	ld   [hl], c                                     ; $6ee3: $71
	ld   e, l                                        ; $6ee4: $5d
	sub  [hl]                                        ; $6ee5: $96
	ei                                               ; $6ee6: $fb
	ld   a, [$000d]                                  ; $6ee7: $fa $0d $00
	ld   a, [bc]                                     ; $6eea: $0a
	dec  c                                           ; $6eeb: $0d
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	rrca                                             ; $6eee: $0f
	nop                                              ; $6eef: $00
	ld   bc, $2923                                   ; $6ef0: $01 $23 $29
	inc  e                                           ; $6ef3: $1c
	inc  b                                           ; $6ef4: $04
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	ld   bc, $6161                                   ; $6ef7: $01 $61 $61
	ld   e, d                                        ; $6efa: $5a
	sbc  [hl]                                        ; $6efb: $9e
	ld   e, d                                        ; $6efc: $5a
	ld   e, l                                        ; $6efd: $5d
	sub  d                                           ; $6efe: $92
	ld   l, [hl]                                     ; $6eff: $6e
	sub  [hl]                                        ; $6f00: $96
	sbc  a                                           ; $6f01: $9f
	dec  c                                           ; $6f02: $0d
	nop                                              ; $6f03: $00
	ld   a, [bc]                                     ; $6f04: $0a
	inc  e                                           ; $6f05: $1c
	inc  b                                           ; $6f06: $04
	ld   bc, $0101                                   ; $6f07: $01 $01 $01
	ld   d, [hl]                                     ; $6f0a: $56
	and  c                                           ; $6f0b: $a1
	ld   e, c                                        ; $6f0c: $59
	ld   d, d                                        ; $6f0d: $52
	ld   h, l                                        ; $6f0e: $65
	ld   l, l                                        ; $6f0f: $6d
	sbc  b                                           ; $6f10: $98
	sbc  [hl]                                        ; $6f11: $9e
	dec  c                                           ; $6f12: $0d
	jp   nc, $c7fb                                   ; $6f13: $d2 $fb $c7

	and  h                                           ; $6f16: $a4
	ei                                               ; $6f17: $fb
	ld   h, l                                        ; $6f18: $65
	ld   l, l                                        ; $6f19: $6d
	sbc  b                                           ; $6f1a: $98
	sbc  [hl]                                        ; $6f1b: $9e
	dec  c                                           ; $6f1c: $0d
	ld   h, a                                        ; $6f1d: $67
	ld   h, d                                        ; $6f1e: $62
	ld   e, l                                        ; $6f1f: $5d
	ld   l, l                                        ; $6f20: $6d
	ld   a, h                                        ; $6f21: $7c
	ld   h, l                                        ; $6f22: $65
	ld   d, d                                        ; $6f23: $52
	halt                                             ; $6f24: $76
	ld   h, c                                        ; $6f25: $61
	sbc  e                                           ; $6f26: $9b
	ld   a, b                                        ; $6f27: $78
	ld   a, h                                        ; $6f28: $7c
	sbc  a                                           ; $6f29: $9f
	dec  c                                           ; $6f2a: $0d
	nop                                              ; $6f2b: $00
	ld   a, [bc]                                     ; $6f2c: $0a
	dec  c                                           ; $6f2d: $0d
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	rrca                                             ; $6f30: $0f
	nop                                              ; $6f31: $00
	ld   bc, $2d23                                   ; $6f32: $01 $23 $2d
	inc  e                                           ; $6f35: $1c
	inc  b                                           ; $6f36: $04
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	ld   bc, $6161                                   ; $6f39: $01 $61 $61
	ld   e, d                                        ; $6f3c: $5a
	sbc  [hl]                                        ; $6f3d: $9e
	ld   d, d                                        ; $6f3e: $52
	ld   h, l                                        ; $6f3f: $65
	sub  l                                           ; $6f40: $95
	ld   d, h                                        ; $6f41: $54
	add  a                                           ; $6f42: $87
	sub  d                                           ; $6f43: $92
	ld   l, [hl]                                     ; $6f44: $6e
	sub  [hl]                                        ; $6f45: $96
	sbc  a                                           ; $6f46: $9f
	dec  c                                           ; $6f47: $0d
	nop                                              ; $6f48: $00
	ld   a, [bc]                                     ; $6f49: $0a
	inc  e                                           ; $6f4a: $1c
	inc  b                                           ; $6f4b: $04
	ld   bc, $0101                                   ; $6f4c: $01 $01 $01
	ld   d, d                                        ; $6f4f: $52
	sbc  e                                           ; $6f50: $9b
	and  c                                           ; $6f51: $a1
	ld   a, b                                        ; $6f52: $78
	ld   e, b                                        ; $6f53: $58
	sub  [hl]                                        ; $6f54: $96
	ld   d, h                                        ; $6f55: $54
	add  e                                           ; $6f56: $83
	ld   e, l                                        ; $6f57: $5d
	ld   e, d                                        ; $6f58: $5a
	dec  c                                           ; $6f59: $0d
	ld   d, d                                        ; $6f5a: $52
	ei                                               ; $6f5b: $fb
	ld   [hl], c                                     ; $6f5c: $71
	ld   a, a                                        ; $6f5d: $7f
	ld   d, d                                        ; $6f5e: $52
	ld   d, b                                        ; $6f5f: $50
	ld   [hl], c                                     ; $6f60: $71
	ld   [hl], h                                     ; $6f61: $74
	sbc  [hl]                                        ; $6f62: $9e
	dec  c                                           ; $6f63: $0d
	and  e                                           ; $6f64: $a3
	and  l                                           ; $6f65: $a5
	db   $ec                                         ; $6f66: $ec
	cp   d                                           ; $6f67: $ba
	ld   l, [hl]                                     ; $6f68: $6e
	ld   d, d                                        ; $6f69: $52
	ld   h, a                                        ; $6f6a: $67
	ld   e, e                                        ; $6f6b: $5b
	ld   a, b                                        ; $6f6c: $78
	and  c                                           ; $6f6d: $a1
	ld   l, [hl]                                     ; $6f6e: $6e
	ei                                               ; $6f6f: $fb
	sbc  a                                           ; $6f70: $9f
	dec  c                                           ; $6f71: $0d
	nop                                              ; $6f72: $00
	ld   a, [bc]                                     ; $6f73: $0a
	dec  c                                           ; $6f74: $0d
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	rrca                                             ; $6f77: $0f
	nop                                              ; $6f78: $00
	ld   bc, $7223                                   ; $6f79: $01 $23 $72
	inc  e                                           ; $6f7c: $1c
	inc  b                                           ; $6f7d: $04
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	ld   bc, $6161                                   ; $6f80: $01 $61 $61
	ld   e, d                                        ; $6f83: $5a
	sbc  [hl]                                        ; $6f84: $9e
	ld   d, d                                        ; $6f85: $52
	adc  [hl]                                        ; $6f86: $8e
	ld   h, l                                        ; $6f87: $65
	ld   [hl], d                                     ; $6f88: $72
	ld   l, [hl]                                     ; $6f89: $6e
	sub  [hl]                                        ; $6f8a: $96
	sbc  a                                           ; $6f8b: $9f
	dec  c                                           ; $6f8c: $0d
	nop                                              ; $6f8d: $00
	ld   a, [bc]                                     ; $6f8e: $0a
	ld   bc, $956f                                   ; $6f8f: $01 $6f $95
	ld   [hl], c                                     ; $6f92: $71
	halt                                             ; $6f93: $76
	ld   e, [hl]                                     ; $6f94: $5e
	sub  a                                           ; $6f95: $97
	ld   d, d                                        ; $6f96: $52
	ld   a, h                                        ; $6f97: $7c
	or   d                                           ; $6f98: $b2
	xor  l                                           ; $6f99: $ad
	ld   a, b                                        ; $6f9a: $78
	sub  a                                           ; $6f9b: $97
	dec  c                                           ; $6f9c: $0d
	ld   h, a                                        ; $6f9d: $67
	ld   e, [hl]                                     ; $6f9e: $5e
	ld   a, c                                        ; $6f9f: $79
	ld   a, b                                        ; $6fa0: $78
	ld   e, b                                        ; $6fa1: $58
	ld   [hl], c                                     ; $6fa2: $71
	ld   l, a                                        ; $6fa3: $6f
	sub  c                                           ; $6fa4: $91
	ld   d, h                                        ; $6fa5: $54
	and  c                                           ; $6fa6: $a1
	ld   l, [hl]                                     ; $6fa7: $6e
	sub  [hl]                                        ; $6fa8: $96
	sbc  [hl]                                        ; $6fa9: $9e
	dec  c                                           ; $6faa: $0d
	cp   d                                           ; $6fab: $ba
	or   l                                           ; $6fac: $b5
	and  l                                           ; $6fad: $a5
	ld   [hl], l                                     ; $6fae: $75
	ld   h, l                                        ; $6faf: $65
	sub  l                                           ; $6fb0: $95
	ei                                               ; $6fb1: $fb
	sbc  a                                           ; $6fb2: $9f
	dec  c                                           ; $6fb3: $0d
	nop                                              ; $6fb4: $00
	ld   a, [bc]                                     ; $6fb5: $0a
	dec  c                                           ; $6fb6: $0d
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	rrca                                             ; $6fb9: $0f
	nop                                              ; $6fba: $00
	ld   bc, $0423                                   ; $6fbb: $01 $23 $04
	inc  e                                           ; $6fbe: $1c
	inc  b                                           ; $6fbf: $04
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	ld   bc, $527d                                   ; $6fc2: $01 $7d $52
	sbc  [hl]                                        ; $6fc5: $9e
	ld   h, c                                        ; $6fc6: $61
	sbc  d                                           ; $6fc7: $9a
	ld   [hl], l                                     ; $6fc8: $75
	ld   d, b                                        ; $6fc9: $50
	and  c                                           ; $6fca: $a1
	ld   a, b                                        ; $6fcb: $78
	ld   d, d                                        ; $6fcc: $52
	dec  c                                           ; $6fcd: $0d
	ld   h, l                                        ; $6fce: $65
	sub  e                                           ; $6fcf: $93
	ei                                               ; $6fd0: $fb
	sbc  b                                           ; $6fd1: $98
	sub  l                                           ; $6fd2: $95
	ei                                               ; $6fd3: $fb
	sbc  a                                           ; $6fd4: $9f
	dec  c                                           ; $6fd5: $0d
	ld   [hl], a                                     ; $6fd6: $77
	ld   d, h                                        ; $6fd7: $54
	ld   l, [hl]                                     ; $6fd8: $6e
	ld   [hl], c                                     ; $6fd9: $71
	ld   l, l                                        ; $6fda: $6d
	sbc  [hl]                                        ; $6fdb: $9e
	ld   l, a                                        ; $6fdc: $6f
	ld   d, d                                        ; $6fdd: $52
	ld   [bc], a                                     ; $6fde: $02
	inc  de                                          ; $6fdf: $13
	ld   l, a                                        ; $6fe0: $6f
	sub  c                                           ; $6fe1: $91
	and  c                                           ; $6fe2: $a1
	ld   sp, hl                                      ; $6fe3: $f9
	dec  c                                           ; $6fe4: $0d
	nop                                              ; $6fe5: $00
	ld   a, [bc]                                     ; $6fe6: $0a
	add  hl, de                                      ; $6fe7: $19
	dec  b                                           ; $6fe8: $05
	inc  bc                                          ; $6fe9: $03
	inc  b                                           ; $6fea: $04
	ld   a, e                                        ; $6feb: $7b
	sbc  d                                           ; $6fec: $9a
	ld   l, l                                        ; $6fed: $6d
	rst  $38                                         ; $6fee: $ff
	rst  $38                                         ; $6fef: $ff
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	dec  b                                           ; $6ff2: $05
	inc  de                                          ; $6ff3: $13
	ld   h, l                                        ; $6ff4: $65
	ld   e, c                                        ; $6ff5: $59
	ld   [hl], c                                     ; $6ff6: $71
	ld   l, l                                        ; $6ff7: $6d
	sub  [hl]                                        ; $6ff8: $96
	nop                                              ; $6ff9: $00
	ld   bc, $1d02                                   ; $6ffa: $01 $02 $1d
	inc  b                                           ; $6ffd: $04
	ld   b, a                                        ; $6ffe: $47
	ld   l, [hl]                                     ; $6fff: $6e
	ld   [hl], c                                     ; $7000: $71
	ld   l, l                                        ; $7001: $6d
	ld   a, h                                        ; $7002: $7c
	ld   e, c                                        ; $7003: $59
	ld   sp, hl                                      ; $7004: $f9
	nop                                              ; $7005: $00
	ld   [bc], a                                     ; $7006: $02
	rlca                                             ; $7007: $07
	dec  [hl]                                        ; $7008: $35
	ld   [bc], a                                     ; $7009: $02
	ld   [bc], a                                     ; $700a: $02
	inc  bc                                          ; $700b: $03
	ld   bc, $2000                                   ; $700c: $01 $00 $20
	nop                                              ; $700f: $00
	rlca                                             ; $7010: $07
	xor  b                                           ; $7011: $a8
	ld   [bc], a                                     ; $7012: $02
	ld   [bc], a                                     ; $7013: $02
	inc  bc                                          ; $7014: $03
	ld   bc, $2001                                   ; $7015: $01 $01 $20
	nop                                              ; $7018: $00
	rlca                                             ; $7019: $07
	ret  c                                           ; $701a: $d8

	ld   [bc], a                                     ; $701b: $02
	ld   [bc], a                                     ; $701c: $02
	inc  bc                                          ; $701d: $03
	ld   bc, $2002                                   ; $701e: $01 $02 $20
	nop                                              ; $7021: $00
	ld   b, $3e                                      ; $7022: $06 $3e
	inc  bc                                          ; $7024: $03
	rrca                                             ; $7025: $0f
	nop                                              ; $7026: $00
	ld   bc, $0401                                   ; $7027: $01 $01 $04
	ld   a, e                                        ; $702a: $7b
	sbc  d                                           ; $702b: $9a
	ld   l, l                                        ; $702c: $6d
	rst  $38                                         ; $702d: $ff
	rst  $38                                         ; $702e: $ff
	dec  c                                           ; $702f: $0d
	nop                                              ; $7030: $00
	ld   a, [bc]                                     ; $7031: $0a
	inc  e                                           ; $7032: $1c
	inc  b                                           ; $7033: $04
	inc  bc                                          ; $7034: $03
	inc  bc                                          ; $7035: $03
	ld   bc, $5490                                   ; $7036: $01 $90 $54
	sbc  [hl]                                        ; $7039: $9e
	ld   l, a                                        ; $703a: $6f
	ld   d, d                                        ; $703b: $52
	ld   [bc], a                                     ; $703c: $02
	inc  de                                          ; $703d: $13
	ld   l, a                                        ; $703e: $6f
	sub  c                                           ; $703f: $91
	and  c                                           ; $7040: $a1
	ld   l, l                                        ; $7041: $6d
	sub  a                                           ; $7042: $97
	dec  c                                           ; $7043: $0d
	ld   l, [hl]                                     ; $7044: $6e
	sub  a                                           ; $7045: $97
	ld   h, l                                        ; $7046: $65
	ld   a, b                                        ; $7047: $78
	ld   d, d                                        ; $7048: $52
	ld   a, b                                        ; $7049: $78
	db   $fc                                         ; $704a: $fc
	rst  $38                                         ; $704b: $ff
	rst  $38                                         ; $704c: $ff
	dec  c                                           ; $704d: $0d
	nop                                              ; $704e: $00
	ld   a, [bc]                                     ; $704f: $0a
	inc  e                                           ; $7050: $1c
	inc  b                                           ; $7051: $04
	ld   [bc], a                                     ; $7052: $02
	ld   [bc], a                                     ; $7053: $02
	ld   bc, $5256                                   ; $7054: $01 $56 $52
	ld   a, [$000d]                                  ; $7057: $fa $0d $00
	ld   a, [bc]                                     ; $705a: $0a
	inc  c                                           ; $705b: $0c
	ld   a, [bc]                                     ; $705c: $0a
	ld   sp, $2040                                   ; $705d: $31 $40 $20
	inc  bc                                          ; $7060: $03
	jr   nz, jr_046_7064                             ; $7061: $20 $01

	rst  $38                                         ; $7063: $ff

jr_046_7064:
	jr   z, jr_046_7066                              ; $7064: $28 $00

jr_046_7066:
	rrca                                             ; $7066: $0f
	nop                                              ; $7067: $00
	ld   bc, $0101                                   ; $7068: $01 $01 $01
	inc  bc                                          ; $706b: $03
	inc  b                                           ; $706c: $04
	dec  c                                           ; $706d: $0d
	dec  b                                           ; $706e: $05
	ld   a, [bc]                                     ; $706f: $0a
	ld   e, d                                        ; $7070: $5a
	ld   [bc], a                                     ; $7071: $02
	sub  e                                           ; $7072: $93
	inc  b                                           ; $7073: $04
	ld   a, h                                        ; $7074: $7c
	ld   h, l                                        ; $7075: $65
	ld   l, l                                        ; $7076: $6d
	ld   a, [$0401]                                  ; $7077: $fa $01 $04
	dec  c                                           ; $707a: $0d
	nop                                              ; $707b: $00
	ld   a, [bc]                                     ; $707c: $0a
	inc  e                                           ; $707d: $1c
	inc  b                                           ; $707e: $04
	ld   bc, $0101                                   ; $707f: $01 $01 $01
	ld   a, l                                        ; $7082: $7d
	ld   d, d                                        ; $7083: $52
	sbc  [hl]                                        ; $7084: $9e
	ld   h, c                                        ; $7085: $61
	sbc  d                                           ; $7086: $9a
	ld   [hl], l                                     ; $7087: $75
	dec  c                                           ; $7088: $0d
	ld   [hl], d                                     ; $7089: $72
	ld   e, c                                        ; $708a: $59
	sbc  d                                           ; $708b: $9a
	sub  b                                           ; $708c: $90
	halt                                             ; $708d: $76
	sbc  d                                           ; $708e: $9a
	ld   l, l                                        ; $708f: $6d
	ld   [hl], l                                     ; $7090: $75
	ld   h, l                                        ; $7091: $65
	sub  l                                           ; $7092: $95
	ld   sp, hl                                      ; $7093: $f9
	dec  c                                           ; $7094: $0d
	nop                                              ; $7095: $00
	ld   a, [bc]                                     ; $7096: $0a
	nop                                              ; $7097: $00
	rrca                                             ; $7098: $0f
	nop                                              ; $7099: $00
	ld   bc, $0501                                   ; $709a: $01 $01 $05
	inc  de                                          ; $709d: $13
	ld   h, l                                        ; $709e: $65
	ld   e, c                                        ; $709f: $59
	ld   [hl], c                                     ; $70a0: $71
	ld   l, l                                        ; $70a1: $6d
	sub  [hl]                                        ; $70a2: $96
	sbc  a                                           ; $70a3: $9f
	dec  c                                           ; $70a4: $0d
	nop                                              ; $70a5: $00
	ld   a, [bc]                                     ; $70a6: $0a
	inc  e                                           ; $70a7: $1c
	inc  b                                           ; $70a8: $04
	dec  b                                           ; $70a9: $05
	dec  b                                           ; $70aa: $05
	dec  e                                           ; $70ab: $1d
	ld   b, b                                        ; $70ac: $40
	inc  d                                           ; $70ad: $14
	inc  bc                                          ; $70ae: $03
	inc  d                                           ; $70af: $14
	ld   bc, $2802                                   ; $70b0: $01 $02 $28
	nop                                              ; $70b3: $00
	ld   bc, $d9a9                                   ; $70b4: $01 $a9 $d9
	reti                                             ; $70b7: $d9


	rst  $38                                         ; $70b8: $ff
	rst  $38                                         ; $70b9: $ff
	dec  c                                           ; $70ba: $0d
	ld   [hl], a                                     ; $70bb: $77
	ld   d, h                                        ; $70bc: $54
	ld   d, d                                        ; $70bd: $52
	ld   l, l                                        ; $70be: $6d
	ld   h, l                                        ; $70bf: $65
	adc  h                                           ; $70c0: $8c
	ld   h, l                                        ; $70c1: $65
	ld   [hl], h                                     ; $70c2: $74
	sbc  a                                           ; $70c3: $9f
	dec  c                                           ; $70c4: $0d
	nop                                              ; $70c5: $00
	ld   a, [bc]                                     ; $70c6: $0a
	nop                                              ; $70c7: $00
	rrca                                             ; $70c8: $0f
	nop                                              ; $70c9: $00
	ld   bc, $0101                                   ; $70ca: $01 $01 $01
	inc  bc                                          ; $70cd: $03
	ld   [bc], a                                     ; $70ce: $02
	dec  e                                           ; $70cf: $1d
	inc  b                                           ; $70d0: $04
	ld   b, a                                        ; $70d1: $47
	ld   l, [hl]                                     ; $70d2: $6e
	ld   [hl], c                                     ; $70d3: $71
	ld   l, l                                        ; $70d4: $6d
	ld   a, h                                        ; $70d5: $7c
	ld   e, c                                        ; $70d6: $59
	ld   sp, hl                                      ; $70d7: $f9
	dec  c                                           ; $70d8: $0d
	db   $10                                         ; $70d9: $10
	ld   d, b                                        ; $70da: $50
	sbc  d                                           ; $70db: $9a
	ld   e, d                                        ; $70dc: $5a
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	ld   bc, $0d04                                   ; $70df: $01 $04 $0d
	nop                                              ; $70e2: $00
	ld   a, [bc]                                     ; $70e3: $0a
	inc  e                                           ; $70e4: $1c
	inc  b                                           ; $70e5: $04
	rlca                                             ; $70e6: $07
	rlca                                             ; $70e7: $07
	dec  e                                           ; $70e8: $1d
	ld   b, b                                        ; $70e9: $40
	inc  d                                           ; $70ea: $14
	inc  bc                                          ; $70eb: $03
	inc  d                                           ; $70ec: $14
	ld   bc, $2902                                   ; $70ed: $01 $02 $29
	nop                                              ; $70f0: $00
	ld   bc, $9e50                                   ; $70f1: $01 $50 $9e
	ld   h, a                                        ; $70f4: $67
	ld   h, d                                        ; $70f5: $62
	ld   e, l                                        ; $70f6: $5d
	add  e                                           ; $70f7: $83
	adc  h                                           ; $70f8: $8c
	and  c                                           ; $70f9: $a1
	ld   l, e                                        ; $70fa: $6b
	ld   d, h                                        ; $70fb: $54
	ld   a, b                                        ; $70fc: $78
	dec  c                                           ; $70fd: $0d
	ld   e, c                                        ; $70fe: $59
	ld   e, b                                        ; $70ff: $58
	ld   h, l                                        ; $7100: $65
	ld   [hl], h                                     ; $7101: $74
	sbc  c                                           ; $7102: $99
	rst  $38                                         ; $7103: $ff
	rst  $38                                         ; $7104: $ff
	dec  c                                           ; $7105: $0d
	nop                                              ; $7106: $00
	ld   a, [bc]                                     ; $7107: $0a
	ld   bc, $7169                                   ; $7108: $01 $69 $71
	ld   e, c                                        ; $710b: $59
	ld   e, l                                        ; $710c: $5d
	ld   d, b                                        ; $710d: $50
	and  c                                           ; $710e: $a1
	ld   a, b                                        ; $710f: $78
	ld   d, d                                        ; $7110: $52
	ld   h, l                                        ; $7111: $65
	ld   [hl], h                                     ; $7112: $74
	ld   d, b                                        ; $7113: $50
	ld   h, b                                        ; $7114: $60
	ld   l, l                                        ; $7115: $6d
	dec  c                                           ; $7116: $0d
	ld   a, h                                        ; $7117: $7c
	ld   a, c                                        ; $7118: $79
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	sub  b                                           ; $711b: $90
	ld   d, h                                        ; $711c: $54
	ld   h, l                                        ; $711d: $65
	sub  a                                           ; $711e: $97
	ld   a, b                                        ; $711f: $78
	ld   d, d                                        ; $7120: $52
	ld   a, [$000d]                                  ; $7121: $fa $0d $00
	ld   a, [bc]                                     ; $7124: $0a
	dec  c                                           ; $7125: $0d
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	rrca                                             ; $7128: $0f
	nop                                              ; $7129: $00
	ld   bc, $1e09                                   ; $712a: $01 $09 $1e
	nop                                              ; $712d: $00
	inc  e                                           ; $712e: $1c
	inc  b                                           ; $712f: $04
	inc  bc                                          ; $7130: $03
	inc  bc                                          ; $7131: $03
	ld   bc, $ffff                                   ; $7132: $01 $ff $ff
	ld   h, [hl]                                     ; $7135: $66
	sub  c                                           ; $7136: $91
	sbc  [hl]                                        ; $7137: $9e
	ld   a, b                                        ; $7138: $78
	ld   a, c                                        ; $7139: $79
	ld   e, c                                        ; $713a: $59
	sbc  l                                           ; $713b: $9d
	ld   e, c                                        ; $713c: $59
	sub  a                                           ; $713d: $97
	ld   a, b                                        ; $713e: $78
	ld   d, d                                        ; $713f: $52
	dec  c                                           ; $7140: $0d
	ld   h, c                                        ; $7141: $61
	halt                                             ; $7142: $76
	ld   e, d                                        ; $7143: $5a
	ld   d, b                                        ; $7144: $50
	ld   [hl], c                                     ; $7145: $71
	ld   l, l                                        ; $7146: $6d
	sub  a                                           ; $7147: $97
	sbc  [hl]                                        ; $7148: $9e
	and  e                                           ; $7149: $a3
	and  l                                           ; $714a: $a5
	db   $ec                                         ; $714b: $ec
	cp   d                                           ; $714c: $ba
	ld   a, c                                        ; $714d: $79
	dec  c                                           ; $714e: $0d
	ld   e, e                                        ; $714f: $5b
	ld   d, d                                        ; $7150: $52
	ld   [hl], h                                     ; $7151: $74
	ld   a, e                                        ; $7152: $7b
	rst  $38                                         ; $7153: $ff
	rst  $38                                         ; $7154: $ff
	dec  c                                           ; $7155: $0d
	nop                                              ; $7156: $00
	ld   a, [bc]                                     ; $7157: $0a
	dec  c                                           ; $7158: $0d
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	rrca                                             ; $715b: $0f
	nop                                              ; $715c: $00
	ld   bc, $1e09                                   ; $715d: $01 $09 $1e
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	ld   [bc], a                                     ; $7162: $02
	nop                                              ; $7163: $00
	ld   bc, $1c01                                   ; $7164: $01 $01 $1c
	ld   bc, $2000                                   ; $7167: $01 $00 $20
	ld   [bc], a                                     ; $716a: $02
	nop                                              ; $716b: $00
	ld   bc, $2c07                                   ; $716c: $01 $07 $2c
	ld   bc, $2101                                   ; $716f: $01 $01 $21
	inc  e                                           ; $7172: $1c
	ld   [bc], a                                     ; $7173: $02
	nop                                              ; $7174: $00
	inc  bc                                          ; $7175: $03
	ld   d, h                                        ; $7176: $54
	inc  hl                                          ; $7177: $23
	inc  e                                           ; $7178: $1c
	nop                                              ; $7179: $00
	ld   [bc], a                                     ; $717a: $02
	ld   l, $08                                      ; $717b: $2e $08
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	dec  c                                           ; $717f: $0d
	dec  b                                           ; $7180: $05
	nop                                              ; $7181: $00
	rrca                                             ; $7182: $0f
	nop                                              ; $7183: $00
	ld   bc, $0102                                   ; $7184: $01 $02 $01
	ld   [bc], a                                     ; $7187: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7188: $cf
	dec  b                                           ; $7189: $05
	ld   a, [de]                                     ; $718a: $1a
	ld   h, e                                        ; $718b: $63
	and  c                                           ; $718c: $a1
	sbc  a                                           ; $718d: $9f
	dec  c                                           ; $718e: $0d
	ld   e, b                                        ; $718f: $58
	inc  b                                           ; $7190: $04
	ld   a, e                                        ; $7191: $7b
	sbc  d                                           ; $7192: $9a
	ld   h, e                                        ; $7193: $63
	adc  h                                           ; $7194: $8c
	ld   [hl], l                                     ; $7195: $75
	ld   h, a                                        ; $7196: $67
	sbc  a                                           ; $7197: $9f
	dec  c                                           ; $7198: $0d
	nop                                              ; $7199: $00
	ld   a, [bc]                                     ; $719a: $0a
	inc  e                                           ; $719b: $1c
	dec  b                                           ; $719c: $05
	ld   bc, $0101                                   ; $719d: $01 $01 $01
	ld   [$7d00], sp                                 ; $71a0: $08 $00 $7d
	and  c                                           ; $71a3: $a1
	sbc  a                                           ; $71a4: $9f
	dec  c                                           ; $71a5: $0d
	ld   l, a                                        ; $71a6: $6f
	sub  l                                           ; $71a7: $95
	ld   d, h                                        ; $71a8: $54
	ld   [hl], a                                     ; $71a9: $77
	sub  [hl]                                        ; $71aa: $96
	ld   e, c                                        ; $71ab: $59
	ld   [hl], c                                     ; $71ac: $71
	ld   l, l                                        ; $71ad: $6d
	sbc  l                                           ; $71ae: $9d
	sbc  a                                           ; $71af: $9f
	dec  c                                           ; $71b0: $0d
	nop                                              ; $71b1: $00
	ld   a, [bc]                                     ; $71b2: $0a
	ld   bc, $5996                                   ; $71b3: $01 $96 $59
	ld   [hl], c                                     ; $71b6: $71
	ld   l, l                                        ; $71b7: $6d
	sub  a                                           ; $71b8: $97
	inc  b                                           ; $71b9: $04
	ld   [$9202], sp                                 ; $71ba: $08 $02 $92
	ld   a, h                                        ; $71bd: $7c
	inc  b                                           ; $71be: $04
	dec  bc                                          ; $71bf: $0b
	and  b                                           ; $71c0: $a0
	dec  c                                           ; $71c1: $0d
	ld   [bc], a                                     ; $71c2: $02
	dec  e                                           ; $71c3: $1d
	inc  b                                           ; $71c4: $04
	ld   b, a                                        ; $71c5: $47
	ld   h, l                                        ; $71c6: $65
	ld   l, l                                        ; $71c7: $6d
	sbc  e                                           ; $71c8: $9b
	ld   e, c                                        ; $71c9: $59
	ld   sp, hl                                      ; $71ca: $f9
	dec  c                                           ; $71cb: $0d
	nop                                              ; $71cc: $00
	ld   a, [bc]                                     ; $71cd: $0a
	add  hl, de                                      ; $71ce: $19
	dec  b                                           ; $71cf: $05
	ld   [bc], a                                     ; $71d0: $02
	ld   [bc], a                                     ; $71d1: $02
	dec  e                                           ; $71d2: $1d
	inc  b                                           ; $71d3: $04
	ld   b, a                                        ; $71d4: $47
	ld   h, l                                        ; $71d5: $65
	ld   [hl], h                                     ; $71d6: $74
	sub  b                                           ; $71d7: $90
	sub  a                                           ; $71d8: $97
	ld   d, h                                        ; $71d9: $54
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	ld   d, [hl]                                     ; $71dc: $56
	and  c                                           ; $71dd: $a1
	sbc  b                                           ; $71de: $98
	sub  l                                           ; $71df: $95
	ld   h, a                                        ; $71e0: $67
	sbc  c                                           ; $71e1: $99
	nop                                              ; $71e2: $00
	ld   bc, $7a07                                   ; $71e3: $01 $07 $7a
	nop                                              ; $71e6: $00
	ld   [bc], a                                     ; $71e7: $02
	inc  bc                                          ; $71e8: $03
	ld   bc, $2000                                   ; $71e9: $01 $00 $20
	nop                                              ; $71ec: $00
	rlca                                             ; $71ed: $07
	or   d                                           ; $71ee: $b2
	nop                                              ; $71ef: $00
	ld   [bc], a                                     ; $71f0: $02
	inc  bc                                          ; $71f1: $03
	ld   bc, $2001                                   ; $71f2: $01 $01 $20
	nop                                              ; $71f5: $00
	ld   b, $fe                                      ; $71f6: $06 $fe
	nop                                              ; $71f8: $00
	rrca                                             ; $71f9: $0f
	nop                                              ; $71fa: $00
	ld   bc, $9601                                   ; $71fb: $01 $01 $96
	sbc  e                                           ; $71fe: $9b
	ld   h, l                                        ; $71ff: $65
	ld   e, l                                        ; $7200: $5d
	ld   e, b                                        ; $7201: $58
	ld   [bc], a                                     ; $7202: $02
	add  b                                           ; $7203: $80
	ld   d, d                                        ; $7204: $52
	ld   h, l                                        ; $7205: $65
	adc  h                                           ; $7206: $8c
	ld   h, a                                        ; $7207: $67
	dec  c                                           ; $7208: $0d
	nop                                              ; $7209: $00
	ld   a, [bc]                                     ; $720a: $0a
	inc  e                                           ; $720b: $1c
	dec  b                                           ; $720c: $05
	ld   bc, $1d01                                   ; $720d: $01 $01 $1d
	ld   b, b                                        ; $7210: $40
	dec  d                                           ; $7211: $15
	inc  bc                                          ; $7212: $03
	dec  d                                           ; $7213: $15
	ld   bc, $2801                                   ; $7214: $01 $01 $28
	nop                                              ; $7217: $00
	ld   bc, $7196                                   ; $7218: $01 $96 $71
	ld   h, l                                        ; $721b: $65
	sub  c                                           ; $721c: $91
	sbc  [hl]                                        ; $721d: $9e
	adc  c                                           ; $721e: $89
	ld   a, b                                        ; $721f: $78
	ld   [bc], a                                     ; $7220: $02
	ld   a, a                                        ; $7221: $7f
	ld   h, c                                        ; $7222: $61
	ld   e, c                                        ; $7223: $59
	sbc  a                                           ; $7224: $9f
	dec  c                                           ; $7225: $0d
	nop                                              ; $7226: $00
	ld   a, [bc]                                     ; $7227: $0a
	dec  c                                           ; $7228: $0d
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	rrca                                             ; $722b: $0f
	nop                                              ; $722c: $00
	ld   bc, $3706                                   ; $722d: $01 $06 $37
	ld   bc, $000f                                   ; $7230: $01 $0f $00
	ld   bc, $5001                                   ; $7233: $01 $01 $50
	sbc  [hl]                                        ; $7236: $9e
	ld   e, a                                        ; $7237: $5f
	ld   [hl], c                                     ; $7238: $71
	ld   h, c                                        ; $7239: $61
	ld   d, h                                        ; $723a: $54
	ld   [hl], l                                     ; $723b: $75
	ld   h, a                                        ; $723c: $67
	sbc  a                                           ; $723d: $9f
	dec  c                                           ; $723e: $0d
	inc  bc                                          ; $723f: $03
	sub  h                                           ; $7240: $94
	inc  b                                           ; $7241: $04
	sbc  [hl]                                        ; $7242: $9e
	ld   [hl], l                                     ; $7243: $75
	ld   [bc], a                                     ; $7244: $02
	sub  l                                           ; $7245: $95
	ld   [hl], h                                     ; $7246: $74
	adc  h                                           ; $7247: $8c
	sbc  l                                           ; $7248: $9d
	sbc  b                                           ; $7249: $98
	adc  h                                           ; $724a: $8c
	ld   h, a                                        ; $724b: $67
	ld   e, c                                        ; $724c: $59
	sub  a                                           ; $724d: $97
	rst  $38                                         ; $724e: $ff
	rst  $38                                         ; $724f: $ff
	dec  c                                           ; $7250: $0d
	nop                                              ; $7251: $00
	ld   a, [bc]                                     ; $7252: $0a
	inc  e                                           ; $7253: $1c
	dec  b                                           ; $7254: $05
	ld   [bc], a                                     ; $7255: $02
	ld   [bc], a                                     ; $7256: $02
	dec  e                                           ; $7257: $1d
	ld   b, b                                        ; $7258: $40
	dec  d                                           ; $7259: $15
	inc  bc                                          ; $725a: $03
	dec  d                                           ; $725b: $15
	ld   bc, $2901                                   ; $725c: $01 $01 $29
	nop                                              ; $725f: $00
	ld   bc, $546b                                   ; $7260: $01 $6b $54
	ld   e, c                                        ; $7263: $59
	rst  $38                                         ; $7264: $ff
	rst  $38                                         ; $7265: $ff
	dec  c                                           ; $7266: $0d
	adc  c                                           ; $7267: $89
	ld   a, b                                        ; $7268: $78
	sbc  [hl]                                        ; $7269: $9e
	adc  h                                           ; $726a: $8c
	ld   l, l                                        ; $726b: $6d
	ld   [bc], a                                     ; $726c: $02
	xor  d                                           ; $726d: $aa
	ld   [hl], l                                     ; $726e: $75
	ld   a, b                                        ; $726f: $78
	sbc  a                                           ; $7270: $9f
	dec  c                                           ; $7271: $0d
	nop                                              ; $7272: $00
	ld   a, [bc]                                     ; $7273: $0a
	dec  c                                           ; $7274: $0d
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	rrca                                             ; $7277: $0f
	nop                                              ; $7278: $00
	ld   bc, $1e09                                   ; $7279: $01 $09 $1e
	nop                                              ; $727c: $00
	inc  e                                           ; $727d: $1c
	dec  b                                           ; $727e: $05
	ld   [bc], a                                     ; $727f: $02
	ld   [bc], a                                     ; $7280: $02
	dec  e                                           ; $7281: $1d
	ld   b, b                                        ; $7282: $40
	dec  d                                           ; $7283: $15
	inc  bc                                          ; $7284: $03
	dec  d                                           ; $7285: $15
	ld   bc, $2902                                   ; $7286: $01 $02 $29
	nop                                              ; $7289: $00
	ld   bc, $ffff                                   ; $728a: $01 $ff $ff
	add  a                                           ; $728d: $87
	ld   [hl], d                                     ; $728e: $72
	ld   a, c                                        ; $728f: $79
	and  l                                           ; $7290: $a5
	and  $78                                         ; $7291: $e6 $78
	sub  a                                           ; $7293: $97
	ld   h, c                                        ; $7294: $61
	halt                                             ; $7295: $76
	sbc  l                                           ; $7296: $9d
	ld   [hl], c                                     ; $7297: $71
	ld   [hl], h                                     ; $7298: $74
	dec  c                                           ; $7299: $0d
	ld   e, l                                        ; $729a: $5d
	sbc  d                                           ; $729b: $9a
	ld   [hl], h                                     ; $729c: $74
	sub  b                                           ; $729d: $90
	ld   d, [hl]                                     ; $729e: $56
	ld   d, [hl]                                     ; $729f: $56
	ld   a, e                                        ; $72a0: $7b
	and  c                                           ; $72a1: $a1
	ld   [hl], l                                     ; $72a2: $75
	rst  $38                                         ; $72a3: $ff
	rst  $38                                         ; $72a4: $ff
	dec  c                                           ; $72a5: $0d
	adc  c                                           ; $72a6: $89
	ld   a, b                                        ; $72a7: $78
	ld   a, b                                        ; $72a8: $78
	sbc  a                                           ; $72a9: $9f
	dec  c                                           ; $72aa: $0d
	nop                                              ; $72ab: $00
	ld   a, [bc]                                     ; $72ac: $0a
	dec  c                                           ; $72ad: $0d
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	rrca                                             ; $72b0: $0f
	nop                                              ; $72b1: $00
	ld   bc, $1e09                                   ; $72b2: $01 $09 $1e
	nop                                              ; $72b5: $00
	inc  hl                                          ; $72b6: $23
	ld   [hl], c                                     ; $72b7: $71
	rrca                                             ; $72b8: $0f
	dec  b                                           ; $72b9: $05
	dec  b                                           ; $72ba: $05
	ld   bc, $6161                                   ; $72bb: $01 $61 $61
	ld   e, d                                        ; $72be: $5a
	inc  bc                                          ; $72bf: $03
	adc  $02                                         ; $72c0: $ce $02
	inc  [hl]                                        ; $72c2: $34
	ld   [bc], a                                     ; $72c3: $02
	cp   $02                                         ; $72c4: $fe $02
	ld   e, c                                        ; $72c6: $59
	sub  d                                           ; $72c7: $92
	sbc  a                                           ; $72c8: $9f
	dec  c                                           ; $72c9: $0d
	and  a                                           ; $72ca: $a7
	jp   nz, $037c                                   ; $72cb: $c2 $7c $03

	xor  h                                           ; $72ce: $ac
	ld   [hl], c                                     ; $72cf: $71
	ld   l, l                                        ; $72d0: $6d
	sbc  [hl]                                        ; $72d1: $9e
	inc  b                                           ; $72d2: $04
	ld   e, [hl]                                     ; $72d3: $5e
	inc  b                                           ; $72d4: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72d5: $cf
	inc  b                                           ; $72d6: $04
	ld   h, c                                        ; $72d7: $61
	ld   e, d                                        ; $72d8: $5a
	dec  c                                           ; $72d9: $0d
	inc  bc                                          ; $72da: $03
	ld   e, b                                        ; $72db: $58
	dec  b                                           ; $72dc: $05
	ret  nz                                          ; $72dd: $c0

	adc  l                                           ; $72de: $8d
	ld   a, c                                        ; $72df: $79
	ld   a, b                                        ; $72e0: $78
	ld   [hl], c                                     ; $72e1: $71
	ld   [hl], h                                     ; $72e2: $74
	sbc  c                                           ; $72e3: $99
	and  c                                           ; $72e4: $a1
	sub  d                                           ; $72e5: $92
	sbc  a                                           ; $72e6: $9f
	dec  c                                           ; $72e7: $0d
	nop                                              ; $72e8: $00
	ld   a, [bc]                                     ; $72e9: $0a
	rrca                                             ; $72ea: $0f
	nop                                              ; $72eb: $00
	ld   bc, $050d                                   ; $72ec: $01 $0d $05
	dec  b                                           ; $72ef: $05
	ld   bc, $5803                                   ; $72f0: $01 $03 $58
	dec  b                                           ; $72f3: $05
	ret  nz                                          ; $72f4: $c0

	adc  l                                           ; $72f5: $8d
	halt                                             ; $72f6: $76
	ld   [bc], a                                     ; $72f7: $02
	sbc  l                                           ; $72f8: $9d
	ld   d, h                                        ; $72f9: $54
	ld   h, c                                        ; $72fa: $61
	halt                                             ; $72fb: $76
	ld   a, l                                        ; $72fc: $7d
	sbc  [hl]                                        ; $72fd: $9e
	dec  c                                           ; $72fe: $0d
	ld   d, d                                        ; $72ff: $52
	ld   [hl], c                                     ; $7300: $71
	ld   a, a                                        ; $7301: $7f
	ld   d, d                                        ; $7302: $52
	ld   d, b                                        ; $7303: $50
	sbc  c                                           ; $7304: $99
	and  c                                           ; $7305: $a1
	ld   [hl], l                                     ; $7306: $75
	ld   h, a                                        ; $7307: $67
	ld   a, e                                        ; $7308: $7b
	rst  $38                                         ; $7309: $ff
	rst  $38                                         ; $730a: $ff
	dec  c                                           ; $730b: $0d
	nop                                              ; $730c: $00
	ld   a, [bc]                                     ; $730d: $0a
	add  hl, de                                      ; $730e: $19
	dec  b                                           ; $730f: $05
	inc  bc                                          ; $7310: $03
	xor  l                                           ; $7311: $ad
	db   $eb                                         ; $7312: $eb
	or   b                                           ; $7313: $b0
	ret  nz                                          ; $7314: $c0

	ld   e, d                                        ; $7315: $5a
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	cp   d                                           ; $731a: $ba
	or   l                                           ; $731b: $b5
	and  l                                           ; $731c: $a5
	inc  bc                                          ; $731d: $03
	pop  bc                                          ; $731e: $c1
	ld   a, h                                        ; $731f: $7c
	inc  b                                           ; $7320: $04
	ld   e, [hl]                                     ; $7321: $5e
	inc  b                                           ; $7322: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7323: $cf
	inc  b                                           ; $7324: $04
	ld   h, c                                        ; $7325: $61
	ld   e, d                                        ; $7326: $5a
	rst  $38                                         ; $7327: $ff
	rst  $38                                         ; $7328: $ff
	nop                                              ; $7329: $00
	ld   bc, $b904                                   ; $732a: $01 $04 $b9
	sbc  d                                           ; $732d: $9a
	ld   [hl], h                                     ; $732e: $74
	ld   e, e                                        ; $732f: $5b
	adc  h                                           ; $7330: $8c
	ld   l, c                                        ; $7331: $69
	and  c                                           ; $7332: $a1
	ld   e, c                                        ; $7333: $59
	ld   sp, hl                                      ; $7334: $f9
	nop                                              ; $7335: $00
	ld   [bc], a                                     ; $7336: $02
	rlca                                             ; $7337: $07
	sub  $01                                         ; $7338: $d6 $01
	ld   [bc], a                                     ; $733a: $02
	inc  bc                                          ; $733b: $03
	ld   bc, $2000                                   ; $733c: $01 $00 $20
	nop                                              ; $733f: $00
	rlca                                             ; $7340: $07
	ld   e, l                                        ; $7341: $5d
	ld   [bc], a                                     ; $7342: $02
	ld   [bc], a                                     ; $7343: $02
	inc  bc                                          ; $7344: $03
	ld   bc, $2001                                   ; $7345: $01 $01 $20
	nop                                              ; $7348: $00
	rlca                                             ; $7349: $07
	or   $02                                         ; $734a: $f6 $02
	ld   [bc], a                                     ; $734c: $02
	inc  bc                                          ; $734d: $03
	ld   bc, $2002                                   ; $734e: $01 $02 $20
	nop                                              ; $7351: $00
	ld   b, $40                                      ; $7352: $06 $40
	inc  bc                                          ; $7354: $03
	rrca                                             ; $7355: $0f
	nop                                              ; $7356: $00
	ld   bc, $0301                                   ; $7357: $01 $01 $03
	ld   e, b                                        ; $735a: $58
	dec  b                                           ; $735b: $05
	ret  nz                                          ; $735c: $c0

	adc  l                                           ; $735d: $8d
	halt                                             ; $735e: $76
	ld   [bc], a                                     ; $735f: $02
	sbc  l                                           ; $7360: $9d
	ld   d, h                                        ; $7361: $54
	ld   h, c                                        ; $7362: $61
	halt                                             ; $7363: $76
	ld   a, l                                        ; $7364: $7d
	rst  $38                                         ; $7365: $ff
	rst  $38                                         ; $7366: $ff
	dec  c                                           ; $7367: $0d
	ld   d, d                                        ; $7368: $52
	ld   [hl], c                                     ; $7369: $71
	ld   a, a                                        ; $736a: $7f
	ld   d, d                                        ; $736b: $52
	ld   d, b                                        ; $736c: $50
	sbc  c                                           ; $736d: $99
	and  c                                           ; $736e: $a1
	ld   [hl], l                                     ; $736f: $75
	ld   h, a                                        ; $7370: $67
	ld   a, e                                        ; $7371: $7b
	sbc  [hl]                                        ; $7372: $9e
	dec  c                                           ; $7373: $0d
	xor  l                                           ; $7374: $ad
	db   $eb                                         ; $7375: $eb
	or   b                                           ; $7376: $b0
	ret  nz                                          ; $7377: $c0

	ld   e, d                                        ; $7378: $5a
	rst  $38                                         ; $7379: $ff
	rst  $38                                         ; $737a: $ff
	dec  c                                           ; $737b: $0d
	nop                                              ; $737c: $00
	ld   a, [bc]                                     ; $737d: $0a
	inc  e                                           ; $737e: $1c
	dec  b                                           ; $737f: $05
	rlca                                             ; $7380: $07
	rlca                                             ; $7381: $07
	dec  e                                           ; $7382: $1d
	ld   b, b                                        ; $7383: $40
	dec  d                                           ; $7384: $15
	inc  bc                                          ; $7385: $03
	dec  d                                           ; $7386: $15
	ld   bc, $2903                                   ; $7387: $01 $03 $29
	nop                                              ; $738a: $00
	ld   bc, $8303                                   ; $738b: $01 $03 $83
	dec  b                                           ; $738e: $05
	dec  c                                           ; $738f: $0d
	ld   a, b                                        ; $7390: $78
	ld   h, c                                        ; $7391: $61
	halt                                             ; $7392: $76
	ld   [bc], a                                     ; $7393: $02
	sbc  l                                           ; $7394: $9d
	ld   d, h                                        ; $7395: $54
	sub  d                                           ; $7396: $92
	ld   [hl], c                                     ; $7397: $71
	ld   l, a                                        ; $7398: $6f
	sub  c                                           ; $7399: $91
	ld   a, b                                        ; $739a: $78
	db   $fc                                         ; $739b: $fc
	sbc  a                                           ; $739c: $9f
	dec  c                                           ; $739d: $0d
	ld   h, c                                        ; $739e: $61
	ld   a, h                                        ; $739f: $7c
	ld   h, a                                        ; $73a0: $67
	ld   a, [hl]                                     ; $73a1: $7e
	sub  a                                           ; $73a2: $97
	ld   h, l                                        ; $73a3: $65
	ld   d, d                                        ; $73a4: $52
	inc  b                                           ; $73a5: $04
	ld   e, [hl]                                     ; $73a6: $5e
	inc  b                                           ; $73a7: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73a8: $cf
	inc  b                                           ; $73a9: $04
	ld   h, c                                        ; $73aa: $61
	ld   l, l                                        ; $73ab: $6d
	ld   l, a                                        ; $73ac: $6f
	ld   e, d                                        ; $73ad: $5a
	dec  c                                           ; $73ae: $0d
	ld   a, b                                        ; $73af: $78
	and  c                                           ; $73b0: $a1
	ld   [hl], l                                     ; $73b1: $75
	xor  l                                           ; $73b2: $ad
	db   $eb                                         ; $73b3: $eb
	or   b                                           ; $73b4: $b0
	ret  nz                                          ; $73b5: $c0

	sub  d                                           ; $73b6: $92
	ld   a, e                                        ; $73b7: $7b
	and  c                                           ; $73b8: $a1
	ld   a, [$000d]                                  ; $73b9: $fa $0d $00
	ld   a, [bc]                                     ; $73bc: $0a
	ld   bc, $718c                                   ; $73bd: $01 $8c $71
	ld   l, l                                        ; $73c0: $6d
	ld   e, l                                        ; $73c1: $5d
	sub  b                                           ; $73c2: $90
	ei                                               ; $73c3: $fb
	ld   a, [$890d]                                  ; $73c4: $fa $0d $89
	ld   a, b                                        ; $73c7: $78
	sbc  [hl]                                        ; $73c8: $9e
	ld   [hl], d                                     ; $73c9: $72
	ld   e, h                                        ; $73ca: $5c
	ld   [bc], a                                     ; $73cb: $02
	ld   a, a                                        ; $73cc: $7f
	ld   e, l                                        ; $73cd: $5d
	ld   [hl], l                                     ; $73ce: $75
	sbc  a                                           ; $73cf: $9f
	dec  c                                           ; $73d0: $0d
	nop                                              ; $73d1: $00
	ld   a, [bc]                                     ; $73d2: $0a
	dec  c                                           ; $73d3: $0d
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	rrca                                             ; $73d6: $0f
	nop                                              ; $73d7: $00
	ld   bc, $7a06                                   ; $73d8: $01 $06 $7a
	inc  bc                                          ; $73db: $03
	rrca                                             ; $73dc: $0f
	nop                                              ; $73dd: $00
	ld   bc, $0301                                   ; $73de: $01 $01 $03
	ld   e, b                                        ; $73e1: $58
	dec  b                                           ; $73e2: $05
	ret  nz                                          ; $73e3: $c0

	adc  l                                           ; $73e4: $8d
	halt                                             ; $73e5: $76
	ld   [bc], a                                     ; $73e6: $02
	sbc  l                                           ; $73e7: $9d
	ld   d, h                                        ; $73e8: $54
	ld   h, c                                        ; $73e9: $61
	halt                                             ; $73ea: $76
	ld   a, l                                        ; $73eb: $7d
	rst  $38                                         ; $73ec: $ff
	rst  $38                                         ; $73ed: $ff
	dec  c                                           ; $73ee: $0d
	ld   d, d                                        ; $73ef: $52
	ld   [hl], c                                     ; $73f0: $71
	ld   a, a                                        ; $73f1: $7f
	ld   d, d                                        ; $73f2: $52
	ld   d, b                                        ; $73f3: $50
	sbc  c                                           ; $73f4: $99
	and  c                                           ; $73f5: $a1
	ld   [hl], l                                     ; $73f6: $75
	ld   h, a                                        ; $73f7: $67
	ld   a, e                                        ; $73f8: $7b
	sbc  [hl]                                        ; $73f9: $9e
	dec  c                                           ; $73fa: $0d
	cp   d                                           ; $73fb: $ba
	or   l                                           ; $73fc: $b5
	and  l                                           ; $73fd: $a5
	inc  b                                           ; $73fe: $04
	ld   e, [hl]                                     ; $73ff: $5e
	inc  b                                           ; $7400: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7401: $cf
	inc  b                                           ; $7402: $04
	ld   h, c                                        ; $7403: $61
	ld   a, h                                        ; $7404: $7c
	inc  bc                                          ; $7405: $03
	pop  bc                                          ; $7406: $c1
	ld   bc, $5a14                                   ; $7407: $01 $14 $5a
	rst  $38                                         ; $740a: $ff
	rst  $38                                         ; $740b: $ff
	dec  c                                           ; $740c: $0d
	nop                                              ; $740d: $00
	ld   a, [bc]                                     ; $740e: $0a
	inc  e                                           ; $740f: $1c
	dec  b                                           ; $7410: $05
	dec  b                                           ; $7411: $05
	dec  b                                           ; $7412: $05
	dec  e                                           ; $7413: $1d
	ld   b, b                                        ; $7414: $40
	dec  d                                           ; $7415: $15
	inc  bc                                          ; $7416: $03
	dec  d                                           ; $7417: $15
	ld   bc, $2802                                   ; $7418: $01 $02 $28
	nop                                              ; $741b: $00
	ld   bc, $546b                                   ; $741c: $01 $6b $54
	sub  d                                           ; $741f: $92
	sbc  a                                           ; $7420: $9f
	ld   [hl], l                                     ; $7421: $75
	sub  b                                           ; $7422: $90
	sbc  [hl]                                        ; $7423: $9e
	ld   h, c                                        ; $7424: $61
	ld   h, c                                        ; $7425: $61
	ld   a, c                                        ; $7426: $79
	ld   d, b                                        ; $7427: $50
	sbc  c                                           ; $7428: $99
	ld   a, h                                        ; $7429: $7c
	ld   a, l                                        ; $742a: $7d
	dec  c                                           ; $742b: $0d
	and  a                                           ; $742c: $a7
	jp   nz, $047c                                   ; $742d: $c2 $7c $04

	ld   e, [hl]                                     ; $7430: $5e
	inc  b                                           ; $7431: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7432: $cf
	ld   a, h                                        ; $7433: $7c
	adc  c                                           ; $7434: $89
	and  c                                           ; $7435: $a1
	ld   a, h                                        ; $7436: $7c
	ld   [bc], a                                     ; $7437: $02
	jr   nz, jr_046_743e                             ; $7438: $20 $04

	sub  l                                           ; $743a: $95
	dec  c                                           ; $743b: $0d
	ld   a, b                                        ; $743c: $78
	and  c                                           ; $743d: $a1

jr_046_743e:
	sub  d                                           ; $743e: $92
	sbc  a                                           ; $743f: $9f
	dec  c                                           ; $7440: $0d
	nop                                              ; $7441: $00
	ld   a, [bc]                                     ; $7442: $0a
	ld   bc, wRandomNumStruct                                   ; $7443: $01 $a7 $c2
	ld   a, h                                        ; $7446: $7c
	cp   d                                           ; $7447: $ba
	or   l                                           ; $7448: $b5
	and  l                                           ; $7449: $a5
	inc  b                                           ; $744a: $04
	ld   e, [hl]                                     ; $744b: $5e
	inc  b                                           ; $744c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $744d: $cf
	inc  b                                           ; $744e: $04
	ld   h, c                                        ; $744f: $61
	ld   a, l                                        ; $7450: $7d
	dec  c                                           ; $7451: $0d

Jump_046_7452:
	adc  h                                           ; $7452: $8c
	ld   l, l                                        ; $7453: $6d
	ld   [bc], a                                     ; $7454: $02
	and  l                                           ; $7455: $a5
	inc  b                                           ; $7456: $04
	add  hl, hl                                      ; $7457: $29
	ld   [bc], a                                     ; $7458: $02
	sub  l                                           ; $7459: $95
	ld   l, c                                        ; $745a: $69
	ld   l, l                                        ; $745b: $6d
	sbc  c                                           ; $745c: $99
	sbc  l                                           ; $745d: $9d
	sbc  a                                           ; $745e: $9f
	dec  c                                           ; $745f: $0d
	adc  c                                           ; $7460: $89
	ld   a, b                                        ; $7461: $78
	sbc  [hl]                                        ; $7462: $9e
	ld   [hl], d                                     ; $7463: $72
	ld   e, h                                        ; $7464: $5c
	ld   d, d                                        ; $7465: $52
	ld   h, c                                        ; $7466: $61
	ld   e, c                                        ; $7467: $59
	sbc  a                                           ; $7468: $9f
	dec  c                                           ; $7469: $0d
	nop                                              ; $746a: $00
	ld   a, [bc]                                     ; $746b: $0a
	dec  c                                           ; $746c: $0d
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	rrca                                             ; $746f: $0f
	nop                                              ; $7470: $00
	ld   bc, $7a06                                   ; $7471: $01 $06 $7a
	inc  bc                                          ; $7474: $03
	rrca                                             ; $7475: $0f
	nop                                              ; $7476: $00
	ld   bc, $0401                                   ; $7477: $01 $01 $04
	cp   c                                           ; $747a: $b9
	sbc  d                                           ; $747b: $9a
	ld   [hl], h                                     ; $747c: $74
	ld   e, e                                        ; $747d: $5b
	adc  h                                           ; $747e: $8c
	ld   l, c                                        ; $747f: $69
	and  c                                           ; $7480: $a1
	ld   e, c                                        ; $7481: $59
	ld   sp, hl                                      ; $7482: $f9
	dec  c                                           ; $7483: $0d
	nop                                              ; $7484: $00
	ld   a, [bc]                                     ; $7485: $0a
	inc  e                                           ; $7486: $1c
	dec  b                                           ; $7487: $05
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	ld   bc, $0e04                                   ; $748a: $01 $04 $0e
	inc  bc                                          ; $748d: $03
	sbc  l                                           ; $748e: $9d
	inc  b                                           ; $748f: $04
	and  [hl]                                        ; $7490: $a6
	sub  d                                           ; $7491: $92
	halt                                             ; $7492: $76
	dec  b                                           ; $7493: $05
	pop  de                                          ; $7494: $d1
	ld   d, h                                        ; $7495: $54
	ld   [hl], l                                     ; $7496: $75
	sbc  a                                           ; $7497: $9f
	dec  c                                           ; $7498: $0d
	ld   [bc], a                                     ; $7499: $02
	and  l                                           ; $749a: $a5
	ld   a, h                                        ; $749b: $7c
	halt                                             ; $749c: $76
	ld   h, c                                        ; $749d: $61
	sbc  e                                           ; $749e: $9b
	inc  b                                           ; $749f: $04
	cp   c                                           ; $74a0: $b9
	sbc  d                                           ; $74a1: $9a
	ld   [hl], h                                     ; $74a2: $74
	ld   a, b                                        ; $74a3: $78
	ld   d, d                                        ; $74a4: $52
	ld   h, l                                        ; $74a5: $65
	ld   a, b                                        ; $74a6: $78
	sbc  a                                           ; $74a7: $9f
	dec  c                                           ; $74a8: $0d
	adc  c                                           ; $74a9: $89
	ld   a, b                                        ; $74aa: $78
	sbc  [hl]                                        ; $74ab: $9e
	ld   [hl], d                                     ; $74ac: $72
	ld   e, h                                        ; $74ad: $5c
	ld   [bc], a                                     ; $74ae: $02
	ld   a, a                                        ; $74af: $7f
	ld   h, c                                        ; $74b0: $61
	ld   e, c                                        ; $74b1: $59
	sbc  a                                           ; $74b2: $9f
	dec  c                                           ; $74b3: $0d
	nop                                              ; $74b4: $00
	ld   a, [bc]                                     ; $74b5: $0a
	dec  c                                           ; $74b6: $0d
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	rrca                                             ; $74b9: $0f
	nop                                              ; $74ba: $00
	ld   bc, $7a06                                   ; $74bb: $01 $06 $7a
	inc  bc                                          ; $74be: $03
	inc  e                                           ; $74bf: $1c
	dec  b                                           ; $74c0: $05
	dec  b                                           ; $74c1: $05
	dec  b                                           ; $74c2: $05
	ld   bc, $6267                                   ; $74c3: $01 $67 $62
	ld   h, a                                        ; $74c6: $67
	ld   e, h                                        ; $74c7: $5c
	ld   [hl], h                                     ; $74c8: $74
	sbc  [hl]                                        ; $74c9: $9e
	inc  bc                                          ; $74ca: $03
	and  l                                           ; $74cb: $a5
	sub  b                                           ; $74cc: $90
	inc  bc                                          ; $74cd: $03
	add  b                                           ; $74ce: $80
	ld   d, [hl]                                     ; $74cf: $56
	add  [hl]                                        ; $74d0: $86
	and  c                                           ; $74d1: $a1
	dec  c                                           ; $74d2: $0d
	adc  l                                           ; $74d3: $8d
	ld   l, l                                        ; $74d4: $6d
	ld   d, d                                        ; $74d5: $52
	sub  d                                           ; $74d6: $92
	ld   a, b                                        ; $74d7: $78
	sbc  a                                           ; $74d8: $9f
	dec  c                                           ; $74d9: $0d
	nop                                              ; $74da: $00
	ld   a, [bc]                                     ; $74db: $0a
	ld   bc, $7196                                   ; $74dc: $01 $96 $71
	ld   h, l                                        ; $74df: $65
	sub  c                                           ; $74e0: $91
	sbc  a                                           ; $74e1: $9f
	dec  c                                           ; $74e2: $0d
	adc  c                                           ; $74e3: $89
	ld   a, b                                        ; $74e4: $78
	sbc  [hl]                                        ; $74e5: $9e
	ld   [hl], d                                     ; $74e6: $72
	ld   e, h                                        ; $74e7: $5c
	ld   [bc], a                                     ; $74e8: $02
	ld   a, a                                        ; $74e9: $7f
	ld   h, c                                        ; $74ea: $61
	ld   e, c                                        ; $74eb: $59
	sbc  a                                           ; $74ec: $9f
	dec  c                                           ; $74ed: $0d
	nop                                              ; $74ee: $00
	ld   a, [bc]                                     ; $74ef: $0a
	dec  c                                           ; $74f0: $0d
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	rrca                                             ; $74f3: $0f
	nop                                              ; $74f4: $00
	ld   bc, $7a06                                   ; $74f5: $01 $06 $7a
	inc  bc                                          ; $74f8: $03
	inc  hl                                          ; $74f9: $23
	ld   h, h                                        ; $74fa: $64
	rrca                                             ; $74fb: $0f
	dec  b                                           ; $74fc: $05
	nop                                              ; $74fd: $00
	ld   bc, $6161                                   ; $74fe: $01 $61 $61
	ld   e, d                                        ; $7501: $5a
	inc  bc                                          ; $7502: $03
	rrca                                             ; $7503: $0f
	ld   [bc], a                                     ; $7504: $02
	and  c                                           ; $7505: $a1
	ld   [bc], a                                     ; $7506: $02
	rra                                              ; $7507: $1f
	inc  bc                                          ; $7508: $03
	rla                                              ; $7509: $17
	ld   [bc], a                                     ; $750a: $02
	ld   e, b                                        ; $750b: $58
	inc  bc                                          ; $750c: $03
	ld   c, l                                        ; $750d: $4d
	sub  d                                           ; $750e: $92
	sbc  a                                           ; $750f: $9f
	dec  c                                           ; $7510: $0d
	inc  b                                           ; $7511: $04
	ld   [$9102], sp                                 ; $7512: $08 $02 $91
	ld   h, [hl]                                     ; $7515: $66
	adc  h                                           ; $7516: $8c
	and  c                                           ; $7517: $a1
	ld   a, h                                        ; $7518: $7c
	inc  bc                                          ; $7519: $03
	rst  $38                                         ; $751a: $ff
	ld   [bc], a                                     ; $751b: $02
	rra                                              ; $751c: $1f
	inc  bc                                          ; $751d: $03
	rla                                              ; $751e: $17
	ld   [bc], a                                     ; $751f: $02
	ld   e, b                                        ; $7520: $58
	ld   e, d                                        ; $7521: $5a
	dec  c                                           ; $7522: $0d
	ld   e, b                                        ; $7523: $58
	ld   d, d                                        ; $7524: $52
	ld   [hl], h                                     ; $7525: $74
	ld   d, b                                        ; $7526: $50
	sbc  c                                           ; $7527: $99
	halt                                             ; $7528: $76
	ld   h, c                                        ; $7529: $61
	sub  d                                           ; $752a: $92
	sbc  a                                           ; $752b: $9f
	dec  c                                           ; $752c: $0d
	nop                                              ; $752d: $00
	ld   a, [bc]                                     ; $752e: $0a
	inc  e                                           ; $752f: $1c
	dec  b                                           ; $7530: $05
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	ld   bc, $7c61                                   ; $7533: $01 $61 $7c
	ld   [bc], a                                     ; $7536: $02
	ccf                                              ; $7537: $3f
	inc  bc                                          ; $7538: $03
	rla                                              ; $7539: $17
	ld   [bc], a                                     ; $753a: $02
	ld   e, b                                        ; $753b: $58
	ld   [hl], l                                     ; $753c: $75
	ld   d, b                                        ; $753d: $50
	sbc  b                                           ; $753e: $98
	halt                                             ; $753f: $76
	ld   d, b                                        ; $7540: $50
	sub  a                                           ; $7541: $97
	sub  h                                           ; $7542: $94
	sbc  c                                           ; $7543: $99
	dec  c                                           ; $7544: $0d
	inc  bc                                          ; $7545: $03
	call c, $a056                                    ; $7546: $dc $56 $a0
	ld   a, l                                        ; $7549: $7d
	ld   h, [hl]                                     ; $754a: $66
	ld   e, e                                        ; $754b: $5b
	ld   l, [hl]                                     ; $754c: $6e
	ld   h, a                                        ; $754d: $67
	and  c                                           ; $754e: $a1
	sub  d                                           ; $754f: $92
	sbc  a                                           ; $7550: $9f
	dec  c                                           ; $7551: $0d

Call_046_7552:
	nop                                              ; $7552: $00
	ld   a, [bc]                                     ; $7553: $0a
	add  hl, de                                      ; $7554: $19
	dec  b                                           ; $7555: $05
	inc  bc                                          ; $7556: $03
	cp   d                                           ; $7557: $ba
	or   l                                           ; $7558: $b5
	and  l                                           ; $7559: $a5
	ld   [hl], l                                     ; $755a: $75
	ld   h, a                                        ; $755b: $67
	ld   a, e                                        ; $755c: $7b
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
	inc  b                                           ; $755f: $04
	ret  c                                           ; $7560: $d8

	inc  b                                           ; $7561: $04
	xor  h                                           ; $7562: $ac
	ld   l, e                                        ; $7563: $6b
	ld   d, h                                        ; $7564: $54
	ld   [hl], l                                     ; $7565: $75
	ld   h, a                                        ; $7566: $67
	ld   a, e                                        ; $7567: $7b
	nop                                              ; $7568: $00
	ld   bc, $a178                                   ; $7569: $01 $78 $a1
	ld   e, c                                        ; $756c: $59
	inc  b                                           ; $756d: $04
	adc  $52                                         ; $756e: $ce $52
	ld   a, b                                        ; $7570: $78
	db   $fc                                         ; $7571: $fc
	nop                                              ; $7572: $00
	ld   [bc], a                                     ; $7573: $02
	rlca                                             ; $7574: $07
	inc  de                                          ; $7575: $13
	inc  b                                           ; $7576: $04
	ld   [bc], a                                     ; $7577: $02
	inc  bc                                          ; $7578: $03
	ld   bc, $2000                                   ; $7579: $01 $00 $20
	nop                                              ; $757c: $00
	rlca                                             ; $757d: $07
	ld   e, e                                        ; $757e: $5b
	inc  b                                           ; $757f: $04
	ld   [bc], a                                     ; $7580: $02
	inc  bc                                          ; $7581: $03
	ld   bc, $2001                                   ; $7582: $01 $01 $20
	nop                                              ; $7585: $00
	rlca                                             ; $7586: $07
	push de                                          ; $7587: $d5
	inc  b                                           ; $7588: $04
	ld   [bc], a                                     ; $7589: $02
	inc  bc                                          ; $758a: $03
	ld   bc, $2002                                   ; $758b: $01 $02 $20
	nop                                              ; $758e: $00
	ld   b, $32                                      ; $758f: $06 $32
	dec  b                                           ; $7591: $05
	rrca                                             ; $7592: $0f
	nop                                              ; $7593: $00
	ld   bc, $ba01                                   ; $7594: $01 $01 $ba
	or   l                                           ; $7597: $b5
	and  l                                           ; $7598: $a5
	ld   [hl], l                                     ; $7599: $75
	ld   h, a                                        ; $759a: $67
	ld   a, e                                        ; $759b: $7b
	sbc  a                                           ; $759c: $9f
	dec  c                                           ; $759d: $0d
	nop                                              ; $759e: $00
	ld   a, [bc]                                     ; $759f: $0a
	inc  e                                           ; $75a0: $1c
	dec  b                                           ; $75a1: $05
	ld   bc, $1d01                                   ; $75a2: $01 $01 $1d
	ld   b, b                                        ; $75a5: $40
	dec  d                                           ; $75a6: $15
	inc  bc                                          ; $75a7: $03
	dec  d                                           ; $75a8: $15
	ld   bc, $2801                                   ; $75a9: $01 $01 $28
	nop                                              ; $75ac: $00
	ld   bc, $546b                                   ; $75ad: $01 $6b $54
	sub  d                                           ; $75b0: $92
	sbc  e                                           ; $75b1: $9b
	sbc  a                                           ; $75b2: $9f
	dec  c                                           ; $75b3: $0d
	ld   a, b                                        ; $75b4: $78
	ld   e, c                                        ; $75b5: $59
	ld   a, b                                        ; $75b6: $78
	ld   e, c                                        ; $75b7: $59
	ld   [bc], a                                     ; $75b8: $02
	sub  l                                           ; $75b9: $95
	sbc  d                                           ; $75ba: $9a
	sbc  c                                           ; $75bb: $99
	sub  b                                           ; $75bc: $90
	and  c                                           ; $75bd: $a1
	sub  d                                           ; $75be: $92
	ld   a, b                                        ; $75bf: $78
	ld   d, d                                        ; $75c0: $52
	ld   [hl], l                                     ; $75c1: $75
	sbc  a                                           ; $75c2: $9f
	dec  c                                           ; $75c3: $0d
	adc  c                                           ; $75c4: $89
	ld   a, b                                        ; $75c5: $78
	sbc  [hl]                                        ; $75c6: $9e
	ld   [hl], d                                     ; $75c7: $72
	ld   e, h                                        ; $75c8: $5c
	ld   [bc], a                                     ; $75c9: $02
	ld   a, a                                        ; $75ca: $7f
	ld   h, c                                        ; $75cb: $61
	ld   e, c                                        ; $75cc: $59
	sbc  a                                           ; $75cd: $9f
	dec  c                                           ; $75ce: $0d
	nop                                              ; $75cf: $00
	ld   a, [bc]                                     ; $75d0: $0a
	dec  c                                           ; $75d1: $0d
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	rrca                                             ; $75d4: $0f
	nop                                              ; $75d5: $00
	ld   bc, $6b06                                   ; $75d6: $01 $06 $6b
	dec  b                                           ; $75d9: $05
	rrca                                             ; $75da: $0f
	nop                                              ; $75db: $00
	ld   bc, $8601                                   ; $75dc: $01 $01 $86
	db   $fc                                         ; $75df: $fc
	sbc  [hl]                                        ; $75e0: $9e
	inc  b                                           ; $75e1: $04
	ret  c                                           ; $75e2: $d8

	inc  b                                           ; $75e3: $04
	xor  h                                           ; $75e4: $ac
	ld   l, e                                        ; $75e5: $6b
	ld   d, h                                        ; $75e6: $54
	ld   [hl], l                                     ; $75e7: $75
	ld   h, a                                        ; $75e8: $67
	ld   a, e                                        ; $75e9: $7b
	sbc  a                                           ; $75ea: $9f
	dec  c                                           ; $75eb: $0d
	nop                                              ; $75ec: $00
	ld   a, [bc]                                     ; $75ed: $0a
	inc  e                                           ; $75ee: $1c
	dec  b                                           ; $75ef: $05
	ld   bc, $0101                                   ; $75f0: $01 $01 $01
	ld   e, b                                        ; $75f3: $58
	ld   e, b                                        ; $75f4: $58
	ld   a, [$6b10]                                  ; $75f5: $fa $10 $6b
	ld   d, h                                        ; $75f8: $54
	ld   e, c                                        ; $75f9: $59
	ld   a, [$610d]                                  ; $75fa: $fa $0d $61
	ld   a, h                                        ; $75fd: $7c
	ld   [bc], a                                     ; $75fe: $02
	ld   e, b                                        ; $75ff: $58
	ld   [bc], a                                     ; $7600: $02
	ld   d, [hl]                                     ; $7601: $56
	and  b                                           ; $7602: $a0
	inc  b                                           ; $7603: $04
	ret  c                                           ; $7604: $d8

	inc  b                                           ; $7605: $04
	xor  h                                           ; $7606: $ac
	ld   d, d                                        ; $7607: $52
	halt                                             ; $7608: $76
	dec  b                                           ; $7609: $05
	pop  de                                          ; $760a: $d1
	ld   d, h                                        ; $760b: $54
	halt                                             ; $760c: $76
	ld   a, l                                        ; $760d: $7d
	dec  c                                           ; $760e: $0d
	ld   [bc], a                                     ; $760f: $02
	sub  l                                           ; $7610: $95
	inc  bc                                          ; $7611: $03
	ld   c, e                                        ; $7612: $4b
	ld   d, b                                        ; $7613: $50
	sbc  c                                           ; $7614: $99
	ld   [hl], l                                     ; $7615: $75
	ld   a, [$000d]                                  ; $7616: $fa $0d $00
	ld   a, [bc]                                     ; $7619: $0a
	inc  e                                           ; $761a: $1c
	dec  b                                           ; $761b: $05
	dec  b                                           ; $761c: $05
	dec  b                                           ; $761d: $05
	dec  e                                           ; $761e: $1d
	ld   b, b                                        ; $761f: $40
	dec  d                                           ; $7620: $15
	inc  bc                                          ; $7621: $03
	dec  d                                           ; $7622: $15
	ld   bc, $2803                                   ; $7623: $01 $03 $28
	nop                                              ; $7626: $00
	ld   bc, $a178                                   ; $7627: $01 $78 $a1
	sub  d                                           ; $762a: $92
	sbc  [hl]                                        ; $762b: $9e
	ld   [$7d00], sp                                 ; $762c: $08 $00 $7d
	and  c                                           ; $762f: $a1
	halt                                             ; $7630: $76
	ld   a, l                                        ; $7631: $7d
	dec  c                                           ; $7632: $0d
	ld   [bc], a                                     ; $7633: $02
	and  c                                           ; $7634: $a1
	ld   e, d                                        ; $7635: $5a
	ld   [bc], a                                     ; $7636: $02
	ld   a, e                                        ; $7637: $7b
	ld   d, d                                        ; $7638: $52
	ld   l, e                                        ; $7639: $6b
	ld   d, h                                        ; $763a: $54
	sub  d                                           ; $763b: $92
	ld   a, b                                        ; $763c: $78
	sbc  a                                           ; $763d: $9f
	dec  c                                           ; $763e: $0d
	adc  c                                           ; $763f: $89
	ld   a, b                                        ; $7640: $78
	sbc  [hl]                                        ; $7641: $9e
	ld   [hl], d                                     ; $7642: $72
	ld   e, h                                        ; $7643: $5c
	ld   [bc], a                                     ; $7644: $02
	ld   a, a                                        ; $7645: $7f
	ld   h, c                                        ; $7646: $61
	ld   e, c                                        ; $7647: $59
	dec  c                                           ; $7648: $0d
	nop                                              ; $7649: $00
	ld   a, [bc]                                     ; $764a: $0a
	dec  c                                           ; $764b: $0d
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	rrca                                             ; $764e: $0f
	nop                                              ; $764f: $00
	ld   bc, $6b06                                   ; $7650: $01 $06 $6b
	dec  b                                           ; $7653: $05
	rrca                                             ; $7654: $0f
	nop                                              ; $7655: $00
	ld   bc, $8301                                   ; $7656: $01 $01 $83
	ld   c, a                                        ; $7659: $4f
	ld   c, a                                        ; $765a: $4f
	ld   c, a                                        ; $765b: $4f
	ld   c, a                                        ; $765c: $4f
	ld   c, a                                        ; $765d: $4f
	rst  $38                                         ; $765e: $ff
	rst  $38                                         ; $765f: $ff
	dec  c                                           ; $7660: $0d
	nop                                              ; $7661: $00
	ld   a, [bc]                                     ; $7662: $0a
	inc  e                                           ; $7663: $1c
	dec  b                                           ; $7664: $05
	ld   [bc], a                                     ; $7665: $02
	ld   [bc], a                                     ; $7666: $02
	dec  e                                           ; $7667: $1d
	ld   b, b                                        ; $7668: $40
	dec  d                                           ; $7669: $15
	inc  bc                                          ; $766a: $03
	dec  d                                           ; $766b: $15
	ld   bc, $2902                                   ; $766c: $01 $02 $29
	nop                                              ; $766f: $00
	ld   bc, $f9a1                                   ; $7670: $01 $a1 $f9
	db   $10                                         ; $7673: $10
	ld   l, l                                        ; $7674: $6d
	ld   d, d                                        ; $7675: $52
	ld   e, l                                        ; $7676: $5d
	ld   [hl], d                                     ; $7677: $72
	ld   a, b                                        ; $7678: $78
	and  c                                           ; $7679: $a1
	ld   e, c                                        ; $767a: $59
	ld   sp, hl                                      ; $767b: $f9
	dec  c                                           ; $767c: $0d
	ld   l, e                                        ; $767d: $6b
	ld   d, h                                        ; $767e: $54
	ld   e, c                                        ; $767f: $59
	rst  $38                                         ; $7680: $ff
	sbc  [hl]                                        ; $7681: $9e
	ld   [$7d00], sp                                 ; $7682: $08 $00 $7d
	and  c                                           ; $7685: $a1
	ld   a, l                                        ; $7686: $7d
	dec  c                                           ; $7687: $0d
	ld   [bc], a                                     ; $7688: $02
	ld   e, b                                        ; $7689: $58
	ld   [bc], a                                     ; $768a: $02
	ld   d, [hl]                                     ; $768b: $56
	ld   a, c                                        ; $768c: $79
	ld   e, e                                        ; $768d: $5b
	sub  l                                           ; $768e: $95
	ld   d, h                                        ; $768f: $54
	adc  l                                           ; $7690: $8d
	inc  b                                           ; $7691: $04
	sub  $52                                         ; $7692: $d6 $52
	ld   a, e                                        ; $7694: $7b
	and  c                                           ; $7695: $a1
	ld   a, b                                        ; $7696: $78
	sbc  a                                           ; $7697: $9f
	dec  c                                           ; $7698: $0d
	nop                                              ; $7699: $00
	ld   a, [bc]                                     ; $769a: $0a
	ld   bc, $7889                                   ; $769b: $01 $89 $78
	sbc  [hl]                                        ; $769e: $9e
	ld   [hl], d                                     ; $769f: $72
	ld   e, h                                        ; $76a0: $5c
	ld   [bc], a                                     ; $76a1: $02
	ld   a, a                                        ; $76a2: $7f
	ld   h, c                                        ; $76a3: $61
	ld   e, c                                        ; $76a4: $59
	dec  c                                           ; $76a5: $0d
	nop                                              ; $76a6: $00
	ld   a, [bc]                                     ; $76a7: $0a
	dec  c                                           ; $76a8: $0d
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	rrca                                             ; $76ab: $0f
	nop                                              ; $76ac: $00
	ld   bc, $6b06                                   ; $76ad: $01 $06 $6b
	dec  b                                           ; $76b0: $05
	inc  e                                           ; $76b1: $1c
	dec  b                                           ; $76b2: $05
	dec  b                                           ; $76b3: $05
	dec  b                                           ; $76b4: $05
	ld   bc, $6267                                   ; $76b5: $01 $67 $62
	ld   h, a                                        ; $76b8: $67
	ld   e, h                                        ; $76b9: $5c
	ld   [hl], h                                     ; $76ba: $74
	sbc  [hl]                                        ; $76bb: $9e
	inc  bc                                          ; $76bc: $03
	and  l                                           ; $76bd: $a5
	sub  b                                           ; $76be: $90
	inc  bc                                          ; $76bf: $03
	add  b                                           ; $76c0: $80
	ld   d, [hl]                                     ; $76c1: $56
	add  [hl]                                        ; $76c2: $86
	and  c                                           ; $76c3: $a1
	dec  c                                           ; $76c4: $0d
	adc  l                                           ; $76c5: $8d
	ld   l, l                                        ; $76c6: $6d
	ld   d, d                                        ; $76c7: $52
	sub  d                                           ; $76c8: $92
	ld   a, b                                        ; $76c9: $78
	sbc  a                                           ; $76ca: $9f
	dec  c                                           ; $76cb: $0d
	nop                                              ; $76cc: $00
	ld   a, [bc]                                     ; $76cd: $0a
	ld   bc, $7196                                   ; $76ce: $01 $96 $71
	ld   h, l                                        ; $76d1: $65
	sub  c                                           ; $76d2: $91
	sbc  a                                           ; $76d3: $9f
	dec  c                                           ; $76d4: $0d
	adc  c                                           ; $76d5: $89
	ld   a, b                                        ; $76d6: $78
	sbc  [hl]                                        ; $76d7: $9e
	ld   [hl], d                                     ; $76d8: $72
	ld   e, h                                        ; $76d9: $5c
	ld   [bc], a                                     ; $76da: $02
	ld   a, a                                        ; $76db: $7f
	ld   h, c                                        ; $76dc: $61
	ld   e, c                                        ; $76dd: $59
	dec  c                                           ; $76de: $0d
	nop                                              ; $76df: $00
	ld   a, [bc]                                     ; $76e0: $0a
	dec  c                                           ; $76e1: $0d
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	rrca                                             ; $76e4: $0f
	nop                                              ; $76e5: $00
	ld   bc, $6b06                                   ; $76e6: $01 $06 $6b
	dec  b                                           ; $76e9: $05
	inc  hl                                          ; $76ea: $23
	ld   a, e                                        ; $76eb: $7b
	rrca                                             ; $76ec: $0f
	dec  b                                           ; $76ed: $05
	dec  b                                           ; $76ee: $05
	ld   bc, $e5b9                                   ; $76ef: $01 $b9 $e5
	ei                                               ; $76f2: $fb
	push af                                          ; $76f3: $f5
	sbc  a                                           ; $76f4: $9f
	dec  c                                           ; $76f5: $0d
	ld   h, c                                        ; $76f6: $61
	ld   h, c                                        ; $76f7: $61
	ld   e, d                                        ; $76f8: $5a
	ld   [bc], a                                     ; $76f9: $02
	jr   c, jr_046_7700                              ; $76fa: $38 $04

	ld   d, d                                        ; $76fc: $52
	ld   a, h                                        ; $76fd: $7c
	ld   [bc], a                                     ; $76fe: $02
	ld   [hl], l                                     ; $76ff: $75

jr_046_7700:
	inc  b                                           ; $7700: $04
	dec  a                                           ; $7701: $3d
	ld   [bc], a                                     ; $7702: $02
	ld   e, c                                        ; $7703: $59
	sub  d                                           ; $7704: $92
	ld   a, [$000d]                                  ; $7705: $fa $0d $00
	ld   a, [bc]                                     ; $7708: $0a
	add  hl, de                                      ; $7709: $19
	dec  b                                           ; $770a: $05
	ld   [bc], a                                     ; $770b: $02
	xor  h                                           ; $770c: $ac
	call nz, $a5b4                                   ; $770d: $c4 $b4 $a5
	and  l                                           ; $7710: $a5
	ld   a, [rRAMG]                                  ; $7711: $fa $00 $00
	ld   a, b                                        ; $7714: $78
	and  c                                           ; $7715: $a1
	ld   l, [hl]                                     ; $7716: $6e
	ld   e, c                                        ; $7717: $59
	inc  b                                           ; $7718: $04
	add  [hl]                                        ; $7719: $86
	ld   d, d                                        ; $771a: $52
	ld   [hl], l                                     ; $771b: $75
	ld   h, a                                        ; $771c: $67
	ld   a, e                                        ; $771d: $7b
	nop                                              ; $771e: $00
	ld   bc, $b607                                   ; $771f: $01 $07 $b6
	dec  b                                           ; $7722: $05
	ld   [bc], a                                     ; $7723: $02
	inc  bc                                          ; $7724: $03
	ld   bc, $2000                                   ; $7725: $01 $00 $20
	nop                                              ; $7728: $00
	rlca                                             ; $7729: $07
	rst  $38                                         ; $772a: $ff
	dec  b                                           ; $772b: $05
	ld   [bc], a                                     ; $772c: $02
	inc  bc                                          ; $772d: $03
	ld   bc, $2001                                   ; $772e: $01 $01 $20
	nop                                              ; $7731: $00
	ld   b, $dd                                      ; $7732: $06 $dd
	ld   b, $0f                                      ; $7734: $06 $0f
	nop                                              ; $7736: $00
	ld   bc, $ac01                                   ; $7737: $01 $01 $ac
	call nz, $a5b4                                   ; $773a: $c4 $b4 $a5
	and  l                                           ; $773d: $a5
	ld   a, [$670d]                                  ; $773e: $fa $0d $67
	ld   [hl], c                                     ; $7741: $71
	ld   h, d                                        ; $7742: $62
	ld   d, d                                        ; $7743: $52
	ld   [hl], l                                     ; $7744: $75
	ld   h, a                                        ; $7745: $67
	ld   a, e                                        ; $7746: $7b
	db   $fc                                         ; $7747: $fc
	sbc  a                                           ; $7748: $9f
	dec  c                                           ; $7749: $0d
	nop                                              ; $774a: $00
	ld   a, [bc]                                     ; $774b: $0a
	inc  e                                           ; $774c: $1c
	dec  b                                           ; $774d: $05
	ld   bc, $1d01                                   ; $774e: $01 $01 $1d
	ld   b, b                                        ; $7751: $40
	dec  d                                           ; $7752: $15
	inc  bc                                          ; $7753: $03
	dec  d                                           ; $7754: $15
	ld   bc, $2802                                   ; $7755: $01 $02 $28
	nop                                              ; $7758: $00
	ld   bc, $926b                                   ; $7759: $01 $6b $92
	sbc  e                                           ; $775c: $9b
	db   $fc                                         ; $775d: $fc
	sbc  a                                           ; $775e: $9f
	dec  c                                           ; $775f: $0d
	adc  a                                           ; $7760: $8f
	ld   [hl], c                                     ; $7761: $71
	ld   l, a                                        ; $7762: $6f
	sub  c                                           ; $7763: $91
	xor  h                                           ; $7764: $ac
	call nz, $a9b4                                   ; $7765: $c4 $b4 $a9
	xor  c                                           ; $7768: $a9
	sub  d                                           ; $7769: $92
	sbc  e                                           ; $776a: $9b
	sbc  a                                           ; $776b: $9f
	dec  c                                           ; $776c: $0d
	xor  c                                           ; $776d: $a9
	reti                                             ; $776e: $d9


	reti                                             ; $776f: $d9


	reti                                             ; $7770: $d9


	sbc  a                                           ; $7771: $9f
	dec  c                                           ; $7772: $0d
	nop                                              ; $7773: $00
	ld   a, [bc]                                     ; $7774: $0a
	dec  c                                           ; $7775: $0d
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	rrca                                             ; $7778: $0f
	nop                                              ; $7779: $00
	ld   bc, $0306                                   ; $777a: $01 $06 $03
	rlca                                             ; $777d: $07
	rrca                                             ; $777e: $0f
	nop                                              ; $777f: $00
	ld   bc, $7801                                   ; $7780: $01 $01 $78
	and  c                                           ; $7783: $a1
	ld   l, [hl]                                     ; $7784: $6e
	ld   e, c                                        ; $7785: $59
	sbc  [hl]                                        ; $7786: $9e
	inc  b                                           ; $7787: $04
	add  [hl]                                        ; $7788: $86
	ld   d, d                                        ; $7789: $52
	ld   [hl], l                                     ; $778a: $75
	ld   h, a                                        ; $778b: $67
	ld   a, e                                        ; $778c: $7b
	sbc  a                                           ; $778d: $9f
	dec  c                                           ; $778e: $0d
	ld   l, l                                        ; $778f: $6d
	ld   h, l                                        ; $7790: $65
	ld   e, c                                        ; $7791: $59
	ld   a, c                                        ; $7792: $79
	sbc  [hl]                                        ; $7793: $9e
	inc  b                                           ; $7794: $04
	ld   [$2f04], sp                                 ; $7795: $08 $04 $2f
	ld   a, h                                        ; $7798: $7c
	inc  b                                           ; $7799: $04
	xor  b                                           ; $779a: $a8
	dec  b                                           ; $779b: $05
	ld   hl, $03a0                                   ; $779c: $21 $a0 $03
	sub  e                                           ; $779f: $93
	sbc  c                                           ; $77a0: $99
	dec  c                                           ; $77a1: $0d
	ld   l, l                                        ; $77a2: $6d
	adc  a                                           ; $77a3: $8f
	ld   a, h                                        ; $77a4: $7c
	inc  b                                           ; $77a5: $04
	ld   h, b                                        ; $77a6: $60
	ld   [bc], a                                     ; $77a7: $02
	ld   d, a                                        ; $77a8: $57
	ld   a, b                                        ; $77a9: $78
	and  c                                           ; $77aa: $a1
	ld   [hl], l                                     ; $77ab: $75
	ld   h, l                                        ; $77ac: $65
	sub  l                                           ; $77ad: $95
	ld   d, h                                        ; $77ae: $54
	ld   e, d                                        ; $77af: $5a
	rst  $38                                         ; $77b0: $ff
	rst  $38                                         ; $77b1: $ff
	dec  c                                           ; $77b2: $0d
	nop                                              ; $77b3: $00
	ld   a, [bc]                                     ; $77b4: $0a
	inc  e                                           ; $77b5: $1c
	dec  b                                           ; $77b6: $05
	rlca                                             ; $77b7: $07
	rlca                                             ; $77b8: $07
	ld   bc, $6bff                                   ; $77b9: $01 $ff $6b
	ld   d, h                                        ; $77bc: $54
	sbc  [hl]                                        ; $77bd: $9e
	ld   [bc], a                                     ; $77be: $02
	jr   c, @+$06                                    ; $77bf: $38 $04

	ld   d, d                                        ; $77c1: $52
	ld   a, l                                        ; $77c2: $7d
	ld   [bc], a                                     ; $77c3: $02
	call nc, $0a05                                   ; $77c4: $d4 $05 $0a
	ld   a, b                                        ; $77c7: $78
	inc  b                                           ; $77c8: $04
	ld   h, b                                        ; $77c9: $60
	ld   [bc], a                                     ; $77ca: $02
	ld   d, a                                        ; $77cb: $57
	sub  d                                           ; $77cc: $92
	sbc  a                                           ; $77cd: $9f
	dec  c                                           ; $77ce: $0d
	inc  bc                                          ; $77cf: $03
	xor  [hl]                                        ; $77d0: $ae
	ld   d, d                                        ; $77d1: $52
	inc  b                                           ; $77d2: $04
	ld   a, b                                        ; $77d3: $78
	and  b                                           ; $77d4: $a0
	ld   d, b                                        ; $77d5: $50
	sub  d                                           ; $77d6: $92
	adc  h                                           ; $77d7: $8c
	sbc  d                                           ; $77d8: $9a
	ld   a, [hl]                                     ; $77d9: $7e
	dec  c                                           ; $77da: $0d
	halt                                             ; $77db: $76
	and  c                                           ; $77dc: $a1
	ld   [hl], l                                     ; $77dd: $75
	sub  b                                           ; $77de: $90
	ld   a, b                                        ; $77df: $78
	ld   d, d                                        ; $77e0: $52
	ld   h, c                                        ; $77e1: $61
	halt                                             ; $77e2: $76
	ld   a, c                                        ; $77e3: $79
	ld   a, b                                        ; $77e4: $78
	sbc  c                                           ; $77e5: $99
	rst  $38                                         ; $77e6: $ff
	sbc  a                                           ; $77e7: $9f
	dec  c                                           ; $77e8: $0d
	nop                                              ; $77e9: $00
	ld   a, [bc]                                     ; $77ea: $0a
	ld   bc, $9269                                   ; $77eb: $01 $69 $92
	ld   e, c                                        ; $77ee: $59
	sub  a                                           ; $77ef: $97
	sbc  [hl]                                        ; $77f0: $9e
	and  a                                           ; $77f1: $a7
	jp   nz, Jump_046_7d97                           ; $77f2: $c2 $97 $7d

	ld   e, e                                        ; $77f5: $5b
	add  c                                           ; $77f6: $81
	ld   h, l                                        ; $77f7: $65
	ld   d, d                                        ; $77f8: $52
	dec  c                                           ; $77f9: $0d
	inc  bc                                          ; $77fa: $03
	ld   l, l                                        ; $77fb: $6d
	dec  b                                           ; $77fc: $05
	add  hl, de                                      ; $77fd: $19
	and  b                                           ; $77fe: $a0
	sub  d                                           ; $77ff: $92
	sbc  c                                           ; $7800: $99
	and  c                                           ; $7801: $a1
	sub  d                                           ; $7802: $92
	sbc  a                                           ; $7803: $9f
	inc  b                                           ; $7804: $04
	dec  c                                           ; $7805: $0d
	ld   l, [hl]                                     ; $7806: $6e
	ld   e, a                                        ; $7807: $5f
	sub  d                                           ; $7808: $92
	ld   a, b                                        ; $7809: $78
	ld   e, l                                        ; $780a: $5d
	dec  c                                           ; $780b: $0d
	inc  bc                                          ; $780c: $03
	ld   [hl], l                                     ; $780d: $75
	sub  b                                           ; $780e: $90
	ld   e, e                                        ; $780f: $5b
	ld   l, l                                        ; $7810: $6d
	ld   d, [hl]                                     ; $7811: $56
	sbc  c                                           ; $7812: $99
	ld   l, l                                        ; $7813: $6d
	adc  a                                           ; $7814: $8f
	ld   a, c                                        ; $7815: $79
	ld   a, b                                        ; $7816: $78
	sbc  a                                           ; $7817: $9f
	dec  c                                           ; $7818: $0d
	nop                                              ; $7819: $00
	ld   a, [bc]                                     ; $781a: $0a
	inc  e                                           ; $781b: $1c
	dec  b                                           ; $781c: $05
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	dec  e                                           ; $781f: $1d
	ld   b, b                                        ; $7820: $40
	dec  d                                           ; $7821: $15
	inc  bc                                          ; $7822: $03
	dec  d                                           ; $7823: $15
	ld   bc, $2803                                   ; $7824: $01 $03 $28
	nop                                              ; $7827: $00
	ld   bc, $9a61                                   ; $7828: $01 $61 $9a
	and  b                                           ; $782b: $a0
	ld   [bc], a                                     ; $782c: $02
	sub  l                                           ; $782d: $95
	ld   [hl], h                                     ; $782e: $74
	db   $fd                                         ; $782f: $fd
	inc  b                                           ; $7830: $04
	add  [hl]                                        ; $7831: $86
	ld   d, d                                        ; $7832: $52
	cp   $76                                         ; $7833: $fe $76
	ld   [bc], a                                     ; $7835: $02
	sbc  l                                           ; $7836: $9d
	ld   [hl], c                                     ; $7837: $71
	ld   l, l                                        ; $7838: $6d
	dec  c                                           ; $7839: $0d
	ld   [$7d00], sp                                 ; $783a: $08 $00 $7d
	and  c                                           ; $783d: $a1
	sbc  a                                           ; $783e: $9f
	dec  c                                           ; $783f: $0d
	ld   d, b                                        ; $7840: $50
	and  c                                           ; $7841: $a1
	ld   l, l                                        ; $7842: $6d
	sbc  [hl]                                        ; $7843: $9e
	ld   a, b                                        ; $7844: $78
	ld   e, c                                        ; $7845: $59
	ld   a, b                                        ; $7846: $78
	ld   e, c                                        ; $7847: $59
	ld   [bc], a                                     ; $7848: $02
	sub  l                                           ; $7849: $95
	inc  bc                                          ; $784a: $03
	ld   c, e                                        ; $784b: $4b
	ld   d, b                                        ; $784c: $50
	sbc  c                                           ; $784d: $99
	ld   [hl], l                                     ; $784e: $75
	sbc  a                                           ; $784f: $9f
	dec  c                                           ; $7850: $0d
	nop                                              ; $7851: $00
	ld   a, [bc]                                     ; $7852: $0a
	dec  c                                           ; $7853: $0d
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	rrca                                             ; $7856: $0f
	nop                                              ; $7857: $00
	ld   bc, $0306                                   ; $7858: $01 $06 $03
	rlca                                             ; $785b: $07
	inc  e                                           ; $785c: $1c
	dec  b                                           ; $785d: $05
	dec  b                                           ; $785e: $05
	dec  b                                           ; $785f: $05
	ld   bc, $6267                                   ; $7860: $01 $67 $62
	ld   h, a                                        ; $7863: $67
	ld   e, h                                        ; $7864: $5c
	ld   [hl], h                                     ; $7865: $74
	sbc  [hl]                                        ; $7866: $9e
	inc  bc                                          ; $7867: $03
	and  l                                           ; $7868: $a5
	sub  b                                           ; $7869: $90
	inc  bc                                          ; $786a: $03
	add  b                                           ; $786b: $80
	ld   d, [hl]                                     ; $786c: $56
	add  [hl]                                        ; $786d: $86
	and  c                                           ; $786e: $a1
	dec  c                                           ; $786f: $0d
	adc  l                                           ; $7870: $8d
	ld   l, l                                        ; $7871: $6d
	ld   d, d                                        ; $7872: $52
	sub  d                                           ; $7873: $92
	ld   a, b                                        ; $7874: $78
	sbc  a                                           ; $7875: $9f
	dec  c                                           ; $7876: $0d
	nop                                              ; $7877: $00
	ld   a, [bc]                                     ; $7878: $0a
	dec  c                                           ; $7879: $0d
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	rrca                                             ; $787c: $0f
	nop                                              ; $787d: $00
	ld   bc, $0306                                   ; $787e: $01 $06 $03
	rlca                                             ; $7881: $07
	inc  hl                                          ; $7882: $23
	inc  b                                           ; $7883: $04
	inc  e                                           ; $7884: $1c
	dec  b                                           ; $7885: $05
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	ld   bc, wRandomNumStruct                                   ; $7888: $01 $a7 $c2
	ld   a, h                                        ; $788b: $7c
	ld   [bc], a                                     ; $788c: $02
	dec  e                                           ; $788d: $1d
	inc  b                                           ; $788e: $04
	ld   b, a                                        ; $788f: $47
	ld   a, l                                        ; $7890: $7d
	ld   [bc], a                                     ; $7891: $02
	dec  bc                                          ; $7892: $0b
	inc  bc                                          ; $7893: $03
	ld   h, l                                        ; $7894: $65
	sub  d                                           ; $7895: $92
	sbc  a                                           ; $7896: $9f
	dec  c                                           ; $7897: $0d
	halt                                             ; $7898: $76
	ld   h, c                                        ; $7899: $61
	sbc  e                                           ; $789a: $9b
	ld   [hl], l                                     ; $789b: $75
	sbc  [hl]                                        ; $789c: $9e
	ld   [$7d00], sp                                 ; $789d: $08 $00 $7d
	and  c                                           ; $78a0: $a1
	ld   a, l                                        ; $78a1: $7d
	dec  c                                           ; $78a2: $0d
	ld   [bc], a                                     ; $78a3: $02
	add  h                                           ; $78a4: $84
	ld   [bc], a                                     ; $78a5: $02
	and  d                                           ; $78a6: $a2
	ld   a, c                                        ; $78a7: $79
	ld   e, e                                        ; $78a8: $5b
	sub  l                                           ; $78a9: $95
	ld   d, h                                        ; $78aa: $54
	adc  l                                           ; $78ab: $8d
	ld   d, b                                        ; $78ac: $50
	sbc  c                                           ; $78ad: $99
	ld   sp, hl                                      ; $78ae: $f9
	dec  c                                           ; $78af: $0d
	nop                                              ; $78b0: $00
	ld   a, [bc]                                     ; $78b1: $0a
	add  hl, de                                      ; $78b2: $19
	dec  b                                           ; $78b3: $05
	ld   [bc], a                                     ; $78b4: $02
	ld   d, b                                        ; $78b5: $50
	sbc  c                                           ; $78b6: $99
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	ld   a, b                                        ; $78b9: $78
	ld   d, d                                        ; $78ba: $52
	nop                                              ; $78bb: $00
	ld   bc, $5307                                   ; $78bc: $01 $07 $53
	rlca                                             ; $78bf: $07
	ld   [bc], a                                     ; $78c0: $02
	inc  bc                                          ; $78c1: $03
	ld   bc, $2000                                   ; $78c2: $01 $00 $20
	nop                                              ; $78c5: $00
	rlca                                             ; $78c6: $07
	call z, $0207                                    ; $78c7: $cc $07 $02
	inc  bc                                          ; $78ca: $03
	ld   bc, $2001                                   ; $78cb: $01 $01 $20
	nop                                              ; $78ce: $00
	ld   b, $31                                      ; $78cf: $06 $31
	ld   [$051c], sp                                 ; $78d1: $08 $1c $05
	inc  b                                           ; $78d4: $04
	inc  b                                           ; $78d5: $04
	dec  e                                           ; $78d6: $1d
	ld   b, b                                        ; $78d7: $40
	dec  d                                           ; $78d8: $15
	inc  bc                                          ; $78d9: $03
	dec  d                                           ; $78da: $15
	ld   bc, $2802                                   ; $78db: $01 $02 $28
	nop                                              ; $78de: $00
	ld   bc, $546b                                   ; $78df: $01 $6b $54
	ld   e, c                                        ; $78e2: $59
	sbc  a                                           ; $78e3: $9f
	inc  bc                                          ; $78e4: $03
	adc  e                                           ; $78e5: $8b
	ld   a, l                                        ; $78e6: $7d
	sbc  [hl]                                        ; $78e7: $9e
	ld   [bc], a                                     ; $78e8: $02
	and  l                                           ; $78e9: $a5
	inc  b                                           ; $78ea: $04
	rst  $28                                         ; $78eb: $ef
	sbc  [hl]                                        ; $78ec: $9e
	dec  c                                           ; $78ed: $0d
	ld   l, a                                        ; $78ee: $6f
	sub  l                                           ; $78ef: $95
	ld   h, c                                        ; $78f0: $61
	ld   [hl], c                                     ; $78f1: $71
	halt                                             ; $78f2: $76
	inc  bc                                          ; $78f3: $03
	ld   l, e                                        ; $78f4: $6b
	inc  b                                           ; $78f5: $04
	ld   [de], a                                     ; $78f6: $12
	ld   [hl], c                                     ; $78f7: $71
	ld   [hl], h                                     ; $78f8: $74
	adc  c                                           ; $78f9: $89
	ld   h, l                                        ; $78fa: $65
	ld   d, d                                        ; $78fb: $52
	dec  c                                           ; $78fc: $0d
	ld   h, c                                        ; $78fd: $61
	halt                                             ; $78fe: $76
	ld   e, d                                        ; $78ff: $5a
	ld   d, b                                        ; $7900: $50
	sbc  c                                           ; $7901: $99
	ld   a, e                                        ; $7902: $7b
	and  c                                           ; $7903: $a1
	ld   e, a                                        ; $7904: $5f
	ld   [hl], a                                     ; $7905: $77
	rst  $38                                         ; $7906: $ff
	rst  $38                                         ; $7907: $ff
	dec  c                                           ; $7908: $0d
	nop                                              ; $7909: $00
	ld   a, [bc]                                     ; $790a: $0a
	dec  b                                           ; $790b: $05
	add  b                                           ; $790c: $80
	inc  hl                                          ; $790d: $23
	ld   bc, $0001                                   ; $790e: $01 $01 $00
	ld   bc, $a502                                   ; $7911: $01 $02 $a5
	inc  b                                           ; $7914: $04
	rst  $28                                         ; $7915: $ef
	sbc  [hl]                                        ; $7916: $9e
	ld   [$7d00], sp                                 ; $7917: $08 $00 $7d
	and  c                                           ; $791a: $a1
	ld   a, h                                        ; $791b: $7c
	inc  b                                           ; $791c: $04
	sub  l                                           ; $791d: $95
	ld   [bc], a                                     ; $791e: $02
	ld   hl, $0d79                                   ; $791f: $21 $79 $0d
	nop                                              ; $7922: $00
	dec  b                                           ; $7923: $05
	ld   b, b                                        ; $7924: $40
	ld   [hl], b                                     ; $7925: $70
	ld   [bc], a                                     ; $7926: $02
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	ld   bc, $6b63                                   ; $7929: $01 $63 $6b
	ld   d, d                                        ; $792c: $52
	ld   a, c                                        ; $792d: $79
	ld   [bc], a                                     ; $792e: $02
	ld   a, a                                        ; $792f: $7f
	ld   e, l                                        ; $7930: $5d
	ld   e, c                                        ; $7931: $59
	sub  a                                           ; $7932: $97
	sbc  a                                           ; $7933: $9f
	dec  c                                           ; $7934: $0d
	adc  c                                           ; $7935: $89
	ld   a, b                                        ; $7936: $78
	sbc  [hl]                                        ; $7937: $9e
	adc  h                                           ; $7938: $8c
	ld   l, l                                        ; $7939: $6d
	ld   d, b                                        ; $793a: $50
	halt                                             ; $793b: $76
	ld   [hl], l                                     ; $793c: $75
	ld   a, b                                        ; $793d: $78
	sbc  a                                           ; $793e: $9f
	dec  c                                           ; $793f: $0d
	nop                                              ; $7940: $00
	ld   a, [bc]                                     ; $7941: $0a
	dec  c                                           ; $7942: $0d
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	rrca                                             ; $7945: $0f
	nop                                              ; $7946: $00
	ld   bc, $1e09                                   ; $7947: $01 $09 $1e
	nop                                              ; $794a: $00
	inc  e                                           ; $794b: $1c
	dec  b                                           ; $794c: $05
	ld   [bc], a                                     ; $794d: $02
	ld   [bc], a                                     ; $794e: $02
	dec  e                                           ; $794f: $1d
	ld   b, b                                        ; $7950: $40
	dec  d                                           ; $7951: $15
	inc  bc                                          ; $7952: $03
	dec  d                                           ; $7953: $15
	ld   bc, $2902                                   ; $7954: $01 $02 $29
	nop                                              ; $7957: $00
	ld   bc, $546b                                   ; $7958: $01 $6b $54
	ld   e, c                                        ; $795b: $59
	rst  $38                                         ; $795c: $ff
	rst  $38                                         ; $795d: $ff
	dec  c                                           ; $795e: $0d
	ld   h, c                                        ; $795f: $61
	sbc  d                                           ; $7960: $9a
	ld   e, c                                        ; $7961: $59
	sub  a                                           ; $7962: $97
	ld   a, l                                        ; $7963: $7d
	ld   [bc], a                                     ; $7964: $02
	add  h                                           ; $7965: $84
	ld   [bc], a                                     ; $7966: $02
	and  d                                           ; $7967: $a2
	ld   a, h                                        ; $7968: $7c
	inc  bc                                          ; $7969: $03
	ld   l, a                                        ; $796a: $6f
	inc  bc                                          ; $796b: $03
	sbc  $92                                         ; $796c: $de $92
	ld   a, e                                        ; $796e: $7b
	and  c                                           ; $796f: $a1
	dec  c                                           ; $7970: $0d
	ld   e, a                                        ; $7971: $5f
	ld   [hl], a                                     ; $7972: $77
	ld   a, b                                        ; $7973: $78
	rst  $38                                         ; $7974: $ff
	rst  $38                                         ; $7975: $ff
	rst  $38                                         ; $7976: $ff
	rst  $38                                         ; $7977: $ff
	dec  c                                           ; $7978: $0d
	nop                                              ; $7979: $00
	ld   a, [bc]                                     ; $797a: $0a
	ld   bc, $6d8c                                   ; $797b: $01 $8c $6d
	ld   a, b                                        ; $797e: $78
	and  c                                           ; $797f: $a1
	ld   e, c                                        ; $7980: $59
	inc  b                                           ; $7981: $04
	sbc  [hl]                                        ; $7982: $9e
	ld   e, c                                        ; $7983: $59
	sub  a                                           ; $7984: $97
	and  c                                           ; $7985: $a1
	ld   [bc], a                                     ; $7986: $02
	jp   $0d5a                                       ; $7987: $c3 $5a $0d


	ld   d, b                                        ; $798a: $50
	ld   [hl], c                                     ; $798b: $71
	ld   l, l                                        ; $798c: $6d
	sub  a                                           ; $798d: $97
	sbc  [hl]                                        ; $798e: $9e
	ld   d, d                                        ; $798f: $52
	ld   [hl], d                                     ; $7990: $72
	ld   [hl], l                                     ; $7991: $75
	sub  b                                           ; $7992: $90
	inc  bc                                          ; $7993: $03
	and  l                                           ; $7994: $a5
	ld   e, c                                        ; $7995: $59
	ld   e, a                                        ; $7996: $5f
	ld   [hl], h                                     ; $7997: $74
	dec  c                                           ; $7998: $0d
	ld   e, l                                        ; $7999: $5d
	sbc  d                                           ; $799a: $9a
	ld   [hl], h                                     ; $799b: $74
	ld   d, [hl]                                     ; $799c: $56
	ld   d, [hl]                                     ; $799d: $56
	ld   e, c                                        ; $799e: $59
	sub  a                                           ; $799f: $97
	sbc  a                                           ; $79a0: $9f
	adc  c                                           ; $79a1: $89
	ld   a, b                                        ; $79a2: $78
	sbc  a                                           ; $79a3: $9f
	dec  c                                           ; $79a4: $0d
	nop                                              ; $79a5: $00
	ld   a, [bc]                                     ; $79a6: $0a
	dec  c                                           ; $79a7: $0d
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	rrca                                             ; $79aa: $0f
	nop                                              ; $79ab: $00
	ld   bc, $1e09                                   ; $79ac: $01 $09 $1e
	nop                                              ; $79af: $00
	inc  e                                           ; $79b0: $1c
	dec  b                                           ; $79b1: $05
	ld   [bc], a                                     ; $79b2: $02
	ld   [bc], a                                     ; $79b3: $02
	ld   bc, $a178                                   ; $79b4: $01 $78 $a1
	sub  d                                           ; $79b7: $92
	ld   sp, hl                                      ; $79b8: $f9
	dec  c                                           ; $79b9: $0d
	inc  b                                           ; $79ba: $04
	sbc  a                                           ; $79bb: $9f
	ld   e, e                                        ; $79bc: $5b
	ld   [bc], a                                     ; $79bd: $02
	sub  e                                           ; $79be: $93
	ld   [hl], c                                     ; $79bf: $71
	ld   [hl], h                                     ; $79c0: $74
	inc  b                                           ; $79c1: $04
	ld   a, e                                        ; $79c2: $7b
	sbc  d                                           ; $79c3: $9a
	ld   l, l                                        ; $79c4: $6d
	and  c                                           ; $79c5: $a1
	ld   e, c                                        ; $79c6: $59
	ld   sp, hl                                      ; $79c7: $f9
	dec  c                                           ; $79c8: $0d
	nop                                              ; $79c9: $00
	ld   a, [bc]                                     ; $79ca: $0a
	ld   bc, $7889                                   ; $79cb: $01 $89 $78
	sbc  [hl]                                        ; $79ce: $9e
	inc  b                                           ; $79cf: $04
	sub  l                                           ; $79d0: $95
	ld   [bc], a                                     ; $79d1: $02
	ld   hl, $9086                                   ; $79d2: $21 $86 $90
	ld   [hl], a                                     ; $79d5: $77
	ld   [hl], c                                     ; $79d6: $71
	ld   [hl], h                                     ; $79d7: $74
	dec  c                                           ; $79d8: $0d
	sub  h                                           ; $79d9: $94
	ld   [hl], c                                     ; $79da: $71
	ld   e, l                                        ; $79db: $5d
	sbc  b                                           ; $79dc: $98
	sub  d                                           ; $79dd: $92
	ld   h, a                                        ; $79de: $67
	adc  l                                           ; $79df: $8d
	sbc  a                                           ; $79e0: $9f
	dec  c                                           ; $79e1: $0d
	nop                                              ; $79e2: $00
	ld   a, [bc]                                     ; $79e3: $0a
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	rrca                                             ; $79e6: $0f
	nop                                              ; $79e7: $00
	ld   bc, $020d                                   ; $79e8: $01 $0d $02
	nop                                              ; $79eb: $00
	ld   [bc], a                                     ; $79ec: $02
	ld   bc, $9e50                                   ; $79ed: $01 $50 $9e
	ld   h, a                                        ; $79f0: $67
	adc  l                                           ; $79f1: $8d
	sbc  d                                           ; $79f2: $9a
	ld   h, e                                        ; $79f3: $63
	and  c                                           ; $79f4: $a1
	sbc  a                                           ; $79f5: $9f
	dec  c                                           ; $79f6: $0d
	ld   e, b                                        ; $79f7: $58
	inc  b                                           ; $79f8: $04
	ld   a, e                                        ; $79f9: $7b
	sbc  d                                           ; $79fa: $9a
	ld   h, e                                        ; $79fb: $63
	adc  h                                           ; $79fc: $8c
	ld   [hl], l                                     ; $79fd: $75
	ld   h, a                                        ; $79fe: $67
	sbc  a                                           ; $79ff: $9f
	dec  c                                           ; $7a00: $0d
	nop                                              ; $7a01: $00
	ld   a, [bc]                                     ; $7a02: $0a
	ld   bc, $8d67                                   ; $7a03: $01 $67 $8d
	sbc  d                                           ; $7a06: $9a
	ld   h, e                                        ; $7a07: $63
	and  c                                           ; $7a08: $a1
	sbc  [hl]                                        ; $7a09: $9e
	ld   d, b                                        ; $7a0a: $50
	ld   a, h                                        ; $7a0b: $7c
	rst  $38                                         ; $7a0c: $ff
	rst  $38                                         ; $7a0d: $ff
	dec  c                                           ; $7a0e: $0d
	nop                                              ; $7a0f: $00
	ld   a, [bc]                                     ; $7a10: $0a
	add  hl, de                                      ; $7a11: $19
	dec  b                                           ; $7a12: $05
	inc  bc                                          ; $7a13: $03
	inc  b                                           ; $7a14: $04
	ld   [$9202], sp                                 ; $7a15: $08 $02 $92
	ld   a, h                                        ; $7a18: $7c
	ld   [bc], a                                     ; $7a19: $02
	dec  e                                           ; $7a1a: $1d
	inc  b                                           ; $7a1b: $04
	ld   b, a                                        ; $7a1c: $47
	and  b                                           ; $7a1d: $a0
	ld   l, l                                        ; $7a1e: $6d
	ld   a, h                                        ; $7a1f: $7c
	adc  [hl]                                        ; $7a20: $8e
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	ld   h, a                                        ; $7a23: $67
	adc  l                                           ; $7a24: $8d
	sbc  d                                           ; $7a25: $9a
	ld   a, h                                        ; $7a26: $7c
	ld   [bc], a                                     ; $7a27: $02
	cp   a                                           ; $7a28: $bf
	and  b                                           ; $7a29: $a0
	sub  b                                           ; $7a2a: $90
	adc  [hl]                                        ; $7a2b: $8e
	nop                                              ; $7a2c: $00
	ld   bc, $8d67                                   ; $7a2d: $01 $67 $8d
	sbc  d                                           ; $7a30: $9a
	ld   a, c                                        ; $7a31: $79
	inc  bc                                          ; $7a32: $03
	dec  d                                           ; $7a33: $15
	inc  b                                           ; $7a34: $04
	cp   a                                           ; $7a35: $bf
	ld   h, a                                        ; $7a36: $67
	sbc  c                                           ; $7a37: $99
	nop                                              ; $7a38: $00
	ld   [bc], a                                     ; $7a39: $02
	rlca                                             ; $7a3a: $07
	ld   [hl], d                                     ; $7a3b: $72
	nop                                              ; $7a3c: $00
	ld   [bc], a                                     ; $7a3d: $02
	inc  bc                                          ; $7a3e: $03
	ld   bc, $2000                                   ; $7a3f: $01 $00 $20
	nop                                              ; $7a42: $00
	rlca                                             ; $7a43: $07
	ld   d, $01                                      ; $7a44: $16 $01
	ld   [bc], a                                     ; $7a46: $02
	inc  bc                                          ; $7a47: $03
	ld   bc, $2001                                   ; $7a48: $01 $01 $20
	nop                                              ; $7a4b: $00
	rlca                                             ; $7a4c: $07
	pop  bc                                          ; $7a4d: $c1
	ld   bc, $0302                                   ; $7a4e: $01 $02 $03
	ld   bc, $2002                                   ; $7a51: $01 $02 $20
	nop                                              ; $7a54: $00
	ld   b, $87                                      ; $7a55: $06 $87
	ld   bc, $000f                                   ; $7a57: $01 $0f $00
	ld   bc, $6701                                   ; $7a5a: $01 $01 $67
	adc  l                                           ; $7a5d: $8d
	adc  h                                           ; $7a5e: $8c
	ld   l, c                                        ; $7a5f: $69
	and  c                                           ; $7a60: $a1
	ld   e, d                                        ; $7a61: $5a
	sbc  [hl]                                        ; $7a62: $9e
	inc  b                                           ; $7a63: $04
	ld   [$9202], sp                                 ; $7a64: $08 $02 $92
	ld   a, h                                        ; $7a67: $7c
	inc  b                                           ; $7a68: $04
	dec  bc                                          ; $7a69: $0b
	and  b                                           ; $7a6a: $a0
	dec  c                                           ; $7a6b: $0d
	ld   [bc], a                                     ; $7a6c: $02
	dec  e                                           ; $7a6d: $1d
	inc  b                                           ; $7a6e: $04
	ld   b, a                                        ; $7a6f: $47
	ld   h, l                                        ; $7a70: $65
	ld   [hl], h                                     ; $7a71: $74
	ld   d, d                                        ; $7a72: $52
	ld   l, l                                        ; $7a73: $6d
	ld   l, [hl]                                     ; $7a74: $6e
	ld   e, a                                        ; $7a75: $5f
	dec  c                                           ; $7a76: $0d
	ld   a, b                                        ; $7a77: $78
	ld   d, d                                        ; $7a78: $52
	ld   [hl], l                                     ; $7a79: $75
	ld   h, l                                        ; $7a7a: $65
	sub  l                                           ; $7a7b: $95
	ld   d, h                                        ; $7a7c: $54
	ld   e, c                                        ; $7a7d: $59
	sbc  a                                           ; $7a7e: $9f
	dec  c                                           ; $7a7f: $0d
	nop                                              ; $7a80: $00
	ld   a, [bc]                                     ; $7a81: $0a
	inc  e                                           ; $7a82: $1c
	ld   [bc], a                                     ; $7a83: $02
	inc  bc                                          ; $7a84: $03
	inc  bc                                          ; $7a85: $03
	ld   bc, $a178                                   ; $7a86: $01 $78 $a1
	ld   [hl], l                                     ; $7a89: $75
	ld   h, a                                        ; $7a8a: $67
	ld   [hl], c                                     ; $7a8b: $71
	ld   [hl], h                                     ; $7a8c: $74
	ld   sp, hl                                      ; $7a8d: $f9
	dec  c                                           ; $7a8e: $0d
	ld   h, c                                        ; $7a8f: $61
	ld   a, h                                        ; $7a90: $7c
	sbc  l                                           ; $7a91: $9d
	ld   l, l                                        ; $7a92: $6d
	ld   e, l                                        ; $7a93: $5d
	ld   h, l                                        ; $7a94: $65
	ld   a, c                                        ; $7a95: $79
	sbc  [hl]                                        ; $7a96: $9e
	ld   [bc], a                                     ; $7a97: $02
	sub  d                                           ; $7a98: $92
	inc  b                                           ; $7a99: $04
	ld   a, d                                        ; $7a9a: $7a
	ld   a, h                                        ; $7a9b: $7c
	dec  c                                           ; $7a9c: $0d
	ld   [bc], a                                     ; $7a9d: $02
	dec  e                                           ; $7a9e: $1d
	inc  b                                           ; $7a9f: $04
	ld   b, a                                        ; $7aa0: $47
	and  b                                           ; $7aa1: $a0
	ld   h, l                                        ; $7aa2: $65
	sbc  e                                           ; $7aa3: $9b
	ld   [hl], l                                     ; $7aa4: $75
	ld   h, a                                        ; $7aa5: $67
	ld   [hl], c                                     ; $7aa6: $71
	ld   [hl], h                                     ; $7aa7: $74
	ld   sp, hl                                      ; $7aa8: $f9
	dec  c                                           ; $7aa9: $0d
	nop                                              ; $7aaa: $00
	ld   a, [bc]                                     ; $7aab: $0a
	inc  e                                           ; $7aac: $1c
	ld   [bc], a                                     ; $7aad: $02
	ld   [bc], a                                     ; $7aae: $02
	ld   [bc], a                                     ; $7aaf: $02
	dec  e                                           ; $7ab0: $1d
	ld   b, b                                        ; $7ab1: $40
	ld   [de], a                                     ; $7ab2: $12
	inc  bc                                          ; $7ab3: $03
	ld   [de], a                                     ; $7ab4: $12
	ld   bc, $2903                                   ; $7ab5: $01 $03 $29
	nop                                              ; $7ab8: $00
	ld   bc, $7c61                                   ; $7ab9: $01 $61 $7c
	sbc  [hl]                                        ; $7abc: $9e
	ld   [bc], a                                     ; $7abd: $02
	sbc  b                                           ; $7abe: $98
	inc  bc                                          ; $7abf: $03
	nop                                              ; $7ac0: $00
	ld   a, h                                        ; $7ac1: $7c
	ret                                              ; $7ac2: $c9


	call nz, $bad8                                   ; $7ac3: $c4 $d8 $ba
	ret  nz                                          ; $7ac6: $c0

	and  e                                           ; $7ac7: $a3
	ld   a, c                                        ; $7ac8: $79
	dec  c                                           ; $7ac9: $0d
	sub  [hl]                                        ; $7aca: $96
	ld   e, l                                        ; $7acb: $5d
	ld   l, e                                        ; $7acc: $6b
	and  c                                           ; $7acd: $a1
	ld   a, b                                        ; $7ace: $78
	ld   [bc], a                                     ; $7acf: $02
	xor  [hl]                                        ; $7ad0: $ae
	ld   e, d                                        ; $7ad1: $5a
	ld   e, e                                        ; $7ad2: $5b
	ld   e, a                                        ; $7ad3: $5f
	adc  h                                           ; $7ad4: $8c
	ld   h, a                                        ; $7ad5: $67
	sbc  l                                           ; $7ad6: $9d
	ld   a, e                                        ; $7ad7: $7b
	sbc  a                                           ; $7ad8: $9f
	dec  c                                           ; $7ad9: $0d
	nop                                              ; $7ada: $00
	ld   a, [bc]                                     ; $7adb: $0a
	ld   bc, $a502                                   ; $7adc: $01 $02 $a5
	ld   h, a                                        ; $7adf: $67
	ld   e, [hl]                                     ; $7ae0: $5e
	sbc  [hl]                                        ; $7ae1: $9e
	ld   h, c                                        ; $7ae2: $61
	ld   a, h                                        ; $7ae3: $7c
	sbc  l                                           ; $7ae4: $9d
	ld   l, l                                        ; $7ae5: $6d
	ld   e, l                                        ; $7ae6: $5d
	ld   h, l                                        ; $7ae7: $65
	ld   a, h                                        ; $7ae8: $7c
	inc  b                                           ; $7ae9: $04
	call nc, $037c                                   ; $7aea: $d4 $7c $03
	ld   c, a                                        ; $7aed: $4f
	dec  c                                           ; $7aee: $0d
	ld   e, c                                        ; $7aef: $59
	sub  a                                           ; $7af0: $97
	dec  b                                           ; $7af1: $05
	ld   b, h                                        ; $7af2: $44
	ld   d, [hl]                                     ; $7af3: $56
	ld   a, b                                        ; $7af4: $78
	ld   h, e                                        ; $7af5: $63
	ld   d, d                                        ; $7af6: $52
	sbc  a                                           ; $7af7: $9f
	dec  c                                           ; $7af8: $0d
	nop                                              ; $7af9: $00
	ld   a, [bc]                                     ; $7afa: $0a
	nop                                              ; $7afb: $00
	rrca                                             ; $7afc: $0f
	nop                                              ; $7afd: $00
	ld   bc, $9601                                   ; $7afe: $01 $01 $96
	sbc  e                                           ; $7b01: $9b
	ld   h, l                                        ; $7b02: $65
	ld   e, a                                        ; $7b03: $5f
	sbc  d                                           ; $7b04: $9a
	ld   a, [hl]                                     ; $7b05: $7e
	sbc  [hl]                                        ; $7b06: $9e
	dec  c                                           ; $7b07: $0d
	ld   [bc], a                                     ; $7b08: $02
	cp   a                                           ; $7b09: $bf
	ld   [hl], l                                     ; $7b0a: $75
	sub  b                                           ; $7b0b: $90
	ld   e, b                                        ; $7b0c: $58
	sub  b                                           ; $7b0d: $90
	adc  l                                           ; $7b0e: $8d
	ld   h, l                                        ; $7b0f: $65
	adc  h                                           ; $7b10: $8c
	ld   h, l                                        ; $7b11: $65
	sub  l                                           ; $7b12: $95
	ld   d, h                                        ; $7b13: $54
	ld   e, c                                        ; $7b14: $59
	ld   sp, hl                                      ; $7b15: $f9
	dec  c                                           ; $7b16: $0d
	nop                                              ; $7b17: $00
	ld   a, [bc]                                     ; $7b18: $0a
	inc  e                                           ; $7b19: $1c
	ld   [bc], a                                     ; $7b1a: $02
	ld   bc, $0101                                   ; $7b1b: $01 $01 $01
	ld   d, b                                        ; $7b1e: $50
	sub  a                                           ; $7b1f: $97
	sbc  [hl]                                        ; $7b20: $9e
	ld   [bc], a                                     ; $7b21: $02
	and  c                                           ; $7b22: $a1
	ld   e, d                                        ; $7b23: $5a
	ld   e, e                                        ; $7b24: $5b
	ld   e, l                                        ; $7b25: $5d
	sbc  l                                           ; $7b26: $9d
	ld   a, e                                        ; $7b27: $7b
	sbc  a                                           ; $7b28: $9f
	dec  c                                           ; $7b29: $0d
	ld   [hl], l                                     ; $7b2a: $75
	ld   h, l                                        ; $7b2b: $65
	ld   l, l                                        ; $7b2c: $6d
	sub  a                                           ; $7b2d: $97
	sbc  [hl]                                        ; $7b2e: $9e
	ld   e, b                                        ; $7b2f: $58
	ld   [bc], a                                     ; $7b30: $02
	add  b                                           ; $7b31: $80
	ld   d, d                                        ; $7b32: $52
	ld   h, a                                        ; $7b33: $67
	sbc  c                                           ; $7b34: $99
	sbc  l                                           ; $7b35: $9d
	sbc  a                                           ; $7b36: $9f
	dec  c                                           ; $7b37: $0d
	nop                                              ; $7b38: $00
	ld   a, [bc]                                     ; $7b39: $0a
	inc  c                                           ; $7b3a: $0c
	dec  bc                                          ; $7b3b: $0b
	dec  e                                           ; $7b3c: $1d
	ld   b, b                                        ; $7b3d: $40
	ld   [de], a                                     ; $7b3e: $12
	inc  bc                                          ; $7b3f: $03
	ld   [de], a                                     ; $7b40: $12
	ld   bc, $2803                                   ; $7b41: $01 $03 $28
	nop                                              ; $7b44: $00
	ld   bc, $5483                                   ; $7b45: $01 $83 $54
	rst  $38                                         ; $7b48: $ff
	rst  $38                                         ; $7b49: $ff
	dec  c                                           ; $7b4a: $0d
	ld   a, b                                        ; $7b4b: $78
	ld   e, c                                        ; $7b4c: $59
	ld   a, b                                        ; $7b4d: $78
	ld   e, c                                        ; $7b4e: $59
	inc  bc                                          ; $7b4f: $03
	ld   h, l                                        ; $7b50: $65
	inc  bc                                          ; $7b51: $03
	ld   l, e                                        ; $7b52: $6b
	ld   [hl], l                                     ; $7b53: $75
	ld   h, a                                        ; $7b54: $67
	ld   h, c                                        ; $7b55: $61
	halt                                             ; $7b56: $76
	sbc  a                                           ; $7b57: $9f
	dec  c                                           ; $7b58: $0d
	ld   h, d                                        ; $7b59: $62
	ld   [bc], a                                     ; $7b5a: $02
	sub  h                                           ; $7b5b: $94
	dec  b                                           ; $7b5c: $05
	rrca                                             ; $7b5d: $0f
	ld   h, e                                        ; $7b5e: $63
	adc  h                                           ; $7b5f: $8c
	sbc  a                                           ; $7b60: $9f
	dec  c                                           ; $7b61: $0d
	nop                                              ; $7b62: $00
	ld   a, [bc]                                     ; $7b63: $0a
	dec  c                                           ; $7b64: $0d
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	rrca                                             ; $7b67: $0f
	nop                                              ; $7b68: $00
	ld   bc, $1e09                                   ; $7b69: $01 $09 $1e
	nop                                              ; $7b6c: $00
	inc  e                                           ; $7b6d: $1c
	ld   [bc], a                                     ; $7b6e: $02
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	ld   bc, $f304                                   ; $7b71: $01 $04 $f3
	ld   e, d                                        ; $7b74: $5a
	ld   a, b                                        ; $7b75: $78
	ld   d, d                                        ; $7b76: $52
	ld   a, h                                        ; $7b77: $7c
	ld   a, b                                        ; $7b78: $78
	sub  a                                           ; $7b79: $97
	dec  c                                           ; $7b7a: $0d
	add  b                                           ; $7b7b: $80
	halt                                             ; $7b7c: $76
	sbc  b                                           ; $7b7d: $98
	ld   a, c                                        ; $7b7e: $79
	ld   h, l                                        ; $7b7f: $65
	ld   [hl], h                                     ; $7b80: $74
	ld   [bc], a                                     ; $7b81: $02
	inc  [hl]                                        ; $7b82: $34
	ld   h, e                                        ; $7b83: $63
	sub  a                                           ; $7b84: $97
	ld   a, b                                        ; $7b85: $78
	ld   d, d                                        ; $7b86: $52
	sbc  a                                           ; $7b87: $9f
	dec  c                                           ; $7b88: $0d
	nop                                              ; $7b89: $00
	ld   a, [bc]                                     ; $7b8a: $0a
	ld   bc, $c0ba                                   ; $7b8b: $01 $ba $c0
	and  e                                           ; $7b8e: $a3
	ld   a, l                                        ; $7b8f: $7d
	ld   [bc], a                                     ; $7b90: $02
	ld   h, l                                        ; $7b91: $65
	ld   d, [hl]                                     ; $7b92: $56
	sbc  c                                           ; $7b93: $99
	ld   h, c                                        ; $7b94: $61
	halt                                             ; $7b95: $76
	ld   e, d                                        ; $7b96: $5a
	dec  c                                           ; $7b97: $0d
	ld   l, l                                        ; $7b98: $6d
	ld   e, l                                        ; $7b99: $5d
	ld   h, e                                        ; $7b9a: $63
	and  c                                           ; $7b9b: $a1
	ld   d, b                                        ; $7b9c: $50
	sbc  b                                           ; $7b9d: $98
	adc  h                                           ; $7b9e: $8c
	ld   h, a                                        ; $7b9f: $67
	ld   a, h                                        ; $7ba0: $7c
	sub  [hl]                                        ; $7ba1: $96
	sbc  a                                           ; $7ba2: $9f
	dec  c                                           ; $7ba3: $0d
	nop                                              ; $7ba4: $00
	ld   a, [bc]                                     ; $7ba5: $0a
	nop                                              ; $7ba6: $00
	rrca                                             ; $7ba7: $0f
	nop                                              ; $7ba8: $00
	ld   bc, $6701                                   ; $7ba9: $01 $01 $67
	adc  l                                           ; $7bac: $8d
	sbc  d                                           ; $7bad: $9a
	ld   h, e                                        ; $7bae: $63
	and  c                                           ; $7baf: $a1
	adc  l                                           ; $7bb0: $8d
	ld   l, l                                        ; $7bb1: $6d
	ld   d, d                                        ; $7bb2: $52
	ld   a, b                                        ; $7bb3: $78
	cp   d                                           ; $7bb4: $ba
	ret  nz                                          ; $7bb5: $c0

	and  e                                           ; $7bb6: $a3
	ld   e, d                                        ; $7bb7: $5a
	dec  c                                           ; $7bb8: $0d
	ld   a, b                                        ; $7bb9: $78
	ld   l, d                                        ; $7bba: $6a
	sbc  [hl]                                        ; $7bbb: $9e
	ld   [bc], a                                     ; $7bbc: $02
	sbc  b                                           ; $7bbd: $98
	inc  bc                                          ; $7bbe: $03
	nop                                              ; $7bbf: $00
	ld   a, c                                        ; $7bc0: $79
	ld   d, d                                        ; $7bc1: $52
	sbc  c                                           ; $7bc2: $99
	ld   a, h                                        ; $7bc3: $7c
	ld   [hl], l                                     ; $7bc4: $75
	ld   h, a                                        ; $7bc5: $67
	ld   e, c                                        ; $7bc6: $59
	ld   sp, hl                                      ; $7bc7: $f9
	dec  c                                           ; $7bc8: $0d
	nop                                              ; $7bc9: $00
	ld   a, [bc]                                     ; $7bca: $0a
	inc  e                                           ; $7bcb: $1c
	ld   [bc], a                                     ; $7bcc: $02
	ld   bc, $0101                                   ; $7bcd: $01 $01 $01
	ld   d, b                                        ; $7bd0: $50
	sub  a                                           ; $7bd1: $97
	sbc  [hl]                                        ; $7bd2: $9e
	ld   d, d                                        ; $7bd3: $52
	ld   d, d                                        ; $7bd4: $52
	inc  bc                                          ; $7bd5: $03
	dec  d                                           ; $7bd6: $15
	inc  b                                           ; $7bd7: $04
	cp   a                                           ; $7bd8: $bf
	ld   a, e                                        ; $7bd9: $7b
	sbc  a                                           ; $7bda: $9f
	dec  c                                           ; $7bdb: $0d
	ld   l, e                                        ; $7bdc: $6b
	sbc  d                                           ; $7bdd: $9a
	ld   a, l                                        ; $7bde: $7d
	sbc  [hl]                                        ; $7bdf: $9e
	sbc  l                                           ; $7be0: $9d
	ld   l, l                                        ; $7be1: $6d
	ld   e, l                                        ; $7be2: $5d
	ld   h, l                                        ; $7be3: $65
	ld   e, d                                        ; $7be4: $5a
	ld   d, d                                        ; $7be5: $52
	ld   a, b                                        ; $7be6: $78
	ld   d, d                                        ; $7be7: $52
	halt                                             ; $7be8: $76
	dec  c                                           ; $7be9: $0d
	adc  l                                           ; $7bea: $8d
	ld   a, b                                        ; $7beb: $78
	ld   h, e                                        ; $7bec: $63
	and  c                                           ; $7bed: $a1
	pop  bc                                          ; $7bee: $c1
	db   $e3                                         ; $7bef: $e3
	ld   l, [hl]                                     ; $7bf0: $6e
	ld   e, c                                        ; $7bf1: $59
	sub  a                                           ; $7bf2: $97
	ld   [hl], l                                     ; $7bf3: $75
	ld   h, a                                        ; $7bf4: $67
	sbc  l                                           ; $7bf5: $9d
	sbc  a                                           ; $7bf6: $9f
	dec  c                                           ; $7bf7: $0d
	nop                                              ; $7bf8: $00
	ld   a, [bc]                                     ; $7bf9: $0a
	ld   bc, $c0ba                                   ; $7bfa: $01 $ba $c0
	and  e                                           ; $7bfd: $a3
	halt                                             ; $7bfe: $76
	ld   d, d                                        ; $7bff: $52
	ld   d, h                                        ; $7c00: $54
	sbc  l                                           ; $7c01: $9d
	ld   l, l                                        ; $7c02: $6d
	ld   e, l                                        ; $7c03: $5d
	ld   h, l                                        ; $7c04: $65
	ld   a, c                                        ; $7c05: $79
	dec  c                                           ; $7c06: $0d
	ld   l, l                                        ; $7c07: $6d
	sub  [hl]                                        ; $7c08: $96
	sub  a                                           ; $7c09: $97
	ld   a, b                                        ; $7c0a: $78
	ld   d, d                                        ; $7c0b: $52
	halt                                             ; $7c0c: $76
	sbc  [hl]                                        ; $7c0d: $9e
	adc  l                                           ; $7c0e: $8d
	ld   a, b                                        ; $7c0f: $78
	ld   h, e                                        ; $7c10: $63
	and  c                                           ; $7c11: $a1
	dec  c                                           ; $7c12: $0d
	sub  d                                           ; $7c13: $92
	ld   [hl], c                                     ; $7c14: $71
	ld   [hl], h                                     ; $7c15: $74
	ld   d, d                                        ; $7c16: $52
	ld   e, a                                        ; $7c17: $5f
	ld   a, b                                        ; $7c18: $78
	ld   d, d                                        ; $7c19: $52
	ld   a, h                                        ; $7c1a: $7c
	ld   [hl], l                                     ; $7c1b: $75
	ld   h, a                                        ; $7c1c: $67
	sbc  l                                           ; $7c1d: $9d
	sbc  a                                           ; $7c1e: $9f
	dec  c                                           ; $7c1f: $0d
	nop                                              ; $7c20: $00
	ld   a, [bc]                                     ; $7c21: $0a
	add  hl, de                                      ; $7c22: $19
	dec  b                                           ; $7c23: $05
	ld   [bc], a                                     ; $7c24: $02
	inc  b                                           ; $7c25: $04
	ld   e, h                                        ; $7c26: $5c
	inc  b                                           ; $7c27: $04
	ei                                               ; $7c28: $fb
	ld   h, a                                        ; $7c29: $67
	sbc  c                                           ; $7c2a: $99
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	inc  b                                           ; $7c2d: $04
	dec  e                                           ; $7c2e: $1d
	ld   [bc], a                                     ; $7c2f: $02
	ld   b, $67                                      ; $7c30: $06 $67
	sbc  c                                           ; $7c32: $99
	nop                                              ; $7c33: $00
	ld   bc, $6407                                   ; $7c34: $01 $07 $64
	ld   [bc], a                                     ; $7c37: $02
	ld   [bc], a                                     ; $7c38: $02
	inc  bc                                          ; $7c39: $03
	ld   bc, $2000                                   ; $7c3a: $01 $00 $20
	nop                                              ; $7c3d: $00
	rlca                                             ; $7c3e: $07
	db   $ec                                         ; $7c3f: $ec
	ld   [bc], a                                     ; $7c40: $02
	ld   [bc], a                                     ; $7c41: $02
	inc  bc                                          ; $7c42: $03
	ld   bc, $2001                                   ; $7c43: $01 $01 $20
	nop                                              ; $7c46: $00
	ld   b, $59                                      ; $7c47: $06 $59
	inc  bc                                          ; $7c49: $03
	rrca                                             ; $7c4a: $0f
	nop                                              ; $7c4b: $00
	ld   bc, $7601                                   ; $7c4c: $01 $01 $76
	ld   e, c                                        ; $7c4f: $59
	ld   a, b                                        ; $7c50: $78
	and  c                                           ; $7c51: $a1
	halt                                             ; $7c52: $76
	ld   e, c                                        ; $7c53: $59
	ld   [bc], a                                     ; $7c54: $02
	sbc  l                                           ; $7c55: $9d
	ld   [hl], c                                     ; $7c56: $71
	ld   l, a                                        ; $7c57: $6f
	sub  c                                           ; $7c58: $91
	ld   [hl], c                                     ; $7c59: $71
	ld   [hl], h                                     ; $7c5a: $74
	dec  c                                           ; $7c5b: $0d
	adc  l                                           ; $7c5c: $8d
	and  c                                           ; $7c5d: $a1
	ld   a, b                                        ; $7c5e: $78
	ld   a, h                                        ; $7c5f: $7c
	ld   h, c                                        ; $7c60: $61
	halt                                             ; $7c61: $76
	ld   e, d                                        ; $7c62: $5a
	ld   [bc], a                                     ; $7c63: $02
	sbc  d                                           ; $7c64: $9a
	ld   e, e                                        ; $7c65: $5b
	ld   a, b                                        ; $7c66: $78
	and  c                                           ; $7c67: $a1
	ld   [hl], l                                     ; $7c68: $75
	ld   h, l                                        ; $7c69: $65
	sub  l                                           ; $7c6a: $95
	dec  c                                           ; $7c6b: $0d
	ld   h, a                                        ; $7c6c: $67
	adc  l                                           ; $7c6d: $8d
	sbc  d                                           ; $7c6e: $9a
	ld   h, e                                        ; $7c6f: $63
	and  c                                           ; $7c70: $a1
	sbc  a                                           ; $7c71: $9f
	dec  c                                           ; $7c72: $0d
	nop                                              ; $7c73: $00
	ld   a, [bc]                                     ; $7c74: $0a
	inc  e                                           ; $7c75: $1c
	ld   [bc], a                                     ; $7c76: $02
	inc  bc                                          ; $7c77: $03
	inc  bc                                          ; $7c78: $03
	ld   bc, $9e78                                   ; $7c79: $01 $78 $9e
	ld   a, b                                        ; $7c7c: $78
	ld   a, c                                        ; $7c7d: $79
	and  b                                           ; $7c7e: $a0
	ld   e, b                                        ; $7c7f: $58
	ld   [hl], c                                     ; $7c80: $71
	ld   h, l                                        ; $7c81: $65
	sub  c                                           ; $7c82: $91
	ld   [hl], c                                     ; $7c83: $71
	ld   [hl], h                                     ; $7c84: $74
	sbc  c                                           ; $7c85: $99
	ld   a, h                                        ; $7c86: $7c
	sbc  a                                           ; $7c87: $9f
	dec  c                                           ; $7c88: $0d
	adc  l                                           ; $7c89: $8d
	and  c                                           ; $7c8a: $a1
	ld   a, b                                        ; $7c8b: $78
	ld   e, d                                        ; $7c8c: $5a
	sbc  l                                           ; $7c8d: $9d
	ld   l, l                                        ; $7c8e: $6d
	ld   e, l                                        ; $7c8f: $5d
	ld   h, l                                        ; $7c90: $65
	and  b                                           ; $7c91: $a0
	ld   [bc], a                                     ; $7c92: $02
	sbc  d                                           ; $7c93: $9a
	ld   e, e                                        ; $7c94: $5b
	ld   a, b                                        ; $7c95: $78
	ld   a, h                                        ; $7c96: $7c
	ld   a, c                                        ; $7c97: $79
	dec  c                                           ; $7c98: $0d
	ld   [bc], a                                     ; $7c99: $02
	add  e                                           ; $7c9a: $83
	adc  h                                           ; $7c9b: $8c
	ld   [hl], c                                     ; $7c9c: $71
	ld   [hl], h                                     ; $7c9d: $74
	sbc  c                                           ; $7c9e: $99
	ld   h, [hl]                                     ; $7c9f: $66
	sub  c                                           ; $7ca0: $91
	ld   d, b                                        ; $7ca1: $50
	sbc  b                                           ; $7ca2: $98
	adc  h                                           ; $7ca3: $8c
	ld   l, c                                        ; $7ca4: $69
	and  c                                           ; $7ca5: $a1
	ld   a, h                                        ; $7ca6: $7c
	sbc  a                                           ; $7ca7: $9f
	dec  c                                           ; $7ca8: $0d
	nop                                              ; $7ca9: $00
	ld   a, [bc]                                     ; $7caa: $0a
	inc  e                                           ; $7cab: $1c
	ld   [bc], a                                     ; $7cac: $02
	inc  b                                           ; $7cad: $04
	inc  b                                           ; $7cae: $04
	ld   bc, $1e04                                   ; $7caf: $01 $04 $1e
	ld   a, c                                        ; $7cb2: $79
	inc  b                                           ; $7cb3: $04
	di                                               ; $7cb4: $f3
	ld   e, d                                        ; $7cb5: $5a
	ld   a, b                                        ; $7cb6: $78
	ld   e, a                                        ; $7cb7: $5f
	sbc  d                                           ; $7cb8: $9a
	ld   a, [hl]                                     ; $7cb9: $7e
	dec  c                                           ; $7cba: $0d
	inc  bc                                          ; $7cbb: $03
	add  e                                           ; $7cbc: $83
	dec  b                                           ; $7cbd: $05
	dec  c                                           ; $7cbe: $0d
	ld   d, d                                        ; $7cbf: $52
	ld   l, l                                        ; $7cc0: $6d
	ld   h, l                                        ; $7cc1: $65
	adc  h                                           ; $7cc2: $8c
	ld   h, a                                        ; $7cc3: $67
	sbc  l                                           ; $7cc4: $9d
	sbc  a                                           ; $7cc5: $9f
	dec  c                                           ; $7cc6: $0d
	nop                                              ; $7cc7: $00
	ld   a, [bc]                                     ; $7cc8: $0a
	dec  c                                           ; $7cc9: $0d
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	rrca                                             ; $7ccc: $0f
	nop                                              ; $7ccd: $00
	ld   bc, $1e09                                   ; $7cce: $01 $09 $1e
	nop                                              ; $7cd1: $00
	rrca                                             ; $7cd2: $0f
	nop                                              ; $7cd3: $00
	ld   bc, $6b01                                   ; $7cd4: $01 $01 $6b
	ld   d, h                                        ; $7cd7: $54
	ld   [hl], l                                     ; $7cd8: $75
	ld   h, a                                        ; $7cd9: $67
	sub  [hl]                                        ; $7cda: $96
	ld   a, e                                        ; $7cdb: $7b
	sbc  a                                           ; $7cdc: $9f
	dec  c                                           ; $7cdd: $0d
	ld   h, a                                        ; $7cde: $67
	adc  l                                           ; $7cdf: $8d
	sbc  d                                           ; $7ce0: $9a
	ld   h, e                                        ; $7ce1: $63
	and  c                                           ; $7ce2: $a1
	ld   d, b                                        ; $7ce3: $50
	ld   [hl], c                                     ; $7ce4: $71
	ld   [hl], h                                     ; $7ce5: $74
	ld   a, h                                        ; $7ce6: $7c
	dec  c                                           ; $7ce7: $0d
	ld   [bc], a                                     ; $7ce8: $02
	sbc  b                                           ; $7ce9: $98
	inc  bc                                          ; $7cea: $03
	nop                                              ; $7ceb: $00
	ld   [hl], l                                     ; $7cec: $75
	ld   h, a                                        ; $7ced: $67
	sub  b                                           ; $7cee: $90
	ld   a, h                                        ; $7cef: $7c
	ld   a, e                                        ; $7cf0: $7b
	sbc  a                                           ; $7cf1: $9f
	dec  c                                           ; $7cf2: $0d
	nop                                              ; $7cf3: $00
	ld   a, [bc]                                     ; $7cf4: $0a
	inc  e                                           ; $7cf5: $1c
	ld   [bc], a                                     ; $7cf6: $02
	ld   bc, $1d01                                   ; $7cf7: $01 $01 $1d
	ld   b, b                                        ; $7cfa: $40
	ld   [de], a                                     ; $7cfb: $12
	inc  bc                                          ; $7cfc: $03
	ld   [de], a                                     ; $7cfd: $12
	ld   bc, $2802                                   ; $7cfe: $01 $02 $28
	nop                                              ; $7d01: $00
	ld   bc, $5978                                   ; $7d02: $01 $78 $59
	ld   a, b                                        ; $7d05: $78
	ld   e, c                                        ; $7d06: $59
	sbc  [hl]                                        ; $7d07: $9e
	sbc  l                                           ; $7d08: $9d
	ld   e, c                                        ; $7d09: $59
	ld   [hl], c                                     ; $7d0a: $71
	ld   [hl], h                                     ; $7d0b: $74
	dec  c                                           ; $7d0c: $0d
	sub  a                                           ; $7d0d: $97
	ld   [hl], c                                     ; $7d0e: $71
	ld   h, l                                        ; $7d0f: $65
	sub  c                                           ; $7d10: $91
	sbc  c                                           ; $7d11: $99
	sbc  l                                           ; $7d12: $9d
	ld   a, e                                        ; $7d13: $7b
	sbc  a                                           ; $7d14: $9f
	dec  c                                           ; $7d15: $0d
	nop                                              ; $7d16: $00
	ld   a, [bc]                                     ; $7d17: $0a
	ld   bc, $9166                                   ; $7d18: $01 $66 $91
	ld   d, b                                        ; $7d1b: $50
	sbc  [hl]                                        ; $7d1c: $9e
	inc  b                                           ; $7d1d: $04
	ld   e, $79                                      ; $7d1e: $1e $79
	inc  b                                           ; $7d20: $04
	di                                               ; $7d21: $f3
	ld   e, d                                        ; $7d22: $5a
	ld   a, b                                        ; $7d23: $78
	ld   e, a                                        ; $7d24: $5f
	sbc  d                                           ; $7d25: $9a
	ld   a, [hl]                                     ; $7d26: $7e
	dec  c                                           ; $7d27: $0d
	inc  bc                                          ; $7d28: $03
	add  e                                           ; $7d29: $83
	dec  b                                           ; $7d2a: $05
	dec  c                                           ; $7d2b: $0d
	ld   d, d                                        ; $7d2c: $52
	ld   l, l                                        ; $7d2d: $6d
	ld   h, l                                        ; $7d2e: $65
	adc  h                                           ; $7d2f: $8c
	ld   h, a                                        ; $7d30: $67
	sbc  l                                           ; $7d31: $9d
	sbc  a                                           ; $7d32: $9f
	dec  c                                           ; $7d33: $0d
	nop                                              ; $7d34: $00
	ld   a, [bc]                                     ; $7d35: $0a
	dec  c                                           ; $7d36: $0d
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	rrca                                             ; $7d39: $0f
	nop                                              ; $7d3a: $00
	ld   bc, $1e09                                   ; $7d3b: $01 $09 $1e
	nop                                              ; $7d3e: $00
	inc  e                                           ; $7d3f: $1c
	ld   [bc], a                                     ; $7d40: $02
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	ld   bc, $9166                                   ; $7d43: $01 $66 $91
	ld   d, b                                        ; $7d46: $50
	sbc  [hl]                                        ; $7d47: $9e
	inc  b                                           ; $7d48: $04
	ld   e, $79                                      ; $7d49: $1e $79
	inc  b                                           ; $7d4b: $04
	di                                               ; $7d4c: $f3
	ld   e, d                                        ; $7d4d: $5a
	ld   a, b                                        ; $7d4e: $78
	ld   e, a                                        ; $7d4f: $5f
	sbc  d                                           ; $7d50: $9a
	ld   a, [hl]                                     ; $7d51: $7e
	dec  c                                           ; $7d52: $0d
	inc  bc                                          ; $7d53: $03
	add  e                                           ; $7d54: $83
	dec  b                                           ; $7d55: $05
	dec  c                                           ; $7d56: $0d
	ld   d, d                                        ; $7d57: $52
	ld   l, l                                        ; $7d58: $6d
	ld   h, l                                        ; $7d59: $65
	adc  h                                           ; $7d5a: $8c
	ld   h, a                                        ; $7d5b: $67
	sbc  l                                           ; $7d5c: $9d
	sbc  a                                           ; $7d5d: $9f
	dec  c                                           ; $7d5e: $0d
	nop                                              ; $7d5f: $00
	ld   a, [bc]                                     ; $7d60: $0a
	dec  c                                           ; $7d61: $0d
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	rrca                                             ; $7d64: $0f
	nop                                              ; $7d65: $00
	ld   bc, $1e09                                   ; $7d66: $01 $09 $1e
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	inc  e                                           ; $7d6b: $1c
	ld   bc, $0000                                   ; $7d6c: $01 $00 $00
	ld   [bc], a                                     ; $7d6f: $02
	ld   bc, $9e50                                   ; $7d70: $01 $50 $9e
	ld   [$6300], sp                                 ; $7d73: $08 $00 $63
	and  c                                           ; $7d76: $a1
	sbc  a                                           ; $7d77: $9f
	dec  c                                           ; $7d78: $0d
	ld   l, a                                        ; $7d79: $6f
	sub  l                                           ; $7d7a: $95
	ld   d, h                                        ; $7d7b: $54
	ld   [hl], a                                     ; $7d7c: $77
	sub  [hl]                                        ; $7d7d: $96
	ld   e, c                                        ; $7d7e: $59
	ld   [hl], c                                     ; $7d7f: $71
	ld   l, l                                        ; $7d80: $6d
	sbc  a                                           ; $7d81: $9f
	dec  c                                           ; $7d82: $0d
	nop                                              ; $7d83: $00
	ld   a, [bc]                                     ; $7d84: $0a
	ld   bc, $9b96                                   ; $7d85: $01 $96 $9b
	ld   h, l                                        ; $7d88: $65
	ld   e, a                                        ; $7d89: $5f
	sbc  d                                           ; $7d8a: $9a
	ld   a, [hl]                                     ; $7d8b: $7e
	ld   [bc], a                                     ; $7d8c: $02
	sub  d                                           ; $7d8d: $92
	inc  b                                           ; $7d8e: $04
	ld   a, d                                        ; $7d8f: $7a
	inc  b                                           ; $7d90: $04
	ld   b, a                                        ; $7d91: $47
	and  b                                           ; $7d92: $a0
	dec  c                                           ; $7d93: $0d
	ld   [bc], a                                     ; $7d94: $02
	dec  e                                           ; $7d95: $1d
	inc  b                                           ; $7d96: $04

Jump_046_7d97:
	ld   b, a                                        ; $7d97: $47
	ld   h, l                                        ; $7d98: $65
	adc  h                                           ; $7d99: $8c
	ld   h, l                                        ; $7d9a: $65
	sub  l                                           ; $7d9b: $95
	ld   d, h                                        ; $7d9c: $54
	ld   e, c                                        ; $7d9d: $59
	ld   sp, hl                                      ; $7d9e: $f9
	dec  c                                           ; $7d9f: $0d
	nop                                              ; $7da0: $00
	ld   a, [bc]                                     ; $7da1: $0a
	add  hl, de                                      ; $7da2: $19
	dec  b                                           ; $7da3: $05
	ld   [bc], a                                     ; $7da4: $02
	ld   [bc], a                                     ; $7da5: $02
	dec  e                                           ; $7da6: $1d
	inc  b                                           ; $7da7: $04
	ld   b, a                                        ; $7da8: $47
	ld   h, l                                        ; $7da9: $65
	ld   [hl], h                                     ; $7daa: $74
	sub  b                                           ; $7dab: $90
	sub  a                                           ; $7dac: $97
	ld   d, h                                        ; $7dad: $54
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	ld   d, [hl]                                     ; $7db0: $56
	and  c                                           ; $7db1: $a1
	sbc  b                                           ; $7db2: $98
	sub  l                                           ; $7db3: $95
	ld   h, a                                        ; $7db4: $67
	sbc  c                                           ; $7db5: $99
	nop                                              ; $7db6: $00
	ld   bc, $6207                                   ; $7db7: $01 $07 $62
	nop                                              ; $7dba: $00
	ld   [bc], a                                     ; $7dbb: $02
	inc  bc                                          ; $7dbc: $03
	ld   bc, $2000                                   ; $7dbd: $01 $00 $20
	nop                                              ; $7dc0: $00
	rlca                                             ; $7dc1: $07
	xor  e                                           ; $7dc2: $ab
	nop                                              ; $7dc3: $00
	ld   [bc], a                                     ; $7dc4: $02
	inc  bc                                          ; $7dc5: $03
	ld   bc, $2001                                   ; $7dc6: $01 $01 $20
	nop                                              ; $7dc9: $00
	ld   b, $10                                      ; $7dca: $06 $10
	ld   bc, $000f                                   ; $7dcc: $01 $0f $00
	ld   bc, $9601                                   ; $7dcf: $01 $01 $96
	sbc  e                                           ; $7dd2: $9b
	ld   h, l                                        ; $7dd3: $65
	ld   e, l                                        ; $7dd4: $5d
	ld   e, b                                        ; $7dd5: $58
	ld   [bc], a                                     ; $7dd6: $02
	add  b                                           ; $7dd7: $80
	ld   d, d                                        ; $7dd8: $52
	ld   h, l                                        ; $7dd9: $65
	adc  h                                           ; $7dda: $8c
	ld   h, a                                        ; $7ddb: $67
	sbc  a                                           ; $7ddc: $9f
	dec  c                                           ; $7ddd: $0d
	nop                                              ; $7dde: $00
	ld   a, [bc]                                     ; $7ddf: $0a
	inc  e                                           ; $7de0: $1c
	ld   bc, $0000                                   ; $7de1: $01 $00 $00
	dec  e                                           ; $7de4: $1d
	ld   b, b                                        ; $7de5: $40
	ld   de, $1103                                   ; $7de6: $11 $03 $11
	ld   bc, $2801                                   ; $7de9: $01 $01 $28
	nop                                              ; $7dec: $00
	ld   bc, $527d                                   ; $7ded: $01 $7d $52
	sbc  [hl]                                        ; $7df0: $9e
	sub  [hl]                                        ; $7df1: $96
	sbc  e                                           ; $7df2: $9b
	ld   h, c                                        ; $7df3: $61
	and  c                                           ; $7df4: $a1
	ld   [hl], l                                     ; $7df5: $75
	sbc  a                                           ; $7df6: $9f
	dec  c                                           ; $7df7: $0d
	nop                                              ; $7df8: $00
	ld   a, [bc]                                     ; $7df9: $0a
	inc  e                                           ; $7dfa: $1c
	ld   bc, $0101                                   ; $7dfb: $01 $01 $01
	ld   bc, $9166                                   ; $7dfe: $01 $66 $91
	sbc  [hl]                                        ; $7e01: $9e
	ld   [bc], a                                     ; $7e02: $02
	ld   a, a                                        ; $7e03: $7f
	ld   e, e                                        ; $7e04: $5b
	adc  h                                           ; $7e05: $8c
	ld   h, l                                        ; $7e06: $65
	sub  l                                           ; $7e07: $95
	ld   d, h                                        ; $7e08: $54
	sbc  a                                           ; $7e09: $9f
	dec  c                                           ; $7e0a: $0d
	nop                                              ; $7e0b: $00
	ld   a, [bc]                                     ; $7e0c: $0a
	dec  c                                           ; $7e0d: $0d
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	rrca                                             ; $7e10: $0f
	nop                                              ; $7e11: $00
	ld   bc, $5006                                   ; $7e12: $01 $06 $50
	ld   bc, $000f                                   ; $7e15: $01 $0f $00
	ld   bc, $5001                                   ; $7e18: $01 $01 $50
	sbc  [hl]                                        ; $7e1b: $9e
	ld   e, a                                        ; $7e1c: $5f
	ld   [hl], c                                     ; $7e1d: $71
	ld   h, c                                        ; $7e1e: $61
	ld   d, h                                        ; $7e1f: $54
	ld   [hl], l                                     ; $7e20: $75
	ld   h, a                                        ; $7e21: $67
	sbc  a                                           ; $7e22: $9f
	dec  c                                           ; $7e23: $0d
	inc  bc                                          ; $7e24: $03
	sub  h                                           ; $7e25: $94
	inc  b                                           ; $7e26: $04
	sbc  [hl]                                        ; $7e27: $9e
	ld   [hl], l                                     ; $7e28: $75
	ld   [bc], a                                     ; $7e29: $02
	sub  l                                           ; $7e2a: $95
	ld   [hl], h                                     ; $7e2b: $74
	adc  h                                           ; $7e2c: $8c
	sbc  l                                           ; $7e2d: $9d
	sbc  b                                           ; $7e2e: $98
	adc  h                                           ; $7e2f: $8c
	ld   h, a                                        ; $7e30: $67
	ld   e, c                                        ; $7e31: $59
	sub  a                                           ; $7e32: $97
	rst  $38                                         ; $7e33: $ff
	rst  $38                                         ; $7e34: $ff
	dec  c                                           ; $7e35: $0d
	nop                                              ; $7e36: $00
	ld   a, [bc]                                     ; $7e37: $0a
	inc  e                                           ; $7e38: $1c
	ld   bc, $0404                                   ; $7e39: $01 $04 $04
	dec  e                                           ; $7e3c: $1d
	ld   b, b                                        ; $7e3d: $40
	ld   de, $1103                                   ; $7e3e: $11 $03 $11
	ld   bc, $2901                                   ; $7e41: $01 $01 $29
	nop                                              ; $7e44: $00
	ld   bc, $546b                                   ; $7e45: $01 $6b $54
	ld   [hl], l                                     ; $7e48: $75
	ld   h, a                                        ; $7e49: $67
	ld   e, c                                        ; $7e4a: $59
	rst  $38                                         ; $7e4b: $ff
	rst  $38                                         ; $7e4c: $ff
	ld   h, d                                        ; $7e4d: $62
	adc  a                                           ; $7e4e: $8f
	and  c                                           ; $7e4f: $a1
	ld   a, b                                        ; $7e50: $78
	ld   h, e                                        ; $7e51: $63
	ld   d, d                                        ; $7e52: $52
	dec  c                                           ; $7e53: $0d
	sub  [hl]                                        ; $7e54: $96
	ld   e, a                                        ; $7e55: $5f
	ld   d, d                                        ; $7e56: $52
	ld   a, b                                        ; $7e57: $78
	ld   e, b                                        ; $7e58: $58
	inc  bc                                          ; $7e59: $03
	add  hl, de                                      ; $7e5a: $19
	dec  b                                           ; $7e5b: $05
	jr   nz, jr_046_7ed3                             ; $7e5c: $20 $75

	ld   h, l                                        ; $7e5e: $65
	ld   l, l                                        ; $7e5f: $6d
	ld   a, e                                        ; $7e60: $7b
	sbc  a                                           ; $7e61: $9f
	dec  c                                           ; $7e62: $0d
	nop                                              ; $7e63: $00
	ld   a, [bc]                                     ; $7e64: $0a
	ld   bc, $8303                                   ; $7e65: $01 $03 $83
	dec  b                                           ; $7e68: $05
	dec  c                                           ; $7e69: $0d
	ld   h, l                                        ; $7e6a: $65
	adc  h                                           ; $7e6b: $8c
	ld   h, a                                        ; $7e6c: $67
	rst  $38                                         ; $7e6d: $ff
	rst  $38                                         ; $7e6e: $ff
	dec  c                                           ; $7e6f: $0d
	nop                                              ; $7e70: $00
	ld   a, [bc]                                     ; $7e71: $0a
	dec  c                                           ; $7e72: $0d
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	rrca                                             ; $7e75: $0f
	nop                                              ; $7e76: $00
	ld   bc, $1e09                                   ; $7e77: $01 $09 $1e
	nop                                              ; $7e7a: $00
	inc  e                                           ; $7e7b: $1c
	ld   bc, $0404                                   ; $7e7c: $01 $04 $04
	dec  e                                           ; $7e7f: $1d
	ld   b, b                                        ; $7e80: $40
	ld   de, $1103                                   ; $7e81: $11 $03 $11
	ld   bc, $2902                                   ; $7e84: $01 $02 $29
	nop                                              ; $7e87: $00
	ld   bc, $ffff                                   ; $7e88: $01 $ff $ff
	rst  $38                                         ; $7e8b: $ff
	rst  $38                                         ; $7e8c: $ff
	dec  c                                           ; $7e8d: $0d
	sub  [hl]                                        ; $7e8e: $96
	ld   e, a                                        ; $7e8f: $5f
	ld   d, d                                        ; $7e90: $52
	ld   a, b                                        ; $7e91: $78
	ld   e, b                                        ; $7e92: $58
	inc  bc                                          ; $7e93: $03
	add  hl, de                                      ; $7e94: $19
	dec  b                                           ; $7e95: $05
	jr   nz, jr_046_7f06                             ; $7e96: $20 $6e

	ld   [hl], c                                     ; $7e98: $71
	ld   l, l                                        ; $7e99: $6d
	dec  c                                           ; $7e9a: $0d
	sub  [hl]                                        ; $7e9b: $96
	ld   d, h                                        ; $7e9c: $54
	ld   [hl], l                                     ; $7e9d: $75
	ld   h, a                                        ; $7e9e: $67
	ld   a, e                                        ; $7e9f: $7b
	rst  $38                                         ; $7ea0: $ff
	rst  $38                                         ; $7ea1: $ff
	dec  c                                           ; $7ea2: $0d
	nop                                              ; $7ea3: $00
	ld   a, [bc]                                     ; $7ea4: $0a
	ld   bc, $8303                                   ; $7ea5: $01 $03 $83
	dec  b                                           ; $7ea8: $05
	dec  c                                           ; $7ea9: $0d
	ld   h, l                                        ; $7eaa: $65
	adc  h                                           ; $7eab: $8c
	ld   h, a                                        ; $7eac: $67
	rst  $38                                         ; $7ead: $ff
	rst  $38                                         ; $7eae: $ff
	dec  c                                           ; $7eaf: $0d
	nop                                              ; $7eb0: $00
	ld   a, [bc]                                     ; $7eb1: $0a
	dec  c                                           ; $7eb2: $0d
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	rrca                                             ; $7eb5: $0f
	nop                                              ; $7eb6: $00
	ld   bc, $1e09                                   ; $7eb7: $01 $09 $1e
	nop                                              ; $7eba: $00
	inc  hl                                          ; $7ebb: $23
	dec  d                                           ; $7ebc: $15
	rrca                                             ; $7ebd: $0f
	ld   bc, $0100                                   ; $7ebe: $01 $00 $01
	ld   h, c                                        ; $7ec1: $61
	ld   h, c                                        ; $7ec2: $61
	ld   e, d                                        ; $7ec3: $5a
	ld   e, b                                        ; $7ec4: $58
	inc  bc                                          ; $7ec5: $03
	sub  c                                           ; $7ec6: $91
	ld   [bc], a                                     ; $7ec7: $02
	dec  h                                           ; $7ec8: $25
	halt                                             ; $7ec9: $76
	ld   e, c                                        ; $7eca: $59
	and  b                                           ; $7ecb: $a0
	ld   h, a                                        ; $7ecc: $67
	sbc  c                                           ; $7ecd: $99
	dec  c                                           ; $7ece: $0d
	inc  b                                           ; $7ecf: $04
	adc  [hl]                                        ; $7ed0: $8e
	inc  b                                           ; $7ed1: $04
	inc  c                                           ; $7ed2: $0c

jr_046_7ed3:
	ld   a, b                                        ; $7ed3: $78
	and  c                                           ; $7ed4: $a1
	ld   [hl], l                                     ; $7ed5: $75
	ld   h, a                                        ; $7ed6: $67
	sub  [hl]                                        ; $7ed7: $96
	sbc  a                                           ; $7ed8: $9f
	dec  c                                           ; $7ed9: $0d
	nop                                              ; $7eda: $00
	ld   a, [bc]                                     ; $7edb: $0a
	inc  e                                           ; $7edc: $1c
	ld   bc, $0303                                   ; $7edd: $01 $03 $03
	ld   bc, $7150                                   ; $7ee0: $01 $50 $71
	sbc  [hl]                                        ; $7ee3: $9e
	inc  bc                                          ; $7ee4: $03
	ld   h, l                                        ; $7ee5: $65
	ld   e, c                                        ; $7ee6: $59
	sub  a                                           ; $7ee7: $97
	ret  nz                                          ; $7ee8: $c0

	db   $eb                                         ; $7ee9: $eb
	and  l                                           ; $7eea: $a5
	ld   e, d                                        ; $7eeb: $5a
	ld   a, [$000d]                                  ; $7eec: $fa $0d $00
	ld   a, [bc]                                     ; $7eef: $0a
	add  hl, de                                      ; $7ef0: $19
	dec  b                                           ; $7ef1: $05
	inc  bc                                          ; $7ef2: $03
	ld   h, e                                        ; $7ef3: $63
	ld   e, l                                        ; $7ef4: $5d
	sub  a                                           ; $7ef5: $97
	and  b                                           ; $7ef6: $a0
	ld   e, c                                        ; $7ef7: $59
	ld   a, [hl]                                     ; $7ef8: $7e
	ld   d, h                                        ; $7ef9: $54
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	ld   h, e                                        ; $7efc: $63
	ld   e, l                                        ; $7efd: $5d
	sub  a                                           ; $7efe: $97
	and  b                                           ; $7eff: $a0
	dec  b                                           ; $7f00: $05
	ld   [$6779], a                                  ; $7f01: $ea $79 $67
	sbc  c                                           ; $7f04: $99
	nop                                              ; $7f05: $00

jr_046_7f06:
	ld   bc, $ebc0                                   ; $7f06: $01 $c0 $eb
	and  l                                           ; $7f09: $a5
	ld   a, c                                        ; $7f0a: $79
	ld   [hl], d                                     ; $7f0b: $72
	ld   d, d                                        ; $7f0c: $52
	ld   [hl], h                                     ; $7f0d: $74
	ld   [bc], a                                     ; $7f0e: $02
	and  h                                           ; $7f0f: $a4
	sbc  c                                           ; $7f10: $99
	nop                                              ; $7f11: $00
	ld   [bc], a                                     ; $7f12: $02
	rlca                                             ; $7f13: $07
	add  $01                                         ; $7f14: $c6 $01
	ld   [bc], a                                     ; $7f16: $02
	inc  bc                                          ; $7f17: $03
	ld   bc, $2000                                   ; $7f18: $01 $00 $20
	nop                                              ; $7f1b: $00
	rlca                                             ; $7f1c: $07
	jr   z, jr_046_7f21                              ; $7f1d: $28 $02

	ld   [bc], a                                     ; $7f1f: $02
	inc  bc                                          ; $7f20: $03

jr_046_7f21:
	ld   bc, $2001                                   ; $7f21: $01 $01 $20
	nop                                              ; $7f24: $00
	rlca                                             ; $7f25: $07
	cp   c                                           ; $7f26: $b9
	ld   [bc], a                                     ; $7f27: $02
	ld   [bc], a                                     ; $7f28: $02
	inc  bc                                          ; $7f29: $03
	ld   bc, $2002                                   ; $7f2a: $01 $02 $20
	nop                                              ; $7f2d: $00
	ld   b, $5b                                      ; $7f2e: $06 $5b
	inc  bc                                          ; $7f30: $03
	rrca                                             ; $7f31: $0f
	nop                                              ; $7f32: $00
	ld   bc, $5001                                   ; $7f33: $01 $01 $50
	add  h                                           ; $7f36: $84
	ld   a, b                                        ; $7f37: $78
	ld   d, d                                        ; $7f38: $52
	sbc  [hl]                                        ; $7f39: $9e
	ld   h, e                                        ; $7f3a: $63
	ld   e, l                                        ; $7f3b: $5d
	sub  a                                           ; $7f3c: $97
	ld   h, e                                        ; $7f3d: $63
	and  c                                           ; $7f3e: $a1
	ld   a, [$000d]                                  ; $7f3f: $fa $0d $00
	ld   a, [bc]                                     ; $7f42: $0a
	dec  c                                           ; $7f43: $0d
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	inc  c                                           ; $7f46: $0c
	inc  bc                                          ; $7f47: $03
	add  hl, bc                                      ; $7f48: $09
	ld   e, $0f                                      ; $7f49: $1e $0f
	nop                                              ; $7f4b: $00
	ld   bc, $6e01                                   ; $7f4c: $01 $01 $6e
	sbc  [hl]                                        ; $7f4f: $9e
	inc  b                                           ; $7f50: $04
	ld   c, $03                                      ; $7f51: $0e $03
	sbc  l                                           ; $7f53: $9d
	inc  b                                           ; $7f54: $04
	and  [hl]                                        ; $7f55: $a6
	ld   [hl], l                                     ; $7f56: $75
	ld   h, a                                        ; $7f57: $67
	ld   e, c                                        ; $7f58: $59
	ld   sp, hl                                      ; $7f59: $f9
	dec  c                                           ; $7f5a: $0d
	ld   d, b                                        ; $7f5b: $50
	add  h                                           ; $7f5c: $84
	ld   a, b                                        ; $7f5d: $78
	ld   e, c                                        ; $7f5e: $59
	ld   [hl], c                                     ; $7f5f: $71
	ld   l, l                                        ; $7f60: $6d
	ld   [hl], l                                     ; $7f61: $75
	ld   h, a                                        ; $7f62: $67
	ld   a, e                                        ; $7f63: $7b
	sbc  a                                           ; $7f64: $9f
	dec  c                                           ; $7f65: $0d
	nop                                              ; $7f66: $00
	ld   a, [bc]                                     ; $7f67: $0a
	inc  e                                           ; $7f68: $1c
	ld   bc, $0101                                   ; $7f69: $01 $01 $01
	dec  e                                           ; $7f6c: $1d
	ld   b, b                                        ; $7f6d: $40
	ld   de, $1103                                   ; $7f6e: $11 $03 $11
	ld   bc, $2802                                   ; $7f71: $01 $02 $28
	nop                                              ; $7f74: $00
	ld   bc, $9e50                                   ; $7f75: $01 $50 $9e
	ld   d, b                                        ; $7f78: $50
	sbc  b                                           ; $7f79: $98
	ld   e, d                                        ; $7f7a: $5a
	halt                                             ; $7f7b: $76
	ld   d, h                                        ; $7f7c: $54
	ld   h, d                                        ; $7f7d: $62
	ld   h, h                                        ; $7f7e: $64
	ld   d, d                                        ; $7f7f: $52
	adc  h                                           ; $7f80: $8c
	ld   h, a                                        ; $7f81: $67
	rst  $38                                         ; $7f82: $ff
	rst  $38                                         ; $7f83: $ff
	dec  c                                           ; $7f84: $0d
	inc  bc                                          ; $7f85: $03
	ld   e, e                                        ; $7f86: $5b
	ld   e, c                                        ; $7f87: $59
	sbc  b                                           ; $7f88: $98
	adc  h                                           ; $7f89: $8c
	ld   h, l                                        ; $7f8a: $65
	ld   l, l                                        ; $7f8b: $6d
	sbc  a                                           ; $7f8c: $9f
	dec  c                                           ; $7f8d: $0d
	nop                                              ; $7f8e: $00
	ld   a, [bc]                                     ; $7f8f: $0a
	ld   b, $9e                                      ; $7f90: $06 $9e
	inc  bc                                          ; $7f92: $03
	rrca                                             ; $7f93: $0f
	nop                                              ; $7f94: $00
	ld   bc, $0101                                   ; $7f95: $01 $01 $01
	inc  bc                                          ; $7f98: $03
	ld   h, e                                        ; $7f99: $63
	ld   e, l                                        ; $7f9a: $5d
	sub  a                                           ; $7f9b: $97
	ld   h, e                                        ; $7f9c: $63
	and  c                                           ; $7f9d: $a1
	sbc  [hl]                                        ; $7f9e: $9e
	ld   h, d                                        ; $7f9f: $62
	adc  a                                           ; $7fa0: $8f
	and  c                                           ; $7fa1: $a1
	ld   a, b                                        ; $7fa2: $78
	ld   h, e                                        ; $7fa3: $63
	ld   d, d                                        ; $7fa4: $52
	ld   bc, $0d04                                   ; $7fa5: $01 $04 $0d
	ld   d, b                                        ; $7fa8: $50
	ld   [hl], c                                     ; $7fa9: $71
	ld   a, [$5010]                                  ; $7faa: $fa $10 $50
	add  h                                           ; $7fad: $84
	ld   a, b                                        ; $7fae: $78
	ld   d, d                                        ; $7faf: $52
	ld   a, [$0dfa]                                  ; $7fb0: $fa $fa $0d
	nop                                              ; $7fb3: $00
	ld   a, [bc]                                     ; $7fb4: $0a
	inc  c                                           ; $7fb5: $0c
	inc  bc                                          ; $7fb6: $03
	add  hl, bc                                      ; $7fb7: $09
	ld   e, $1c                                      ; $7fb8: $1e $1c
	ld   bc, $1808                                   ; $7fba: $01 $08 $18
	ld   bc, $6d52                                   ; $7fbd: $01 $52 $6d
	ld   [hl], c                                     ; $7fc0: $71
	ld   a, [$000d]                                  ; $7fc1: $fa $0d $00
	ld   a, [bc]                                     ; $7fc4: $0a
	rrca                                             ; $7fc5: $0f
	nop                                              ; $7fc6: $00
	ld   bc, $0401                                   ; $7fc7: $01 $01 $04
	ld   c, $03                                      ; $7fca: $0e $03
	sbc  l                                           ; $7fcc: $9d
	inc  b                                           ; $7fcd: $04
	and  [hl]                                        ; $7fce: $a6
	ld   [hl], l                                     ; $7fcf: $75
	ld   h, a                                        ; $7fd0: $67
	ld   e, c                                        ; $7fd1: $59
	sbc  [hl]                                        ; $7fd2: $9e
	ld   h, e                                        ; $7fd3: $63
	ld   e, l                                        ; $7fd4: $5d
	sub  a                                           ; $7fd5: $97
	ld   h, e                                        ; $7fd6: $63
	and  c                                           ; $7fd7: $a1
	ld   sp, hl                                      ; $7fd8: $f9
	dec  c                                           ; $7fd9: $0d
	nop                                              ; $7fda: $00
	ld   a, [bc]                                     ; $7fdb: $0a
	inc  e                                           ; $7fdc: $1c
	ld   bc, $0707                                   ; $7fdd: $01 $07 $07
	dec  e                                           ; $7fe0: $1d
	ld   b, b                                        ; $7fe1: $40
	ld   de, $1103                                   ; $7fe2: $11 $03 $11
	ld   bc, $2902                                   ; $7fe5: $01 $02 $29
	nop                                              ; $7fe8: $00
	ld   bc, $c0a5                                   ; $7fe9: $01 $a5 $c0
	ret  nz                                          ; $7fec: $c0

	ret  nz                                          ; $7fed: $c0

	ret  nz                                          ; $7fee: $c0

	ret  nz                                          ; $7fef: $c0

	rst  $38                                         ; $7ff0: $ff
	rst  $38                                         ; $7ff1: $ff
	dec  c                                           ; $7ff2: $0d
	ld   [$6300], sp                                 ; $7ff3: $08 $00 $63
	and  c                                           ; $7ff6: $a1
	sbc  [hl]                                        ; $7ff7: $9e
	ld   d, b                                        ; $7ff8: $50
	ld   l, l                                        ; $7ff9: $6d
	ld   h, l                                        ; $7ffa: $65
	and  b                                           ; $7ffb: $a0
	dec  b                                           ; $7ffc: $05
	ld   [$0d79], a                                  ; $7ffd: $ea $79 $0d
