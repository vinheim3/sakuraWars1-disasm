; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

	sbc  l                                           ; $4000: $9d
	ld   d, d                                        ; $4001: $52
	ld   l, e                                        ; $4002: $6b
	ld   d, h                                        ; $4003: $54
	ld   l, [hl]                                     ; $4004: $6e
	ld   e, d                                        ; $4005: $5a
	sbc  [hl]                                        ; $4006: $9e
	dec  c                                           ; $4007: $0d
	inc  b                                           ; $4008: $04
	dec  c                                           ; $4009: $0d
	ld   [bc], a                                     ; $400a: $02
	sub  [hl]                                        ; $400b: $96
	inc  b                                           ; $400c: $04
	ld   b, l                                        ; $400d: $45
	inc  b                                           ; $400e: $04
	ld   a, [bc]                                     ; $400f: $0a
	ld   a, l                                        ; $4010: $7d
	ld   h, c                                        ; $4011: $61
	ld   h, c                                        ; $4012: $61
	ld   [hl], l                                     ; $4013: $75
	inc  bc                                          ; $4014: $03
	ld   a, [hl]                                     ; $4015: $7e
	dec  b                                           ; $4016: $05
	nop                                              ; $4017: $00
	ld   l, [hl]                                     ; $4018: $6e
	ld   a, [$000d]                                  ; $4019: $fa $0d $00
	ld   a, [bc]                                     ; $401c: $0a
	ld   bc, $a102                                   ; $401d: $01 $02 $a1
	inc  bc                                          ; $4020: $03
	and  b                                           ; $4021: $a0
	ld   l, a                                        ; $4022: $6f
	and  b                                           ; $4023: $a0
	inc  b                                           ; $4024: $04
	ld   b, l                                        ; $4025: $45
	sbc  d                                           ; $4026: $9a
	dec  b                                           ; $4027: $05
	scf                                              ; $4028: $37
	ld   d, [hl]                                     ; $4029: $56
	ld   [hl], h                                     ; $402a: $74
	dec  c                                           ; $402b: $0d
	inc  bc                                          ; $402c: $03
	add  b                                           ; $402d: $80
	inc  bc                                          ; $402e: $03
	jp   c, $7465                                    ; $402f: $da $65 $74

	ld   e, e                                        ; $4032: $5b
	ld   a, b                                        ; $4033: $78
	ld   a, [$000d]                                  ; $4034: $fa $0d $00
	ld   a, [bc]                                     ; $4037: $0a
	ld   h, $00                                      ; $4038: $26 $00
	inc  b                                           ; $403a: $04
	add  b                                           ; $403b: $80
	ld   a, a                                        ; $403c: $7f
	ld   bc, $20ff                                   ; $403d: $01 $ff $20
	inc  bc                                          ; $4040: $03
	ld   [hl], c                                     ; $4041: $71
	ld   [bc], a                                     ; $4042: $02
	nop                                              ; $4043: $00
	jr   nz, jr_051_4062                             ; $4044: $20 $1c

	nop                                              ; $4046: $00
	ld   c, $6e                                      ; $4047: $0e $6e
	inc  e                                           ; $4049: $1c
	ld   b, $01                                      ; $404a: $06 $01
	ld   bc, $0502                                   ; $404c: $01 $02 $05
	add  b                                           ; $404f: $80
	add  b                                           ; $4050: $80
	ld   bc, $0001                                   ; $4051: $01 $01 $00
	ld   bc, $9e58                                   ; $4054: $01 $58 $9e
	inc  b                                           ; $4057: $04
	ldh  [$03], a                                    ; $4058: $e0 $03
	dec  hl                                          ; $405a: $2b
	inc  bc                                          ; $405b: $03
	pop  hl                                          ; $405c: $e1
	sbc  b                                           ; $405d: $98
	dec  b                                           ; $405e: $05
	db   $10                                         ; $405f: $10
	ld   l, l                                        ; $4060: $6d
	ld   a, b                                        ; $4061: $78

jr_051_4062:
	rst  $38                                         ; $4062: $ff
	rst  $38                                         ; $4063: $ff
	dec  c                                           ; $4064: $0d
	ld   h, [hl]                                     ; $4065: $66
	sub  c                                           ; $4066: $91
	sbc  [hl]                                        ; $4067: $9e
	ld   h, e                                        ; $4068: $63
	ld   [hl], c                                     ; $4069: $71
	ld   l, e                                        ; $406a: $6b
	ld   e, l                                        ; $406b: $5d
	dec  b                                           ; $406c: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $406d: $cf
	adc  a                                           ; $406e: $8f
	sbc  c                                           ; $406f: $99
	ld   l, d                                        ; $4070: $6a
	sbc  a                                           ; $4071: $9f
	dec  c                                           ; $4072: $0d
	nop                                              ; $4073: $00
	ld   a, [bc]                                     ; $4074: $0a
	inc  e                                           ; $4075: $1c
	ld   b, $02                                      ; $4076: $06 $02
	ld   [bc], a                                     ; $4078: $02
	ld   bc, $6d50                                   ; $4079: $01 $50 $6d
	ld   d, d                                        ; $407c: $52
	ld   a, h                                        ; $407d: $7c
	ld   [bc], a                                     ; $407e: $02
	ld   c, b                                        ; $407f: $48
	ld   [bc], a                                     ; $4080: $02
	sub  c                                           ; $4081: $91
	and  b                                           ; $4082: $a0
	dec  c                                           ; $4083: $0d
	inc  bc                                          ; $4084: $03
	ld   d, a                                        ; $4085: $57
	inc  b                                           ; $4086: $04
	sub  l                                           ; $4087: $95
	ld   e, c                                        ; $4088: $59
	sbc  l                                           ; $4089: $9d
	ld   h, a                                        ; $408a: $67
	and  c                                           ; $408b: $a1
	ld   l, [hl]                                     ; $408c: $6e
	sbc  a                                           ; $408d: $9f
	dec  c                                           ; $408e: $0d
	nop                                              ; $408f: $00
	ld   a, [bc]                                     ; $4090: $0a
	inc  e                                           ; $4091: $1c
	ld   b, $00                                      ; $4092: $06 $00
	nop                                              ; $4094: $00
	ld   bc, $6e6d                                   ; $4095: $01 $6d $6e
	sbc  [hl]                                        ; $4098: $9e
	ld   d, d                                        ; $4099: $52
	ld   e, e                                        ; $409a: $5b
	ld   a, b                                        ; $409b: $78
	sbc  b                                           ; $409c: $98
	ld   a, l                                        ; $409d: $7d
	dec  c                                           ; $409e: $0d
	adc  [hl]                                        ; $409f: $8e
	ld   l, b                                        ; $40a0: $68
	ld   e, c                                        ; $40a1: $59
	ld   h, l                                        ; $40a2: $65
	ld   d, d                                        ; $40a3: $52
	ld   l, [hl]                                     ; $40a4: $6e
	sbc  e                                           ; $40a5: $9b
	ld   d, h                                        ; $40a6: $54
	ld   e, c                                        ; $40a7: $59
	sub  a                                           ; $40a8: $97
	ld   a, b                                        ; $40a9: $78
	dec  c                                           ; $40aa: $0d
	ld   [bc], a                                     ; $40ab: $02
	ld   c, b                                        ; $40ac: $48
	ld   [bc], a                                     ; $40ad: $02
	sub  c                                           ; $40ae: $91
	ld   a, h                                        ; $40af: $7c
	ld   [bc], a                                     ; $40b0: $02
	ld   a, [$7904]                                  ; $40b1: $fa $04 $79
	and  b                                           ; $40b4: $a0
	ld   [bc], a                                     ; $40b5: $02
	sbc  l                                           ; $40b6: $9d
	ld   [hl], c                                     ; $40b7: $71
	ld   [hl], h                                     ; $40b8: $74
	ld   e, b                                        ; $40b9: $58
	ld   e, l                                        ; $40ba: $5d
	ld   l, d                                        ; $40bb: $6a
	sbc  a                                           ; $40bc: $9f
	dec  c                                           ; $40bd: $0d
	nop                                              ; $40be: $00
	ld   a, [bc]                                     ; $40bf: $0a
	ld   bc, $688c                                   ; $40c0: $01 $8c $68
	ld   a, l                                        ; $40c3: $7d
	ld   [bc], a                                     ; $40c4: $02
	inc  [hl]                                        ; $40c5: $34
	inc  bc                                          ; $40c6: $03
	ret  nc                                          ; $40c7: $d0

	adc  h                                           ; $40c8: $8c
	sbc  l                                           ; $40c9: $9d
	ld   h, l                                        ; $40ca: $65
	ld   h, b                                        ; $40cb: $60
	sbc  b                                           ; $40cc: $98
	rst  $38                                         ; $40cd: $ff
	rst  $38                                         ; $40ce: $ff
	dec  c                                           ; $40cf: $0d
	ld   h, c                                        ; $40d0: $61
	sbc  d                                           ; $40d1: $9a
	ld   a, l                                        ; $40d2: $7d
	ld   a, [bc]                                     ; $40d3: $0a
	ld   [bc], a                                     ; $40d4: $02
	cp   c                                           ; $40d5: $b9
	push hl                                          ; $40d6: $e5
	push af                                          ; $40d7: $f5
	ret  c                                           ; $40d8: $d8

	ld   a, [bc]                                     ; $40d9: $0a
	inc  bc                                          ; $40da: $03
	ld   h, l                                        ; $40db: $65
	ld   [hl], h                                     ; $40dc: $74
	dec  c                                           ; $40dd: $0d
	ld   e, c                                        ; $40de: $59
	sbc  l                                           ; $40df: $9d
	ld   h, a                                        ; $40e0: $67
	sbc  a                                           ; $40e1: $9f
	dec  c                                           ; $40e2: $0d
	nop                                              ; $40e3: $00
	ld   a, [bc]                                     ; $40e4: $0a
	ld   bc, $6803                                   ; $40e5: $01 $03 $68
	ld   a, l                                        ; $40e8: $7d
	inc  b                                           ; $40e9: $04
	dec  bc                                          ; $40ea: $0b
	inc  bc                                          ; $40eb: $03
	ret  nc                                          ; $40ec: $d0

	ld   [hl], e                                     ; $40ed: $73
	ld   e, e                                        ; $40ee: $5b
	ld   l, [hl]                                     ; $40ef: $6e
	rst  $38                                         ; $40f0: $ff
	rst  $38                                         ; $40f1: $ff
	dec  c                                           ; $40f2: $0d
	ld   h, c                                        ; $40f3: $61
	sbc  d                                           ; $40f4: $9a
	ld   a, l                                        ; $40f5: $7d
	ld   a, [bc]                                     ; $40f6: $0a
	ld   [bc], a                                     ; $40f7: $02
	inc  bc                                          ; $40f8: $03
	ld   l, e                                        ; $40f9: $6b
	ld   [hl], l                                     ; $40fa: $75
	ld   a, l                                        ; $40fb: $7d
	sub  a                                           ; $40fc: $97
	ld   d, d                                        ; $40fd: $52
	ld   a, h                                        ; $40fe: $7c
	ld   e, a                                        ; $40ff: $5f
	sbc  c                                           ; $4100: $99
	ld   a, [bc]                                     ; $4101: $0a
	inc  bc                                          ; $4102: $03
	sbc  a                                           ; $4103: $9f
	dec  c                                           ; $4104: $0d
	nop                                              ; $4105: $00
	ld   a, [bc]                                     ; $4106: $0a
	ld   bc, $6903                                   ; $4107: $01 $03 $69
	ld   [bc], a                                     ; $410a: $02
	xor  d                                           ; $410b: $aa
	ld   a, l                                        ; $410c: $7d
	inc  bc                                          ; $410d: $03
	ld   h, l                                        ; $410e: $65
	inc  bc                                          ; $410f: $03
	ret  nc                                          ; $4110: $d0

	adc  h                                           ; $4111: $8c
	sbc  l                                           ; $4112: $9d
	ld   h, l                                        ; $4113: $65
	ld   h, b                                        ; $4114: $60
	sbc  b                                           ; $4115: $98
	rst  $38                                         ; $4116: $ff
	rst  $38                                         ; $4117: $ff
	dec  c                                           ; $4118: $0d
	ld   h, c                                        ; $4119: $61
	sbc  d                                           ; $411a: $9a
	ld   a, l                                        ; $411b: $7d
	ld   a, [bc]                                     ; $411c: $0a
	ld   [bc], a                                     ; $411d: $02
	ld   h, l                                        ; $411e: $65
	sub  c                                           ; $411f: $91
	ld   e, d                                        ; $4120: $5a
	and  c                                           ; $4121: $a1
	ld   [hl], l                                     ; $4122: $75
	ld   a, [bc]                                     ; $4123: $0a
	inc  bc                                          ; $4124: $03
	dec  c                                           ; $4125: $0d
	ld   e, c                                        ; $4126: $59
	sbc  l                                           ; $4127: $9d
	ld   h, l                                        ; $4128: $65
	ld   [hl], h                                     ; $4129: $74
	ld   e, l                                        ; $412a: $5d
	sbc  d                                           ; $412b: $9a
	sbc  a                                           ; $412c: $9f
	dec  c                                           ; $412d: $0d
	nop                                              ; $412e: $00
	ld   a, [bc]                                     ; $412f: $0a
	inc  e                                           ; $4130: $1c
	ld   b, $02                                      ; $4131: $06 $02
	ld   [bc], a                                     ; $4133: $02
	ld   bc, $f304                                   ; $4134: $01 $04 $f3
	ld   [bc], a                                     ; $4137: $02
	ld   b, $7d                                      ; $4138: $06 $7d
	ld   d, d                                        ; $413a: $52
	ld   d, d                                        ; $413b: $52
	ld   e, c                                        ; $413c: $59
	ld   sp, hl                                      ; $413d: $f9
	dec  c                                           ; $413e: $0d
	ld   h, [hl]                                     ; $413f: $66
	sub  c                                           ; $4140: $91
	ld   d, b                                        ; $4141: $50
	sbc  [hl]                                        ; $4142: $9e
	ld   d, d                                        ; $4143: $52
	ld   e, l                                        ; $4144: $5d
	ld   l, d                                        ; $4145: $6a
	ld   a, [$000d]                                  ; $4146: $fa $0d $00
	ld   a, [bc]                                     ; $4149: $0a
	ld   bc, $3402                                   ; $414a: $01 $02 $34
	inc  bc                                          ; $414d: $03
	ret  nc                                          ; $414e: $d0

	adc  h                                           ; $414f: $8c
	sbc  l                                           ; $4150: $9d
	ld   h, l                                        ; $4151: $65
	ld   h, b                                        ; $4152: $60
	sbc  b                                           ; $4153: $98
	ld   a, [$000d]                                  ; $4154: $fa $0d $00
	ld   a, [bc]                                     ; $4157: $0a
	add  hl, de                                      ; $4158: $19
	dec  b                                           ; $4159: $05
	inc  bc                                          ; $415a: $03
	cp   c                                           ; $415b: $b9
	push hl                                          ; $415c: $e5
	push af                                          ; $415d: $f5
	ret  c                                           ; $415e: $d8

	ld   h, a                                        ; $415f: $67
	sbc  c                                           ; $4160: $99
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	ld   h, l                                        ; $4163: $65
	sub  c                                           ; $4164: $91
	ld   e, d                                        ; $4165: $5a
	adc  [hl]                                        ; $4166: $8e
	nop                                              ; $4167: $00
	ld   bc, $6b03                                   ; $4168: $01 $03 $6b
	ld   [hl], l                                     ; $416b: $75
	ld   a, l                                        ; $416c: $7d
	sub  a                                           ; $416d: $97
	ld   d, h                                        ; $416e: $54
	nop                                              ; $416f: $00
	ld   [bc], a                                     ; $4170: $02
	rlca                                             ; $4171: $07
	ld   c, b                                        ; $4172: $48
	ld   bc, $0302                                   ; $4173: $01 $02 $03
	ld   bc, $2000                                   ; $4176: $01 $00 $20
	nop                                              ; $4179: $00
	rlca                                             ; $417a: $07
	ld   h, h                                        ; $417b: $64
	ld   bc, $0302                                   ; $417c: $01 $02 $03
	ld   bc, $2001                                   ; $417f: $01 $01 $20
	nop                                              ; $4182: $00
	rlca                                             ; $4183: $07
	ld   h, h                                        ; $4184: $64
	ld   bc, $0302                                   ; $4185: $01 $02 $03
	ld   bc, $2002                                   ; $4188: $01 $02 $20
	nop                                              ; $418b: $00
	ld   b, $64                                      ; $418c: $06 $64
	ld   bc, $061c                                   ; $418e: $01 $1c $06
	ld   bc, $0101                                   ; $4191: $01 $01 $01
	sub  [hl]                                        ; $4194: $96
	ld   h, l                                        ; $4195: $65
	sbc  [hl]                                        ; $4196: $9e
	ld   d, h                                        ; $4197: $54
	adc  h                                           ; $4198: $8c
	ld   d, d                                        ; $4199: $52
	ld   l, h                                        ; $419a: $6c
	sbc  a                                           ; $419b: $9f
	dec  c                                           ; $419c: $0d
	nop                                              ; $419d: $00
	ld   a, [bc]                                     ; $419e: $0a
	dec  b                                           ; $419f: $05
	ld   b, b                                        ; $41a0: $40
	rst  $38                                         ; $41a1: $ff
	inc  bc                                          ; $41a2: $03
	rst  $38                                         ; $41a3: $ff
	ld   bc, $2801                                   ; $41a4: $01 $01 $28
	nop                                              ; $41a7: $00
	ld   b, $8f                                      ; $41a8: $06 $8f
	ld   bc, $000f                                   ; $41aa: $01 $0f $00
	ld   bc, $a501                                   ; $41ad: $01 $01 $a5
	ret  nz                                          ; $41b0: $c0

	call nz, $0dfa                                   ; $41b1: $c4 $fa $0d
	nop                                              ; $41b4: $00
	ld   a, [bc]                                     ; $41b5: $0a
	ld   sp, $2040                                   ; $41b6: $31 $40 $20
	inc  bc                                          ; $41b9: $03
	jr   nz, jr_051_41bd                             ; $41ba: $20 $01

	ld   a, [bc]                                     ; $41bc: $0a

jr_051_41bd:
	add  hl, hl                                      ; $41bd: $29
	nop                                              ; $41be: $00
	inc  e                                           ; $41bf: $1c
	ld   b, $02                                      ; $41c0: $06 $02
	ld   [bc], a                                     ; $41c2: $02
	ld   bc, $4904                                   ; $41c3: $01 $04 $49
	sub  d                                           ; $41c6: $92
	ld   [hl], c                                     ; $41c7: $71
	ld   [hl], h                                     ; $41c8: $74
	sbc  c                                           ; $41c9: $99
	ld   sp, hl                                      ; $41ca: $f9
	dec  c                                           ; $41cb: $0d
	cp   c                                           ; $41cc: $b9
	push hl                                          ; $41cd: $e5
	push af                                          ; $41ce: $f5
	ret  c                                           ; $41cf: $d8

	ld   l, [hl]                                     ; $41d0: $6e
	sbc  e                                           ; $41d1: $9b
	ld   a, [$000d]                                  ; $41d2: $fa $0d $00
	ld   a, [bc]                                     ; $41d5: $0a
	inc  e                                           ; $41d6: $1c
	ld   b, $02                                      ; $41d7: $06 $02
	ld   [bc], a                                     ; $41d9: $02
	ld   bc, $6803                                   ; $41da: $01 $03 $68
	ld   a, l                                        ; $41dd: $7d
	sbc  [hl]                                        ; $41de: $9e
	inc  b                                           ; $41df: $04
	dec  bc                                          ; $41e0: $0b
	inc  bc                                          ; $41e1: $03
	ret  nc                                          ; $41e2: $d0

	ld   [hl], e                                     ; $41e3: $73
	ld   e, e                                        ; $41e4: $5b
	ld   l, [hl]                                     ; $41e5: $6e
	ld   a, [$000d]                                  ; $41e6: $fa $0d $00
	ld   a, [bc]                                     ; $41e9: $0a
	add  hl, de                                      ; $41ea: $19
	dec  b                                           ; $41eb: $05
	inc  bc                                          ; $41ec: $03
	inc  bc                                          ; $41ed: $03
	ld   l, e                                        ; $41ee: $6b
	ld   [hl], l                                     ; $41ef: $75
	ld   a, l                                        ; $41f0: $7d
	sub  a                                           ; $41f1: $97
	ld   d, h                                        ; $41f2: $54
	nop                                              ; $41f3: $00
	nop                                              ; $41f4: $00
	ld   h, l                                        ; $41f5: $65
	sub  c                                           ; $41f6: $91
	ld   e, d                                        ; $41f7: $5a
	adc  [hl]                                        ; $41f8: $8e
	nop                                              ; $41f9: $00
	ld   bc, $e5b9                                   ; $41fa: $01 $b9 $e5
	push af                                          ; $41fd: $f5
	ret  c                                           ; $41fe: $d8

	ld   h, a                                        ; $41ff: $67
	sbc  c                                           ; $4200: $99
	nop                                              ; $4201: $00
	ld   [bc], a                                     ; $4202: $02
	rlca                                             ; $4203: $07

Jump_051_4204:
	jp   c, $0201                                    ; $4204: $da $01 $02

	inc  bc                                          ; $4207: $03
	ld   bc, $2000                                   ; $4208: $01 $00 $20
	nop                                              ; $420b: $00
	rlca                                             ; $420c: $07
	cp   $01                                         ; $420d: $fe $01
	ld   [bc], a                                     ; $420f: $02
	inc  bc                                          ; $4210: $03
	ld   bc, $2001                                   ; $4211: $01 $01 $20
	nop                                              ; $4214: $00
	rlca                                             ; $4215: $07
	cp   $01                                         ; $4216: $fe $01
	ld   [bc], a                                     ; $4218: $02
	inc  bc                                          ; $4219: $03
	ld   bc, $2002                                   ; $421a: $01 $02 $20
	nop                                              ; $421d: $00
	ld   b, $fe                                      ; $421e: $06 $fe
	ld   bc, $061c                                   ; $4220: $01 $1c $06
	ld   bc, $0101                                   ; $4223: $01 $01 $01
	ld   l, e                                        ; $4226: $6b
	ld   d, h                                        ; $4227: $54
	ld   l, [hl]                                     ; $4228: $6e
	ld   a, [$000d]                                  ; $4229: $fa $0d $00
	dec  b                                           ; $422c: $05
	ld   b, b                                        ; $422d: $40
	rst  $38                                         ; $422e: $ff
	inc  bc                                          ; $422f: $03
	rst  $38                                         ; $4230: $ff
	ld   bc, $2801                                   ; $4231: $01 $01 $28
	nop                                              ; $4234: $00
	ld   b, $2d                                      ; $4235: $06 $2d
	ld   [bc], a                                     ; $4237: $02
	ld   bc, $6b03                                   ; $4238: $01 $03 $6b
	ld   [hl], l                                     ; $423b: $75
	ld   a, l                                        ; $423c: $7d
	sub  a                                           ; $423d: $97
	ld   d, h                                        ; $423e: $54
	and  c                                           ; $423f: $a1
	ld   l, [hl]                                     ; $4240: $6e
	ld   a, [$000d]                                  ; $4241: $fa $0d $00
	ld   a, [bc]                                     ; $4244: $0a
	rrca                                             ; $4245: $0f
	nop                                              ; $4246: $00
	ld   bc, $5e01                                   ; $4247: $01 $01 $5e
	ld   d, [hl]                                     ; $424a: $56
	ld   [hl], c                                     ; $424b: $71
	rst  $38                                         ; $424c: $ff
	rst  $38                                         ; $424d: $ff
	dec  c                                           ; $424e: $0d
	nop                                              ; $424f: $00
	ld   a, [bc]                                     ; $4250: $0a
	ld   sp, $2040                                   ; $4251: $31 $40 $20
	inc  bc                                          ; $4254: $03
	jr   nz, jr_051_4258                             ; $4255: $20 $01

	ld   a, [bc]                                     ; $4257: $0a

jr_051_4258:
	add  hl, hl                                      ; $4258: $29
	nop                                              ; $4259: $00
	inc  e                                           ; $425a: $1c
	ld   b, $02                                      ; $425b: $06 $02
	ld   [bc], a                                     ; $425d: $02
	ld   bc, $4904                                   ; $425e: $01 $04 $49
	sub  d                                           ; $4261: $92
	ld   [hl], c                                     ; $4262: $71
	ld   [hl], h                                     ; $4263: $74
	sbc  c                                           ; $4264: $99
	ld   sp, hl                                      ; $4265: $f9
	dec  c                                           ; $4266: $0d
	inc  bc                                          ; $4267: $03
	ld   l, e                                        ; $4268: $6b
	ld   [hl], l                                     ; $4269: $75
	ld   a, l                                        ; $426a: $7d
	sub  a                                           ; $426b: $97
	ld   d, h                                        ; $426c: $54
	and  c                                           ; $426d: $a1
	ld   l, [hl]                                     ; $426e: $6e
	sbc  e                                           ; $426f: $9b
	ld   a, [$000d]                                  ; $4270: $fa $0d $00
	ld   a, [bc]                                     ; $4273: $0a
	inc  e                                           ; $4274: $1c
	ld   b, $02                                      ; $4275: $06 $02
	ld   [bc], a                                     ; $4277: $02
	ld   bc, $6903                                   ; $4278: $01 $03 $69
	ld   [bc], a                                     ; $427b: $02
	xor  d                                           ; $427c: $aa
	ld   a, l                                        ; $427d: $7d
	inc  bc                                          ; $427e: $03
	ld   h, l                                        ; $427f: $65
	inc  bc                                          ; $4280: $03
	ret  nc                                          ; $4281: $d0

	adc  h                                           ; $4282: $8c
	sbc  l                                           ; $4283: $9d
	ld   h, l                                        ; $4284: $65
	ld   h, b                                        ; $4285: $60
	sbc  b                                           ; $4286: $98
	ld   l, [hl]                                     ; $4287: $6e
	ld   a, [$000d]                                  ; $4288: $fa $0d $00
	ld   a, [bc]                                     ; $428b: $0a
	add  hl, de                                      ; $428c: $19
	dec  b                                           ; $428d: $05
	inc  bc                                          ; $428e: $03
	ld   h, l                                        ; $428f: $65
	sub  c                                           ; $4290: $91
	ld   e, d                                        ; $4291: $5a
	adc  [hl]                                        ; $4292: $8e
	nop                                              ; $4293: $00
	nop                                              ; $4294: $00
	inc  bc                                          ; $4295: $03
	ld   l, e                                        ; $4296: $6b
	ld   [hl], l                                     ; $4297: $75
	ld   a, l                                        ; $4298: $7d
	sub  a                                           ; $4299: $97
	ld   d, h                                        ; $429a: $54
	nop                                              ; $429b: $00
	ld   bc, $e5b9                                   ; $429c: $01 $b9 $e5
	push af                                          ; $429f: $f5
	ret  c                                           ; $42a0: $d8

	ld   h, a                                        ; $42a1: $67
	sbc  c                                           ; $42a2: $99
	nop                                              ; $42a3: $00
	ld   [bc], a                                     ; $42a4: $02
	rlca                                             ; $42a5: $07
	ld   a, h                                        ; $42a6: $7c
	ld   [bc], a                                     ; $42a7: $02
	ld   [bc], a                                     ; $42a8: $02
	inc  bc                                          ; $42a9: $03
	ld   bc, $2000                                   ; $42aa: $01 $00 $20
	nop                                              ; $42ad: $00
	rlca                                             ; $42ae: $07
	sbc  a                                           ; $42af: $9f
	ld   [bc], a                                     ; $42b0: $02
	ld   [bc], a                                     ; $42b1: $02
	inc  bc                                          ; $42b2: $03
	ld   bc, $2001                                   ; $42b3: $01 $01 $20
	nop                                              ; $42b6: $00
	rlca                                             ; $42b7: $07
	sbc  a                                           ; $42b8: $9f
	ld   [bc], a                                     ; $42b9: $02
	ld   [bc], a                                     ; $42ba: $02
	inc  bc                                          ; $42bb: $03
	ld   bc, $2002                                   ; $42bc: $01 $02 $20
	nop                                              ; $42bf: $00
	ld   b, $9f                                      ; $42c0: $06 $9f
	ld   [bc], a                                     ; $42c2: $02
	inc  e                                           ; $42c3: $1c
	ld   b, $01                                      ; $42c4: $06 $01
	ld   bc, $9601                                   ; $42c6: $01 $01 $96
	ld   h, l                                        ; $42c9: $65
	ld   a, [$6f0d]                                  ; $42ca: $fa $0d $6f
	sub  c                                           ; $42cd: $91
	and  c                                           ; $42ce: $a1
	halt                                             ; $42cf: $76
	ld   h, l                                        ; $42d0: $65
	sub  c                                           ; $42d1: $91
	ld   e, d                                        ; $42d2: $5a
	and  c                                           ; $42d3: $a1
	ld   l, [hl]                                     ; $42d4: $6e
	ld   a, b                                        ; $42d5: $78
	sbc  a                                           ; $42d6: $9f
	dec  c                                           ; $42d7: $0d
	nop                                              ; $42d8: $00
	ld   a, [bc]                                     ; $42d9: $0a
	dec  b                                           ; $42da: $05
	ld   b, b                                        ; $42db: $40
	rst  $38                                         ; $42dc: $ff
	inc  bc                                          ; $42dd: $03
	rst  $38                                         ; $42de: $ff
	ld   bc, $2801                                   ; $42df: $01 $01 $28
	nop                                              ; $42e2: $00
	ld   b, $ca                                      ; $42e3: $06 $ca
	ld   [bc], a                                     ; $42e5: $02
	rrca                                             ; $42e6: $0f
	nop                                              ; $42e7: $00
	ld   bc, $b101                                   ; $42e8: $01 $01 $b1
	reti                                             ; $42eb: $d9


	call nz, $0dfa                                   ; $42ec: $c4 $fa $0d
	nop                                              ; $42ef: $00
	ld   a, [bc]                                     ; $42f0: $0a
	ld   sp, $2040                                   ; $42f1: $31 $40 $20
	inc  bc                                          ; $42f4: $03
	jr   nz, jr_051_42f8                             ; $42f5: $20 $01

	ld   a, [bc]                                     ; $42f7: $0a

jr_051_42f8:
	add  hl, hl                                      ; $42f8: $29
	nop                                              ; $42f9: $00
	inc  e                                           ; $42fa: $1c
	ld   b, $02                                      ; $42fb: $06 $02
	ld   [bc], a                                     ; $42fd: $02
	ld   bc, $acd1                                   ; $42fe: $01 $d1 $ac
	ld   a, [$650d]                                  ; $4301: $fa $0d $65
	sub  c                                           ; $4304: $91
	ld   e, d                                        ; $4305: $5a
	adc  [hl]                                        ; $4306: $8e
	and  c                                           ; $4307: $a1
	ld   l, [hl]                                     ; $4308: $6e
	sub  [hl]                                        ; $4309: $96
	ld   a, [$000d]                                  ; $430a: $fa $0d $00
	ld   a, [bc]                                     ; $430d: $0a
	ld   b, $ca                                      ; $430e: $06 $ca
	ld   [bc], a                                     ; $4310: $02
	rlca                                             ; $4311: $07
	inc  e                                           ; $4312: $1c
	inc  bc                                          ; $4313: $03
	inc  bc                                          ; $4314: $03
	rst  $38                                         ; $4315: $ff
	ld   bc, $2002                                   ; $4316: $01 $02 $20
	nop                                              ; $4319: $00
	rlca                                             ; $431a: $07
	ld   e, b                                        ; $431b: $58
	inc  bc                                          ; $431c: $03
	inc  bc                                          ; $431d: $03
	rst  $38                                         ; $431e: $ff
	ld   bc, $2301                                   ; $431f: $01 $01 $23
	nop                                              ; $4322: $00
	inc  e                                           ; $4323: $1c
	ld   b, $01                                      ; $4324: $06 $01
	ld   bc, $401d                                   ; $4326: $01 $1d $40
	ld   d, $03                                      ; $4329: $16 $03
	ld   d, $01                                      ; $432b: $16 $01
	inc  bc                                          ; $432d: $03
	jr   z, jr_051_4330                              ; $432e: $28 $00

jr_051_4330:
	ld   bc, $0358                                   ; $4330: $01 $58 $03
	ld   c, a                                        ; $4333: $4f
	sbc  [hl]                                        ; $4334: $9e
	adc  l                                           ; $4335: $8d
	ld   [hl], a                                     ; $4336: $77
	ld   h, c                                        ; $4337: $61
	sbc  e                                           ; $4338: $9b
	ld   d, b                                        ; $4339: $50
	sbc  c                                           ; $433a: $99
	ld   l, h                                        ; $433b: $6c
	sbc  a                                           ; $433c: $9f
	dec  c                                           ; $433d: $0d
	ld   h, c                                        ; $433e: $61
	ld   a, h                                        ; $433f: $7c
	inc  bc                                          ; $4340: $03
	cp   $03                                         ; $4341: $fe $03
	add  [hl]                                        ; $4343: $86
	ld   [hl], l                                     ; $4344: $75
	xor  l                                           ; $4345: $ad
	push af                                          ; $4346: $f5
	pop  de                                          ; $4347: $d1
	xor  $96                                         ; $4348: $ee $96
	ld   a, b                                        ; $434a: $78
	sbc  a                                           ; $434b: $9f
	dec  c                                           ; $434c: $0d
	ld   h, [hl]                                     ; $434d: $66
	sub  c                                           ; $434e: $91
	sbc  [hl]                                        ; $434f: $9e
	ld   e, b                                        ; $4350: $58
	sub  d                                           ; $4351: $92
	ld   h, a                                        ; $4352: $67
	adc  l                                           ; $4353: $8d
	sbc  a                                           ; $4354: $9f
	dec  c                                           ; $4355: $0d
	nop                                              ; $4356: $00
	ld   a, [bc]                                     ; $4357: $0a
	dec  c                                           ; $4358: $0d
	nop                                              ; $4359: $00
	nop                                              ; $435a: $00
	rrca                                             ; $435b: $0f
	nop                                              ; $435c: $00
	ld   bc, $1e09                                   ; $435d: $01 $09 $1e
	add  hl, hl                                      ; $4360: $29
	nop                                              ; $4361: $00
	nop                                              ; $4362: $00
	inc  e                                           ; $4363: $1c
	ld   b, $00                                      ; $4364: $06 $00
	nop                                              ; $4366: $00
	ld   bc, $5490                                   ; $4367: $01 $90 $54
	ld   l, a                                        ; $436a: $6f
	sub  l                                           ; $436b: $95
	ld   [hl], c                                     ; $436c: $71
	halt                                             ; $436d: $76
	xor  h                                           ; $436e: $ac
	push af                                          ; $436f: $f5
	and  b                                           ; $4370: $a0
	dec  c                                           ; $4371: $0d
	sub  d                                           ; $4372: $92
	ld   h, l                                        ; $4373: $65
	ld   a, b                                        ; $4374: $78
	sbc  l                                           ; $4375: $9d
	ld   a, b                                        ; $4376: $78
	ld   d, d                                        ; $4377: $52
	halt                                             ; $4378: $76
	ld   a, b                                        ; $4379: $78
	rst  $38                                         ; $437a: $ff
	rst  $38                                         ; $437b: $ff
	dec  c                                           ; $437c: $0d
	adc  h                                           ; $437d: $8c
	sbc  [hl]                                        ; $437e: $9e
	xor  l                                           ; $437f: $ad
	push af                                          ; $4380: $f5
	pop  de                                          ; $4381: $d1
	xor  $96                                         ; $4382: $ee $96
	sbc  a                                           ; $4384: $9f
	dec  c                                           ; $4385: $0d
	nop                                              ; $4386: $00
	ld   a, [bc]                                     ; $4387: $0a
	ld   bc, $9166                                   ; $4388: $01 $66 $91
	sbc  [hl]                                        ; $438b: $9e
	ld   e, b                                        ; $438c: $58
	sub  d                                           ; $438d: $92
	ld   h, a                                        ; $438e: $67
	adc  l                                           ; $438f: $8d
	sbc  a                                           ; $4390: $9f
	dec  c                                           ; $4391: $0d
	nop                                              ; $4392: $00
	ld   a, [bc]                                     ; $4393: $0a
	dec  c                                           ; $4394: $0d
	nop                                              ; $4395: $00
	nop                                              ; $4396: $00
	rrca                                             ; $4397: $0f
	nop                                              ; $4398: $00
	ld   bc, $1e09                                   ; $4399: $01 $09 $1e
	add  hl, hl                                      ; $439c: $29
	nop                                              ; $439d: $00
	nop                                              ; $439e: $00
	inc  e                                           ; $439f: $1c
	ld   b, $05                                      ; $43a0: $06 $05
	dec  b                                           ; $43a2: $05
	dec  e                                           ; $43a3: $1d
	ld   b, b                                        ; $43a4: $40
	ld   d, $03                                      ; $43a5: $16 $03
	ld   d, $01                                      ; $43a7: $16 $01
	ld   bc, $0029                                   ; $43a9: $01 $29 $00
	ld   bc, $0358                                   ; $43ac: $01 $58 $03
	ld   c, a                                        ; $43af: $4f
	cp   h                                           ; $43b0: $bc
	push af                                          ; $43b1: $f5
	cp   d                                           ; $43b2: $ba
	ld   a, b                                        ; $43b3: $78
	ld   d, d                                        ; $43b4: $52
	sub  [hl]                                        ; $43b5: $96
	rst  $38                                         ; $43b6: $ff
	rst  $38                                         ; $43b7: $ff
	dec  c                                           ; $43b8: $0d
	adc  h                                           ; $43b9: $8c
	ld   d, b                                        ; $43ba: $50
	sbc  [hl]                                        ; $43bb: $9e
	ld   [bc], a                                     ; $43bc: $02
	and  l                                           ; $43bd: $a5
	inc  b                                           ; $43be: $04
	rst  $28                                         ; $43bf: $ef
	ld   a, l                                        ; $43c0: $7d
	sub  h                                           ; $43c1: $94
	ld   [hl], c                                     ; $43c2: $71
	ld   e, l                                        ; $43c3: $5d
	sbc  b                                           ; $43c4: $98
	inc  b                                           ; $43c5: $04
	ld   b, d                                        ; $43c6: $42
	ld   a, b                                        ; $43c7: $78
	sbc  a                                           ; $43c8: $9f
	dec  c                                           ; $43c9: $0d
	ld   h, [hl]                                     ; $43ca: $66
	sub  c                                           ; $43cb: $91
	ld   d, b                                        ; $43cc: $50
	ld   a, b                                        ; $43cd: $78
	sbc  a                                           ; $43ce: $9f
	dec  c                                           ; $43cf: $0d
	nop                                              ; $43d0: $00
	ld   a, [bc]                                     ; $43d1: $0a
	dec  c                                           ; $43d2: $0d
	nop                                              ; $43d3: $00
	nop                                              ; $43d4: $00
	rrca                                             ; $43d5: $0f
	nop                                              ; $43d6: $00
	ld   bc, $1e09                                   ; $43d7: $01 $09 $1e
	add  hl, hl                                      ; $43da: $29
	nop                                              ; $43db: $00
	nop                                              ; $43dc: $00
	nop                                              ; $43dd: $00
	inc  b                                           ; $43de: $04
	add  b                                           ; $43df: $80
	ld   b, b                                        ; $43e0: $40
	ld   bc, $20ff                                   ; $43e1: $01 $ff $20
	inc  bc                                          ; $43e4: $03
	ld   h, h                                        ; $43e5: $64
	ld   [bc], a                                     ; $43e6: $02
	nop                                              ; $43e7: $00
	jr   nz, jr_051_4406                             ; $43e8: $20 $1c

	nop                                              ; $43ea: $00
	ld   c, $4a                                      ; $43eb: $0e $4a
	rrca                                             ; $43ed: $0f
	nop                                              ; $43ee: $00
	ld   bc, $0502                                   ; $43ef: $01 $02 $05
	add  b                                           ; $43f2: $80
	ld   b, c                                        ; $43f3: $41
	ld   bc, $0001                                   ; $43f4: $01 $01 $00
	inc  d                                           ; $43f7: $14
	ld   b, $01                                      ; $43f8: $06 $01
	ld   bc, $a5a3                                   ; $43fa: $01 $a3 $a5
	db   $ec                                         ; $43fd: $ec
	cp   d                                           ; $43fe: $ba
	sbc  [hl]                                        ; $43ff: $9e
	dec  c                                           ; $4400: $0d
	inc  b                                           ; $4401: $04
	ldh  [$03], a                                    ; $4402: $e0 $03
	dec  hl                                          ; $4404: $2b
	inc  bc                                          ; $4405: $03

jr_051_4406:
	pop  hl                                          ; $4406: $e1
	sbc  b                                           ; $4407: $98
	dec  b                                           ; $4408: $05
	db   $10                                         ; $4409: $10
	ld   l, l                                        ; $440a: $6d
	sub  [hl]                                        ; $440b: $96
	sbc  a                                           ; $440c: $9f
	dec  c                                           ; $440d: $0d
	nop                                              ; $440e: $00
	ld   a, [bc]                                     ; $440f: $0a
	rrca                                             ; $4410: $0f
	inc  b                                           ; $4411: $04
	ld   bc, $5001                                   ; $4412: $01 $01 $50
	sbc  [hl]                                        ; $4415: $9e
	ld   l, a                                        ; $4416: $6f
	ld   d, d                                        ; $4417: $52
	ld   [bc], a                                     ; $4418: $02
	inc  de                                          ; $4419: $13
	ld   l, a                                        ; $441a: $6f
	sub  c                                           ; $441b: $91
	and  c                                           ; $441c: $a1
	ld   sp, hl                                      ; $441d: $f9
	dec  c                                           ; $441e: $0d
	ld   l, a                                        ; $441f: $6f
	sub  l                                           ; $4420: $95
	ld   [hl], c                                     ; $4421: $71
	halt                                             ; $4422: $76
	adc  h                                           ; $4423: $8c
	ld   [hl], c                                     ; $4424: $71
	ld   [hl], h                                     ; $4425: $74
	ld   a, e                                        ; $4426: $7b
	sbc  a                                           ; $4427: $9f
	dec  c                                           ; $4428: $0d
	nop                                              ; $4429: $00
	ld   a, [bc]                                     ; $442a: $0a
	rrca                                             ; $442b: $0f
	nop                                              ; $442c: $00
	ld   bc, $5723                                   ; $442d: $01 $23 $57
	inc  e                                           ; $4430: $1c
	inc  b                                           ; $4431: $04
	ld   bc, $0101                                   ; $4432: $01 $01 $01
	ld   d, d                                        ; $4435: $52
	sub  a                                           ; $4436: $97
	ld   [hl], c                                     ; $4437: $71
	ld   h, l                                        ; $4438: $65
	sub  c                                           ; $4439: $91
	ei                                               ; $443a: $fb
	ld   d, d                                        ; $443b: $52
	sbc  a                                           ; $443c: $9f
	dec  c                                           ; $443d: $0d
	adc  h                                           ; $443e: $8c
	ld   [hl], c                                     ; $443f: $71
	ld   [hl], h                                     ; $4440: $74
	ld   l, l                                        ; $4441: $6d
	sub  [hl]                                        ; $4442: $96
	sbc  [hl]                                        ; $4443: $9e
	ld   l, a                                        ; $4444: $6f
	ld   d, d                                        ; $4445: $52
	ld   [bc], a                                     ; $4446: $02
	inc  de                                          ; $4447: $13
	ld   l, a                                        ; $4448: $6f
	sub  c                                           ; $4449: $91
	and  c                                           ; $444a: $a1
	sbc  a                                           ; $444b: $9f
	dec  c                                           ; $444c: $0d
	nop                                              ; $444d: $00
	ld   a, [bc]                                     ; $444e: $0a
	ld   bc, $9166                                   ; $444f: $01 $66 $91
	sbc  [hl]                                        ; $4452: $9e
	ld   l, a                                        ; $4453: $6f
	ld   d, d                                        ; $4454: $52
	ld   [bc], a                                     ; $4455: $02
	inc  de                                          ; $4456: $13
	ld   l, a                                        ; $4457: $6f
	sub  c                                           ; $4458: $91
	and  c                                           ; $4459: $a1
	ld   a, c                                        ; $445a: $79
	ld   a, l                                        ; $445b: $7d
	dec  c                                           ; $445c: $0d
	and  e                                           ; $445d: $a3
	and  l                                           ; $445e: $a5
	db   $ec                                         ; $445f: $ec
	cp   d                                           ; $4460: $ba
	ld   a, h                                        ; $4461: $7c
	ld   l, a                                        ; $4462: $6f
	sub  l                                           ; $4463: $95
	ld   d, h                                        ; $4464: $54
	ld   a, h                                        ; $4465: $7c
	ld   d, h                                        ; $4466: $54
	sbc  b                                           ; $4467: $98
	sub  l                                           ; $4468: $95
	ld   e, l                                        ; $4469: $5d
	and  b                                           ; $446a: $a0
	dec  c                                           ; $446b: $0d
	adc  l                                           ; $446c: $8d
	ld   l, c                                        ; $446d: $69
	ld   [hl], h                                     ; $446e: $74
	ld   d, b                                        ; $446f: $50
	ld   h, b                                        ; $4470: $60
	ld   l, a                                        ; $4471: $6f
	sub  c                                           ; $4472: $91
	ld   d, d                                        ; $4473: $52
	adc  h                                           ; $4474: $8c
	ei                                               ; $4475: $fb
	ld   h, a                                        ; $4476: $67
	sbc  a                                           ; $4477: $9f
	dec  c                                           ; $4478: $0d
	nop                                              ; $4479: $00
	ld   a, [bc]                                     ; $447a: $0a
	add  hl, de                                      ; $447b: $19
	dec  b                                           ; $447c: $05
	ld   [bc], a                                     ; $447d: $02
	ld   e, b                                        ; $447e: $58
	ld   [bc], a                                     ; $447f: $02
	add  b                                           ; $4480: $80
	ld   d, d                                        ; $4481: $52
	ld   h, a                                        ; $4482: $67
	sbc  c                                           ; $4483: $99
	sub  [hl]                                        ; $4484: $96
	nop                                              ; $4485: $00
	nop                                              ; $4486: $00
	ld   [hl], l                                     ; $4487: $75
	ld   e, e                                        ; $4488: $5b
	ld   [hl], c                                     ; $4489: $71
	ld   h, c                                        ; $448a: $61
	ld   a, b                                        ; $448b: $78
	ld   d, d                                        ; $448c: $52
	sub  [hl]                                        ; $448d: $96
	nop                                              ; $448e: $00
	ld   bc, $ba07                                   ; $448f: $01 $07 $ba
	nop                                              ; $4492: $00
	ld   [bc], a                                     ; $4493: $02
	inc  bc                                          ; $4494: $03
	ld   bc, $2000                                   ; $4495: $01 $00 $20
	nop                                              ; $4498: $00
	rlca                                             ; $4499: $07
	jp   hl                                          ; $449a: $e9


	nop                                              ; $449b: $00
	ld   [bc], a                                     ; $449c: $02
	inc  bc                                          ; $449d: $03
	ld   bc, $2001                                   ; $449e: $01 $01 $20
	nop                                              ; $44a1: $00
	ld   b, $c9                                      ; $44a2: $06 $c9
	nop                                              ; $44a4: $00
	rrca                                             ; $44a5: $0f
	nop                                              ; $44a6: $00
	ld   bc, $5801                                   ; $44a7: $01 $01 $58
	ld   [bc], a                                     ; $44aa: $02
	add  b                                           ; $44ab: $80
	ld   d, d                                        ; $44ac: $52
	ld   h, a                                        ; $44ad: $67
	sbc  c                                           ; $44ae: $99
	sub  [hl]                                        ; $44af: $96
	sbc  a                                           ; $44b0: $9f
	dec  c                                           ; $44b1: $0d
	nop                                              ; $44b2: $00
	ld   a, [bc]                                     ; $44b3: $0a
	inc  e                                           ; $44b4: $1c
	inc  b                                           ; $44b5: $04
	ld   [bc], a                                     ; $44b6: $02
	ld   [bc], a                                     ; $44b7: $02
	ld   bc, $9166                                   ; $44b8: $01 $66 $91
	sbc  [hl]                                        ; $44bb: $9e
	ld   d, d                                        ; $44bc: $52
	ld   e, l                                        ; $44bd: $5d
	sub  [hl]                                        ; $44be: $96
	rst  $38                                         ; $44bf: $ff
	rst  $38                                         ; $44c0: $ff
	dec  c                                           ; $44c1: $0d
	ld   d, [hl]                                     ; $44c2: $56
	ld   d, d                                        ; $44c3: $52
	ld   [hl], c                                     ; $44c4: $71
	ld   a, [$000d]                                  ; $44c5: $fa $0d $00
	ld   a, [bc]                                     ; $44c8: $0a
	dec  c                                           ; $44c9: $0d
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	rrca                                             ; $44cc: $0f
	nop                                              ; $44cd: $00
	ld   bc, $0e0c                                   ; $44ce: $01 $0c $0e
	ld   b, $e3                                      ; $44d1: $06 $e3
	dec  b                                           ; $44d3: $05
	rrca                                             ; $44d4: $0f
	nop                                              ; $44d5: $00
	ld   bc, $7501                                   ; $44d6: $01 $01 $75
	ld   e, e                                        ; $44d9: $5b
	ld   [hl], c                                     ; $44da: $71
	ld   h, c                                        ; $44db: $61
	ld   a, b                                        ; $44dc: $78
	ld   d, d                                        ; $44dd: $52
	sub  [hl]                                        ; $44de: $96
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	dec  c                                           ; $44e1: $0d
	nop                                              ; $44e2: $00
	ld   a, [bc]                                     ; $44e3: $0a
	inc  e                                           ; $44e4: $1c
	inc  b                                           ; $44e5: $04
	rlca                                             ; $44e6: $07
	rlca                                             ; $44e7: $07
	ld   bc, $9e50                                   ; $44e8: $01 $50 $9e
	ld   h, l                                        ; $44eb: $65
	and  c                                           ; $44ec: $a1
	ld   h, [hl]                                     ; $44ed: $66
	ld   [hl], h                                     ; $44ee: $74
	ld   a, b                                        ; $44ef: $78
	ld   d, d                                        ; $44f0: $52
	db   $fc                                         ; $44f1: $fc
	rst  $38                                         ; $44f2: $ff
	rst  $38                                         ; $44f3: $ff
	dec  c                                           ; $44f4: $0d
	nop                                              ; $44f5: $00
	inc  e                                           ; $44f6: $1c
	inc  b                                           ; $44f7: $04
	ld   [bc], a                                     ; $44f8: $02
	ld   [bc], a                                     ; $44f9: $02
	ld   bc, $fb96                                   ; $44fa: $01 $96 $fb
	ld   h, l                                        ; $44fd: $65
	sbc  [hl]                                        ; $44fe: $9e
	ld   d, [hl]                                     ; $44ff: $56
	ld   d, d                                        ; $4500: $52
	ld   [hl], c                                     ; $4501: $71
	ld   a, [$000d]                                  ; $4502: $fa $0d $00
	ld   a, [bc]                                     ; $4505: $0a
	dec  c                                           ; $4506: $0d
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	rrca                                             ; $4509: $0f
	nop                                              ; $450a: $00
	ld   bc, $0e0c                                   ; $450b: $01 $0c $0e
	ld   b, $26                                      ; $450e: $06 $26
	ld   bc, $0816                                   ; $4510: $01 $16 $08
	ld   bc, $9a50                                   ; $4513: $01 $50 $9a
	ld   sp, hl                                      ; $4516: $f9
	dec  c                                           ; $4517: $0d
	ld   h, c                                        ; $4518: $61
	ld   h, c                                        ; $4519: $61
	ld   a, l                                        ; $451a: $7d
	ld   [hl], a                                     ; $451b: $77
	ld   h, c                                        ; $451c: $61
	ld   l, [hl]                                     ; $451d: $6e
	ld   sp, hl                                      ; $451e: $f9
	dec  c                                           ; $451f: $0d
	nop                                              ; $4520: $00
	ld   a, [bc]                                     ; $4521: $0a
	rrca                                             ; $4522: $0f
	dec  bc                                          ; $4523: $0b
	rlca                                             ; $4524: $07
	ld   bc, $5483                                   ; $4525: $01 $83 $54
	rst  $38                                         ; $4528: $ff
	rst  $38                                         ; $4529: $ff
	ld   d, d                                        ; $452a: $52
	ld   d, d                                        ; $452b: $52
	ld   [bc], a                                     ; $452c: $02
	and  c                                           ; $452d: $a1
	inc  bc                                          ; $452e: $03
	and  b                                           ; $452f: $a0
	ld   l, a                                        ; $4530: $6f
	rst  $38                                         ; $4531: $ff
	rst  $38                                         ; $4532: $ff
	dec  c                                           ; $4533: $0d
	nop                                              ; $4534: $00
	ld   a, [bc]                                     ; $4535: $0a
	rrca                                             ; $4536: $0f
	nop                                              ; $4537: $00
	ld   bc, $0101                                   ; $4538: $01 $01 $01
	inc  bc                                          ; $453b: $03
	ld   d, b                                        ; $453c: $50
	sub  d                                           ; $453d: $92
	adc  a                                           ; $453e: $8f
	ld   h, e                                        ; $453f: $63
	and  c                                           ; $4540: $a1
	ld   a, [$0df9]                                  ; $4541: $fa $f9 $0d
	db   $10                                         ; $4544: $10
	ld   l, e                                        ; $4545: $6b
	sbc  d                                           ; $4546: $9a
	ld   a, c                                        ; $4547: $79
	ld   h, c                                        ; $4548: $61
	ld   h, c                                        ; $4549: $61
	ld   a, l                                        ; $454a: $7d
	cp   b                                           ; $454b: $b8
	push hl                                          ; $454c: $e5
	pop  af                                          ; $454d: $f1
	ei                                               ; $454e: $fb
	inc  bc                                          ; $454f: $03
	ld   c, l                                        ; $4550: $4d
	ld   sp, hl                                      ; $4551: $f9
	ld   bc, $0d04                                   ; $4552: $01 $04 $0d
	nop                                              ; $4555: $00
	ld   a, [bc]                                     ; $4556: $0a
	ld   bc, $0301                                   ; $4557: $01 $01 $03
	ld   [hl], a                                     ; $455a: $77
	ld   d, h                                        ; $455b: $54
	ld   h, l                                        ; $455c: $65
	sub  [hl]                                        ; $455d: $96
	ld   d, h                                        ; $455e: $54
	rst  $38                                         ; $455f: $ff
	rst  $38                                         ; $4560: $ff
	ld   sp, hl                                      ; $4561: $f9
	ld   bc, $0d04                                   ; $4562: $01 $04 $0d
	nop                                              ; $4565: $00
	ld   a, [bc]                                     ; $4566: $0a
	add  hl, de                                      ; $4567: $19
	dec  b                                           ; $4568: $05
	ld   [bc], a                                     ; $4569: $02
	ld   [bc], a                                     ; $456a: $02
	and  b                                           ; $456b: $a0
	ld   [hl], e                                     ; $456c: $73
	ld   e, l                                        ; $456d: $5d
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	dec  b                                           ; $4570: $05
	ld   d, $6f                                      ; $4571: $16 $6f
	ld   [bc], a                                     ; $4573: $02
	ld   d, e                                        ; $4574: $53
	sbc  c                                           ; $4575: $99
	nop                                              ; $4576: $00
	ld   bc, $f107                                   ; $4577: $01 $07 $f1
	ld   bc, $0302                                   ; $457a: $01 $02 $03
	ld   bc, $2000                                   ; $457d: $01 $00 $20
	nop                                              ; $4580: $00
	rlca                                             ; $4581: $07
	and  d                                           ; $4582: $a2
	ld   bc, $0302                                   ; $4583: $01 $02 $03
	ld   bc, $2001                                   ; $4586: $01 $01 $20
	nop                                              ; $4589: $00
	ld   b, $c9                                      ; $458a: $06 $c9
	ld   bc, $000f                                   ; $458c: $01 $0f $00
	ld   bc, $0101                                   ; $458f: $01 $01 $01
	inc  bc                                          ; $4592: $03
	sub  d                                           ; $4593: $92
	ld   [hl], c                                     ; $4594: $71
	ld   a, a                                        ; $4595: $7f
	sbc  b                                           ; $4596: $98
	sbc  [hl]                                        ; $4597: $9e
	ld   a, h                                        ; $4598: $7c
	ld   l, h                                        ; $4599: $6c
	ld   e, e                                        ; $459a: $5b
	ld   a, l                                        ; $459b: $7d
	pop  bc                                          ; $459c: $c1
	db   $e3                                         ; $459d: $e3
	ld   l, [hl]                                     ; $459e: $6e
	sub  [hl]                                        ; $459f: $96
	dec  c                                           ; $45a0: $0d
	db   $10                                         ; $45a1: $10
	ld   h, c                                        ; $45a2: $61
	ld   h, c                                        ; $45a3: $61
	ld   a, l                                        ; $45a4: $7d
	ld   d, d                                        ; $45a5: $52
	ld   h, e                                        ; $45a6: $63
	ld   e, h                                        ; $45a7: $5c
	sub  [hl]                                        ; $45a8: $96
	ld   e, l                                        ; $45a9: $5d
	ld   [bc], a                                     ; $45aa: $02
	ld   d, e                                        ; $45ab: $53
	sbc  e                                           ; $45ac: $9b
	ld   d, h                                        ; $45ad: $54
	ld   bc, $0d04                                   ; $45ae: $01 $04 $0d
	nop                                              ; $45b1: $00
	ld   a, [bc]                                     ; $45b2: $0a
	nop                                              ; $45b3: $00
	rrca                                             ; $45b4: $0f
	dec  bc                                          ; $45b5: $0b
	ld   a, [bc]                                     ; $45b6: $0a
	ld   bc, $616b                                   ; $45b7: $01 $6b $61
	ld   a, c                                        ; $45ba: $79
	ld   l, [hl]                                     ; $45bb: $6e
	sbc  d                                           ; $45bc: $9a
	ld   e, c                                        ; $45bd: $59
	ld   d, d                                        ; $45be: $52
	sbc  c                                           ; $45bf: $99
	ld   a, h                                        ; $45c0: $7c
	ld   sp, hl                                      ; $45c1: $f9
	dec  c                                           ; $45c2: $0d
	nop                                              ; $45c3: $00
	ld   a, [bc]                                     ; $45c4: $0a
	rrca                                             ; $45c5: $0f
	nop                                              ; $45c6: $00
	ld   bc, $0101                                   ; $45c7: $01 $01 $01
	inc  bc                                          ; $45ca: $03
	adc  h                                           ; $45cb: $8c
	ld   l, b                                        ; $45cc: $68
	ld   d, d                                        ; $45cd: $52
	rst  $38                                         ; $45ce: $ff
	rst  $38                                         ; $45cf: $ff
	inc  bc                                          ; $45d0: $03
	push de                                          ; $45d1: $d5
	ld   h, b                                        ; $45d2: $60
	sub  [hl]                                        ; $45d3: $96
	ld   d, h                                        ; $45d4: $54
	ld   a, [$0401]                                  ; $45d5: $fa $01 $04
	dec  c                                           ; $45d8: $0d
	nop                                              ; $45d9: $00
	ld   a, [bc]                                     ; $45da: $0a
	nop                                              ; $45db: $00
	rrca                                             ; $45dc: $0f
	nop                                              ; $45dd: $00
	ld   bc, $0101                                   ; $45de: $01 $01 $01
	inc  bc                                          ; $45e1: $03
	sub  b                                           ; $45e2: $90
	ld   d, h                                        ; $45e3: $54
	inc  bc                                          ; $45e4: $03
	ld   l, h                                        ; $45e5: $6c
	ld   h, l                                        ; $45e6: $65
	ld   [bc], a                                     ; $45e7: $02
	and  b                                           ; $45e8: $a0
	ld   [hl], e                                     ; $45e9: $73
	ld   d, d                                        ; $45ea: $52
	ld   [hl], h                                     ; $45eb: $74
	adc  l                                           ; $45ec: $8d
	sub  [hl]                                        ; $45ed: $96
	ld   d, h                                        ; $45ee: $54
	ld   bc, $0d04                                   ; $45ef: $01 $04 $0d
	nop                                              ; $45f2: $00
	ld   a, [bc]                                     ; $45f3: $0a
	rrca                                             ; $45f4: $0f
	dec  bc                                          ; $45f5: $0b
	dec  bc                                          ; $45f6: $0b
	ld   bc, $2002                                   ; $45f7: $01 $02 $20
	inc  b                                           ; $45fa: $04
	xor  d                                           ; $45fb: $aa
	ld   a, h                                        ; $45fc: $7c
	ld   [hl], d                                     ; $45fd: $72
	ld   e, c                                        ; $45fe: $59
	sbc  d                                           ; $45ff: $9a
	ld   e, d                                        ; $4600: $5a
	dec  c                                           ; $4601: $0d
	ld   d, b                                        ; $4602: $50
	sub  a                                           ; $4603: $97
	ld   d, d                                        ; $4604: $52
	dec  b                                           ; $4605: $05
	ld   [de], a                                     ; $4606: $12
	halt                                             ; $4607: $76
	ld   l, c                                        ; $4608: $69
	sbc  c                                           ; $4609: $99
	sbc  l                                           ; $460a: $9d
	rst  $38                                         ; $460b: $ff
	rst  $38                                         ; $460c: $ff
	dec  c                                           ; $460d: $0d
	nop                                              ; $460e: $00
	ld   a, [bc]                                     ; $460f: $0a
	add  hl, de                                      ; $4610: $19
	dec  b                                           ; $4611: $05
	ld   bc, $c004                                   ; $4612: $01 $04 $c0
	inc  bc                                          ; $4615: $03
	ld   a, l                                        ; $4616: $7d
	ld   h, l                                        ; $4617: $65
	ld   l, l                                        ; $4618: $6d
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	rlca                                             ; $461b: $07
	inc  a                                           ; $461c: $3c
	ld   [bc], a                                     ; $461d: $02
	ld   [bc], a                                     ; $461e: $02
	inc  bc                                          ; $461f: $03
	ld   bc, $2000                                   ; $4620: $01 $00 $20
	nop                                              ; $4623: $00
	ld   b, $58                                      ; $4624: $06 $58
	ld   [bc], a                                     ; $4626: $02
	rrca                                             ; $4627: $0f
	nop                                              ; $4628: $00
	ld   bc, $0101                                   ; $4629: $01 $01 $01
	inc  bc                                          ; $462c: $03
	ld   l, e                                        ; $462d: $6b
	sbc  e                                           ; $462e: $9b
	ld   l, e                                        ; $462f: $6b
	sbc  e                                           ; $4630: $9b
	ld   [bc], a                                     ; $4631: $02
	inc  l                                           ; $4632: $2c
	ld   e, e                                        ; $4633: $5b
	inc  bc                                          ; $4634: $03
	ld   h, l                                        ; $4635: $65
	ld   h, b                                        ; $4636: $60
	sub  [hl]                                        ; $4637: $96
	ld   d, h                                        ; $4638: $54
	rst  $38                                         ; $4639: $ff
	rst  $38                                         ; $463a: $ff
	ld   bc, $0d04                                   ; $463b: $01 $04 $0d
	db   $10                                         ; $463e: $10
	dec  c                                           ; $463f: $0d
	nop                                              ; $4640: $00
	ld   a, [bc]                                     ; $4641: $0a
	nop                                              ; $4642: $00
	rrca                                             ; $4643: $0f
	dec  bc                                          ; $4644: $0b
	ld   a, [bc]                                     ; $4645: $0a
	ld   bc, $ffff                                   ; $4646: $01 $ff $ff
	ld   a, [$6b0d]                                  ; $4649: $fa $0d $6b
	ld   h, c                                        ; $464c: $61
	ld   a, c                                        ; $464d: $79
	inc  bc                                          ; $464e: $03
	xor  c                                           ; $464f: $a9
	ld   e, c                                        ; $4650: $59
	ld   d, d                                        ; $4651: $52
	sbc  c                                           ; $4652: $99
	ld   a, h                                        ; $4653: $7c
	ld   sp, hl                                      ; $4654: $f9
	dec  c                                           ; $4655: $0d
	nop                                              ; $4656: $00
	ld   a, [bc]                                     ; $4657: $0a
	rrca                                             ; $4658: $0f
	nop                                              ; $4659: $00
	ld   bc, $0101                                   ; $465a: $01 $01 $01
	inc  bc                                          ; $465d: $03
	ld   [bc], a                                     ; $465e: $02
	and  c                                           ; $465f: $a1
	ld   [hl], e                                     ; $4660: $73
	ld   e, c                                        ; $4661: $59
	sbc  d                                           ; $4662: $9a
	ld   l, l                                        ; $4663: $6d
	ld   a, [$0401]                                  ; $4664: $fa $01 $04
	dec  c                                           ; $4667: $0d
	nop                                              ; $4668: $00
	ld   a, [bc]                                     ; $4669: $0a
	add  hl, de                                      ; $466a: $19
	dec  b                                           ; $466b: $05
	inc  bc                                          ; $466c: $03
	inc  bc                                          ; $466d: $03
	db   $db                                         ; $466e: $db
	ld   bc, $7614                                   ; $466f: $01 $14 $76
	ld   h, a                                        ; $4672: $67
	sbc  c                                           ; $4673: $99
	nop                                              ; $4674: $00
	nop                                              ; $4675: $00
	sub  b                                           ; $4676: $90
	ld   a, h                                        ; $4677: $7c
	adc  h                                           ; $4678: $8c
	ld   a, e                                        ; $4679: $7b
	and  b                                           ; $467a: $a0
	ld   h, a                                        ; $467b: $67
	sbc  c                                           ; $467c: $99
	nop                                              ; $467d: $00
	ld   bc, $d503                                   ; $467e: $01 $03 $d5
	ld   h, b                                        ; $4681: $60
	inc  bc                                          ; $4682: $03
	add  b                                           ; $4683: $80
	ld   h, a                                        ; $4684: $67
	nop                                              ; $4685: $00
	ld   [bc], a                                     ; $4686: $02
	rlca                                             ; $4687: $07
	cp   d                                           ; $4688: $ba
	ld   [bc], a                                     ; $4689: $02
	ld   [bc], a                                     ; $468a: $02
	inc  bc                                          ; $468b: $03
	ld   bc, $2000                                   ; $468c: $01 $00 $20
	nop                                              ; $468f: $00
	rlca                                             ; $4690: $07
	ld   d, h                                        ; $4691: $54
	inc  bc                                          ; $4692: $03
	ld   [bc], a                                     ; $4693: $02
	inc  bc                                          ; $4694: $03
	ld   bc, $2001                                   ; $4695: $01 $01 $20
	nop                                              ; $4698: $00
	rlca                                             ; $4699: $07
	add  sp, $03                                     ; $469a: $e8 $03
	ld   [bc], a                                     ; $469c: $02
	inc  bc                                          ; $469d: $03
	ld   bc, $2002                                   ; $469e: $01 $02 $20
	nop                                              ; $46a1: $00
	ld   b, $80                                      ; $46a2: $06 $80
	inc  b                                           ; $46a4: $04
	rrca                                             ; $46a5: $0f
	nop                                              ; $46a6: $00
	ld   bc, $0101                                   ; $46a7: $01 $01 $01
	inc  bc                                          ; $46aa: $03
	ld   h, c                                        ; $46ab: $61
	ld   h, c                                        ; $46ac: $61
	ld   a, l                                        ; $46ad: $7d
	inc  bc                                          ; $46ae: $03
	db   $db                                         ; $46af: $db
	ld   bc, $7614                                   ; $46b0: $01 $14 $76
	rst  $38                                         ; $46b3: $ff
	rst  $38                                         ; $46b4: $ff
	ld   bc, $0d04                                   ; $46b5: $01 $04 $0d
	nop                                              ; $46b8: $00
	ld   a, [bc]                                     ; $46b9: $0a
	ld   bc, $9e50                                   ; $46ba: $01 $50 $9e
	ld   h, a                                        ; $46bd: $67
	adc  l                                           ; $46be: $8d
	adc  h                                           ; $46bf: $8c
	ld   l, c                                        ; $46c0: $69
	and  c                                           ; $46c1: $a1
	rst  $38                                         ; $46c2: $ff
	rst  $38                                         ; $46c3: $ff
	dec  c                                           ; $46c4: $0d
	ld   [hl], a                                     ; $46c5: $77
	ld   a, b                                        ; $46c6: $78
	ld   l, l                                        ; $46c7: $6d
	ld   e, c                                        ; $46c8: $59
	inc  b                                           ; $46c9: $04
	ld   b, l                                        ; $46ca: $45
	ld   [hl], c                                     ; $46cb: $71
	ld   [hl], h                                     ; $46cc: $74
	sub  a                                           ; $46cd: $97
	ld   [hl], c                                     ; $46ce: $71
	ld   h, l                                        ; $46cf: $65
	sub  c                                           ; $46d0: $91
	sbc  c                                           ; $46d1: $99
	and  c                                           ; $46d2: $a1
	dec  c                                           ; $46d3: $0d
	ld   [hl], l                                     ; $46d4: $75
	ld   h, a                                        ; $46d5: $67
	ld   a, e                                        ; $46d6: $7b
	ld   sp, hl                                      ; $46d7: $f9
	dec  c                                           ; $46d8: $0d
	nop                                              ; $46d9: $00
	ld   a, [bc]                                     ; $46da: $0a
	rrca                                             ; $46db: $0f
	dec  bc                                          ; $46dc: $0b
	ld   a, [bc]                                     ; $46dd: $0a
	ld   bc, $9750                                   ; $46de: $01 $50 $97
	rst  $38                                         ; $46e1: $ff
	rst  $38                                         ; $46e2: $ff
	ld   [$5d00], sp                                 ; $46e3: $08 $00 $5d
	and  c                                           ; $46e6: $a1
	ld   a, b                                        ; $46e7: $78
	ld   a, h                                        ; $46e8: $7c
	ld   sp, hl                                      ; $46e9: $f9
	dec  c                                           ; $46ea: $0d
	sbc  l                                           ; $46eb: $9d
	ld   l, l                                        ; $46ec: $6d
	ld   h, l                                        ; $46ed: $65
	sub  [hl]                                        ; $46ee: $96
	sbc  [hl]                                        ; $46ef: $9e
	ld   d, b                                        ; $46f0: $50
	sub  d                                           ; $46f1: $92
	adc  a                                           ; $46f2: $8f
	sub  [hl]                                        ; $46f3: $96
	sbc  a                                           ; $46f4: $9f
	dec  c                                           ; $46f5: $0d
	nop                                              ; $46f6: $00
	ld   a, [bc]                                     ; $46f7: $0a
	rrca                                             ; $46f8: $0f
	nop                                              ; $46f9: $00
	ld   bc, $5001                                   ; $46fa: $01 $01 $50
	sub  d                                           ; $46fd: $92
	adc  a                                           ; $46fe: $8f
	ld   h, e                                        ; $46ff: $63
	and  c                                           ; $4700: $a1
	ld   [hl], l                                     ; $4701: $75
	ld   h, l                                        ; $4702: $65
	ld   l, l                                        ; $4703: $6d
	ld   e, c                                        ; $4704: $59
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	dec  c                                           ; $4707: $0d
	ld   h, c                                        ; $4708: $61
	sbc  d                                           ; $4709: $9a
	ld   a, l                                        ; $470a: $7d
	inc  bc                                          ; $470b: $03
	add  e                                           ; $470c: $83
	dec  b                                           ; $470d: $05
	dec  c                                           ; $470e: $0d
	ld   h, l                                        ; $470f: $65
	adc  h                                           ; $4710: $8c
	ld   h, l                                        ; $4711: $65
	ld   l, l                                        ; $4712: $6d
	sbc  a                                           ; $4713: $9f
	dec  c                                           ; $4714: $0d
	nop                                              ; $4715: $00
	ld   a, [bc]                                     ; $4716: $0a
	rrca                                             ; $4717: $0f
	dec  bc                                          ; $4718: $0b
	ld   b, $01                                      ; $4719: $06 $01
	ld   [bc], a                                     ; $471b: $02
	and  l                                           ; $471c: $a5
	inc  b                                           ; $471d: $04
	add  hl, hl                                      ; $471e: $29
	ld   e, c                                        ; $471f: $59
	sub  a                                           ; $4720: $97
	ld   [bc], a                                     ; $4721: $02
	and  c                                           ; $4722: $a1
	and  b                                           ; $4723: $a0
	ld   [hl], d                                     ; $4724: $72
	ld   e, a                                        ; $4725: $5f
	ld   [hl], h                                     ; $4726: $74
	ld   a, e                                        ; $4727: $7b
	sbc  a                                           ; $4728: $9f
	dec  c                                           ; $4729: $0d
	nop                                              ; $472a: $00
	ld   a, [bc]                                     ; $472b: $0a
	rrca                                             ; $472c: $0f
	nop                                              ; $472d: $00
	ld   bc, $0101                                   ; $472e: $01 $01 $01
	inc  bc                                          ; $4731: $03
	inc  bc                                          ; $4732: $03
	ld   e, e                                        ; $4733: $5b
	ld   e, c                                        ; $4734: $59
	ld   [hl], c                                     ; $4735: $71
	ld   l, l                                        ; $4736: $6d
	rst  $38                                         ; $4737: $ff
	rst  $38                                         ; $4738: $ff
	ld   bc, $0d04                                   ; $4739: $01 $04 $0d
	nop                                              ; $473c: $00
	ld   a, [bc]                                     ; $473d: $0a
	nop                                              ; $473e: $00
	rrca                                             ; $473f: $0f
	nop                                              ; $4740: $00
	ld   bc, $0101                                   ; $4741: $01 $01 $01
	inc  bc                                          ; $4744: $03
	ld   h, c                                        ; $4745: $61
	ld   d, h                                        ; $4746: $54
	ld   a, b                                        ; $4747: $78
	ld   [hl], c                                     ; $4748: $71
	ld   l, l                                        ; $4749: $6d
	sub  a                                           ; $474a: $97
	rst  $38                                         ; $474b: $ff
	rst  $38                                         ; $474c: $ff
	ld   bc, $0d04                                   ; $474d: $01 $04 $0d
	nop                                              ; $4750: $00
	ld   a, [bc]                                     ; $4751: $0a
	ld   bc, $fb50                                   ; $4752: $01 $50 $fb
	dec  b                                           ; $4755: $05
	ld   [hl], e                                     ; $4756: $73
	ld   l, [hl]                                     ; $4757: $6e
	rst  $38                                         ; $4758: $ff
	rst  $38                                         ; $4759: $ff
	dec  c                                           ; $475a: $0d
	inc  b                                           ; $475b: $04
	rst  $10                                         ; $475c: $d7
	inc  b                                           ; $475d: $04
	ld   hl, $ff6e                                   ; $475e: $21 $6e $ff
	rst  $38                                         ; $4761: $ff
	ld   d, h                                        ; $4762: $54
	ld   d, d                                        ; $4763: $52
	ld   [hl], c                                     ; $4764: $71
	sbc  a                                           ; $4765: $9f
	dec  c                                           ; $4766: $0d
	nop                                              ; $4767: $00
	ld   a, [bc]                                     ; $4768: $0a
	rrca                                             ; $4769: $0f
	dec  bc                                          ; $476a: $0b
	rlca                                             ; $476b: $07
	ld   bc, $9750                                   ; $476c: $01 $50 $97
	sbc  [hl]                                        ; $476f: $9e
	inc  bc                                          ; $4770: $03
	add  l                                           ; $4771: $85
	inc  b                                           ; $4772: $04
	xor  e                                           ; $4773: $ab
	inc  bc                                          ; $4774: $03
	add  d                                           ; $4775: $82
	ld   [hl], l                                     ; $4776: $75
	ld   h, a                                        ; $4777: $67
	ld   e, c                                        ; $4778: $59
	rst  $38                                         ; $4779: $ff
	rst  $38                                         ; $477a: $ff
	dec  c                                           ; $477b: $0d
	nop                                              ; $477c: $00
	ld   a, [bc]                                     ; $477d: $0a
	rrca                                             ; $477e: $0f
	nop                                              ; $477f: $00
	ld   bc, $0101                                   ; $4780: $01 $01 $01
	inc  bc                                          ; $4783: $03
	inc  bc                                          ; $4784: $03
	ld   e, e                                        ; $4785: $5b
	ld   e, c                                        ; $4786: $59
	ld   [hl], c                                     ; $4787: $71
	ld   l, l                                        ; $4788: $6d
	rst  $38                                         ; $4789: $ff
	rst  $38                                         ; $478a: $ff
	ld   bc, $0d04                                   ; $478b: $01 $04 $0d
	nop                                              ; $478e: $00
	ld   a, [bc]                                     ; $478f: $0a
	rrca                                             ; $4790: $0f
	dec  bc                                          ; $4791: $0b
	ld   [$ff01], sp                                 ; $4792: $08 $01 $ff
	rst  $38                                         ; $4795: $ff
	halt                                             ; $4796: $76
	ld   [bc], a                                     ; $4797: $02
	sbc  l                                           ; $4798: $9d
	ld   d, d                                        ; $4799: $52
	ld   l, l                                        ; $479a: $6d
	ld   d, d                                        ; $479b: $52
	halt                                             ; $479c: $76
	ld   h, c                                        ; $479d: $61
	sbc  e                                           ; $479e: $9b
	ld   l, [hl]                                     ; $479f: $6e
	ld   e, a                                        ; $47a0: $5f
	ld   [hl], a                                     ; $47a1: $77
	sbc  [hl]                                        ; $47a2: $9e
	dec  c                                           ; $47a3: $0d
	inc  bc                                          ; $47a4: $03
	add  l                                           ; $47a5: $85
	inc  b                                           ; $47a6: $04
	xor  e                                           ; $47a7: $ab
	inc  bc                                          ; $47a8: $03
	add  d                                           ; $47a9: $82
	ld   a, c                                        ; $47aa: $79
	ld   h, l                                        ; $47ab: $65
	ld   [hl], h                                     ; $47ac: $74
	ld   a, l                                        ; $47ad: $7d
	dec  b                                           ; $47ae: $05
	rra                                              ; $47af: $1f
	ld   d, d                                        ; $47b0: $52
	inc  bc                                          ; $47b1: $03
	and  l                                           ; $47b2: $a5
	ld   a, e                                        ; $47b3: $7b
	sbc  a                                           ; $47b4: $9f
	dec  c                                           ; $47b5: $0d
	ld   [$5d00], sp                                 ; $47b6: $08 $00 $5d
	and  c                                           ; $47b9: $a1
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	dec  c                                           ; $47bc: $0d
	nop                                              ; $47bd: $00
	ld   a, [bc]                                     ; $47be: $0a
	rrca                                             ; $47bf: $0f
	nop                                              ; $47c0: $00
	ld   bc, $0101                                   ; $47c1: $01 $01 $01
	inc  bc                                          ; $47c4: $03
	ld   d, b                                        ; $47c5: $50
	ld   l, a                                        ; $47c6: $6f
	sub  c                                           ; $47c7: $91
	db   $fc                                         ; $47c8: $fc
	rst  $38                                         ; $47c9: $ff
	rst  $38                                         ; $47ca: $ff
	ld   bc, $0d04                                   ; $47cb: $01 $04 $0d
	nop                                              ; $47ce: $00
	ld   a, [bc]                                     ; $47cf: $0a
	ld   b, $33                                      ; $47d0: $06 $33
	inc  b                                           ; $47d2: $04
	rrca                                             ; $47d3: $0f
	nop                                              ; $47d4: $00
	ld   bc, $0101                                   ; $47d5: $01 $01 $01
	inc  bc                                          ; $47d8: $03
	ld   h, c                                        ; $47d9: $61
	ld   h, c                                        ; $47da: $61
	ld   a, l                                        ; $47db: $7d
	inc  bc                                          ; $47dc: $03
	push de                                          ; $47dd: $d5
	ld   h, b                                        ; $47de: $60
	sub  [hl]                                        ; $47df: $96
	ld   d, h                                        ; $47e0: $54
	rst  $38                                         ; $47e1: $ff
	rst  $38                                         ; $47e2: $ff
	ld   bc, $0d04                                   ; $47e3: $01 $04 $0d
	nop                                              ; $47e6: $00
	ld   a, [bc]                                     ; $47e7: $0a
	ld   bc, $fa50                                   ; $47e8: $01 $50 $fa
	dec  c                                           ; $47eb: $0d
	ld   a, b                                        ; $47ec: $78
	ld   l, d                                        ; $47ed: $6a
	ld   h, c                                        ; $47ee: $61
	and  c                                           ; $47ef: $a1
	ld   a, b                                        ; $47f0: $78
	halt                                             ; $47f1: $76
	ld   h, c                                        ; $47f2: $61
	sbc  e                                           ; $47f3: $9b
	ld   a, c                                        ; $47f4: $79
	dec  c                                           ; $47f5: $0d
	ld   a, d                                        ; $47f6: $7a
	sbc  d                                           ; $47f7: $9a
	ld   l, h                                        ; $47f8: $6c
	ld   d, h                                        ; $47f9: $54
	ld   e, e                                        ; $47fa: $5b
	and  c                                           ; $47fb: $a1
	ld   e, d                                        ; $47fc: $5a
	ld   sp, hl                                      ; $47fd: $f9
	dec  c                                           ; $47fe: $0d
	nop                                              ; $47ff: $00
	ld   a, [bc]                                     ; $4800: $0a
	ld   bc, $9d54                                   ; $4801: $01 $54 $9d
	ld   [hl], c                                     ; $4804: $71
	ld   a, [$000d]                                  ; $4805: $fa $0d $00
	ld   a, [bc]                                     ; $4808: $0a
	ld   c, $03                                      ; $4809: $0e $03
	inc  c                                           ; $480b: $0c
	inc  bc                                          ; $480c: $03
	add  hl, bc                                      ; $480d: $09
	ld   e, $01                                      ; $480e: $1e $01
	ld   d, b                                        ; $4810: $50
	ld   l, l                                        ; $4811: $6d
	ld   l, l                                        ; $4812: $6d
	ld   l, l                                        ; $4813: $6d
	ld   l, l                                        ; $4814: $6d
	ld   l, l                                        ; $4815: $6d
	ld   l, l                                        ; $4816: $6d
	rst  $38                                         ; $4817: $ff
	rst  $38                                         ; $4818: $ff
	dec  c                                           ; $4819: $0d
	nop                                              ; $481a: $00
	ld   a, [bc]                                     ; $481b: $0a
	inc  c                                           ; $481c: $0c
	inc  c                                           ; $481d: $0c
	ld   c, $66                                      ; $481e: $0e $66
	inc  e                                           ; $4820: $1c
	dec  bc                                          ; $4821: $0b
	ld   [bc], a                                     ; $4822: $02
	ld   [bc], a                                     ; $4823: $02
	ld   bc, $0008                                   ; $4824: $01 $08 $00
	ld   e, l                                        ; $4827: $5d
	and  c                                           ; $4828: $a1
	rst  $38                                         ; $4829: $ff
	rst  $38                                         ; $482a: $ff
	dec  c                                           ; $482b: $0d
	ld   a, h                                        ; $482c: $7c
	ld   l, h                                        ; $482d: $6c
	ld   e, e                                        ; $482e: $5b
	ld   a, l                                        ; $482f: $7d
	ld   b, $11                                      ; $4830: $06 $11
	inc  bc                                          ; $4832: $03
	ld   e, $96                                      ; $4833: $1e $96
	rst  $38                                         ; $4835: $ff
	rst  $38                                         ; $4836: $ff
	dec  c                                           ; $4837: $0d
	nop                                              ; $4838: $00
	ld   a, [bc]                                     ; $4839: $0a
	ld   bc, $aa02                                   ; $483a: $01 $02 $aa
	ld   [hl], l                                     ; $483d: $75
	ld   l, l                                        ; $483e: $6d
	ld   [hl], c                                     ; $483f: $71
	add  l                                           ; $4840: $85
	sbc  b                                           ; $4841: $98
	dec  c                                           ; $4842: $0d
	ld   e, b                                        ; $4843: $58
	ld   [bc], a                                     ; $4844: $02
	rst  $30                                         ; $4845: $f7
	ld   [bc], a                                     ; $4846: $02
	ret  nc                                          ; $4847: $d0

	ld   h, l                                        ; $4848: $65
	ld   [hl], h                                     ; $4849: $74
	ld   d, b                                        ; $484a: $50
	ld   h, b                                        ; $484b: $60
	sbc  c                                           ; $484c: $99
	ld   e, c                                        ; $484d: $59
	sub  a                                           ; $484e: $97
	dec  c                                           ; $484f: $0d
	ld   e, c                                        ; $4850: $59
	ld   e, l                                        ; $4851: $5d
	ld   h, d                                        ; $4852: $62
	ld   a, b                                        ; $4853: $78
	ld   h, e                                        ; $4854: $63
	ld   d, d                                        ; $4855: $52
	sbc  a                                           ; $4856: $9f
	dec  c                                           ; $4857: $0d
	nop                                              ; $4858: $00
	ld   a, [bc]                                     ; $4859: $0a
	rlca                                             ; $485a: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $485b: $cf
	inc  b                                           ; $485c: $04
	inc  b                                           ; $485d: $04
	add  b                                           ; $485e: $80
	ld   b, $01                                      ; $485f: $06 $01
	rst  $38                                         ; $4861: $ff
	jr   nz, jr_051_4864                             ; $4862: $20 $00

jr_051_4864:
	dec  b                                           ; $4864: $05
	add  b                                           ; $4865: $80
	ld   b, $01                                      ; $4866: $06 $01
	ld   bc, $0000                                   ; $4868: $01 $00 $00
	inc  c                                           ; $486b: $0c
	ld   [bc], a                                     ; $486c: $02
	ld   c, $66                                      ; $486d: $0e $66
	inc  e                                           ; $486f: $1c
	dec  bc                                          ; $4870: $0b
	ld   [bc], a                                     ; $4871: $02
	ld   [bc], a                                     ; $4872: $02
	ld   bc, $0008                                   ; $4873: $01 $08 $00
	ld   e, l                                        ; $4876: $5d
	and  c                                           ; $4877: $a1
	rst  $38                                         ; $4878: $ff
	rst  $38                                         ; $4879: $ff
	dec  c                                           ; $487a: $0d
	ld   a, h                                        ; $487b: $7c
	ld   l, h                                        ; $487c: $6c
	ld   e, e                                        ; $487d: $5b
	ld   a, l                                        ; $487e: $7d
	ld   b, $11                                      ; $487f: $06 $11
	inc  bc                                          ; $4881: $03
	ld   e, $96                                      ; $4882: $1e $96
	rst  $38                                         ; $4884: $ff
	rst  $38                                         ; $4885: $ff
	dec  c                                           ; $4886: $0d
	nop                                              ; $4887: $00
	ld   a, [bc]                                     ; $4888: $0a
	ld   bc, $aa02                                   ; $4889: $01 $02 $aa
	ld   [hl], l                                     ; $488c: $75
	ld   l, l                                        ; $488d: $6d
	ld   [hl], c                                     ; $488e: $71
	add  l                                           ; $488f: $85
	sbc  b                                           ; $4890: $98
	dec  c                                           ; $4891: $0d
	ld   e, b                                        ; $4892: $58
	ld   [bc], a                                     ; $4893: $02
	rst  $30                                         ; $4894: $f7
	ld   [bc], a                                     ; $4895: $02
	ret  nc                                          ; $4896: $d0

	ld   h, l                                        ; $4897: $65
	ld   [hl], h                                     ; $4898: $74
	ld   d, b                                        ; $4899: $50
	ld   h, b                                        ; $489a: $60
	sbc  c                                           ; $489b: $99
	ld   e, c                                        ; $489c: $59
	sub  a                                           ; $489d: $97
	dec  c                                           ; $489e: $0d
	ld   e, c                                        ; $489f: $59
	ld   e, l                                        ; $48a0: $5d
	ld   h, d                                        ; $48a1: $62
	ld   a, b                                        ; $48a2: $78
	ld   h, e                                        ; $48a3: $63
	ld   d, d                                        ; $48a4: $52
	sbc  a                                           ; $48a5: $9f
	dec  c                                           ; $48a6: $0d
	nop                                              ; $48a7: $00
	ld   a, [bc]                                     ; $48a8: $0a
	rlca                                             ; $48a9: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48aa: $cf
	inc  b                                           ; $48ab: $04
	inc  b                                           ; $48ac: $04
	add  b                                           ; $48ad: $80
	ld   b, $01                                      ; $48ae: $06 $01
	rst  $38                                         ; $48b0: $ff
	jr   nz, jr_051_48b3                             ; $48b1: $20 $00

jr_051_48b3:
	dec  b                                           ; $48b3: $05
	add  b                                           ; $48b4: $80
	ld   b, $01                                      ; $48b5: $06 $01
	ld   bc, $0000                                   ; $48b7: $01 $00 $00
	inc  c                                           ; $48ba: $0c
	ld   [bc], a                                     ; $48bb: $02
	ld   c, $02                                      ; $48bc: $0e $02
	rrca                                             ; $48be: $0f
	nop                                              ; $48bf: $00
	ld   bc, $5001                                   ; $48c0: $01 $01 $50
	rst  $38                                         ; $48c3: $ff
	rst  $38                                         ; $48c4: $ff
	sbc  [hl]                                        ; $48c5: $9e
	sub  d                                           ; $48c6: $92
	ld   a, [hl]                                     ; $48c7: $7e
	ld   d, d                                        ; $48c8: $52
	sub  [hl]                                        ; $48c9: $96
	ld   a, b                                        ; $48ca: $78
	db   $fc                                         ; $48cb: $fc
	rst  $38                                         ; $48cc: $ff
	rst  $38                                         ; $48cd: $ff
	dec  c                                           ; $48ce: $0d
	inc  bc                                          ; $48cf: $03
	add  b                                           ; $48d0: $80
	dec  b                                           ; $48d1: $05
	db   $10                                         ; $48d2: $10
	inc  bc                                          ; $48d3: $03
	ld   [hl], l                                     ; $48d4: $75
	halt                                             ; $48d5: $76
	ld   a, l                                        ; $48d6: $7d
	ld   d, d                                        ; $48d7: $52
	ld   d, [hl]                                     ; $48d8: $56
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	dec  c                                           ; $48dd: $0d
	rst  $38                                         ; $48de: $ff
	rst  $38                                         ; $48df: $ff
	rst  $38                                         ; $48e0: $ff
	rst  $38                                         ; $48e1: $ff
	rst  $38                                         ; $48e2: $ff
	rst  $38                                         ; $48e3: $ff
	rst  $38                                         ; $48e4: $ff
	rst  $38                                         ; $48e5: $ff
	rst  $38                                         ; $48e6: $ff
	rst  $38                                         ; $48e7: $ff
	dec  c                                           ; $48e8: $0d
	nop                                              ; $48e9: $00
	ld   a, [bc]                                     ; $48ea: $0a
	inc  d                                           ; $48eb: $14
	ld   b, $01                                      ; $48ec: $06 $01
	rrca                                             ; $48ee: $0f
	dec  bc                                          ; $48ef: $0b
	ld   [bc], a                                     ; $48f0: $02
	ld   bc, $0008                                   ; $48f1: $01 $08 $00
	ld   e, l                                        ; $48f4: $5d
	and  c                                           ; $48f5: $a1
	sbc  a                                           ; $48f6: $9f
	dec  c                                           ; $48f7: $0d
	ld   [bc], a                                     ; $48f8: $02
	and  l                                           ; $48f9: $a5
	ld   h, a                                        ; $48fa: $67
	ld   e, [hl]                                     ; $48fb: $5e
	sbc  [hl]                                        ; $48fc: $9e
	inc  bc                                          ; $48fd: $03
	add  l                                           ; $48fe: $85
	inc  b                                           ; $48ff: $04
	xor  e                                           ; $4900: $ab
	inc  bc                                          ; $4901: $03
	add  d                                           ; $4902: $82
	inc  bc                                          ; $4903: $03
	ld   c, l                                        ; $4904: $4d
	ld   a, c                                        ; $4905: $79
	dec  b                                           ; $4906: $05
	db   $10                                         ; $4907: $10
	ld   a, b                                        ; $4908: $78
	ld   h, e                                        ; $4909: $63
	ld   d, d                                        ; $490a: $52
	sbc  a                                           ; $490b: $9f
	dec  c                                           ; $490c: $0d
	nop                                              ; $490d: $00
	ld   a, [bc]                                     ; $490e: $0a
	rrca                                             ; $490f: $0f
	nop                                              ; $4910: $00
	ld   bc, $020c                                   ; $4911: $01 $0c $02
	add  hl, bc                                      ; $4914: $09
	ld   e, $01                                      ; $4915: $1e $01
	adc  h                                           ; $4917: $8c
	sbc  [hl]                                        ; $4918: $9e
	adc  h                                           ; $4919: $8c
	ld   h, e                                        ; $491a: $63
	ld   e, c                                        ; $491b: $59
	rst  $38                                         ; $491c: $ff
	rst  $38                                         ; $491d: $ff
	dec  c                                           ; $491e: $0d
	nop                                              ; $491f: $00
	ld   a, [bc]                                     ; $4920: $0a
	ld   c, $0e                                      ; $4921: $0e $0e
	inc  e                                           ; $4923: $1c
	ld   a, [bc]                                     ; $4924: $0a
	inc  b                                           ; $4925: $04
	inc  b                                           ; $4926: $04
	ld   bc, $5258                                   ; $4927: $01 $58 $52
	sbc  [hl]                                        ; $492a: $9e
	ld   [$9f00], sp                                 ; $492b: $08 $00 $9f
	dec  c                                           ; $492e: $0d
	ld   e, b                                        ; $492f: $58
	adc  a                                           ; $4930: $8f
	ei                                               ; $4931: $fb
	cp   b                                           ; $4932: $b8
	push hl                                          ; $4933: $e5
	pop  af                                          ; $4934: $f1
	ei                                               ; $4935: $fb
	ld   a, h                                        ; $4936: $7c
	ld   l, h                                        ; $4937: $6c
	ld   d, d                                        ; $4938: $52
	ld   [hl], h                                     ; $4939: $74
	ld   l, l                                        ; $493a: $6d
	and  c                                           ; $493b: $a1
	dec  c                                           ; $493c: $0d
	ld   l, [hl]                                     ; $493d: $6e
	ld   [hl], c                                     ; $493e: $71
	ld   [hl], h                                     ; $493f: $74
	ld   a, b                                        ; $4940: $78
	sbc  a                                           ; $4941: $9f
	dec  c                                           ; $4942: $0d
	nop                                              ; $4943: $00
	ld   a, [bc]                                     ; $4944: $0a
	ld   bc, $a102                                   ; $4945: $01 $02 $a1
	inc  bc                                          ; $4948: $03
	and  b                                           ; $4949: $a0
	ld   l, a                                        ; $494a: $6f
	ld   a, l                                        ; $494b: $7d
	sbc  [hl]                                        ; $494c: $9e
	sbc  l                                           ; $494d: $9d
	ld   e, c                                        ; $494e: $59
	sub  a                                           ; $494f: $97
	and  c                                           ; $4950: $a1
	ld   [hl], l                                     ; $4951: $75
	sub  b                                           ; $4952: $90
	ld   a, b                                        ; $4953: $78
	ld   d, d                                        ; $4954: $52
	dec  c                                           ; $4955: $0d
	ld   e, d                                        ; $4956: $5a
	sbc  [hl]                                        ; $4957: $9e
	inc  de                                          ; $4958: $13
	ld   [bc], a                                     ; $4959: $02
	sub  e                                           ; $495a: $93
	sub  b                                           ; $495b: $90
	sub  d                                           ; $495c: $92
	ld   [hl], c                                     ; $495d: $71
	ld   l, a                                        ; $495e: $6f
	sub  c                                           ; $495f: $91
	ei                                               ; $4960: $fb
	dec  c                                           ; $4961: $0d
	adc  h                                           ; $4962: $8c
	ld   l, b                                        ; $4963: $68
	ld   d, d                                        ; $4964: $52
	ld   l, [hl]                                     ; $4965: $6e
	sbc  e                                           ; $4966: $9b
	sbc  a                                           ; $4967: $9f
	dec  c                                           ; $4968: $0d
	nop                                              ; $4969: $00
	ld   a, [bc]                                     ; $496a: $0a
	ld   bc, $7e59                                   ; $496b: $01 $59 $7e
	ld   [hl], c                                     ; $496e: $71
	ld   [hl], h                                     ; $496f: $74
	sub  d                                           ; $4970: $92
	sbc  b                                           ; $4971: $98
	ld   l, l                                        ; $4972: $6d
	ld   d, d                                        ; $4973: $52
	ld   e, d                                        ; $4974: $5a
	dec  c                                           ; $4975: $0d
	ld   [bc], a                                     ; $4976: $02
	sbc  b                                           ; $4977: $98
	inc  bc                                          ; $4978: $03
	nop                                              ; $4979: $00
	ld   a, h                                        ; $497a: $7c
	inc  bc                                          ; $497b: $03
	ld   l, e                                        ; $497c: $6b
	inc  bc                                          ; $497d: $03
	ld   c, a                                        ; $497e: $4f
	sbc  [hl]                                        ; $497f: $9e
	ld   l, a                                        ; $4980: $6f
	sub  l                                           ; $4981: $95
	ld   [hl], c                                     ; $4982: $71
	halt                                             ; $4983: $76
	ldh  [c], a                                      ; $4984: $e2
	db   $ec                                         ; $4985: $ec
	dec  c                                           ; $4986: $0d
	ld   a, b                                        ; $4987: $78
	and  c                                           ; $4988: $a1
	ld   [hl], l                                     ; $4989: $75
	ld   a, b                                        ; $498a: $78
	sbc  a                                           ; $498b: $9f
	dec  c                                           ; $498c: $0d
	nop                                              ; $498d: $00
	ld   a, [bc]                                     ; $498e: $0a
	inc  e                                           ; $498f: $1c
	ld   a, [bc]                                     ; $4990: $0a
	ld   [bc], a                                     ; $4991: $02
	ld   [bc], a                                     ; $4992: $02
	ld   bc, $9d59                                   ; $4993: $01 $59 $9d
	ld   d, d                                        ; $4996: $52
	ld   l, e                                        ; $4997: $6b
	ld   d, h                                        ; $4998: $54
	ld   l, [hl]                                     ; $4999: $6e
	ld   e, d                                        ; $499a: $5a
	sbc  [hl]                                        ; $499b: $9e
	dec  c                                           ; $499c: $0d
	inc  b                                           ; $499d: $04
	dec  c                                           ; $499e: $0d
	ld   [bc], a                                     ; $499f: $02
	sub  [hl]                                        ; $49a0: $96
	inc  b                                           ; $49a1: $04
	ld   b, l                                        ; $49a2: $45
	inc  b                                           ; $49a3: $04
	ld   a, [bc]                                     ; $49a4: $0a
	ld   a, l                                        ; $49a5: $7d
	ld   h, c                                        ; $49a6: $61
	ld   h, c                                        ; $49a7: $61
	ld   [hl], l                                     ; $49a8: $75
	inc  bc                                          ; $49a9: $03
	ld   a, [hl]                                     ; $49aa: $7e
	dec  b                                           ; $49ab: $05
	nop                                              ; $49ac: $00
	ld   l, [hl]                                     ; $49ad: $6e
	ld   a, [$000d]                                  ; $49ae: $fa $0d $00
	ld   a, [bc]                                     ; $49b1: $0a
	ld   bc, $a102                                   ; $49b2: $01 $02 $a1
	inc  bc                                          ; $49b5: $03
	and  b                                           ; $49b6: $a0
	ld   l, a                                        ; $49b7: $6f
	and  b                                           ; $49b8: $a0
	inc  b                                           ; $49b9: $04
	ld   b, l                                        ; $49ba: $45
	sbc  d                                           ; $49bb: $9a
	dec  b                                           ; $49bc: $05
	scf                                              ; $49bd: $37
	ld   d, [hl]                                     ; $49be: $56
	ld   [hl], h                                     ; $49bf: $74
	dec  c                                           ; $49c0: $0d
	inc  bc                                          ; $49c1: $03
	add  b                                           ; $49c2: $80
	inc  bc                                          ; $49c3: $03
	jp   c, $7465                                    ; $49c4: $da $65 $74

	ld   e, e                                        ; $49c7: $5b
	ld   a, b                                        ; $49c8: $78
	ld   a, [$000d]                                  ; $49c9: $fa $0d $00
	ld   a, [bc]                                     ; $49cc: $0a
	ld   h, $16                                      ; $49cd: $26 $16
	add  hl, bc                                      ; $49cf: $09
	rrca                                             ; $49d0: $0f
	nop                                              ; $49d1: $00
	ld   bc, $5001                                   ; $49d2: $01 $01 $50
	sbc  d                                           ; $49d5: $9a
	ld   sp, hl                                      ; $49d6: $f9
	dec  c                                           ; $49d7: $0d
	ld   h, c                                        ; $49d8: $61
	ld   h, c                                        ; $49d9: $61
	ld   a, l                                        ; $49da: $7d
	ld   [hl], a                                     ; $49db: $77
	ld   h, c                                        ; $49dc: $61
	ld   l, [hl]                                     ; $49dd: $6e
	ld   sp, hl                                      ; $49de: $f9
	dec  c                                           ; $49df: $0d
	nop                                              ; $49e0: $00
	ld   a, [bc]                                     ; $49e1: $0a
	ld   bc, $ffff                                   ; $49e2: $01 $ff $ff
	rst  $38                                         ; $49e5: $ff
	rst  $38                                         ; $49e6: $ff
	dec  c                                           ; $49e7: $0d
	nop                                              ; $49e8: $00
	ld   a, [bc]                                     ; $49e9: $0a
	ld   bc, $0301                                   ; $49ea: $01 $01 $03
	inc  bc                                          ; $49ed: $03
	xor  c                                           ; $49ee: $a9
	ld   e, c                                        ; $49ef: $59
	ld   d, d                                        ; $49f0: $52
	sbc  c                                           ; $49f1: $99
	ld   l, h                                        ; $49f2: $6c
	ld   a, [$0df9]                                  ; $49f3: $fa $f9 $0d
	db   $10                                         ; $49f6: $10
	ld   l, e                                        ; $49f7: $6b
	sbc  d                                           ; $49f8: $9a
	ld   a, c                                        ; $49f9: $79
	ld   h, c                                        ; $49fa: $61
	ld   h, c                                        ; $49fb: $61
	ld   a, l                                        ; $49fc: $7d
	cp   b                                           ; $49fd: $b8
	push hl                                          ; $49fe: $e5
	pop  af                                          ; $49ff: $f1
	ei                                               ; $4a00: $fb
	inc  bc                                          ; $4a01: $03
	ld   c, l                                        ; $4a02: $4d
	ld   sp, hl                                      ; $4a03: $f9
	ld   bc, $0d04                                   ; $4a04: $01 $04 $0d
	nop                                              ; $4a07: $00
	ld   a, [bc]                                     ; $4a08: $0a
	ld   bc, $0301                                   ; $4a09: $01 $01 $03
	ld   [hl], a                                     ; $4a0c: $77
	ld   d, h                                        ; $4a0d: $54
	ld   h, l                                        ; $4a0e: $65
	sub  [hl]                                        ; $4a0f: $96
	ld   d, h                                        ; $4a10: $54
	rst  $38                                         ; $4a11: $ff
	rst  $38                                         ; $4a12: $ff
	ld   sp, hl                                      ; $4a13: $f9
	ld   bc, $0d04                                   ; $4a14: $01 $04 $0d
	nop                                              ; $4a17: $00
	ld   a, [bc]                                     ; $4a18: $0a
	add  hl, de                                      ; $4a19: $19
	dec  b                                           ; $4a1a: $05
	ld   [bc], a                                     ; $4a1b: $02
	ld   [bc], a                                     ; $4a1c: $02
	and  b                                           ; $4a1d: $a0
	ld   [hl], e                                     ; $4a1e: $73
	ld   e, l                                        ; $4a1f: $5d
	nop                                              ; $4a20: $00
	nop                                              ; $4a21: $00
	dec  b                                           ; $4a22: $05
	ld   d, $6f                                      ; $4a23: $16 $6f
	ld   [bc], a                                     ; $4a25: $02
	ld   d, e                                        ; $4a26: $53
	sbc  c                                           ; $4a27: $99
	nop                                              ; $4a28: $00
	ld   bc, $b707                                   ; $4a29: $01 $07 $b7
	ld   b, $02                                      ; $4a2c: $06 $02
	inc  bc                                          ; $4a2e: $03
	ld   bc, $2000                                   ; $4a2f: $01 $00 $20
	nop                                              ; $4a32: $00
	rlca                                             ; $4a33: $07
	ld   d, h                                        ; $4a34: $54
	ld   b, $02                                      ; $4a35: $06 $02
	inc  bc                                          ; $4a37: $03
	ld   bc, $2001                                   ; $4a38: $01 $01 $20
	nop                                              ; $4a3b: $00
	ld   b, $7b                                      ; $4a3c: $06 $7b
	ld   b, $0f                                      ; $4a3e: $06 $0f
	nop                                              ; $4a40: $00
	ld   bc, $0101                                   ; $4a41: $01 $01 $01
	inc  bc                                          ; $4a44: $03
	sub  d                                           ; $4a45: $92
	ld   [hl], c                                     ; $4a46: $71
	ld   a, a                                        ; $4a47: $7f
	sbc  b                                           ; $4a48: $98
	sbc  [hl]                                        ; $4a49: $9e
	ld   a, h                                        ; $4a4a: $7c
	ld   l, h                                        ; $4a4b: $6c
	ld   e, e                                        ; $4a4c: $5b
	ld   a, l                                        ; $4a4d: $7d
	pop  bc                                          ; $4a4e: $c1
	db   $e3                                         ; $4a4f: $e3
	ld   l, [hl]                                     ; $4a50: $6e
	sub  [hl]                                        ; $4a51: $96
	dec  c                                           ; $4a52: $0d
	db   $10                                         ; $4a53: $10
	ld   h, c                                        ; $4a54: $61
	ld   h, c                                        ; $4a55: $61
	ld   a, l                                        ; $4a56: $7d
	ld   d, d                                        ; $4a57: $52
	ld   h, e                                        ; $4a58: $63
	ld   e, h                                        ; $4a59: $5c
	sub  [hl]                                        ; $4a5a: $96
	ld   e, l                                        ; $4a5b: $5d
	ld   [bc], a                                     ; $4a5c: $02
	ld   d, e                                        ; $4a5d: $53
	sbc  e                                           ; $4a5e: $9b
	ld   d, h                                        ; $4a5f: $54
	ld   bc, $0d04                                   ; $4a60: $01 $04 $0d
	nop                                              ; $4a63: $00
	ld   a, [bc]                                     ; $4a64: $0a
	nop                                              ; $4a65: $00
	rrca                                             ; $4a66: $0f
	ld   a, [bc]                                     ; $4a67: $0a
	rlca                                             ; $4a68: $07
	ld   bc, $a903                                   ; $4a69: $01 $03 $a9
	ld   l, [hl]                                     ; $4a6c: $6e
	ld   a, h                                        ; $4a6d: $7c
	ld   l, h                                        ; $4a6e: $6c
	ld   d, d                                        ; $4a6f: $52
	ld   [hl], h                                     ; $4a70: $74
	sub  d                                           ; $4a71: $92
	ld   e, d                                        ; $4a72: $5a
	sbc  c                                           ; $4a73: $99
	ld   a, h                                        ; $4a74: $7c
	ld   a, l                                        ; $4a75: $7d
	ld   sp, hl                                      ; $4a76: $f9
	dec  c                                           ; $4a77: $0d
	nop                                              ; $4a78: $00
	ld   a, [bc]                                     ; $4a79: $0a
	rrca                                             ; $4a7a: $0f
	nop                                              ; $4a7b: $00
	ld   bc, $0101                                   ; $4a7c: $01 $01 $01
	inc  bc                                          ; $4a7f: $03
	or   e                                           ; $4a80: $b3
	call nz, $ffff                                   ; $4a81: $c4 $ff $ff
	inc  bc                                          ; $4a84: $03
	add  l                                           ; $4a85: $85
	inc  b                                           ; $4a86: $04
	xor  e                                           ; $4a87: $ab
	inc  bc                                          ; $4a88: $03
	add  d                                           ; $4a89: $82
	rst  $38                                         ; $4a8a: $ff
	rst  $38                                         ; $4a8b: $ff
	dec  c                                           ; $4a8c: $0d
	db   $10                                         ; $4a8d: $10
	ld   [bc], a                                     ; $4a8e: $02
	sub  l                                           ; $4a8f: $95
	ld   l, l                                        ; $4a90: $6d
	ld   e, l                                        ; $4a91: $5d
	ld   a, b                                        ; $4a92: $78
	ld   d, d                                        ; $4a93: $52
	ld   h, l                                        ; $4a94: $65
	sbc  [hl]                                        ; $4a95: $9e
	inc  bc                                          ; $4a96: $03
	push de                                          ; $4a97: $d5
	ld   h, b                                        ; $4a98: $60
	sub  [hl]                                        ; $4a99: $96
	ld   d, h                                        ; $4a9a: $54
	ld   a, [$0401]                                  ; $4a9b: $fa $01 $04
	dec  c                                           ; $4a9e: $0d
	nop                                              ; $4a9f: $00
	ld   a, [bc]                                     ; $4aa0: $0a
	nop                                              ; $4aa1: $00
	rrca                                             ; $4aa2: $0f
	nop                                              ; $4aa3: $00
	ld   bc, $0101                                   ; $4aa4: $01 $01 $01
	inc  bc                                          ; $4aa7: $03
	sub  b                                           ; $4aa8: $90
	ld   d, h                                        ; $4aa9: $54
	inc  bc                                          ; $4aaa: $03
	ld   l, h                                        ; $4aab: $6c
	ld   h, l                                        ; $4aac: $65
	ld   [bc], a                                     ; $4aad: $02
	and  b                                           ; $4aae: $a0
	ld   [hl], e                                     ; $4aaf: $73
	ld   d, d                                        ; $4ab0: $52
	ld   [hl], h                                     ; $4ab1: $74
	adc  l                                           ; $4ab2: $8d
	sub  [hl]                                        ; $4ab3: $96
	ld   d, h                                        ; $4ab4: $54
	ld   bc, $0d04                                   ; $4ab5: $01 $04 $0d
	nop                                              ; $4ab8: $00
	ld   a, [bc]                                     ; $4ab9: $0a
	ld   bc, $ffff                                   ; $4aba: $01 $ff $ff
	rst  $38                                         ; $4abd: $ff
	rst  $38                                         ; $4abe: $ff
	dec  c                                           ; $4abf: $0d
	nop                                              ; $4ac0: $00
	ld   a, [bc]                                     ; $4ac1: $0a
	add  hl, de                                      ; $4ac2: $19
	dec  b                                           ; $4ac3: $05
	ld   bc, $7e92                                   ; $4ac4: $01 $92 $7e
	ld   d, d                                        ; $4ac7: $52
	add  e                                           ; $4ac8: $83
	and  c                                           ; $4ac9: $a1
	ld   d, d                                        ; $4aca: $52
	ld   e, e                                        ; $4acb: $5b
	ld   e, d                                        ; $4acc: $5a
	rst  $38                                         ; $4acd: $ff
	rst  $38                                         ; $4ace: $ff
	nop                                              ; $4acf: $00
	nop                                              ; $4ad0: $00
	rlca                                             ; $4ad1: $07
	ldh  a, [c]                                      ; $4ad2: $f2
	ld   b, $02                                      ; $4ad3: $06 $02
	inc  bc                                          ; $4ad5: $03
	ld   bc, $2000                                   ; $4ad6: $01 $00 $20
	nop                                              ; $4ad9: $00
	ld   b, $1e                                      ; $4ada: $06 $1e
	rlca                                             ; $4adc: $07
	rrca                                             ; $4add: $0f
	nop                                              ; $4ade: $00
	ld   bc, $0101                                   ; $4adf: $01 $01 $01
	inc  bc                                          ; $4ae2: $03
	ld   a, b                                        ; $4ae3: $78
	and  c                                           ; $4ae4: $a1
	ld   l, [hl]                                     ; $4ae5: $6e
	ld   e, c                                        ; $4ae6: $59
	sub  d                                           ; $4ae7: $92
	ld   a, [hl]                                     ; $4ae8: $7e
	ld   d, d                                        ; $4ae9: $52
	dec  c                                           ; $4aea: $0d
	db   $10                                         ; $4aeb: $10
	add  e                                           ; $4aec: $83
	and  c                                           ; $4aed: $a1
	ld   d, d                                        ; $4aee: $52
	ld   e, e                                        ; $4aef: $5b
	ld   e, d                                        ; $4af0: $5a
	ld   h, a                                        ; $4af1: $67
	sbc  c                                           ; $4af2: $99
	ld   l, h                                        ; $4af3: $6c
	rst  $38                                         ; $4af4: $ff
	rst  $38                                         ; $4af5: $ff
	dec  c                                           ; $4af6: $0d
	db   $10                                         ; $4af7: $10
	ld   [bc], a                                     ; $4af8: $02
	inc  l                                           ; $4af9: $2c
	ld   e, e                                        ; $4afa: $5b
	inc  bc                                          ; $4afb: $03
	ld   h, l                                        ; $4afc: $65
	ld   h, b                                        ; $4afd: $60
	sbc  c                                           ; $4afe: $99
	halt                                             ; $4aff: $76
	ld   h, a                                        ; $4b00: $67
	sbc  c                                           ; $4b01: $99
	ld   e, c                                        ; $4b02: $59
	ld   bc, $0d04                                   ; $4b03: $01 $04 $0d
	nop                                              ; $4b06: $00
	ld   a, [bc]                                     ; $4b07: $0a
	nop                                              ; $4b08: $00
	rrca                                             ; $4b09: $0f
	nop                                              ; $4b0a: $00
	ld   bc, $ff01                                   ; $4b0b: $01 $01 $ff
	rst  $38                                         ; $4b0e: $ff
	rst  $38                                         ; $4b0f: $ff
	rst  $38                                         ; $4b10: $ff
	ld   a, [$0dfa]                                  ; $4b11: $fa $fa $0d
	nop                                              ; $4b14: $00
	ld   a, [bc]                                     ; $4b15: $0a
	ld   bc, $0301                                   ; $4b16: $01 $01 $03
	ld   [bc], a                                     ; $4b19: $02
	and  c                                           ; $4b1a: $a1
	ld   [hl], e                                     ; $4b1b: $73
	ld   e, c                                        ; $4b1c: $59
	sbc  d                                           ; $4b1d: $9a
	ld   l, l                                        ; $4b1e: $6d
	ld   a, [$0401]                                  ; $4b1f: $fa $01 $04
	dec  c                                           ; $4b22: $0d
	nop                                              ; $4b23: $00
	ld   a, [bc]                                     ; $4b24: $0a
	add  hl, de                                      ; $4b25: $19
	dec  b                                           ; $4b26: $05
	inc  bc                                          ; $4b27: $03
	inc  bc                                          ; $4b28: $03
	db   $db                                         ; $4b29: $db
	ld   bc, $7614                                   ; $4b2a: $01 $14 $76
	ld   h, a                                        ; $4b2d: $67
	sbc  c                                           ; $4b2e: $99
	nop                                              ; $4b2f: $00
	nop                                              ; $4b30: $00
	sub  b                                           ; $4b31: $90
	ld   a, h                                        ; $4b32: $7c
	adc  h                                           ; $4b33: $8c
	ld   a, e                                        ; $4b34: $7b
	and  b                                           ; $4b35: $a0
	ld   h, a                                        ; $4b36: $67
	sbc  c                                           ; $4b37: $99
	nop                                              ; $4b38: $00
	ld   bc, $d503                                   ; $4b39: $01 $03 $d5
	ld   h, b                                        ; $4b3c: $60
	inc  bc                                          ; $4b3d: $03
	add  b                                           ; $4b3e: $80
	ld   h, a                                        ; $4b3f: $67
	nop                                              ; $4b40: $00
	ld   [bc], a                                     ; $4b41: $02
	rlca                                             ; $4b42: $07
	ld   [hl], l                                     ; $4b43: $75
	rlca                                             ; $4b44: $07
	ld   [bc], a                                     ; $4b45: $02
	inc  bc                                          ; $4b46: $03
	ld   bc, $2000                                   ; $4b47: $01 $00 $20
	nop                                              ; $4b4a: $00
	rlca                                             ; $4b4b: $07
	ld   [hl+], a                                    ; $4b4c: $22
	ld   [$0302], sp                                 ; $4b4d: $08 $02 $03
	ld   bc, $2001                                   ; $4b50: $01 $01 $20
	nop                                              ; $4b53: $00
	rlca                                             ; $4b54: $07
	add  d                                           ; $4b55: $82
	ld   [$0302], sp                                 ; $4b56: $08 $02 $03
	ld   bc, $2002                                   ; $4b59: $01 $02 $20
	nop                                              ; $4b5c: $00
	ld   b, $3e                                      ; $4b5d: $06 $3e
	add  hl, bc                                      ; $4b5f: $09
	rrca                                             ; $4b60: $0f
	nop                                              ; $4b61: $00
	ld   bc, $0101                                   ; $4b62: $01 $01 $01
	inc  bc                                          ; $4b65: $03
	ld   h, c                                        ; $4b66: $61
	ld   h, c                                        ; $4b67: $61
	ld   a, l                                        ; $4b68: $7d
	inc  bc                                          ; $4b69: $03
	db   $db                                         ; $4b6a: $db
	ld   bc, $7614                                   ; $4b6b: $01 $14 $76
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	ld   bc, $0d04                                   ; $4b70: $01 $04 $0d
	nop                                              ; $4b73: $00
	ld   a, [bc]                                     ; $4b74: $0a
	ld   bc, $9e50                                   ; $4b75: $01 $50 $9e
	ld   h, a                                        ; $4b78: $67
	adc  l                                           ; $4b79: $8d
	adc  h                                           ; $4b7a: $8c
	ld   l, c                                        ; $4b7b: $69
	and  c                                           ; $4b7c: $a1
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	dec  c                                           ; $4b7f: $0d
	ld   [hl], a                                     ; $4b80: $77
	ld   a, b                                        ; $4b81: $78
	ld   l, l                                        ; $4b82: $6d
	ld   e, c                                        ; $4b83: $59
	inc  b                                           ; $4b84: $04
	ld   b, l                                        ; $4b85: $45
	ld   [hl], c                                     ; $4b86: $71
	ld   [hl], h                                     ; $4b87: $74
	sub  a                                           ; $4b88: $97
	ld   [hl], c                                     ; $4b89: $71
	ld   h, l                                        ; $4b8a: $65
	sub  c                                           ; $4b8b: $91
	sbc  c                                           ; $4b8c: $99
	and  c                                           ; $4b8d: $a1
	dec  c                                           ; $4b8e: $0d
	ld   [hl], l                                     ; $4b8f: $75
	ld   h, a                                        ; $4b90: $67
	ld   a, e                                        ; $4b91: $7b
	ld   sp, hl                                      ; $4b92: $f9
	dec  c                                           ; $4b93: $0d
	nop                                              ; $4b94: $00
	ld   a, [bc]                                     ; $4b95: $0a
	rrca                                             ; $4b96: $0f
	ld   a, [bc]                                     ; $4b97: $0a
	ld   [$7801], sp                                 ; $4b98: $08 $01 $78
	and  c                                           ; $4b9b: $a1
	ld   l, [hl]                                     ; $4b9c: $6e
	sbc  [hl]                                        ; $4b9d: $9e
	ld   [$5900], sp                                 ; $4b9e: $08 $00 $59
	rst  $38                                         ; $4ba1: $ff
	rst  $38                                         ; $4ba2: $ff
	dec  c                                           ; $4ba3: $0d
	dec  b                                           ; $4ba4: $05
	ld   [hl], e                                     ; $4ba5: $73
	ld   l, [hl]                                     ; $4ba6: $6e
	sbc  [hl]                                        ; $4ba7: $9e
	inc  b                                           ; $4ba8: $04
	rst  $10                                         ; $4ba9: $d7
	inc  b                                           ; $4baa: $04
	ld   hl, $9f6e                                   ; $4bab: $21 $6e $9f
	dec  c                                           ; $4bae: $0d
	nop                                              ; $4baf: $00
	ld   a, [bc]                                     ; $4bb0: $0a
	rrca                                             ; $4bb1: $0f
	nop                                              ; $4bb2: $00
	ld   bc, $0301                                   ; $4bb3: $01 $01 $03
	add  l                                           ; $4bb6: $85
	inc  b                                           ; $4bb7: $04
	xor  e                                           ; $4bb8: $ab
	inc  bc                                          ; $4bb9: $03
	add  d                                           ; $4bba: $82
	ld   [hl], l                                     ; $4bbb: $75
	ld   h, l                                        ; $4bbc: $65
	ld   l, l                                        ; $4bbd: $6d
	ld   e, c                                        ; $4bbe: $59
	rst  $38                                         ; $4bbf: $ff
	rst  $38                                         ; $4bc0: $ff
	dec  c                                           ; $4bc1: $0d
	ld   h, c                                        ; $4bc2: $61
	sbc  d                                           ; $4bc3: $9a
	ld   a, l                                        ; $4bc4: $7d
	inc  bc                                          ; $4bc5: $03
	add  e                                           ; $4bc6: $83
	dec  b                                           ; $4bc7: $05
	dec  c                                           ; $4bc8: $0d
	ld   h, l                                        ; $4bc9: $65
	adc  h                                           ; $4bca: $8c
	ld   h, l                                        ; $4bcb: $65
	ld   l, l                                        ; $4bcc: $6d
	sbc  a                                           ; $4bcd: $9f
	dec  c                                           ; $4bce: $0d
	nop                                              ; $4bcf: $00
	ld   a, [bc]                                     ; $4bd0: $0a
	rrca                                             ; $4bd1: $0f
	ld   a, [bc]                                     ; $4bd2: $0a
	dec  b                                           ; $4bd3: $05
	ld   bc, $7287                                   ; $4bd4: $01 $87 $72
	ld   a, c                                        ; $4bd7: $79
	ld   d, b                                        ; $4bd8: $50
	sub  d                                           ; $4bd9: $92
	adc  h                                           ; $4bda: $8c
	sbc  c                                           ; $4bdb: $99
	inc  b                                           ; $4bdc: $04
	adc  d                                           ; $4bdd: $8a
	inc  b                                           ; $4bde: $04
	rst  JumpTable                                         ; $4bdf: $df
	sub  b                                           ; $4be0: $90
	dec  c                                           ; $4be1: $0d
	ld   a, e                                        ; $4be2: $7b
	ld   d, [hl]                                     ; $4be3: $56
	ld   l, [hl]                                     ; $4be4: $6e
	sbc  e                                           ; $4be5: $9b
	rst  $38                                         ; $4be6: $ff
	rst  $38                                         ; $4be7: $ff
	and  c                                           ; $4be8: $a1
	ld   sp, hl                                      ; $4be9: $f9
	dec  c                                           ; $4bea: $0d
	ld   h, e                                        ; $4beb: $63
	ld   [hl], h                                     ; $4bec: $74
	ld   a, l                                        ; $4bed: $7d
	sbc  [hl]                                        ; $4bee: $9e
	ld   e, b                                        ; $4bef: $58
	inc  bc                                          ; $4bf0: $03
	ld   c, a                                        ; $4bf1: $4f
	ld   a, h                                        ; $4bf2: $7c
	ld   l, h                                        ; $4bf3: $6c
	ld   e, e                                        ; $4bf4: $5b
	and  b                                           ; $4bf5: $a0
	rst  $38                                         ; $4bf6: $ff
	rst  $38                                         ; $4bf7: $ff
	dec  c                                           ; $4bf8: $0d
	nop                                              ; $4bf9: $00
	ld   a, [bc]                                     ; $4bfa: $0a
	rrca                                             ; $4bfb: $0f
	nop                                              ; $4bfc: $00
	ld   bc, $6501                                   ; $4bfd: $01 $01 $65
	sbc  [hl]                                        ; $4c00: $9e
	inc  bc                                          ; $4c01: $03
	add  e                                           ; $4c02: $83
	dec  b                                           ; $4c03: $05
	dec  c                                           ; $4c04: $0d
	ld   h, l                                        ; $4c05: $65
	adc  h                                           ; $4c06: $8c
	ld   h, a                                        ; $4c07: $67
	ld   a, [$000d]                                  ; $4c08: $fa $0d $00
	ld   a, [bc]                                     ; $4c0b: $0a
	nop                                              ; $4c0c: $00
	rrca                                             ; $4c0d: $0f
	nop                                              ; $4c0e: $00
	ld   bc, $0101                                   ; $4c0f: $01 $01 $01
	inc  bc                                          ; $4c12: $03
	ld   h, c                                        ; $4c13: $61
	ld   d, h                                        ; $4c14: $54
	ld   a, b                                        ; $4c15: $78
	ld   [hl], c                                     ; $4c16: $71
	ld   l, l                                        ; $4c17: $6d
	sub  a                                           ; $4c18: $97
	rst  $38                                         ; $4c19: $ff
	rst  $38                                         ; $4c1a: $ff
	ld   bc, $0d04                                   ; $4c1b: $01 $04 $0d
	nop                                              ; $4c1e: $00
	ld   a, [bc]                                     ; $4c1f: $0a
	ld   bc, $fb50                                   ; $4c20: $01 $50 $fb
	dec  b                                           ; $4c23: $05
	ld   [hl], e                                     ; $4c24: $73
	ld   l, [hl]                                     ; $4c25: $6e
	rst  $38                                         ; $4c26: $ff
	rst  $38                                         ; $4c27: $ff
	dec  c                                           ; $4c28: $0d
	inc  b                                           ; $4c29: $04
	rst  $10                                         ; $4c2a: $d7
	inc  b                                           ; $4c2b: $04
	ld   hl, $ff6e                                   ; $4c2c: $21 $6e $ff
	rst  $38                                         ; $4c2f: $ff
	ld   d, h                                        ; $4c30: $54
	ld   d, d                                        ; $4c31: $52
	ld   [hl], c                                     ; $4c32: $71
	sbc  a                                           ; $4c33: $9f
	dec  c                                           ; $4c34: $0d
	nop                                              ; $4c35: $00
	ld   a, [bc]                                     ; $4c36: $0a
	rrca                                             ; $4c37: $0f
	ld   a, [bc]                                     ; $4c38: $0a
	rlca                                             ; $4c39: $07
	ld   bc, $5489                                   ; $4c3a: $01 $89 $54
	rst  $38                                         ; $4c3d: $ff
	rst  $38                                         ; $4c3e: $ff
	dec  c                                           ; $4c3f: $0d
	dec  b                                           ; $4c40: $05
	ld   [hl], e                                     ; $4c41: $73
	ld   a, h                                        ; $4c42: $7c
	sub  b                                           ; $4c43: $90
	ld   a, h                                        ; $4c44: $7c
	adc  h                                           ; $4c45: $8c
	ld   a, e                                        ; $4c46: $7b
	halt                                             ; $4c47: $76
	ld   a, l                                        ; $4c48: $7d
	dec  c                                           ; $4c49: $0d
	ld   d, d                                        ; $4c4a: $52
	ld   d, d                                        ; $4c4b: $52
	ld   [hl], a                                     ; $4c4c: $77
	ld   e, e                                        ; $4c4d: $5b
	sub  l                                           ; $4c4e: $95
	ld   d, h                                        ; $4c4f: $54
	ld   h, l                                        ; $4c50: $65
	ld   [hl], h                                     ; $4c51: $74
	sbc  c                                           ; $4c52: $99
	ld   a, b                                        ; $4c53: $78
	ld   c, a                                        ; $4c54: $4f
	rst  $38                                         ; $4c55: $ff
	rst  $38                                         ; $4c56: $ff
	dec  c                                           ; $4c57: $0d
	nop                                              ; $4c58: $00
	ld   a, [bc]                                     ; $4c59: $0a
	rrca                                             ; $4c5a: $0f
	nop                                              ; $4c5b: $00
	ld   bc, $0101                                   ; $4c5c: $01 $01 $01
	inc  bc                                          ; $4c5f: $03
	ld   h, l                                        ; $4c60: $65
	adc  h                                           ; $4c61: $8c
	ld   [hl], c                                     ; $4c62: $71
	ld   l, l                                        ; $4c63: $6d
	ld   a, [$0401]                                  ; $4c64: $fa $01 $04
	dec  c                                           ; $4c67: $0d
	nop                                              ; $4c68: $00
	ld   a, [bc]                                     ; $4c69: $0a
	ld   b, $cd                                      ; $4c6a: $06 $cd
	ld   [$000f], sp                                 ; $4c6c: $08 $0f $00
	ld   bc, $0101                                   ; $4c6f: $01 $01 $01
	inc  bc                                          ; $4c72: $03
	ld   h, c                                        ; $4c73: $61
	ld   h, c                                        ; $4c74: $61
	ld   a, l                                        ; $4c75: $7d
	inc  bc                                          ; $4c76: $03
	push de                                          ; $4c77: $d5
	ld   h, b                                        ; $4c78: $60
	sub  [hl]                                        ; $4c79: $96
	ld   d, h                                        ; $4c7a: $54
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	ld   bc, $0d04                                   ; $4c7d: $01 $04 $0d
	nop                                              ; $4c80: $00
	ld   a, [bc]                                     ; $4c81: $0a
	ld   bc, $fa50                                   ; $4c82: $01 $50 $fa
	dec  c                                           ; $4c85: $0d
	ld   a, b                                        ; $4c86: $78
	ld   l, d                                        ; $4c87: $6a
	ld   h, c                                        ; $4c88: $61
	and  c                                           ; $4c89: $a1
	ld   a, b                                        ; $4c8a: $78
	halt                                             ; $4c8b: $76
	ld   h, c                                        ; $4c8c: $61
	sbc  e                                           ; $4c8d: $9b
	ld   a, c                                        ; $4c8e: $79
	dec  c                                           ; $4c8f: $0d
	ld   a, d                                        ; $4c90: $7a
	sbc  d                                           ; $4c91: $9a
	ld   l, h                                        ; $4c92: $6c
	ld   d, h                                        ; $4c93: $54
	ld   e, e                                        ; $4c94: $5b
	and  c                                           ; $4c95: $a1
	ld   e, d                                        ; $4c96: $5a
	ld   sp, hl                                      ; $4c97: $f9
	dec  c                                           ; $4c98: $0d
	nop                                              ; $4c99: $00
	ld   a, [bc]                                     ; $4c9a: $0a
	ld   bc, $9d54                                   ; $4c9b: $01 $54 $9d
	ld   [hl], c                                     ; $4c9e: $71
	ld   a, [$000d]                                  ; $4c9f: $fa $0d $00
	ld   a, [bc]                                     ; $4ca2: $0a
	ld   c, $03                                      ; $4ca3: $0e $03
	inc  c                                           ; $4ca5: $0c
	inc  bc                                          ; $4ca6: $03
	add  hl, bc                                      ; $4ca7: $09
	ld   e, $01                                      ; $4ca8: $1e $01
	ld   d, b                                        ; $4caa: $50
	ld   l, l                                        ; $4cab: $6d
	ld   l, l                                        ; $4cac: $6d
	ld   l, l                                        ; $4cad: $6d
	ld   l, l                                        ; $4cae: $6d
	ld   l, l                                        ; $4caf: $6d
	ld   l, l                                        ; $4cb0: $6d
	rst  $38                                         ; $4cb1: $ff
	rst  $38                                         ; $4cb2: $ff
	dec  c                                           ; $4cb3: $0d
	nop                                              ; $4cb4: $00
	ld   a, [bc]                                     ; $4cb5: $0a
	inc  c                                           ; $4cb6: $0c
	inc  c                                           ; $4cb7: $0c
	ld   c, $66                                      ; $4cb8: $0e $66
	inc  e                                           ; $4cba: $1c
	ld   a, [bc]                                     ; $4cbb: $0a
	ld   [bc], a                                     ; $4cbc: $02
	ld   [bc], a                                     ; $4cbd: $02
	ld   bc, $0008                                   ; $4cbe: $01 $08 $00
	ld   a, [$580d]                                  ; $4cc1: $fa $0d $58
	inc  bc                                          ; $4cc4: $03
	ld   c, a                                        ; $4cc5: $4f
	sbc  [hl]                                        ; $4cc6: $9e
	ld   a, h                                        ; $4cc7: $7c
	ld   l, h                                        ; $4cc8: $6c
	ld   e, e                                        ; $4cc9: $5b
	and  b                                           ; $4cca: $a0
	ld   h, l                                        ; $4ccb: $65
	ld   [hl], h                                     ; $4ccc: $74
	sub  d                                           ; $4ccd: $92
	ld   e, d                                        ; $4cce: $5a
	ld   [hl], c                                     ; $4ccf: $71
	ld   l, l                                        ; $4cd0: $6d
	dec  c                                           ; $4cd1: $0d
	ld   a, b                                        ; $4cd2: $78
	ld   [hl], c                                     ; $4cd3: $71
	ld   a, [$0dfa]                                  ; $4cd4: $fa $fa $0d
	nop                                              ; $4cd7: $00
	ld   a, [bc]                                     ; $4cd8: $0a
	ld   bc, $0358                                   ; $4cd9: $01 $58 $03
	ld   c, a                                        ; $4cdc: $4f
	ld   a, c                                        ; $4cdd: $79
	ld   a, l                                        ; $4cde: $7d
	ld   l, l                                        ; $4cdf: $6d
	ld   [hl], c                                     ; $4ce0: $71
	add  l                                           ; $4ce1: $85
	sbc  b                                           ; $4ce2: $98
	dec  b                                           ; $4ce3: $05
	jr   nz, jr_051_4d40                             ; $4ce4: $20 $5a

	ld   d, b                                        ; $4ce6: $50
	sbc  c                                           ; $4ce7: $99
	sbc  [hl]                                        ; $4ce8: $9e
	dec  c                                           ; $4ce9: $0d
	ld   e, d                                        ; $4cea: $5a
	sbc  [hl]                                        ; $4ceb: $9e
	ld   l, e                                        ; $4cec: $6b
	ld   a, h                                        ; $4ced: $7c
	inc  bc                                          ; $4cee: $03
	ld   c, a                                        ; $4cef: $4f
	ld   a, c                                        ; $4cf0: $79
	rst  $38                                         ; $4cf1: $ff
	rst  $38                                         ; $4cf2: $ff
	dec  c                                           ; $4cf3: $0d
	nop                                              ; $4cf4: $00
	ld   a, [bc]                                     ; $4cf5: $0a
	ld   bc, $c5d1                                   ; $4cf6: $01 $d1 $c5
	halt                                             ; $4cf9: $76
	ld   h, l                                        ; $4cfa: $65
	ld   [hl], h                                     ; $4cfb: $74
	ld   [bc], a                                     ; $4cfc: $02
	ld   l, h                                        ; $4cfd: $6c
	inc  bc                                          ; $4cfe: $03
	ld   d, h                                        ; $4cff: $54
	and  b                                           ; $4d00: $a0
	dec  c                                           ; $4d01: $0d
	ld   [de], a                                     ; $4d02: $12
	ld   de, $0311                                   ; $4d03: $11 $11 $03
	add  h                                           ; $4d06: $84
	ld   h, l                                        ; $4d07: $65
	ld   [hl], h                                     ; $4d08: $74
	ld   h, c                                        ; $4d09: $61
	ld   d, d                                        ; $4d0a: $52
	ld   a, [$000d]                                  ; $4d0b: $fa $0d $00
	ld   a, [bc]                                     ; $4d0e: $0a
	ld   sp, $2040                                   ; $4d0f: $31 $40 $20
	inc  bc                                          ; $4d12: $03
	jr   nz, jr_051_4d16                             ; $4d13: $20 $01

	ld   [hl-], a                                    ; $4d15: $32

jr_051_4d16:
	add  hl, hl                                      ; $4d16: $29
	nop                                              ; $4d17: $00
	rlca                                             ; $4d18: $07
	xor  d                                           ; $4d19: $aa
	add  hl, bc                                      ; $4d1a: $09
	inc  b                                           ; $4d1b: $04
	add  b                                           ; $4d1c: $80
	ld   b, $01                                      ; $4d1d: $06 $01
	rst  $38                                         ; $4d1f: $ff
	jr   nz, jr_051_4d22                             ; $4d20: $20 $00

jr_051_4d22:
	dec  b                                           ; $4d22: $05
	add  b                                           ; $4d23: $80
	ld   b, $01                                      ; $4d24: $06 $01
	ld   bc, $0000                                   ; $4d26: $01 $00 $00
	inc  c                                           ; $4d29: $0c
	ld   [bc], a                                     ; $4d2a: $02
	ld   c, $66                                      ; $4d2b: $0e $66
	inc  e                                           ; $4d2d: $1c
	ld   a, [bc]                                     ; $4d2e: $0a
	ld   [bc], a                                     ; $4d2f: $02
	ld   [bc], a                                     ; $4d30: $02
	ld   bc, $0008                                   ; $4d31: $01 $08 $00
	sbc  a                                           ; $4d34: $9f
	dec  c                                           ; $4d35: $0d
	ld   a, b                                        ; $4d36: $78
	and  c                                           ; $4d37: $a1
	ld   l, [hl]                                     ; $4d38: $6e
	ld   c, a                                        ; $4d39: $4f
	db   $fc                                         ; $4d3a: $fc
	sbc  [hl]                                        ; $4d3b: $9e
	ld   e, b                                        ; $4d3c: $58
	inc  bc                                          ; $4d3d: $03
	ld   c, a                                        ; $4d3e: $4f
	sbc  a                                           ; $4d3f: $9f

jr_051_4d40:
	dec  c                                           ; $4d40: $0d
	ld   a, h                                        ; $4d41: $7c
	ld   l, h                                        ; $4d42: $6c
	ld   e, e                                        ; $4d43: $5b
	and  b                                           ; $4d44: $a0
	ld   h, l                                        ; $4d45: $65
	ld   [hl], h                                     ; $4d46: $74
	ld   l, l                                        ; $4d47: $6d
	ld   a, h                                        ; $4d48: $7c
	ld   e, c                                        ; $4d49: $59
	sub  [hl]                                        ; $4d4a: $96
	sbc  a                                           ; $4d4b: $9f
	dec  c                                           ; $4d4c: $0d
	nop                                              ; $4d4d: $00
	ld   a, [bc]                                     ; $4d4e: $0a
	ld   bc, $5261                                   ; $4d4f: $01 $61 $52
	ld   [hl], d                                     ; $4d52: $72
	ld   a, l                                        ; $4d53: $7d
	ld   l, a                                        ; $4d54: $6f
	sub  l                                           ; $4d55: $95
	ld   d, d                                        ; $4d56: $52
	halt                                             ; $4d57: $76
	sbc  [hl]                                        ; $4d58: $9e
	ld   e, b                                        ; $4d59: $58
	ld   [bc], a                                     ; $4d5a: $02
	rst  $30                                         ; $4d5b: $f7
	ld   [bc], a                                     ; $4d5c: $02
	ret  nc                                          ; $4d5d: $d0

	dec  c                                           ; $4d5e: $0d
	ld   h, l                                        ; $4d5f: $65
	ld   a, b                                        ; $4d60: $78
	ld   e, e                                        ; $4d61: $5b
	sub  c                                           ; $4d62: $91
	ld   a, b                                        ; $4d63: $78
	sub  a                                           ; $4d64: $97
	ld   d, d                                        ; $4d65: $52
	sub  [hl]                                        ; $4d66: $96
	ld   d, h                                        ; $4d67: $54
	ld   l, [hl]                                     ; $4d68: $6e
	ld   a, b                                        ; $4d69: $78
	sbc  a                                           ; $4d6a: $9f
	dec  c                                           ; $4d6b: $0d
	ld   l, [hl]                                     ; $4d6c: $6e
	ld   e, d                                        ; $4d6d: $5a
	sbc  [hl]                                        ; $4d6e: $9e
	ld   l, e                                        ; $4d6f: $6b
	ld   a, h                                        ; $4d70: $7c
	inc  bc                                          ; $4d71: $03
	ld   c, a                                        ; $4d72: $4f
	ld   a, c                                        ; $4d73: $79
	rst  $38                                         ; $4d74: $ff
	rst  $38                                         ; $4d75: $ff
	dec  c                                           ; $4d76: $0d
	nop                                              ; $4d77: $00
	ld   a, [bc]                                     ; $4d78: $0a
	ld   bc, $c5d1                                   ; $4d79: $01 $d1 $c5
	halt                                             ; $4d7c: $76
	ld   h, l                                        ; $4d7d: $65
	ld   [hl], h                                     ; $4d7e: $74
	ld   [bc], a                                     ; $4d7f: $02
	ld   l, h                                        ; $4d80: $6c
	inc  bc                                          ; $4d81: $03
	ld   d, h                                        ; $4d82: $54
	and  b                                           ; $4d83: $a0
	dec  c                                           ; $4d84: $0d
	ld   [de], a                                     ; $4d85: $12
	ld   de, $0311                                   ; $4d86: $11 $11 $03
	add  h                                           ; $4d89: $84
	ld   h, l                                        ; $4d8a: $65
	ld   [hl], h                                     ; $4d8b: $74
	ld   h, c                                        ; $4d8c: $61
	ld   d, d                                        ; $4d8d: $52
	ld   a, [$000d]                                  ; $4d8e: $fa $0d $00
	ld   a, [bc]                                     ; $4d91: $0a
	ld   b, $24                                      ; $4d92: $06 $24
	add  hl, bc                                      ; $4d94: $09
	inc  c                                           ; $4d95: $0c
	ld   [bc], a                                     ; $4d96: $02
	ld   c, $02                                      ; $4d97: $0e $02
	rrca                                             ; $4d99: $0f
	nop                                              ; $4d9a: $00
	ld   bc, $5001                                   ; $4d9b: $01 $01 $50
	rst  $38                                         ; $4d9e: $ff
	rst  $38                                         ; $4d9f: $ff
	sbc  [hl]                                        ; $4da0: $9e
	sub  d                                           ; $4da1: $92
	ld   a, [hl]                                     ; $4da2: $7e
	ld   d, d                                        ; $4da3: $52
	ld   a, b                                        ; $4da4: $78
	sub  [hl]                                        ; $4da5: $96
	ld   a, b                                        ; $4da6: $78
	db   $fc                                         ; $4da7: $fc
	rst  $38                                         ; $4da8: $ff
	rst  $38                                         ; $4da9: $ff
	dec  c                                           ; $4daa: $0d
	inc  bc                                          ; $4dab: $03
	add  b                                           ; $4dac: $80
	dec  b                                           ; $4dad: $05
	db   $10                                         ; $4dae: $10
	inc  bc                                          ; $4daf: $03
	ld   [hl], l                                     ; $4db0: $75
	halt                                             ; $4db1: $76
	ld   a, l                                        ; $4db2: $7d
	ld   d, d                                        ; $4db3: $52
	ld   d, [hl]                                     ; $4db4: $56
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	rst  $38                                         ; $4db8: $ff
	dec  c                                           ; $4db9: $0d
	rst  $38                                         ; $4dba: $ff
	rst  $38                                         ; $4dbb: $ff
	rst  $38                                         ; $4dbc: $ff
	rst  $38                                         ; $4dbd: $ff
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	rst  $38                                         ; $4dc2: $ff
	rst  $38                                         ; $4dc3: $ff
	dec  c                                           ; $4dc4: $0d
	nop                                              ; $4dc5: $00
	ld   a, [bc]                                     ; $4dc6: $0a
	inc  d                                           ; $4dc7: $14
	ld   b, $01                                      ; $4dc8: $06 $01
	rrca                                             ; $4dca: $0f
	dec  bc                                          ; $4dcb: $0b
	ld   [bc], a                                     ; $4dcc: $02
	ld   bc, $0008                                   ; $4dcd: $01 $08 $00
	ld   e, l                                        ; $4dd0: $5d
	and  c                                           ; $4dd1: $a1
	sbc  a                                           ; $4dd2: $9f
	dec  c                                           ; $4dd3: $0d
	ld   [bc], a                                     ; $4dd4: $02
	and  l                                           ; $4dd5: $a5
	ld   h, a                                        ; $4dd6: $67
	ld   e, [hl]                                     ; $4dd7: $5e
	sbc  [hl]                                        ; $4dd8: $9e
	inc  bc                                          ; $4dd9: $03
	add  l                                           ; $4dda: $85
	inc  b                                           ; $4ddb: $04
	xor  e                                           ; $4ddc: $ab
	inc  bc                                          ; $4ddd: $03
	add  d                                           ; $4dde: $82
	inc  bc                                          ; $4ddf: $03
	ld   c, l                                        ; $4de0: $4d
	ld   a, c                                        ; $4de1: $79
	dec  b                                           ; $4de2: $05
	db   $10                                         ; $4de3: $10
	ld   a, b                                        ; $4de4: $78
	ld   h, e                                        ; $4de5: $63
	ld   d, d                                        ; $4de6: $52
	sbc  a                                           ; $4de7: $9f
	dec  c                                           ; $4de8: $0d
	nop                                              ; $4de9: $00
	ld   a, [bc]                                     ; $4dea: $0a
	rrca                                             ; $4deb: $0f
	nop                                              ; $4dec: $00
	ld   bc, $020c                                   ; $4ded: $01 $0c $02
	add  hl, bc                                      ; $4df0: $09
	ld   e, $01                                      ; $4df1: $1e $01
	adc  h                                           ; $4df3: $8c
	sbc  [hl]                                        ; $4df4: $9e
	adc  h                                           ; $4df5: $8c
	ld   h, e                                        ; $4df6: $63
	ld   e, c                                        ; $4df7: $59
	rst  $38                                         ; $4df8: $ff
	rst  $38                                         ; $4df9: $ff
	dec  c                                           ; $4dfa: $0d
	nop                                              ; $4dfb: $00
	ld   a, [bc]                                     ; $4dfc: $0a
	ld   c, $0e                                      ; $4dfd: $0e $0e
	inc  e                                           ; $4dff: $1c
	ld   a, [bc]                                     ; $4e00: $0a
	inc  b                                           ; $4e01: $04
	inc  b                                           ; $4e02: $04
	ld   bc, $5258                                   ; $4e03: $01 $58 $52
	sbc  [hl]                                        ; $4e06: $9e
	ld   [$9f00], sp                                 ; $4e07: $08 $00 $9f
	dec  c                                           ; $4e0a: $0d
	ld   e, b                                        ; $4e0b: $58
	adc  a                                           ; $4e0c: $8f
	ei                                               ; $4e0d: $fb
	inc  b                                           ; $4e0e: $04
	ld   e, $7c                                      ; $4e0f: $1e $7c
	inc  b                                           ; $4e11: $04
	ld   a, [bc]                                     ; $4e12: $0a
	ld   [bc], a                                     ; $4e13: $02
	nop                                              ; $4e14: $00
	ld   a, h                                        ; $4e15: $7c
	cp   b                                           ; $4e16: $b8
	push hl                                          ; $4e17: $e5
	pop  af                                          ; $4e18: $f1
	ei                                               ; $4e19: $fb
	sub  b                                           ; $4e1a: $90
	sbc  [hl]                                        ; $4e1b: $9e
	dec  c                                           ; $4e1c: $0d
	ld   a, h                                        ; $4e1d: $7c
	ld   l, h                                        ; $4e1e: $6c
	ld   d, d                                        ; $4e1f: $52
	ld   [hl], h                                     ; $4e20: $74
	ld   l, l                                        ; $4e21: $6d
	sub  a                                           ; $4e22: $97
	ld   h, l                                        ; $4e23: $65
	ld   d, d                                        ; $4e24: $52
	ld   a, b                                        ; $4e25: $78
	sbc  a                                           ; $4e26: $9f
	dec  c                                           ; $4e27: $0d
	nop                                              ; $4e28: $00
	ld   a, [bc]                                     ; $4e29: $0a
	ld   bc, $a102                                   ; $4e2a: $01 $02 $a1
	inc  bc                                          ; $4e2d: $03
	and  b                                           ; $4e2e: $a0
	ld   l, a                                        ; $4e2f: $6f
	ld   a, l                                        ; $4e30: $7d
	sbc  [hl]                                        ; $4e31: $9e
	sbc  l                                           ; $4e32: $9d
	ld   e, c                                        ; $4e33: $59
	sub  a                                           ; $4e34: $97
	and  c                                           ; $4e35: $a1
	ld   [hl], l                                     ; $4e36: $75
	sub  b                                           ; $4e37: $90
	ld   a, b                                        ; $4e38: $78
	ld   d, d                                        ; $4e39: $52
	dec  c                                           ; $4e3a: $0d
	ld   e, d                                        ; $4e3b: $5a
	sbc  [hl]                                        ; $4e3c: $9e
	inc  de                                          ; $4e3d: $13
	ld   [bc], a                                     ; $4e3e: $02
	sub  e                                           ; $4e3f: $93
	sub  b                                           ; $4e40: $90
	sub  d                                           ; $4e41: $92
	ld   [hl], c                                     ; $4e42: $71
	ld   l, a                                        ; $4e43: $6f
	sub  c                                           ; $4e44: $91
	ei                                               ; $4e45: $fb
	dec  c                                           ; $4e46: $0d
	adc  h                                           ; $4e47: $8c
	ld   l, b                                        ; $4e48: $68
	ld   d, d                                        ; $4e49: $52
	ld   l, [hl]                                     ; $4e4a: $6e
	sbc  e                                           ; $4e4b: $9b
	sbc  a                                           ; $4e4c: $9f
	dec  c                                           ; $4e4d: $0d
	nop                                              ; $4e4e: $00
	ld   a, [bc]                                     ; $4e4f: $0a
	ld   bc, $7e59                                   ; $4e50: $01 $59 $7e
	ld   [hl], c                                     ; $4e53: $71
	ld   [hl], h                                     ; $4e54: $74
	sub  d                                           ; $4e55: $92
	sbc  b                                           ; $4e56: $98
	ld   l, l                                        ; $4e57: $6d
	ld   d, d                                        ; $4e58: $52
	ld   e, d                                        ; $4e59: $5a
	dec  c                                           ; $4e5a: $0d
	ld   [bc], a                                     ; $4e5b: $02
	sbc  b                                           ; $4e5c: $98
	inc  bc                                          ; $4e5d: $03
	nop                                              ; $4e5e: $00
	ld   a, h                                        ; $4e5f: $7c
	inc  bc                                          ; $4e60: $03
	ld   l, e                                        ; $4e61: $6b
	inc  bc                                          ; $4e62: $03
	ld   c, a                                        ; $4e63: $4f
	sbc  [hl]                                        ; $4e64: $9e
	ld   l, a                                        ; $4e65: $6f
	sub  l                                           ; $4e66: $95
	ld   [hl], c                                     ; $4e67: $71
	halt                                             ; $4e68: $76
	ldh  [c], a                                      ; $4e69: $e2
	db   $ec                                         ; $4e6a: $ec
	dec  c                                           ; $4e6b: $0d
	ld   a, b                                        ; $4e6c: $78
	and  c                                           ; $4e6d: $a1
	ld   [hl], l                                     ; $4e6e: $75
	ld   a, b                                        ; $4e6f: $78
	sbc  a                                           ; $4e70: $9f
	dec  c                                           ; $4e71: $0d
	nop                                              ; $4e72: $00
	ld   a, [bc]                                     ; $4e73: $0a
	inc  e                                           ; $4e74: $1c
	ld   a, [bc]                                     ; $4e75: $0a
	ld   [bc], a                                     ; $4e76: $02
	ld   [bc], a                                     ; $4e77: $02
	ld   bc, $9d59                                   ; $4e78: $01 $59 $9d
	ld   d, d                                        ; $4e7b: $52
	ld   l, e                                        ; $4e7c: $6b
	ld   d, h                                        ; $4e7d: $54
	ld   l, [hl]                                     ; $4e7e: $6e
	ld   e, d                                        ; $4e7f: $5a
	sbc  [hl]                                        ; $4e80: $9e
	dec  c                                           ; $4e81: $0d
	inc  b                                           ; $4e82: $04
	dec  c                                           ; $4e83: $0d
	ld   [bc], a                                     ; $4e84: $02
	sub  [hl]                                        ; $4e85: $96
	inc  b                                           ; $4e86: $04
	ld   b, l                                        ; $4e87: $45
	inc  b                                           ; $4e88: $04
	ld   a, [bc]                                     ; $4e89: $0a
	ld   a, l                                        ; $4e8a: $7d
	ld   h, c                                        ; $4e8b: $61
	ld   h, c                                        ; $4e8c: $61
	ld   [hl], l                                     ; $4e8d: $75
	inc  bc                                          ; $4e8e: $03
	ld   a, [hl]                                     ; $4e8f: $7e
	dec  b                                           ; $4e90: $05
	nop                                              ; $4e91: $00
	ld   l, [hl]                                     ; $4e92: $6e
	ld   a, [$000d]                                  ; $4e93: $fa $0d $00
	ld   a, [bc]                                     ; $4e96: $0a
	ld   bc, $a102                                   ; $4e97: $01 $02 $a1
	inc  bc                                          ; $4e9a: $03
	and  b                                           ; $4e9b: $a0
	ld   l, a                                        ; $4e9c: $6f
	and  b                                           ; $4e9d: $a0
	inc  b                                           ; $4e9e: $04
	ld   b, l                                        ; $4e9f: $45
	sbc  d                                           ; $4ea0: $9a
	dec  b                                           ; $4ea1: $05
	scf                                              ; $4ea2: $37
	ld   d, [hl]                                     ; $4ea3: $56
	ld   [hl], h                                     ; $4ea4: $74
	dec  c                                           ; $4ea5: $0d
	inc  bc                                          ; $4ea6: $03
	add  b                                           ; $4ea7: $80
	inc  bc                                          ; $4ea8: $03
	jp   c, $7465                                    ; $4ea9: $da $65 $74

	ld   e, e                                        ; $4eac: $5b
	ld   a, b                                        ; $4ead: $78

jr_051_4eae:
	ld   a, [$000d]                                  ; $4eae: $fa $0d $00
	ld   a, [bc]                                     ; $4eb1: $0a
	ld   h, $00                                      ; $4eb2: $26 $00
	inc  b                                           ; $4eb4: $04
	add  b                                           ; $4eb5: $80
	inc  h                                           ; $4eb6: $24
	ld   bc, $20ff                                   ; $4eb7: $01 $ff $20
	inc  bc                                          ; $4eba: $03
	ld   l, [hl]                                     ; $4ebb: $6e
	ld   [bc], a                                     ; $4ebc: $02
	nop                                              ; $4ebd: $00
	jr   nz, jr_051_4edc                             ; $4ebe: $20 $1c

	nop                                              ; $4ec0: $00
	ld   c, $55                                      ; $4ec1: $0e $55
	rrca                                             ; $4ec3: $0f
	nop                                              ; $4ec4: $00
	ld   bc, $0102                                   ; $4ec5: $01 $02 $01
	ld   h, c                                        ; $4ec8: $61
	and  c                                           ; $4ec9: $a1
	ld   a, [hl]                                     ; $4eca: $7e
	and  c                                           ; $4ecb: $a1
	ld   a, l                                        ; $4ecc: $7d
	sbc  a                                           ; $4ecd: $9f
	dec  c                                           ; $4ece: $0d
	nop                                              ; $4ecf: $00
	dec  b                                           ; $4ed0: $05
	add  b                                           ; $4ed1: $80
	dec  h                                           ; $4ed2: $25
	ld   bc, $0001                                   ; $4ed3: $01 $01 $00
	ld   bc, $e004                                   ; $4ed6: $01 $04 $e0
	inc  bc                                          ; $4ed9: $03
	dec  hl                                          ; $4eda: $2b
	inc  bc                                          ; $4edb: $03

jr_051_4edc:
	pop  hl                                          ; $4edc: $e1
	sbc  b                                           ; $4edd: $98
	dec  b                                           ; $4ede: $05
	db   $10                                         ; $4edf: $10
	adc  h                                           ; $4ee0: $8c
	ld   h, l                                        ; $4ee1: $65
	ld   l, l                                        ; $4ee2: $6d
	sub  [hl]                                        ; $4ee3: $96
	sbc  a                                           ; $4ee4: $9f
	dec  c                                           ; $4ee5: $0d
	nop                                              ; $4ee6: $00
	ld   a, [bc]                                     ; $4ee7: $0a
	inc  e                                           ; $4ee8: $1c
	dec  b                                           ; $4ee9: $05
	ld   bc, $0101                                   ; $4eea: $01 $01 $01
	ld   e, b                                        ; $4eed: $58
	ld   d, h                                        ; $4eee: $54
	sbc  [hl]                                        ; $4eef: $9e
	ld   [$7d00], sp                                 ; $4ef0: $08 $00 $7d
	and  c                                           ; $4ef3: $a1
	sbc  a                                           ; $4ef4: $9f
	dec  c                                           ; $4ef5: $0d
	inc  b                                           ; $4ef6: $04
	rla                                              ; $4ef7: $17
	ld   [hl], c                                     ; $4ef8: $71
	ld   [hl], h                                     ; $4ef9: $74
	ld   l, l                                        ; $4efa: $6d
	ld   [hl], l                                     ; $4efb: $75
	sbc  a                                           ; $4efc: $9f
	dec  c                                           ; $4efd: $0d
	nop                                              ; $4efe: $00
	ld   a, [bc]                                     ; $4eff: $0a
	rrca                                             ; $4f00: $0f
	nop                                              ; $4f01: $00
	ld   bc, $0101                                   ; $4f02: $01 $01 $01
	inc  bc                                          ; $4f05: $03
	ld   h, e                                        ; $4f06: $63
	ld   [hl], h                                     ; $4f07: $74
	inc  b                                           ; $4f08: $04
	ld   c, c                                        ; $4f09: $49
	ld   a, h                                        ; $4f0a: $7c
	dec  b                                           ; $4f0b: $05
	jr   nz, jr_051_4eae                             ; $4f0c: $20 $a0

	ld   h, l                                        ; $4f0e: $65
	sub  [hl]                                        ; $4f0f: $96
	ld   d, h                                        ; $4f10: $54
	ld   e, c                                        ; $4f11: $59
	rst  $38                                         ; $4f12: $ff
	rst  $38                                         ; $4f13: $ff
	ld   bc, $0d04                                   ; $4f14: $01 $04 $0d
	nop                                              ; $4f17: $00
	ld   a, [bc]                                     ; $4f18: $0a
	add  hl, de                                      ; $4f19: $19
	dec  b                                           ; $4f1a: $05
	inc  bc                                          ; $4f1b: $03
	inc  bc                                          ; $4f1c: $03
	rst  $10                                         ; $4f1d: $d7
	inc  b                                           ; $4f1e: $04
	ret  c                                           ; $4f1f: $d8

	ld   a, c                                        ; $4f20: $79
	ld   [hl], d                                     ; $4f21: $72
	ld   d, d                                        ; $4f22: $52
	ld   [hl], h                                     ; $4f23: $74
	ld   [bc], a                                     ; $4f24: $02
	jp   nz, $005d                                   ; $4f25: $c2 $5d $00

	nop                                              ; $4f28: $00
	inc  b                                           ; $4f29: $04
	sub  l                                           ; $4f2a: $95
	ld   [bc], a                                     ; $4f2b: $02
	ld   hl, EnqueueHDMATransfer                                   ; $4f2c: $21 $7c $02
	scf                                              ; $4f2f: $37
	inc  bc                                          ; $4f30: $03
	ld   a, [de]                                     ; $4f31: $1a
	and  b                                           ; $4f32: $a0
	ld   [bc], a                                     ; $4f33: $02
	sbc  l                                           ; $4f34: $9d
	ld   d, h                                        ; $4f35: $54
	nop                                              ; $4f36: $00
	ld   bc, $546b                                   ; $4f37: $01 $6b $54
	ld   h, [hl]                                     ; $4f3a: $66
	and  b                                           ; $4f3b: $a0
	ld   h, a                                        ; $4f3c: $67
	ld   h, a                                        ; $4f3d: $67
	adc  a                                           ; $4f3e: $8f
	sbc  c                                           ; $4f3f: $99
	nop                                              ; $4f40: $00
	ld   [bc], a                                     ; $4f41: $02
	rlca                                             ; $4f42: $07
	ld   [$0200], a                                  ; $4f43: $ea $00 $02
	inc  bc                                          ; $4f46: $03
	ld   bc, $2000                                   ; $4f47: $01 $00 $20
	nop                                              ; $4f4a: $00
	rlca                                             ; $4f4b: $07
	ldh  [c], a                                      ; $4f4c: $e2
	ld   [bc], a                                     ; $4f4d: $02
	ld   [bc], a                                     ; $4f4e: $02
	inc  bc                                          ; $4f4f: $03
	ld   bc, $2001                                   ; $4f50: $01 $01 $20
	nop                                              ; $4f53: $00
	rlca                                             ; $4f54: $07
	rst  $38                                         ; $4f55: $ff
	inc  b                                           ; $4f56: $04
	ld   [bc], a                                     ; $4f57: $02
	inc  bc                                          ; $4f58: $03
	ld   bc, $2002                                   ; $4f59: $01 $02 $20
	nop                                              ; $4f5c: $00
	ld   b, $9f                                      ; $4f5d: $06 $9f
	nop                                              ; $4f5f: $00
	inc  e                                           ; $4f60: $1c
	dec  b                                           ; $4f61: $05
	ld   [bc], a                                     ; $4f62: $02
	ld   [bc], a                                     ; $4f63: $02
	ld   bc, $f9a1                                   ; $4f64: $01 $a1 $f9
	db   $10                                         ; $4f67: $10
	ld   [hl], a                                     ; $4f68: $77
	ld   a, b                                        ; $4f69: $78
	ld   d, d                                        ; $4f6a: $52
	ld   h, l                                        ; $4f6b: $65
	ld   l, l                                        ; $4f6c: $6d
	and  c                                           ; $4f6d: $a1
	sub  d                                           ; $4f6e: $92
	ld   sp, hl                                      ; $4f6f: $f9
	dec  c                                           ; $4f70: $0d
	inc  b                                           ; $4f71: $04
	adc  $52                                         ; $4f72: $ce $52
	and  c                                           ; $4f74: $a1
	sub  d                                           ; $4f75: $92
	ld   [hl], c                                     ; $4f76: $71
	ld   l, l                                        ; $4f77: $6d
	sub  a                                           ; $4f78: $97
	sbc  [hl]                                        ; $4f79: $9e
	inc  b                                           ; $4f7a: $04
	sub  l                                           ; $4f7b: $95
	ld   [bc], a                                     ; $4f7c: $02
	ld   hl, $0479                                   ; $4f7d: $21 $79 $04
	jp   Jump_051_7471                               ; $4f80: $c3 $71 $74


	dec  c                                           ; $4f83: $0d
	inc  b                                           ; $4f84: $04
	ld   b, d                                        ; $4f85: $42
	ld   l, l                                        ; $4f86: $6d
	inc  b                                           ; $4f87: $04
	ld   a, b                                        ; $4f88: $78
	ld   e, d                                        ; $4f89: $5a
	xor  c                                           ; $4f8a: $a9
	xor  c                                           ; $4f8b: $a9
	ld   [hl], l                                     ; $4f8c: $75
	sbc  a                                           ; $4f8d: $9f
	dec  c                                           ; $4f8e: $0d
	nop                                              ; $4f8f: $00
	ld   a, [bc]                                     ; $4f90: $0a
	inc  e                                           ; $4f91: $1c
	dec  b                                           ; $4f92: $05
	nop                                              ; $4f93: $00
	nop                                              ; $4f94: $00
	ld   bc, $7889                                   ; $4f95: $01 $89 $78
	sbc  [hl]                                        ; $4f98: $9e
	ld   e, b                                        ; $4f99: $58
	sub  d                                           ; $4f9a: $92
	ld   h, a                                        ; $4f9b: $67
	adc  l                                           ; $4f9c: $8d
	sbc  a                                           ; $4f9d: $9f
	dec  c                                           ; $4f9e: $0d
	adc  h                                           ; $4f9f: $8c
	ld   l, l                                        ; $4fa0: $6d
	ld   [bc], a                                     ; $4fa1: $02
	and  l                                           ; $4fa2: $a5
	inc  b                                           ; $4fa3: $04
	add  hl, hl                                      ; $4fa4: $29
	ld   a, b                                        ; $4fa5: $78
	sbc  a                                           ; $4fa6: $9f
	dec  c                                           ; $4fa7: $0d
	nop                                              ; $4fa8: $00
	ld   a, [bc]                                     ; $4fa9: $0a
	nop                                              ; $4faa: $00
	rrca                                             ; $4fab: $0f
	nop                                              ; $4fac: $00
	ld   bc, $6b01                                   ; $4fad: $01 $01 $6b
	ld   h, c                                        ; $4fb0: $61
	sub  a                                           ; $4fb1: $97
	ld   a, c                                        ; $4fb2: $79
	inc  bc                                          ; $4fb3: $03
	sub  [hl]                                        ; $4fb4: $96
	sub  a                                           ; $4fb5: $97
	ld   a, [hl]                                     ; $4fb6: $7e
	ld   [hl], c                                     ; $4fb7: $71
	ld   [hl], h                                     ; $4fb8: $74
	ld   d, d                                        ; $4fb9: $52
	sbc  c                                           ; $4fba: $99
	dec  c                                           ; $4fbb: $0d
	inc  bc                                          ; $4fbc: $03
	rst  $10                                         ; $4fbd: $d7
	inc  b                                           ; $4fbe: $04
	ret  c                                           ; $4fbf: $d8

	ld   a, l                                        ; $4fc0: $7d
	ld   a, b                                        ; $4fc1: $78
	and  c                                           ; $4fc2: $a1
	ld   [hl], l                                     ; $4fc3: $75
	ld   h, a                                        ; $4fc4: $67
	ld   e, c                                        ; $4fc5: $59
	ld   sp, hl                                      ; $4fc6: $f9
	dec  c                                           ; $4fc7: $0d
	nop                                              ; $4fc8: $00
	ld   a, [bc]                                     ; $4fc9: $0a
	rrca                                             ; $4fca: $0f
	dec  b                                           ; $4fcb: $05
	ld   bc, $9601                                   ; $4fcc: $01 $01 $96
	ei                                               ; $4fcf: $fb
	ld   [bc], a                                     ; $4fd0: $02
	jp   nz, Jump_051_7452                           ; $4fd1: $c2 $52 $74

	ld   e, l                                        ; $4fd4: $5d
	sbc  d                                           ; $4fd5: $9a
	ld   l, l                                        ; $4fd6: $6d
	sbc  a                                           ; $4fd7: $9f
	dec  c                                           ; $4fd8: $0d
	ld   h, c                                        ; $4fd9: $61
	sbc  d                                           ; $4fda: $9a
	ld   a, c                                        ; $4fdb: $79
	ld   a, l                                        ; $4fdc: $7d
	sbc  [hl]                                        ; $4fdd: $9e
	and  a                                           ; $4fde: $a7
	jp   nz, $047c                                   ; $4fdf: $c2 $7c $04

	cp   [hl]                                        ; $4fe2: $be
	ld   e, d                                        ; $4fe3: $5a
	dec  c                                           ; $4fe4: $0d
	ld   d, [hl]                                     ; $4fe5: $56
	ld   e, d                                        ; $4fe6: $5a
	ld   e, c                                        ; $4fe7: $59
	sbc  d                                           ; $4fe8: $9a
	ld   [hl], h                                     ; $4fe9: $74
	sbc  c                                           ; $4fea: $99
	and  c                                           ; $4feb: $a1
	sub  d                                           ; $4fec: $92
	sbc  a                                           ; $4fed: $9f
	dec  c                                           ; $4fee: $0d
	nop                                              ; $4fef: $00
	ld   a, [bc]                                     ; $4ff0: $0a
	ld   bc, $ad04                                   ; $4ff1: $01 $04 $ad
	ld   [bc], a                                     ; $4ff4: $02
	xor  c                                           ; $4ff5: $a9
	sbc  [hl]                                        ; $4ff6: $9e
	ld   l, a                                        ; $4ff7: $6f
	sub  l                                           ; $4ff8: $95
	sbc  e                                           ; $4ff9: $9b
	ld   [hl], c                                     ; $4ffa: $71
	halt                                             ; $4ffb: $76
	ld   [bc], a                                     ; $4ffc: $02
	sbc  l                                           ; $4ffd: $9d
	ld   d, h                                        ; $4ffe: $54
	ld   l, l                                        ; $4fff: $6d
	dec  c                                           ; $5000: $0d
	and  a                                           ; $5001: $a7
	jp   nz, $047c                                   ; $5002: $c2 $7c $04

	cp   [hl]                                        ; $5005: $be
	sbc  [hl]                                        ; $5006: $9e
	ld   e, b                                        ; $5007: $58
	adc  d                                           ; $5008: $8a
	ld   d, [hl]                                     ; $5009: $56
	ld   [hl], h                                     ; $500a: $74
	sbc  c                                           ; $500b: $99
	ld   e, c                                        ; $500c: $59
	ld   sp, hl                                      ; $500d: $f9
	dec  c                                           ; $500e: $0d
	nop                                              ; $500f: $00
	ld   a, [bc]                                     ; $5010: $0a
	add  hl, de                                      ; $5011: $19
	dec  b                                           ; $5012: $05
	ld   [bc], a                                     ; $5013: $02
	ld   [bc], a                                     ; $5014: $02
	or   [hl]                                        ; $5015: $b6
	ld   sp, hl                                      ; $5016: $f9
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00
	inc  bc                                          ; $5019: $03
	add  c                                           ; $501a: $81
	ld   [bc], a                                     ; $501b: $02
	ld   d, l                                        ; $501c: $55
	ld   [bc], a                                     ; $501d: $02
	jr   c, @+$06                                    ; $501e: $38 $04

	ld   d, d                                        ; $5020: $52
	ld   sp, hl                                      ; $5021: $f9
	nop                                              ; $5022: $00
	ld   bc, $7807                                   ; $5023: $01 $07 $78
	ld   bc, $0302                                   ; $5026: $01 $02 $03
	ld   bc, $2000                                   ; $5029: $01 $00 $20
	nop                                              ; $502c: $00
	rlca                                             ; $502d: $07
	ld   b, d                                        ; $502e: $42
	ld   [bc], a                                     ; $502f: $02
	ld   [bc], a                                     ; $5030: $02
	inc  bc                                          ; $5031: $03
	ld   bc, $2001                                   ; $5032: $01 $01 $20
	nop                                              ; $5035: $00
	ld   b, $9b                                      ; $5036: $06 $9b
	ld   [bc], a                                     ; $5038: $02
	rrca                                             ; $5039: $0f
	nop                                              ; $503a: $00
	ld   bc, $0201                                   ; $503b: $01 $01 $02
	or   [hl]                                        ; $503e: $b6
	rst  $38                                         ; $503f: $ff
	ld   [hl], l                                     ; $5040: $75
	ld   h, a                                        ; $5041: $67
	ld   e, c                                        ; $5042: $59
	ld   sp, hl                                      ; $5043: $f9
	dec  c                                           ; $5044: $0d
	nop                                              ; $5045: $00
	ld   a, [bc]                                     ; $5046: $0a
	rrca                                             ; $5047: $0f
	dec  b                                           ; $5048: $05
	ld   bc, $6b01                                   ; $5049: $01 $01 $6b
	ld   d, h                                        ; $504c: $54
	sub  d                                           ; $504d: $92
	ld   a, [$0210]                                  ; $504e: $fa $10 $02
	or   [hl]                                        ; $5051: $b6
	sub  d                                           ; $5052: $92
	ld   a, [$040d]                                  ; $5053: $fa $0d $04
	ld   c, $02                                      ; $5056: $0e $02
	or   [hl]                                        ; $5058: $b6
	and  b                                           ; $5059: $a0

Jump_051_505a:
	inc  b                                           ; $505a: $04
	ld   a, a                                        ; $505b: $7f
	add  h                                           ; $505c: $84
	ld   b, $57                                      ; $505d: $06 $57
	sbc  a                                           ; $505f: $9f
	dec  c                                           ; $5060: $0d
	ld   l, e                                        ; $5061: $6b
	sbc  d                                           ; $5062: $9a
	ld   e, d                                        ; $5063: $5a
	and  a                                           ; $5064: $a7
	jp   nz, $047c                                   ; $5065: $c2 $7c $04

	cp   [hl]                                        ; $5068: $be
	ld   a, b                                        ; $5069: $78
	and  c                                           ; $506a: $a1
	sub  d                                           ; $506b: $92
	sbc  a                                           ; $506c: $9f
	dec  c                                           ; $506d: $0d
	nop                                              ; $506e: $00
	ld   a, [bc]                                     ; $506f: $0a
	ld   bc, $5103                                   ; $5070: $01 $03 $51
	ld   [bc], a                                     ; $5073: $02
	ld   a, [hl]                                     ; $5074: $7e
	inc  b                                           ; $5075: $04
	ret  z                                           ; $5076: $c8

	sub  b                                           ; $5077: $90
	ld   [bc], a                                     ; $5078: $02
	or   [hl]                                        ; $5079: $b6
	inc  b                                           ; $507a: $04
	ld   a, a                                        ; $507b: $7f
	add  h                                           ; $507c: $84
	ld   e, a                                        ; $507d: $5f
	ld   [hl], a                                     ; $507e: $77
	dec  c                                           ; $507f: $0d
	ld   d, b                                        ; $5080: $50
	and  c                                           ; $5081: $a1
	ld   a, b                                        ; $5082: $78
	and  c                                           ; $5083: $a1
	sub  d                                           ; $5084: $92
	ld   a, b                                        ; $5085: $78
	ld   e, l                                        ; $5086: $5d
	ld   [hl], h                                     ; $5087: $74
	sbc  [hl]                                        ; $5088: $9e
	dec  c                                           ; $5089: $0d
	sub  b                                           ; $508a: $90
	ld   [hl], c                                     ; $508b: $71
	halt                                             ; $508c: $76
	rst  $28                                         ; $508d: $ef
	rst  JumpTable                                         ; $508e: $df
	push af                                          ; $508f: $f5
	ld   a, h                                        ; $5090: $7c
	ld   d, b                                        ; $5091: $50
	sbc  c                                           ; $5092: $99
	sub  d                                           ; $5093: $92
	ld   [hl], d                                     ; $5094: $72
	rst  $38                                         ; $5095: $ff
	sbc  a                                           ; $5096: $9f
	dec  c                                           ; $5097: $0d
	nop                                              ; $5098: $00
	ld   a, [bc]                                     ; $5099: $0a
	ld   bc, $546b                                   ; $509a: $01 $6b $54
	sbc  [hl]                                        ; $509d: $9e
	ld   b, $54                                      ; $509e: $06 $54
	inc  b                                           ; $50a0: $04
	sub  c                                           ; $50a1: $91
	ld   [bc], a                                     ; $50a2: $02
	ld   e, b                                        ; $50a3: $58
	adc  l                                           ; $50a4: $8d
	ld   l, l                                        ; $50a5: $6d
	ld   d, d                                        ; $50a6: $52
	ld   a, b                                        ; $50a7: $78
	sub  d                                           ; $50a8: $92
	ld   [hl], d                                     ; $50a9: $72
	sub  d                                           ; $50aa: $92
	sbc  a                                           ; $50ab: $9f
	dec  c                                           ; $50ac: $0d
	ld   [bc], a                                     ; $50ad: $02
	and  c                                           ; $50ae: $a1
	inc  bc                                          ; $50af: $03
	and  b                                           ; $50b0: $a0
	ld   l, a                                        ; $50b1: $6f
	xor  c                                           ; $50b2: $a9
	xor  c                                           ; $50b3: $a9
	sub  d                                           ; $50b4: $92
	sbc  e                                           ; $50b5: $9b
	ld   a, b                                        ; $50b6: $78
	db   $fc                                         ; $50b7: $fc
	sbc  a                                           ; $50b8: $9f
	dec  c                                           ; $50b9: $0d
	nop                                              ; $50ba: $00
	ld   a, [bc]                                     ; $50bb: $0a
	rrca                                             ; $50bc: $0f
	nop                                              ; $50bd: $00
	ld   bc, $0201                                   ; $50be: $01 $01 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50c1: $cf
	dec  b                                           ; $50c2: $05
	ld   a, [de]                                     ; $50c3: $1a
	ld   h, e                                        ; $50c4: $63
	and  c                                           ; $50c5: $a1
	ld   a, b                                        ; $50c6: $78
	sub  a                                           ; $50c7: $97
	sbc  [hl]                                        ; $50c8: $9e
	inc  bc                                          ; $50c9: $03
	add  b                                           ; $50ca: $80
	dec  b                                           ; $50cb: $05
	db   $10                                         ; $50cc: $10
	adc  h                                           ; $50cd: $8c
	ld   h, a                                        ; $50ce: $67
	sub  [hl]                                        ; $50cf: $96
	sbc  a                                           ; $50d0: $9f
	dec  c                                           ; $50d1: $0d
	ld   e, d                                        ; $50d2: $5a
	and  c                                           ; $50d3: $a1
	ld   a, [hl]                                     ; $50d4: $7e
	ld   [hl], c                                     ; $50d5: $71
	ld   [hl], h                                     ; $50d6: $74
	ld   e, l                                        ; $50d7: $5d
	ld   l, [hl]                                     ; $50d8: $6e
	ld   h, e                                        ; $50d9: $63
	ld   d, d                                        ; $50da: $52
	ld   a, e                                        ; $50db: $7b
	dec  c                                           ; $50dc: $0d
	nop                                              ; $50dd: $00
	ld   a, [bc]                                     ; $50de: $0a
	inc  e                                           ; $50df: $1c
	dec  b                                           ; $50e0: $05
	dec  b                                           ; $50e1: $05
	dec  b                                           ; $50e2: $05
	dec  e                                           ; $50e3: $1d
	ld   b, b                                        ; $50e4: $40
	dec  d                                           ; $50e5: $15
	inc  bc                                          ; $50e6: $03
	dec  d                                           ; $50e7: $15
	ld   bc, $2803                                   ; $50e8: $01 $03 $28
	nop                                              ; $50eb: $00
	ld   bc, $5050                                   ; $50ec: $01 $50 $50
	sbc  [hl]                                        ; $50ef: $9e
	ld   e, b                                        ; $50f0: $58
	ld   e, b                                        ; $50f1: $58
	ld   e, e                                        ; $50f2: $5b
	ld   a, c                                        ; $50f3: $79
	ld   a, b                                        ; $50f4: $78
	sbc  a                                           ; $50f5: $9f
	dec  c                                           ; $50f6: $0d
	and  a                                           ; $50f7: $a7
	jp   nz, $a15a                                   ; $50f8: $c2 $5a $a1

	ld   a, [hl]                                     ; $50fb: $7e
	sbc  c                                           ; $50fc: $99
	sbc  l                                           ; $50fd: $9d
	sbc  a                                           ; $50fe: $9f
	dec  c                                           ; $50ff: $0d
	nop                                              ; $5100: $00
	ld   a, [bc]                                     ; $5101: $0a

Call_051_5102:
	nop                                              ; $5102: $00
	rrca                                             ; $5103: $0f
	nop                                              ; $5104: $00
	ld   bc, $0301                                   ; $5105: $01 $01 $03
	add  c                                           ; $5108: $81
	ld   [bc], a                                     ; $5109: $02
	ld   d, l                                        ; $510a: $55
	ld   [bc], a                                     ; $510b: $02
	jr   c, jr_051_5112                              ; $510c: $38 $04

	ld   d, d                                        ; $510e: $52
	ld   a, h                                        ; $510f: $7c
	ld   h, c                                        ; $5110: $61
	halt                                             ; $5111: $76

jr_051_5112:
	ld   [hl], l                                     ; $5112: $75
	ld   h, a                                        ; $5113: $67
	ld   e, c                                        ; $5114: $59
	ld   sp, hl                                      ; $5115: $f9
	dec  c                                           ; $5116: $0d
	nop                                              ; $5117: $00
	ld   a, [bc]                                     ; $5118: $0a
	inc  e                                           ; $5119: $1c
	dec  b                                           ; $511a: $05
	ld   [bc], a                                     ; $511b: $02
	ld   [bc], a                                     ; $511c: $02
	ld   bc, $fc54                                   ; $511d: $01 $54 $fc
	and  c                                           ; $5120: $a1
	sbc  a                                           ; $5121: $9f
	ld   l, e                                        ; $5122: $6b
	sbc  d                                           ; $5123: $9a
	sub  b                                           ; $5124: $90
	ld   d, b                                        ; $5125: $50
	and  c                                           ; $5126: $a1
	ld   a, e                                        ; $5127: $7b
	and  c                                           ; $5128: $a1
	ld   e, a                                        ; $5129: $5f
	ld   [hl], a                                     ; $512a: $77
	rst  $38                                         ; $512b: $ff
	dec  c                                           ; $512c: $0d
	ld   l, a                                        ; $512d: $6f
	ld   e, d                                        ; $512e: $5a
	ld   d, h                                        ; $512f: $54
	ld   a, e                                        ; $5130: $7b
	and  c                                           ; $5131: $a1
	ld   a, b                                        ; $5132: $78
	db   $fc                                         ; $5133: $fc
	sbc  a                                           ; $5134: $9f
	dec  c                                           ; $5135: $0d
	nop                                              ; $5136: $00
	ld   a, [bc]                                     ; $5137: $0a
	dec  e                                           ; $5138: $1d
	ld   b, b                                        ; $5139: $40
	dec  d                                           ; $513a: $15
	inc  bc                                          ; $513b: $03
	dec  d                                           ; $513c: $15
	ld   bc, $2901                                   ; $513d: $01 $01 $29
	nop                                              ; $5140: $00
	ld   bc, $0008                                   ; $5141: $01 $08 $00
	ld   a, l                                        ; $5144: $7d
	and  c                                           ; $5145: $a1
	ld   a, c                                        ; $5146: $79
	ld   a, l                                        ; $5147: $7d
	dec  c                                           ; $5148: $0d
	inc  b                                           ; $5149: $04
	sbc  [hl]                                        ; $514a: $9e
	ld   e, c                                        ; $514b: $59
	ld   [hl], c                                     ; $514c: $71
	ld   [hl], h                                     ; $514d: $74
	sub  b                                           ; $514e: $90
	sub  a                                           ; $514f: $97
	sbc  l                                           ; $5150: $9d
	sbc  d                                           ; $5151: $9a
	add  [hl]                                        ; $5152: $86
	and  c                                           ; $5153: $a1
	ld   e, c                                        ; $5154: $59
	ld   a, b                                        ; $5155: $78
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	dec  c                                           ; $5158: $0d
	nop                                              ; $5159: $00
	ld   a, [bc]                                     ; $515a: $0a
	nop                                              ; $515b: $00
	inc  e                                           ; $515c: $1c
	dec  b                                           ; $515d: $05
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	ld   bc, $f9a1                                   ; $5160: $01 $a1 $f9
	db   $10                                         ; $5163: $10
	ld   [hl], a                                     ; $5164: $77
	ld   a, b                                        ; $5165: $78
	ld   d, d                                        ; $5166: $52
	ld   h, l                                        ; $5167: $65
	ld   l, l                                        ; $5168: $6d
	and  c                                           ; $5169: $a1
	sub  d                                           ; $516a: $92
	ld   sp, hl                                      ; $516b: $f9
	dec  c                                           ; $516c: $0d
	inc  b                                           ; $516d: $04
	adc  $52                                         ; $516e: $ce $52
	and  c                                           ; $5170: $a1
	sub  d                                           ; $5171: $92
	ld   [hl], c                                     ; $5172: $71
	ld   l, l                                        ; $5173: $6d
	sub  a                                           ; $5174: $97
	sbc  [hl]                                        ; $5175: $9e
	inc  b                                           ; $5176: $04
	sub  l                                           ; $5177: $95
	ld   [bc], a                                     ; $5178: $02
	ld   hl, $0479                                   ; $5179: $21 $79 $04
	jp   Jump_051_7471                               ; $517c: $c3 $71 $74


	dec  c                                           ; $517f: $0d
	inc  b                                           ; $5180: $04
	ld   b, d                                        ; $5181: $42
	ld   l, l                                        ; $5182: $6d
	inc  b                                           ; $5183: $04
	ld   a, b                                        ; $5184: $78
	ld   e, d                                        ; $5185: $5a
	xor  c                                           ; $5186: $a9
	xor  c                                           ; $5187: $a9
	ld   [hl], l                                     ; $5188: $75
	sbc  a                                           ; $5189: $9f
	dec  c                                           ; $518a: $0d
	nop                                              ; $518b: $00
	ld   a, [bc]                                     ; $518c: $0a
	ld   bc, $7889                                   ; $518d: $01 $89 $78
	sbc  [hl]                                        ; $5190: $9e
	ld   e, b                                        ; $5191: $58
	sub  d                                           ; $5192: $92
	ld   h, a                                        ; $5193: $67
	adc  l                                           ; $5194: $8d
	sbc  a                                           ; $5195: $9f
	dec  c                                           ; $5196: $0d
	adc  h                                           ; $5197: $8c
	ld   l, l                                        ; $5198: $6d
	ld   [bc], a                                     ; $5199: $02
	and  l                                           ; $519a: $a5
	inc  b                                           ; $519b: $04
	add  hl, hl                                      ; $519c: $29
	ld   a, b                                        ; $519d: $78
	sbc  a                                           ; $519e: $9f
	dec  c                                           ; $519f: $0d
	nop                                              ; $51a0: $00
	ld   a, [bc]                                     ; $51a1: $0a
	nop                                              ; $51a2: $00
	rrca                                             ; $51a3: $0f
	nop                                              ; $51a4: $00
	ld   bc, $5401                                   ; $51a5: $01 $01 $54
	sbc  l                                           ; $51a8: $9d
	db   $fc                                         ; $51a9: $fc
	sbc  a                                           ; $51aa: $9f
	dec  c                                           ; $51ab: $0d
	cp   d                                           ; $51ac: $ba
	or   l                                           ; $51ad: $b5
	and  l                                           ; $51ae: $a5
	ld   [bc], a                                     ; $51af: $02
	ld   e, b                                        ; $51b0: $58
	ld   [bc], a                                     ; $51b1: $02
	ld   d, [hl]                                     ; $51b2: $56
	ld   e, d                                        ; $51b3: $5a
	ld   d, d                                        ; $51b4: $52
	ld   [hl], c                                     ; $51b5: $71
	ld   a, a                                        ; $51b6: $7f
	ld   d, d                                        ; $51b7: $52
	ld   [hl], l                                     ; $51b8: $75
	ld   h, a                                        ; $51b9: $67
	ld   a, e                                        ; $51ba: $7b
	sbc  a                                           ; $51bb: $9f
	dec  c                                           ; $51bc: $0d
	nop                                              ; $51bd: $00
	ld   a, [bc]                                     ; $51be: $0a
	rrca                                             ; $51bf: $0f
	dec  b                                           ; $51c0: $05
	ld   bc, $8c01                                   ; $51c1: $01 $01 $8c
	ld   d, b                                        ; $51c4: $50
	ld   a, b                                        ; $51c5: $78
	sbc  a                                           ; $51c6: $9f
	dec  c                                           ; $51c7: $0d
	ld   d, d                                        ; $51c8: $52
	sbc  e                                           ; $51c9: $9b
	and  c                                           ; $51ca: $a1
	ld   a, b                                        ; $51cb: $78
	sub  b                                           ; $51cc: $90
	and  c                                           ; $51cd: $a1
	ld   [bc], a                                     ; $51ce: $02
	adc  b                                           ; $51cf: $88
	inc  b                                           ; $51d0: $04
	ld   e, [hl]                                     ; $51d1: $5e
	ld   h, l                                        ; $51d2: $65
	ld   [hl], h                                     ; $51d3: $74
	sbc  c                                           ; $51d4: $99
	ld   e, c                                        ; $51d5: $59
	sub  a                                           ; $51d6: $97
	sbc  a                                           ; $51d7: $9f
	dec  c                                           ; $51d8: $0d
	nop                                              ; $51d9: $00
	ld   a, [bc]                                     ; $51da: $0a
	add  hl, de                                      ; $51db: $19
	dec  b                                           ; $51dc: $05
	ld   [bc], a                                     ; $51dd: $02
	inc  b                                           ; $51de: $04
	ld   e, [hl]                                     ; $51df: $5e
	inc  b                                           ; $51e0: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51e1: $cf
	inc  b                                           ; $51e2: $04
	ld   h, c                                        ; $51e3: $61
	and  b                                           ; $51e4: $a0
	ld   [bc], a                                     ; $51e5: $02
	jp   nz, $005d                                   ; $51e6: $c2 $5d $00

	nop                                              ; $51e9: $00
	inc  bc                                          ; $51ea: $03
	add  e                                           ; $51eb: $83
	inc  b                                           ; $51ec: $04
	sbc  b                                           ; $51ed: $98
	ld   a, h                                        ; $51ee: $7c
	inc  bc                                          ; $51ef: $03
	pop  bc                                          ; $51f0: $c1
	and  b                                           ; $51f1: $a0
	ld   [bc], a                                     ; $51f2: $02
	jp   nz, $005d                                   ; $51f3: $c2 $5d $00

	ld   bc, $4b07                                   ; $51f6: $01 $07 $4b
	inc  bc                                          ; $51f9: $03
	ld   [bc], a                                     ; $51fa: $02
	inc  bc                                          ; $51fb: $03
	ld   bc, $2000                                   ; $51fc: $01 $00 $20
	nop                                              ; $51ff: $00
	rlca                                             ; $5200: $07
	ei                                               ; $5201: $fb
	inc  bc                                          ; $5202: $03
	ld   [bc], a                                     ; $5203: $02
	inc  bc                                          ; $5204: $03
	ld   bc, $2001                                   ; $5205: $01 $01 $20
	nop                                              ; $5208: $00
	ld   b, $b4                                      ; $5209: $06 $b4
	inc  b                                           ; $520b: $04
	rrca                                             ; $520c: $0f
	nop                                              ; $520d: $00
	ld   bc, $6f01                                   ; $520e: $01 $01 $6f
	ld   a, b                                        ; $5211: $78
	adc  l                                           ; $5212: $8d
	ld   a, c                                        ; $5213: $79
	sbc  [hl]                                        ; $5214: $9e
	ld   [hl], a                                     ; $5215: $77
	and  c                                           ; $5216: $a1
	ld   a, b                                        ; $5217: $78
	sub  b                                           ; $5218: $90
	ld   a, h                                        ; $5219: $7c
	and  b                                           ; $521a: $a0
	dec  c                                           ; $521b: $0d
	inc  b                                           ; $521c: $04
	ld   e, [hl]                                     ; $521d: $5e
	inc  b                                           ; $521e: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $521f: $cf
	ld   h, l                                        ; $5220: $65
	ld   [hl], h                                     ; $5221: $74
	ld   e, e                                        ; $5222: $5b
	ld   l, l                                        ; $5223: $6d
	ld   a, h                                        ; $5224: $7c
	ld   [hl], l                                     ; $5225: $75
	ld   h, a                                        ; $5226: $67
	ld   e, c                                        ; $5227: $59
	ld   sp, hl                                      ; $5228: $f9
	dec  c                                           ; $5229: $0d
	nop                                              ; $522a: $00
	ld   a, [bc]                                     ; $522b: $0a
	inc  e                                           ; $522c: $1c
	dec  b                                           ; $522d: $05
	dec  b                                           ; $522e: $05
	dec  b                                           ; $522f: $05
	ld   bc, $fc56                                   ; $5230: $01 $56 $fc
	ld   [hl], c                                     ; $5233: $71
	halt                                             ; $5234: $76
	rst  $38                                         ; $5235: $ff
	rst  $38                                         ; $5236: $ff
	dec  c                                           ; $5237: $0d
	ret  nc                                          ; $5238: $d0

	rst  JumpTable                                         ; $5239: $df
	and  l                                           ; $523a: $a5
	jp   nz, $8c9e                                   ; $523b: $c2 $9e $8c

	ld   h, c                                        ; $523e: $61
	halt                                             ; $523f: $76
	ld   e, l                                        ; $5240: $5d
	and  c                                           ; $5241: $a1
	sbc  [hl]                                        ; $5242: $9e
	dec  c                                           ; $5243: $0d
	ld   d, [hl]                                     ; $5244: $56
	and  c                                           ; $5245: $a1
	ld   e, c                                        ; $5246: $59
	ld   d, d                                        ; $5247: $52
	ld   e, l                                        ; $5248: $5d
	and  c                                           ; $5249: $a1
	rst  $38                                         ; $524a: $ff
	rst  $38                                         ; $524b: $ff
	dec  c                                           ; $524c: $0d
	nop                                              ; $524d: $00
	ld   a, [bc]                                     ; $524e: $0a
	ld   bc, $5103                                   ; $524f: $01 $03 $51
	ld   [bc], a                                     ; $5252: $02
	ld   a, [hl]                                     ; $5253: $7e
	inc  b                                           ; $5254: $04
	ret  z                                           ; $5255: $c8

	ld   a, c                                        ; $5256: $79
	rst  $38                                         ; $5257: $ff
	rst  $38                                         ; $5258: $ff
	dec  c                                           ; $5259: $0d
	ld   [bc], a                                     ; $525a: $02
	jr   c, jr_051_5261                              ; $525b: $38 $04

	ld   d, d                                        ; $525d: $52
	ld   a, l                                        ; $525e: $7d
	sbc  [hl]                                        ; $525f: $9e
	inc  bc                                          ; $5260: $03

jr_051_5261:
	dec  c                                           ; $5261: $0d
	inc  bc                                          ; $5262: $03
	ld   h, l                                        ; $5263: $65
	ld   h, b                                        ; $5264: $60
	ld   l, [hl]                                     ; $5265: $6e
	ld   e, a                                        ; $5266: $5f
	sub  d                                           ; $5267: $92
	ld   e, a                                        ; $5268: $5f
	ld   [hl], a                                     ; $5269: $77
	rst  $38                                         ; $526a: $ff
	rst  $38                                         ; $526b: $ff
	dec  c                                           ; $526c: $0d
	adc  h                                           ; $526d: $8c
	sbc  [hl]                                        ; $526e: $9e
	adc  c                                           ; $526f: $89
	ld   e, c                                        ; $5270: $59
	ld   a, c                                        ; $5271: $79
	sub  b                                           ; $5272: $90
	ld   d, d                                        ; $5273: $52
	sbc  e                                           ; $5274: $9b
	ld   d, d                                        ; $5275: $52

Jump_051_5276:
	sbc  e                                           ; $5276: $9b
	sub  d                                           ; $5277: $92
	ld   a, b                                        ; $5278: $78
	sbc  a                                           ; $5279: $9f
	dec  c                                           ; $527a: $0d
	nop                                              ; $527b: $00
	ld   a, [bc]                                     ; $527c: $0a
	rrca                                             ; $527d: $0f
	nop                                              ; $527e: $00
	ld   bc, $ba01                                   ; $527f: $01 $01 $ba
	or   l                                           ; $5282: $b5
	and  l                                           ; $5283: $a5
	ld   [hl], l                                     ; $5284: $75
	ld   h, a                                        ; $5285: $67
	ld   a, e                                        ; $5286: $7b
	sbc  a                                           ; $5287: $9f
	dec  c                                           ; $5288: $0d
	nop                                              ; $5289: $00
	ld   a, [bc]                                     ; $528a: $0a
	inc  e                                           ; $528b: $1c
	dec  b                                           ; $528c: $05
	inc  b                                           ; $528d: $04
	inc  b                                           ; $528e: $04
	dec  e                                           ; $528f: $1d
	ld   b, b                                        ; $5290: $40
	dec  d                                           ; $5291: $15
	inc  bc                                          ; $5292: $03
	dec  d                                           ; $5293: $15
	ld   bc, $2802                                   ; $5294: $01 $02 $28
	nop                                              ; $5297: $00
	ld   bc, $508c                                   ; $5298: $01 $8c $50
	ld   a, b                                        ; $529b: $78
	sbc  a                                           ; $529c: $9f
	dec  c                                           ; $529d: $0d
	ld   d, b                                        ; $529e: $50
	sbc  [hl]                                        ; $529f: $9e
	ld   l, e                                        ; $52a0: $6b
	sbc  e                                           ; $52a1: $9b
	ld   l, e                                        ; $52a2: $6b
	sbc  e                                           ; $52a3: $9b
	inc  b                                           ; $52a4: $04
	ld   b, d                                        ; $52a5: $42
	sbc  c                                           ; $52a6: $99
	inc  bc                                          ; $52a7: $03
	ld   l, a                                        ; $52a8: $6f
	ld   [bc], a                                     ; $52a9: $02
	xor  c                                           ; $52aa: $a9
	sub  d                                           ; $52ab: $92
	sbc  a                                           ; $52ac: $9f
	dec  c                                           ; $52ad: $0d
	ld   [$7d00], sp                                 ; $52ae: $08 $00 $7d
	and  c                                           ; $52b1: $a1
	sbc  [hl]                                        ; $52b2: $9e
	ld   e, b                                        ; $52b3: $58
	sub  d                                           ; $52b4: $92
	ld   h, a                                        ; $52b5: $67
	adc  l                                           ; $52b6: $8d
	sbc  a                                           ; $52b7: $9f
	dec  c                                           ; $52b8: $0d
	nop                                              ; $52b9: $00
	ld   a, [bc]                                     ; $52ba: $0a
	nop                                              ; $52bb: $00
	rrca                                             ; $52bc: $0f
	nop                                              ; $52bd: $00
	ld   bc, $6b01                                   ; $52be: $01 $01 $6b
	sbc  d                                           ; $52c1: $9a
	ld   h, [hl]                                     ; $52c2: $66
	sub  c                                           ; $52c3: $91
	ld   d, b                                        ; $52c4: $50
	sbc  [hl]                                        ; $52c5: $9e
	ld   h, e                                        ; $52c6: $63
	ld   l, h                                        ; $52c7: $6c
	ld   e, c                                        ; $52c8: $59
	ld   h, l                                        ; $52c9: $65
	dec  c                                           ; $52ca: $0d
	inc  bc                                          ; $52cb: $03
	add  e                                           ; $52cc: $83
	inc  b                                           ; $52cd: $04
	sbc  b                                           ; $52ce: $98
	sub  b                                           ; $52cf: $90
	inc  b                                           ; $52d0: $04
	rrca                                             ; $52d1: $0f
	ld   e, c                                        ; $52d2: $59
	ld   [hl], c                                     ; $52d3: $71
	ld   l, l                                        ; $52d4: $6d
	and  c                                           ; $52d5: $a1
	ld   [hl], l                                     ; $52d6: $75
	ld   h, l                                        ; $52d7: $65
	sub  l                                           ; $52d8: $95
	ld   d, h                                        ; $52d9: $54
	ld   a, e                                        ; $52da: $7b
	sbc  a                                           ; $52db: $9f
	dec  c                                           ; $52dc: $0d
	nop                                              ; $52dd: $00
	ld   a, [bc]                                     ; $52de: $0a
	inc  e                                           ; $52df: $1c
	dec  b                                           ; $52e0: $05
	ld   [bc], a                                     ; $52e1: $02
	ld   [bc], a                                     ; $52e2: $02
	ld   bc, $546b                                   ; $52e3: $01 $6b $54
	ld   l, e                                        ; $52e6: $6b
	ld   d, h                                        ; $52e7: $54
	sbc  a                                           ; $52e8: $9f
	sub  b                                           ; $52e9: $90
	ei                                               ; $52ea: $fb
	ld   l, e                                        ; $52eb: $6b
	ld   a, h                                        ; $52ec: $7c
	inc  b                                           ; $52ed: $04
	add  hl, hl                                      ; $52ee: $29
	ld   a, c                                        ; $52ef: $79
	dec  c                                           ; $52f0: $0d
	ld   [bc], a                                     ; $52f1: $02
	dec  [hl]                                        ; $52f2: $35
	ld   e, l                                        ; $52f3: $5d
	ld   a, b                                        ; $52f4: $78
	sbc  c                                           ; $52f5: $99
	sub  b                                           ; $52f6: $90
	and  c                                           ; $52f7: $a1
	sub  d                                           ; $52f8: $92
	ld   e, c                                        ; $52f9: $59
	sub  a                                           ; $52fa: $97
	dec  c                                           ; $52fb: $0d
	inc  b                                           ; $52fc: $04
	inc  a                                           ; $52fd: $3c
	ld   a, h                                        ; $52fe: $7c
	ld   [bc], a                                     ; $52ff: $02
	adc  a                                           ; $5300: $8f
	ld   a, h                                        ; $5301: $7c
	inc  bc                                          ; $5302: $03
	add  d                                           ; $5303: $82
	halt                                             ; $5304: $76
	adc  h                                           ; $5305: $8c
	ld   l, a                                        ; $5306: $6f
	ld   e, d                                        ; $5307: $5a
	sbc  l                                           ; $5308: $9d
	sbc  d                                           ; $5309: $9a
	ld   [hl], h                                     ; $530a: $74
	ld   a, b                                        ; $530b: $78
	rst  $38                                         ; $530c: $ff
	dec  c                                           ; $530d: $0d
	nop                                              ; $530e: $00
	ld   a, [bc]                                     ; $530f: $0a
	inc  e                                           ; $5310: $1c
	dec  b                                           ; $5311: $05
	inc  bc                                          ; $5312: $03
	inc  bc                                          ; $5313: $03
	dec  e                                           ; $5314: $1d
	ld   b, b                                        ; $5315: $40
	dec  d                                           ; $5316: $15
	inc  bc                                          ; $5317: $03
	dec  d                                           ; $5318: $15
	ld   bc, $2902                                   ; $5319: $01 $02 $29
	nop                                              ; $531c: $00
	ld   bc, $ffff                                   ; $531d: $01 $ff $ff
	ld   [hl], h                                     ; $5320: $74
	ld   a, b                                        ; $5321: $78
	and  c                                           ; $5322: $a1
	ld   [hl], l                                     ; $5323: $75
	sub  d                                           ; $5324: $92
	ld   a, e                                        ; $5325: $7b
	and  c                                           ; $5326: $a1
	ld   a, [$030d]                                  ; $5327: $fa $0d $03
	add  e                                           ; $532a: $83
	dec  b                                           ; $532b: $05
	dec  c                                           ; $532c: $0d
	ld   a, b                                        ; $532d: $78
	ld   h, c                                        ; $532e: $61
	halt                                             ; $532f: $76
	ld   [bc], a                                     ; $5330: $02
	sbc  l                                           ; $5331: $9d
	ld   d, d                                        ; $5332: $52
	ld   a, b                                        ; $5333: $78
	sub  d                                           ; $5334: $92
	ld   a, [$000d]                                  ; $5335: $fa $0d $00
	ld   a, [bc]                                     ; $5338: $0a
	rrca                                             ; $5339: $0f
	nop                                              ; $533a: $00
	ld   bc, $050d                                   ; $533b: $01 $0d $05
	rlca                                             ; $533e: $07
	ld   bc, $8d67                                   ; $533f: $01 $67 $8d
	adc  h                                           ; $5342: $8c
	ld   l, c                                        ; $5343: $69
	and  c                                           ; $5344: $a1
	rst  $38                                         ; $5345: $ff
	rst  $38                                         ; $5346: $ff
	dec  c                                           ; $5347: $0d
	nop                                              ; $5348: $00
	ld   a, [bc]                                     ; $5349: $0a
	inc  e                                           ; $534a: $1c
	dec  b                                           ; $534b: $05
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	ld   bc, $508c                                   ; $534e: $01 $8c $50
	sbc  [hl]                                        ; $5351: $9e
	xor  c                                           ; $5352: $a9
	xor  c                                           ; $5353: $a9
	sbc  l                                           ; $5354: $9d
	sbc  a                                           ; $5355: $9f
	dec  c                                           ; $5356: $0d
	ld   d, b                                        ; $5357: $50
	sbc  [hl]                                        ; $5358: $9e
	ld   l, e                                        ; $5359: $6b
	sbc  e                                           ; $535a: $9b
	ld   l, e                                        ; $535b: $6b
	sbc  e                                           ; $535c: $9b
	inc  b                                           ; $535d: $04
	ld   b, d                                        ; $535e: $42
	sbc  c                                           ; $535f: $99
	inc  bc                                          ; $5360: $03
	ld   l, a                                        ; $5361: $6f
	ld   [bc], a                                     ; $5362: $02
	xor  c                                           ; $5363: $a9
	sub  d                                           ; $5364: $92
	sbc  a                                           ; $5365: $9f
	dec  c                                           ; $5366: $0d
	ld   [$7d00], sp                                 ; $5367: $08 $00 $7d
	and  c                                           ; $536a: $a1
	sbc  [hl]                                        ; $536b: $9e
	ld   e, b                                        ; $536c: $58
	sub  d                                           ; $536d: $92
	ld   h, a                                        ; $536e: $67
	adc  l                                           ; $536f: $8d
	sbc  a                                           ; $5370: $9f
	dec  c                                           ; $5371: $0d
	nop                                              ; $5372: $00
	ld   a, [bc]                                     ; $5373: $0a
	nop                                              ; $5374: $00
	inc  e                                           ; $5375: $1c
	dec  b                                           ; $5376: $05
	ld   [bc], a                                     ; $5377: $02
	ld   [bc], a                                     ; $5378: $02
	ld   bc, $f9a1                                   ; $5379: $01 $a1 $f9
	db   $10                                         ; $537c: $10
	ld   [hl], a                                     ; $537d: $77
	ld   a, b                                        ; $537e: $78
	ld   d, d                                        ; $537f: $52
	ld   h, l                                        ; $5380: $65
	ld   l, l                                        ; $5381: $6d
	and  c                                           ; $5382: $a1
	sub  d                                           ; $5383: $92
	ld   sp, hl                                      ; $5384: $f9
	dec  c                                           ; $5385: $0d
	inc  b                                           ; $5386: $04
	adc  $52                                         ; $5387: $ce $52
	and  c                                           ; $5389: $a1
	sub  d                                           ; $538a: $92
	ld   [hl], c                                     ; $538b: $71
	ld   l, l                                        ; $538c: $6d
	sub  a                                           ; $538d: $97
	sbc  [hl]                                        ; $538e: $9e
	inc  b                                           ; $538f: $04
	sub  l                                           ; $5390: $95
	ld   [bc], a                                     ; $5391: $02
	ld   hl, $0479                                   ; $5392: $21 $79 $04
	jp   Jump_051_7471                               ; $5395: $c3 $71 $74


	dec  c                                           ; $5398: $0d
	inc  b                                           ; $5399: $04
	ld   b, d                                        ; $539a: $42
	ld   l, l                                        ; $539b: $6d
	inc  b                                           ; $539c: $04
	ld   a, b                                        ; $539d: $78
	ld   e, d                                        ; $539e: $5a
	xor  c                                           ; $539f: $a9
	xor  c                                           ; $53a0: $a9
	ld   [hl], l                                     ; $53a1: $75
	sbc  a                                           ; $53a2: $9f
	dec  c                                           ; $53a3: $0d
	nop                                              ; $53a4: $00
	ld   a, [bc]                                     ; $53a5: $0a
	inc  e                                           ; $53a6: $1c
	dec  b                                           ; $53a7: $05
	nop                                              ; $53a8: $00
	nop                                              ; $53a9: $00
	ld   bc, $7889                                   ; $53aa: $01 $89 $78
	sbc  [hl]                                        ; $53ad: $9e
	ld   e, b                                        ; $53ae: $58
	sub  d                                           ; $53af: $92
	ld   h, a                                        ; $53b0: $67
	adc  l                                           ; $53b1: $8d
	sbc  a                                           ; $53b2: $9f
	dec  c                                           ; $53b3: $0d
	adc  h                                           ; $53b4: $8c
	ld   l, l                                        ; $53b5: $6d
	ld   [bc], a                                     ; $53b6: $02
	and  l                                           ; $53b7: $a5
	inc  b                                           ; $53b8: $04
	add  hl, hl                                      ; $53b9: $29
	ld   a, b                                        ; $53ba: $78
	sbc  a                                           ; $53bb: $9f
	dec  c                                           ; $53bc: $0d
	nop                                              ; $53bd: $00
	ld   a, [bc]                                     ; $53be: $0a
	nop                                              ; $53bf: $00
	rrca                                             ; $53c0: $0f
	nop                                              ; $53c1: $00
	ld   bc, $5401                                   ; $53c2: $01 $01 $54
	sbc  l                                           ; $53c5: $9d
	ld   [hl], c                                     ; $53c6: $71
	sbc  a                                           ; $53c7: $9f
	xor  l                                           ; $53c8: $ad
	db   $eb                                         ; $53c9: $eb
	or   b                                           ; $53ca: $b0
	ret  nz                                          ; $53cb: $c0

	ld   a, h                                        ; $53cc: $7c
	inc  bc                                          ; $53cd: $03
	ld   e, b                                        ; $53ce: $58
	ld   l, [hl]                                     ; $53cf: $6e
	sbc  a                                           ; $53d0: $9f
	dec  c                                           ; $53d1: $0d
	ld   l, e                                        ; $53d2: $6b
	ld   d, h                                        ; $53d3: $54
	ld   h, [hl]                                     ; $53d4: $66
	ld   h, l                                        ; $53d5: $65
	ld   l, l                                        ; $53d6: $6d
	inc  b                                           ; $53d7: $04
	ld   a, b                                        ; $53d8: $78
	ld   e, d                                        ; $53d9: $5a
	dec  c                                           ; $53da: $0d
	ld   d, d                                        ; $53db: $52
	ld   d, d                                        ; $53dc: $52
	and  c                                           ; $53dd: $a1
	ld   h, [hl]                                     ; $53de: $66
	sub  c                                           ; $53df: $91
	ld   a, b                                        ; $53e0: $78
	ld   d, d                                        ; $53e1: $52
	ld   [hl], l                                     ; $53e2: $75
	ld   h, a                                        ; $53e3: $67
	ld   e, c                                        ; $53e4: $59
	ld   sp, hl                                      ; $53e5: $f9
	dec  c                                           ; $53e6: $0d
	nop                                              ; $53e7: $00
	ld   a, [bc]                                     ; $53e8: $0a
	inc  e                                           ; $53e9: $1c
	dec  b                                           ; $53ea: $05
	rlca                                             ; $53eb: $07
	rlca                                             ; $53ec: $07
	dec  e                                           ; $53ed: $1d
	ld   b, b                                        ; $53ee: $40
	dec  d                                           ; $53ef: $15
	inc  bc                                          ; $53f0: $03
	dec  d                                           ; $53f1: $15
	ld   bc, $2903                                   ; $53f2: $01 $03 $29
	nop                                              ; $53f5: $00
	ld   bc, $ebad                                   ; $53f6: $01 $ad $eb
	or   b                                           ; $53f9: $b0
	ret  nz                                          ; $53fa: $c0

	halt                                             ; $53fb: $76
	ld   a, l                                        ; $53fc: $7d
	ld   a, b                                        ; $53fd: $78
	and  c                                           ; $53fe: $a1
	sub  d                                           ; $53ff: $92
	ld   a, e                                        ; $5400: $7b
	and  c                                           ; $5401: $a1
	sbc  a                                           ; $5402: $9f
	dec  c                                           ; $5403: $0d
	inc  bc                                          ; $5404: $03
	add  e                                           ; $5405: $83
	dec  b                                           ; $5406: $05
	dec  c                                           ; $5407: $0d
	ld   a, b                                        ; $5408: $78
	ld   a, [$900d]                                  ; $5409: $fa $0d $90
	ld   d, h                                        ; $540c: $54
	xor  c                                           ; $540d: $a9
	xor  c                                           ; $540e: $a9
	sbc  l                                           ; $540f: $9d
	sbc  a                                           ; $5410: $9f
	and  a                                           ; $5411: $a7
	jp   nz, Jump_051_4204                           ; $5412: $c2 $04 $42

	sbc  c                                           ; $5415: $99
	sbc  a                                           ; $5416: $9f
	dec  c                                           ; $5417: $0d
	nop                                              ; $5418: $00
	ld   a, [bc]                                     ; $5419: $0a
	ld   bc, $9258                                   ; $541a: $01 $58 $92
	ld   h, a                                        ; $541d: $67
	adc  l                                           ; $541e: $8d
	ld   a, [$080d]                                  ; $541f: $fa $0d $08
	nop                                              ; $5422: $00
	ld   a, l                                        ; $5423: $7d
	and  c                                           ; $5424: $a1
	ld   a, [$0dfa]                                  ; $5425: $fa $fa $0d
	nop                                              ; $5428: $00
	ld   a, [bc]                                     ; $5429: $0a
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	inc  b                                           ; $542c: $04
	add  b                                           ; $542d: $80
	add  hl, de                                      ; $542e: $19
	ld   bc, $20ff                                   ; $542f: $01 $ff $20
	inc  bc                                          ; $5432: $03
	ld   l, d                                        ; $5433: $6a
	ld   [bc], a                                     ; $5434: $02
	nop                                              ; $5435: $00
	jr   nz, jr_051_5454                             ; $5436: $20 $1c

	nop                                              ; $5438: $00
	ld   c, $78                                      ; $5439: $0e $78
	rrca                                             ; $543b: $0f
	nop                                              ; $543c: $00
	ld   bc, $020d                                   ; $543d: $01 $0d $02
	jr   nz, jr_051_5444                             ; $5440: $20 $02

	dec  b                                           ; $5442: $05
	add  b                                           ; $5443: $80

jr_051_5444:
	ld   a, [de]                                     ; $5444: $1a
	ld   bc, $0001                                   ; $5445: $01 $01 $00
	ld   bc, $8d67                                   ; $5448: $01 $67 $8d
	sbc  d                                           ; $544b: $9a
	ld   h, e                                        ; $544c: $63
	and  c                                           ; $544d: $a1
	sbc  a                                           ; $544e: $9f
	dec  c                                           ; $544f: $0d
	inc  b                                           ; $5450: $04
	ldh  [$03], a                                    ; $5451: $e0 $03
	dec  hl                                          ; $5453: $2b

jr_051_5454:
	inc  bc                                          ; $5454: $03
	pop  hl                                          ; $5455: $e1
	sbc  b                                           ; $5456: $98
	ld   e, e                                        ; $5457: $5b
	adc  h                                           ; $5458: $8c
	ld   h, l                                        ; $5459: $65
	ld   l, l                                        ; $545a: $6d
	sub  [hl]                                        ; $545b: $96
	rst  $38                                         ; $545c: $ff
	rst  $38                                         ; $545d: $ff
	dec  c                                           ; $545e: $0d
	nop                                              ; $545f: $00
	ld   a, [bc]                                     ; $5460: $0a
	ld   bc, $0301                                   ; $5461: $01 $01 $03
	sbc  l                                           ; $5464: $9d
	ld   e, b                                        ; $5465: $58
	ld   a, [$100d]                                  ; $5466: $fa $0d $10
	ld   h, a                                        ; $5469: $67
	adc  l                                           ; $546a: $8d
	sbc  d                                           ; $546b: $9a
	ld   h, e                                        ; $546c: $63
	and  c                                           ; $546d: $a1
	ld   a, h                                        ; $546e: $7c
	inc  bc                                          ; $546f: $03
	ld   e, c                                        ; $5470: $59
	inc  b                                           ; $5471: $04
	rlca                                             ; $5472: $07
	ld   [bc], a                                     ; $5473: $02
	di                                               ; $5474: $f3
	ld   l, [hl]                                     ; $5475: $6e
	rst  $38                                         ; $5476: $ff
	rst  $38                                         ; $5477: $ff
	ld   bc, $0d04                                   ; $5478: $01 $04 $0d
	nop                                              ; $547b: $00

Jump_051_547c:
	ld   a, [bc]                                     ; $547c: $0a
	add  hl, de                                      ; $547d: $19
	dec  b                                           ; $547e: $05
	inc  bc                                          ; $547f: $03
	ld   e, b                                        ; $5480: $58
	inc  b                                           ; $5481: $04
	ld   c, l                                        ; $5482: $4d
	ld   [bc], a                                     ; $5483: $02
	ld   a, e                                        ; $5484: $7b
	ld   d, d                                        ; $5485: $52
	ld   [hl], l                                     ; $5486: $75
	ld   h, a                                        ; $5487: $67
	nop                                              ; $5488: $00
	nop                                              ; $5489: $00
	ld   [bc], a                                     ; $548a: $02
	cp   [hl]                                        ; $548b: $be
	ld   l, e                                        ; $548c: $6b
	ld   d, h                                        ; $548d: $54
	ld   [hl], l                                     ; $548e: $75
	ld   h, a                                        ; $548f: $67

Jump_051_5490:
	ld   a, e                                        ; $5490: $7b
	nop                                              ; $5491: $00
	ld   bc, $0e04                                   ; $5492: $01 $04 $0e
	ld   l, l                                        ; $5495: $6d
	and  c                                           ; $5496: $a1
	ld   [hl], l                                     ; $5497: $75
	ld   h, a                                        ; $5498: $67
	ld   a, e                                        ; $5499: $7b
	nop                                              ; $549a: $00
	ld   [bc], a                                     ; $549b: $02
	rlca                                             ; $549c: $07
	add  c                                           ; $549d: $81
	nop                                              ; $549e: $00
	ld   [bc], a                                     ; $549f: $02
	inc  bc                                          ; $54a0: $03
	ld   bc, $2000                                   ; $54a1: $01 $00 $20
	nop                                              ; $54a4: $00
	rlca                                             ; $54a5: $07
	call nc, $0200                                   ; $54a6: $d4 $00 $02
	inc  bc                                          ; $54a9: $03
	ld   bc, $2001                                   ; $54aa: $01 $01 $20
	nop                                              ; $54ad: $00
	rlca                                             ; $54ae: $07
	inc  [hl]                                        ; $54af: $34
	ld   bc, $0302                                   ; $54b0: $01 $02 $03
	ld   bc, $2002                                   ; $54b3: $01 $02 $20
	nop                                              ; $54b6: $00
	ld   b, $83                                      ; $54b7: $06 $83
	ld   bc, $000f                                   ; $54b9: $01 $0f $00
	ld   bc, $5801                                   ; $54bc: $01 $01 $58
	inc  b                                           ; $54bf: $04
	ld   c, l                                        ; $54c0: $4d
	ld   [bc], a                                     ; $54c1: $02
	ld   a, e                                        ; $54c2: $7b
	ld   d, d                                        ; $54c3: $52
	ld   [hl], l                                     ; $54c4: $75
	ld   h, a                                        ; $54c5: $67
	sub  [hl]                                        ; $54c6: $96
	sbc  a                                           ; $54c7: $9f
	dec  c                                           ; $54c8: $0d
	cp   d                                           ; $54c9: $ba
	rst  ToBoot                                         ; $54ca: $c7
	xor  [hl]                                        ; $54cb: $ae
	ld   l, [hl]                                     ; $54cc: $6e
	ld   a, b                                        ; $54cd: $78
	db   $fc                                         ; $54ce: $fc
	sbc  a                                           ; $54cf: $9f
	dec  c                                           ; $54d0: $0d
	nop                                              ; $54d1: $00
	ld   a, [bc]                                     ; $54d2: $0a
	inc  e                                           ; $54d3: $1c
	ld   [bc], a                                     ; $54d4: $02
	ld   hl, $1d01                                   ; $54d5: $21 $01 $1d
	ld   b, b                                        ; $54d8: $40
	ld   [de], a                                     ; $54d9: $12
	inc  bc                                          ; $54da: $03
	ld   [de], a                                     ; $54db: $12
	ld   bc, $2802                                   ; $54dc: $01 $02 $28
	nop                                              ; $54df: $00
	ld   bc, $1804                                   ; $54e0: $01 $04 $18
	inc  bc                                          ; $54e3: $03
	sbc  c                                           ; $54e4: $99
	ld   [hl], l                                     ; $54e5: $75
	ld   h, a                                        ; $54e6: $67
	sbc  l                                           ; $54e7: $9d
	sbc  a                                           ; $54e8: $9f
	dec  c                                           ; $54e9: $0d
	ld   h, c                                        ; $54ea: $61
	ld   a, h                                        ; $54eb: $7c
	sbc  l                                           ; $54ec: $9d
	ld   l, l                                        ; $54ed: $6d
	ld   e, l                                        ; $54ee: $5d
	ld   h, l                                        ; $54ef: $65
	ld   a, c                                        ; $54f0: $79
	inc  b                                           ; $54f1: $04
	ld   c, l                                        ; $54f2: $4d
	ld   [bc], a                                     ; $54f3: $02
	ld   a, e                                        ; $54f4: $7b
	sbc  l                                           ; $54f5: $9d
	ld   a, b                                        ; $54f6: $78

jr_051_54f7:
	ld   d, d                                        ; $54f7: $52
	sub  b                                           ; $54f8: $90
	ld   a, h                                        ; $54f9: $7c
	dec  c                                           ; $54fa: $0d
	ld   a, b                                        ; $54fb: $78
	and  c                                           ; $54fc: $a1
	ld   [hl], h                                     ; $54fd: $74
	sbc  [hl]                                        ; $54fe: $9e
	ld   a, b                                        ; $54ff: $78
	ld   d, d                                        ; $5500: $52
	ld   a, h                                        ; $5501: $7c
	ld   [hl], l                                     ; $5502: $75
	ld   h, a                                        ; $5503: $67
	ld   e, c                                        ; $5504: $59
	sub  a                                           ; $5505: $97
	sbc  a                                           ; $5506: $9f
	dec  c                                           ; $5507: $0d
	nop                                              ; $5508: $00
	ld   a, [bc]                                     ; $5509: $0a
	ld   b, $83                                      ; $550a: $06 $83
	ld   bc, $000f                                   ; $550c: $01 $0f $00
	ld   bc, $0201                                   ; $550f: $01 $01 $02
	cp   [hl]                                        ; $5512: $be
	ld   l, e                                        ; $5513: $6b
	ld   d, h                                        ; $5514: $54
	ld   a, b                                        ; $5515: $78
	inc  bc                                          ; $5516: $03
	ld   e, c                                        ; $5517: $59
	inc  b                                           ; $5518: $04
	rlca                                             ; $5519: $07
	ld   [hl], l                                     ; $551a: $75
	ld   h, a                                        ; $551b: $67
	ld   a, e                                        ; $551c: $7b
	db   $fc                                         ; $551d: $fc
	sbc  a                                           ; $551e: $9f
	dec  c                                           ; $551f: $0d
	ld   h, e                                        ; $5520: $63
	ld   h, a                                        ; $5521: $67
	ld   e, d                                        ; $5522: $5a
	sbc  [hl]                                        ; $5523: $9e
	ld   h, a                                        ; $5524: $67
	adc  l                                           ; $5525: $8d
	sbc  d                                           ; $5526: $9a
	ld   h, e                                        ; $5527: $63
	and  c                                           ; $5528: $a1
	sbc  a                                           ; $5529: $9f
	dec  c                                           ; $552a: $0d
	ld   d, d                                        ; $552b: $52
	ld   d, d                                        ; $552c: $52
	sub  b                                           ; $552d: $90
	ld   a, h                                        ; $552e: $7c
	inc  b                                           ; $552f: $04
	rlca                                             ; $5530: $07
	ld   [hl], h                                     ; $5531: $74
	adc  h                                           ; $5532: $8c
	ld   h, a                                        ; $5533: $67
	ld   a, e                                        ; $5534: $7b
	sbc  a                                           ; $5535: $9f
	dec  c                                           ; $5536: $0d
	nop                                              ; $5537: $00
	ld   a, [bc]                                     ; $5538: $0a
	inc  e                                           ; $5539: $1c
	ld   [bc], a                                     ; $553a: $02
	ld   hl, $1d01                                   ; $553b: $21 $01 $1d
	ld   b, b                                        ; $553e: $40
	ld   [de], a                                     ; $553f: $12
	inc  bc                                          ; $5540: $03
	ld   [de], a                                     ; $5541: $12
	ld   bc, $2801                                   ; $5542: $01 $01 $28
	nop                                              ; $5545: $00
	ld   bc, $5490                                   ; $5546: $01 $90 $54
	inc  bc                                          ; $5549: $03
	call nz, $de04                                   ; $554a: $c4 $04 $de
	ld   a, l                                        ; $554d: $7d
	ld   h, a                                        ; $554e: $67
	ld   e, [hl]                                     ; $554f: $5e
	ld   e, b                                        ; $5550: $58
	ld   [bc], a                                     ; $5551: $02
	dec  sp                                          ; $5552: $3b
	ld   a, h                                        ; $5553: $7c
	dec  b                                           ; $5554: $05
	jr   nz, jr_051_54f7                             ; $5555: $20 $a0

	sbc  a                                           ; $5557: $9f
	dec  c                                           ; $5558: $0d
	ld   d, d                                        ; $5559: $52
	sub  d                                           ; $555a: $92
	ld   [hl], l                                     ; $555b: $75
	ld   h, a                                        ; $555c: $67
	sbc  l                                           ; $555d: $9d
	sbc  a                                           ; $555e: $9f
	dec  c                                           ; $555f: $0d
	ld   e, b                                        ; $5560: $58
	adc  c                                           ; $5561: $89
	adc  c                                           ; $5562: $89
	adc  c                                           ; $5563: $89
	adc  c                                           ; $5564: $89
	rst  $38                                         ; $5565: $ff
	rst  $38                                         ; $5566: $ff
	dec  c                                           ; $5567: $0d
	nop                                              ; $5568: $00
	ld   a, [bc]                                     ; $5569: $0a
	ld   b, $83                                      ; $556a: $06 $83
	ld   bc, $000f                                   ; $556c: $01 $0f $00
	ld   bc, $5401                                   ; $556f: $01 $01 $54
	sbc  l                                           ; $5572: $9d
	db   $fc                                         ; $5573: $fc
	dec  c                                           ; $5574: $0d
	inc  b                                           ; $5575: $04
	ld   c, $6d                                      ; $5576: $0e $6d
	and  c                                           ; $5578: $a1
	ld   a, b                                        ; $5579: $78
	inc  bc                                          ; $557a: $03
	ld   e, c                                        ; $557b: $59
	inc  b                                           ; $557c: $04
	rlca                                             ; $557d: $07
	ld   [hl], l                                     ; $557e: $75
	ld   h, a                                        ; $557f: $67
	ld   a, e                                        ; $5580: $7b
	db   $fc                                         ; $5581: $fc
	sbc  a                                           ; $5582: $9f
	dec  c                                           ; $5583: $0d
	nop                                              ; $5584: $00
	ld   a, [bc]                                     ; $5585: $0a
	inc  e                                           ; $5586: $1c
	ld   [bc], a                                     ; $5587: $02
	ld   hl, $1d01                                   ; $5588: $21 $01 $1d
	ld   b, b                                        ; $558b: $40
	ld   [de], a                                     ; $558c: $12
	inc  bc                                          ; $558d: $03
	ld   [de], a                                     ; $558e: $12
	ld   bc, $2803                                   ; $558f: $01 $03 $28
	nop                                              ; $5592: $00
	ld   bc, $8958                                   ; $5593: $01 $58 $89
	adc  c                                           ; $5596: $89
	adc  c                                           ; $5597: $89
	adc  c                                           ; $5598: $89
	rst  $38                                         ; $5599: $ff
	rst  $38                                         ; $559a: $ff
	dec  c                                           ; $559b: $0d
	cp   d                                           ; $559c: $ba
	ret  nz                                          ; $559d: $c0

	and  e                                           ; $559e: $a3
	ld   a, l                                        ; $559f: $7d
	inc  bc                                          ; $55a0: $03
	call nz, $de04                                   ; $55a1: $c4 $04 $de
	halt                                             ; $55a4: $76
	inc  b                                           ; $55a5: $04
	dec  e                                           ; $55a6: $1d
	ld   h, [hl]                                     ; $55a7: $66
	sub  b                                           ; $55a8: $90
	ld   a, h                                        ; $55a9: $7c
	ld   [hl], l                                     ; $55aa: $75
	ld   a, l                                        ; $55ab: $7d
	dec  c                                           ; $55ac: $0d
	ld   d, d                                        ; $55ad: $52
	ld   e, a                                        ; $55ae: $5f
	adc  h                                           ; $55af: $8c
	ld   l, c                                        ; $55b0: $69
	and  c                                           ; $55b1: $a1
	sub  b                                           ; $55b2: $90
	ld   a, h                                        ; $55b3: $7c
	ld   a, e                                        ; $55b4: $7b
	sbc  a                                           ; $55b5: $9f
	dec  c                                           ; $55b6: $0d
	nop                                              ; $55b7: $00
	ld   a, [bc]                                     ; $55b8: $0a
	ld   b, $83                                      ; $55b9: $06 $83
	ld   bc, $021c                                   ; $55bb: $01 $1c $02
	jr   nz, jr_051_55c0                             ; $55be: $20 $00

jr_051_55c0:
	ld   bc, $7d75                                   ; $55c0: $01 $75 $7d
	sbc  [hl]                                        ; $55c3: $9e
	inc  bc                                          ; $55c4: $03
	ld   e, c                                        ; $55c5: $59
	ld   [bc], a                                     ; $55c6: $02
	ld   [hl-], a                                    ; $55c7: $32
	ld   a, h                                        ; $55c8: $7c
	inc  bc                                          ; $55c9: $03
	ld   l, l                                        ; $55ca: $6d
	dec  b                                           ; $55cb: $05
	add  hl, de                                      ; $55cc: $19
	dec  c                                           ; $55cd: $0d
	dec  b                                           ; $55ce: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55cf: $cf
	adc  a                                           ; $55d0: $8f
	adc  h                                           ; $55d1: $8c
	ld   h, l                                        ; $55d2: $65
	sub  l                                           ; $55d3: $95
	ld   d, h                                        ; $55d4: $54
	ld   e, c                                        ; $55d5: $59
	ld   sp, hl                                      ; $55d6: $f9
	dec  c                                           ; $55d7: $0d
	nop                                              ; $55d8: $00
	ld   a, [bc]                                     ; $55d9: $0a
	ld   bc, $7d75                                   ; $55da: $01 $75 $7d
	sbc  [hl]                                        ; $55dd: $9e
	ld   [bc], a                                     ; $55de: $02
	and  l                                           ; $55df: $a5
	inc  b                                           ; $55e0: $04
	xor  d                                           ; $55e1: $aa
	ld   a, l                                        ; $55e2: $7d
	or   b                                           ; $55e3: $b0
	rst  $28                                         ; $55e4: $ef
	ei                                               ; $55e5: $fb
	db   $ed                                         ; $55e6: $ed
	and  b                                           ; $55e7: $a0
	dec  c                                           ; $55e8: $0d
	ld   [bc], a                                     ; $55e9: $02
	ret  nc                                          ; $55ea: $d0

	ld   d, [hl]                                     ; $55eb: $56
	adc  h                                           ; $55ec: $8c
	ld   h, a                                        ; $55ed: $67
	sbc  l                                           ; $55ee: $9d
	sbc  a                                           ; $55ef: $9f
	dec  c                                           ; $55f0: $0d
	nop                                              ; $55f1: $00
	ld   a, [bc]                                     ; $55f2: $0a
	ld   bc, $020a                                   ; $55f3: $01 $0a $02
	ld   [bc], a                                     ; $55f6: $02
	inc  e                                           ; $55f7: $1c
	inc  bc                                          ; $55f8: $03
	ld   l, e                                        ; $55f9: $6b
	ld   [hl], l                                     ; $55fa: $75
	inc  bc                                          ; $55fb: $03
	ld   e, c                                        ; $55fc: $59
	and  b                                           ; $55fd: $a0
	ld   e, c                                        ; $55fe: $59
	ld   d, d                                        ; $55ff: $52
	ld   [hl], h                                     ; $5600: $74
	sbc  [hl]                                        ; $5601: $9e
	inc  bc                                          ; $5602: $03
	ld   h, b                                        ; $5603: $60
	inc  bc                                          ; $5604: $03
	ld   l, e                                        ; $5605: $6b
	ld   [hl], l                                     ; $5606: $75
	inc  bc                                          ; $5607: $03
	ld   e, c                                        ; $5608: $59
	and  b                                           ; $5609: $a0
	dec  c                                           ; $560a: $0d
	ld   e, c                                        ; $560b: $59
	ld   d, d                                        ; $560c: $52
	ld   [hl], h                                     ; $560d: $74
	sbc  [hl]                                        ; $560e: $9e
	ld   [bc], a                                     ; $560f: $02
	inc  e                                           ; $5610: $1c
	inc  bc                                          ; $5611: $03
	ld   l, e                                        ; $5612: $6b
	ld   [hl], l                                     ; $5613: $75
	inc  bc                                          ; $5614: $03
	ld   e, c                                        ; $5615: $59
	and  b                                           ; $5616: $a0
	ld   e, c                                        ; $5617: $59
	ld   e, e                                        ; $5618: $5b
	ld   a, b                                        ; $5619: $78
	ld   e, d                                        ; $561a: $5a
	sub  a                                           ; $561b: $97
	dec  c                                           ; $561c: $0d
	inc  bc                                          ; $561d: $03
	ld   h, $72                                      ; $561e: $26 $72
	ld   e, h                                        ; $5620: $5c
	sbc  a                                           ; $5621: $9f
	ld   l, e                                        ; $5622: $6b
	ld   a, h                                        ; $5623: $7c
	ld   [bc], a                                     ; $5624: $02
	xor  c                                           ; $5625: $a9
	sbc  [hl]                                        ; $5626: $9e
	inc  bc                                          ; $5627: $03
	ld   a, l                                        ; $5628: $7d
	ld   a, l                                        ; $5629: $7d
	pop  de                                          ; $562a: $d1
	ret  nz                                          ; $562b: $c0

	inc  bc                                          ; $562c: $03
	ld   a, l                                        ; $562d: $7d
	sbc  a                                           ; $562e: $9f
	ld   a, [bc]                                     ; $562f: $0a
	inc  bc                                          ; $5630: $03
	dec  c                                           ; $5631: $0d
	nop                                              ; $5632: $00
	ld   a, [bc]                                     ; $5633: $0a
	ld   bc, $9a61                                   ; $5634: $01 $61 $9a
	ld   a, h                                        ; $5637: $7c
	ld   e, l                                        ; $5638: $5d
	sbc  b                                           ; $5639: $98
	inc  b                                           ; $563a: $04
	sub  a                                           ; $563b: $97
	ld   h, l                                        ; $563c: $65
	ld   [hl], l                                     ; $563d: $75
	ld   h, a                                        ; $563e: $67
	ld   a, h                                        ; $563f: $7c
	sub  [hl]                                        ; $5640: $96
	sbc  a                                           ; $5641: $9f
	dec  c                                           ; $5642: $0d
	ld   [bc], a                                     ; $5643: $02
	ld   [hl-], a                                    ; $5644: $32
	ld   e, [hl]                                     ; $5645: $5e
	ld   a, h                                        ; $5646: $7c
	ld   [hl], l                                     ; $5647: $75
	ld   h, a                                        ; $5648: $67
	ld   e, c                                        ; $5649: $59
	sub  a                                           ; $564a: $97
	ld   [bc], a                                     ; $564b: $02
	ei                                               ; $564c: $fb
	ld   e, a                                        ; $564d: $5f
	ld   [hl], h                                     ; $564e: $74
	ld   d, d                                        ; $564f: $52
	ld   e, e                                        ; $5650: $5b
	dec  c                                           ; $5651: $0d
	adc  h                                           ; $5652: $8c
	ld   h, a                                        ; $5653: $67
	sbc  l                                           ; $5654: $9d
	sub  [hl]                                        ; $5655: $96
	sbc  a                                           ; $5656: $9f
	ld   [hl], l                                     ; $5657: $75
	ld   a, l                                        ; $5658: $7d
	sbc  [hl]                                        ; $5659: $9e
	dec  b                                           ; $565a: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $565b: $cf
	adc  a                                           ; $565c: $8f
	ld   a, [$000d]                                  ; $565d: $fa $0d $00
	ld   a, [bc]                                     ; $5660: $0a
	add  hl, de                                      ; $5661: $19
	inc  bc                                          ; $5662: $03
	inc  bc                                          ; $5663: $03
	ld   [bc], a                                     ; $5664: $02
	inc  e                                           ; $5665: $1c
	inc  bc                                          ; $5666: $03
	ld   l, e                                        ; $5667: $6b
	ld   [hl], l                                     ; $5668: $75
	inc  bc                                          ; $5669: $03
	ld   e, c                                        ; $566a: $59
	and  b                                           ; $566b: $a0
	ld   e, c                                        ; $566c: $59
	ld   e, l                                        ; $566d: $5d
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	ld   [bc], a                                     ; $5670: $02
	inc  e                                           ; $5671: $1c
	inc  bc                                          ; $5672: $03
	ld   l, e                                        ; $5673: $6b
	ld   [hl], l                                     ; $5674: $75
	inc  bc                                          ; $5675: $03
	ld   e, c                                        ; $5676: $59
	and  b                                           ; $5677: $a0
	ld   [hl], d                                     ; $5678: $72
	ld   e, c                                        ; $5679: $59
	adc  [hl]                                        ; $567a: $8e
	nop                                              ; $567b: $00
	ld   bc, $1c02                                   ; $567c: $01 $02 $1c
	ld   h, c                                        ; $567f: $61
	add  h                                           ; $5680: $84
	ld   h, l                                        ; $5681: $65
	ld   [hl], l                                     ; $5682: $75
	dec  b                                           ; $5683: $05
	pop  af                                          ; $5684: $f1
	ld   [hl], d                                     ; $5685: $72
	add  a                                           ; $5686: $87
	ld   h, l                                        ; $5687: $65
	nop                                              ; $5688: $00
	ld   [bc], a                                     ; $5689: $02
	rlca                                             ; $568a: $07
	jp   hl                                          ; $568b: $e9


	ld   [bc], a                                     ; $568c: $02
	ld   [bc], a                                     ; $568d: $02
	inc  bc                                          ; $568e: $03
	ld   bc, $2000                                   ; $568f: $01 $00 $20
	nop                                              ; $5692: $00
	rlca                                             ; $5693: $07
	ldh  a, [c]                                      ; $5694: $f2
	ld   [bc], a                                     ; $5695: $02
	ld   [bc], a                                     ; $5696: $02
	inc  bc                                          ; $5697: $03
	ld   bc, $2001                                   ; $5698: $01 $01 $20
	nop                                              ; $569b: $00
	rlca                                             ; $569c: $07
	ldh  a, [c]                                      ; $569d: $f2
	ld   [bc], a                                     ; $569e: $02
	ld   [bc], a                                     ; $569f: $02
	inc  bc                                          ; $56a0: $03
	ld   bc, $2002                                   ; $56a1: $01 $02 $20
	nop                                              ; $56a4: $00
	ld   b, $6f                                      ; $56a5: $06 $6f
	ld   [bc], a                                     ; $56a7: $02
	rrca                                             ; $56a8: $0f
	nop                                              ; $56a9: $00
	ld   bc, $ff01                                   ; $56aa: $01 $01 $ff
	rst  $38                                         ; $56ad: $ff
	rst  $38                                         ; $56ae: $ff
	rst  $38                                         ; $56af: $ff
	rst  $38                                         ; $56b0: $ff
	rst  $38                                         ; $56b1: $ff
	dec  c                                           ; $56b2: $0d
	nop                                              ; $56b3: $00
	ld   a, [bc]                                     ; $56b4: $0a
	inc  e                                           ; $56b5: $1c
	ld   [bc], a                                     ; $56b6: $02
	ld   [hl+], a                                    ; $56b7: $22
	ld   [bc], a                                     ; $56b8: $02
	ld   bc, $4904                                   ; $56b9: $01 $04 $49
	and  b                                           ; $56bc: $a0
	db   $dd                                         ; $56bd: $dd
	ei                                               ; $56be: $fb
	call nz, Call_051_6576                           ; $56bf: $c4 $76 $65
	ld   [hl], h                                     ; $56c2: $74
	sub  a                                           ; $56c3: $97
	ld   [hl], c                                     ; $56c4: $71
	ld   h, l                                        ; $56c5: $65
	sub  c                                           ; $56c6: $91
	ld   d, d                                        ; $56c7: $52
	dec  c                                           ; $56c8: $0d
	adc  h                                           ; $56c9: $8c
	ld   h, a                                        ; $56ca: $67
	ld   a, h                                        ; $56cb: $7c
	ld   sp, hl                                      ; $56cc: $f9
	dec  c                                           ; $56cd: $0d
	nop                                              ; $56ce: $00
	ld   a, [bc]                                     ; $56cf: $0a
	ld   bc, $7169                                   ; $56d0: $01 $69 $71
	ld   e, c                                        ; $56d3: $59
	ld   e, l                                        ; $56d4: $5d
	ld   h, c                                        ; $56d5: $61
	ld   a, h                                        ; $56d6: $7c
	sbc  l                                           ; $56d7: $9d
	ld   l, l                                        ; $56d8: $6d
	ld   e, l                                        ; $56d9: $5d
	ld   h, l                                        ; $56da: $65
	ld   e, d                                        ; $56db: $5a
	dec  c                                           ; $56dc: $0d
	ld   [bc], a                                     ; $56dd: $02
	ret  nc                                          ; $56de: $d0

	ld   d, [hl]                                     ; $56df: $56
	ld   [hl], h                                     ; $56e0: $74
	ld   d, d                                        ; $56e1: $52
	sbc  c                                           ; $56e2: $99
	halt                                             ; $56e3: $76
	ld   d, d                                        ; $56e4: $52
	ld   d, h                                        ; $56e5: $54
	ld   a, h                                        ; $56e6: $7c
	ld   a, c                                        ; $56e7: $79
	rst  $38                                         ; $56e8: $ff
	rst  $38                                         ; $56e9: $ff
	dec  c                                           ; $56ea: $0d
	nop                                              ; $56eb: $00
	ld   a, [bc]                                     ; $56ec: $0a
	ld   bc, $9992                                   ; $56ed: $01 $92 $99
	ld   [bc], a                                     ; $56f0: $02
	and  c                                           ; $56f1: $a1
	ld   e, d                                        ; $56f2: $5a
	ld   a, b                                        ; $56f3: $78
	ld   d, d                                        ; $56f4: $52
	sub  [hl]                                        ; $56f5: $96
	ld   d, h                                        ; $56f6: $54
	ld   [hl], l                                     ; $56f7: $75
	ld   h, a                                        ; $56f8: $67
	ld   a, h                                        ; $56f9: $7c
	ld   [hl], l                                     ; $56fa: $75
	dec  c                                           ; $56fb: $0d
	nop                                              ; $56fc: $00
	dec  b                                           ; $56fd: $05
	ld   b, b                                        ; $56fe: $40
	ld   c, c                                        ; $56ff: $49
	ld   [bc], a                                     ; $5700: $02
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	ld   bc, $e3e6                                   ; $5703: $01 $e6 $e3
	ld   a, c                                        ; $5706: $79
	ld   h, l                                        ; $5707: $65
	adc  h                                           ; $5708: $8c
	ld   h, a                                        ; $5709: $67
	sbc  a                                           ; $570a: $9f
	dec  c                                           ; $570b: $0d
	nop                                              ; $570c: $00
	dec  b                                           ; $570d: $05
	ld   b, b                                        ; $570e: $40
	ld   c, a                                        ; $570f: $4f
	ld   bc, $0001                                   ; $5710: $01 $01 $00
	ld   bc, $7d75                                   ; $5713: $01 $75 $7d
	rst  $38                                         ; $5716: $ff
	rst  $38                                         ; $5717: $ff
	dec  c                                           ; $5718: $0d
	nop                                              ; $5719: $00
	ld   a, [bc]                                     ; $571a: $0a
	dec  c                                           ; $571b: $0d
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	rrca                                             ; $571e: $0f
	nop                                              ; $571f: $00
	ld   bc, $0500                                   ; $5720: $01 $00 $05
	ld   b, b                                        ; $5723: $40
	rst  $38                                         ; $5724: $ff
	inc  bc                                          ; $5725: $03
	rst  $38                                         ; $5726: $ff
	ld   bc, $2801                                   ; $5727: $01 $01 $28
	nop                                              ; $572a: $00
	add  hl, de                                      ; $572b: $19
	inc  bc                                          ; $572c: $03
	inc  bc                                          ; $572d: $03
	inc  bc                                          ; $572e: $03
	ld   h, b                                        ; $572f: $60
	inc  bc                                          ; $5730: $03
	ld   l, e                                        ; $5731: $6b
	ld   [hl], l                                     ; $5732: $75
	inc  bc                                          ; $5733: $03
	ld   e, c                                        ; $5734: $59
	and  b                                           ; $5735: $a0
	ld   e, c                                        ; $5736: $59
	ld   e, l                                        ; $5737: $5d
	nop                                              ; $5738: $00
	nop                                              ; $5739: $00
	inc  bc                                          ; $573a: $03
	ld   h, b                                        ; $573b: $60
	inc  bc                                          ; $573c: $03
	ld   l, e                                        ; $573d: $6b
	ld   [hl], l                                     ; $573e: $75
	inc  bc                                          ; $573f: $03
	ld   e, c                                        ; $5740: $59
	and  b                                           ; $5741: $a0
	ld   [hl], d                                     ; $5742: $72
	ld   e, c                                        ; $5743: $59
	adc  [hl]                                        ; $5744: $8e
	nop                                              ; $5745: $00
	ld   bc, $6003                                   ; $5746: $01 $03 $60
	ld   h, c                                        ; $5749: $61
	add  h                                           ; $574a: $84
	ld   h, l                                        ; $574b: $65
	ld   [hl], l                                     ; $574c: $75
	dec  b                                           ; $574d: $05
	pop  af                                          ; $574e: $f1
	ld   [hl], d                                     ; $574f: $72
	add  a                                           ; $5750: $87
	ld   h, l                                        ; $5751: $65
	nop                                              ; $5752: $00
	ld   [bc], a                                     ; $5753: $02
	rlca                                             ; $5754: $07
	add  hl, sp                                      ; $5755: $39
	inc  bc                                          ; $5756: $03
	ld   [bc], a                                     ; $5757: $02
	inc  bc                                          ; $5758: $03
	ld   bc, $2000                                   ; $5759: $01 $00 $20
	nop                                              ; $575c: $00
	rlca                                             ; $575d: $07
	ld   b, d                                        ; $575e: $42
	inc  bc                                          ; $575f: $03
	ld   [bc], a                                     ; $5760: $02
	inc  bc                                          ; $5761: $03
	ld   bc, $2001                                   ; $5762: $01 $01 $20
	nop                                              ; $5765: $00
	rlca                                             ; $5766: $07
	ld   b, d                                        ; $5767: $42
	inc  bc                                          ; $5768: $03
	ld   [bc], a                                     ; $5769: $02
	inc  bc                                          ; $576a: $03
	ld   bc, $2002                                   ; $576b: $01 $02 $20
	nop                                              ; $576e: $00
	ld   b, $6f                                      ; $576f: $06 $6f
	ld   [bc], a                                     ; $5771: $02
	dec  b                                           ; $5772: $05
	ld   b, b                                        ; $5773: $40
	rst  $38                                         ; $5774: $ff
	inc  bc                                          ; $5775: $03
	rst  $38                                         ; $5776: $ff
	ld   bc, $2801                                   ; $5777: $01 $01 $28
	nop                                              ; $577a: $00
	add  hl, de                                      ; $577b: $19
	inc  bc                                          ; $577c: $03
	inc  bc                                          ; $577d: $03
	ld   [bc], a                                     ; $577e: $02
	inc  e                                           ; $577f: $1c
	inc  bc                                          ; $5780: $03
	ld   l, e                                        ; $5781: $6b
	ld   [hl], l                                     ; $5782: $75
	inc  bc                                          ; $5783: $03
	ld   e, c                                        ; $5784: $59
	and  b                                           ; $5785: $a0
	ld   e, c                                        ; $5786: $59
	ld   e, e                                        ; $5787: $5b
	ld   a, b                                        ; $5788: $78
	ld   e, d                                        ; $5789: $5a
	sub  a                                           ; $578a: $97
	inc  bc                                          ; $578b: $03
	ld   h, $72                                      ; $578c: $26 $72
	ld   e, h                                        ; $578e: $5c
	nop                                              ; $578f: $00
	nop                                              ; $5790: $00
	ld   [bc], a                                     ; $5791: $02
	inc  e                                           ; $5792: $1c
	inc  bc                                          ; $5793: $03
	ld   l, e                                        ; $5794: $6b
	ld   [hl], l                                     ; $5795: $75
	inc  bc                                          ; $5796: $03
	ld   e, c                                        ; $5797: $59
	and  b                                           ; $5798: $a0
	ld   e, c                                        ; $5799: $59
	ld   e, l                                        ; $579a: $5d
	nop                                              ; $579b: $00
	ld   bc, $1c02                                   ; $579c: $01 $02 $1c
	inc  bc                                          ; $579f: $03
	ld   l, e                                        ; $57a0: $6b
	ld   [hl], l                                     ; $57a1: $75
	inc  bc                                          ; $57a2: $03
	ld   e, c                                        ; $57a3: $59
	and  b                                           ; $57a4: $a0
	ld   l, l                                        ; $57a5: $6d
	ld   l, l                                        ; $57a6: $6d
	ld   e, l                                        ; $57a7: $5d
	nop                                              ; $57a8: $00
	ld   [bc], a                                     ; $57a9: $02
	rlca                                             ; $57aa: $07
	adc  a                                           ; $57ab: $8f
	inc  bc                                          ; $57ac: $03
	ld   [bc], a                                     ; $57ad: $02
	inc  bc                                          ; $57ae: $03
	ld   bc, $2000                                   ; $57af: $01 $00 $20
	nop                                              ; $57b2: $00
	rlca                                             ; $57b3: $07
	sbc  b                                           ; $57b4: $98
	inc  bc                                          ; $57b5: $03
	ld   [bc], a                                     ; $57b6: $02
	inc  bc                                          ; $57b7: $03
	ld   bc, $2001                                   ; $57b8: $01 $01 $20
	nop                                              ; $57bb: $00
	rlca                                             ; $57bc: $07
	sbc  b                                           ; $57bd: $98
	inc  bc                                          ; $57be: $03
	ld   [bc], a                                     ; $57bf: $02
	inc  bc                                          ; $57c0: $03
	ld   bc, $2002                                   ; $57c1: $01 $02 $20
	nop                                              ; $57c4: $00
	ld   b, $6f                                      ; $57c5: $06 $6f
	ld   [bc], a                                     ; $57c7: $02
	dec  b                                           ; $57c8: $05
	ld   b, b                                        ; $57c9: $40
	rst  $38                                         ; $57ca: $ff
	inc  bc                                          ; $57cb: $03
	rst  $38                                         ; $57cc: $ff
	ld   bc, $2801                                   ; $57cd: $01 $01 $28
	nop                                              ; $57d0: $00
	add  hl, de                                      ; $57d1: $19
	inc  bc                                          ; $57d2: $03
	inc  bc                                          ; $57d3: $03
	inc  bc                                          ; $57d4: $03
	ld   a, l                                        ; $57d5: $7d
	ld   a, l                                        ; $57d6: $7d
	ld   l, b                                        ; $57d7: $68
	ei                                               ; $57d8: $fb
	ld   [hl], c                                     ; $57d9: $71
	halt                                             ; $57da: $76
	sbc  [hl]                                        ; $57db: $9e
	ld   a, [hl]                                     ; $57dc: $7e
	ld   l, l                                        ; $57dd: $6d
	inc  bc                                          ; $57de: $03
	ld   a, l                                        ; $57df: $7d
	nop                                              ; $57e0: $00
	nop                                              ; $57e1: $00
	inc  bc                                          ; $57e2: $03
	ld   a, l                                        ; $57e3: $7d
	ld   a, l                                        ; $57e4: $7d
	ld   l, b                                        ; $57e5: $68
	ei                                               ; $57e6: $fb
	ld   [hl], c                                     ; $57e7: $71
	halt                                             ; $57e8: $76
	sbc  [hl]                                        ; $57e9: $9e
	ld   a, h                                        ; $57ea: $7c
	ld   a, [hl]                                     ; $57eb: $7e
	ld   h, l                                        ; $57ec: $65
	ld   l, l                                        ; $57ed: $6d
	adc  h                                           ; $57ee: $8c
	adc  h                                           ; $57ef: $8c
	nop                                              ; $57f0: $00
	ld   bc, $7d03                                   ; $57f1: $01 $03 $7d
	ld   a, l                                        ; $57f4: $7d
	ld   l, b                                        ; $57f5: $68
	ei                                               ; $57f6: $fb
	ld   [hl], c                                     ; $57f7: $71
	halt                                             ; $57f8: $76
	sbc  [hl]                                        ; $57f9: $9e
	add  b                                           ; $57fa: $80
	sub  a                                           ; $57fb: $97
	ld   d, d                                        ; $57fc: $52
	ld   l, l                                        ; $57fd: $6d
	adc  h                                           ; $57fe: $8c
	adc  h                                           ; $57ff: $8c
	nop                                              ; $5800: $00
	ld   [bc], a                                     ; $5801: $02
	rlca                                             ; $5802: $07
	rst  $20                                         ; $5803: $e7
	inc  bc                                          ; $5804: $03
	ld   [bc], a                                     ; $5805: $02
	inc  bc                                          ; $5806: $03
	ld   bc, $2000                                   ; $5807: $01 $00 $20
	nop                                              ; $580a: $00
	rlca                                             ; $580b: $07
	ldh  a, [$03]                                    ; $580c: $f0 $03
	ld   [bc], a                                     ; $580e: $02
	inc  bc                                          ; $580f: $03
	ld   bc, $2001                                   ; $5810: $01 $01 $20
	nop                                              ; $5813: $00
	rlca                                             ; $5814: $07
	ldh  a, [$03]                                    ; $5815: $f0 $03
	ld   [bc], a                                     ; $5817: $02
	inc  bc                                          ; $5818: $03
	ld   bc, $2002                                   ; $5819: $01 $02 $20
	nop                                              ; $581c: $00
	ld   b, $6f                                      ; $581d: $06 $6f
	ld   [bc], a                                     ; $581f: $02
	dec  b                                           ; $5820: $05
	ld   b, b                                        ; $5821: $40
	rst  $38                                         ; $5822: $ff
	inc  bc                                          ; $5823: $03
	rst  $38                                         ; $5824: $ff
	ld   bc, $2801                                   ; $5825: $01 $01 $28
	nop                                              ; $5828: $00
	add  hl, de                                      ; $5829: $19
	inc  bc                                          ; $582a: $03
	inc  bc                                          ; $582b: $03
	ld   [bc], a                                     ; $582c: $02
	inc  e                                           ; $582d: $1c
	inc  bc                                          ; $582e: $03
	ld   l, e                                        ; $582f: $6b
	ld   [hl], l                                     ; $5830: $75
	inc  bc                                          ; $5831: $03
	ld   e, c                                        ; $5832: $59
	and  b                                           ; $5833: $a0
	ld   e, c                                        ; $5834: $59
	ld   e, l                                        ; $5835: $5d
	nop                                              ; $5836: $00
	nop                                              ; $5837: $00
	ld   [bc], a                                     ; $5838: $02
	inc  e                                           ; $5839: $1c
	inc  bc                                          ; $583a: $03
	ld   l, e                                        ; $583b: $6b
	ld   [hl], l                                     ; $583c: $75
	inc  bc                                          ; $583d: $03
	ld   e, c                                        ; $583e: $59
	and  b                                           ; $583f: $a0
	ld   e, c                                        ; $5840: $59
	ld   e, e                                        ; $5841: $5b
	adc  h                                           ; $5842: $8c
	ld   l, d                                        ; $5843: $6a
	sbc  c                                           ; $5844: $99
	nop                                              ; $5845: $00
	ld   bc, $1c02                                   ; $5846: $01 $02 $1c
	inc  bc                                          ; $5849: $03
	ld   l, e                                        ; $584a: $6b
	ld   [hl], l                                     ; $584b: $75
	inc  bc                                          ; $584c: $03
	ld   e, c                                        ; $584d: $59
	and  b                                           ; $584e: $a0
	ld   l, l                                        ; $584f: $6d
	ld   l, l                                        ; $5850: $6d
	ld   e, l                                        ; $5851: $5d
	nop                                              ; $5852: $00
	ld   [bc], a                                     ; $5853: $02
	rlca                                             ; $5854: $07
	add  hl, sp                                      ; $5855: $39
	inc  b                                           ; $5856: $04
	ld   [bc], a                                     ; $5857: $02
	inc  bc                                          ; $5858: $03
	ld   bc, $2000                                   ; $5859: $01 $00 $20
	nop                                              ; $585c: $00
	rlca                                             ; $585d: $07
	ld   b, d                                        ; $585e: $42
	inc  b                                           ; $585f: $04
	ld   [bc], a                                     ; $5860: $02
	inc  bc                                          ; $5861: $03
	ld   bc, $2001                                   ; $5862: $01 $01 $20
	nop                                              ; $5865: $00
	rlca                                             ; $5866: $07
	ld   b, d                                        ; $5867: $42
	inc  b                                           ; $5868: $04
	ld   [bc], a                                     ; $5869: $02
	inc  bc                                          ; $586a: $03
	ld   bc, $2002                                   ; $586b: $01 $02 $20
	nop                                              ; $586e: $00
	ld   b, $6f                                      ; $586f: $06 $6f
	ld   [bc], a                                     ; $5871: $02
	dec  b                                           ; $5872: $05
	ld   b, b                                        ; $5873: $40
	rst  $38                                         ; $5874: $ff
	inc  bc                                          ; $5875: $03
	rst  $38                                         ; $5876: $ff
	ld   bc, $2801                                   ; $5877: $01 $01 $28
	nop                                              ; $587a: $00
	add  hl, de                                      ; $587b: $19
	inc  bc                                          ; $587c: $03
	inc  bc                                          ; $587d: $03
	inc  bc                                          ; $587e: $03
	ld   h, b                                        ; $587f: $60
	inc  bc                                          ; $5880: $03
	ld   l, e                                        ; $5881: $6b
	ld   [hl], l                                     ; $5882: $75
	inc  bc                                          ; $5883: $03
	ld   e, c                                        ; $5884: $59
	and  b                                           ; $5885: $a0
	ld   e, c                                        ; $5886: $59
	ld   e, l                                        ; $5887: $5d
	nop                                              ; $5888: $00
	nop                                              ; $5889: $00
	inc  bc                                          ; $588a: $03
	ld   h, b                                        ; $588b: $60
	inc  bc                                          ; $588c: $03
	ld   l, e                                        ; $588d: $6b
	ld   [hl], l                                     ; $588e: $75
	inc  bc                                          ; $588f: $03
	ld   e, c                                        ; $5890: $59
	and  b                                           ; $5891: $a0
	ld   e, c                                        ; $5892: $59
	ld   e, e                                        ; $5893: $5b
	adc  h                                           ; $5894: $8c
	ld   l, d                                        ; $5895: $6a
	sbc  c                                           ; $5896: $99
	nop                                              ; $5897: $00
	ld   bc, $6003                                   ; $5898: $01 $03 $60
	inc  bc                                          ; $589b: $03
	ld   l, e                                        ; $589c: $6b
	ld   [hl], l                                     ; $589d: $75
	inc  bc                                          ; $589e: $03
	ld   e, c                                        ; $589f: $59
	and  b                                           ; $58a0: $a0
	ld   l, l                                        ; $58a1: $6d
	ld   l, l                                        ; $58a2: $6d
	ld   e, l                                        ; $58a3: $5d
	nop                                              ; $58a4: $00
	ld   [bc], a                                     ; $58a5: $02
	rlca                                             ; $58a6: $07
	adc  e                                           ; $58a7: $8b
	inc  b                                           ; $58a8: $04
	ld   [bc], a                                     ; $58a9: $02
	inc  bc                                          ; $58aa: $03
	ld   bc, $2000                                   ; $58ab: $01 $00 $20
	nop                                              ; $58ae: $00
	rlca                                             ; $58af: $07
	sub  h                                           ; $58b0: $94
	inc  b                                           ; $58b1: $04
	ld   [bc], a                                     ; $58b2: $02
	inc  bc                                          ; $58b3: $03
	ld   bc, $2001                                   ; $58b4: $01 $01 $20
	nop                                              ; $58b7: $00
	rlca                                             ; $58b8: $07
	sub  h                                           ; $58b9: $94
	inc  b                                           ; $58ba: $04
	ld   [bc], a                                     ; $58bb: $02
	inc  bc                                          ; $58bc: $03
	ld   bc, $2002                                   ; $58bd: $01 $02 $20
	nop                                              ; $58c0: $00
	ld   b, $6f                                      ; $58c1: $06 $6f
	ld   [bc], a                                     ; $58c3: $02
	dec  b                                           ; $58c4: $05
	ld   b, b                                        ; $58c5: $40
	rst  $38                                         ; $58c6: $ff
	inc  bc                                          ; $58c7: $03
	rst  $38                                         ; $58c8: $ff
	ld   bc, $2801                                   ; $58c9: $01 $01 $28
	nop                                              ; $58cc: $00
	add  hl, de                                      ; $58cd: $19
	inc  bc                                          ; $58ce: $03
	inc  bc                                          ; $58cf: $03
	ld   [bc], a                                     ; $58d0: $02
	inc  e                                           ; $58d1: $1c
	inc  bc                                          ; $58d2: $03
	ld   l, e                                        ; $58d3: $6b
	ld   [hl], l                                     ; $58d4: $75
	inc  bc                                          ; $58d5: $03
	ld   e, c                                        ; $58d6: $59
	and  b                                           ; $58d7: $a0
	ld   e, c                                        ; $58d8: $59
	ld   e, e                                        ; $58d9: $5b
	ld   a, b                                        ; $58da: $78
	ld   e, d                                        ; $58db: $5a
	sub  a                                           ; $58dc: $97
	inc  bc                                          ; $58dd: $03
	ld   h, $72                                      ; $58de: $26 $72
	ld   e, h                                        ; $58e0: $5c
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	add  b                                           ; $58e3: $80
	ld   l, l                                        ; $58e4: $6d
	ld   h, a                                        ; $58e5: $67
	sub  a                                           ; $58e6: $97
	inc  bc                                          ; $58e7: $03
	ld   h, $72                                      ; $58e8: $26 $72
	ld   e, h                                        ; $58ea: $5c
	nop                                              ; $58eb: $00
	ld   bc, $1c02                                   ; $58ec: $01 $02 $1c
	inc  bc                                          ; $58ef: $03
	ld   l, e                                        ; $58f0: $6b
	ld   [hl], l                                     ; $58f1: $75
	inc  bc                                          ; $58f2: $03
	ld   e, c                                        ; $58f3: $59
	and  b                                           ; $58f4: $a0
	ld   e, c                                        ; $58f5: $59
	ld   e, e                                        ; $58f6: $5b
	adc  h                                           ; $58f7: $8c
	ld   l, d                                        ; $58f8: $6a
	ld   [hl], h                                     ; $58f9: $74
	inc  bc                                          ; $58fa: $03
	ld   h, $72                                      ; $58fb: $26 $72
	ld   e, h                                        ; $58fd: $5c
	nop                                              ; $58fe: $00
	ld   [bc], a                                     ; $58ff: $02
	rlca                                             ; $5900: $07
	push hl                                          ; $5901: $e5
	inc  b                                           ; $5902: $04
	ld   [bc], a                                     ; $5903: $02
	inc  bc                                          ; $5904: $03
	ld   bc, $2000                                   ; $5905: $01 $00 $20
	nop                                              ; $5908: $00
	rlca                                             ; $5909: $07
	xor  $04                                         ; $590a: $ee $04
	ld   [bc], a                                     ; $590c: $02
	inc  bc                                          ; $590d: $03
	ld   bc, $2001                                   ; $590e: $01 $01 $20
	nop                                              ; $5911: $00
	rlca                                             ; $5912: $07
	xor  $04                                         ; $5913: $ee $04
	ld   [bc], a                                     ; $5915: $02
	inc  bc                                          ; $5916: $03
	ld   bc, $2002                                   ; $5917: $01 $02 $20
	nop                                              ; $591a: $00
	ld   b, $6f                                      ; $591b: $06 $6f
	ld   [bc], a                                     ; $591d: $02
	dec  b                                           ; $591e: $05
	ld   b, b                                        ; $591f: $40
	rst  $38                                         ; $5920: $ff
	inc  bc                                          ; $5921: $03
	rst  $38                                         ; $5922: $ff
	ld   bc, $2801                                   ; $5923: $01 $01 $28
	nop                                              ; $5926: $00
	add  hl, de                                      ; $5927: $19
	inc  bc                                          ; $5928: $03
	inc  bc                                          ; $5929: $03
	inc  bc                                          ; $592a: $03
	ld   a, l                                        ; $592b: $7d
	ld   a, l                                        ; $592c: $7d
	ld   l, b                                        ; $592d: $68
	ei                                               ; $592e: $fb
	ld   [hl], c                                     ; $592f: $71
	halt                                             ; $5930: $76
	sbc  [hl]                                        ; $5931: $9e
	ld   a, [hl]                                     ; $5932: $7e
	ld   l, l                                        ; $5933: $6d
	inc  bc                                          ; $5934: $03
	ld   a, l                                        ; $5935: $7d
	nop                                              ; $5936: $00
	nop                                              ; $5937: $00
	inc  bc                                          ; $5938: $03
	ld   a, l                                        ; $5939: $7d
	ld   a, l                                        ; $593a: $7d
	ld   l, b                                        ; $593b: $68
	ei                                               ; $593c: $fb
	ld   [hl], c                                     ; $593d: $71
	halt                                             ; $593e: $76
	sbc  [hl]                                        ; $593f: $9e
	pop  de                                          ; $5940: $d1
	ret  nz                                          ; $5941: $c0

	sub  $eb                                         ; $5942: $d6 $eb
	and  l                                           ; $5944: $a5
	nop                                              ; $5945: $00
	ld   bc, $7d03                                   ; $5946: $01 $03 $7d
	ld   a, l                                        ; $5949: $7d
	ld   l, b                                        ; $594a: $68
	ei                                               ; $594b: $fb
	ld   [hl], c                                     ; $594c: $71
	halt                                             ; $594d: $76
	sbc  [hl]                                        ; $594e: $9e
	ld   a, a                                        ; $594f: $7f
	ld   l, l                                        ; $5950: $6d
	ld   a, a                                        ; $5951: $7f
	ld   l, l                                        ; $5952: $6d
	nop                                              ; $5953: $00
	ld   [bc], a                                     ; $5954: $02
	rlca                                             ; $5955: $07
	ld   a, [hl-]                                    ; $5956: $3a
	dec  b                                           ; $5957: $05
	ld   [bc], a                                     ; $5958: $02
	inc  bc                                          ; $5959: $03
	ld   bc, $2000                                   ; $595a: $01 $00 $20
	nop                                              ; $595d: $00
	rlca                                             ; $595e: $07
	ld   b, e                                        ; $595f: $43
	dec  b                                           ; $5960: $05
	ld   [bc], a                                     ; $5961: $02
	inc  bc                                          ; $5962: $03
	ld   bc, $2001                                   ; $5963: $01 $01 $20
	nop                                              ; $5966: $00
	rlca                                             ; $5967: $07
	ld   b, e                                        ; $5968: $43
	dec  b                                           ; $5969: $05
	ld   [bc], a                                     ; $596a: $02
	inc  bc                                          ; $596b: $03
	ld   bc, $2002                                   ; $596c: $01 $02 $20
	nop                                              ; $596f: $00
	ld   b, $6f                                      ; $5970: $06 $6f
	ld   [bc], a                                     ; $5972: $02
	dec  b                                           ; $5973: $05
	ld   b, b                                        ; $5974: $40
	rst  $38                                         ; $5975: $ff
	inc  bc                                          ; $5976: $03
	rst  $38                                         ; $5977: $ff
	ld   bc, $2801                                   ; $5978: $01 $01 $28
	nop                                              ; $597b: $00
	add  hl, de                                      ; $597c: $19
	inc  bc                                          ; $597d: $03
	inc  bc                                          ; $597e: $03
	ld   [bc], a                                     ; $597f: $02
	inc  e                                           ; $5980: $1c
	inc  bc                                          ; $5981: $03
	ld   l, e                                        ; $5982: $6b
	ld   [hl], l                                     ; $5983: $75
	inc  bc                                          ; $5984: $03
	ld   e, c                                        ; $5985: $59
	and  b                                           ; $5986: $a0
	ld   e, c                                        ; $5987: $59
	ld   e, l                                        ; $5988: $5d
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	ld   [bc], a                                     ; $598b: $02
	inc  e                                           ; $598c: $1c
	inc  bc                                          ; $598d: $03
	ld   l, e                                        ; $598e: $6b
	ld   [hl], l                                     ; $598f: $75
	inc  bc                                          ; $5990: $03
	ld   e, c                                        ; $5991: $59
	and  b                                           ; $5992: $a0
	ld   e, c                                        ; $5993: $59
	ld   e, e                                        ; $5994: $5b
	adc  h                                           ; $5995: $8c
	ld   l, d                                        ; $5996: $6a
	sbc  c                                           ; $5997: $99
	nop                                              ; $5998: $00
	ld   bc, $6003                                   ; $5999: $01 $03 $60
	inc  bc                                          ; $599c: $03
	ld   l, e                                        ; $599d: $6b
	ld   [hl], l                                     ; $599e: $75
	inc  bc                                          ; $599f: $03
	ld   e, c                                        ; $59a0: $59
	and  b                                           ; $59a1: $a0
	ld   e, c                                        ; $59a2: $59
	ld   e, l                                        ; $59a3: $5d
	nop                                              ; $59a4: $00
	ld   [bc], a                                     ; $59a5: $02
	rlca                                             ; $59a6: $07
	adc  e                                           ; $59a7: $8b
	dec  b                                           ; $59a8: $05
	ld   [bc], a                                     ; $59a9: $02
	inc  bc                                          ; $59aa: $03
	ld   bc, $2000                                   ; $59ab: $01 $00 $20
	nop                                              ; $59ae: $00
	rlca                                             ; $59af: $07
	sub  h                                           ; $59b0: $94
	dec  b                                           ; $59b1: $05
	ld   [bc], a                                     ; $59b2: $02
	inc  bc                                          ; $59b3: $03
	ld   bc, $2001                                   ; $59b4: $01 $01 $20
	nop                                              ; $59b7: $00
	rlca                                             ; $59b8: $07
	sub  h                                           ; $59b9: $94
	dec  b                                           ; $59ba: $05
	ld   [bc], a                                     ; $59bb: $02
	inc  bc                                          ; $59bc: $03
	ld   bc, $2002                                   ; $59bd: $01 $02 $20
	nop                                              ; $59c0: $00
	ld   b, $6f                                      ; $59c1: $06 $6f
	ld   [bc], a                                     ; $59c3: $02
	dec  b                                           ; $59c4: $05
	ld   b, b                                        ; $59c5: $40
	rst  $38                                         ; $59c6: $ff
	inc  bc                                          ; $59c7: $03
	rst  $38                                         ; $59c8: $ff
	ld   bc, $2801                                   ; $59c9: $01 $01 $28
	nop                                              ; $59cc: $00
	add  hl, de                                      ; $59cd: $19
	inc  bc                                          ; $59ce: $03
	inc  bc                                          ; $59cf: $03
	inc  bc                                          ; $59d0: $03
	ld   h, b                                        ; $59d1: $60
	inc  bc                                          ; $59d2: $03
	ld   l, e                                        ; $59d3: $6b
	ld   [hl], l                                     ; $59d4: $75
	inc  bc                                          ; $59d5: $03
	ld   e, c                                        ; $59d6: $59
	and  b                                           ; $59d7: $a0
	ld   e, c                                        ; $59d8: $59
	ld   e, l                                        ; $59d9: $5d
	nop                                              ; $59da: $00
	nop                                              ; $59db: $00
	inc  bc                                          ; $59dc: $03
	ld   h, b                                        ; $59dd: $60
	inc  bc                                          ; $59de: $03
	ld   l, e                                        ; $59df: $6b
	ld   [hl], l                                     ; $59e0: $75
	inc  bc                                          ; $59e1: $03
	ld   e, c                                        ; $59e2: $59
	and  b                                           ; $59e3: $a0
	ld   e, c                                        ; $59e4: $59
	ld   e, e                                        ; $59e5: $5b
	adc  h                                           ; $59e6: $8c
	ld   l, d                                        ; $59e7: $6a
	sbc  c                                           ; $59e8: $99
	nop                                              ; $59e9: $00
	ld   bc, $1c02                                   ; $59ea: $01 $02 $1c
	inc  bc                                          ; $59ed: $03
	ld   l, e                                        ; $59ee: $6b
	ld   [hl], l                                     ; $59ef: $75
	inc  bc                                          ; $59f0: $03
	ld   e, c                                        ; $59f1: $59
	and  b                                           ; $59f2: $a0
	ld   e, c                                        ; $59f3: $59
	ld   e, l                                        ; $59f4: $5d
	nop                                              ; $59f5: $00
	ld   [bc], a                                     ; $59f6: $02
	rlca                                             ; $59f7: $07
	call c, $0205                                    ; $59f8: $dc $05 $02
	inc  bc                                          ; $59fb: $03
	ld   bc, $2000                                   ; $59fc: $01 $00 $20
	nop                                              ; $59ff: $00
	rlca                                             ; $5a00: $07
	push hl                                          ; $5a01: $e5
	dec  b                                           ; $5a02: $05
	ld   [bc], a                                     ; $5a03: $02
	inc  bc                                          ; $5a04: $03
	ld   bc, $2001                                   ; $5a05: $01 $01 $20
	nop                                              ; $5a08: $00
	rlca                                             ; $5a09: $07
	push hl                                          ; $5a0a: $e5
	dec  b                                           ; $5a0b: $05
	ld   [bc], a                                     ; $5a0c: $02
	inc  bc                                          ; $5a0d: $03
	ld   bc, $2002                                   ; $5a0e: $01 $02 $20
	nop                                              ; $5a11: $00
	ld   b, $6f                                      ; $5a12: $06 $6f
	ld   [bc], a                                     ; $5a14: $02
	dec  b                                           ; $5a15: $05
	ld   b, b                                        ; $5a16: $40
	rst  $38                                         ; $5a17: $ff
	inc  bc                                          ; $5a18: $03
	rst  $38                                         ; $5a19: $ff
	ld   bc, $2801                                   ; $5a1a: $01 $01 $28
	nop                                              ; $5a1d: $00
	add  hl, de                                      ; $5a1e: $19
	inc  bc                                          ; $5a1f: $03
	inc  bc                                          ; $5a20: $03
	ld   [bc], a                                     ; $5a21: $02
	inc  e                                           ; $5a22: $1c
	inc  bc                                          ; $5a23: $03
	ld   l, e                                        ; $5a24: $6b
	ld   [hl], l                                     ; $5a25: $75
	inc  bc                                          ; $5a26: $03
	ld   e, c                                        ; $5a27: $59
	and  b                                           ; $5a28: $a0
	ld   e, c                                        ; $5a29: $59
	ld   e, e                                        ; $5a2a: $5b
	ld   a, b                                        ; $5a2b: $78
	ld   e, d                                        ; $5a2c: $5a
	sub  a                                           ; $5a2d: $97
	inc  bc                                          ; $5a2e: $03
	ld   h, $72                                      ; $5a2f: $26 $72
	ld   e, h                                        ; $5a31: $5c
	nop                                              ; $5a32: $00
	nop                                              ; $5a33: $00
	inc  bc                                          ; $5a34: $03
	ld   h, b                                        ; $5a35: $60
	inc  bc                                          ; $5a36: $03
	ld   l, e                                        ; $5a37: $6b
	ld   [hl], l                                     ; $5a38: $75
	inc  bc                                          ; $5a39: $03
	ld   e, c                                        ; $5a3a: $59
	and  b                                           ; $5a3b: $a0
	ld   e, c                                        ; $5a3c: $59
	ld   e, e                                        ; $5a3d: $5b
	ld   a, b                                        ; $5a3e: $78
	ld   e, d                                        ; $5a3f: $5a
	sub  a                                           ; $5a40: $97
	inc  bc                                          ; $5a41: $03
	ld   h, $72                                      ; $5a42: $26 $72
	ld   e, h                                        ; $5a44: $5c
	nop                                              ; $5a45: $00
	ld   bc, $1c02                                   ; $5a46: $01 $02 $1c
	inc  bc                                          ; $5a49: $03
	ld   l, e                                        ; $5a4a: $6b
	ld   [hl], l                                     ; $5a4b: $75
	inc  bc                                          ; $5a4c: $03
	ld   e, c                                        ; $5a4d: $59
	and  b                                           ; $5a4e: $a0
	ld   e, c                                        ; $5a4f: $59
	ld   e, e                                        ; $5a50: $5b
	adc  h                                           ; $5a51: $8c
	ld   l, d                                        ; $5a52: $6a
	ld   [hl], h                                     ; $5a53: $74
	inc  bc                                          ; $5a54: $03
	ld   h, $72                                      ; $5a55: $26 $72
	ld   e, h                                        ; $5a57: $5c
	nop                                              ; $5a58: $00
	ld   [bc], a                                     ; $5a59: $02
	rlca                                             ; $5a5a: $07
	ccf                                              ; $5a5b: $3f
	ld   b, $02                                      ; $5a5c: $06 $02
	inc  bc                                          ; $5a5e: $03
	ld   bc, $2000                                   ; $5a5f: $01 $00 $20
	nop                                              ; $5a62: $00
	rlca                                             ; $5a63: $07
	ld   c, b                                        ; $5a64: $48
	ld   b, $02                                      ; $5a65: $06 $02
	inc  bc                                          ; $5a67: $03
	ld   bc, $2001                                   ; $5a68: $01 $01 $20
	nop                                              ; $5a6b: $00
	rlca                                             ; $5a6c: $07
	ld   c, b                                        ; $5a6d: $48
	ld   b, $02                                      ; $5a6e: $06 $02
	inc  bc                                          ; $5a70: $03
	ld   bc, $2002                                   ; $5a71: $01 $02 $20
	nop                                              ; $5a74: $00
	ld   b, $6f                                      ; $5a75: $06 $6f
	ld   [bc], a                                     ; $5a77: $02
	dec  b                                           ; $5a78: $05
	ld   b, b                                        ; $5a79: $40
	rst  $38                                         ; $5a7a: $ff
	inc  bc                                          ; $5a7b: $03
	rst  $38                                         ; $5a7c: $ff
	ld   bc, $2801                                   ; $5a7d: $01 $01 $28
	nop                                              ; $5a80: $00
	add  hl, de                                      ; $5a81: $19
	inc  bc                                          ; $5a82: $03
	inc  bc                                          ; $5a83: $03
	inc  bc                                          ; $5a84: $03
	ld   a, l                                        ; $5a85: $7d
	ld   a, l                                        ; $5a86: $7d
	ld   l, b                                        ; $5a87: $68
	ei                                               ; $5a88: $fb
	ld   [hl], c                                     ; $5a89: $71
	halt                                             ; $5a8a: $76
	sbc  [hl]                                        ; $5a8b: $9e
	ld   a, [hl]                                     ; $5a8c: $7e
	ld   l, l                                        ; $5a8d: $6d
	inc  bc                                          ; $5a8e: $03
	ld   a, l                                        ; $5a8f: $7d
	nop                                              ; $5a90: $00
	nop                                              ; $5a91: $00
	inc  bc                                          ; $5a92: $03
	ld   a, l                                        ; $5a93: $7d
	ld   a, l                                        ; $5a94: $7d
	ld   l, b                                        ; $5a95: $68
	ei                                               ; $5a96: $fb
	ld   [hl], c                                     ; $5a97: $71
	halt                                             ; $5a98: $76
	sbc  [hl]                                        ; $5a99: $9e
	jp   z, $d1c0                                    ; $5a9a: $ca $c0 $d1

	ret  nz                                          ; $5a9d: $c0

	nop                                              ; $5a9e: $00
	ld   bc, $7d03                                   ; $5a9f: $01 $03 $7d
	ld   a, l                                        ; $5aa2: $7d
	ld   l, b                                        ; $5aa3: $68
	ei                                               ; $5aa4: $fb
	ld   [hl], c                                     ; $5aa5: $71
	halt                                             ; $5aa6: $76
	sbc  [hl]                                        ; $5aa7: $9e
	ld   a, [hl]                                     ; $5aa8: $7e
	ld   l, l                                        ; $5aa9: $6d
	and  c                                           ; $5aaa: $a1
	xor  [hl]                                        ; $5aab: $ae
	rst  $20                                         ; $5aac: $e7
	ei                                               ; $5aad: $fb
	nop                                              ; $5aae: $00
	ld   [bc], a                                     ; $5aaf: $02
	rlca                                             ; $5ab0: $07
	sub  l                                           ; $5ab1: $95
	ld   b, $02                                      ; $5ab2: $06 $02
	inc  bc                                          ; $5ab4: $03
	ld   bc, $2000                                   ; $5ab5: $01 $00 $20
	nop                                              ; $5ab8: $00
	rlca                                             ; $5ab9: $07
	sbc  [hl]                                        ; $5aba: $9e
	ld   b, $02                                      ; $5abb: $06 $02
	inc  bc                                          ; $5abd: $03
	ld   bc, $2001                                   ; $5abe: $01 $01 $20
	nop                                              ; $5ac1: $00
	rlca                                             ; $5ac2: $07
	sbc  [hl]                                        ; $5ac3: $9e
	ld   b, $02                                      ; $5ac4: $06 $02
	inc  bc                                          ; $5ac6: $03
	ld   bc, $2002                                   ; $5ac7: $01 $02 $20
	nop                                              ; $5aca: $00
	ld   b, $6f                                      ; $5acb: $06 $6f
	ld   [bc], a                                     ; $5acd: $02
	dec  b                                           ; $5ace: $05
	ld   b, b                                        ; $5acf: $40
	rst  $38                                         ; $5ad0: $ff
	inc  bc                                          ; $5ad1: $03
	rst  $38                                         ; $5ad2: $ff
	ld   bc, $2801                                   ; $5ad3: $01 $01 $28
	nop                                              ; $5ad6: $00
	rlca                                             ; $5ad7: $07
	xor  d                                           ; $5ad8: $aa
	ld   b, $03                                      ; $5ad9: $06 $03
	rst  $38                                         ; $5adb: $ff
	ld   bc, $200c                                   ; $5adc: $01 $0c $20
	nop                                              ; $5adf: $00
	ld   b, $09                                      ; $5ae0: $06 $09
	rlca                                             ; $5ae2: $07
	inc  e                                           ; $5ae3: $1c
	ld   [bc], a                                     ; $5ae4: $02
	ld   hl, $1d01                                   ; $5ae5: $21 $01 $1d
	ld   b, b                                        ; $5ae8: $40
	ld   [de], a                                     ; $5ae9: $12
	inc  bc                                          ; $5aea: $03
	ld   [de], a                                     ; $5aeb: $12
	ld   bc, $2803                                   ; $5aec: $01 $03 $28
	nop                                              ; $5aef: $00
	ld   bc, $5978                                   ; $5af0: $01 $78 $59
	ld   a, b                                        ; $5af3: $78
	ld   e, c                                        ; $5af4: $59
	sub  d                                           ; $5af5: $92
	sbc  b                                           ; $5af6: $98
	adc  h                                           ; $5af7: $8c
	ld   h, a                                        ; $5af8: $67
	sbc  l                                           ; $5af9: $9d
	ld   a, e                                        ; $5afa: $7b
	sbc  a                                           ; $5afb: $9f
	dec  c                                           ; $5afc: $0d
	ld   [$6300], sp                                 ; $5afd: $08 $00 $63
	and  c                                           ; $5b00: $a1
	sbc  a                                           ; $5b01: $9f
	dec  c                                           ; $5b02: $0d
	nop                                              ; $5b03: $00
	ld   a, [bc]                                     ; $5b04: $0a
	ld   bc, $5490                                   ; $5b05: $01 $90 $54
	or   b                                           ; $5b08: $b0
	rst  $28                                         ; $5b09: $ef
	ei                                               ; $5b0a: $fb
	db   $ed                                         ; $5b0b: $ed
	ld   a, l                                        ; $5b0c: $7d
	xor  h                                           ; $5b0d: $ac
	push af                                          ; $5b0e: $f5
	db   $db                                         ; $5b0f: $db
	xor  [hl]                                        ; $5b10: $ae
	dec  c                                           ; $5b11: $0d
	ld   [hl], l                                     ; $5b12: $75
	ld   h, a                                        ; $5b13: $67
	sbc  l                                           ; $5b14: $9d
	ld   a, e                                        ; $5b15: $7b
	sbc  a                                           ; $5b16: $9f
	dec  c                                           ; $5b17: $0d
	nop                                              ; $5b18: $00
	ld   a, [bc]                                     ; $5b19: $0a
	inc  e                                           ; $5b1a: $1c
	ld   [bc], a                                     ; $5b1b: $02
	jr   nz, jr_051_5b1e                             ; $5b1c: $20 $00

jr_051_5b1e:
	ld   bc, $7d75                                   ; $5b1e: $01 $75 $7d
	sbc  [hl]                                        ; $5b21: $9e
	sub  b                                           ; $5b22: $90
	ld   d, h                                        ; $5b23: $54
	inc  b                                           ; $5b24: $04
	rst  $28                                         ; $5b25: $ef
	sub  b                                           ; $5b26: $90
	ld   e, b                                        ; $5b27: $58
	ld   l, e                                        ; $5b28: $6b
	ld   d, d                                        ; $5b29: $52
	ld   [hl], l                                     ; $5b2a: $75
	ld   h, a                                        ; $5b2b: $67
	ld   h, l                                        ; $5b2c: $65
	dec  c                                           ; $5b2d: $0d
	ld   e, b                                        ; $5b2e: $58
	sub  d                                           ; $5b2f: $92
	ld   h, a                                        ; $5b30: $67
	adc  l                                           ; $5b31: $8d
	ld   a, b                                        ; $5b32: $78
	ld   h, e                                        ; $5b33: $63
	ld   d, d                                        ; $5b34: $52
	sbc  a                                           ; $5b35: $9f
	dec  c                                           ; $5b36: $0d
	nop                                              ; $5b37: $00
	ld   a, [bc]                                     ; $5b38: $0a
	dec  c                                           ; $5b39: $0d
	nop                                              ; $5b3a: $00
	nop                                              ; $5b3b: $00
	rrca                                             ; $5b3c: $0f
	nop                                              ; $5b3d: $00
	ld   bc, $1e09                                   ; $5b3e: $01 $09 $1e
	nop                                              ; $5b41: $00
	inc  e                                           ; $5b42: $1c
	ld   [bc], a                                     ; $5b43: $02
	dec  h                                           ; $5b44: $25
	dec  b                                           ; $5b45: $05
	dec  e                                           ; $5b46: $1d
	ld   b, b                                        ; $5b47: $40
	ld   [de], a                                     ; $5b48: $12
	inc  bc                                          ; $5b49: $03
	ld   [de], a                                     ; $5b4a: $12
	ld   bc, $2902                                   ; $5b4b: $01 $02 $29
	nop                                              ; $5b4e: $00
	ld   bc, $e3c1                                   ; $5b4f: $01 $c1 $e3
	ld   [hl], l                                     ; $5b52: $75
	ld   h, a                                        ; $5b53: $67
	sbc  l                                           ; $5b54: $9d
	ld   a, e                                        ; $5b55: $7b
	db   $fc                                         ; $5b56: $fc
	sbc  a                                           ; $5b57: $9f
	dec  c                                           ; $5b58: $0d
	nop                                              ; $5b59: $00
	ld   a, [bc]                                     ; $5b5a: $0a
	inc  e                                           ; $5b5b: $1c
	ld   [bc], a                                     ; $5b5c: $02
	ld   hl, $0101                                   ; $5b5d: $21 $01 $01
	ld   [hl], l                                     ; $5b60: $75
	sub  b                                           ; $5b61: $90
	adc  h                                           ; $5b62: $8c
	ld   d, b                                        ; $5b63: $50
	sbc  [hl]                                        ; $5b64: $9e
	inc  bc                                          ; $5b65: $03
	inc  c                                           ; $5b66: $0c
	adc  a                                           ; $5b67: $8f
	ld   a, l                                        ; $5b68: $7d
	ld   h, c                                        ; $5b69: $61
	and  c                                           ; $5b6a: $a1
	ld   a, b                                        ; $5b6b: $78
	sub  b                                           ; $5b6c: $90
	ld   a, h                                        ; $5b6d: $7c
	dec  c                                           ; $5b6e: $0d
	ld   l, [hl]                                     ; $5b6f: $6e
	halt                                             ; $5b70: $76
	dec  b                                           ; $5b71: $05
	pop  de                                          ; $5b72: $d1
	ld   d, d                                        ; $5b73: $52
	adc  h                                           ; $5b74: $8c
	ld   h, a                                        ; $5b75: $67
	sbc  l                                           ; $5b76: $9d
	sbc  a                                           ; $5b77: $9f
	dec  c                                           ; $5b78: $0d
	ld   e, b                                        ; $5b79: $58
	ei                                               ; $5b7a: $fb
	adc  c                                           ; $5b7b: $89
	adc  c                                           ; $5b7c: $89
	adc  c                                           ; $5b7d: $89
	adc  c                                           ; $5b7e: $89
	adc  c                                           ; $5b7f: $89
	adc  c                                           ; $5b80: $89
	adc  c                                           ; $5b81: $89
	sbc  a                                           ; $5b82: $9f
	dec  c                                           ; $5b83: $0d
	nop                                              ; $5b84: $00
	ld   a, [bc]                                     ; $5b85: $0a
	ld   bc, $9166                                   ; $5b86: $01 $66 $91
	sbc  [hl]                                        ; $5b89: $9e
	sub  b                                           ; $5b8a: $90
	ld   d, h                                        ; $5b8b: $54
	inc  b                                           ; $5b8c: $04
	rst  $28                                         ; $5b8d: $ef
	sub  b                                           ; $5b8e: $90
	ld   e, b                                        ; $5b8f: $58
	ld   l, e                                        ; $5b90: $6b
	ld   d, d                                        ; $5b91: $52
	ld   [hl], l                                     ; $5b92: $75
	ld   h, a                                        ; $5b93: $67
	dec  c                                           ; $5b94: $0d
	ld   e, c                                        ; $5b95: $59
	sub  a                                           ; $5b96: $97
	sbc  [hl]                                        ; $5b97: $9e
	ld   a, e                                        ; $5b98: $7b
	adc  h                                           ; $5b99: $8c
	ld   h, l                                        ; $5b9a: $65
	sub  l                                           ; $5b9b: $95
	ld   d, h                                        ; $5b9c: $54
	sbc  a                                           ; $5b9d: $9f
	dec  c                                           ; $5b9e: $0d
	ld   e, b                                        ; $5b9f: $58
	sub  d                                           ; $5ba0: $92
	ld   h, a                                        ; $5ba1: $67
	adc  l                                           ; $5ba2: $8d
	ld   a, b                                        ; $5ba3: $78
	ld   h, e                                        ; $5ba4: $63
	ld   d, d                                        ; $5ba5: $52
	sbc  a                                           ; $5ba6: $9f
	dec  c                                           ; $5ba7: $0d
	nop                                              ; $5ba8: $00
	ld   a, [bc]                                     ; $5ba9: $0a
	dec  c                                           ; $5baa: $0d
	nop                                              ; $5bab: $00
	nop                                              ; $5bac: $00
	rrca                                             ; $5bad: $0f
	nop                                              ; $5bae: $00
	ld   bc, $1e09                                   ; $5baf: $01 $09 $1e
	nop                                              ; $5bb2: $00
	nop                                              ; $5bb3: $00
	ld   c, $41                                      ; $5bb4: $0e $41
	rrca                                             ; $5bb6: $0f
	nop                                              ; $5bb7: $00
	ld   bc, $1c02                                   ; $5bb8: $01 $02 $1c
	add  hl, bc                                      ; $5bbb: $09
	nop                                              ; $5bbc: $00
	nop                                              ; $5bbd: $00
	ld   bc, $0008                                   ; $5bbe: $01 $08 $00
	ld   e, l                                        ; $5bc1: $5d
	and  c                                           ; $5bc2: $a1
	ld   h, [hl]                                     ; $5bc3: $66
	sub  c                                           ; $5bc4: $91
	ld   a, b                                        ; $5bc5: $78
	ld   d, d                                        ; $5bc6: $52
	ld   e, c                                        ; $5bc7: $59
	sbc  a                                           ; $5bc8: $9f
	dec  c                                           ; $5bc9: $0d
	ld   a, b                                        ; $5bca: $78
	ld   a, c                                        ; $5bcb: $79
	ld   e, c                                        ; $5bcc: $59
	inc  b                                           ; $5bcd: $04
	di                                               ; $5bce: $f3
	ld   e, c                                        ; $5bcf: $59
	ld   d, d                                        ; $5bd0: $52
	ld   sp, hl                                      ; $5bd1: $f9
	dec  c                                           ; $5bd2: $0d
	nop                                              ; $5bd3: $00
	ld   a, [bc]                                     ; $5bd4: $0a
	add  hl, de                                      ; $5bd5: $19
	dec  b                                           ; $5bd6: $05
	ld   [bc], a                                     ; $5bd7: $02
	inc  b                                           ; $5bd8: $04
	ld   a, [bc]                                     ; $5bd9: $0a
	ld   [bc], a                                     ; $5bda: $02
	nop                                              ; $5bdb: $00
	ld   e, c                                        ; $5bdc: $59
	sub  a                                           ; $5bdd: $97
	ld   a, h                                        ; $5bde: $7c
	inc  b                                           ; $5bdf: $04
	ld   d, a                                        ; $5be0: $57
	inc  b                                           ; $5be1: $04
	ld   h, e                                        ; $5be2: $63
	and  b                                           ; $5be3: $a0
	ld   [bc], a                                     ; $5be4: $02
	jp   nz, $005d                                   ; $5be5: $c2 $5d $00

	nop                                              ; $5be8: $00
	inc  bc                                          ; $5be9: $03
	ld   l, l                                        ; $5bea: $6d
	dec  b                                           ; $5beb: $05
	add  hl, de                                      ; $5bec: $19
	ld   a, h                                        ; $5bed: $7c
	and  e                                           ; $5bee: $a3
	jp   z, $a5d1                                    ; $5bef: $ca $d1 $a5

	cp   d                                           ; $5bf2: $ba
	and  b                                           ; $5bf3: $a0
	ld   [bc], a                                     ; $5bf4: $02
	jp   nz, $005d                                   ; $5bf5: $c2 $5d $00

	ld   bc, $8b07                                   ; $5bf8: $01 $07 $8b
	ld   bc, $0302                                   ; $5bfb: $01 $02 $03
	ld   bc, $2000                                   ; $5bfe: $01 $00 $20
	nop                                              ; $5c01: $00
	rlca                                             ; $5c02: $07
	ld   c, c                                        ; $5c03: $49
	ld   a, [bc]                                     ; $5c04: $0a
	ld   [bc], a                                     ; $5c05: $02
	inc  bc                                          ; $5c06: $03
	ld   bc, $2001                                   ; $5c07: $01 $01 $20
	nop                                              ; $5c0a: $00
	ld   b, $5a                                      ; $5c0b: $06 $5a
	nop                                              ; $5c0d: $00
	rrca                                             ; $5c0e: $0f
	nop                                              ; $5c0f: $00
	ld   bc, $5201                                   ; $5c10: $01 $01 $52
	ld   d, [hl]                                     ; $5c13: $56
	rst  $38                                         ; $5c14: $ff
	rst  $38                                         ; $5c15: $ff
	sbc  a                                           ; $5c16: $9f
	dec  c                                           ; $5c17: $0d
	halt                                             ; $5c18: $76
	ld   e, l                                        ; $5c19: $5d
	ld   a, c                                        ; $5c1a: $79
	inc  b                                           ; $5c1b: $04
	di                                               ; $5c1c: $f3
	ld   [bc], a                                     ; $5c1d: $02
	jp   Jump_051_5276                               ; $5c1e: $c3 $76 $52


	ld   d, h                                        ; $5c21: $54
	sbc  l                                           ; $5c22: $9d
	ld   e, a                                        ; $5c23: $5f
	ld   [hl], l                                     ; $5c24: $75
	ld   a, l                                        ; $5c25: $7d
	rst  $38                                         ; $5c26: $ff
	sbc  a                                           ; $5c27: $9f
	dec  c                                           ; $5c28: $0d
	nop                                              ; $5c29: $00
	ld   a, [bc]                                     ; $5c2a: $0a
	rlca                                             ; $5c2b: $07
	rst  JumpTable                                         ; $5c2c: $df
	nop                                              ; $5c2d: $00
	inc  bc                                          ; $5c2e: $03
	jr   nz, jr_051_5c32                             ; $5c2f: $20 $01

	ld   h, h                                        ; $5c31: $64

jr_051_5c32:
	inc  hl                                          ; $5c32: $23
	nop                                              ; $5c33: $00
	rrca                                             ; $5c34: $0f
	add  hl, bc                                      ; $5c35: $09
	nop                                              ; $5c36: $00
	ld   bc, $546b                                   ; $5c37: $01 $6b $54
	ld   e, c                                        ; $5c3a: $59
	rst  $38                                         ; $5c3b: $ff
	rst  $38                                         ; $5c3c: $ff
	adc  h                                           ; $5c3d: $8c
	ld   d, b                                        ; $5c3e: $50
	sbc  [hl]                                        ; $5c3f: $9e
	dec  c                                           ; $5c40: $0d
	ld   a, b                                        ; $5c41: $78
	ld   a, c                                        ; $5c42: $79
	ld   e, c                                        ; $5c43: $59
	ld   [bc], a                                     ; $5c44: $02
	ld   a, [de]                                     ; $5c45: $1a
	dec  b                                           ; $5c46: $05
	ldh  a, [$5a]                                    ; $5c47: $f0 $5a
	ld   d, b                                        ; $5c49: $50
	sbc  c                                           ; $5c4a: $99
	ld   a, b                                        ; $5c4b: $78
	sub  a                                           ; $5c4c: $97
	dec  c                                           ; $5c4d: $0d
	ld   d, d                                        ; $5c4e: $52
	ld   [hl], d                                     ; $5c4f: $72
	ld   [hl], l                                     ; $5c50: $75
	sub  b                                           ; $5c51: $90
	dec  b                                           ; $5c52: $05
	db   $10                                         ; $5c53: $10
	sbc  c                                           ; $5c54: $99
	halt                                             ; $5c55: $76
	ld   d, d                                        ; $5c56: $52
	ld   d, d                                        ; $5c57: $52
	sbc  a                                           ; $5c58: $9f
	dec  c                                           ; $5c59: $0d
	nop                                              ; $5c5a: $00
	ld   a, [bc]                                     ; $5c5b: $0a
	rrca                                             ; $5c5c: $0f
	nop                                              ; $5c5d: $00
	ld   bc, $7d01                                   ; $5c5e: $01 $01 $7d
	rst  $38                                         ; $5c61: $ff
	rst  $38                                         ; $5c62: $ff
	ld   a, l                                        ; $5c63: $7d
	ld   d, d                                        ; $5c64: $52
	sbc  a                                           ; $5c65: $9f
	dec  c                                           ; $5c66: $0d
	ld   d, b                                        ; $5c67: $50
	sbc  b                                           ; $5c68: $98
	ld   e, d                                        ; $5c69: $5a
	halt                                             ; $5c6a: $76
	ld   d, h                                        ; $5c6b: $54
	ld   h, d                                        ; $5c6c: $62
	ld   h, h                                        ; $5c6d: $64
	ld   d, d                                        ; $5c6e: $52
	adc  h                                           ; $5c6f: $8c
	ld   h, a                                        ; $5c70: $67
	sbc  a                                           ; $5c71: $9f
	dec  c                                           ; $5c72: $0d
	nop                                              ; $5c73: $00
	ld   a, [bc]                                     ; $5c74: $0a
	rrca                                             ; $5c75: $0f
	add  hl, bc                                      ; $5c76: $09
	nop                                              ; $5c77: $00
	ld   bc, $9a6b                                   ; $5c78: $01 $6b $9a
	ld   h, [hl]                                     ; $5c7b: $66
	sub  c                                           ; $5c7c: $91
	sbc  [hl]                                        ; $5c7d: $9e
	dec  b                                           ; $5c7e: $05
	ld   [hl], e                                     ; $5c7f: $73
	sub  b                                           ; $5c80: $90
	inc  bc                                          ; $5c81: $03
	dec  c                                           ; $5c82: $0d
	ld   [bc], a                                     ; $5c83: $02
	jp   Jump_051_505a                               ; $5c84: $c3 $5a $50


	sbc  c                                           ; $5c87: $99
	ld   e, c                                        ; $5c88: $59
	sub  a                                           ; $5c89: $97
	dec  c                                           ; $5c8a: $0d
	ld   h, c                                        ; $5c8b: $61
	sbc  d                                           ; $5c8c: $9a
	ld   [hl], l                                     ; $5c8d: $75
	sbc  a                                           ; $5c8e: $9f
	dec  c                                           ; $5c8f: $0d
	nop                                              ; $5c90: $00
	ld   a, [bc]                                     ; $5c91: $0a
	nop                                              ; $5c92: $00
	inc  e                                           ; $5c93: $1c
	add  hl, bc                                      ; $5c94: $09
	dec  b                                           ; $5c95: $05
	ld   a, [bc]                                     ; $5c96: $0a
	ld   bc, $0008                                   ; $5c97: $01 $08 $00
	ld   e, l                                        ; $5c9a: $5d
	and  c                                           ; $5c9b: $a1
	sbc  a                                           ; $5c9c: $9f
	dec  c                                           ; $5c9d: $0d
	ld   a, b                                        ; $5c9e: $78
	and  c                                           ; $5c9f: $a1
	ld   l, [hl]                                     ; $5ca0: $6e
	ld   e, c                                        ; $5ca1: $59
	ld   [bc], a                                     ; $5ca2: $02
	ld   [hl], d                                     ; $5ca3: $72
	inc  bc                                          ; $5ca4: $03
	dec  bc                                          ; $5ca5: $0b
	ld   e, d                                        ; $5ca6: $5a
	ld   [bc], a                                     ; $5ca7: $02
	jr   z, jr_051_5cfc                              ; $5ca8: $28 $52

	ld   l, h                                        ; $5caa: $6c
	sbc  a                                           ; $5cab: $9f
	dec  c                                           ; $5cac: $0d
	nop                                              ; $5cad: $00
	ld   a, [bc]                                     ; $5cae: $0a
	inc  e                                           ; $5caf: $1c
	add  hl, bc                                      ; $5cb0: $09
	nop                                              ; $5cb1: $00
	nop                                              ; $5cb2: $00
	ld   bc, $a15a                                   ; $5cb3: $01 $5a $a1
	ld   a, [hl]                                     ; $5cb6: $7e
	sbc  c                                           ; $5cb7: $99
	ld   a, h                                        ; $5cb8: $7c
	sub  b                                           ; $5cb9: $90
	ld   d, d                                        ; $5cba: $52
	ld   d, d                                        ; $5cbb: $52
	ld   e, d                                        ; $5cbc: $5a
	sbc  [hl]                                        ; $5cbd: $9e
	dec  c                                           ; $5cbe: $0d
	ld   l, l                                        ; $5cbf: $6d
	adc  h                                           ; $5cc0: $8c
	ld   a, c                                        ; $5cc1: $79
	ld   a, l                                        ; $5cc2: $7d
	inc  bc                                          ; $5cc3: $03
	and  a                                           ; $5cc4: $a7
	adc  l                                           ; $5cc5: $8d
	and  b                                           ; $5cc6: $a0
	halt                                             ; $5cc7: $76
	sub  a                                           ; $5cc8: $97
	ld   a, b                                        ; $5cc9: $78
	ld   d, d                                        ; $5cca: $52
	halt                                             ; $5ccb: $76
	dec  c                                           ; $5ccc: $0d
	inc  b                                           ; $5ccd: $04
	dec  c                                           ; $5cce: $0d
	ld   e, d                                        ; $5ccf: $5a
	sub  b                                           ; $5cd0: $90
	ld   l, l                                        ; $5cd1: $6d
	ld   a, b                                        ; $5cd2: $78
	ld   d, d                                        ; $5cd3: $52
	ld   l, h                                        ; $5cd4: $6c
	sbc  a                                           ; $5cd5: $9f
	dec  c                                           ; $5cd6: $0d
	nop                                              ; $5cd7: $00
	ld   a, [bc]                                     ; $5cd8: $0a
	ld   bc, $0a04                                   ; $5cd9: $01 $04 $0a
	ld   [bc], a                                     ; $5cdc: $02
	nop                                              ; $5cdd: $00
	ld   a, c                                        ; $5cde: $79
	halt                                             ; $5cdf: $76
	ld   [hl], c                                     ; $5ce0: $71
	ld   [hl], h                                     ; $5ce1: $74
	ld   a, l                                        ; $5ce2: $7d
	inc  bc                                          ; $5ce3: $03
	sub  h                                           ; $5ce4: $94
	dec  b                                           ; $5ce5: $05
	inc  sp                                          ; $5ce6: $33
	ld   [bc], a                                     ; $5ce7: $02
	ld   l, b                                        ; $5ce8: $68
	dec  b                                           ; $5ce9: $05
	ld   de, $0d90                                   ; $5cea: $11 $90 $0d
	inc  b                                           ; $5ced: $04
	ld   c, $02                                      ; $5cee: $0e $02
	jp   $0378                                       ; $5cf0: $c3 $78 $03


	dec  c                                           ; $5cf3: $0d
	ld   [bc], a                                     ; $5cf4: $02
	jp   Jump_051_547c                               ; $5cf5: $c3 $7c $54


	ld   l, a                                        ; $5cf8: $6f
	ld   l, [hl]                                     ; $5cf9: $6e
	ld   e, c                                        ; $5cfa: $59
	sub  a                                           ; $5cfb: $97

jr_051_5cfc:
	ld   a, b                                        ; $5cfc: $78
	sbc  a                                           ; $5cfd: $9f
	dec  c                                           ; $5cfe: $0d
	nop                                              ; $5cff: $00
	ld   a, [bc]                                     ; $5d00: $0a
	rrca                                             ; $5d01: $0f
	nop                                              ; $5d02: $00
	ld   bc, $7d01                                   ; $5d03: $01 $01 $7d
	rst  $38                                         ; $5d06: $ff
	rst  $38                                         ; $5d07: $ff
	ld   a, l                                        ; $5d08: $7d
	ld   d, d                                        ; $5d09: $52
	sbc  a                                           ; $5d0a: $9f
	dec  c                                           ; $5d0b: $0d
	ld   [bc], a                                     ; $5d0c: $02
	and  c                                           ; $5d0d: $a1
	and  b                                           ; $5d0e: $a0
	ld   [hl], d                                     ; $5d0f: $72
	ld   e, a                                        ; $5d10: $5f
	adc  h                                           ; $5d11: $8c
	ld   h, a                                        ; $5d12: $67
	sbc  a                                           ; $5d13: $9f
	dec  c                                           ; $5d14: $0d
	nop                                              ; $5d15: $00
	ld   a, [bc]                                     ; $5d16: $0a
	inc  e                                           ; $5d17: $1c
	add  hl, bc                                      ; $5d18: $09
	ld   bc, $0101                                   ; $5d19: $01 $01 $01
	ld   d, h                                        ; $5d1c: $54
	and  c                                           ; $5d1d: $a1
	sbc  a                                           ; $5d1e: $9f
	dec  c                                           ; $5d1f: $0d
	ld   l, e                                        ; $5d20: $6b
	sbc  d                                           ; $5d21: $9a
	ld   h, [hl]                                     ; $5d22: $66
	sub  c                                           ; $5d23: $91
	sbc  [hl]                                        ; $5d24: $9e
	dec  b                                           ; $5d25: $05
	ld   [hl], e                                     ; $5d26: $73
	sub  b                                           ; $5d27: $90
	ld   l, e                                        ; $5d28: $6b
	sbc  e                                           ; $5d29: $9b
	ld   l, e                                        ; $5d2a: $6b
	sbc  e                                           ; $5d2b: $9b
	inc  bc                                          ; $5d2c: $03
	dec  c                                           ; $5d2d: $0d
	ld   [bc], a                                     ; $5d2e: $02
	jp   $0d79                                       ; $5d2f: $c3 $79 $0d


	sub  b                                           ; $5d32: $90
	ld   [hl], a                                     ; $5d33: $77
	sbc  c                                           ; $5d34: $99
	ld   e, c                                        ; $5d35: $59
	sub  a                                           ; $5d36: $97
	ld   h, c                                        ; $5d37: $61
	sbc  d                                           ; $5d38: $9a
	ld   [hl], l                                     ; $5d39: $75
	sbc  a                                           ; $5d3a: $9f
	dec  c                                           ; $5d3b: $0d
	nop                                              ; $5d3c: $00
	ld   a, [bc]                                     ; $5d3d: $0a
	nop                                              ; $5d3e: $00
	rrca                                             ; $5d3f: $0f
	nop                                              ; $5d40: $00
	ld   bc, $5001                                   ; $5d41: $01 $01 $50
	ld   a, h                                        ; $5d44: $7c
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	ld   l, a                                        ; $5d47: $6f
	sub  l                                           ; $5d48: $95
	ld   [hl], c                                     ; $5d49: $71
	halt                                             ; $5d4a: $76
	dec  c                                           ; $5d4b: $0d
	ld   e, b                                        ; $5d4c: $58
	ld   [bc], a                                     ; $5d4d: $02
	jp   nz, Jump_051_655b                           ; $5d4e: $c2 $5b $65

	ld   l, l                                        ; $5d51: $6d
	ld   d, d                                        ; $5d52: $52
	ld   h, c                                        ; $5d53: $61
	halt                                             ; $5d54: $76
	ld   e, d                                        ; $5d55: $5a
	dec  c                                           ; $5d56: $0d
	ld   d, b                                        ; $5d57: $50
	sbc  c                                           ; $5d58: $99
	and  c                                           ; $5d59: $a1
	ld   [hl], l                                     ; $5d5a: $75
	ld   h, a                                        ; $5d5b: $67
	ld   e, a                                        ; $5d5c: $5f
	ld   [hl], a                                     ; $5d5d: $77
	rst  $38                                         ; $5d5e: $ff
	dec  c                                           ; $5d5f: $0d
	nop                                              ; $5d60: $00
	ld   a, [bc]                                     ; $5d61: $0a
	rrca                                             ; $5d62: $0f
	add  hl, bc                                      ; $5d63: $09
	nop                                              ; $5d64: $00
	ld   bc, $ffff                                   ; $5d65: $01 $ff $ff
	ld   [bc], a                                     ; $5d68: $02
	jp   nz, $6d5b                                   ; $5d69: $c2 $5b $6d

	ld   d, d                                        ; $5d6c: $52
	ld   h, c                                        ; $5d6d: $61
	halt                                             ; $5d6e: $76
	ld   sp, hl                                      ; $5d6f: $f9
	dec  c                                           ; $5d70: $0d
	nop                                              ; $5d71: $00
	ld   a, [bc]                                     ; $5d72: $0a
	jr   jr_051_5d78                                 ; $5d73: $18 $03

	ld   bc, $5d63                                   ; $5d75: $01 $63 $5d

jr_051_5d78:
	sub  a                                           ; $5d78: $97
	ld   e, c                                        ; $5d79: $59
	sub  a                                           ; $5d7a: $97
	ld   a, h                                        ; $5d7b: $7c
	inc  b                                           ; $5d7c: $04
	ld   d, a                                        ; $5d7d: $57
	inc  b                                           ; $5d7e: $04
	ld   h, e                                        ; $5d7f: $63
	and  b                                           ; $5d80: $a0
	ld   e, e                                        ; $5d81: $5b
	ld   e, l                                        ; $5d82: $5d
	nop                                              ; $5d83: $00
	nop                                              ; $5d84: $00
	ld   h, a                                        ; $5d85: $67
	adc  l                                           ; $5d86: $8d
	sbc  d                                           ; $5d87: $9a
	ld   e, c                                        ; $5d88: $59
	sub  a                                           ; $5d89: $97
	ld   a, h                                        ; $5d8a: $7c
	inc  b                                           ; $5d8b: $04
	ld   d, a                                        ; $5d8c: $57
	inc  b                                           ; $5d8d: $04
	ld   h, e                                        ; $5d8e: $63
	and  b                                           ; $5d8f: $a0
	ld   e, e                                        ; $5d90: $5b
	ld   e, l                                        ; $5d91: $5d
	nop                                              ; $5d92: $00
	ld   bc, $7c6b                                   ; $5d93: $01 $6b $7c
	inc  b                                           ; $5d96: $04
	ld   e, $7c                                      ; $5d97: $1e $7c
	inc  bc                                          ; $5d99: $03
	add  d                                           ; $5d9a: $82
	ld   a, h                                        ; $5d9b: $7c
	inc  b                                           ; $5d9c: $04
	ld   d, a                                        ; $5d9d: $57
	inc  b                                           ; $5d9e: $04
	ld   h, e                                        ; $5d9f: $63
	and  b                                           ; $5da0: $a0
	ld   e, e                                        ; $5da1: $5b
	ld   e, l                                        ; $5da2: $5d
	nop                                              ; $5da3: $00
	ld   [bc], a                                     ; $5da4: $02
	rlca                                             ; $5da5: $07
	ld   h, $03                                      ; $5da6: $26 $03
	ld   [bc], a                                     ; $5da8: $02
	ld   [bc], a                                     ; $5da9: $02
	ld   bc, $2000                                   ; $5daa: $01 $00 $20
	nop                                              ; $5dad: $00
	rlca                                             ; $5dae: $07
	ld   d, d                                        ; $5daf: $52
	inc  b                                           ; $5db0: $04
	ld   [bc], a                                     ; $5db1: $02
	ld   [bc], a                                     ; $5db2: $02
	ld   bc, $2001                                   ; $5db3: $01 $01 $20
	nop                                              ; $5db6: $00
	rlca                                             ; $5db7: $07
	inc  c                                           ; $5db8: $0c
	ld   [bc], a                                     ; $5db9: $02
	ld   [bc], a                                     ; $5dba: $02
	ld   [bc], a                                     ; $5dbb: $02
	ld   bc, $2002                                   ; $5dbc: $01 $02 $20
	nop                                              ; $5dbf: $00
	jr   jr_051_5dc5                                 ; $5dc0: $18 $03

	ld   bc, $ecdf                                   ; $5dc2: $01 $df $ec

jr_051_5dc5:
	and  e                                           ; $5dc5: $a3
	ld   e, c                                        ; $5dc6: $59
	sub  a                                           ; $5dc7: $97
	ld   a, h                                        ; $5dc8: $7c
	inc  b                                           ; $5dc9: $04
	ld   d, a                                        ; $5dca: $57
	inc  b                                           ; $5dcb: $04
	ld   h, e                                        ; $5dcc: $63
	and  b                                           ; $5dcd: $a0
	ld   e, e                                        ; $5dce: $5b
	ld   e, l                                        ; $5dcf: $5d
	nop                                              ; $5dd0: $00
	nop                                              ; $5dd1: $00
	xor  h                                           ; $5dd2: $ac
	push af                                          ; $5dd3: $f5
	bit  3, c                                        ; $5dd4: $cb $59
	sub  a                                           ; $5dd6: $97
	ld   a, h                                        ; $5dd7: $7c
	inc  b                                           ; $5dd8: $04
	ld   d, a                                        ; $5dd9: $57
	inc  b                                           ; $5dda: $04
	ld   h, e                                        ; $5ddb: $63
	and  b                                           ; $5ddc: $a0
	ld   e, e                                        ; $5ddd: $5b
	ld   e, l                                        ; $5dde: $5d
	nop                                              ; $5ddf: $00
	ld   bc, $7c6b                                   ; $5de0: $01 $6b $7c
	inc  b                                           ; $5de3: $04
	ld   e, $7c                                      ; $5de4: $1e $7c
	inc  bc                                          ; $5de6: $03
	add  d                                           ; $5de7: $82
	ld   a, h                                        ; $5de8: $7c
	inc  b                                           ; $5de9: $04
	ld   d, a                                        ; $5dea: $57
	inc  b                                           ; $5deb: $04
	ld   h, e                                        ; $5dec: $63
	and  b                                           ; $5ded: $a0
	ld   e, e                                        ; $5dee: $5b
	ld   e, l                                        ; $5def: $5d
	nop                                              ; $5df0: $00
	ld   [bc], a                                     ; $5df1: $02
	rlca                                             ; $5df2: $07
	ld   a, [hl]                                     ; $5df3: $7e
	dec  b                                           ; $5df4: $05
	ld   [bc], a                                     ; $5df5: $02
	ld   [bc], a                                     ; $5df6: $02
	ld   bc, $2000                                   ; $5df7: $01 $00 $20
	nop                                              ; $5dfa: $00
	rlca                                             ; $5dfb: $07
	or   $08                                         ; $5dfc: $f6 $08
	ld   [bc], a                                     ; $5dfe: $02
	ld   [bc], a                                     ; $5dff: $02
	ld   bc, $2001                                   ; $5e00: $01 $01 $20
	nop                                              ; $5e03: $00
	rlca                                             ; $5e04: $07
	ld   e, c                                        ; $5e05: $59
	ld   [bc], a                                     ; $5e06: $02
	ld   [bc], a                                     ; $5e07: $02
	ld   [bc], a                                     ; $5e08: $02
	ld   bc, $2002                                   ; $5e09: $01 $02 $20
	nop                                              ; $5e0c: $00
	jr   jr_051_5e12                                 ; $5e0d: $18 $03

	ld   bc, $cf02                                   ; $5e0f: $01 $02 $cf

jr_051_5e12:
	dec  b                                           ; $5e12: $05
	ld   a, [de]                                     ; $5e13: $1a
	ld   e, c                                        ; $5e14: $59
	sub  a                                           ; $5e15: $97
	ld   a, h                                        ; $5e16: $7c
	inc  b                                           ; $5e17: $04
	ld   d, a                                        ; $5e18: $57
	inc  b                                           ; $5e19: $04
	ld   h, e                                        ; $5e1a: $63
	and  b                                           ; $5e1b: $a0
	ld   e, e                                        ; $5e1c: $5b
	ld   e, l                                        ; $5e1d: $5d
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	and  e                                           ; $5e20: $a3
	and  l                                           ; $5e21: $a5
	db   $ec                                         ; $5e22: $ec
	cp   d                                           ; $5e23: $ba
	ld   e, c                                        ; $5e24: $59
	sub  a                                           ; $5e25: $97
	ld   a, h                                        ; $5e26: $7c
	inc  b                                           ; $5e27: $04
	ld   d, a                                        ; $5e28: $57
	inc  b                                           ; $5e29: $04
	ld   h, e                                        ; $5e2a: $63
	and  b                                           ; $5e2b: $a0
	ld   e, e                                        ; $5e2c: $5b
	ld   e, l                                        ; $5e2d: $5d
	nop                                              ; $5e2e: $00
	ld   bc, $7c6b                                   ; $5e2f: $01 $6b $7c
	inc  b                                           ; $5e32: $04
	ld   e, $7c                                      ; $5e33: $1e $7c
	inc  bc                                          ; $5e35: $03
	add  d                                           ; $5e36: $82
	ld   a, h                                        ; $5e37: $7c
	inc  b                                           ; $5e38: $04
	ld   d, a                                        ; $5e39: $57
	inc  b                                           ; $5e3a: $04
	ld   h, e                                        ; $5e3b: $63
	and  b                                           ; $5e3c: $a0
	ld   e, e                                        ; $5e3d: $5b
	ld   e, l                                        ; $5e3e: $5d
	nop                                              ; $5e3f: $00
	ld   [bc], a                                     ; $5e40: $02
	rlca                                             ; $5e41: $07
	call z, $0207                                    ; $5e42: $cc $07 $02
	ld   [bc], a                                     ; $5e45: $02
	ld   bc, $2000                                   ; $5e46: $01 $00 $20
	nop                                              ; $5e49: $00
	rlca                                             ; $5e4a: $07
	and  h                                           ; $5e4b: $a4
	ld   b, $02                                      ; $5e4c: $06 $02
	ld   [bc], a                                     ; $5e4e: $02
	ld   bc, $2001                                   ; $5e4f: $01 $01 $20
	nop                                              ; $5e52: $00
	rlca                                             ; $5e53: $07
	xor  b                                           ; $5e54: $a8
	ld   [bc], a                                     ; $5e55: $02
	ld   [bc], a                                     ; $5e56: $02
	ld   [bc], a                                     ; $5e57: $02
	ld   bc, $2002                                   ; $5e58: $01 $02 $20
	nop                                              ; $5e5b: $00
	jr   @+$04                                       ; $5e5c: $18 $02

	ld   bc, $7192                                   ; $5e5e: $01 $92 $71
	ld   a, a                                        ; $5e61: $7f
	sbc  b                                           ; $5e62: $98
	sub  d                                           ; $5e63: $92
	adc  a                                           ; $5e64: $8f
	sbc  c                                           ; $5e65: $99
	nop                                              ; $5e66: $00
	nop                                              ; $5e67: $00
	ld   l, e                                        ; $5e68: $6b
	ld   a, h                                        ; $5e69: $7c
	inc  b                                           ; $5e6a: $04
	ld   e, $7c                                      ; $5e6b: $1e $7c
	inc  bc                                          ; $5e6d: $03
	add  d                                           ; $5e6e: $82
	ld   a, h                                        ; $5e6f: $7c
	inc  b                                           ; $5e70: $04
	ld   d, a                                        ; $5e71: $57
	inc  b                                           ; $5e72: $04
	ld   h, e                                        ; $5e73: $63
	and  b                                           ; $5e74: $a0
	ld   e, e                                        ; $5e75: $5b
	ld   e, l                                        ; $5e76: $5d
	nop                                              ; $5e77: $00
	ld   bc, $d707                                   ; $5e78: $01 $07 $d7
	ld   [bc], a                                     ; $5e7b: $02
	ld   [bc], a                                     ; $5e7c: $02
	ld   [bc], a                                     ; $5e7d: $02
	ld   bc, $2000                                   ; $5e7e: $01 $00 $20
	nop                                              ; $5e81: $00
	rlca                                             ; $5e82: $07
	cp   a                                           ; $5e83: $bf
	ld   bc, $0202                                   ; $5e84: $01 $02 $02
	ld   bc, $2001                                   ; $5e87: $01 $01 $20
	nop                                              ; $5e8a: $00
	rrca                                             ; $5e8b: $0f
	nop                                              ; $5e8c: $00
	ld   bc, $5001                                   ; $5e8d: $01 $01 $50
	sbc  [hl]                                        ; $5e90: $9e
	sub  d                                           ; $5e91: $92
	ld   [hl], c                                     ; $5e92: $71
	ld   a, a                                        ; $5e93: $7f
	sbc  b                                           ; $5e94: $98
	ld   d, d                                        ; $5e95: $52
	ld   d, d                                        ; $5e96: $52
	ld   [hl], l                                     ; $5e97: $75
	ld   h, a                                        ; $5e98: $67
	sbc  a                                           ; $5e99: $9f
	dec  c                                           ; $5e9a: $0d
	ld   [hl], l                                     ; $5e9b: $75
	ld   a, l                                        ; $5e9c: $7d
	sbc  [hl]                                        ; $5e9d: $9e
	inc  bc                                          ; $5e9e: $03
	add  e                                           ; $5e9f: $83
	dec  b                                           ; $5ea0: $05
	dec  c                                           ; $5ea1: $0d
	ld   h, l                                        ; $5ea2: $65
	adc  h                                           ; $5ea3: $8c
	ld   h, a                                        ; $5ea4: $67
	sbc  a                                           ; $5ea5: $9f
	dec  c                                           ; $5ea6: $0d
	nop                                              ; $5ea7: $00
	ld   a, [bc]                                     ; $5ea8: $0a
	rrca                                             ; $5ea9: $0f
	add  hl, bc                                      ; $5eaa: $09
	nop                                              ; $5eab: $00
	ld   bc, $546b                                   ; $5eac: $01 $6b $54
	ld   e, c                                        ; $5eaf: $59
	ld   d, d                                        ; $5eb0: $52
	sbc  a                                           ; $5eb1: $9f
	dec  c                                           ; $5eb2: $0d
	ld   [hl], l                                     ; $5eb3: $75
	sub  b                                           ; $5eb4: $90
	sbc  [hl]                                        ; $5eb5: $9e
	inc  b                                           ; $5eb6: $04
	di                                               ; $5eb7: $f3
	ld   e, d                                        ; $5eb8: $5a
	ld   d, b                                        ; $5eb9: $50
	ld   [hl], c                                     ; $5eba: $71
	ld   l, l                                        ; $5ebb: $6d
	sub  a                                           ; $5ebc: $97
	dec  c                                           ; $5ebd: $0d
	ld   d, d                                        ; $5ebe: $52
	ld   [hl], d                                     ; $5ebf: $72
	ld   [hl], l                                     ; $5ec0: $75
	sub  b                                           ; $5ec1: $90
	dec  b                                           ; $5ec2: $05
	db   $10                                         ; $5ec3: $10
	sbc  c                                           ; $5ec4: $99
	halt                                             ; $5ec5: $76
	ld   d, d                                        ; $5ec6: $52
	ld   d, d                                        ; $5ec7: $52
	sbc  a                                           ; $5ec8: $9f
	dec  c                                           ; $5ec9: $0d
	nop                                              ; $5eca: $00
	ld   a, [bc]                                     ; $5ecb: $0a
	ld   bc, $9166                                   ; $5ecc: $01 $66 $91
	sbc  [hl]                                        ; $5ecf: $9e
	ld   e, d                                        ; $5ed0: $5a
	and  c                                           ; $5ed1: $a1
	ld   a, [hl]                                     ; $5ed2: $7e
	sbc  d                                           ; $5ed3: $9a
	sub  [hl]                                        ; $5ed4: $96
	sbc  a                                           ; $5ed5: $9f
	dec  c                                           ; $5ed6: $0d
	nop                                              ; $5ed7: $00
	ld   a, [bc]                                     ; $5ed8: $0a
	nop                                              ; $5ed9: $00
	rrca                                             ; $5eda: $0f
	nop                                              ; $5edb: $00
	ld   bc, $6301                                   ; $5edc: $01 $01 $63

jr_051_5edf:
	ld   e, l                                        ; $5edf: $5d
	sub  a                                           ; $5ee0: $97
	ld   h, e                                        ; $5ee1: $63
	and  c                                           ; $5ee2: $a1
	ld   a, h                                        ; $5ee3: $7c
	inc  b                                           ; $5ee4: $04
	ld   l, l                                        ; $5ee5: $6d
	add  [hl]                                        ; $5ee6: $86
	ld   a, h                                        ; $5ee7: $7c
	inc  b                                           ; $5ee8: $04
	ld   d, a                                        ; $5ee9: $57
	inc  b                                           ; $5eea: $04
	ld   h, e                                        ; $5eeb: $63
	ld   [hl], c                                     ; $5eec: $71
	ld   [hl], h                                     ; $5eed: $74
	dec  c                                           ; $5eee: $0d
	ld   [hl], a                                     ; $5eef: $77
	ld   d, h                                        ; $5ef0: $54
	ld   a, b                                        ; $5ef1: $78
	and  c                                           ; $5ef2: $a1
	ld   [hl], l                                     ; $5ef3: $75
	ld   h, l                                        ; $5ef4: $65
	sub  l                                           ; $5ef5: $95

jr_051_5ef6:
	ld   d, h                                        ; $5ef6: $54
	ld   e, c                                        ; $5ef7: $59
	ld   sp, hl                                      ; $5ef8: $f9
	dec  c                                           ; $5ef9: $0d
	nop                                              ; $5efa: $00
	ld   a, [bc]                                     ; $5efb: $0a
	rrca                                             ; $5efc: $0f
	add  hl, bc                                      ; $5efd: $09
	nop                                              ; $5efe: $00
	ld   bc, $8e83                                   ; $5eff: $01 $83 $8e
	sbc  [hl]                                        ; $5f02: $9e
	ld   l, e                                        ; $5f03: $6b
	ld   d, h                                        ; $5f04: $54
	ld   l, [hl]                                     ; $5f05: $6e
	ld   a, b                                        ; $5f06: $78
	rst  $38                                         ; $5f07: $ff
	rst  $38                                         ; $5f08: $ff
	dec  c                                           ; $5f09: $0d
	nop                                              ; $5f0a: $00
	ld   a, [bc]                                     ; $5f0b: $0a
	rlca                                             ; $5f0c: $07
	ret  nz                                          ; $5f0d: $c0

	inc  bc                                          ; $5f0e: $03
	inc  bc                                          ; $5f0f: $03
	ld   de, $6401                                   ; $5f10: $11 $01 $64
	inc  hl                                          ; $5f13: $23
	nop                                              ; $5f14: $00
	rlca                                             ; $5f15: $07
	rrca                                             ; $5f16: $0f
	inc  b                                           ; $5f17: $04
	inc  bc                                          ; $5f18: $03
	ld   de, $9601                                   ; $5f19: $11 $01 $96
	dec  h                                           ; $5f1c: $25
	nop                                              ; $5f1d: $00
	ld   bc, $5d63                                   ; $5f1e: $01 $63 $5d
	sub  a                                           ; $5f21: $97
	ld   e, l                                        ; $5f22: $5d
	and  c                                           ; $5f23: $a1
	ld   a, h                                        ; $5f24: $7c
	sbc  [hl]                                        ; $5f25: $9e
	ld   [$5d00], sp                                 ; $5f26: $08 $00 $5d
	and  c                                           ; $5f29: $a1
	dec  c                                           ; $5f2a: $0d
	add  [hl]                                        ; $5f2b: $86
	ld   a, h                                        ; $5f2c: $7c
	inc  b                                           ; $5f2d: $04
	ld   d, a                                        ; $5f2e: $57
	inc  b                                           ; $5f2f: $04
	ld   h, e                                        ; $5f30: $63
	ld   a, l                                        ; $5f31: $7d
	sbc  [hl]                                        ; $5f32: $9e
	adc  h                                           ; $5f33: $8c
	ld   d, b                                        ; $5f34: $50
	adc  h                                           ; $5f35: $8c
	ld   d, b                                        ; $5f36: $50
	dec  c                                           ; $5f37: $0d
	halt                                             ; $5f38: $76
	ld   d, d                                        ; $5f39: $52
	ld   [hl], c                                     ; $5f3a: $71
	ld   l, l                                        ; $5f3b: $6d
	halt                                             ; $5f3c: $76
	ld   h, c                                        ; $5f3d: $61
	sbc  e                                           ; $5f3e: $9b
	ld   e, c                                        ; $5f3f: $59
	ld   a, b                                        ; $5f40: $78
	sbc  a                                           ; $5f41: $9f
	dec  c                                           ; $5f42: $0d
	nop                                              ; $5f43: $00
	ld   a, [bc]                                     ; $5f44: $0a
	ld   bc, $5d76                                   ; $5f45: $01 $76 $5d
	ld   a, c                                        ; $5f48: $79
	ld   [bc], a                                     ; $5f49: $02
	jr   z, jr_051_5f9e                              ; $5f4a: $28 $52

	dec  b                                           ; $5f4c: $05
	jr   nz, jr_051_5edf                             ; $5f4d: $20 $90

	ld   [bc], a                                     ; $5f4f: $02
	jp   nz, Jump_051_7859                           ; $5f50: $c2 $59 $78

	ld   d, d                                        ; $5f53: $52
	ld   h, l                                        ; $5f54: $65
	rst  $38                                         ; $5f55: $ff
	rst  $38                                         ; $5f56: $ff
	dec  c                                           ; $5f57: $0d
	ld   e, c                                        ; $5f58: $59
	halt                                             ; $5f59: $76
	ld   d, d                                        ; $5f5a: $52
	ld   [hl], c                                     ; $5f5b: $71
	ld   [hl], h                                     ; $5f5c: $74
	sbc  [hl]                                        ; $5f5d: $9e
	ld   d, d                                        ; $5f5e: $52
	ld   d, d                                        ; $5f5f: $52
	halt                                             ; $5f60: $76
	ld   d, d                                        ; $5f61: $52
	ld   d, h                                        ; $5f62: $54
	dec  b                                           ; $5f63: $05
	jr   nz, jr_051_5ef6                             ; $5f64: $20 $90

	dec  c                                           ; $5f66: $0d
	ld   [bc], a                                     ; $5f67: $02
	jp   nz, Jump_051_7859                           ; $5f68: $c2 $59 $78

	ld   d, d                                        ; $5f6b: $52
	ld   a, b                                        ; $5f6c: $78
	sbc  a                                           ; $5f6d: $9f
	dec  c                                           ; $5f6e: $0d
	nop                                              ; $5f6f: $00
	ld   a, [bc]                                     ; $5f70: $0a
	ld   b, $1c                                      ; $5f71: $06 $1c
	ld   a, [bc]                                     ; $5f73: $0a
	ld   bc, $5d63                                   ; $5f74: $01 $63 $5d
	sub  a                                           ; $5f77: $97
	ld   e, l                                        ; $5f78: $5d
	and  c                                           ; $5f79: $a1
	ld   a, h                                        ; $5f7a: $7c
	sbc  [hl]                                        ; $5f7b: $9e
	ld   [$5d00], sp                                 ; $5f7c: $08 $00 $5d
	and  c                                           ; $5f7f: $a1
	dec  c                                           ; $5f80: $0d
	add  [hl]                                        ; $5f81: $86
	ld   a, h                                        ; $5f82: $7c
	inc  b                                           ; $5f83: $04
	ld   d, a                                        ; $5f84: $57
	inc  b                                           ; $5f85: $04
	ld   h, e                                        ; $5f86: $63
	ld   a, l                                        ; $5f87: $7d
	rst  $38                                         ; $5f88: $ff
	rst  $38                                         ; $5f89: $ff
	dec  c                                           ; $5f8a: $0d
	ld   d, b                                        ; $5f8b: $50
	adc  h                                           ; $5f8c: $8c
	sbc  b                                           ; $5f8d: $98
	sub  [hl]                                        ; $5f8e: $96
	ld   e, l                                        ; $5f8f: $5d
	ld   a, b                                        ; $5f90: $78
	ld   d, d                                        ; $5f91: $52
	ld   a, b                                        ; $5f92: $78
	sbc  a                                           ; $5f93: $9f
	dec  c                                           ; $5f94: $0d
	nop                                              ; $5f95: $00
	ld   a, [bc]                                     ; $5f96: $0a
	ld   bc, $7190                                   ; $5f97: $01 $90 $71
	halt                                             ; $5f9a: $76
	ld   [bc], a                                     ; $5f9b: $02
	ld   a, [de]                                     ; $5f9c: $1a
	inc  bc                                          ; $5f9d: $03

jr_051_5f9e:
	ld   l, e                                        ; $5f9e: $6b
	ld   a, h                                        ; $5f9f: $7c
	ld   [bc], a                                     ; $5fa0: $02
	and  c                                           ; $5fa1: $a1
	inc  bc                                          ; $5fa2: $03
	and  b                                           ; $5fa3: $a0
	ld   l, a                                        ; $5fa4: $6f
	and  b                                           ; $5fa5: $a0
	dec  c                                           ; $5fa6: $0d
	ld   [bc], a                                     ; $5fa7: $02
	ld   h, l                                        ; $5fa8: $65
	ld   d, [hl]                                     ; $5fa9: $56
	ld   [hl], h                                     ; $5faa: $74
	ld   [bc], a                                     ; $5fab: $02
	ld   a, a                                        ; $5fac: $7f
	inc  b                                           ; $5fad: $04
	dec  de                                          ; $5fae: $1b
	ld   h, l                                        ; $5faf: $65
	ld   l, l                                        ; $5fb0: $6d
	adc  c                                           ; $5fb1: $89
	ld   d, h                                        ; $5fb2: $54
	ld   e, d                                        ; $5fb3: $5a
	ld   d, d                                        ; $5fb4: $52
	ld   d, d                                        ; $5fb5: $52
	halt                                             ; $5fb6: $76
	dec  c                                           ; $5fb7: $0d
	dec  b                                           ; $5fb8: $05
	pop  de                                          ; $5fb9: $d1
	ld   d, h                                        ; $5fba: $54
	ld   l, h                                        ; $5fbb: $6c
	sbc  a                                           ; $5fbc: $9f
	dec  c                                           ; $5fbd: $0d
	nop                                              ; $5fbe: $00
	ld   a, [bc]                                     ; $5fbf: $0a
	ld   b, $1c                                      ; $5fc0: $06 $1c
	ld   a, [bc]                                     ; $5fc2: $0a
	ld   bc, $5d63                                   ; $5fc3: $01 $63 $5d
	sub  a                                           ; $5fc6: $97
	ld   e, l                                        ; $5fc7: $5d
	and  c                                           ; $5fc8: $a1
	ld   a, h                                        ; $5fc9: $7c
	sbc  [hl]                                        ; $5fca: $9e
	ld   [$5d00], sp                                 ; $5fcb: $08 $00 $5d
	and  c                                           ; $5fce: $a1
	dec  c                                           ; $5fcf: $0d
	add  [hl]                                        ; $5fd0: $86
	ld   a, h                                        ; $5fd1: $7c
	inc  b                                           ; $5fd2: $04
	ld   d, a                                        ; $5fd3: $57
	inc  b                                           ; $5fd4: $04
	ld   h, e                                        ; $5fd5: $63
	ld   a, l                                        ; $5fd6: $7d
	sbc  [hl]                                        ; $5fd7: $9e
	ld   e, c                                        ; $5fd8: $59
	ld   a, b                                        ; $5fd9: $78
	sbc  b                                           ; $5fda: $98
	ld   d, d                                        ; $5fdb: $52
	ld   d, d                                        ; $5fdc: $52
	dec  c                                           ; $5fdd: $0d
	halt                                             ; $5fde: $76
	dec  b                                           ; $5fdf: $05
	pop  de                                          ; $5fe0: $d1
	ld   d, h                                        ; $5fe1: $54
	ld   l, h                                        ; $5fe2: $6c
	sbc  a                                           ; $5fe3: $9f
	dec  c                                           ; $5fe4: $0d
	nop                                              ; $5fe5: $00
	ld   a, [bc]                                     ; $5fe6: $0a
	ld   bc, $ca02                                   ; $5fe7: $01 $02 $ca
	sub  b                                           ; $5fea: $90
	ld   l, e                                        ; $5feb: $6b
	sbc  d                                           ; $5fec: $9a
	ld   a, c                                        ; $5fed: $79
	ld   [bc], a                                     ; $5fee: $02
	add  hl, bc                                      ; $5fef: $09
	ld   d, [hl]                                     ; $5ff0: $56
	sub  a                                           ; $5ff1: $97
	sbc  d                                           ; $5ff2: $9a
	sbc  c                                           ; $5ff3: $99
	sub  [hl]                                        ; $5ff4: $96
	ld   d, h                                        ; $5ff5: $54
	ld   a, c                                        ; $5ff6: $79
	dec  c                                           ; $5ff7: $0d
	ld   e, d                                        ; $5ff8: $5a
	and  c                                           ; $5ff9: $a1
	ld   a, [hl]                                     ; $5ffa: $7e
	sbc  c                                           ; $5ffb: $99
	and  c                                           ; $5ffc: $a1
	ld   l, [hl]                                     ; $5ffd: $6e
	ld   l, h                                        ; $5ffe: $6c
	sbc  a                                           ; $5fff: $9f
	dec  c                                           ; $6000: $0d
	nop                                              ; $6001: $00
	ld   a, [bc]                                     ; $6002: $0a
	ld   b, $1c                                      ; $6003: $06 $1c
	ld   a, [bc]                                     ; $6005: $0a
	rrca                                             ; $6006: $0f
	nop                                              ; $6007: $00
	ld   bc, $6701                                   ; $6008: $01 $01 $67

jr_051_600b:
	adc  l                                           ; $600b: $8d
	sbc  d                                           ; $600c: $9a
	ld   h, e                                        ; $600d: $63
	and  c                                           ; $600e: $a1
	ld   a, h                                        ; $600f: $7c
	inc  b                                           ; $6010: $04
	ld   l, l                                        ; $6011: $6d
	add  [hl]                                        ; $6012: $86
	ld   a, h                                        ; $6013: $7c
	inc  b                                           ; $6014: $04
	ld   d, a                                        ; $6015: $57
	inc  b                                           ; $6016: $04
	ld   h, e                                        ; $6017: $63
	ld   [hl], c                                     ; $6018: $71
	ld   [hl], h                                     ; $6019: $74
	dec  c                                           ; $601a: $0d
	ld   [hl], a                                     ; $601b: $77
	ld   d, h                                        ; $601c: $54
	ld   a, b                                        ; $601d: $78
	and  c                                           ; $601e: $a1
	ld   [hl], l                                     ; $601f: $75
	ld   h, l                                        ; $6020: $65
	sub  l                                           ; $6021: $95

jr_051_6022:
	ld   d, h                                        ; $6022: $54
	ld   e, c                                        ; $6023: $59
	ld   sp, hl                                      ; $6024: $f9
	dec  c                                           ; $6025: $0d
	nop                                              ; $6026: $00
	ld   a, [bc]                                     ; $6027: $0a
	rrca                                             ; $6028: $0f
	add  hl, bc                                      ; $6029: $09
	nop                                              ; $602a: $00
	ld   bc, $8e83                                   ; $602b: $01 $83 $8e
	sbc  [hl]                                        ; $602e: $9e
	ld   l, e                                        ; $602f: $6b
	ld   d, h                                        ; $6030: $54
	ld   l, [hl]                                     ; $6031: $6e
	ld   a, b                                        ; $6032: $78
	rst  $38                                         ; $6033: $ff
	rst  $38                                         ; $6034: $ff
	dec  c                                           ; $6035: $0d
	nop                                              ; $6036: $00
	ld   a, [bc]                                     ; $6037: $0a
	rlca                                             ; $6038: $07
	db   $ec                                         ; $6039: $ec
	inc  b                                           ; $603a: $04
	inc  bc                                          ; $603b: $03
	ld   [de], a                                     ; $603c: $12
	ld   bc, $2364                                   ; $603d: $01 $64 $23
	nop                                              ; $6040: $00
	rlca                                             ; $6041: $07
	dec  sp                                          ; $6042: $3b
	dec  b                                           ; $6043: $05
	inc  bc                                          ; $6044: $03
	ld   [de], a                                     ; $6045: $12
	ld   bc, $2596                                   ; $6046: $01 $96 $25
	nop                                              ; $6049: $00
	ld   bc, $8d67                                   ; $604a: $01 $67 $8d
	sbc  d                                           ; $604d: $9a
	ld   e, l                                        ; $604e: $5d
	and  c                                           ; $604f: $a1
	ld   a, h                                        ; $6050: $7c
	sbc  [hl]                                        ; $6051: $9e
	ld   [$5d00], sp                                 ; $6052: $08 $00 $5d
	and  c                                           ; $6055: $a1
	dec  c                                           ; $6056: $0d
	add  [hl]                                        ; $6057: $86
	ld   a, h                                        ; $6058: $7c
	inc  b                                           ; $6059: $04
	ld   d, a                                        ; $605a: $57
	inc  b                                           ; $605b: $04
	ld   h, e                                        ; $605c: $63
	ld   a, l                                        ; $605d: $7d
	sbc  [hl]                                        ; $605e: $9e
	adc  h                                           ; $605f: $8c
	ld   d, b                                        ; $6060: $50
	adc  h                                           ; $6061: $8c
	ld   d, b                                        ; $6062: $50
	dec  c                                           ; $6063: $0d
	halt                                             ; $6064: $76
	ld   d, d                                        ; $6065: $52
	ld   [hl], c                                     ; $6066: $71
	ld   l, l                                        ; $6067: $6d
	halt                                             ; $6068: $76
	ld   h, c                                        ; $6069: $61
	sbc  e                                           ; $606a: $9b
	ld   e, c                                        ; $606b: $59
	ld   a, b                                        ; $606c: $78
	sbc  a                                           ; $606d: $9f
	dec  c                                           ; $606e: $0d
	nop                                              ; $606f: $00
	ld   a, [bc]                                     ; $6070: $0a
	ld   bc, $5d76                                   ; $6071: $01 $76 $5d
	ld   a, c                                        ; $6074: $79
	ld   [bc], a                                     ; $6075: $02
	jr   z, jr_051_60ca                              ; $6076: $28 $52

	dec  b                                           ; $6078: $05
	jr   nz, jr_051_600b                             ; $6079: $20 $90

	ld   [bc], a                                     ; $607b: $02
	jp   nz, Jump_051_7859                           ; $607c: $c2 $59 $78

	ld   d, d                                        ; $607f: $52
	ld   h, l                                        ; $6080: $65
	rst  $38                                         ; $6081: $ff
	rst  $38                                         ; $6082: $ff
	dec  c                                           ; $6083: $0d
	ld   e, c                                        ; $6084: $59
	halt                                             ; $6085: $76
	ld   d, d                                        ; $6086: $52
	ld   [hl], c                                     ; $6087: $71
	ld   [hl], h                                     ; $6088: $74
	sbc  [hl]                                        ; $6089: $9e
	ld   d, d                                        ; $608a: $52
	ld   d, d                                        ; $608b: $52
	halt                                             ; $608c: $76
	ld   d, d                                        ; $608d: $52
	ld   d, h                                        ; $608e: $54
	dec  b                                           ; $608f: $05
	jr   nz, jr_051_6022                             ; $6090: $20 $90

	dec  c                                           ; $6092: $0d
	ld   [bc], a                                     ; $6093: $02
	jp   nz, Jump_051_7859                           ; $6094: $c2 $59 $78

	ld   d, d                                        ; $6097: $52
	ld   a, b                                        ; $6098: $78
	sbc  a                                           ; $6099: $9f
	dec  c                                           ; $609a: $0d
	nop                                              ; $609b: $00
	ld   a, [bc]                                     ; $609c: $0a
	ld   b, $1c                                      ; $609d: $06 $1c
	ld   a, [bc]                                     ; $609f: $0a
	ld   bc, $8d67                                   ; $60a0: $01 $67 $8d
	sbc  d                                           ; $60a3: $9a
	ld   e, l                                        ; $60a4: $5d
	and  c                                           ; $60a5: $a1
	ld   a, h                                        ; $60a6: $7c
	sbc  [hl]                                        ; $60a7: $9e
	ld   [$5d00], sp                                 ; $60a8: $08 $00 $5d
	and  c                                           ; $60ab: $a1
	dec  c                                           ; $60ac: $0d
	add  [hl]                                        ; $60ad: $86
	ld   a, h                                        ; $60ae: $7c
	inc  b                                           ; $60af: $04
	ld   d, a                                        ; $60b0: $57
	inc  b                                           ; $60b1: $04
	ld   h, e                                        ; $60b2: $63
	ld   a, l                                        ; $60b3: $7d
	rst  $38                                         ; $60b4: $ff
	rst  $38                                         ; $60b5: $ff
	dec  c                                           ; $60b6: $0d
	ld   d, b                                        ; $60b7: $50
	adc  h                                           ; $60b8: $8c
	sbc  b                                           ; $60b9: $98
	sub  [hl]                                        ; $60ba: $96
	ld   e, l                                        ; $60bb: $5d
	ld   a, b                                        ; $60bc: $78
	ld   d, d                                        ; $60bd: $52
	ld   a, b                                        ; $60be: $78
	sbc  a                                           ; $60bf: $9f
	dec  c                                           ; $60c0: $0d
	nop                                              ; $60c1: $00
	ld   a, [bc]                                     ; $60c2: $0a
	ld   bc, $7190                                   ; $60c3: $01 $90 $71
	halt                                             ; $60c6: $76
	ld   [bc], a                                     ; $60c7: $02
	ld   a, [de]                                     ; $60c8: $1a
	inc  bc                                          ; $60c9: $03

jr_051_60ca:
	ld   l, e                                        ; $60ca: $6b
	ld   a, h                                        ; $60cb: $7c
	ld   [bc], a                                     ; $60cc: $02
	and  c                                           ; $60cd: $a1
	inc  bc                                          ; $60ce: $03
	and  b                                           ; $60cf: $a0
	ld   l, a                                        ; $60d0: $6f
	and  b                                           ; $60d1: $a0
	dec  c                                           ; $60d2: $0d
	ld   [bc], a                                     ; $60d3: $02
	ld   h, l                                        ; $60d4: $65
	ld   d, [hl]                                     ; $60d5: $56
	ld   [hl], h                                     ; $60d6: $74
	ld   [bc], a                                     ; $60d7: $02
	ld   a, a                                        ; $60d8: $7f
	inc  b                                           ; $60d9: $04
	dec  de                                          ; $60da: $1b
	ld   h, l                                        ; $60db: $65
	ld   l, l                                        ; $60dc: $6d
	adc  c                                           ; $60dd: $89
	ld   d, h                                        ; $60de: $54
	ld   e, d                                        ; $60df: $5a
	ld   d, d                                        ; $60e0: $52
	ld   d, d                                        ; $60e1: $52
	halt                                             ; $60e2: $76
	dec  c                                           ; $60e3: $0d
	dec  b                                           ; $60e4: $05
	pop  de                                          ; $60e5: $d1
	ld   d, h                                        ; $60e6: $54
	ld   l, h                                        ; $60e7: $6c
	sbc  a                                           ; $60e8: $9f
	dec  c                                           ; $60e9: $0d
	nop                                              ; $60ea: $00
	ld   a, [bc]                                     ; $60eb: $0a
	ld   b, $1c                                      ; $60ec: $06 $1c
	ld   a, [bc]                                     ; $60ee: $0a
	ld   bc, $8d67                                   ; $60ef: $01 $67 $8d
	sbc  d                                           ; $60f2: $9a
	ld   e, l                                        ; $60f3: $5d
	and  c                                           ; $60f4: $a1
	ld   a, h                                        ; $60f5: $7c
	sbc  [hl]                                        ; $60f6: $9e
	ld   [$5d00], sp                                 ; $60f7: $08 $00 $5d
	and  c                                           ; $60fa: $a1
	dec  c                                           ; $60fb: $0d
	add  [hl]                                        ; $60fc: $86
	ld   a, h                                        ; $60fd: $7c
	inc  b                                           ; $60fe: $04
	ld   d, a                                        ; $60ff: $57
	inc  b                                           ; $6100: $04
	ld   h, e                                        ; $6101: $63
	ld   a, l                                        ; $6102: $7d
	sbc  [hl]                                        ; $6103: $9e
	ld   e, c                                        ; $6104: $59
	ld   a, b                                        ; $6105: $78
	sbc  b                                           ; $6106: $98
	ld   d, d                                        ; $6107: $52
	ld   d, d                                        ; $6108: $52
	dec  c                                           ; $6109: $0d
	halt                                             ; $610a: $76
	dec  b                                           ; $610b: $05
	pop  de                                          ; $610c: $d1
	ld   d, h                                        ; $610d: $54
	ld   l, h                                        ; $610e: $6c
	sbc  a                                           ; $610f: $9f
	dec  c                                           ; $6110: $0d
	nop                                              ; $6111: $00
	ld   a, [bc]                                     ; $6112: $0a
	ld   bc, $ca02                                   ; $6113: $01 $02 $ca
	sub  b                                           ; $6116: $90
	ld   l, e                                        ; $6117: $6b
	sbc  d                                           ; $6118: $9a
	ld   a, c                                        ; $6119: $79
	ld   [bc], a                                     ; $611a: $02
	add  hl, bc                                      ; $611b: $09
	ld   d, [hl]                                     ; $611c: $56
	sub  a                                           ; $611d: $97
	sbc  d                                           ; $611e: $9a
	sbc  c                                           ; $611f: $99
	sub  [hl]                                        ; $6120: $96
	ld   d, h                                        ; $6121: $54
	ld   a, c                                        ; $6122: $79
	dec  c                                           ; $6123: $0d
	ld   e, d                                        ; $6124: $5a
	and  c                                           ; $6125: $a1
	ld   a, [hl]                                     ; $6126: $7e
	sbc  c                                           ; $6127: $99
	and  c                                           ; $6128: $a1
	ld   l, [hl]                                     ; $6129: $6e
	ld   l, h                                        ; $612a: $6c
	sbc  a                                           ; $612b: $9f
	dec  c                                           ; $612c: $0d
	nop                                              ; $612d: $00
	ld   a, [bc]                                     ; $612e: $0a
	ld   b, $1c                                      ; $612f: $06 $1c
	ld   a, [bc]                                     ; $6131: $0a
	rrca                                             ; $6132: $0f
	nop                                              ; $6133: $00
	ld   bc, $df01                                   ; $6134: $01 $01 $df
	db   $ec                                         ; $6137: $ec
	and  e                                           ; $6138: $a3
	ld   h, e                                        ; $6139: $63
	and  c                                           ; $613a: $a1
	ld   a, h                                        ; $613b: $7c
	inc  b                                           ; $613c: $04
	ld   l, l                                        ; $613d: $6d
	add  [hl]                                        ; $613e: $86
	ld   a, h                                        ; $613f: $7c
	inc  b                                           ; $6140: $04
	ld   d, a                                        ; $6141: $57
	inc  b                                           ; $6142: $04
	ld   h, e                                        ; $6143: $63
	ld   [hl], c                                     ; $6144: $71
	ld   [hl], h                                     ; $6145: $74
	dec  c                                           ; $6146: $0d
	ld   [hl], a                                     ; $6147: $77
	ld   d, h                                        ; $6148: $54
	ld   a, b                                        ; $6149: $78
	and  c                                           ; $614a: $a1
	ld   [hl], l                                     ; $614b: $75

jr_051_614c:
	ld   h, l                                        ; $614c: $65
	sub  l                                           ; $614d: $95
	ld   d, h                                        ; $614e: $54
	ld   e, c                                        ; $614f: $59
	ld   sp, hl                                      ; $6150: $f9
	dec  c                                           ; $6151: $0d
	nop                                              ; $6152: $00
	ld   a, [bc]                                     ; $6153: $0a
	rrca                                             ; $6154: $0f
	add  hl, bc                                      ; $6155: $09
	nop                                              ; $6156: $00
	ld   bc, $8e83                                   ; $6157: $01 $83 $8e
	sbc  [hl]                                        ; $615a: $9e
	ld   l, e                                        ; $615b: $6b
	ld   d, h                                        ; $615c: $54
	ld   l, [hl]                                     ; $615d: $6e
	ld   a, b                                        ; $615e: $78
	rst  $38                                         ; $615f: $ff
	rst  $38                                         ; $6160: $ff
	dec  c                                           ; $6161: $0d
	nop                                              ; $6162: $00
	ld   a, [bc]                                     ; $6163: $0a
	rlca                                             ; $6164: $07
	ld   d, $06                                      ; $6165: $16 $06
	inc  bc                                          ; $6167: $03
	inc  de                                          ; $6168: $13
	ld   bc, $2364                                   ; $6169: $01 $64 $23
	nop                                              ; $616c: $00
	rlca                                             ; $616d: $07
	ld   h, e                                        ; $616e: $63
	ld   b, $03                                      ; $616f: $06 $03
	inc  de                                          ; $6171: $13
	ld   bc, $2596                                   ; $6172: $01 $96 $25
	nop                                              ; $6175: $00
	ld   bc, $ecdf                                   ; $6176: $01 $df $ec
	and  e                                           ; $6179: $a3
	ld   a, h                                        ; $617a: $7c
	sbc  [hl]                                        ; $617b: $9e
	ld   [$5d00], sp                                 ; $617c: $08 $00 $5d
	and  c                                           ; $617f: $a1
	dec  c                                           ; $6180: $0d
	add  [hl]                                        ; $6181: $86
	ld   a, h                                        ; $6182: $7c
	inc  b                                           ; $6183: $04
	ld   d, a                                        ; $6184: $57
	inc  b                                           ; $6185: $04
	ld   h, e                                        ; $6186: $63
	ld   a, l                                        ; $6187: $7d
	sbc  [hl]                                        ; $6188: $9e
	adc  h                                           ; $6189: $8c
	ld   d, b                                        ; $618a: $50
	adc  h                                           ; $618b: $8c
	ld   d, b                                        ; $618c: $50
	dec  c                                           ; $618d: $0d
	halt                                             ; $618e: $76
	ld   d, d                                        ; $618f: $52
	ld   [hl], c                                     ; $6190: $71
	ld   l, l                                        ; $6191: $6d
	halt                                             ; $6192: $76
	ld   h, c                                        ; $6193: $61
	sbc  e                                           ; $6194: $9b
	ld   e, c                                        ; $6195: $59
	ld   a, b                                        ; $6196: $78
	sbc  a                                           ; $6197: $9f
	dec  c                                           ; $6198: $0d
	nop                                              ; $6199: $00
	ld   a, [bc]                                     ; $619a: $0a
	ld   bc, $5d76                                   ; $619b: $01 $76 $5d
	ld   a, c                                        ; $619e: $79
	ld   [bc], a                                     ; $619f: $02
	jr   z, jr_051_61f4                              ; $61a0: $28 $52

	dec  b                                           ; $61a2: $05
	jr   nz, @-$6e                                   ; $61a3: $20 $90

	ld   [bc], a                                     ; $61a5: $02
	jp   nz, Jump_051_7859                           ; $61a6: $c2 $59 $78

	ld   d, d                                        ; $61a9: $52
	ld   h, l                                        ; $61aa: $65
	rst  $38                                         ; $61ab: $ff
	rst  $38                                         ; $61ac: $ff
	dec  c                                           ; $61ad: $0d
	ld   e, c                                        ; $61ae: $59
	halt                                             ; $61af: $76
	ld   d, d                                        ; $61b0: $52
	ld   [hl], c                                     ; $61b1: $71
	ld   [hl], h                                     ; $61b2: $74
	sbc  [hl]                                        ; $61b3: $9e
	ld   d, d                                        ; $61b4: $52
	ld   d, d                                        ; $61b5: $52
	halt                                             ; $61b6: $76
	ld   d, d                                        ; $61b7: $52
	ld   d, h                                        ; $61b8: $54
	dec  b                                           ; $61b9: $05
	jr   nz, jr_051_614c                             ; $61ba: $20 $90

	dec  c                                           ; $61bc: $0d
	ld   [bc], a                                     ; $61bd: $02
	jp   nz, Jump_051_7859                           ; $61be: $c2 $59 $78

	ld   d, d                                        ; $61c1: $52
	ld   a, b                                        ; $61c2: $78
	sbc  a                                           ; $61c3: $9f
	dec  c                                           ; $61c4: $0d
	nop                                              ; $61c5: $00
	ld   a, [bc]                                     ; $61c6: $0a
	ld   b, $1c                                      ; $61c7: $06 $1c
	ld   a, [bc]                                     ; $61c9: $0a
	ld   bc, $ecdf                                   ; $61ca: $01 $df $ec
	and  e                                           ; $61cd: $a3
	ld   a, h                                        ; $61ce: $7c
	sbc  [hl]                                        ; $61cf: $9e
	ld   [$5d00], sp                                 ; $61d0: $08 $00 $5d
	and  c                                           ; $61d3: $a1
	dec  c                                           ; $61d4: $0d
	add  [hl]                                        ; $61d5: $86
	ld   a, h                                        ; $61d6: $7c
	inc  b                                           ; $61d7: $04
	ld   d, a                                        ; $61d8: $57
	inc  b                                           ; $61d9: $04
	ld   h, e                                        ; $61da: $63
	ld   a, l                                        ; $61db: $7d
	rst  $38                                         ; $61dc: $ff
	rst  $38                                         ; $61dd: $ff
	dec  c                                           ; $61de: $0d
	ld   d, b                                        ; $61df: $50
	adc  h                                           ; $61e0: $8c
	sbc  b                                           ; $61e1: $98
	sub  [hl]                                        ; $61e2: $96
	ld   e, l                                        ; $61e3: $5d
	ld   a, b                                        ; $61e4: $78
	ld   d, d                                        ; $61e5: $52
	ld   a, b                                        ; $61e6: $78
	sbc  a                                           ; $61e7: $9f
	dec  c                                           ; $61e8: $0d
	nop                                              ; $61e9: $00
	ld   a, [bc]                                     ; $61ea: $0a
	ld   bc, $7190                                   ; $61eb: $01 $90 $71
	halt                                             ; $61ee: $76
	ld   [bc], a                                     ; $61ef: $02
	ld   a, [de]                                     ; $61f0: $1a
	inc  bc                                          ; $61f1: $03
	ld   l, e                                        ; $61f2: $6b
	ld   a, h                                        ; $61f3: $7c

jr_051_61f4:
	ld   [bc], a                                     ; $61f4: $02
	and  c                                           ; $61f5: $a1
	inc  bc                                          ; $61f6: $03
	and  b                                           ; $61f7: $a0
	ld   l, a                                        ; $61f8: $6f
	and  b                                           ; $61f9: $a0
	dec  c                                           ; $61fa: $0d
	ld   [bc], a                                     ; $61fb: $02
	ld   h, l                                        ; $61fc: $65
	ld   d, [hl]                                     ; $61fd: $56
	ld   [hl], h                                     ; $61fe: $74
	ld   [bc], a                                     ; $61ff: $02
	ld   a, a                                        ; $6200: $7f
	inc  b                                           ; $6201: $04
	dec  de                                          ; $6202: $1b
	ld   h, l                                        ; $6203: $65
	ld   l, l                                        ; $6204: $6d
	adc  c                                           ; $6205: $89
	ld   d, h                                        ; $6206: $54
	ld   e, d                                        ; $6207: $5a
	ld   d, d                                        ; $6208: $52
	ld   d, d                                        ; $6209: $52
	halt                                             ; $620a: $76
	dec  c                                           ; $620b: $0d
	dec  b                                           ; $620c: $05
	pop  de                                          ; $620d: $d1
	ld   d, h                                        ; $620e: $54
	ld   l, h                                        ; $620f: $6c
	sbc  a                                           ; $6210: $9f
	dec  c                                           ; $6211: $0d
	nop                                              ; $6212: $00
	ld   a, [bc]                                     ; $6213: $0a
	ld   b, $1c                                      ; $6214: $06 $1c
	ld   a, [bc]                                     ; $6216: $0a
	ld   bc, $ecdf                                   ; $6217: $01 $df $ec
	and  e                                           ; $621a: $a3
	ld   a, h                                        ; $621b: $7c
	sbc  [hl]                                        ; $621c: $9e
	ld   [$5d00], sp                                 ; $621d: $08 $00 $5d
	and  c                                           ; $6220: $a1
	dec  c                                           ; $6221: $0d
	add  [hl]                                        ; $6222: $86
	ld   a, h                                        ; $6223: $7c
	inc  b                                           ; $6224: $04
	ld   d, a                                        ; $6225: $57
	inc  b                                           ; $6226: $04
	ld   h, e                                        ; $6227: $63
	ld   a, l                                        ; $6228: $7d
	sbc  [hl]                                        ; $6229: $9e
	ld   e, c                                        ; $622a: $59
	ld   a, b                                        ; $622b: $78
	sbc  b                                           ; $622c: $98
	ld   d, d                                        ; $622d: $52
	ld   d, d                                        ; $622e: $52
	dec  c                                           ; $622f: $0d
	halt                                             ; $6230: $76
	dec  b                                           ; $6231: $05
	pop  de                                          ; $6232: $d1
	ld   d, h                                        ; $6233: $54
	ld   l, h                                        ; $6234: $6c
	sbc  a                                           ; $6235: $9f
	dec  c                                           ; $6236: $0d
	nop                                              ; $6237: $00
	ld   a, [bc]                                     ; $6238: $0a
	ld   bc, $ca02                                   ; $6239: $01 $02 $ca
	sub  b                                           ; $623c: $90
	ld   l, e                                        ; $623d: $6b
	sbc  d                                           ; $623e: $9a
	ld   a, c                                        ; $623f: $79
	ld   [bc], a                                     ; $6240: $02
	add  hl, bc                                      ; $6241: $09
	ld   d, [hl]                                     ; $6242: $56
	sub  a                                           ; $6243: $97
	sbc  d                                           ; $6244: $9a
	sbc  c                                           ; $6245: $99
	sub  [hl]                                        ; $6246: $96
	ld   d, h                                        ; $6247: $54
	ld   a, c                                        ; $6248: $79
	dec  c                                           ; $6249: $0d
	ld   e, d                                        ; $624a: $5a
	and  c                                           ; $624b: $a1
	ld   a, [hl]                                     ; $624c: $7e
	sbc  c                                           ; $624d: $99
	and  c                                           ; $624e: $a1
	ld   l, [hl]                                     ; $624f: $6e
	ld   l, h                                        ; $6250: $6c
	sbc  a                                           ; $6251: $9f
	dec  c                                           ; $6252: $0d
	nop                                              ; $6253: $00
	ld   a, [bc]                                     ; $6254: $0a
	ld   b, $1c                                      ; $6255: $06 $1c
	ld   a, [bc]                                     ; $6257: $0a
	rrca                                             ; $6258: $0f
	nop                                              ; $6259: $00
	ld   bc, $a301                                   ; $625a: $01 $01 $a3
	and  l                                           ; $625d: $a5
	db   $ec                                         ; $625e: $ec
	cp   d                                           ; $625f: $ba
	ld   a, h                                        ; $6260: $7c
	inc  b                                           ; $6261: $04
	ld   l, l                                        ; $6262: $6d
	add  [hl]                                        ; $6263: $86
	ld   a, h                                        ; $6264: $7c
	inc  b                                           ; $6265: $04
	ld   d, a                                        ; $6266: $57
	inc  b                                           ; $6267: $04
	ld   h, e                                        ; $6268: $63
	ld   [hl], c                                     ; $6269: $71
	ld   [hl], h                                     ; $626a: $74
	dec  c                                           ; $626b: $0d
	ld   [hl], a                                     ; $626c: $77
	ld   d, h                                        ; $626d: $54
	ld   a, b                                        ; $626e: $78
	and  c                                           ; $626f: $a1
	ld   [hl], l                                     ; $6270: $75
	ld   h, l                                        ; $6271: $65

jr_051_6272:
	sub  l                                           ; $6272: $95
	ld   d, h                                        ; $6273: $54
	ld   e, c                                        ; $6274: $59
	ld   sp, hl                                      ; $6275: $f9
	dec  c                                           ; $6276: $0d
	nop                                              ; $6277: $00
	ld   a, [bc]                                     ; $6278: $0a
	rrca                                             ; $6279: $0f
	add  hl, bc                                      ; $627a: $09
	nop                                              ; $627b: $00
	ld   bc, $8e83                                   ; $627c: $01 $83 $8e
	sbc  [hl]                                        ; $627f: $9e
	ld   l, e                                        ; $6280: $6b
	ld   d, h                                        ; $6281: $54
	ld   l, [hl]                                     ; $6282: $6e
	ld   a, b                                        ; $6283: $78
	rst  $38                                         ; $6284: $ff
	rst  $38                                         ; $6285: $ff
	dec  c                                           ; $6286: $0d
	nop                                              ; $6287: $00
	ld   a, [bc]                                     ; $6288: $0a
	rlca                                             ; $6289: $07
	inc  a                                           ; $628a: $3c
	rlca                                             ; $628b: $07
	inc  bc                                          ; $628c: $03
	inc  d                                           ; $628d: $14
	ld   bc, $2364                                   ; $628e: $01 $64 $23
	nop                                              ; $6291: $00
	rlca                                             ; $6292: $07
	adc  d                                           ; $6293: $8a
	rlca                                             ; $6294: $07
	inc  bc                                          ; $6295: $03
	inc  d                                           ; $6296: $14
	ld   bc, $2596                                   ; $6297: $01 $96 $25
	nop                                              ; $629a: $00
	ld   bc, $a5a3                                   ; $629b: $01 $a3 $a5
	db   $ec                                         ; $629e: $ec
	cp   d                                           ; $629f: $ba
	ld   a, h                                        ; $62a0: $7c
	sbc  [hl]                                        ; $62a1: $9e
	ld   [$5d00], sp                                 ; $62a2: $08 $00 $5d
	and  c                                           ; $62a5: $a1
	dec  c                                           ; $62a6: $0d
	add  [hl]                                        ; $62a7: $86
	ld   a, h                                        ; $62a8: $7c
	inc  b                                           ; $62a9: $04
	ld   d, a                                        ; $62aa: $57
	inc  b                                           ; $62ab: $04
	ld   h, e                                        ; $62ac: $63
	ld   a, l                                        ; $62ad: $7d
	sbc  [hl]                                        ; $62ae: $9e
	adc  h                                           ; $62af: $8c
	ld   d, b                                        ; $62b0: $50
	adc  h                                           ; $62b1: $8c
	ld   d, b                                        ; $62b2: $50
	dec  c                                           ; $62b3: $0d
	halt                                             ; $62b4: $76
	ld   d, d                                        ; $62b5: $52
	ld   [hl], c                                     ; $62b6: $71
	ld   l, l                                        ; $62b7: $6d
	halt                                             ; $62b8: $76
	ld   h, c                                        ; $62b9: $61
	sbc  e                                           ; $62ba: $9b
	ld   e, c                                        ; $62bb: $59
	ld   a, b                                        ; $62bc: $78
	sbc  a                                           ; $62bd: $9f
	dec  c                                           ; $62be: $0d
	nop                                              ; $62bf: $00
	ld   a, [bc]                                     ; $62c0: $0a
	ld   bc, $5d76                                   ; $62c1: $01 $76 $5d
	ld   a, c                                        ; $62c4: $79
	ld   [bc], a                                     ; $62c5: $02
	jr   z, jr_051_631a                              ; $62c6: $28 $52

	dec  b                                           ; $62c8: $05
	jr   nz, @-$6e                                   ; $62c9: $20 $90

	ld   [bc], a                                     ; $62cb: $02
	jp   nz, Jump_051_7859                           ; $62cc: $c2 $59 $78

	ld   d, d                                        ; $62cf: $52
	ld   h, l                                        ; $62d0: $65
	rst  $38                                         ; $62d1: $ff
	rst  $38                                         ; $62d2: $ff
	dec  c                                           ; $62d3: $0d
	ld   e, c                                        ; $62d4: $59
	halt                                             ; $62d5: $76
	ld   d, d                                        ; $62d6: $52
	ld   [hl], c                                     ; $62d7: $71
	ld   [hl], h                                     ; $62d8: $74
	sbc  [hl]                                        ; $62d9: $9e
	ld   d, d                                        ; $62da: $52
	ld   d, d                                        ; $62db: $52
	halt                                             ; $62dc: $76
	ld   d, d                                        ; $62dd: $52
	ld   d, h                                        ; $62de: $54
	dec  b                                           ; $62df: $05
	jr   nz, jr_051_6272                             ; $62e0: $20 $90

	dec  c                                           ; $62e2: $0d
	ld   [bc], a                                     ; $62e3: $02
	jp   nz, Jump_051_7859                           ; $62e4: $c2 $59 $78

	ld   d, d                                        ; $62e7: $52
	ld   a, b                                        ; $62e8: $78
	sbc  a                                           ; $62e9: $9f
	dec  c                                           ; $62ea: $0d
	nop                                              ; $62eb: $00
	ld   a, [bc]                                     ; $62ec: $0a
	ld   b, $1c                                      ; $62ed: $06 $1c
	ld   a, [bc]                                     ; $62ef: $0a
	ld   bc, $a5a3                                   ; $62f0: $01 $a3 $a5
	db   $ec                                         ; $62f3: $ec
	cp   d                                           ; $62f4: $ba
	ld   a, h                                        ; $62f5: $7c
	sbc  [hl]                                        ; $62f6: $9e
	ld   [$5d00], sp                                 ; $62f7: $08 $00 $5d
	and  c                                           ; $62fa: $a1
	dec  c                                           ; $62fb: $0d
	add  [hl]                                        ; $62fc: $86
	ld   a, h                                        ; $62fd: $7c
	inc  b                                           ; $62fe: $04
	ld   d, a                                        ; $62ff: $57
	inc  b                                           ; $6300: $04
	ld   h, e                                        ; $6301: $63
	ld   a, l                                        ; $6302: $7d
	rst  $38                                         ; $6303: $ff
	rst  $38                                         ; $6304: $ff
	dec  c                                           ; $6305: $0d
	ld   d, b                                        ; $6306: $50
	adc  h                                           ; $6307: $8c
	sbc  b                                           ; $6308: $98
	sub  [hl]                                        ; $6309: $96
	ld   e, l                                        ; $630a: $5d
	ld   a, b                                        ; $630b: $78
	ld   d, d                                        ; $630c: $52
	ld   a, b                                        ; $630d: $78
	sbc  a                                           ; $630e: $9f
	dec  c                                           ; $630f: $0d
	nop                                              ; $6310: $00
	ld   a, [bc]                                     ; $6311: $0a
	ld   bc, $7190                                   ; $6312: $01 $90 $71
	halt                                             ; $6315: $76
	ld   [bc], a                                     ; $6316: $02
	ld   a, [de]                                     ; $6317: $1a
	inc  bc                                          ; $6318: $03
	ld   l, e                                        ; $6319: $6b

jr_051_631a:
	ld   a, h                                        ; $631a: $7c
	ld   [bc], a                                     ; $631b: $02
	and  c                                           ; $631c: $a1
	inc  bc                                          ; $631d: $03
	and  b                                           ; $631e: $a0
	ld   l, a                                        ; $631f: $6f
	and  b                                           ; $6320: $a0
	dec  c                                           ; $6321: $0d
	ld   [bc], a                                     ; $6322: $02
	ld   h, l                                        ; $6323: $65
	ld   d, [hl]                                     ; $6324: $56
	ld   [hl], h                                     ; $6325: $74
	ld   [bc], a                                     ; $6326: $02
	ld   a, a                                        ; $6327: $7f
	inc  b                                           ; $6328: $04
	dec  de                                          ; $6329: $1b
	ld   h, l                                        ; $632a: $65
	ld   l, l                                        ; $632b: $6d
	adc  c                                           ; $632c: $89
	ld   d, h                                        ; $632d: $54
	ld   e, d                                        ; $632e: $5a
	ld   d, d                                        ; $632f: $52
	ld   d, d                                        ; $6330: $52
	halt                                             ; $6331: $76
	dec  c                                           ; $6332: $0d
	dec  b                                           ; $6333: $05
	pop  de                                          ; $6334: $d1
	ld   d, h                                        ; $6335: $54
	ld   l, h                                        ; $6336: $6c
	sbc  a                                           ; $6337: $9f
	dec  c                                           ; $6338: $0d
	nop                                              ; $6339: $00
	ld   a, [bc]                                     ; $633a: $0a
	ld   b, $1c                                      ; $633b: $06 $1c
	ld   a, [bc]                                     ; $633d: $0a
	ld   bc, $a5a3                                   ; $633e: $01 $a3 $a5
	db   $ec                                         ; $6341: $ec
	cp   d                                           ; $6342: $ba
	ld   a, h                                        ; $6343: $7c
	sbc  [hl]                                        ; $6344: $9e
	ld   [$5d00], sp                                 ; $6345: $08 $00 $5d
	and  c                                           ; $6348: $a1
	dec  c                                           ; $6349: $0d
	add  [hl]                                        ; $634a: $86
	ld   a, h                                        ; $634b: $7c
	inc  b                                           ; $634c: $04
	ld   d, a                                        ; $634d: $57
	inc  b                                           ; $634e: $04
	ld   h, e                                        ; $634f: $63
	ld   a, l                                        ; $6350: $7d
	sbc  [hl]                                        ; $6351: $9e
	ld   e, c                                        ; $6352: $59
	ld   a, b                                        ; $6353: $78
	sbc  b                                           ; $6354: $98
	ld   d, d                                        ; $6355: $52
	ld   d, d                                        ; $6356: $52
	dec  c                                           ; $6357: $0d
	halt                                             ; $6358: $76
	dec  b                                           ; $6359: $05
	pop  de                                          ; $635a: $d1
	ld   d, h                                        ; $635b: $54
	ld   l, h                                        ; $635c: $6c
	sbc  a                                           ; $635d: $9f
	dec  c                                           ; $635e: $0d
	nop                                              ; $635f: $00
	ld   a, [bc]                                     ; $6360: $0a
	ld   bc, $ca02                                   ; $6361: $01 $02 $ca
	sub  b                                           ; $6364: $90
	ld   l, e                                        ; $6365: $6b
	sbc  d                                           ; $6366: $9a
	ld   a, c                                        ; $6367: $79
	ld   [bc], a                                     ; $6368: $02
	add  hl, bc                                      ; $6369: $09
	ld   d, [hl]                                     ; $636a: $56
	sub  a                                           ; $636b: $97
	sbc  d                                           ; $636c: $9a
	sbc  c                                           ; $636d: $99
	sub  [hl]                                        ; $636e: $96
	ld   d, h                                        ; $636f: $54
	ld   a, c                                        ; $6370: $79
	dec  c                                           ; $6371: $0d
	ld   e, d                                        ; $6372: $5a
	and  c                                           ; $6373: $a1
	ld   a, [hl]                                     ; $6374: $7e
	sbc  c                                           ; $6375: $99
	and  c                                           ; $6376: $a1
	ld   l, [hl]                                     ; $6377: $6e

Call_051_6378:
	ld   l, h                                        ; $6378: $6c
	sbc  a                                           ; $6379: $9f
	dec  c                                           ; $637a: $0d
	nop                                              ; $637b: $00
	ld   a, [bc]                                     ; $637c: $0a
	ld   b, $1c                                      ; $637d: $06 $1c
	ld   a, [bc]                                     ; $637f: $0a
	rrca                                             ; $6380: $0f
	nop                                              ; $6381: $00
	ld   bc, $0201                                   ; $6382: $01 $01 $02

jr_051_6385:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6385: $cf
	dec  b                                           ; $6386: $05
	ld   a, [de]                                     ; $6387: $1a
	ld   h, e                                        ; $6388: $63
	and  c                                           ; $6389: $a1
	ld   a, h                                        ; $638a: $7c
	inc  b                                           ; $638b: $04
	ld   l, l                                        ; $638c: $6d
	add  [hl]                                        ; $638d: $86
	ld   a, h                                        ; $638e: $7c
	inc  b                                           ; $638f: $04
	ld   d, a                                        ; $6390: $57
	inc  b                                           ; $6391: $04
	ld   h, e                                        ; $6392: $63
	ld   [hl], c                                     ; $6393: $71
	ld   [hl], h                                     ; $6394: $74
	dec  c                                           ; $6395: $0d
	ld   [hl], a                                     ; $6396: $77
	ld   d, h                                        ; $6397: $54
	ld   a, b                                        ; $6398: $78
	and  c                                           ; $6399: $a1
	ld   [hl], l                                     ; $639a: $75
	ld   h, l                                        ; $639b: $65

jr_051_639c:
	sub  l                                           ; $639c: $95
	ld   d, h                                        ; $639d: $54
	ld   e, c                                        ; $639e: $59
	ld   sp, hl                                      ; $639f: $f9
	dec  c                                           ; $63a0: $0d
	nop                                              ; $63a1: $00
	ld   a, [bc]                                     ; $63a2: $0a
	rrca                                             ; $63a3: $0f
	add  hl, bc                                      ; $63a4: $09
	nop                                              ; $63a5: $00
	ld   bc, $8e83                                   ; $63a6: $01 $83 $8e
	sbc  [hl]                                        ; $63a9: $9e
	ld   l, e                                        ; $63aa: $6b
	ld   d, h                                        ; $63ab: $54
	ld   l, [hl]                                     ; $63ac: $6e
	ld   a, b                                        ; $63ad: $78
	rst  $38                                         ; $63ae: $ff
	rst  $38                                         ; $63af: $ff
	dec  c                                           ; $63b0: $0d
	nop                                              ; $63b1: $00
	ld   a, [bc]                                     ; $63b2: $0a
	rlca                                             ; $63b3: $07
	ld   h, [hl]                                     ; $63b4: $66
	ld   [$1503], sp                                 ; $63b5: $08 $03 $15
	ld   bc, $2364                                   ; $63b8: $01 $64 $23
	nop                                              ; $63bb: $00
	rlca                                             ; $63bc: $07
	or   h                                           ; $63bd: $b4
	ld   [$1503], sp                                 ; $63be: $08 $03 $15
	ld   bc, $2596                                   ; $63c1: $01 $96 $25
	nop                                              ; $63c4: $00
	ld   bc, $cf02                                   ; $63c5: $01 $02 $cf
	dec  b                                           ; $63c8: $05
	ld   a, [de]                                     ; $63c9: $1a
	ld   a, h                                        ; $63ca: $7c
	sbc  [hl]                                        ; $63cb: $9e
	ld   [$5d00], sp                                 ; $63cc: $08 $00 $5d
	and  c                                           ; $63cf: $a1
	dec  c                                           ; $63d0: $0d
	add  [hl]                                        ; $63d1: $86
	ld   a, h                                        ; $63d2: $7c
	inc  b                                           ; $63d3: $04
	ld   d, a                                        ; $63d4: $57
	inc  b                                           ; $63d5: $04
	ld   h, e                                        ; $63d6: $63
	ld   a, l                                        ; $63d7: $7d
	sbc  [hl]                                        ; $63d8: $9e
	adc  h                                           ; $63d9: $8c
	ld   d, b                                        ; $63da: $50
	adc  h                                           ; $63db: $8c
	ld   d, b                                        ; $63dc: $50
	dec  c                                           ; $63dd: $0d
	halt                                             ; $63de: $76
	ld   d, d                                        ; $63df: $52
	ld   [hl], c                                     ; $63e0: $71
	ld   l, l                                        ; $63e1: $6d
	halt                                             ; $63e2: $76
	ld   h, c                                        ; $63e3: $61
	sbc  e                                           ; $63e4: $9b
	ld   e, c                                        ; $63e5: $59
	ld   a, b                                        ; $63e6: $78
	sbc  a                                           ; $63e7: $9f
	dec  c                                           ; $63e8: $0d
	nop                                              ; $63e9: $00
	ld   a, [bc]                                     ; $63ea: $0a
	ld   bc, $5d76                                   ; $63eb: $01 $76 $5d
	ld   a, c                                        ; $63ee: $79
	ld   [bc], a                                     ; $63ef: $02
	jr   z, jr_051_6444                              ; $63f0: $28 $52

	dec  b                                           ; $63f2: $05
	jr   nz, jr_051_6385                             ; $63f3: $20 $90

	ld   [bc], a                                     ; $63f5: $02
	jp   nz, Jump_051_7859                           ; $63f6: $c2 $59 $78

	ld   d, d                                        ; $63f9: $52
	ld   h, l                                        ; $63fa: $65
	rst  $38                                         ; $63fb: $ff
	rst  $38                                         ; $63fc: $ff
	dec  c                                           ; $63fd: $0d
	ld   e, c                                        ; $63fe: $59
	halt                                             ; $63ff: $76
	ld   d, d                                        ; $6400: $52
	ld   [hl], c                                     ; $6401: $71
	ld   [hl], h                                     ; $6402: $74
	sbc  [hl]                                        ; $6403: $9e
	ld   d, d                                        ; $6404: $52
	ld   d, d                                        ; $6405: $52
	halt                                             ; $6406: $76
	ld   d, d                                        ; $6407: $52
	ld   d, h                                        ; $6408: $54
	dec  b                                           ; $6409: $05
	jr   nz, jr_051_639c                             ; $640a: $20 $90

	dec  c                                           ; $640c: $0d
	ld   [bc], a                                     ; $640d: $02
	jp   nz, Jump_051_7859                           ; $640e: $c2 $59 $78

	ld   d, d                                        ; $6411: $52
	ld   a, b                                        ; $6412: $78
	sbc  a                                           ; $6413: $9f
	dec  c                                           ; $6414: $0d
	nop                                              ; $6415: $00
	ld   a, [bc]                                     ; $6416: $0a
	ld   b, $1c                                      ; $6417: $06 $1c
	ld   a, [bc]                                     ; $6419: $0a
	ld   bc, $cf02                                   ; $641a: $01 $02 $cf
	dec  b                                           ; $641d: $05
	ld   a, [de]                                     ; $641e: $1a
	ld   a, h                                        ; $641f: $7c
	sbc  [hl]                                        ; $6420: $9e
	ld   [$5d00], sp                                 ; $6421: $08 $00 $5d
	and  c                                           ; $6424: $a1
	dec  c                                           ; $6425: $0d
	add  [hl]                                        ; $6426: $86
	ld   a, h                                        ; $6427: $7c
	inc  b                                           ; $6428: $04
	ld   d, a                                        ; $6429: $57
	inc  b                                           ; $642a: $04
	ld   h, e                                        ; $642b: $63
	ld   a, l                                        ; $642c: $7d
	rst  $38                                         ; $642d: $ff
	rst  $38                                         ; $642e: $ff
	dec  c                                           ; $642f: $0d
	ld   d, b                                        ; $6430: $50
	adc  h                                           ; $6431: $8c
	sbc  b                                           ; $6432: $98
	sub  [hl]                                        ; $6433: $96
	ld   e, l                                        ; $6434: $5d
	ld   a, b                                        ; $6435: $78
	ld   d, d                                        ; $6436: $52
	ld   a, b                                        ; $6437: $78
	sbc  a                                           ; $6438: $9f
	dec  c                                           ; $6439: $0d
	nop                                              ; $643a: $00
	ld   a, [bc]                                     ; $643b: $0a
	ld   bc, $7190                                   ; $643c: $01 $90 $71
	halt                                             ; $643f: $76
	ld   [bc], a                                     ; $6440: $02
	ld   a, [de]                                     ; $6441: $1a
	inc  bc                                          ; $6442: $03
	ld   l, e                                        ; $6443: $6b

jr_051_6444:
	ld   a, h                                        ; $6444: $7c
	ld   [bc], a                                     ; $6445: $02
	and  c                                           ; $6446: $a1
	inc  bc                                          ; $6447: $03
	and  b                                           ; $6448: $a0
	ld   l, a                                        ; $6449: $6f
	and  b                                           ; $644a: $a0
	dec  c                                           ; $644b: $0d
	ld   [bc], a                                     ; $644c: $02
	ld   h, l                                        ; $644d: $65
	ld   d, [hl]                                     ; $644e: $56
	ld   [hl], h                                     ; $644f: $74
	ld   [bc], a                                     ; $6450: $02
	ld   a, a                                        ; $6451: $7f
	inc  b                                           ; $6452: $04
	dec  de                                          ; $6453: $1b
	ld   h, l                                        ; $6454: $65
	ld   l, l                                        ; $6455: $6d
	adc  c                                           ; $6456: $89
	ld   d, h                                        ; $6457: $54
	ld   e, d                                        ; $6458: $5a
	ld   d, d                                        ; $6459: $52
	ld   d, d                                        ; $645a: $52
	halt                                             ; $645b: $76
	dec  c                                           ; $645c: $0d
	dec  b                                           ; $645d: $05
	pop  de                                          ; $645e: $d1
	ld   d, h                                        ; $645f: $54
	ld   l, h                                        ; $6460: $6c
	sbc  a                                           ; $6461: $9f
	dec  c                                           ; $6462: $0d
	nop                                              ; $6463: $00
	ld   a, [bc]                                     ; $6464: $0a
	ld   b, $1c                                      ; $6465: $06 $1c
	ld   a, [bc]                                     ; $6467: $0a
	ld   bc, $cf02                                   ; $6468: $01 $02 $cf
	dec  b                                           ; $646b: $05
	ld   a, [de]                                     ; $646c: $1a
	ld   a, h                                        ; $646d: $7c
	sbc  [hl]                                        ; $646e: $9e
	ld   [$5d00], sp                                 ; $646f: $08 $00 $5d
	and  c                                           ; $6472: $a1
	dec  c                                           ; $6473: $0d
	add  [hl]                                        ; $6474: $86
	ld   a, h                                        ; $6475: $7c
	inc  b                                           ; $6476: $04
	ld   d, a                                        ; $6477: $57
	inc  b                                           ; $6478: $04
	ld   h, e                                        ; $6479: $63
	ld   a, l                                        ; $647a: $7d
	sbc  [hl]                                        ; $647b: $9e
	ld   e, c                                        ; $647c: $59
	ld   a, b                                        ; $647d: $78
	sbc  b                                           ; $647e: $98
	ld   d, d                                        ; $647f: $52
	ld   d, d                                        ; $6480: $52
	dec  c                                           ; $6481: $0d
	halt                                             ; $6482: $76
	dec  b                                           ; $6483: $05
	pop  de                                          ; $6484: $d1
	ld   d, h                                        ; $6485: $54
	ld   l, h                                        ; $6486: $6c
	sbc  a                                           ; $6487: $9f
	dec  c                                           ; $6488: $0d
	nop                                              ; $6489: $00
	ld   a, [bc]                                     ; $648a: $0a
	ld   bc, $ca02                                   ; $648b: $01 $02 $ca
	sub  b                                           ; $648e: $90
	ld   l, e                                        ; $648f: $6b
	sbc  d                                           ; $6490: $9a
	ld   a, c                                        ; $6491: $79
	ld   [bc], a                                     ; $6492: $02
	add  hl, bc                                      ; $6493: $09
	ld   d, [hl]                                     ; $6494: $56
	sub  a                                           ; $6495: $97
	sbc  d                                           ; $6496: $9a
	sbc  c                                           ; $6497: $99
	sub  [hl]                                        ; $6498: $96
	ld   d, h                                        ; $6499: $54
	ld   a, c                                        ; $649a: $79
	dec  c                                           ; $649b: $0d
	ld   e, d                                        ; $649c: $5a
	and  c                                           ; $649d: $a1
	ld   a, [hl]                                     ; $649e: $7e
	sbc  c                                           ; $649f: $99
	and  c                                           ; $64a0: $a1
	ld   l, [hl]                                     ; $64a1: $6e
	ld   l, h                                        ; $64a2: $6c
	sbc  a                                           ; $64a3: $9f
	dec  c                                           ; $64a4: $0d
	nop                                              ; $64a5: $00
	ld   a, [bc]                                     ; $64a6: $0a
	ld   b, $1c                                      ; $64a7: $06 $1c
	ld   a, [bc]                                     ; $64a9: $0a
	rrca                                             ; $64aa: $0f
	nop                                              ; $64ab: $00
	ld   bc, $ac01                                   ; $64ac: $01 $01 $ac
	push af                                          ; $64af: $f5
	bit  4, e                                        ; $64b0: $cb $63
	and  c                                           ; $64b2: $a1
	ld   a, h                                        ; $64b3: $7c
	inc  b                                           ; $64b4: $04
	ld   l, l                                        ; $64b5: $6d
	add  [hl]                                        ; $64b6: $86
	ld   a, h                                        ; $64b7: $7c
	inc  b                                           ; $64b8: $04
	ld   d, a                                        ; $64b9: $57
	inc  b                                           ; $64ba: $04
	ld   h, e                                        ; $64bb: $63
	ld   [hl], c                                     ; $64bc: $71
	ld   [hl], h                                     ; $64bd: $74
	dec  c                                           ; $64be: $0d
	ld   [hl], a                                     ; $64bf: $77
	ld   d, h                                        ; $64c0: $54
	ld   a, b                                        ; $64c1: $78
	and  c                                           ; $64c2: $a1
	ld   [hl], l                                     ; $64c3: $75

jr_051_64c4:
	ld   h, l                                        ; $64c4: $65
	sub  l                                           ; $64c5: $95
	ld   d, h                                        ; $64c6: $54
	ld   e, c                                        ; $64c7: $59
	ld   sp, hl                                      ; $64c8: $f9
	dec  c                                           ; $64c9: $0d
	nop                                              ; $64ca: $00
	ld   a, [bc]                                     ; $64cb: $0a
	rrca                                             ; $64cc: $0f
	add  hl, bc                                      ; $64cd: $09
	nop                                              ; $64ce: $00
	ld   bc, $8e83                                   ; $64cf: $01 $83 $8e
	sbc  [hl]                                        ; $64d2: $9e
	ld   l, e                                        ; $64d3: $6b
	ld   d, h                                        ; $64d4: $54
	ld   l, [hl]                                     ; $64d5: $6e
	ld   a, b                                        ; $64d6: $78
	rst  $38                                         ; $64d7: $ff
	rst  $38                                         ; $64d8: $ff
	dec  c                                           ; $64d9: $0d
	nop                                              ; $64da: $00
	ld   a, [bc]                                     ; $64db: $0a
	rlca                                             ; $64dc: $07
	adc  [hl]                                        ; $64dd: $8e
	add  hl, bc                                      ; $64de: $09
	inc  bc                                          ; $64df: $03
	ld   d, $01                                      ; $64e0: $16 $01
	ld   h, h                                        ; $64e2: $64
	inc  hl                                          ; $64e3: $23
	nop                                              ; $64e4: $00
	rlca                                             ; $64e5: $07
	db   $db                                         ; $64e6: $db
	add  hl, bc                                      ; $64e7: $09
	inc  bc                                          ; $64e8: $03
	ld   d, $01                                      ; $64e9: $16 $01
	sub  [hl]                                        ; $64eb: $96
	dec  h                                           ; $64ec: $25
	nop                                              ; $64ed: $00
	ld   bc, $f5ac                                   ; $64ee: $01 $ac $f5
	bit  7, h                                        ; $64f1: $cb $7c
	sbc  [hl]                                        ; $64f3: $9e
	ld   [$5d00], sp                                 ; $64f4: $08 $00 $5d
	and  c                                           ; $64f7: $a1
	dec  c                                           ; $64f8: $0d
	add  [hl]                                        ; $64f9: $86
	ld   a, h                                        ; $64fa: $7c
	inc  b                                           ; $64fb: $04
	ld   d, a                                        ; $64fc: $57
	inc  b                                           ; $64fd: $04
	ld   h, e                                        ; $64fe: $63
	ld   a, l                                        ; $64ff: $7d
	sbc  [hl]                                        ; $6500: $9e
	adc  h                                           ; $6501: $8c
	ld   d, b                                        ; $6502: $50
	adc  h                                           ; $6503: $8c
	ld   d, b                                        ; $6504: $50
	dec  c                                           ; $6505: $0d
	halt                                             ; $6506: $76
	ld   d, d                                        ; $6507: $52
	ld   [hl], c                                     ; $6508: $71
	ld   l, l                                        ; $6509: $6d
	halt                                             ; $650a: $76
	ld   h, c                                        ; $650b: $61
	sbc  e                                           ; $650c: $9b
	ld   e, c                                        ; $650d: $59
	ld   a, b                                        ; $650e: $78
	sbc  a                                           ; $650f: $9f
	dec  c                                           ; $6510: $0d
	nop                                              ; $6511: $00
	ld   a, [bc]                                     ; $6512: $0a
	ld   bc, $5d76                                   ; $6513: $01 $76 $5d
	ld   a, c                                        ; $6516: $79
	ld   [bc], a                                     ; $6517: $02
	jr   z, jr_051_656c                              ; $6518: $28 $52

	dec  b                                           ; $651a: $05
	jr   nz, @-$6e                                   ; $651b: $20 $90

	ld   [bc], a                                     ; $651d: $02
	jp   nz, Jump_051_7859                           ; $651e: $c2 $59 $78

	ld   d, d                                        ; $6521: $52
	ld   h, l                                        ; $6522: $65
	rst  $38                                         ; $6523: $ff
	rst  $38                                         ; $6524: $ff
	dec  c                                           ; $6525: $0d
	ld   e, c                                        ; $6526: $59
	halt                                             ; $6527: $76
	ld   d, d                                        ; $6528: $52
	ld   [hl], c                                     ; $6529: $71
	ld   [hl], h                                     ; $652a: $74
	sbc  [hl]                                        ; $652b: $9e
	ld   d, d                                        ; $652c: $52
	ld   d, d                                        ; $652d: $52
	halt                                             ; $652e: $76
	ld   d, d                                        ; $652f: $52
	ld   d, h                                        ; $6530: $54
	dec  b                                           ; $6531: $05
	jr   nz, jr_051_64c4                             ; $6532: $20 $90

	dec  c                                           ; $6534: $0d
	ld   [bc], a                                     ; $6535: $02
	jp   nz, Jump_051_7859                           ; $6536: $c2 $59 $78

	ld   d, d                                        ; $6539: $52
	ld   a, b                                        ; $653a: $78
	sbc  a                                           ; $653b: $9f
	dec  c                                           ; $653c: $0d
	nop                                              ; $653d: $00
	ld   a, [bc]                                     ; $653e: $0a
	ld   b, $1c                                      ; $653f: $06 $1c
	ld   a, [bc]                                     ; $6541: $0a
	ld   bc, $f5ac                                   ; $6542: $01 $ac $f5
	bit  7, h                                        ; $6545: $cb $7c
	sbc  [hl]                                        ; $6547: $9e
	ld   [$5d00], sp                                 ; $6548: $08 $00 $5d
	and  c                                           ; $654b: $a1
	dec  c                                           ; $654c: $0d
	add  [hl]                                        ; $654d: $86
	ld   a, h                                        ; $654e: $7c
	inc  b                                           ; $654f: $04
	ld   d, a                                        ; $6550: $57
	inc  b                                           ; $6551: $04
	ld   h, e                                        ; $6552: $63
	ld   a, l                                        ; $6553: $7d
	rst  $38                                         ; $6554: $ff
	rst  $38                                         ; $6555: $ff
	dec  c                                           ; $6556: $0d
	ld   d, b                                        ; $6557: $50
	adc  h                                           ; $6558: $8c
	sbc  b                                           ; $6559: $98
	sub  [hl]                                        ; $655a: $96

Jump_051_655b:
	ld   e, l                                        ; $655b: $5d
	ld   a, b                                        ; $655c: $78
	ld   d, d                                        ; $655d: $52
	ld   a, b                                        ; $655e: $78
	sbc  a                                           ; $655f: $9f
	dec  c                                           ; $6560: $0d
	nop                                              ; $6561: $00
	ld   a, [bc]                                     ; $6562: $0a
	ld   bc, $7190                                   ; $6563: $01 $90 $71
	halt                                             ; $6566: $76
	ld   [bc], a                                     ; $6567: $02
	ld   a, [de]                                     ; $6568: $1a
	inc  bc                                          ; $6569: $03
	ld   l, e                                        ; $656a: $6b
	ld   a, h                                        ; $656b: $7c

jr_051_656c:
	ld   [bc], a                                     ; $656c: $02
	and  c                                           ; $656d: $a1
	inc  bc                                          ; $656e: $03
	and  b                                           ; $656f: $a0
	ld   l, a                                        ; $6570: $6f
	and  b                                           ; $6571: $a0
	dec  c                                           ; $6572: $0d
	ld   [bc], a                                     ; $6573: $02
	ld   h, l                                        ; $6574: $65
	ld   d, [hl]                                     ; $6575: $56

Call_051_6576:
	ld   [hl], h                                     ; $6576: $74
	ld   [bc], a                                     ; $6577: $02
	ld   a, a                                        ; $6578: $7f
	inc  b                                           ; $6579: $04
	dec  de                                          ; $657a: $1b
	ld   h, l                                        ; $657b: $65
	ld   l, l                                        ; $657c: $6d
	adc  c                                           ; $657d: $89
	ld   d, h                                        ; $657e: $54
	ld   e, d                                        ; $657f: $5a
	ld   d, d                                        ; $6580: $52
	ld   d, d                                        ; $6581: $52
	halt                                             ; $6582: $76
	dec  c                                           ; $6583: $0d
	dec  b                                           ; $6584: $05
	pop  de                                          ; $6585: $d1
	ld   d, h                                        ; $6586: $54
	ld   l, h                                        ; $6587: $6c
	sbc  a                                           ; $6588: $9f
	dec  c                                           ; $6589: $0d
	nop                                              ; $658a: $00
	ld   a, [bc]                                     ; $658b: $0a
	ld   b, $1c                                      ; $658c: $06 $1c
	ld   a, [bc]                                     ; $658e: $0a
	ld   bc, $f5ac                                   ; $658f: $01 $ac $f5
	bit  7, h                                        ; $6592: $cb $7c
	sbc  [hl]                                        ; $6594: $9e
	ld   [$5d00], sp                                 ; $6595: $08 $00 $5d
	and  c                                           ; $6598: $a1
	dec  c                                           ; $6599: $0d
	add  [hl]                                        ; $659a: $86
	ld   a, h                                        ; $659b: $7c
	inc  b                                           ; $659c: $04
	ld   d, a                                        ; $659d: $57
	inc  b                                           ; $659e: $04
	ld   h, e                                        ; $659f: $63
	ld   a, l                                        ; $65a0: $7d
	sbc  [hl]                                        ; $65a1: $9e
	ld   e, c                                        ; $65a2: $59
	ld   a, b                                        ; $65a3: $78
	sbc  b                                           ; $65a4: $98
	ld   d, d                                        ; $65a5: $52
	ld   d, d                                        ; $65a6: $52
	dec  c                                           ; $65a7: $0d
	halt                                             ; $65a8: $76
	dec  b                                           ; $65a9: $05
	pop  de                                          ; $65aa: $d1
	ld   d, h                                        ; $65ab: $54
	ld   l, h                                        ; $65ac: $6c
	sbc  a                                           ; $65ad: $9f
	dec  c                                           ; $65ae: $0d
	nop                                              ; $65af: $00
	ld   a, [bc]                                     ; $65b0: $0a
	ld   bc, $ca02                                   ; $65b1: $01 $02 $ca
	sub  b                                           ; $65b4: $90
	ld   l, e                                        ; $65b5: $6b
	sbc  d                                           ; $65b6: $9a
	ld   a, c                                        ; $65b7: $79
	ld   [bc], a                                     ; $65b8: $02
	add  hl, bc                                      ; $65b9: $09
	ld   d, [hl]                                     ; $65ba: $56
	sub  a                                           ; $65bb: $97
	sbc  d                                           ; $65bc: $9a
	sbc  c                                           ; $65bd: $99
	sub  [hl]                                        ; $65be: $96
	ld   d, h                                        ; $65bf: $54
	ld   a, c                                        ; $65c0: $79
	dec  c                                           ; $65c1: $0d
	ld   e, d                                        ; $65c2: $5a
	and  c                                           ; $65c3: $a1
	ld   a, [hl]                                     ; $65c4: $7e
	sbc  c                                           ; $65c5: $99
	and  c                                           ; $65c6: $a1
	ld   l, [hl]                                     ; $65c7: $6e
	ld   l, h                                        ; $65c8: $6c
	sbc  a                                           ; $65c9: $9f
	dec  c                                           ; $65ca: $0d
	nop                                              ; $65cb: $00
	ld   a, [bc]                                     ; $65cc: $0a
	ld   b, $1c                                      ; $65cd: $06 $1c
	ld   a, [bc]                                     ; $65cf: $0a
	rrca                                             ; $65d0: $0f
	nop                                              ; $65d1: $00
	ld   bc, $6b01                                   ; $65d2: $01 $01 $6b
	ld   d, h                                        ; $65d5: $54
	ld   [hl], l                                     ; $65d6: $75
	ld   h, a                                        ; $65d7: $67
	ld   e, c                                        ; $65d8: $59
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	dec  c                                           ; $65db: $0d
	ld   d, b                                        ; $65dc: $50
	sbc  b                                           ; $65dd: $98
	ld   e, d                                        ; $65de: $5a
	halt                                             ; $65df: $76
	ld   d, h                                        ; $65e0: $54
	ld   h, d                                        ; $65e1: $62
	ld   h, h                                        ; $65e2: $64
	ld   d, d                                        ; $65e3: $52
	adc  h                                           ; $65e4: $8c
	ld   h, l                                        ; $65e5: $65
	ld   l, l                                        ; $65e6: $6d
	sbc  a                                           ; $65e7: $9f
	dec  c                                           ; $65e8: $0d
	nop                                              ; $65e9: $00
	ld   a, [bc]                                     ; $65ea: $0a
	rrca                                             ; $65eb: $0f
	add  hl, bc                                      ; $65ec: $09
	nop                                              ; $65ed: $00
	ld   bc, $a154                                   ; $65ee: $01 $54 $a1
	sbc  a                                           ; $65f1: $9f
	dec  c                                           ; $65f2: $0d
	ld   e, d                                        ; $65f3: $5a
	and  c                                           ; $65f4: $a1
	ld   a, [hl]                                     ; $65f5: $7e
	sbc  d                                           ; $65f6: $9a
	sub  [hl]                                        ; $65f7: $96
	sbc  a                                           ; $65f8: $9f
	dec  c                                           ; $65f9: $0d
	nop                                              ; $65fa: $00
	ld   a, [bc]                                     ; $65fb: $0a
	nop                                              ; $65fc: $00
	rrca                                             ; $65fd: $0f
	nop                                              ; $65fe: $00
	ld   bc, $5001                                   ; $65ff: $01 $01 $50
	ld   a, h                                        ; $6602: $7c
	sbc  [hl]                                        ; $6603: $9e
	inc  bc                                          ; $6604: $03
	ld   l, l                                        ; $6605: $6d
	dec  b                                           ; $6606: $05
	add  hl, de                                      ; $6607: $19
	ld   a, h                                        ; $6608: $7c
	and  e                                           ; $6609: $a3
	jp   z, $a5d1                                    ; $660a: $ca $d1 $a5

	cp   d                                           ; $660d: $ba
	and  b                                           ; $660e: $a0
	dec  c                                           ; $660f: $0d
	ld   e, b                                        ; $6610: $58
	ld   [bc], a                                     ; $6611: $02
	add  b                                           ; $6612: $80
	ld   d, d                                        ; $6613: $52
	ld   h, l                                        ; $6614: $65
	ld   l, l                                        ; $6615: $6d
	ld   d, d                                        ; $6616: $52
	and  c                                           ; $6617: $a1
	ld   [hl], l                                     ; $6618: $75
	ld   h, a                                        ; $6619: $67
	ld   e, a                                        ; $661a: $5f
	ld   [hl], a                                     ; $661b: $77
	sbc  a                                           ; $661c: $9f
	dec  c                                           ; $661d: $0d
	nop                                              ; $661e: $00
	ld   a, [bc]                                     ; $661f: $0a
	rrca                                             ; $6620: $0f
	add  hl, bc                                      ; $6621: $09
	nop                                              ; $6622: $00
	ld   bc, $8e83                                   ; $6623: $01 $83 $8e
	sbc  [hl]                                        ; $6626: $9e
	ld   l, e                                        ; $6627: $6b
	ld   d, h                                        ; $6628: $54
	ld   l, [hl]                                     ; $6629: $6e
	ld   a, b                                        ; $662a: $78
	rst  $38                                         ; $662b: $ff
	rst  $38                                         ; $662c: $ff
	dec  c                                           ; $662d: $0d
	nop                                              ; $662e: $00
	ld   a, [bc]                                     ; $662f: $0a
	rlca                                             ; $6630: $07
	ld   b, d                                        ; $6631: $42
	dec  bc                                          ; $6632: $0b
	inc  bc                                          ; $6633: $03
	inc  hl                                          ; $6634: $23
	ld   bc, $234e                                   ; $6635: $01 $4e $23
	inc  bc                                          ; $6638: $03
	inc  h                                           ; $6639: $24
	ld   bc, $234e                                   ; $663a: $01 $4e $23
	inc  e                                           ; $663d: $1c
	inc  bc                                          ; $663e: $03
	dec  h                                           ; $663f: $25
	ld   bc, $234e                                   ; $6640: $01 $4e $23
	inc  e                                           ; $6643: $1c
	inc  bc                                          ; $6644: $03
	ld   [hl+], a                                    ; $6645: $22
	ld   bc, $234e                                   ; $6646: $01 $4e $23
	inc  e                                           ; $6649: $1c
	inc  bc                                          ; $664a: $03
	ld   hl, $4e01                                   ; $664b: $21 $01 $4e
	inc  hl                                          ; $664e: $23
	inc  e                                           ; $664f: $1c
	nop                                              ; $6650: $00
	rlca                                             ; $6651: $07
	or   [hl]                                        ; $6652: $b6
	dec  bc                                          ; $6653: $0b
	inc  bc                                          ; $6654: $03
	inc  hl                                          ; $6655: $23
	ld   bc, $255f                                   ; $6656: $01 $5f $25
	inc  bc                                          ; $6659: $03
	inc  h                                           ; $665a: $24
	ld   bc, $255f                                   ; $665b: $01 $5f $25
	inc  e                                           ; $665e: $1c
	inc  bc                                          ; $665f: $03
	dec  h                                           ; $6660: $25
	ld   bc, $255f                                   ; $6661: $01 $5f $25
	inc  e                                           ; $6664: $1c
	inc  bc                                          ; $6665: $03
	ld   [hl+], a                                    ; $6666: $22
	ld   bc, $255f                                   ; $6667: $01 $5f $25
	inc  e                                           ; $666a: $1c
	inc  bc                                          ; $666b: $03
	ld   hl, $5f01                                   ; $666c: $21 $01 $5f
	dec  h                                           ; $666f: $25
	inc  e                                           ; $6670: $1c
	nop                                              ; $6671: $00
	rlca                                             ; $6672: $07
	ld   b, b                                        ; $6673: $40
	inc  c                                           ; $6674: $0c
	inc  bc                                          ; $6675: $03
	inc  hl                                          ; $6676: $23
	ld   bc, $234e                                   ; $6677: $01 $4e $23
	inc  bc                                          ; $667a: $03
	inc  h                                           ; $667b: $24
	ld   bc, $234e                                   ; $667c: $01 $4e $23
	inc  e                                           ; $667f: $1c
	inc  bc                                          ; $6680: $03
	dec  h                                           ; $6681: $25
	ld   bc, $234e                                   ; $6682: $01 $4e $23
	inc  e                                           ; $6685: $1c
	nop                                              ; $6686: $00
	rlca                                             ; $6687: $07
	ldh  a, [$0c]                                    ; $6688: $f0 $0c
	inc  bc                                          ; $668a: $03
	inc  h                                           ; $668b: $24
	inc  bc                                          ; $668c: $03
	inc  hl                                          ; $668d: $23
	inc  hl                                          ; $668e: $23
	inc  bc                                          ; $668f: $03
	inc  h                                           ; $6690: $24
	inc  bc                                          ; $6691: $03
	dec  h                                           ; $6692: $25
	inc  hl                                          ; $6693: $23
	inc  e                                           ; $6694: $1c
	inc  bc                                          ; $6695: $03
	inc  h                                           ; $6696: $24
	inc  bc                                          ; $6697: $03
	ld   [hl+], a                                    ; $6698: $22
	inc  hl                                          ; $6699: $23
	inc  e                                           ; $669a: $1c
	inc  bc                                          ; $669b: $03
	inc  h                                           ; $669c: $24
	inc  bc                                          ; $669d: $03
	ld   hl, $1c23                                   ; $669e: $21 $23 $1c
	nop                                              ; $66a1: $00
	rlca                                             ; $66a2: $07
	adc  h                                           ; $66a3: $8c
	dec  c                                           ; $66a4: $0d
	inc  bc                                          ; $66a5: $03
	dec  h                                           ; $66a6: $25
	inc  bc                                          ; $66a7: $03
	inc  hl                                          ; $66a8: $23
	inc  hl                                          ; $66a9: $23
	inc  bc                                          ; $66aa: $03
	dec  h                                           ; $66ab: $25
	inc  bc                                          ; $66ac: $03
	inc  h                                           ; $66ad: $24
	inc  hl                                          ; $66ae: $23
	inc  e                                           ; $66af: $1c
	inc  bc                                          ; $66b0: $03
	dec  h                                           ; $66b1: $25
	inc  bc                                          ; $66b2: $03
	ld   [hl+], a                                    ; $66b3: $22
	inc  hl                                          ; $66b4: $23
	inc  e                                           ; $66b5: $1c
	inc  bc                                          ; $66b6: $03
	dec  h                                           ; $66b7: $25
	inc  bc                                          ; $66b8: $03
	ld   hl, $1c23                                   ; $66b9: $21 $23 $1c
	nop                                              ; $66bc: $00
	rlca                                             ; $66bd: $07
	dec  l                                           ; $66be: $2d
	ld   c, $03                                      ; $66bf: $0e $03
	ld   [hl+], a                                    ; $66c1: $22
	inc  bc                                          ; $66c2: $03
	inc  hl                                          ; $66c3: $23
	inc  hl                                          ; $66c4: $23
	inc  bc                                          ; $66c5: $03
	ld   [hl+], a                                    ; $66c6: $22
	inc  bc                                          ; $66c7: $03
	inc  h                                           ; $66c8: $24
	inc  hl                                          ; $66c9: $23
	inc  e                                           ; $66ca: $1c
	inc  bc                                          ; $66cb: $03
	ld   [hl+], a                                    ; $66cc: $22
	inc  bc                                          ; $66cd: $03
	dec  h                                           ; $66ce: $25
	inc  hl                                          ; $66cf: $23
	inc  e                                           ; $66d0: $1c
	inc  bc                                          ; $66d1: $03
	ld   [hl+], a                                    ; $66d2: $22
	inc  bc                                          ; $66d3: $03
	ld   hl, $1c23                                   ; $66d4: $21 $23 $1c
	nop                                              ; $66d7: $00
	rlca                                             ; $66d8: $07
	ld   h, a                                        ; $66d9: $67
	rrca                                             ; $66da: $0f
	inc  bc                                          ; $66db: $03
	inc  hl                                          ; $66dc: $23
	inc  bc                                          ; $66dd: $03
	ld   [hl+], a                                    ; $66de: $22
	inc  hl                                          ; $66df: $23
	inc  bc                                          ; $66e0: $03
	inc  hl                                          ; $66e1: $23
	inc  bc                                          ; $66e2: $03
	inc  h                                           ; $66e3: $24
	inc  hl                                          ; $66e4: $23
	inc  e                                           ; $66e5: $1c
	inc  bc                                          ; $66e6: $03
	inc  hl                                          ; $66e7: $23
	inc  bc                                          ; $66e8: $03
	ld   [hl+], a                                    ; $66e9: $22
	inc  hl                                          ; $66ea: $23
	inc  e                                           ; $66eb: $1c
	inc  bc                                          ; $66ec: $03
	inc  hl                                          ; $66ed: $23
	inc  bc                                          ; $66ee: $03
	ld   hl, $1c23                                   ; $66ef: $21 $23 $1c
	nop                                              ; $66f2: $00
	ld   b, $c3                                      ; $66f3: $06 $c3
	ld   c, $0f                                      ; $66f5: $0e $0f
	add  hl, bc                                      ; $66f7: $09
	nop                                              ; $66f8: $00
	ld   bc, $ca02                                   ; $66f9: $01 $02 $ca
	ld   a, h                                        ; $66fc: $7c
	inc  b                                           ; $66fd: $04
	ld   a, d                                        ; $66fe: $7a
	ld   [bc], a                                     ; $66ff: $02
	ld   a, e                                        ; $6700: $7b
	sbc  [hl]                                        ; $6701: $9e
	and  e                                           ; $6702: $a3
	jp   z, $a5d1                                    ; $6703: $ca $d1 $a5

	cp   d                                           ; $6706: $ba
	ld   d, d                                        ; $6707: $52
	ld   l, d                                        ; $6708: $6a
	and  c                                           ; $6709: $a1
	ld   a, c                                        ; $670a: $79
	dec  c                                           ; $670b: $0d
	sub  b                                           ; $670c: $90
	ld   [hl], c                                     ; $670d: $71
	halt                                             ; $670e: $76
	ld   l, a                                        ; $670f: $6f
	sub  c                                           ; $6710: $91
	and  c                                           ; $6711: $a1
	halt                                             ; $6712: $76
	inc  bc                                          ; $6713: $03
	ld   l, l                                        ; $6714: $6d
	dec  b                                           ; $6715: $05
	add  hl, de                                      ; $6716: $19
	ld   a, c                                        ; $6717: $79
	dec  c                                           ; $6718: $0d
	inc  bc                                          ; $6719: $03
	add  b                                           ; $671a: $80
	ld   l, l                                        ; $671b: $6d
	adc  c                                           ; $671c: $89
	ld   d, h                                        ; $671d: $54
	ld   e, d                                        ; $671e: $5a
	ld   d, d                                        ; $671f: $52
	ld   d, d                                        ; $6720: $52
	ld   a, b                                        ; $6721: $78
	sbc  a                                           ; $6722: $9f
	dec  c                                           ; $6723: $0d
	nop                                              ; $6724: $00
	ld   a, [bc]                                     ; $6725: $0a
	ld   bc, $d303                                   ; $6726: $01 $03 $d3
	dec  b                                           ; $6729: $05
	ld   a, [bc]                                     ; $672a: $0a
	sub  b                                           ; $672b: $90
	ld   l, c                                        ; $672c: $69
	ld   l, b                                        ; $672d: $68
	ld   a, c                                        ; $672e: $79
	ld   [bc], a                                     ; $672f: $02
	reti                                             ; $6730: $d9


	ld   [bc], a                                     ; $6731: $02
	ld   h, e                                        ; $6732: $63
	ld   l, [hl]                                     ; $6733: $6e
	ld   e, a                                        ; $6734: $5f
	dec  c                                           ; $6735: $0d
	sub  b                                           ; $6736: $90
	halt                                             ; $6737: $76
	adc  a                                           ; $6738: $8f
	sbc  c                                           ; $6739: $99
	sub  [hl]                                        ; $673a: $96
	ld   d, h                                        ; $673b: $54
	ld   [hl], l                                     ; $673c: $75
	ld   a, l                                        ; $673d: $7d
	pop  bc                                          ; $673e: $c1
	db   $e3                                         ; $673f: $e3
	ld   l, [hl]                                     ; $6740: $6e
	ld   l, h                                        ; $6741: $6c
	sbc  a                                           ; $6742: $9f
	dec  c                                           ; $6743: $0d
	nop                                              ; $6744: $00
	ld   a, [bc]                                     ; $6745: $0a
	rrca                                             ; $6746: $0f
	nop                                              ; $6747: $00
	ld   bc, $7d01                                   ; $6748: $01 $01 $7d
	sbc  [hl]                                        ; $674b: $9e
	ld   a, l                                        ; $674c: $7d
	ld   d, d                                        ; $674d: $52
	sbc  a                                           ; $674e: $9f
	dec  c                                           ; $674f: $0d
	sbc  l                                           ; $6750: $9d
	ld   e, c                                        ; $6751: $59
	sbc  b                                           ; $6752: $98
	adc  h                                           ; $6753: $8c
	ld   h, l                                        ; $6754: $65
	ld   l, l                                        ; $6755: $6d
	ld   a, [$0dfa]                                  ; $6756: $fa $fa $0d
	ld   d, b                                        ; $6759: $50
	sbc  b                                           ; $675a: $98
	ld   e, d                                        ; $675b: $5a
	halt                                             ; $675c: $76
	ld   d, h                                        ; $675d: $54
	ld   h, d                                        ; $675e: $62
	ld   h, h                                        ; $675f: $64
	ld   d, d                                        ; $6760: $52
	adc  h                                           ; $6761: $8c
	ld   h, a                                        ; $6762: $67
	ld   a, [$000d]                                  ; $6763: $fa $0d $00
	ld   a, [bc]                                     ; $6766: $0a
	ld   b, $08                                      ; $6767: $06 $08
	db   $10                                         ; $6769: $10
	inc  e                                           ; $676a: $1c
	add  hl, bc                                      ; $676b: $09
	ld   bc, $0101                                   ; $676c: $01 $01 $01
	ld   [$5d00], sp                                 ; $676f: $08 $00 $5d
	and  c                                           ; $6772: $a1
	ld   a, l                                        ; $6773: $7d
	dec  c                                           ; $6774: $0d
	ld   [bc], a                                     ; $6775: $02
	and  l                                           ; $6776: $a5
	ld   a, h                                        ; $6777: $7c
	halt                                             ; $6778: $76
	ld   h, c                                        ; $6779: $61
	sbc  e                                           ; $677a: $9b
	ld   [bc], a                                     ; $677b: $02
	sbc  l                                           ; $677c: $9d
	ld   d, h                                        ; $677d: $54
	ld   h, c                                        ; $677e: $61
	halt                                             ; $677f: $76
	ld   a, b                                        ; $6780: $78
	ld   h, l                                        ; $6781: $65
	ld   l, [hl]                                     ; $6782: $6e
	ld   a, b                                        ; $6783: $78
	sbc  a                                           ; $6784: $9f
	dec  c                                           ; $6785: $0d
	nop                                              ; $6786: $00
	ld   a, [bc]                                     ; $6787: $0a
	ld   bc, $7c77                                   ; $6788: $01 $77 $7c
	inc  bc                                          ; $678b: $03
	ld   l, l                                        ; $678c: $6d
	dec  b                                           ; $678d: $05
	add  hl, de                                      ; $678e: $19
	sub  b                                           ; $678f: $90
	adc  h                                           ; $6790: $8c
	and  c                                           ; $6791: $a1
	add  a                                           ; $6792: $87
	and  c                                           ; $6793: $a1
	ld   a, b                                        ; $6794: $78
	ld   e, l                                        ; $6795: $5d
	dec  c                                           ; $6796: $0d
	ld   e, d                                        ; $6797: $5a
	and  c                                           ; $6798: $a1
	ld   a, [hl]                                     ; $6799: $7e
	ld   [hl], c                                     ; $679a: $71
	ld   [hl], h                                     ; $679b: $74
	sub  d                                           ; $679c: $92
	ld   [hl], c                                     ; $679d: $71
	ld   [hl], h                                     ; $679e: $74
	ld   d, d                                        ; $679f: $52
	sbc  c                                           ; $67a0: $99
	dec  c                                           ; $67a1: $0d
	sub  [hl]                                        ; $67a2: $96
	ld   d, h                                        ; $67a3: $54
	ld   l, [hl]                                     ; $67a4: $6e
	ld   h, l                                        ; $67a5: $65
	rst  $38                                         ; $67a6: $ff
	rst  $38                                         ; $67a7: $ff
	dec  c                                           ; $67a8: $0d
	nop                                              ; $67a9: $00
	ld   a, [bc]                                     ; $67aa: $0a
	ld   bc, $9a61                                   ; $67ab: $01 $61 $9a
	ld   e, c                                        ; $67ae: $59
	sub  a                                           ; $67af: $97
	sub  b                                           ; $67b0: $90
	sbc  [hl]                                        ; $67b1: $9e
	ld   h, c                                        ; $67b2: $61
	ld   a, h                                        ; $67b3: $7c
	inc  bc                                          ; $67b4: $03
	cp   $03                                         ; $67b5: $fe $03
	add  [hl]                                        ; $67b7: $86
	ld   [hl], l                                     ; $67b8: $75
	dec  c                                           ; $67b9: $0d
	ld   d, d                                        ; $67ba: $52
	ld   e, a                                        ; $67bb: $5f
	ld   a, [hl]                                     ; $67bc: $7e
	sbc  [hl]                                        ; $67bd: $9e
	ld   [bc], a                                     ; $67be: $02
	sbc  l                                           ; $67bf: $9d
	ld   d, h                                        ; $67c0: $54
	ld   h, c                                        ; $67c1: $61
	halt                                             ; $67c2: $76
	ld   a, b                                        ; $67c3: $78
	ld   h, l                                        ; $67c4: $65
	ld   l, [hl]                                     ; $67c5: $6e
	sbc  a                                           ; $67c6: $9f
	dec  c                                           ; $67c7: $0d
	nop                                              ; $67c8: $00
	ld   a, [bc]                                     ; $67c9: $0a
	rrca                                             ; $67ca: $0f
	nop                                              ; $67cb: $00
	ld   bc, $7d01                                   ; $67cc: $01 $01 $7d
	ld   d, d                                        ; $67cf: $52
	ld   a, [$500d]                                  ; $67d0: $fa $0d $50
	sbc  b                                           ; $67d3: $98
	ld   e, d                                        ; $67d4: $5a
	halt                                             ; $67d5: $76
	ld   d, h                                        ; $67d6: $54
	ld   h, d                                        ; $67d7: $62
	ld   h, h                                        ; $67d8: $64
	ld   d, d                                        ; $67d9: $52
	adc  h                                           ; $67da: $8c
	ld   h, a                                        ; $67db: $67
	ld   a, [$0dfa]                                  ; $67dc: $fa $fa $0d
	ld   [bc], a                                     ; $67df: $02
	and  l                                           ; $67e0: $a5
	ld   [bc], a                                     ; $67e1: $02
	xor  d                                           ; $67e2: $aa
	sub  b                                           ; $67e3: $90
	sbc  [hl]                                        ; $67e4: $9e
	ld   e, d                                        ; $67e5: $5a
	and  c                                           ; $67e6: $a1
	ld   a, [hl]                                     ; $67e7: $7e
	sbc  b                                           ; $67e8: $98
	adc  h                                           ; $67e9: $8c
	ld   h, a                                        ; $67ea: $67
	ld   [hl], c                                     ; $67eb: $71
	ld   a, [$0dfa]                                  ; $67ec: $fa $fa $0d
	nop                                              ; $67ef: $00
	ld   a, [bc]                                     ; $67f0: $0a
	ld   b, $08                                      ; $67f1: $06 $08
	db   $10                                         ; $67f3: $10
	rrca                                             ; $67f4: $0f
	add  hl, bc                                      ; $67f5: $09
	nop                                              ; $67f6: $00
	ld   bc, $0008                                   ; $67f7: $01 $08 $00
	ld   e, l                                        ; $67fa: $5d
	and  c                                           ; $67fb: $a1
	ld   a, l                                        ; $67fc: $7d
	dec  c                                           ; $67fd: $0d
	ld   [bc], a                                     ; $67fe: $02
	jr   nc, jr_051_6805                             ; $67ff: $30 $04

	dec  de                                          ; $6801: $1b
	inc  b                                           ; $6802: $04
	ld   b, e                                        ; $6803: $43
	dec  b                                           ; $6804: $05

jr_051_6805:
	ld   a, [bc]                                     ; $6805: $0a
	ld   a, h                                        ; $6806: $7c
	inc  b                                           ; $6807: $04
	ld   d, a                                        ; $6808: $57
	dec  b                                           ; $6809: $05
	add  hl, hl                                      ; $680a: $29
	ld   e, d                                        ; $680b: $5a
	inc  bc                                          ; $680c: $03
	ld   d, a                                        ; $680d: $57
	inc  b                                           ; $680e: $04
	dec  c                                           ; $680f: $0d
	inc  b                                           ; $6810: $04
	jr   nz, jr_051_688c                             ; $6811: $20 $79

	dec  c                                           ; $6813: $0d
	inc  bc                                          ; $6814: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6815: $cf
	ld   d, d                                        ; $6816: $52
	sub  [hl]                                        ; $6817: $96
	ld   d, h                                        ; $6818: $54
	ld   l, [hl]                                     ; $6819: $6e
	ld   a, b                                        ; $681a: $78
	sbc  a                                           ; $681b: $9f
	dec  c                                           ; $681c: $0d
	nop                                              ; $681d: $00
	ld   a, [bc]                                     ; $681e: $0a
	ld   bc, $5d63                                   ; $681f: $01 $63 $5d
	sub  a                                           ; $6822: $97
	ld   e, l                                        ; $6823: $5d
	and  c                                           ; $6824: $a1
	ld   a, h                                        ; $6825: $7c
	inc  bc                                          ; $6826: $03
	ld   l, l                                        ; $6827: $6d
	dec  b                                           ; $6828: $05
	add  hl, de                                      ; $6829: $19
	and  b                                           ; $682a: $a0
	dec  c                                           ; $682b: $0d
	ld   l, a                                        ; $682c: $6f
	sub  l                                           ; $682d: $95
	ld   [hl], c                                     ; $682e: $71
	halt                                             ; $682f: $76
	inc  b                                           ; $6830: $04
	rrca                                             ; $6831: $0f
	adc  a                                           ; $6832: $8f
	ld   a, c                                        ; $6833: $79
	halt                                             ; $6834: $76
	ld   [hl], c                                     ; $6835: $71
	ld   [hl], h                                     ; $6836: $74
	ld   e, b                                        ; $6837: $58
	ld   e, l                                        ; $6838: $5d
	halt                                             ; $6839: $76
	dec  c                                           ; $683a: $0d
	ld   d, d                                        ; $683b: $52
	ld   d, d                                        ; $683c: $52
	and  c                                           ; $683d: $a1
	ld   h, [hl]                                     ; $683e: $66
	sub  c                                           ; $683f: $91
	ld   a, b                                        ; $6840: $78
	ld   d, d                                        ; $6841: $52
	ld   e, c                                        ; $6842: $59
	ld   a, b                                        ; $6843: $78
	sbc  a                                           ; $6844: $9f
	dec  c                                           ; $6845: $0d
	nop                                              ; $6846: $00
	ld   a, [bc]                                     ; $6847: $0a
	ld   bc, $5d63                                   ; $6848: $01 $63 $5d
	sub  a                                           ; $684b: $97
	ld   e, l                                        ; $684c: $5d
	and  c                                           ; $684d: $a1
	ld   a, h                                        ; $684e: $7c
	inc  bc                                          ; $684f: $03
	ld   l, l                                        ; $6850: $6d
	dec  b                                           ; $6851: $05
	add  hl, de                                      ; $6852: $19
	ld   a, l                                        ; $6853: $7d
	sbc  [hl]                                        ; $6854: $9e
	dec  c                                           ; $6855: $0d
	inc  bc                                          ; $6856: $03
	ld   [hl], l                                     ; $6857: $75
	di                                               ; $6858: $f3
	ld   [bc], a                                     ; $6859: $02
	adc  h                                           ; $685a: $8c
	di                                               ; $685b: $f3
	inc  b                                           ; $685c: $04
	dec  c                                           ; $685d: $0d
	db   $10                                         ; $685e: $10
	halt                                             ; $685f: $76
	sbc  [hl]                                        ; $6860: $9e
	inc  bc                                          ; $6861: $03
	ld   d, a                                        ; $6862: $57
	ld   [hl], h                                     ; $6863: $74
	ld   a, h                                        ; $6864: $7c
	inc  b                                           ; $6865: $04
	rst  JumpTable                                         ; $6866: $df
	inc  bc                                          ; $6867: $03
	and  [hl]                                        ; $6868: $a6
	ld   e, d                                        ; $6869: $5a
	dec  c                                           ; $686a: $0d
	ld   [bc], a                                     ; $686b: $02
	call nc, Call_051_5102                           ; $686c: $d4 $02 $51
	ld   h, e                                        ; $686f: $63
	sbc  d                                           ; $6870: $9a
	sbc  c                                           ; $6871: $99
	ld   e, c                                        ; $6872: $59
	sub  a                                           ; $6873: $97
	ld   a, e                                        ; $6874: $7b
	sbc  a                                           ; $6875: $9f
	dec  c                                           ; $6876: $0d
	nop                                              ; $6877: $00
	ld   a, [bc]                                     ; $6878: $0a
	rrca                                             ; $6879: $0f
	nop                                              ; $687a: $00
	ld   bc, $7801                                   ; $687b: $01 $01 $78
	sbc  c                                           ; $687e: $99
	adc  c                                           ; $687f: $89
	ld   [hl], a                                     ; $6880: $77
	rst  $38                                         ; $6881: $ff
	rst  $38                                         ; $6882: $ff
	dec  c                                           ; $6883: $0d
	sbc  l                                           ; $6884: $9d
	ld   e, c                                        ; $6885: $59
	sbc  b                                           ; $6886: $98
	adc  h                                           ; $6887: $8c
	ld   h, l                                        ; $6888: $65
	ld   l, l                                        ; $6889: $6d
	sbc  [hl]                                        ; $688a: $9e
	and  e                                           ; $688b: $a3

jr_051_688c:
	jp   z, $a5d1                                    ; $688c: $ca $d1 $a5

	cp   d                                           ; $688f: $ba
	sbc  [hl]                                        ; $6890: $9e
	dec  c                                           ; $6891: $0d
	ld   d, b                                        ; $6892: $50
	sbc  b                                           ; $6893: $98
	ld   e, d                                        ; $6894: $5a
	halt                                             ; $6895: $76
	ld   d, h                                        ; $6896: $54
	ld   h, d                                        ; $6897: $62
	ld   h, h                                        ; $6898: $64
	ld   d, d                                        ; $6899: $52
	adc  h                                           ; $689a: $8c
	ld   h, l                                        ; $689b: $65
	ld   l, l                                        ; $689c: $6d
	sbc  a                                           ; $689d: $9f
	dec  c                                           ; $689e: $0d
	nop                                              ; $689f: $00
	ld   a, [bc]                                     ; $68a0: $0a
	ld   b, $08                                      ; $68a1: $06 $08
	db   $10                                         ; $68a3: $10
	rrca                                             ; $68a4: $0f
	add  hl, bc                                      ; $68a5: $09
	nop                                              ; $68a6: $00
	ld   bc, $0008                                   ; $68a7: $01 $08 $00
	ld   e, l                                        ; $68aa: $5d
	and  c                                           ; $68ab: $a1
	ld   a, l                                        ; $68ac: $7d
	dec  c                                           ; $68ad: $0d
	inc  bc                                          ; $68ae: $03
	and  [hl]                                        ; $68af: $a6
	inc  bc                                          ; $68b0: $03
	ld   [hl], b                                     ; $68b1: $70
	ld   h, e                                        ; $68b2: $63
	ld   a, h                                        ; $68b3: $7c
	inc  b                                           ; $68b4: $04
	ld   d, a                                        ; $68b5: $57
	dec  b                                           ; $68b6: $05
	add  hl, hl                                      ; $68b7: $29
	ld   e, d                                        ; $68b8: $5a
	dec  c                                           ; $68b9: $0d
	inc  bc                                          ; $68ba: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68bb: $cf
	ld   d, d                                        ; $68bc: $52
	sub  [hl]                                        ; $68bd: $96
	ld   d, h                                        ; $68be: $54
	ld   l, [hl]                                     ; $68bf: $6e
	ld   a, b                                        ; $68c0: $78
	sbc  a                                           ; $68c1: $9f
	dec  c                                           ; $68c2: $0d
	nop                                              ; $68c3: $00
	ld   a, [bc]                                     ; $68c4: $0a
	ld   bc, $8d67                                   ; $68c5: $01 $67 $8d
	sbc  d                                           ; $68c8: $9a
	ld   e, l                                        ; $68c9: $5d
	and  c                                           ; $68ca: $a1
	ld   a, h                                        ; $68cb: $7c
	inc  bc                                          ; $68cc: $03
	ld   l, l                                        ; $68cd: $6d
	dec  b                                           ; $68ce: $05
	add  hl, de                                      ; $68cf: $19
	and  b                                           ; $68d0: $a0
	dec  c                                           ; $68d1: $0d
	ld   l, a                                        ; $68d2: $6f
	sub  l                                           ; $68d3: $95
	ld   [hl], c                                     ; $68d4: $71
	halt                                             ; $68d5: $76
	inc  b                                           ; $68d6: $04
	rrca                                             ; $68d7: $0f
	adc  a                                           ; $68d8: $8f
	ld   a, c                                        ; $68d9: $79
	halt                                             ; $68da: $76
	ld   [hl], c                                     ; $68db: $71
	ld   [hl], h                                     ; $68dc: $74
	ld   e, b                                        ; $68dd: $58
	ld   e, l                                        ; $68de: $5d
	halt                                             ; $68df: $76
	dec  c                                           ; $68e0: $0d
	ld   d, d                                        ; $68e1: $52
	ld   d, d                                        ; $68e2: $52
	and  c                                           ; $68e3: $a1
	ld   h, [hl]                                     ; $68e4: $66
	sub  c                                           ; $68e5: $91
	ld   a, b                                        ; $68e6: $78
	ld   d, d                                        ; $68e7: $52
	ld   e, c                                        ; $68e8: $59
	ld   a, b                                        ; $68e9: $78
	sbc  a                                           ; $68ea: $9f
	dec  c                                           ; $68eb: $0d
	nop                                              ; $68ec: $00
	ld   a, [bc]                                     ; $68ed: $0a
	ld   bc, $8d67                                   ; $68ee: $01 $67 $8d
	sbc  d                                           ; $68f1: $9a
	ld   e, l                                        ; $68f2: $5d
	and  c                                           ; $68f3: $a1
	ld   a, h                                        ; $68f4: $7c
	inc  bc                                          ; $68f5: $03
	ld   l, l                                        ; $68f6: $6d
	dec  b                                           ; $68f7: $05
	add  hl, de                                      ; $68f8: $19
	ld   a, l                                        ; $68f9: $7d
	dec  c                                           ; $68fa: $0d
	inc  bc                                          ; $68fb: $03
	and  [hl]                                        ; $68fc: $a6
	inc  bc                                          ; $68fd: $03
	ld   [hl], b                                     ; $68fe: $70
	ld   h, e                                        ; $68ff: $63
	ld   a, h                                        ; $6900: $7c
	ld   [bc], a                                     ; $6901: $02
	call nc, Call_051_5102                           ; $6902: $d4 $02 $51
	ld   a, c                                        ; $6905: $79
	ld   a, l                                        ; $6906: $7d
	dec  c                                           ; $6907: $0d
	ld   d, h                                        ; $6908: $54
	ld   [hl], c                                     ; $6909: $71
	ld   [hl], h                                     ; $690a: $74
	ld   [hl], d                                     ; $690b: $72
	ld   e, a                                        ; $690c: $5f
	ld   l, [hl]                                     ; $690d: $6e
	ld   e, c                                        ; $690e: $59
	sub  a                                           ; $690f: $97
	ld   a, e                                        ; $6910: $7b
	sbc  a                                           ; $6911: $9f
	dec  c                                           ; $6912: $0d
	nop                                              ; $6913: $00
	ld   a, [bc]                                     ; $6914: $0a
	rrca                                             ; $6915: $0f
	nop                                              ; $6916: $00
	ld   bc, $7801                                   ; $6917: $01 $01 $78
	sbc  c                                           ; $691a: $99
	adc  c                                           ; $691b: $89
	ld   [hl], a                                     ; $691c: $77
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	dec  c                                           ; $691f: $0d
	sbc  l                                           ; $6920: $9d
	ld   e, c                                        ; $6921: $59
	sbc  b                                           ; $6922: $98
	adc  h                                           ; $6923: $8c
	ld   h, l                                        ; $6924: $65
	ld   l, l                                        ; $6925: $6d
	sbc  [hl]                                        ; $6926: $9e
	and  e                                           ; $6927: $a3
	jp   z, $a5d1                                    ; $6928: $ca $d1 $a5

	cp   d                                           ; $692b: $ba
	sbc  [hl]                                        ; $692c: $9e
	dec  c                                           ; $692d: $0d
	ld   d, b                                        ; $692e: $50
	sbc  b                                           ; $692f: $98
	ld   e, d                                        ; $6930: $5a
	halt                                             ; $6931: $76
	ld   d, h                                        ; $6932: $54
	ld   h, d                                        ; $6933: $62
	ld   h, h                                        ; $6934: $64
	ld   d, d                                        ; $6935: $52
	adc  h                                           ; $6936: $8c
	ld   h, l                                        ; $6937: $65
	ld   l, l                                        ; $6938: $6d
	sbc  a                                           ; $6939: $9f
	dec  c                                           ; $693a: $0d
	nop                                              ; $693b: $00
	ld   a, [bc]                                     ; $693c: $0a
	ld   b, $08                                      ; $693d: $06 $08
	db   $10                                         ; $693f: $10
	rrca                                             ; $6940: $0f
	add  hl, bc                                      ; $6941: $09
	nop                                              ; $6942: $00
	ld   bc, $0008                                   ; $6943: $01 $08 $00
	ld   e, l                                        ; $6946: $5d
	and  c                                           ; $6947: $a1
	ld   a, l                                        ; $6948: $7d
	dec  c                                           ; $6949: $0d
	ld   b, $25                                      ; $694a: $06 $25
	inc  b                                           ; $694c: $04
	dec  bc                                          ; $694d: $0b
	ld   b, $80                                      ; $694e: $06 $80
	ld   a, h                                        ; $6950: $7c
	inc  b                                           ; $6951: $04
	ld   d, a                                        ; $6952: $57
	dec  b                                           ; $6953: $05
	add  hl, hl                                      ; $6954: $29
	ld   e, d                                        ; $6955: $5a
	dec  c                                           ; $6956: $0d
	inc  bc                                          ; $6957: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6958: $cf
	ld   d, d                                        ; $6959: $52
	sub  [hl]                                        ; $695a: $96
	ld   d, h                                        ; $695b: $54
	ld   l, [hl]                                     ; $695c: $6e
	ld   a, b                                        ; $695d: $78
	sbc  a                                           ; $695e: $9f
	dec  c                                           ; $695f: $0d
	nop                                              ; $6960: $00
	ld   a, [bc]                                     ; $6961: $0a
	ld   bc, $ecdf                                   ; $6962: $01 $df $ec
	and  e                                           ; $6965: $a3
	ld   a, h                                        ; $6966: $7c
	inc  bc                                          ; $6967: $03
	ld   l, l                                        ; $6968: $6d
	dec  b                                           ; $6969: $05
	add  hl, de                                      ; $696a: $19
	and  b                                           ; $696b: $a0
	dec  c                                           ; $696c: $0d
	ld   l, a                                        ; $696d: $6f
	sub  l                                           ; $696e: $95
	ld   [hl], c                                     ; $696f: $71
	halt                                             ; $6970: $76
	inc  b                                           ; $6971: $04
	rrca                                             ; $6972: $0f
	adc  a                                           ; $6973: $8f
	ld   a, c                                        ; $6974: $79
	halt                                             ; $6975: $76
	ld   [hl], c                                     ; $6976: $71
	ld   [hl], h                                     ; $6977: $74
	ld   e, b                                        ; $6978: $58
	ld   e, l                                        ; $6979: $5d
	halt                                             ; $697a: $76
	dec  c                                           ; $697b: $0d
	ld   d, d                                        ; $697c: $52
	ld   d, d                                        ; $697d: $52
	and  c                                           ; $697e: $a1
	ld   h, [hl]                                     ; $697f: $66
	sub  c                                           ; $6980: $91
	ld   a, b                                        ; $6981: $78
	ld   d, d                                        ; $6982: $52
	ld   e, c                                        ; $6983: $59
	ld   a, b                                        ; $6984: $78
	sbc  a                                           ; $6985: $9f
	dec  c                                           ; $6986: $0d
	nop                                              ; $6987: $00
	ld   a, [bc]                                     ; $6988: $0a
	ld   bc, $ecdf                                   ; $6989: $01 $df $ec
	and  e                                           ; $698c: $a3
	ld   a, h                                        ; $698d: $7c
	inc  bc                                          ; $698e: $03
	ld   l, l                                        ; $698f: $6d
	dec  b                                           ; $6990: $05
	add  hl, de                                      ; $6991: $19
	ld   a, l                                        ; $6992: $7d
	inc  bc                                          ; $6993: $03
	daa                                              ; $6994: $27
	ld   [bc], a                                     ; $6995: $02
	sub  c                                           ; $6996: $91
	ld   l, [hl]                                     ; $6997: $6e
	ld   e, c                                        ; $6998: $59
	sub  a                                           ; $6999: $97
	sbc  [hl]                                        ; $699a: $9e
	dec  c                                           ; $699b: $0d
	ld   e, c                                        ; $699c: $59
	ld   a, b                                        ; $699d: $78
	sbc  b                                           ; $699e: $98
	ld   a, h                                        ; $699f: $7c
	ld   b, $25                                      ; $69a0: $06 $25
	inc  b                                           ; $69a2: $04
	dec  bc                                          ; $69a3: $0b
	ld   b, $80                                      ; $69a4: $06 $80
	and  b                                           ; $69a6: $a0
	dec  c                                           ; $69a7: $0d
	inc  b                                           ; $69a8: $04
	rst  JumpTable                                         ; $69a9: $df
	ld   b, $85                                      ; $69aa: $06 $85
	ld   h, e                                        ; $69ac: $63
	sbc  d                                           ; $69ad: $9a
	sbc  c                                           ; $69ae: $99
	ld   e, c                                        ; $69af: $59
	sub  a                                           ; $69b0: $97
	ld   a, e                                        ; $69b1: $7b
	sbc  a                                           ; $69b2: $9f
	dec  c                                           ; $69b3: $0d
	nop                                              ; $69b4: $00
	ld   a, [bc]                                     ; $69b5: $0a
	rrca                                             ; $69b6: $0f
	nop                                              ; $69b7: $00
	ld   bc, $7801                                   ; $69b8: $01 $01 $78
	sbc  c                                           ; $69bb: $99
	adc  c                                           ; $69bc: $89
	ld   [hl], a                                     ; $69bd: $77
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	dec  c                                           ; $69c0: $0d
	sbc  l                                           ; $69c1: $9d
	ld   e, c                                        ; $69c2: $59
	sbc  b                                           ; $69c3: $98
	adc  h                                           ; $69c4: $8c
	ld   h, l                                        ; $69c5: $65
	ld   l, l                                        ; $69c6: $6d
	sbc  [hl]                                        ; $69c7: $9e
	and  e                                           ; $69c8: $a3
	jp   z, $a5d1                                    ; $69c9: $ca $d1 $a5

	cp   d                                           ; $69cc: $ba
	sbc  [hl]                                        ; $69cd: $9e
	dec  c                                           ; $69ce: $0d
	ld   d, b                                        ; $69cf: $50
	sbc  b                                           ; $69d0: $98
	ld   e, d                                        ; $69d1: $5a
	halt                                             ; $69d2: $76
	ld   d, h                                        ; $69d3: $54
	ld   h, d                                        ; $69d4: $62
	ld   h, h                                        ; $69d5: $64
	ld   d, d                                        ; $69d6: $52
	adc  h                                           ; $69d7: $8c
	ld   h, l                                        ; $69d8: $65
	ld   l, l                                        ; $69d9: $6d
	sbc  a                                           ; $69da: $9f
	dec  c                                           ; $69db: $0d
	nop                                              ; $69dc: $00
	ld   a, [bc]                                     ; $69dd: $0a
	ld   b, $08                                      ; $69de: $06 $08
	db   $10                                         ; $69e0: $10
	rrca                                             ; $69e1: $0f
	add  hl, bc                                      ; $69e2: $09
	nop                                              ; $69e3: $00
	ld   bc, $0008                                   ; $69e4: $01 $08 $00
	ld   e, l                                        ; $69e7: $5d
	and  c                                           ; $69e8: $a1
	ld   a, l                                        ; $69e9: $7d
	dec  c                                           ; $69ea: $0d
	dec  b                                           ; $69eb: $05
	add  hl, bc                                      ; $69ec: $09
	dec  b                                           ; $69ed: $05
	ld   a, [bc]                                     ; $69ee: $0a
	ld   a, h                                        ; $69ef: $7c
	inc  b                                           ; $69f0: $04
	ld   d, a                                        ; $69f1: $57
	dec  b                                           ; $69f2: $05
	add  hl, hl                                      ; $69f3: $29
	ld   e, d                                        ; $69f4: $5a
	dec  c                                           ; $69f5: $0d
	inc  bc                                          ; $69f6: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f7: $cf
	ld   d, d                                        ; $69f8: $52
	sub  [hl]                                        ; $69f9: $96
	ld   d, h                                        ; $69fa: $54
	ld   l, [hl]                                     ; $69fb: $6e
	ld   a, b                                        ; $69fc: $78
	sbc  a                                           ; $69fd: $9f
	dec  c                                           ; $69fe: $0d
	nop                                              ; $69ff: $00
	ld   a, [bc]                                     ; $6a00: $0a
	ld   bc, $a5a3                                   ; $6a01: $01 $a3 $a5
	db   $ec                                         ; $6a04: $ec
	cp   d                                           ; $6a05: $ba
	ld   a, h                                        ; $6a06: $7c
	inc  bc                                          ; $6a07: $03
	ld   l, l                                        ; $6a08: $6d
	dec  b                                           ; $6a09: $05
	add  hl, de                                      ; $6a0a: $19
	and  b                                           ; $6a0b: $a0
	dec  c                                           ; $6a0c: $0d
	ld   l, a                                        ; $6a0d: $6f
	sub  l                                           ; $6a0e: $95
	ld   [hl], c                                     ; $6a0f: $71
	halt                                             ; $6a10: $76
	inc  b                                           ; $6a11: $04
	rrca                                             ; $6a12: $0f
	adc  a                                           ; $6a13: $8f
	ld   a, c                                        ; $6a14: $79
	halt                                             ; $6a15: $76
	ld   [hl], c                                     ; $6a16: $71
	ld   [hl], h                                     ; $6a17: $74
	ld   e, b                                        ; $6a18: $58
	ld   e, l                                        ; $6a19: $5d
	halt                                             ; $6a1a: $76
	dec  c                                           ; $6a1b: $0d
	ld   d, d                                        ; $6a1c: $52
	ld   d, d                                        ; $6a1d: $52
	and  c                                           ; $6a1e: $a1
	ld   h, [hl]                                     ; $6a1f: $66
	sub  c                                           ; $6a20: $91
	ld   a, b                                        ; $6a21: $78
	ld   d, d                                        ; $6a22: $52
	ld   e, c                                        ; $6a23: $59
	ld   a, b                                        ; $6a24: $78
	sbc  a                                           ; $6a25: $9f
	dec  c                                           ; $6a26: $0d
	nop                                              ; $6a27: $00
	ld   a, [bc]                                     ; $6a28: $0a
	ld   bc, $a5a3                                   ; $6a29: $01 $a3 $a5
	db   $ec                                         ; $6a2c: $ec
	cp   d                                           ; $6a2d: $ba
	ld   a, h                                        ; $6a2e: $7c
	inc  bc                                          ; $6a2f: $03
	ld   l, l                                        ; $6a30: $6d
	dec  b                                           ; $6a31: $05
	add  hl, de                                      ; $6a32: $19
	ld   a, l                                        ; $6a33: $7d
	dec  c                                           ; $6a34: $0d
	dec  b                                           ; $6a35: $05
	add  hl, bc                                      ; $6a36: $09
	dec  b                                           ; $6a37: $05
	ld   a, [bc]                                     ; $6a38: $0a
	and  e                                           ; $6a39: $a3
	call nz, Call_051_79d8                           ; $6a3a: $c4 $d8 $79
	ld   a, l                                        ; $6a3d: $7d
	dec  c                                           ; $6a3e: $0d
	ld   d, h                                        ; $6a3f: $54
	ld   [hl], c                                     ; $6a40: $71
	ld   [hl], h                                     ; $6a41: $74
	ld   [hl], d                                     ; $6a42: $72
	ld   e, a                                        ; $6a43: $5f
	ld   l, [hl]                                     ; $6a44: $6e
	ld   e, c                                        ; $6a45: $59
	sub  a                                           ; $6a46: $97
	ld   a, e                                        ; $6a47: $7b
	sbc  a                                           ; $6a48: $9f
	dec  c                                           ; $6a49: $0d
	nop                                              ; $6a4a: $00
	ld   a, [bc]                                     ; $6a4b: $0a
	rrca                                             ; $6a4c: $0f
	nop                                              ; $6a4d: $00
	ld   bc, $7801                                   ; $6a4e: $01 $01 $78
	sbc  c                                           ; $6a51: $99
	adc  c                                           ; $6a52: $89
	ld   [hl], a                                     ; $6a53: $77
	rst  $38                                         ; $6a54: $ff
	rst  $38                                         ; $6a55: $ff
	dec  c                                           ; $6a56: $0d
	sbc  l                                           ; $6a57: $9d
	ld   e, c                                        ; $6a58: $59
	sbc  b                                           ; $6a59: $98
	adc  h                                           ; $6a5a: $8c
	ld   h, l                                        ; $6a5b: $65
	ld   l, l                                        ; $6a5c: $6d
	sbc  [hl]                                        ; $6a5d: $9e
	and  e                                           ; $6a5e: $a3
	jp   z, $a5d1                                    ; $6a5f: $ca $d1 $a5

	cp   d                                           ; $6a62: $ba
	sbc  [hl]                                        ; $6a63: $9e
	dec  c                                           ; $6a64: $0d
	ld   d, b                                        ; $6a65: $50
	sbc  b                                           ; $6a66: $98
	ld   e, d                                        ; $6a67: $5a
	halt                                             ; $6a68: $76
	ld   d, h                                        ; $6a69: $54
	ld   h, d                                        ; $6a6a: $62
	ld   h, h                                        ; $6a6b: $64
	ld   d, d                                        ; $6a6c: $52
	adc  h                                           ; $6a6d: $8c
	ld   h, l                                        ; $6a6e: $65
	ld   l, l                                        ; $6a6f: $6d
	sbc  a                                           ; $6a70: $9f
	dec  c                                           ; $6a71: $0d
	nop                                              ; $6a72: $00
	ld   a, [bc]                                     ; $6a73: $0a
	ld   b, $08                                      ; $6a74: $06 $08
	db   $10                                         ; $6a76: $10
	rrca                                             ; $6a77: $0f
	add  hl, bc                                      ; $6a78: $09
	nop                                              ; $6a79: $00
	ld   bc, $0008                                   ; $6a7a: $01 $08 $00
	ld   e, l                                        ; $6a7d: $5d
	and  c                                           ; $6a7e: $a1
	ld   a, l                                        ; $6a7f: $7d
	dec  c                                           ; $6a80: $0d
	sub  b                                           ; $6a81: $90
	ld   d, h                                        ; $6a82: $54
	inc  bc                                          ; $6a83: $03
	ld   l, h                                        ; $6a84: $6c
	ld   h, l                                        ; $6a85: $65
	ld   [bc], a                                     ; $6a86: $02
	add  h                                           ; $6a87: $84
	ld   [bc], a                                     ; $6a88: $02
	and  d                                           ; $6a89: $a2
	inc  b                                           ; $6a8a: $04
	jr   nz, jr_051_6a91                             ; $6a8b: $20 $04

	dec  hl                                          ; $6a8d: $2b
	inc  bc                                          ; $6a8e: $03
	dec  [hl]                                        ; $6a8f: $35
	and  b                                           ; $6a90: $a0

jr_051_6a91:
	dec  c                                           ; $6a91: $0d
	inc  b                                           ; $6a92: $04
	pop  de                                          ; $6a93: $d1
	ld   a, c                                        ; $6a94: $79
	ld   [hl], d                                     ; $6a95: $72
	ld   e, a                                        ; $6a96: $5f
	ld   l, l                                        ; $6a97: $6d
	adc  c                                           ; $6a98: $89
	ld   d, h                                        ; $6a99: $54
	ld   e, d                                        ; $6a9a: $5a
	ld   d, d                                        ; $6a9b: $52
	ld   d, d                                        ; $6a9c: $52
	ld   a, b                                        ; $6a9d: $78
	sbc  a                                           ; $6a9e: $9f
	dec  c                                           ; $6a9f: $0d
	nop                                              ; $6aa0: $00
	ld   a, [bc]                                     ; $6aa1: $0a
	ld   bc, $cf02                                   ; $6aa2: $01 $02 $cf
	dec  b                                           ; $6aa5: $05
	ld   a, [de]                                     ; $6aa6: $1a
	ld   a, h                                        ; $6aa7: $7c
	inc  bc                                          ; $6aa8: $03
	ld   l, l                                        ; $6aa9: $6d
	dec  b                                           ; $6aaa: $05
	add  hl, de                                      ; $6aab: $19
	and  b                                           ; $6aac: $a0
	dec  c                                           ; $6aad: $0d
	ld   l, a                                        ; $6aae: $6f
	sub  l                                           ; $6aaf: $95
	ld   [hl], c                                     ; $6ab0: $71
	halt                                             ; $6ab1: $76
	inc  b                                           ; $6ab2: $04
	rrca                                             ; $6ab3: $0f
	adc  a                                           ; $6ab4: $8f
	ld   a, c                                        ; $6ab5: $79
	halt                                             ; $6ab6: $76
	ld   [hl], c                                     ; $6ab7: $71
	ld   [hl], h                                     ; $6ab8: $74
	ld   e, b                                        ; $6ab9: $58
	ld   e, l                                        ; $6aba: $5d
	halt                                             ; $6abb: $76
	dec  c                                           ; $6abc: $0d
	ld   d, d                                        ; $6abd: $52
	ld   d, d                                        ; $6abe: $52
	and  c                                           ; $6abf: $a1
	ld   h, [hl]                                     ; $6ac0: $66
	sub  c                                           ; $6ac1: $91
	ld   a, b                                        ; $6ac2: $78
	ld   d, d                                        ; $6ac3: $52
	ld   e, c                                        ; $6ac4: $59
	ld   a, b                                        ; $6ac5: $78
	sbc  a                                           ; $6ac6: $9f
	dec  c                                           ; $6ac7: $0d
	nop                                              ; $6ac8: $00
	ld   a, [bc]                                     ; $6ac9: $0a
	ld   bc, $cf02                                   ; $6aca: $01 $02 $cf
	dec  b                                           ; $6acd: $05
	ld   a, [de]                                     ; $6ace: $1a
	ld   a, h                                        ; $6acf: $7c
	ld   [bc], a                                     ; $6ad0: $02
	ld   l, d                                        ; $6ad1: $6a
	ld   b, $44                                      ; $6ad2: $06 $44
	and  b                                           ; $6ad4: $a0
	sbc  [hl]                                        ; $6ad5: $9e
	ld   l, e                                        ; $6ad6: $6b
	ld   a, [hl]                                     ; $6ad7: $7e
	ld   [hl], l                                     ; $6ad8: $75
	ld   [bc], a                                     ; $6ad9: $02
	sub  l                                           ; $6ada: $95
	ld   [hl], h                                     ; $6adb: $74
	sbc  c                                           ; $6adc: $99
	dec  c                                           ; $6add: $0d
	ld   l, [hl]                                     ; $6ade: $6e
	ld   e, a                                        ; $6adf: $5f
	ld   [hl], l                                     ; $6ae0: $75
	sub  b                                           ; $6ae1: $90
	inc  b                                           ; $6ae2: $04
	xor  [hl]                                        ; $6ae3: $ae
	ld   [bc], a                                     ; $6ae4: $02
	call nc, Call_051_7879                           ; $6ae5: $d4 $79 $78
	sbc  c                                           ; $6ae8: $99
	ld   e, c                                        ; $6ae9: $59
	sub  a                                           ; $6aea: $97
	ld   a, e                                        ; $6aeb: $7b
	sbc  a                                           ; $6aec: $9f
	dec  c                                           ; $6aed: $0d
	nop                                              ; $6aee: $00
	ld   a, [bc]                                     ; $6aef: $0a
	rrca                                             ; $6af0: $0f
	nop                                              ; $6af1: $00
	ld   bc, $7801                                   ; $6af2: $01 $01 $78
	sbc  c                                           ; $6af5: $99
	adc  c                                           ; $6af6: $89
	ld   [hl], a                                     ; $6af7: $77
	rst  $38                                         ; $6af8: $ff
	rst  $38                                         ; $6af9: $ff
	dec  c                                           ; $6afa: $0d
	sbc  l                                           ; $6afb: $9d
	ld   e, c                                        ; $6afc: $59
	sbc  b                                           ; $6afd: $98
	adc  h                                           ; $6afe: $8c
	ld   h, l                                        ; $6aff: $65
	ld   l, l                                        ; $6b00: $6d
	sbc  [hl]                                        ; $6b01: $9e
	and  e                                           ; $6b02: $a3
	jp   z, $a5d1                                    ; $6b03: $ca $d1 $a5

	cp   d                                           ; $6b06: $ba
	sbc  [hl]                                        ; $6b07: $9e
	dec  c                                           ; $6b08: $0d
	ld   d, b                                        ; $6b09: $50
	sbc  b                                           ; $6b0a: $98
	ld   e, d                                        ; $6b0b: $5a
	halt                                             ; $6b0c: $76
	ld   d, h                                        ; $6b0d: $54
	ld   h, d                                        ; $6b0e: $62
	ld   h, h                                        ; $6b0f: $64
	ld   d, d                                        ; $6b10: $52
	adc  h                                           ; $6b11: $8c
	ld   h, l                                        ; $6b12: $65
	ld   l, l                                        ; $6b13: $6d
	sbc  a                                           ; $6b14: $9f
	dec  c                                           ; $6b15: $0d
	nop                                              ; $6b16: $00
	ld   a, [bc]                                     ; $6b17: $0a
	ld   b, $08                                      ; $6b18: $06 $08
	db   $10                                         ; $6b1a: $10
	rrca                                             ; $6b1b: $0f
	add  hl, bc                                      ; $6b1c: $09
	nop                                              ; $6b1d: $00
	ld   bc, $0008                                   ; $6b1e: $01 $08 $00
	ld   e, l                                        ; $6b21: $5d
	and  c                                           ; $6b22: $a1
	ld   a, l                                        ; $6b23: $7d
	dec  c                                           ; $6b24: $0d
	sub  b                                           ; $6b25: $90
	ld   [hl], c                                     ; $6b26: $71
	halt                                             ; $6b27: $76
	ld   [bc], a                                     ; $6b28: $02
	and  c                                           ; $6b29: $a1
	ld   [bc], a                                     ; $6b2a: $02
	ld   a, e                                        ; $6b2b: $7b
	ld   d, d                                        ; $6b2c: $52
	and  b                                           ; $6b2d: $a0
	dec  c                                           ; $6b2e: $0d
	inc  b                                           ; $6b2f: $04
	pop  de                                          ; $6b30: $d1
	ld   a, c                                        ; $6b31: $79
	ld   [hl], d                                     ; $6b32: $72
	ld   e, a                                        ; $6b33: $5f
	ld   l, l                                        ; $6b34: $6d
	adc  c                                           ; $6b35: $89
	ld   d, h                                        ; $6b36: $54
	ld   e, d                                        ; $6b37: $5a
	ld   d, d                                        ; $6b38: $52
	ld   d, d                                        ; $6b39: $52
	ld   a, b                                        ; $6b3a: $78
	sbc  a                                           ; $6b3b: $9f
	dec  c                                           ; $6b3c: $0d
	nop                                              ; $6b3d: $00
	ld   a, [bc]                                     ; $6b3e: $0a
	ld   bc, $f5ac                                   ; $6b3f: $01 $ac $f5
	bit  7, h                                        ; $6b42: $cb $7c
	inc  bc                                          ; $6b44: $03
	ld   l, l                                        ; $6b45: $6d
	dec  b                                           ; $6b46: $05
	add  hl, de                                      ; $6b47: $19
	and  b                                           ; $6b48: $a0
	dec  c                                           ; $6b49: $0d
	ld   l, a                                        ; $6b4a: $6f
	sub  l                                           ; $6b4b: $95
	ld   [hl], c                                     ; $6b4c: $71
	halt                                             ; $6b4d: $76
	inc  b                                           ; $6b4e: $04
	rrca                                             ; $6b4f: $0f
	adc  a                                           ; $6b50: $8f
	ld   a, c                                        ; $6b51: $79
	halt                                             ; $6b52: $76
	ld   [hl], c                                     ; $6b53: $71
	ld   [hl], h                                     ; $6b54: $74
	ld   e, b                                        ; $6b55: $58
	ld   e, l                                        ; $6b56: $5d
	halt                                             ; $6b57: $76
	dec  c                                           ; $6b58: $0d
	ld   d, d                                        ; $6b59: $52
	ld   d, d                                        ; $6b5a: $52
	and  c                                           ; $6b5b: $a1
	ld   h, [hl]                                     ; $6b5c: $66
	sub  c                                           ; $6b5d: $91
	ld   a, b                                        ; $6b5e: $78
	ld   d, d                                        ; $6b5f: $52
	ld   e, c                                        ; $6b60: $59
	ld   a, b                                        ; $6b61: $78
	sbc  a                                           ; $6b62: $9f
	dec  c                                           ; $6b63: $0d
	nop                                              ; $6b64: $00
	ld   a, [bc]                                     ; $6b65: $0a
	ld   bc, $f5ac                                   ; $6b66: $01 $ac $f5
	bit  7, h                                        ; $6b69: $cb $7c
	ld   [bc], a                                     ; $6b6b: $02
	or   [hl]                                        ; $6b6c: $b6
	inc  bc                                          ; $6b6d: $03
	ld   l, e                                        ; $6b6e: $6b
	ld   a, l                                        ; $6b6f: $7d
	dec  c                                           ; $6b70: $0d
	adc  h                                           ; $6b71: $8c
	ld   h, e                                        ; $6b72: $63
	ld   a, c                                        ; $6b73: $79
	ld   bc, $0207                                   ; $6b74: $01 $07 $02
	and  c                                           ; $6b77: $a1
	ld   [bc], a                                     ; $6b78: $02
	ld   a, e                                        ; $6b79: $7b
	ld   d, d                                        ; $6b7a: $52
	ld   a, h                                        ; $6b7b: $7c
	inc  b                                           ; $6b7c: $04
	ld   d, d                                        ; $6b7d: $52
	inc  bc                                          ; $6b7e: $03
	db   $10                                         ; $6b7f: $10
	ld   bc, $0d08                                   ; $6b80: $01 $08 $0d
	halt                                             ; $6b83: $76
	ld   d, d                                        ; $6b84: $52
	ld   d, h                                        ; $6b85: $54
	ld   [bc], a                                     ; $6b86: $02
	scf                                              ; $6b87: $37
	ld   h, [hl]                                     ; $6b88: $66
	ld   l, [hl]                                     ; $6b89: $6e
	ld   e, c                                        ; $6b8a: $59
	sub  a                                           ; $6b8b: $97
	ld   a, e                                        ; $6b8c: $7b
	sbc  a                                           ; $6b8d: $9f
	dec  c                                           ; $6b8e: $0d
	nop                                              ; $6b8f: $00
	ld   a, [bc]                                     ; $6b90: $0a
	rrca                                             ; $6b91: $0f
	nop                                              ; $6b92: $00
	ld   bc, $7801                                   ; $6b93: $01 $01 $78
	sbc  c                                           ; $6b96: $99
	adc  c                                           ; $6b97: $89
	ld   [hl], a                                     ; $6b98: $77
	rst  $38                                         ; $6b99: $ff
	rst  $38                                         ; $6b9a: $ff
	dec  c                                           ; $6b9b: $0d
	sbc  l                                           ; $6b9c: $9d
	ld   e, c                                        ; $6b9d: $59
	sbc  b                                           ; $6b9e: $98
	adc  h                                           ; $6b9f: $8c
	ld   h, l                                        ; $6ba0: $65
	ld   l, l                                        ; $6ba1: $6d
	sbc  [hl]                                        ; $6ba2: $9e
	and  e                                           ; $6ba3: $a3
	jp   z, $a5d1                                    ; $6ba4: $ca $d1 $a5

	cp   d                                           ; $6ba7: $ba
	sbc  [hl]                                        ; $6ba8: $9e
	dec  c                                           ; $6ba9: $0d
	ld   d, b                                        ; $6baa: $50
	sbc  b                                           ; $6bab: $98
	ld   e, d                                        ; $6bac: $5a
	halt                                             ; $6bad: $76
	ld   d, h                                        ; $6bae: $54
	ld   h, d                                        ; $6baf: $62
	ld   h, h                                        ; $6bb0: $64
	ld   d, d                                        ; $6bb1: $52
	adc  h                                           ; $6bb2: $8c
	ld   h, l                                        ; $6bb3: $65
	ld   l, l                                        ; $6bb4: $6d
	sbc  a                                           ; $6bb5: $9f
	dec  c                                           ; $6bb6: $0d
	nop                                              ; $6bb7: $00
	ld   a, [bc]                                     ; $6bb8: $0a
	ld   b, $08                                      ; $6bb9: $06 $08
	db   $10                                         ; $6bbb: $10
	inc  e                                           ; $6bbc: $1c
	add  hl, bc                                      ; $6bbd: $09
	ld   bc, $0101                                   ; $6bbe: $01 $01 $01
	ld   d, h                                        ; $6bc1: $54
	and  c                                           ; $6bc2: $a1
	sbc  a                                           ; $6bc3: $9f
	dec  c                                           ; $6bc4: $0d
	ld   l, e                                        ; $6bc5: $6b
	sbc  d                                           ; $6bc6: $9a
	ld   h, [hl]                                     ; $6bc7: $66
	sub  c                                           ; $6bc8: $91
	sbc  [hl]                                        ; $6bc9: $9e
	ld   e, d                                        ; $6bca: $5a
	and  c                                           ; $6bcb: $a1
	ld   a, [hl]                                     ; $6bcc: $7e
	sbc  d                                           ; $6bcd: $9a
	sub  [hl]                                        ; $6bce: $96
	sbc  a                                           ; $6bcf: $9f
	dec  c                                           ; $6bd0: $0d
	nop                                              ; $6bd1: $00
	ld   a, [bc]                                     ; $6bd2: $0a
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	ld   c, $5d                                      ; $6bd5: $0e $5d
	dec  c                                           ; $6bd7: $0d
	dec  c                                           ; $6bd8: $0d
	nop                                              ; $6bd9: $00
	rrca                                             ; $6bda: $0f
	nop                                              ; $6bdb: $00
	ld   bc, $0702                                   ; $6bdc: $01 $02 $07
	ld   [hl], b                                     ; $6bdf: $70
	ld   bc, $8004                                   ; $6be0: $01 $04 $80
	ld   sp, $ff01                                   ; $6be3: $31 $01 $ff
	jr   nz, jr_051_6bea                             ; $6be6: $20 $02

	nop                                              ; $6be8: $00
	inc  bc                                          ; $6be9: $03

jr_051_6bea:
	ld   b, c                                        ; $6bea: $41
	jr   nz, jr_051_6c09                             ; $6beb: $20 $1c

	nop                                              ; $6bed: $00
	ld   bc, $9a50                                   ; $6bee: $01 $50 $9a
	ld   sp, hl                                      ; $6bf1: $f9
	db   $10                                         ; $6bf2: $10
	inc  b                                           ; $6bf3: $04
	pop  hl                                          ; $6bf4: $e1
	inc  b                                           ; $6bf5: $04
	rst  $38                                         ; $6bf6: $ff
	ld   h, e                                        ; $6bf7: $63
	and  c                                           ; $6bf8: $a1
	rst  $38                                         ; $6bf9: $ff
	rst  $38                                         ; $6bfa: $ff
	dec  c                                           ; $6bfb: $0d
	nop                                              ; $6bfc: $00
	ld   a, [bc]                                     ; $6bfd: $0a
	rrca                                             ; $6bfe: $0f
	dec  c                                           ; $6bff: $0d
	nop                                              ; $6c00: $00
	ld   bc, $9e50                                   ; $6c01: $01 $50 $9e
	ld   l, a                                        ; $6c04: $6f
	sub  l                                           ; $6c05: $95
	ld   d, h                                        ; $6c06: $54
	ld   [hl], a                                     ; $6c07: $77
	sub  [hl]                                        ; $6c08: $96

jr_051_6c09:
	ld   e, c                                        ; $6c09: $59
	ld   [hl], c                                     ; $6c0a: $71
	ld   l, l                                        ; $6c0b: $6d
	sbc  a                                           ; $6c0c: $9f
	dec  c                                           ; $6c0d: $0d
	ld   [$5d00], sp                                 ; $6c0e: $08 $00 $5d
	and  c                                           ; $6c11: $a1
	sbc  [hl]                                        ; $6c12: $9e
	ld   h, c                                        ; $6c13: $61
	sbc  d                                           ; $6c14: $9a
	and  b                                           ; $6c15: $a0
	dec  c                                           ; $6c16: $0d
	xor  h                                           ; $6c17: $ac
	push af                                          ; $6c18: $f5
	bit  4, e                                        ; $6c19: $cb $63
	and  c                                           ; $6c1b: $a1
	ld   a, c                                        ; $6c1c: $79
	inc  b                                           ; $6c1d: $04
	ld   b, $5f                                      ; $6c1e: $06 $5f
	ld   [hl], h                                     ; $6c20: $74
	ld   e, l                                        ; $6c21: $5d
	sbc  d                                           ; $6c22: $9a
	ld   a, b                                        ; $6c23: $78
	ld   d, d                                        ; $6c24: $52
	ld   sp, hl                                      ; $6c25: $f9
	dec  c                                           ; $6c26: $0d
	nop                                              ; $6c27: $00
	ld   a, [bc]                                     ; $6c28: $0a
	db   $10                                         ; $6c29: $10
	ld   de, $0f00                                   ; $6c2a: $11 $00 $0f
	nop                                              ; $6c2d: $00
	ld   bc, $0401                                   ; $6c2e: $01 $01 $04
	ld   c, c                                        ; $6c31: $49
	ld   [hl], l                                     ; $6c32: $75
	ld   h, a                                        ; $6c33: $67
	ld   e, c                                        ; $6c34: $59
	ld   sp, hl                                      ; $6c35: $f9
	dec  c                                           ; $6c36: $0d
	ld   h, c                                        ; $6c37: $61
	ld   a, h                                        ; $6c38: $7c
	inc  bc                                          ; $6c39: $03
	ld   l, e                                        ; $6c3a: $6b
	dec  b                                           ; $6c3b: $05
	db   $e4                                         ; $6c3c: $e4
	ld   a, h                                        ; $6c3d: $7c
	inc  bc                                          ; $6c3e: $03
	ld   e, b                                        ; $6c3f: $58
	ld   a, l                                        ; $6c40: $7d
	rst  $38                                         ; $6c41: $ff
	rst  $38                                         ; $6c42: $ff
	dec  c                                           ; $6c43: $0d
	nop                                              ; $6c44: $00
	ld   a, [bc]                                     ; $6c45: $0a
	inc  e                                           ; $6c46: $1c
	dec  c                                           ; $6c47: $0d
	ld   bc, $0101                                   ; $6c48: $01 $01 $01
	sub  $a2                                         ; $6c4b: $d6 $a2
	push af                                          ; $6c4d: $f5
	xor  $c0                                         ; $6c4e: $ee $c0
	ei                                               ; $6c50: $fb
	sub  [hl]                                        ; $6c51: $96
	sbc  [hl]                                        ; $6c52: $9e
	dec  c                                           ; $6c53: $0d
	ld   h, [hl]                                     ; $6c54: $66
	sub  c                                           ; $6c55: $91
	sbc  [hl]                                        ; $6c56: $9e
	sub  [hl]                                        ; $6c57: $96
	sbc  e                                           ; $6c58: $9b
	ld   h, l                                        ; $6c59: $65
	ld   e, l                                        ; $6c5a: $5d
	ld   a, e                                        ; $6c5b: $7b
	sbc  a                                           ; $6c5c: $9f
	dec  c                                           ; $6c5d: $0d
	nop                                              ; $6c5e: $00
	ld   a, [bc]                                     ; $6c5f: $0a
	dec  c                                           ; $6c60: $0d
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	rrca                                             ; $6c63: $0f
	nop                                              ; $6c64: $00
	ld   bc, $3c09                                   ; $6c65: $01 $09 $3c
	inc  hl                                          ; $6c68: $23
	ld   c, b                                        ; $6c69: $48
	inc  d                                           ; $6c6a: $14
	ld   b, $01                                      ; $6c6b: $06 $01
	ld   bc, $f5ac                                   ; $6c6d: $01 $ac $f5
	bit  4, e                                        ; $6c70: $cb $63
	and  c                                           ; $6c72: $a1
	sbc  [hl]                                        ; $6c73: $9e
	inc  b                                           ; $6c74: $04
	pop  hl                                          ; $6c75: $e1
	inc  b                                           ; $6c76: $04
	rst  $38                                         ; $6c77: $ff
	ld   h, e                                        ; $6c78: $63
	and  c                                           ; $6c79: $a1
	ld   e, c                                        ; $6c7a: $59
	sub  a                                           ; $6c7b: $97
	dec  c                                           ; $6c7c: $0d
	ld   d, b                                        ; $6c7d: $50
	ld   l, b                                        ; $6c7e: $68
	ld   e, c                                        ; $6c7f: $59
	ld   [hl], c                                     ; $6c80: $71
	ld   l, l                                        ; $6c81: $6d
	sub  $a2                                         ; $6c82: $d6 $a2
	push af                                          ; $6c84: $f5
	xor  $c0                                         ; $6c85: $ee $c0
	ei                                               ; $6c87: $fb
	and  b                                           ; $6c88: $a0
	dec  c                                           ; $6c89: $0d
	ld   e, b                                        ; $6c8a: $58
	inc  b                                           ; $6c8b: $04
	ld   b, $5f                                      ; $6c8c: $06 $5f
	ld   a, c                                        ; $6c8e: $79
	inc  bc                                          ; $6c8f: $03
	ld   h, l                                        ; $6c90: $65
	ld   e, d                                        ; $6c91: $5a
	sbc  b                                           ; $6c92: $98
	adc  h                                           ; $6c93: $8c
	ld   h, l                                        ; $6c94: $65
	ld   l, l                                        ; $6c95: $6d
	sbc  a                                           ; $6c96: $9f
	dec  c                                           ; $6c97: $0d
	nop                                              ; $6c98: $00
	ld   a, [bc]                                     ; $6c99: $0a
	rlca                                             ; $6c9a: $07
	jr   c, jr_051_6c9e                              ; $6c9b: $38 $01

	inc  bc                                          ; $6c9d: $03

jr_051_6c9e:
	ld   d, $01                                      ; $6c9e: $16 $01
	ld   l, [hl]                                     ; $6ca0: $6e
	ld   [hl+], a                                    ; $6ca1: $22
	nop                                              ; $6ca2: $00
	rrca                                             ; $6ca3: $0f
	ld   b, $01                                      ; $6ca4: $06 $01
	ld   bc, $9e50                                   ; $6ca6: $01 $50 $9e
	ld   d, d                                        ; $6ca9: $52
	adc  h                                           ; $6caa: $8c
	ld   d, b                                        ; $6cab: $50
	ld   e, a                                        ; $6cac: $5f
	sbc  c                                           ; $6cad: $99
	ld   e, c                                        ; $6cae: $59
	sub  a                                           ; $6caf: $97
	sbc  [hl]                                        ; $6cb0: $9e
	dec  c                                           ; $6cb1: $0d
	ld   l, a                                        ; $6cb2: $6f
	sub  l                                           ; $6cb3: $95
	ld   [hl], c                                     ; $6cb4: $71
	halt                                             ; $6cb5: $76
	inc  b                                           ; $6cb6: $04
	rla                                              ; $6cb7: $17
	ld   [hl], c                                     ; $6cb8: $71
	ld   [hl], h                                     ; $6cb9: $74
	ld   a, b                                        ; $6cba: $78
	sbc  a                                           ; $6cbb: $9f
	dec  c                                           ; $6cbc: $0d
	nop                                              ; $6cbd: $00
	ld   a, [bc]                                     ; $6cbe: $0a
	ld   c, $49                                      ; $6cbf: $0e $49
	rrca                                             ; $6cc1: $0f
	nop                                              ; $6cc2: $00
	ld   bc, $060d                                   ; $6cc3: $01 $0d $06
	ld   bc, $7d01                                   ; $6cc6: $01 $01 $7d
	ld   d, d                                        ; $6cc9: $52
	sbc  [hl]                                        ; $6cca: $9e
	xor  h                                           ; $6ccb: $ac
	push af                                          ; $6ccc: $f5
	bit  4, e                                        ; $6ccd: $cb $63
	and  c                                           ; $6ccf: $a1
	sbc  a                                           ; $6cd0: $9f
	dec  c                                           ; $6cd1: $0d
	sub  $a2                                         ; $6cd2: $d6 $a2
	push af                                          ; $6cd4: $f5
	xor  $c0                                         ; $6cd5: $ee $c0
	ei                                               ; $6cd7: $fb
	ld   [hl], l                                     ; $6cd8: $75
	ld   h, a                                        ; $6cd9: $67
	sbc  a                                           ; $6cda: $9f
	dec  c                                           ; $6cdb: $0d
	nop                                              ; $6cdc: $00
	ld   a, [bc]                                     ; $6cdd: $0a
	db   $10                                         ; $6cde: $10
	ld   de, $1c00                                   ; $6cdf: $11 $00 $1c
	ld   b, $01                                      ; $6ce2: $06 $01
	ld   bc, $401d                                   ; $6ce4: $01 $1d $40
	ld   d, $03                                      ; $6ce7: $16 $03
	ld   d, $01                                      ; $6ce9: $16 $01
	ld   [bc], a                                     ; $6ceb: $02
	jr   z, jr_051_6cee                              ; $6cec: $28 $00

jr_051_6cee:
	ld   bc, $649d                                   ; $6cee: $01 $9d $64
	sbc  l                                           ; $6cf1: $9d
	ld   h, h                                        ; $6cf2: $64
	sbc  [hl]                                        ; $6cf3: $9e
	ld   h, a                                        ; $6cf4: $67
	adc  h                                           ; $6cf5: $8c
	ld   a, e                                        ; $6cf6: $7b
	ld   d, [hl]                                     ; $6cf7: $56
	ld   a, b                                        ; $6cf8: $78
	rst  $38                                         ; $6cf9: $ff
	rst  $38                                         ; $6cfa: $ff
	dec  c                                           ; $6cfb: $0d
	ld   l, l                                        ; $6cfc: $6d
	ld   h, l                                        ; $6cfd: $65
	ld   e, c                                        ; $6cfe: $59
	ld   a, c                                        ; $6cff: $79
	ld   [bc], a                                     ; $6d00: $02
	rst  $38                                         ; $6d01: $ff
	ld   e, a                                        ; $6d02: $5f
	inc  bc                                          ; $6d03: $03
	jr   jr_051_6d77                                 ; $6d04: $18 $71

	ld   l, l                                        ; $6d06: $6d
	ld   l, d                                        ; $6d07: $6a
	sbc  a                                           ; $6d08: $9f
	dec  c                                           ; $6d09: $0d
	nop                                              ; $6d0a: $00
	ld   a, [bc]                                     ; $6d0b: $0a
	nop                                              ; $6d0c: $00
	rrca                                             ; $6d0d: $0f
	ld   b, $00                                      ; $6d0e: $06 $00
	ld   bc, $9e50                                   ; $6d10: $01 $50 $9e
	ld   [bc], a                                     ; $6d13: $02
	jr   z, jr_051_6d68                              ; $6d14: $28 $52

	rst  $38                                         ; $6d16: $ff
	rst  $38                                         ; $6d17: $ff
	dec  c                                           ; $6d18: $0d
	ld   [bc], a                                     ; $6d19: $02
	and  l                                           ; $6d1a: $a5
	sbc  [hl]                                        ; $6d1b: $9e
	ld   d, d                                        ; $6d1c: $52
	ld   l, e                                        ; $6d1d: $6b
	ld   e, d                                        ; $6d1e: $5a
	ld   h, l                                        ; $6d1f: $65
	ld   d, d                                        ; $6d20: $52
	ld   e, c                                        ; $6d21: $59
	sub  a                                           ; $6d22: $97
	dec  c                                           ; $6d23: $0d
	ld   l, e                                        ; $6d24: $6b
	ld   h, c                                        ; $6d25: $61
	ld   a, c                                        ; $6d26: $79
	inc  b                                           ; $6d27: $04
	jr   z, jr_051_6d7c                              ; $6d28: $28 $52

	halt                                             ; $6d2a: $76
	ld   d, d                                        ; $6d2b: $52
	ld   [hl], h                                     ; $6d2c: $74
	ld   e, l                                        ; $6d2d: $5d
	sbc  d                                           ; $6d2e: $9a
	sbc  a                                           ; $6d2f: $9f
	dec  c                                           ; $6d30: $0d
	nop                                              ; $6d31: $00
	ld   a, [bc]                                     ; $6d32: $0a
	rrca                                             ; $6d33: $0f
	nop                                              ; $6d34: $00
	ld   bc, $7d01                                   ; $6d35: $01 $01 $7d
	ld   d, d                                        ; $6d38: $52
	sbc  [hl]                                        ; $6d39: $9e
	sbc  l                                           ; $6d3a: $9d
	ld   e, c                                        ; $6d3b: $59
	sbc  b                                           ; $6d3c: $98
	adc  h                                           ; $6d3d: $8c
	ld   h, l                                        ; $6d3e: $65
	ld   l, l                                        ; $6d3f: $6d
	sbc  a                                           ; $6d40: $9f
	dec  c                                           ; $6d41: $0d
	nop                                              ; $6d42: $00
	ld   a, [bc]                                     ; $6d43: $0a
	nop                                              ; $6d44: $00
	ld   bc, $9a50                                   ; $6d45: $01 $50 $9a
	ld   sp, hl                                      ; $6d48: $f9
	db   $10                                         ; $6d49: $10
	inc  b                                           ; $6d4a: $04
	pop  hl                                          ; $6d4b: $e1
	inc  b                                           ; $6d4c: $04
	rst  $38                                         ; $6d4d: $ff
	ld   h, e                                        ; $6d4e: $63
	and  c                                           ; $6d4f: $a1
	rst  $38                                         ; $6d50: $ff
	rst  $38                                         ; $6d51: $ff
	dec  c                                           ; $6d52: $0d
	nop                                              ; $6d53: $00
	ld   a, [bc]                                     ; $6d54: $0a
	inc  e                                           ; $6d55: $1c
	dec  c                                           ; $6d56: $0d
	inc  bc                                          ; $6d57: $03
	inc  bc                                          ; $6d58: $03
	ld   bc, $9e50                                   ; $6d59: $01 $50 $9e
	ld   [$5d00], sp                                 ; $6d5c: $08 $00 $5d
	and  c                                           ; $6d5f: $a1
	sbc  a                                           ; $6d60: $9f
	dec  c                                           ; $6d61: $0d
	ld   [bc], a                                     ; $6d62: $02
	and  l                                           ; $6d63: $a5
	inc  b                                           ; $6d64: $04
	xor  d                                           ; $6d65: $aa
	ld   a, h                                        ; $6d66: $7c
	ld   e, b                                        ; $6d67: $58

jr_051_6d68:
	inc  b                                           ; $6d68: $04
	xor  l                                           ; $6d69: $ad
	inc  b                                           ; $6d6a: $04
	ld   c, $04                                      ; $6d6b: $0e $04
	adc  h                                           ; $6d6d: $8c
	ld   l, [hl]                                     ; $6d6e: $6e
	ld   [hl], c                                     ; $6d6f: $71
	ld   l, l                                        ; $6d70: $6d
	dec  c                                           ; $6d71: $0d
	adc  l                                           ; $6d72: $8d
	ld   l, l                                        ; $6d73: $6d
	ld   d, d                                        ; $6d74: $52
	ld   l, [hl]                                     ; $6d75: $6e
	ld   e, a                                        ; $6d76: $5f

jr_051_6d77:
	ld   [hl], a                                     ; $6d77: $77
	sbc  [hl]                                        ; $6d78: $9e
	inc  b                                           ; $6d79: $04
	dec  c                                           ; $6d7a: $0d
	ld   a, l                                        ; $6d7b: $7d

jr_051_6d7c:
	inc  b                                           ; $6d7c: $04
	ld   c, $03                                      ; $6d7d: $0e $03
	sbc  l                                           ; $6d7f: $9d
	inc  b                                           ; $6d80: $04
	and  [hl]                                        ; $6d81: $a6
	ld   sp, hl                                      ; $6d82: $f9
	dec  c                                           ; $6d83: $0d
	nop                                              ; $6d84: $00
	ld   a, [bc]                                     ; $6d85: $0a
	rrca                                             ; $6d86: $0f
	nop                                              ; $6d87: $00
	ld   bc, $7d01                                   ; $6d88: $01 $01 $7d
	ld   d, d                                        ; $6d8b: $52
	sbc  [hl]                                        ; $6d8c: $9e
	inc  b                                           ; $6d8d: $04
	ld   c, $03                                      ; $6d8e: $0e $03
	sbc  l                                           ; $6d90: $9d
	inc  b                                           ; $6d91: $04
	and  [hl]                                        ; $6d92: $a6
	ld   [hl], l                                     ; $6d93: $75
	ld   h, a                                        ; $6d94: $67
	sub  [hl]                                        ; $6d95: $96
	sbc  a                                           ; $6d96: $9f
	dec  c                                           ; $6d97: $0d
	nop                                              ; $6d98: $00
	ld   a, [bc]                                     ; $6d99: $0a
	inc  e                                           ; $6d9a: $1c
	dec  c                                           ; $6d9b: $0d
	ld   bc, $0101                                   ; $6d9c: $01 $01 $01
	ld   l, e                                        ; $6d9f: $6b
	ld   d, h                                        ; $6da0: $54
	sbc  [hl]                                        ; $6da1: $9e
	ld   l, e                                        ; $6da2: $6b
	sbc  d                                           ; $6da3: $9a
	ld   a, l                                        ; $6da4: $7d
	sub  [hl]                                        ; $6da5: $96
	ld   e, c                                        ; $6da6: $59
	ld   [hl], c                                     ; $6da7: $71
	ld   l, l                                        ; $6da8: $6d
	sbc  a                                           ; $6da9: $9f
	dec  c                                           ; $6daa: $0d
	ld   l, e                                        ; $6dab: $6b
	ld   d, h                                        ; $6dac: $54
	ld   l, [hl]                                     ; $6dad: $6e
	sbc  l                                           ; $6dae: $9d
	sbc  [hl]                                        ; $6daf: $9e
	ld   [bc], a                                     ; $6db0: $02
	jr   nz, jr_051_6e25                             ; $6db1: $20 $72

	ld   l, l                                        ; $6db3: $6d
	ld   a, h                                        ; $6db4: $7c
	adc  h                                           ; $6db5: $8c
	sbc  d                                           ; $6db6: $9a
	ld   [hl], h                                     ; $6db7: $74
	dec  c                                           ; $6db8: $0d
	ld   e, l                                        ; $6db9: $5d
	sbc  d                                           ; $6dba: $9a
	ld   a, b                                        ; $6dbb: $78
	ld   d, d                                        ; $6dbc: $52
	ld   sp, hl                                      ; $6dbd: $f9
	dec  c                                           ; $6dbe: $0d
	nop                                              ; $6dbf: $00
	ld   a, [bc]                                     ; $6dc0: $0a
	ld   bc, $9a61                                   ; $6dc1: $01 $61 $9a
	and  b                                           ; $6dc4: $a0
	xor  h                                           ; $6dc5: $ac
	push af                                          ; $6dc6: $f5
	bit  4, e                                        ; $6dc7: $cb $63
	and  c                                           ; $6dc9: $a1
	ld   a, c                                        ; $6dca: $79
	dec  c                                           ; $6dcb: $0d
	inc  b                                           ; $6dcc: $04
	ld   b, $5f                                      ; $6dcd: $06 $5f
	ld   [hl], h                                     ; $6dcf: $74
	inc  b                                           ; $6dd0: $04
	db   $e3                                         ; $6dd1: $e3
	ld   h, l                                        ; $6dd2: $65
	ld   d, d                                        ; $6dd3: $52
	ld   a, h                                        ; $6dd4: $7c
	sub  [hl]                                        ; $6dd5: $96
	sbc  a                                           ; $6dd6: $9f
	dec  c                                           ; $6dd7: $0d
	nop                                              ; $6dd8: $00
	ld   a, [bc]                                     ; $6dd9: $0a
	db   $10                                         ; $6dda: $10
	ld   de, $0f00                                   ; $6ddb: $11 $00 $0f
	nop                                              ; $6dde: $00
	ld   bc, $0401                                   ; $6ddf: $01 $01 $04
	ld   c, c                                        ; $6de2: $49
	ld   [hl], l                                     ; $6de3: $75
	ld   h, a                                        ; $6de4: $67
	ld   e, c                                        ; $6de5: $59
	ld   sp, hl                                      ; $6de6: $f9
	dec  c                                           ; $6de7: $0d
	ld   h, c                                        ; $6de8: $61
	ld   a, h                                        ; $6de9: $7c
	inc  bc                                          ; $6dea: $03
	ld   l, e                                        ; $6deb: $6b
	dec  b                                           ; $6dec: $05
	db   $e4                                         ; $6ded: $e4
	ld   a, h                                        ; $6dee: $7c
	inc  bc                                          ; $6def: $03
	ld   e, b                                        ; $6df0: $58
	ld   a, l                                        ; $6df1: $7d
	rst  $38                                         ; $6df2: $ff
	rst  $38                                         ; $6df3: $ff
	dec  c                                           ; $6df4: $0d
	nop                                              ; $6df5: $00
	ld   a, [bc]                                     ; $6df6: $0a
	inc  e                                           ; $6df7: $1c
	dec  c                                           ; $6df8: $0d
	ld   bc, $0101                                   ; $6df9: $01 $01 $01
	sub  $a2                                         ; $6dfc: $d6 $a2
	push af                                          ; $6dfe: $f5
	xor  $c0                                         ; $6dff: $ee $c0
	ei                                               ; $6e01: $fb
	sub  [hl]                                        ; $6e02: $96
	sbc  [hl]                                        ; $6e03: $9e
	dec  c                                           ; $6e04: $0d
	ld   h, [hl]                                     ; $6e05: $66
	sub  c                                           ; $6e06: $91
	sbc  [hl]                                        ; $6e07: $9e
	sub  [hl]                                        ; $6e08: $96
	sbc  e                                           ; $6e09: $9b
	ld   h, l                                        ; $6e0a: $65
	ld   e, l                                        ; $6e0b: $5d
	ld   a, e                                        ; $6e0c: $7b
	sbc  a                                           ; $6e0d: $9f
	dec  c                                           ; $6e0e: $0d
	nop                                              ; $6e0f: $00
	ld   a, [bc]                                     ; $6e10: $0a
	dec  c                                           ; $6e11: $0d
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	rrca                                             ; $6e14: $0f
	nop                                              ; $6e15: $00
	ld   bc, $3c09                                   ; $6e16: $01 $09 $3c
	inc  hl                                          ; $6e19: $23
	ld   c, b                                        ; $6e1a: $48
	inc  d                                           ; $6e1b: $14
	ld   b, $01                                      ; $6e1c: $06 $01
	ld   bc, $f5ac                                   ; $6e1e: $01 $ac $f5
	bit  4, e                                        ; $6e21: $cb $63
	and  c                                           ; $6e23: $a1
	sbc  [hl]                                        ; $6e24: $9e

jr_051_6e25:
	inc  b                                           ; $6e25: $04
	pop  hl                                          ; $6e26: $e1
	inc  b                                           ; $6e27: $04
	rst  $38                                         ; $6e28: $ff
	ld   h, e                                        ; $6e29: $63
	and  c                                           ; $6e2a: $a1
	ld   e, c                                        ; $6e2b: $59
	sub  a                                           ; $6e2c: $97
	dec  c                                           ; $6e2d: $0d
	ld   d, b                                        ; $6e2e: $50
	ld   l, b                                        ; $6e2f: $68
	ld   e, c                                        ; $6e30: $59
	ld   [hl], c                                     ; $6e31: $71
	ld   l, l                                        ; $6e32: $6d
	sub  $a2                                         ; $6e33: $d6 $a2
	push af                                          ; $6e35: $f5
	xor  $c0                                         ; $6e36: $ee $c0
	ei                                               ; $6e38: $fb
	and  b                                           ; $6e39: $a0
	dec  c                                           ; $6e3a: $0d
	ld   e, b                                        ; $6e3b: $58
	inc  b                                           ; $6e3c: $04
	ld   b, $5f                                      ; $6e3d: $06 $5f
	ld   a, c                                        ; $6e3f: $79
	inc  bc                                          ; $6e40: $03
	ld   h, l                                        ; $6e41: $65
	ld   e, d                                        ; $6e42: $5a
	sbc  b                                           ; $6e43: $98
	adc  h                                           ; $6e44: $8c
	ld   h, l                                        ; $6e45: $65
	ld   l, l                                        ; $6e46: $6d
	sbc  a                                           ; $6e47: $9f
	dec  c                                           ; $6e48: $0d
	nop                                              ; $6e49: $00
	ld   a, [bc]                                     ; $6e4a: $0a
	rlca                                             ; $6e4b: $07
	jr   c, jr_051_6e4f                              ; $6e4c: $38 $01

	inc  bc                                          ; $6e4e: $03

jr_051_6e4f:
	ld   d, $01                                      ; $6e4f: $16 $01
	ld   l, [hl]                                     ; $6e51: $6e
	ld   [hl+], a                                    ; $6e52: $22
	nop                                              ; $6e53: $00
	rrca                                             ; $6e54: $0f
	ld   b, $01                                      ; $6e55: $06 $01
	ld   bc, $9e50                                   ; $6e57: $01 $50 $9e
	ld   d, d                                        ; $6e5a: $52
	adc  h                                           ; $6e5b: $8c
	ld   d, b                                        ; $6e5c: $50
	ld   e, a                                        ; $6e5d: $5f
	sbc  c                                           ; $6e5e: $99
	ld   e, c                                        ; $6e5f: $59
	sub  a                                           ; $6e60: $97
	sbc  [hl]                                        ; $6e61: $9e
	dec  c                                           ; $6e62: $0d
	ld   l, a                                        ; $6e63: $6f
	sub  l                                           ; $6e64: $95
	ld   [hl], c                                     ; $6e65: $71
	halt                                             ; $6e66: $76
	inc  b                                           ; $6e67: $04
	rla                                              ; $6e68: $17
	ld   [hl], c                                     ; $6e69: $71
	ld   [hl], h                                     ; $6e6a: $74
	ld   a, b                                        ; $6e6b: $78
	sbc  a                                           ; $6e6c: $9f
	dec  c                                           ; $6e6d: $0d
	nop                                              ; $6e6e: $00
	ld   a, [bc]                                     ; $6e6f: $0a
	ld   c, $49                                      ; $6e70: $0e $49
	rrca                                             ; $6e72: $0f
	nop                                              ; $6e73: $00
	ld   bc, $060d                                   ; $6e74: $01 $0d $06
	ld   bc, $7d01                                   ; $6e77: $01 $01 $7d
	ld   d, d                                        ; $6e7a: $52
	sbc  [hl]                                        ; $6e7b: $9e
	xor  h                                           ; $6e7c: $ac
	push af                                          ; $6e7d: $f5
	bit  4, e                                        ; $6e7e: $cb $63
	and  c                                           ; $6e80: $a1
	sbc  a                                           ; $6e81: $9f
	dec  c                                           ; $6e82: $0d
	sub  $a2                                         ; $6e83: $d6 $a2
	push af                                          ; $6e85: $f5
	xor  $c0                                         ; $6e86: $ee $c0
	ei                                               ; $6e88: $fb
	ld   [hl], l                                     ; $6e89: $75
	ld   h, a                                        ; $6e8a: $67
	sbc  a                                           ; $6e8b: $9f
	dec  c                                           ; $6e8c: $0d
	nop                                              ; $6e8d: $00
	ld   a, [bc]                                     ; $6e8e: $0a
	db   $10                                         ; $6e8f: $10
	ld   de, $1c00                                   ; $6e90: $11 $00 $1c
	ld   b, $01                                      ; $6e93: $06 $01
	ld   bc, $401d                                   ; $6e95: $01 $1d $40
	ld   d, $03                                      ; $6e98: $16 $03
	ld   d, $01                                      ; $6e9a: $16 $01
	ld   [bc], a                                     ; $6e9c: $02
	jr   z, jr_051_6e9f                              ; $6e9d: $28 $00

jr_051_6e9f:
	ld   bc, $649d                                   ; $6e9f: $01 $9d $64
	sbc  l                                           ; $6ea2: $9d
	ld   h, h                                        ; $6ea3: $64
	sbc  [hl]                                        ; $6ea4: $9e
	ld   h, a                                        ; $6ea5: $67
	adc  h                                           ; $6ea6: $8c
	ld   a, e                                        ; $6ea7: $7b
	ld   d, [hl]                                     ; $6ea8: $56
	ld   a, b                                        ; $6ea9: $78
	rst  $38                                         ; $6eaa: $ff
	rst  $38                                         ; $6eab: $ff
	dec  c                                           ; $6eac: $0d
	ld   l, l                                        ; $6ead: $6d
	ld   h, l                                        ; $6eae: $65
	ld   e, c                                        ; $6eaf: $59
	ld   a, c                                        ; $6eb0: $79
	ld   [bc], a                                     ; $6eb1: $02
	rst  $38                                         ; $6eb2: $ff
	ld   e, a                                        ; $6eb3: $5f
	inc  bc                                          ; $6eb4: $03
	jr   jr_051_6f28                                 ; $6eb5: $18 $71

	ld   l, l                                        ; $6eb7: $6d
	ld   l, d                                        ; $6eb8: $6a
	sbc  a                                           ; $6eb9: $9f
	dec  c                                           ; $6eba: $0d
	nop                                              ; $6ebb: $00
	ld   a, [bc]                                     ; $6ebc: $0a
	nop                                              ; $6ebd: $00
	rrca                                             ; $6ebe: $0f
	ld   b, $00                                      ; $6ebf: $06 $00
	ld   bc, $9e50                                   ; $6ec1: $01 $50 $9e
	ld   [bc], a                                     ; $6ec4: $02
	jr   z, jr_051_6f19                              ; $6ec5: $28 $52

	rst  $38                                         ; $6ec7: $ff
	rst  $38                                         ; $6ec8: $ff
	dec  c                                           ; $6ec9: $0d
	ld   [bc], a                                     ; $6eca: $02
	and  l                                           ; $6ecb: $a5
	sbc  [hl]                                        ; $6ecc: $9e
	ld   d, d                                        ; $6ecd: $52
	ld   l, e                                        ; $6ece: $6b
	ld   e, d                                        ; $6ecf: $5a
	ld   h, l                                        ; $6ed0: $65
	ld   d, d                                        ; $6ed1: $52
	ld   e, c                                        ; $6ed2: $59
	sub  a                                           ; $6ed3: $97
	dec  c                                           ; $6ed4: $0d
	ld   l, e                                        ; $6ed5: $6b
	ld   h, c                                        ; $6ed6: $61
	ld   a, c                                        ; $6ed7: $79
	inc  b                                           ; $6ed8: $04
	jr   z, jr_051_6f2d                              ; $6ed9: $28 $52

	halt                                             ; $6edb: $76
	ld   d, d                                        ; $6edc: $52
	ld   [hl], h                                     ; $6edd: $74
	ld   e, l                                        ; $6ede: $5d
	sbc  d                                           ; $6edf: $9a
	sbc  a                                           ; $6ee0: $9f
	dec  c                                           ; $6ee1: $0d
	nop                                              ; $6ee2: $00
	ld   a, [bc]                                     ; $6ee3: $0a
	rrca                                             ; $6ee4: $0f
	nop                                              ; $6ee5: $00
	ld   bc, $7d01                                   ; $6ee6: $01 $01 $7d
	ld   d, d                                        ; $6ee9: $52
	sbc  [hl]                                        ; $6eea: $9e
	sbc  l                                           ; $6eeb: $9d
	ld   e, c                                        ; $6eec: $59
	sbc  b                                           ; $6eed: $98
	adc  h                                           ; $6eee: $8c
	ld   h, l                                        ; $6eef: $65
	ld   l, l                                        ; $6ef0: $6d
	sbc  a                                           ; $6ef1: $9f
	dec  c                                           ; $6ef2: $0d
	nop                                              ; $6ef3: $00
	ld   a, [bc]                                     ; $6ef4: $0a
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	rrca                                             ; $6ef7: $0f
	nop                                              ; $6ef8: $00
	ld   bc, $030d                                   ; $6ef9: $01 $0d $03
	nop                                              ; $6efc: $00
	ld   [bc], a                                     ; $6efd: $02
	rrca                                             ; $6efe: $0f
	nop                                              ; $6eff: $00
	ld   bc, $2d07                                   ; $6f00: $01 $07 $2d
	inc  bc                                          ; $6f03: $03
	inc  b                                           ; $6f04: $04
	add  b                                           ; $6f05: $80
	ld   sp, $ff01                                   ; $6f06: $31 $01 $ff
	jr   nz, jr_051_6f0d                             ; $6f09: $20 $02

	nop                                              ; $6f0b: $00
	inc  bc                                          ; $6f0c: $03

jr_051_6f0d:
	ld   b, c                                        ; $6f0d: $41
	jr   nz, jr_051_6f2c                             ; $6f0e: $20 $1c

	nop                                              ; $6f10: $00
	ld   bc, $ecdf                                   ; $6f11: $01 $df $ec
	and  e                                           ; $6f14: $a3
	ld   h, e                                        ; $6f15: $63
	and  c                                           ; $6f16: $a1
	dec  c                                           ; $6f17: $0d
	ld   e, b                                        ; $6f18: $58

jr_051_6f19:
	inc  b                                           ; $6f19: $04
	ld   a, e                                        ; $6f1a: $7b
	sbc  d                                           ; $6f1b: $9a
	ld   h, e                                        ; $6f1c: $63
	adc  h                                           ; $6f1d: $8c
	ld   [hl], l                                     ; $6f1e: $75
	ld   h, a                                        ; $6f1f: $67
	sbc  a                                           ; $6f20: $9f
	dec  c                                           ; $6f21: $0d
	nop                                              ; $6f22: $00
	ld   a, [bc]                                     ; $6f23: $0a
	inc  e                                           ; $6f24: $1c
	inc  bc                                          ; $6f25: $03
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00

jr_051_6f28:
	ld   bc, $0008                                   ; $6f28: $01 $08 $00
	ld   e, l                                        ; $6f2b: $5d

jr_051_6f2c:
	and  c                                           ; $6f2c: $a1

jr_051_6f2d:
	sbc  a                                           ; $6f2d: $9f
	dec  c                                           ; $6f2e: $0d
	ld   [bc], a                                     ; $6f2f: $02
	sub  l                                           ; $6f30: $95
	ld   [bc], a                                     ; $6f31: $02
	sub  e                                           ; $6f32: $93
	sbc  b                                           ; $6f33: $98
	ld   h, d                                        ; $6f34: $62
	ld   e, l                                        ; $6f35: $5d
	sbc  e                                           ; $6f36: $9b
	ld   d, h                                        ; $6f37: $54
	ld   h, e                                        ; $6f38: $63
	adc  h                                           ; $6f39: $8c
	ld   [hl], l                                     ; $6f3a: $75
	ld   h, a                                        ; $6f3b: $67
	sbc  a                                           ; $6f3c: $9f
	dec  c                                           ; $6f3d: $0d
	nop                                              ; $6f3e: $00
	ld   a, [bc]                                     ; $6f3f: $0a
	rrca                                             ; $6f40: $0f
	nop                                              ; $6f41: $00
	ld   bc, $0101                                   ; $6f42: $01 $01 $01
	inc  bc                                          ; $6f45: $03
	ld   l, e                                        ; $6f46: $6b
	ld   d, h                                        ; $6f47: $54
	ld   l, [hl]                                     ; $6f48: $6e
	sbc  [hl]                                        ; $6f49: $9e
	ld   l, a                                        ; $6f4a: $6f
	sub  l                                           ; $6f4b: $95
	ld   [hl], c                                     ; $6f4c: $71
	halt                                             ; $6f4d: $76
	dec  c                                           ; $6f4e: $0d
	db   $10                                         ; $6f4f: $10
	inc  bc                                          ; $6f50: $03
	ld   l, l                                        ; $6f51: $6d
	dec  b                                           ; $6f52: $05
	add  hl, de                                      ; $6f53: $19
	ld   a, h                                        ; $6f54: $7c
	ld   h, c                                        ; $6f55: $61
	halt                                             ; $6f56: $76
	and  b                                           ; $6f57: $a0
	ld   [bc], a                                     ; $6f58: $02
	jp   nz, Jump_051_7452                           ; $6f59: $c2 $52 $74

	dec  c                                           ; $6f5c: $0d
	db   $10                                         ; $6f5d: $10
	adc  l                                           ; $6f5e: $8d
	sub  [hl]                                        ; $6f5f: $96
	ld   d, h                                        ; $6f60: $54
	ld   bc, $0d04                                   ; $6f61: $01 $04 $0d
	nop                                              ; $6f64: $00
	ld   a, [bc]                                     ; $6f65: $0a
	add  hl, de                                      ; $6f66: $19
	dec  b                                           ; $6f67: $05
	ld   [bc], a                                     ; $6f68: $02
	inc  bc                                          ; $6f69: $03
	daa                                              ; $6f6a: $27
	ld   [bc], a                                     ; $6f6b: $02
	sub  c                                           ; $6f6c: $91
	ld   a, c                                        ; $6f6d: $79
	ld   [hl], d                                     ; $6f6e: $72
	ld   d, d                                        ; $6f6f: $52
	ld   [hl], h                                     ; $6f70: $74
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	inc  bc                                          ; $6f73: $03
	ld   l, l                                        ; $6f74: $6d
	dec  b                                           ; $6f75: $05
	add  hl, de                                      ; $6f76: $19
	ld   a, h                                        ; $6f77: $7c
	ld   l, c                                        ; $6f78: $69
	ld   d, d                                        ; $6f79: $52
	ld   e, c                                        ; $6f7a: $59
	ld   a, c                                        ; $6f7b: $79
	ld   [hl], d                                     ; $6f7c: $72
	ld   d, d                                        ; $6f7d: $52
	ld   [hl], h                                     ; $6f7e: $74
	nop                                              ; $6f7f: $00
	ld   bc, $ce07                                   ; $6f80: $01 $07 $ce
	nop                                              ; $6f83: $00
	ld   [bc], a                                     ; $6f84: $02
	inc  bc                                          ; $6f85: $03
	ld   bc, $2000                                   ; $6f86: $01 $00 $20
	nop                                              ; $6f89: $00
	rlca                                             ; $6f8a: $07
	adc  d                                           ; $6f8b: $8a
	ld   bc, $0302                                   ; $6f8c: $01 $02 $03
	ld   bc, $2001                                   ; $6f8f: $01 $01 $20
	nop                                              ; $6f92: $00
	ld   b, $9f                                      ; $6f93: $06 $9f
	nop                                              ; $6f95: $00
	inc  e                                           ; $6f96: $1c
	inc  bc                                          ; $6f97: $03
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	ld   bc, $5490                                   ; $6f9a: $01 $90 $54
	ld   e, b                                        ; $6f9d: $58
	ld   l, e                                        ; $6f9e: $6b
	ld   d, d                                        ; $6f9f: $52
	ld   e, c                                        ; $6fa0: $59
	sub  a                                           ; $6fa1: $97
	dec  c                                           ; $6fa2: $0d
	ld   h, e                                        ; $6fa3: $63
	ld   [hl], c                                     ; $6fa4: $71
	ld   h, e                                        ; $6fa5: $63
	halt                                             ; $6fa6: $76
	ld   [bc], a                                     ; $6fa7: $02
	sub  l                                           ; $6fa8: $95
	ld   [bc], a                                     ; $6fa9: $02
	sub  e                                           ; $6faa: $93
	sbc  b                                           ; $6fab: $98
	and  b                                           ; $6fac: $a0
	ld   h, a                                        ; $6fad: $67
	adc  h                                           ; $6fae: $8c
	ld   l, c                                        ; $6faf: $69
	ld   [hl], h                                     ; $6fb0: $74
	dec  c                                           ; $6fb1: $0d
	sub  d                                           ; $6fb2: $92
	ld   h, a                                        ; $6fb3: $67
	adc  l                                           ; $6fb4: $8d
	ld   a, b                                        ; $6fb5: $78
	ld   h, e                                        ; $6fb6: $63
	ld   d, d                                        ; $6fb7: $52
	sbc  a                                           ; $6fb8: $9f
	dec  c                                           ; $6fb9: $0d
	nop                                              ; $6fba: $00
	ld   a, [bc]                                     ; $6fbb: $0a
	dec  c                                           ; $6fbc: $0d
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	rrca                                             ; $6fbf: $0f
	nop                                              ; $6fc0: $00
	ld   bc, $1e09                                   ; $6fc1: $01 $09 $1e
	nop                                              ; $6fc4: $00
	rrca                                             ; $6fc5: $0f
	nop                                              ; $6fc6: $00
	ld   bc, $0301                                   ; $6fc7: $01 $01 $03
	ld   l, l                                        ; $6fca: $6d
	dec  b                                           ; $6fcb: $05
	add  hl, de                                      ; $6fcc: $19
	ld   a, h                                        ; $6fcd: $7c
	ld   h, c                                        ; $6fce: $61
	halt                                             ; $6fcf: $76
	and  b                                           ; $6fd0: $a0
	dec  c                                           ; $6fd1: $0d
	ld   [bc], a                                     ; $6fd2: $02
	jp   nz, $6d5b                                   ; $6fd3: $c2 $5b $6d

	ld   d, d                                        ; $6fd6: $52
	ld   a, h                                        ; $6fd7: $7c
	ld   [hl], l                                     ; $6fd8: $75
	ld   h, a                                        ; $6fd9: $67
	ld   e, d                                        ; $6fda: $5a
	rst  $38                                         ; $6fdb: $ff
	rst  $38                                         ; $6fdc: $ff
	dec  c                                           ; $6fdd: $0d
	nop                                              ; $6fde: $00
	ld   a, [bc]                                     ; $6fdf: $0a
	ld   bc, $2703                                   ; $6fe0: $01 $03 $27
	ld   [bc], a                                     ; $6fe3: $02
	sub  c                                           ; $6fe4: $91
	ld   [hl], c                                     ; $6fe5: $71
	ld   [hl], h                                     ; $6fe6: $74
	sbc  [hl]                                        ; $6fe7: $9e
	sub  d                                           ; $6fe8: $92
	ld   [hl], c                                     ; $6fe9: $71
	ld   a, a                                        ; $6fea: $7f
	sbc  b                                           ; $6feb: $98
	dec  c                                           ; $6fec: $0d
	inc  bc                                          ; $6fed: $03
	db   $dd                                         ; $6fee: $dd
	and  b                                           ; $6fef: $a0
	ld   l, l                                        ; $6ff0: $6d
	ld   e, b                                        ; $6ff1: $58
	ld   h, a                                        ; $6ff2: $67
	ld   l, l                                        ; $6ff3: $6d
	adc  a                                           ; $6ff4: $8f
	ld   a, h                                        ; $6ff5: $7c
	dec  c                                           ; $6ff6: $0d
	sub  b                                           ; $6ff7: $90
	ld   a, h                                        ; $6ff8: $7c
	ld   [hl], l                                     ; $6ff9: $75
	ld   h, a                                        ; $6ffa: $67
	ld   e, c                                        ; $6ffb: $59
	ld   sp, hl                                      ; $6ffc: $f9
	dec  c                                           ; $6ffd: $0d
	nop                                              ; $6ffe: $00
	ld   a, [bc]                                     ; $6fff: $0a
	inc  e                                           ; $7000: $1c
	inc  bc                                          ; $7001: $03
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	ld   bc, $546b                                   ; $7004: $01 $6b $54
	ld   a, e                                        ; $7007: $7b
	rst  $38                                         ; $7008: $ff
	rst  $38                                         ; $7009: $ff
	dec  c                                           ; $700a: $0d
	ld   [hl], a                                     ; $700b: $77
	and  c                                           ; $700c: $a1
	ld   a, b                                        ; $700d: $78
	ld   [bc], a                                     ; $700e: $02
	ld   c, b                                        ; $700f: $48
	ld   [bc], a                                     ; $7010: $02
	sub  c                                           ; $7011: $91
	sub  b                                           ; $7012: $90
	inc  b                                           ; $7013: $04
	jr   jr_051_7083                                 ; $7014: $18 $6d

	sub  a                                           ; $7016: $97
	ld   a, b                                        ; $7017: $78
	ld   d, d                                        ; $7018: $52
	halt                                             ; $7019: $76
	dec  c                                           ; $701a: $0d
	ld   [bc], a                                     ; $701b: $02
	ld   b, $04                                      ; $701c: $06 $04
	jp   nc, Jump_051_787d                           ; $701e: $d2 $7d $78

	ld   d, d                                        ; $7021: $52
	sbc  l                                           ; $7022: $9d
	sbc  a                                           ; $7023: $9f
	dec  c                                           ; $7024: $0d
	nop                                              ; $7025: $00
	ld   a, [bc]                                     ; $7026: $0a
	ld   bc, $9896                                   ; $7027: $01 $96 $98
	ld   [bc], a                                     ; $702a: $02
	sbc  a                                           ; $702b: $9f
	inc  bc                                          ; $702c: $03
	adc  e                                           ; $702d: $8b
	ld   a, c                                        ; $702e: $79
	ld   [bc], a                                     ; $702f: $02
	ld   a, [de]                                     ; $7030: $1a
	inc  bc                                          ; $7031: $03
	ld   l, e                                        ; $7032: $6b
	ld   a, h                                        ; $7033: $7c
	dec  c                                           ; $7034: $0d
	dec  b                                           ; $7035: $05
	jr   z, jr_051_703b                              ; $7036: $28 $03

	ld   c, e                                        ; $7038: $4b
	and  b                                           ; $7039: $a0
	halt                                             ; $703a: $76

jr_051_703b:
	sub  a                                           ; $703b: $97
	ld   d, [hl]                                     ; $703c: $56
	sbc  c                                           ; $703d: $99
	rst  $38                                         ; $703e: $ff
	rst  $38                                         ; $703f: $ff
	dec  c                                           ; $7040: $0d
	ld   l, e                                        ; $7041: $6b
	sbc  d                                           ; $7042: $9a
	ld   e, d                                        ; $7043: $5a
	inc  bc                                          ; $7044: $03
	daa                                              ; $7045: $27
	ld   [bc], a                                     ; $7046: $02
	sub  c                                           ; $7047: $91
	ld   a, h                                        ; $7048: $7c
	inc  bc                                          ; $7049: $03
	ld   l, l                                        ; $704a: $6d
	dec  b                                           ; $704b: $05
	add  hl, de                                      ; $704c: $19
	sub  [hl]                                        ; $704d: $96
	sbc  a                                           ; $704e: $9f
	dec  c                                           ; $704f: $0d
	nop                                              ; $7050: $00
	ld   a, [bc]                                     ; $7051: $0a
	inc  e                                           ; $7052: $1c
	inc  bc                                          ; $7053: $03
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	ld   bc, $5490                                   ; $7056: $01 $90 $54
	ld   e, b                                        ; $7059: $58
	ld   l, e                                        ; $705a: $6b
	ld   d, d                                        ; $705b: $52
	ld   e, c                                        ; $705c: $59
	sub  a                                           ; $705d: $97
	dec  c                                           ; $705e: $0d
	ld   h, e                                        ; $705f: $63
	ld   [hl], c                                     ; $7060: $71
	ld   h, e                                        ; $7061: $63
	halt                                             ; $7062: $76
	ld   [bc], a                                     ; $7063: $02
	sub  l                                           ; $7064: $95
	ld   [bc], a                                     ; $7065: $02
	sub  e                                           ; $7066: $93
	sbc  b                                           ; $7067: $98
	and  b                                           ; $7068: $a0
	ld   h, a                                        ; $7069: $67
	adc  h                                           ; $706a: $8c
	ld   l, c                                        ; $706b: $69
	ld   [hl], h                                     ; $706c: $74
	dec  c                                           ; $706d: $0d
	sub  d                                           ; $706e: $92
	ld   h, a                                        ; $706f: $67
	adc  l                                           ; $7070: $8d
	ld   a, b                                        ; $7071: $78
	ld   h, e                                        ; $7072: $63
	ld   d, d                                        ; $7073: $52
	sbc  a                                           ; $7074: $9f
	dec  c                                           ; $7075: $0d
	nop                                              ; $7076: $00
	ld   a, [bc]                                     ; $7077: $0a
	dec  c                                           ; $7078: $0d
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	rrca                                             ; $707b: $0f
	nop                                              ; $707c: $00
	ld   bc, $1e09                                   ; $707d: $01 $09 $1e
	nop                                              ; $7080: $00
	rrca                                             ; $7081: $0f
	nop                                              ; $7082: $00

jr_051_7083:
	ld   bc, $0401                                   ; $7083: $01 $01 $04
	ld   l, l                                        ; $7086: $6d
	ld   a, h                                        ; $7087: $7c
	inc  bc                                          ; $7088: $03
	ld   l, l                                        ; $7089: $6d
	dec  b                                           ; $708a: $05
	add  hl, de                                      ; $708b: $19
	ld   a, h                                        ; $708c: $7c
	ld   l, c                                        ; $708d: $69
	ld   d, d                                        ; $708e: $52
	ld   e, c                                        ; $708f: $59
	ld   a, l                                        ; $7090: $7d
	dec  c                                           ; $7091: $0d
	ld   [hl], a                                     ; $7092: $77
	and  c                                           ; $7093: $a1
	ld   a, b                                        ; $7094: $78
	sub  b                                           ; $7095: $90
	ld   a, h                                        ; $7096: $7c
	ld   [hl], l                                     ; $7097: $75
	ld   h, a                                        ; $7098: $67
	ld   e, c                                        ; $7099: $59
	ld   sp, hl                                      ; $709a: $f9
	dec  c                                           ; $709b: $0d
	nop                                              ; $709c: $00
	ld   a, [bc]                                     ; $709d: $0a
	rlca                                             ; $709e: $07
	jp   nz, $0301                                   ; $709f: $c2 $01 $03

	dec  h                                           ; $70a2: $25
	ld   bc, $2580                                   ; $70a3: $01 $80 $25
	nop                                              ; $70a6: $00
	rlca                                             ; $70a7: $07
	add  hl, sp                                      ; $70a8: $39
	ld   [bc], a                                     ; $70a9: $02
	ld   bc, $0359                                   ; $70aa: $01 $59 $03
	dec  h                                           ; $70ad: $25
	inc  hl                                          ; $70ae: $23
	inc  bc                                          ; $70af: $03
	dec  h                                           ; $70b0: $25
	ld   bc, $227a                                   ; $70b1: $01 $7a $22
	inc  e                                           ; $70b4: $1c
	nop                                              ; $70b5: $00
	ld   b, $af                                      ; $70b6: $06 $af
	ld   [bc], a                                     ; $70b8: $02
	inc  e                                           ; $70b9: $1c
	inc  bc                                          ; $70ba: $03
	inc  bc                                          ; $70bb: $03
	inc  bc                                          ; $70bc: $03
	dec  e                                           ; $70bd: $1d
	ld   b, b                                        ; $70be: $40
	inc  de                                          ; $70bf: $13
	inc  bc                                          ; $70c0: $03
	inc  de                                          ; $70c1: $13
	ld   bc, $2802                                   ; $70c2: $01 $02 $28
	nop                                              ; $70c5: $00
	ld   bc, $0008                                   ; $70c6: $01 $08 $00
	ld   e, l                                        ; $70c9: $5d
	and  c                                           ; $70ca: $a1
	ld   a, l                                        ; $70cb: $7d
	dec  c                                           ; $70cc: $0d
	ld   a, b                                        ; $70cd: $78
	ld   e, c                                        ; $70ce: $59
	ld   a, b                                        ; $70cf: $78
	ld   e, c                                        ; $70d0: $59
	ld   [bc], a                                     ; $70d1: $02
	ld   l, e                                        ; $70d2: $6b
	ld   e, d                                        ; $70d3: $5a
	ld   d, d                                        ; $70d4: $52
	ld   d, d                                        ; $70d5: $52
	halt                                             ; $70d6: $76
	dec  c                                           ; $70d7: $0d
	dec  b                                           ; $70d8: $05
	pop  de                                          ; $70d9: $d1
	ld   d, h                                        ; $70da: $54
	sbc  l                                           ; $70db: $9d
	sbc  a                                           ; $70dc: $9f
	dec  c                                           ; $70dd: $0d
	nop                                              ; $70de: $00
	ld   a, [bc]                                     ; $70df: $0a
	ld   bc, $6202                                   ; $70e0: $01 $02 $62
	dec  b                                           ; $70e3: $05
	pop  hl                                          ; $70e4: $e1
	ld   a, c                                        ; $70e5: $79
	inc  b                                           ; $70e6: $04
	ret  nz                                          ; $70e7: $c0

	inc  bc                                          ; $70e8: $03
	ld   a, l                                        ; $70e9: $7d
	ld   l, c                                        ; $70ea: $69
	ld   l, b                                        ; $70eb: $68
	ld   a, c                                        ; $70ec: $79
	dec  c                                           ; $70ed: $0d
	sub  b                                           ; $70ee: $90
	ld   [hl], c                                     ; $70ef: $71
	halt                                             ; $70f0: $76
	inc  bc                                          ; $70f1: $03
	ld   h, l                                        ; $70f2: $65
	and  b                                           ; $70f3: $a0
	ld   a, e                                        ; $70f4: $7b
	sub  a                                           ; $70f5: $97
	ld   d, d                                        ; $70f6: $52
	ld   a, b                                        ; $70f7: $78
	ld   h, e                                        ; $70f8: $63
	ld   d, d                                        ; $70f9: $52
	sbc  a                                           ; $70fa: $9f
	dec  c                                           ; $70fb: $0d
	nop                                              ; $70fc: $00
	ld   a, [bc]                                     ; $70fd: $0a
	inc  e                                           ; $70fe: $1c
	inc  bc                                          ; $70ff: $03
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	ld   bc, $5063                                   ; $7102: $01 $63 $50
	sbc  [hl]                                        ; $7105: $9e
	sub  b                                           ; $7106: $90
	ld   d, h                                        ; $7107: $54
	ld   e, b                                        ; $7108: $58
	ld   l, e                                        ; $7109: $6b
	ld   d, d                                        ; $710a: $52
	ld   e, c                                        ; $710b: $59
	sub  a                                           ; $710c: $97
	dec  c                                           ; $710d: $0d
	ld   [bc], a                                     ; $710e: $02
	sub  l                                           ; $710f: $95
	ld   [bc], a                                     ; $7110: $02
	sub  e                                           ; $7111: $93
	sbc  b                                           ; $7112: $98
	and  b                                           ; $7113: $a0
	ld   h, e                                        ; $7114: $63
	ld   [hl], c                                     ; $7115: $71
	ld   h, e                                        ; $7116: $63
	halt                                             ; $7117: $76
	ld   h, a                                        ; $7118: $67
	adc  h                                           ; $7119: $8c
	ld   l, c                                        ; $711a: $69
	ld   [hl], h                                     ; $711b: $74
	dec  c                                           ; $711c: $0d
	sub  d                                           ; $711d: $92
	ld   h, a                                        ; $711e: $67
	adc  l                                           ; $711f: $8d
	ld   a, b                                        ; $7120: $78
	ld   h, e                                        ; $7121: $63
	ld   d, d                                        ; $7122: $52
	sbc  a                                           ; $7123: $9f
	dec  c                                           ; $7124: $0d
	nop                                              ; $7125: $00
	ld   a, [bc]                                     ; $7126: $0a
	dec  c                                           ; $7127: $0d
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	rrca                                             ; $712a: $0f
	nop                                              ; $712b: $00
	ld   bc, $1e09                                   ; $712c: $01 $09 $1e
	nop                                              ; $712f: $00
	inc  e                                           ; $7130: $1c
	inc  bc                                          ; $7131: $03
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	ld   bc, $546b                                   ; $7134: $01 $6b $54
	ld   a, e                                        ; $7137: $7b
	rst  $38                                         ; $7138: $ff
	rst  $38                                         ; $7139: $ff
	dec  c                                           ; $713a: $0d
	dec  b                                           ; $713b: $05
	sub  e                                           ; $713c: $93
	inc  bc                                          ; $713d: $03
	pop  de                                          ; $713e: $d1
	inc  bc                                          ; $713f: $03
	db   $ed                                         ; $7140: $ed
	halt                                             ; $7141: $76
	ld   d, d                                        ; $7142: $52
	ld   [hl], c                                     ; $7143: $71
	ld   l, l                                        ; $7144: $6d
	dec  c                                           ; $7145: $0d
	halt                                             ; $7146: $76
	ld   h, c                                        ; $7147: $61
	sbc  e                                           ; $7148: $9b
	ld   e, c                                        ; $7149: $59
	ld   h, l                                        ; $714a: $65
	sub  a                                           ; $714b: $97
	ld   sp, hl                                      ; $714c: $f9
	dec  c                                           ; $714d: $0d
	nop                                              ; $714e: $00
	ld   a, [bc]                                     ; $714f: $0a
	ld   bc, $a15a                                   ; $7150: $01 $5a $a1
	ld   a, [hl]                                     ; $7153: $7e
	sbc  d                                           ; $7154: $9a
	ld   a, [hl]                                     ; $7155: $7e
	sbc  [hl]                                        ; $7156: $9e
	sub  b                                           ; $7157: $90
	ld   [hl], c                                     ; $7158: $71
	halt                                             ; $7159: $76
	ld   [bc], a                                     ; $715a: $02
	cp   [hl]                                        ; $715b: $be
	adc  l                                           ; $715c: $8d
	and  b                                           ; $715d: $a0
	dec  c                                           ; $715e: $0d
	ld   a, e                                        ; $715f: $7b
	sub  a                                           ; $7160: $97
	ld   d, [hl]                                     ; $7161: $56
	sbc  c                                           ; $7162: $99
	sbc  l                                           ; $7163: $9d
	rst  $38                                         ; $7164: $ff
	rst  $38                                         ; $7165: $ff
	dec  c                                           ; $7166: $0d
	ld   e, d                                        ; $7167: $5a
	and  c                                           ; $7168: $a1
	ld   a, [hl]                                     ; $7169: $7e
	ld   [hl], c                                     ; $716a: $71
	ld   [hl], h                                     ; $716b: $74
	adc  l                                           ; $716c: $8d
	ld   a, b                                        ; $716d: $78
	ld   h, e                                        ; $716e: $63
	ld   d, d                                        ; $716f: $52
	sbc  a                                           ; $7170: $9f
	dec  c                                           ; $7171: $0d
	nop                                              ; $7172: $00
	ld   a, [bc]                                     ; $7173: $0a
	inc  e                                           ; $7174: $1c
	inc  bc                                          ; $7175: $03
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	ld   bc, $5063                                   ; $7178: $01 $63 $50
	sbc  [hl]                                        ; $717b: $9e
	sub  b                                           ; $717c: $90
	ld   d, h                                        ; $717d: $54
	ld   e, b                                        ; $717e: $58
	ld   l, e                                        ; $717f: $6b
	ld   d, d                                        ; $7180: $52
	ld   e, c                                        ; $7181: $59
	sub  a                                           ; $7182: $97
	dec  c                                           ; $7183: $0d
	ld   [bc], a                                     ; $7184: $02
	sub  l                                           ; $7185: $95
	ld   [bc], a                                     ; $7186: $02
	sub  e                                           ; $7187: $93
	sbc  b                                           ; $7188: $98
	and  b                                           ; $7189: $a0
	ld   h, e                                        ; $718a: $63
	ld   [hl], c                                     ; $718b: $71
	ld   h, e                                        ; $718c: $63
	halt                                             ; $718d: $76
	ld   h, a                                        ; $718e: $67
	adc  h                                           ; $718f: $8c
	ld   l, c                                        ; $7190: $69
	ld   [hl], h                                     ; $7191: $74
	dec  c                                           ; $7192: $0d
	sub  d                                           ; $7193: $92
	ld   h, a                                        ; $7194: $67
	adc  l                                           ; $7195: $8d
	ld   a, b                                        ; $7196: $78
	ld   h, e                                        ; $7197: $63
	ld   d, d                                        ; $7198: $52
	sbc  a                                           ; $7199: $9f
	dec  c                                           ; $719a: $0d
	nop                                              ; $719b: $00
	ld   a, [bc]                                     ; $719c: $0a
	dec  c                                           ; $719d: $0d
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	rrca                                             ; $71a0: $0f
	nop                                              ; $71a1: $00
	ld   bc, $1e09                                   ; $71a2: $01 $09 $1e
	nop                                              ; $71a5: $00
	inc  e                                           ; $71a6: $1c
	inc  bc                                          ; $71a7: $03
	inc  b                                           ; $71a8: $04
	inc  b                                           ; $71a9: $04
	ld   bc, $546b                                   ; $71aa: $01 $6b $54
	ld   a, e                                        ; $71ad: $7b
	rst  $38                                         ; $71ae: $ff
	rst  $38                                         ; $71af: $ff
	dec  c                                           ; $71b0: $0d
	sub  b                                           ; $71b1: $90
	ld   d, h                                        ; $71b2: $54
	inc  bc                                          ; $71b3: $03
	ld   l, h                                        ; $71b4: $6c
	ld   h, l                                        ; $71b5: $65
	ld   e, d                                        ; $71b6: $5a
	and  c                                           ; $71b7: $a1
	ld   a, [hl]                                     ; $71b8: $7e
	sbc  c                                           ; $71b9: $99
	inc  b                                           ; $71ba: $04
	adc  d                                           ; $71bb: $8a
	inc  b                                           ; $71bc: $04
	rst  JumpTable                                         ; $71bd: $df
	ld   e, d                                        ; $71be: $5a
	dec  c                                           ; $71bf: $0d
	ld   d, b                                        ; $71c0: $50
	sbc  c                                           ; $71c1: $99
	halt                                             ; $71c2: $76
	dec  b                                           ; $71c3: $05
	pop  de                                          ; $71c4: $d1
	ld   d, h                                        ; $71c5: $54
	sbc  l                                           ; $71c6: $9d
	sbc  a                                           ; $71c7: $9f
	dec  c                                           ; $71c8: $0d
	nop                                              ; $71c9: $00
	ld   a, [bc]                                     ; $71ca: $0a
	ld   bc, $6503                                   ; $71cb: $01 $03 $65
	inc  bc                                          ; $71ce: $03
	rst  $30                                         ; $71cf: $f7
	ld   a, h                                        ; $71d0: $7c
	or   h                                           ; $71d1: $b4
	push bc                                          ; $71d2: $c5
	ld   a, l                                        ; $71d3: $7d
	inc  bc                                          ; $71d4: $03
	ld   l, l                                        ; $71d5: $6d
	dec  b                                           ; $71d6: $05
	add  hl, de                                      ; $71d7: $19
	and  b                                           ; $71d8: $a0
	dec  c                                           ; $71d9: $0d
	ld   [hl], d                                     ; $71da: $72
	adc  l                                           ; $71db: $8d
	ld   e, c                                        ; $71dc: $59
	ld   h, e                                        ; $71dd: $63
	ld   a, e                                        ; $71de: $7b
	sbc  c                                           ; $71df: $99
	ld   h, c                                        ; $71e0: $61
	halt                                             ; $71e1: $76
	sub  [hl]                                        ; $71e2: $96
	sbc  a                                           ; $71e3: $9f
	dec  c                                           ; $71e4: $0d
	ld   e, b                                        ; $71e5: $58
	adc  d                                           ; $71e6: $8a
	ld   d, [hl]                                     ; $71e7: $56
	ld   [hl], h                                     ; $71e8: $74
	ld   e, b                                        ; $71e9: $58
	ld   e, e                                        ; $71ea: $5b
	ld   a, b                                        ; $71eb: $78
	ld   h, e                                        ; $71ec: $63
	ld   d, d                                        ; $71ed: $52
	sbc  a                                           ; $71ee: $9f
	dec  c                                           ; $71ef: $0d
	nop                                              ; $71f0: $00
	ld   a, [bc]                                     ; $71f1: $0a
	inc  e                                           ; $71f2: $1c
	inc  bc                                          ; $71f3: $03
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	ld   bc, $5063                                   ; $71f6: $01 $63 $50
	sbc  [hl]                                        ; $71f9: $9e
	sub  b                                           ; $71fa: $90
	ld   d, h                                        ; $71fb: $54
	ld   e, b                                        ; $71fc: $58
	ld   l, e                                        ; $71fd: $6b
	ld   d, d                                        ; $71fe: $52
	ld   e, c                                        ; $71ff: $59
	sub  a                                           ; $7200: $97
	dec  c                                           ; $7201: $0d
	ld   h, e                                        ; $7202: $63
	ld   [hl], c                                     ; $7203: $71
	ld   h, e                                        ; $7204: $63
	halt                                             ; $7205: $76
	ld   [bc], a                                     ; $7206: $02
	sub  l                                           ; $7207: $95
	ld   [bc], a                                     ; $7208: $02
	sub  e                                           ; $7209: $93
	sbc  b                                           ; $720a: $98
	and  b                                           ; $720b: $a0
	ld   h, a                                        ; $720c: $67
	adc  h                                           ; $720d: $8c
	ld   l, c                                        ; $720e: $69
	ld   [hl], h                                     ; $720f: $74
	dec  c                                           ; $7210: $0d
	sub  d                                           ; $7211: $92
	ld   h, a                                        ; $7212: $67
	adc  l                                           ; $7213: $8d
	ld   a, b                                        ; $7214: $78
	ld   h, e                                        ; $7215: $63
	ld   d, d                                        ; $7216: $52
	sbc  a                                           ; $7217: $9f
	dec  c                                           ; $7218: $0d
	nop                                              ; $7219: $00
	ld   a, [bc]                                     ; $721a: $0a
	dec  c                                           ; $721b: $0d
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	rrca                                             ; $721e: $0f
	nop                                              ; $721f: $00
	ld   bc, $1e09                                   ; $7220: $01 $09 $1e
	nop                                              ; $7223: $00
	rrca                                             ; $7224: $0f
	nop                                              ; $7225: $00
	ld   bc, $df01                                   ; $7226: $01 $01 $df
	db   $ec                                         ; $7229: $ec
	and  e                                           ; $722a: $a3
	ld   h, e                                        ; $722b: $63
	and  c                                           ; $722c: $a1
	dec  c                                           ; $722d: $0d
	ld   e, b                                        ; $722e: $58
	inc  b                                           ; $722f: $04
	ld   a, e                                        ; $7230: $7b
	sbc  d                                           ; $7231: $9a
	ld   h, e                                        ; $7232: $63
	adc  h                                           ; $7233: $8c
	ld   [hl], l                                     ; $7234: $75
	ld   h, a                                        ; $7235: $67
	sbc  a                                           ; $7236: $9f
	dec  c                                           ; $7237: $0d
	nop                                              ; $7238: $00
	ld   a, [bc]                                     ; $7239: $0a
	inc  e                                           ; $723a: $1c
	inc  bc                                          ; $723b: $03
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	ld   bc, $0008                                   ; $723e: $01 $08 $00
	ld   e, l                                        ; $7241: $5d
	and  c                                           ; $7242: $a1
	sbc  a                                           ; $7243: $9f
	dec  c                                           ; $7244: $0d
	ld   [bc], a                                     ; $7245: $02
	sub  l                                           ; $7246: $95
	ld   [bc], a                                     ; $7247: $02
	sub  e                                           ; $7248: $93
	sbc  b                                           ; $7249: $98
	ld   h, d                                        ; $724a: $62
	ld   e, l                                        ; $724b: $5d
	sbc  e                                           ; $724c: $9b
	ld   d, h                                        ; $724d: $54
	ld   h, e                                        ; $724e: $63
	adc  h                                           ; $724f: $8c
	ld   [hl], l                                     ; $7250: $75
	ld   h, a                                        ; $7251: $67
	sbc  a                                           ; $7252: $9f
	dec  c                                           ; $7253: $0d
	nop                                              ; $7254: $00
	ld   a, [bc]                                     ; $7255: $0a
	ld   bc, $0458                                   ; $7256: $01 $58 $04
	xor  l                                           ; $7259: $ad
	ld   a, l                                        ; $725a: $7d
	inc  b                                           ; $725b: $04
	ld   c, $04                                      ; $725c: $0e $04
	adc  h                                           ; $725e: $8c
	ld   l, [hl]                                     ; $725f: $6e
	ld   [hl], c                                     ; $7260: $71
	ld   l, l                                        ; $7261: $6d
	adc  l                                           ; $7262: $8d
	ld   l, l                                        ; $7263: $6d
	ld   d, d                                        ; $7264: $52
	dec  c                                           ; $7265: $0d
	ld   l, [hl]                                     ; $7266: $6e
	ld   e, a                                        ; $7267: $5f
	ld   [hl], a                                     ; $7268: $77
	sbc  [hl]                                        ; $7269: $9e
	inc  b                                           ; $726a: $04
	dec  c                                           ; $726b: $0d
	ld   a, l                                        ; $726c: $7d
	inc  b                                           ; $726d: $04
	ld   c, $03                                      ; $726e: $0e $03
	sbc  l                                           ; $7270: $9d
	inc  b                                           ; $7271: $04
	and  [hl]                                        ; $7272: $a6
	ld   sp, hl                                      ; $7273: $f9
	dec  c                                           ; $7274: $0d
	nop                                              ; $7275: $00
	ld   a, [bc]                                     ; $7276: $0a
	rrca                                             ; $7277: $0f
	nop                                              ; $7278: $00
	ld   bc, $7d01                                   ; $7279: $01 $01 $7d
	ld   d, d                                        ; $727c: $52
	sbc  a                                           ; $727d: $9f
	inc  b                                           ; $727e: $04
	ld   c, $03                                      ; $727f: $0e $03
	sbc  l                                           ; $7281: $9d
	inc  b                                           ; $7282: $04
	and  [hl]                                        ; $7283: $a6
	ld   [hl], l                                     ; $7284: $75
	ld   h, a                                        ; $7285: $67
	sbc  a                                           ; $7286: $9f
	dec  c                                           ; $7287: $0d
	nop                                              ; $7288: $00
	ld   a, [bc]                                     ; $7289: $0a
	ld   bc, $0301                                   ; $728a: $01 $01 $03
	ld   l, e                                        ; $728d: $6b
	ld   d, h                                        ; $728e: $54
	ld   l, [hl]                                     ; $728f: $6e
	sbc  [hl]                                        ; $7290: $9e
	ld   l, a                                        ; $7291: $6f
	sub  l                                           ; $7292: $95
	ld   [hl], c                                     ; $7293: $71
	halt                                             ; $7294: $76
	dec  c                                           ; $7295: $0d
	db   $10                                         ; $7296: $10
	inc  bc                                          ; $7297: $03
	ld   l, l                                        ; $7298: $6d
	dec  b                                           ; $7299: $05
	add  hl, de                                      ; $729a: $19
	ld   a, h                                        ; $729b: $7c
	ld   h, c                                        ; $729c: $61
	halt                                             ; $729d: $76
	and  b                                           ; $729e: $a0
	ld   [bc], a                                     ; $729f: $02
	jp   nz, Jump_051_7452                           ; $72a0: $c2 $52 $74

	dec  c                                           ; $72a3: $0d
	db   $10                                         ; $72a4: $10
	adc  l                                           ; $72a5: $8d
	sub  [hl]                                        ; $72a6: $96
	ld   d, h                                        ; $72a7: $54
	ld   bc, $0d04                                   ; $72a8: $01 $04 $0d
	nop                                              ; $72ab: $00
	ld   a, [bc]                                     ; $72ac: $0a
	add  hl, de                                      ; $72ad: $19
	dec  b                                           ; $72ae: $05
	ld   [bc], a                                     ; $72af: $02
	inc  bc                                          ; $72b0: $03
	daa                                              ; $72b1: $27
	ld   [bc], a                                     ; $72b2: $02
	sub  c                                           ; $72b3: $91
	ld   a, c                                        ; $72b4: $79
	ld   [hl], d                                     ; $72b5: $72
	ld   d, d                                        ; $72b6: $52
	ld   [hl], h                                     ; $72b7: $74
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	inc  bc                                          ; $72ba: $03
	ld   l, l                                        ; $72bb: $6d
	dec  b                                           ; $72bc: $05
	add  hl, de                                      ; $72bd: $19
	ld   a, h                                        ; $72be: $7c
	ld   l, c                                        ; $72bf: $69
	ld   d, d                                        ; $72c0: $52
	ld   e, c                                        ; $72c1: $59
	ld   a, c                                        ; $72c2: $79
	ld   [hl], d                                     ; $72c3: $72
	ld   d, d                                        ; $72c4: $52
	ld   [hl], h                                     ; $72c5: $74
	nop                                              ; $72c6: $00
	ld   bc, $ce07                                   ; $72c7: $01 $07 $ce
	nop                                              ; $72ca: $00
	ld   [bc], a                                     ; $72cb: $02
	inc  bc                                          ; $72cc: $03
	ld   bc, $2000                                   ; $72cd: $01 $00 $20
	nop                                              ; $72d0: $00
	rlca                                             ; $72d1: $07
	adc  d                                           ; $72d2: $8a
	ld   bc, $0302                                   ; $72d3: $01 $02 $03
	ld   bc, $2001                                   ; $72d6: $01 $01 $20
	nop                                              ; $72d9: $00
	ld   b, $e6                                      ; $72da: $06 $e6
	inc  bc                                          ; $72dc: $03
	inc  e                                           ; $72dd: $1c
	inc  bc                                          ; $72de: $03
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	ld   bc, $5490                                   ; $72e1: $01 $90 $54
	ld   e, b                                        ; $72e4: $58
	ld   l, e                                        ; $72e5: $6b
	ld   d, d                                        ; $72e6: $52
	ld   e, c                                        ; $72e7: $59
	sub  a                                           ; $72e8: $97
	dec  c                                           ; $72e9: $0d
	ld   h, e                                        ; $72ea: $63
	ld   [hl], c                                     ; $72eb: $71
	ld   h, e                                        ; $72ec: $63
	halt                                             ; $72ed: $76
	ld   [bc], a                                     ; $72ee: $02
	sub  l                                           ; $72ef: $95
	ld   [bc], a                                     ; $72f0: $02
	sub  e                                           ; $72f1: $93
	sbc  b                                           ; $72f2: $98
	and  b                                           ; $72f3: $a0
	ld   h, a                                        ; $72f4: $67
	adc  h                                           ; $72f5: $8c
	ld   l, c                                        ; $72f6: $69
	ld   [hl], h                                     ; $72f7: $74
	dec  c                                           ; $72f8: $0d
	sub  d                                           ; $72f9: $92
	ld   h, a                                        ; $72fa: $67
	adc  l                                           ; $72fb: $8d
	ld   a, b                                        ; $72fc: $78
	ld   h, e                                        ; $72fd: $63
	ld   d, d                                        ; $72fe: $52
	sbc  a                                           ; $72ff: $9f
	dec  c                                           ; $7300: $0d
	nop                                              ; $7301: $00
	ld   a, [bc]                                     ; $7302: $0a
	dec  c                                           ; $7303: $0d
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	rrca                                             ; $7306: $0f
	nop                                              ; $7307: $00
	ld   bc, $1e09                                   ; $7308: $01 $09 $1e
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	ld   c, $57                                      ; $730d: $0e $57
	inc  e                                           ; $730f: $1c
	inc  b                                           ; $7310: $04
	ld   bc, $0201                                   ; $7311: $01 $01 $02
	ld   bc, $9e50                                   ; $7314: $01 $50 $9e
	ld   l, a                                        ; $7317: $6f
	ld   d, d                                        ; $7318: $52
	ld   [bc], a                                     ; $7319: $02
	inc  de                                          ; $731a: $13
	ld   l, a                                        ; $731b: $6f
	sub  c                                           ; $731c: $91
	and  c                                           ; $731d: $a1
	sbc  a                                           ; $731e: $9f
	dec  c                                           ; $731f: $0d
	ld   l, a                                        ; $7320: $6f
	sub  l                                           ; $7321: $95
	ld   d, h                                        ; $7322: $54
	ld   [hl], a                                     ; $7323: $77
	sub  [hl]                                        ; $7324: $96
	ld   e, c                                        ; $7325: $59
	ld   [hl], c                                     ; $7326: $71
	ld   l, l                                        ; $7327: $6d
	rst  $38                                         ; $7328: $ff
	rst  $38                                         ; $7329: $ff
	dec  c                                           ; $732a: $0d
	ld   e, e                                        ; $732b: $5b
	ld   e, e                                        ; $732c: $5b
	ld   l, l                                        ; $732d: $6d
	ld   d, d                                        ; $732e: $52
	ld   h, c                                        ; $732f: $61
	halt                                             ; $7330: $76
	ld   e, d                                        ; $7331: $5a
	ld   d, b                                        ; $7332: $50
	sbc  c                                           ; $7333: $99
	ld   a, h                                        ; $7334: $7c
	sbc  a                                           ; $7335: $9f
	dec  c                                           ; $7336: $0d
	nop                                              ; $7337: $00
	ld   a, [bc]                                     ; $7338: $0a
	ld   bc, $7c50                                   ; $7339: $01 $50 $7c
	ld   a, e                                        ; $733c: $7b
	sbc  [hl]                                        ; $733d: $9e
	ld   d, d                                        ; $733e: $52
	adc  h                                           ; $733f: $8c
	jp   nc, Jump_051_76d2                           ; $7340: $d2 $d2 $76

	rst  JumpTable                                         ; $7343: $df
	rst  JumpTable                                         ; $7344: $df
	ld   a, c                                        ; $7345: $79
	dec  c                                           ; $7346: $0d
	ld   e, b                                        ; $7347: $58
	ld   [hl], h                                     ; $7348: $74
	ld   e, d                                        ; $7349: $5a
	adc  l                                           ; $734a: $8d
	ld   e, c                                        ; $734b: $59
	ld   d, d                                        ; $734c: $52
	ld   [hl], h                                     ; $734d: $74
	sbc  c                                           ; $734e: $99
	ld   a, h                                        ; $734f: $7c
	rst  $38                                         ; $7350: $ff
	rst  $38                                         ; $7351: $ff
	dec  c                                           ; $7352: $0d
	nop                                              ; $7353: $00
	ld   a, [bc]                                     ; $7354: $0a
	inc  e                                           ; $7355: $1c
	inc  b                                           ; $7356: $04
	inc  bc                                          ; $7357: $03
	inc  bc                                          ; $7358: $03
	ld   bc, $7b75                                   ; $7359: $01 $75 $7b
	sbc  [hl]                                        ; $735c: $9e
	ld   [hl], a                                     ; $735d: $77
	ld   d, h                                        ; $735e: $54
	ld   h, l                                        ; $735f: $65
	ld   [hl], h                                     ; $7360: $74
	sub  b                                           ; $7361: $90
	sbc  l                                           ; $7362: $9d
	ld   e, c                                        ; $7363: $59
	sub  a                                           ; $7364: $97
	ld   a, b                                        ; $7365: $78
	ld   d, d                                        ; $7366: $52
	dec  c                                           ; $7367: $0d
	ld   e, c                                        ; $7368: $59
	and  c                                           ; $7369: $a1
	ld   h, [hl]                                     ; $736a: $66
	ld   e, d                                        ; $736b: $5a
	ld   d, b                                        ; $736c: $50
	sbc  c                                           ; $736d: $99
	ld   a, h                                        ; $736e: $7c
	rst  $38                                         ; $736f: $ff
	rst  $38                                         ; $7370: $ff
	dec  c                                           ; $7371: $0d
	ld   e, b                                        ; $7372: $58
	ld   h, l                                        ; $7373: $65
	ld   d, [hl]                                     ; $7374: $56
	ld   [hl], h                                     ; $7375: $74
	ld   e, l                                        ; $7376: $5d
	sbc  d                                           ; $7377: $9a
	sbc  c                                           ; $7378: $99
	ld   sp, hl                                      ; $7379: $f9
	dec  c                                           ; $737a: $0d
	nop                                              ; $737b: $00
	ld   a, [bc]                                     ; $737c: $0a
	add  hl, de                                      ; $737d: $19
	dec  b                                           ; $737e: $05
	inc  bc                                          ; $737f: $03
	ld   d, h                                        ; $7380: $54
	and  c                                           ; $7381: $a1
	sbc  [hl]                                        ; $7382: $9e
	ld   d, d                                        ; $7383: $52
	ld   d, d                                        ; $7384: $52
	sub  [hl]                                        ; $7385: $96
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	inc  bc                                          ; $7388: $03
	sub  h                                           ; $7389: $94
	inc  b                                           ; $738a: $04
	sbc  [hl]                                        ; $738b: $9e
	ld   [hl], l                                     ; $738c: $75
	ld   h, l                                        ; $738d: $65
	sub  a                                           ; $738e: $97
	add  a                                           ; $738f: $87
	ld   a, b                                        ; $7390: $78
	ld   h, e                                        ; $7391: $63
	ld   d, d                                        ; $7392: $52
	nop                                              ; $7393: $00
	ld   bc, $aa04                                   ; $7394: $01 $04 $aa
	inc  b                                           ; $7397: $04
	adc  a                                           ; $7398: $8f
	inc  bc                                          ; $7399: $03
	add  d                                           ; $739a: $82
	ld   l, [hl]                                     ; $739b: $6e
	sbc  e                                           ; $739c: $9b
	ld   d, h                                        ; $739d: $54
	ld   sp, hl                                      ; $739e: $f9
	nop                                              ; $739f: $00
	ld   [bc], a                                     ; $73a0: $02
	rlca                                             ; $73a1: $07
	add  d                                           ; $73a2: $82
	ld   bc, $0302                                   ; $73a3: $01 $02 $03
	ld   bc, $2000                                   ; $73a6: $01 $00 $20
	nop                                              ; $73a9: $00
	rlca                                             ; $73aa: $07
	or   d                                           ; $73ab: $b2
	nop                                              ; $73ac: $00
	ld   [bc], a                                     ; $73ad: $02
	inc  bc                                          ; $73ae: $03
	ld   bc, $2001                                   ; $73af: $01 $01 $20
	nop                                              ; $73b2: $00
	rlca                                             ; $73b3: $07
	ld   a, [$0200]                                  ; $73b4: $fa $00 $02
	inc  bc                                          ; $73b7: $03
	ld   bc, $2002                                   ; $73b8: $01 $02 $20
	nop                                              ; $73bb: $00
	ld   b, $4e                                      ; $73bc: $06 $4e
	ld   bc, $000f                                   ; $73be: $01 $0f $00
	ld   bc, $0301                                   ; $73c1: $01 $01 $03
	sub  h                                           ; $73c4: $94
	inc  b                                           ; $73c5: $04
	sbc  [hl]                                        ; $73c6: $9e
	ld   [hl], l                                     ; $73c7: $75
	ld   h, l                                        ; $73c8: $65
	sub  a                                           ; $73c9: $97
	add  a                                           ; $73ca: $87
	ld   a, b                                        ; $73cb: $78
	ld   h, e                                        ; $73cc: $63
	ld   d, d                                        ; $73cd: $52
	sbc  a                                           ; $73ce: $9f
	dec  c                                           ; $73cf: $0d
	nop                                              ; $73d0: $00
	ld   a, [bc]                                     ; $73d1: $0a
	inc  e                                           ; $73d2: $1c
	inc  b                                           ; $73d3: $04
	inc  bc                                          ; $73d4: $03
	inc  bc                                          ; $73d5: $03
	dec  e                                           ; $73d6: $1d
	ld   b, b                                        ; $73d7: $40
	inc  d                                           ; $73d8: $14
	inc  bc                                          ; $73d9: $03
	inc  d                                           ; $73da: $14
	ld   bc, $2901                                   ; $73db: $01 $01 $29
	nop                                              ; $73de: $00
	ld   bc, $5484                                   ; $73df: $01 $84 $54
	rst  $38                                         ; $73e2: $ff
	rst  $38                                         ; $73e3: $ff
	or   d                                           ; $73e4: $b2
	jp   nz, $9f51                                   ; $73e5: $c2 $51 $9f

	dec  c                                           ; $73e8: $0d
	nop                                              ; $73e9: $00
	ld   a, [bc]                                     ; $73ea: $0a
	inc  e                                           ; $73eb: $1c
	inc  b                                           ; $73ec: $04
	ld   [bc], a                                     ; $73ed: $02
	ld   [bc], a                                     ; $73ee: $02
	ld   bc, $9166                                   ; $73ef: $01 $66 $91
	ld   d, b                                        ; $73f2: $50
	sbc  [hl]                                        ; $73f3: $9e
	ld   d, d                                        ; $73f4: $52
	adc  h                                           ; $73f5: $8c
	ld   d, d                                        ; $73f6: $52
	ld   l, e                                        ; $73f7: $6b
	ld   e, d                                        ; $73f8: $5a
	ld   h, l                                        ; $73f9: $65
	ld   d, d                                        ; $73fa: $52
	ld   e, c                                        ; $73fb: $59
	sub  a                                           ; $73fc: $97
	dec  c                                           ; $73fd: $0d
	ld   e, c                                        ; $73fe: $59
	ld   d, [hl]                                     ; $73ff: $56
	ld   [hl], c                                     ; $7400: $71
	ld   [hl], h                                     ; $7401: $74
	ld   a, [$000d]                                  ; $7402: $fa $0d $00
	ld   a, [bc]                                     ; $7405: $0a
	nop                                              ; $7406: $00
	rrca                                             ; $7407: $0f
	nop                                              ; $7408: $00
	ld   bc, $0401                                   ; $7409: $01 $01 $04
	xor  d                                           ; $740c: $aa
	inc  b                                           ; $740d: $04
	adc  a                                           ; $740e: $8f
	inc  bc                                          ; $740f: $03
	add  d                                           ; $7410: $82
	ld   l, [hl]                                     ; $7411: $6e
	sbc  e                                           ; $7412: $9b
	ld   d, h                                        ; $7413: $54
	ld   sp, hl                                      ; $7414: $f9
	dec  c                                           ; $7415: $0d
	ld   l, e                                        ; $7416: $6b
	sbc  d                                           ; $7417: $9a
	ld   e, l                                        ; $7418: $5d
	sub  a                                           ; $7419: $97
	ld   d, d                                        ; $741a: $52
	rst  $38                                         ; $741b: $ff
	rst  $38                                         ; $741c: $ff
	dec  c                                           ; $741d: $0d
	nop                                              ; $741e: $00
	ld   a, [bc]                                     ; $741f: $0a
	inc  e                                           ; $7420: $1c
	inc  b                                           ; $7421: $04
	rlca                                             ; $7422: $07
	rlca                                             ; $7423: $07
	dec  e                                           ; $7424: $1d
	ld   b, b                                        ; $7425: $40
	inc  d                                           ; $7426: $14
	inc  bc                                          ; $7427: $03
	inc  d                                           ; $7428: $14
	ld   bc, $2903                                   ; $7429: $01 $03 $29
	nop                                              ; $742c: $00
	ld   bc, $a5a3                                   ; $742d: $01 $a3 $a5
	db   $ec                                         ; $7430: $ec
	cp   d                                           ; $7431: $ba
	sbc  [hl]                                        ; $7432: $9e
	dec  c                                           ; $7433: $0d
	sub  $eb                                         ; $7434: $d6 $eb
	push af                                          ; $7436: $f5
	cp   d                                           ; $7437: $ba
	ld   h, [hl]                                     ; $7438: $66
	and  c                                           ; $7439: $a1
	ld   l, [hl]                                     ; $743a: $6e
	sub  b                                           ; $743b: $90
	and  c                                           ; $743c: $a1
	ld   a, [$790d]                                  ; $743d: $fa $0d $79
	adc  c                                           ; $7440: $89
	and  c                                           ; $7441: $a1
	ld   h, [hl]                                     ; $7442: $66
	and  c                                           ; $7443: $a1
	ld   h, [hl]                                     ; $7444: $66
	sub  c                                           ; $7445: $91
	ld   a, b                                        ; $7446: $78
	ld   d, d                                        ; $7447: $52
	sub  b                                           ; $7448: $90
	and  c                                           ; $7449: $a1
	ld   a, [$000d]                                  ; $744a: $fa $0d $00
	ld   a, [bc]                                     ; $744d: $0a
	ld   bc, $5490                                   ; $744e: $01 $90 $54
	inc  bc                                          ; $7451: $03

Jump_051_7452:
	add  b                                           ; $7452: $80
	ld   [hl], h                                     ; $7453: $74
	ld   [hl], c                                     ; $7454: $71
	ld   [hl], h                                     ; $7455: $74
	ld   a, [$000d]                                  ; $7456: $fa $0d $00
	ld   a, [bc]                                     ; $7459: $0a
	nop                                              ; $745a: $00
	inc  e                                           ; $745b: $1c
	inc  b                                           ; $745c: $04
	ld   [bc], a                                     ; $745d: $02
	ld   [bc], a                                     ; $745e: $02
	dec  e                                           ; $745f: $1d
	ld   b, b                                        ; $7460: $40
	inc  d                                           ; $7461: $14
	inc  bc                                          ; $7462: $03
	inc  d                                           ; $7463: $14
	ld   bc, $2902                                   ; $7464: $01 $02 $29
	nop                                              ; $7467: $00
	ld   bc, $ff50                                   ; $7468: $01 $50 $ff
	rst  $38                                         ; $746b: $ff
	and  l                                           ; $746c: $a5
	and  $6b                                         ; $746d: $e6 $6b
	ld   d, h                                        ; $746f: $54
	ld   a, b                                        ; $7470: $78

Jump_051_7471:
	ld   e, c                                        ; $7471: $59
	ld   e, b                                        ; $7472: $58
	ld   h, l                                        ; $7473: $65
	ld   [hl], h                                     ; $7474: $74
	sbc  c                                           ; $7475: $99
	sbc  a                                           ; $7476: $9f
	dec  c                                           ; $7477: $0d
	nop                                              ; $7478: $00
	ld   a, [bc]                                     ; $7479: $0a
	ld   bc, $5252                                   ; $747a: $01 $52 $52
	sub  b                                           ; $747d: $90
	and  c                                           ; $747e: $a1
	sbc  a                                           ; $747f: $9f
	dec  c                                           ; $7480: $0d
	add  b                                           ; $7481: $80
	halt                                             ; $7482: $76
	sbc  b                                           ; $7483: $98
	ld   [hl], l                                     ; $7484: $75
	ld   [hl], l                                     ; $7485: $75
	ld   e, e                                        ; $7486: $5b
	sbc  c                                           ; $7487: $99
	sub  b                                           ; $7488: $90
	and  c                                           ; $7489: $a1
	sbc  a                                           ; $748a: $9f
	dec  c                                           ; $748b: $0d
	nop                                              ; $748c: $00
	ld   a, [bc]                                     ; $748d: $0a
	nop                                              ; $748e: $00
	rrca                                             ; $748f: $0f
	nop                                              ; $7490: $00
	ld   bc, $5401                                   ; $7491: $01 $01 $54
	and  c                                           ; $7494: $a1
	sbc  [hl]                                        ; $7495: $9e
	ld   d, d                                        ; $7496: $52
	ld   d, d                                        ; $7497: $52
	sub  [hl]                                        ; $7498: $96
	sbc  a                                           ; $7499: $9f
	dec  c                                           ; $749a: $0d
	ld   [hl], l                                     ; $749b: $75
	sbc  [hl]                                        ; $749c: $9e
	ld   [hl], a                                     ; $749d: $77
	ld   a, h                                        ; $749e: $7c
	ld   [bc], a                                     ; $749f: $02
	rst  ToBoot                                         ; $74a0: $c7
	inc  bc                                          ; $74a1: $03
	sbc  h                                           ; $74a2: $9c
	ld   l, [hl]                                     ; $74a3: $6e
	ld   d, d                                        ; $74a4: $52
	ld   sp, hl                                      ; $74a5: $f9
	dec  c                                           ; $74a6: $0d
	nop                                              ; $74a7: $00
	ld   a, [bc]                                     ; $74a8: $0a
	inc  e                                           ; $74a9: $1c
	inc  b                                           ; $74aa: $04
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	ld   bc, $0701                                   ; $74ad: $01 $01 $07
	ld   a, l                                        ; $74b0: $7d
	ld   a, b                                        ; $74b1: $78
	ld   e, [hl]                                     ; $74b2: $5e
	adc  l                                           ; $74b3: $8d
	ld   bc, $7108                                   ; $74b4: $01 $08 $71
	ld   [hl], h                                     ; $74b7: $74
	sbc  [hl]                                        ; $74b8: $9e
	ld   e, c                                        ; $74b9: $59
	and  c                                           ; $74ba: $a1
	ld   h, [hl]                                     ; $74bb: $66
	sbc  a                                           ; $74bc: $9f
	dec  c                                           ; $74bd: $0d
	nop                                              ; $74be: $00
	ld   a, [bc]                                     ; $74bf: $0a
	add  hl, de                                      ; $74c0: $19
	dec  b                                           ; $74c1: $05
	inc  bc                                          ; $74c2: $03
	ld   [bc], a                                     ; $74c3: $02
	sbc  b                                           ; $74c4: $98
	inc  bc                                          ; $74c5: $03
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	ld   [bc], a                                     ; $74c9: $02
	sub  b                                           ; $74ca: $90
	inc  bc                                          ; $74cb: $03
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	ld   bc, $8204                                   ; $74ce: $01 $04 $82
	inc  bc                                          ; $74d1: $03
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	ld   [bc], a                                     ; $74d4: $02
	rlca                                             ; $74d5: $07
	and  $01                                         ; $74d6: $e6 $01
	ld   [bc], a                                     ; $74d8: $02
	inc  bc                                          ; $74d9: $03
	ld   bc, $2000                                   ; $74da: $01 $00 $20
	nop                                              ; $74dd: $00
	rlca                                             ; $74de: $07
	cpl                                              ; $74df: $2f
	ld   [bc], a                                     ; $74e0: $02
	ld   [bc], a                                     ; $74e1: $02
	inc  bc                                          ; $74e2: $03
	ld   bc, $2001                                   ; $74e3: $01 $01 $20
	nop                                              ; $74e6: $00
	rlca                                             ; $74e7: $07
	ld   [hl], h                                     ; $74e8: $74
	ld   [bc], a                                     ; $74e9: $02
	ld   [bc], a                                     ; $74ea: $02
	inc  bc                                          ; $74eb: $03
	ld   bc, $2002                                   ; $74ec: $01 $02 $20
	nop                                              ; $74ef: $00
	ld   b, $bd                                      ; $74f0: $06 $bd
	ld   [bc], a                                     ; $74f2: $02
	rrca                                             ; $74f3: $0f
	nop                                              ; $74f4: $00
	ld   bc, $0201                                   ; $74f5: $01 $01 $02
	sbc  b                                           ; $74f8: $98
	inc  bc                                          ; $74f9: $03
	nop                                              ; $74fa: $00
	ld   [hl], c                                     ; $74fb: $71
	ld   [hl], h                                     ; $74fc: $74
	inc  bc                                          ; $74fd: $03
	ld   d, l                                        ; $74fe: $55
	ld   e, l                                        ; $74ff: $5d
	and  c                                           ; $7500: $a1
	ld   l, [hl]                                     ; $7501: $6e
	sub  [hl]                                        ; $7502: $96
	sbc  a                                           ; $7503: $9f
	dec  c                                           ; $7504: $0d
	nop                                              ; $7505: $00
	ld   a, [bc]                                     ; $7506: $0a
	inc  e                                           ; $7507: $1c
	inc  b                                           ; $7508: $04
	ld   bc, $1d01                                   ; $7509: $01 $01 $1d
	ld   b, b                                        ; $750c: $40
	inc  d                                           ; $750d: $14
	inc  bc                                          ; $750e: $03
	inc  d                                           ; $750f: $14
	ld   bc, $2803                                   ; $7510: $01 $03 $28
	nop                                              ; $7513: $00
	ld   bc, $9e50                                   ; $7514: $01 $50 $9e
	ld   l, e                                        ; $7517: $6b
	ld   d, h                                        ; $7518: $54
	ld   l, e                                        ; $7519: $6b
	ld   d, h                                        ; $751a: $54
	sbc  a                                           ; $751b: $9f
	dec  c                                           ; $751c: $0d
	ld   h, c                                        ; $751d: $61
	ld   a, h                                        ; $751e: $7c
	ld   e, c                                        ; $751f: $59
	and  c                                           ; $7520: $a1
	ld   h, [hl]                                     ; $7521: $66
	sbc  [hl]                                        ; $7522: $9e
	ld   h, c                                        ; $7523: $61
	ld   a, h                                        ; $7524: $7c
	ld   e, c                                        ; $7525: $59
	and  c                                           ; $7526: $a1
	ld   h, [hl]                                     ; $7527: $66
	sbc  a                                           ; $7528: $9f
	dec  c                                           ; $7529: $0d
	ld   l, a                                        ; $752a: $6f
	ld   d, d                                        ; $752b: $52
	ld   [bc], a                                     ; $752c: $02
	inc  de                                          ; $752d: $13
	ld   l, a                                        ; $752e: $6f
	sub  c                                           ; $752f: $91
	and  c                                           ; $7530: $a1
	sbc  [hl]                                        ; $7531: $9e
	ld   h, a                                        ; $7532: $67
	ld   h, d                                        ; $7533: $62
	ld   d, d                                        ; $7534: $52
	ld   a, [$000d]                                  ; $7535: $fa $0d $00
	ld   a, [bc]                                     ; $7538: $0a
	ld   b, $f2                                      ; $7539: $06 $f2
	ld   [bc], a                                     ; $753b: $02
	rrca                                             ; $753c: $0f
	nop                                              ; $753d: $00
	ld   bc, $0201                                   ; $753e: $01 $01 $02
	sub  b                                           ; $7541: $90
	inc  bc                                          ; $7542: $03
	nop                                              ; $7543: $00
	ld   [hl], c                                     ; $7544: $71
	ld   [hl], h                                     ; $7545: $74
	inc  bc                                          ; $7546: $03
	ld   d, l                                        ; $7547: $55
	ld   e, l                                        ; $7548: $5d
	and  c                                           ; $7549: $a1
	ld   l, [hl]                                     ; $754a: $6e
	sub  [hl]                                        ; $754b: $96
	sbc  a                                           ; $754c: $9f
	dec  c                                           ; $754d: $0d
	nop                                              ; $754e: $00
	ld   a, [bc]                                     ; $754f: $0a
	inc  e                                           ; $7550: $1c
	inc  b                                           ; $7551: $04
	inc  bc                                          ; $7552: $03
	inc  bc                                          ; $7553: $03
	ld   bc, $ffff                                   ; $7554: $01 $ff $ff
	ld   a, b                                        ; $7557: $78
	and  c                                           ; $7558: $a1
	ld   e, c                                        ; $7559: $59
	ld   l, a                                        ; $755a: $6f
	ld   e, d                                        ; $755b: $5a
	ld   d, h                                        ; $755c: $54
	ld   e, e                                        ; $755d: $5b
	ld   e, d                                        ; $755e: $5a
	ld   h, a                                        ; $755f: $67
	sbc  c                                           ; $7560: $99
	sbc  a                                           ; $7561: $9f
	dec  c                                           ; $7562: $0d
	nop                                              ; $7563: $00
	inc  e                                           ; $7564: $1c
	inc  b                                           ; $7565: $04
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	ld   bc, $9075                                   ; $7568: $01 $75 $90
	sbc  [hl]                                        ; $756b: $9e
	ld   d, d                                        ; $756c: $52
	ld   d, d                                        ; $756d: $52
	sub  d                                           ; $756e: $92
	rst  $38                                         ; $756f: $ff
	rst  $38                                         ; $7570: $ff
	dec  c                                           ; $7571: $0d
	ld   e, c                                        ; $7572: $59
	ld   d, d                                        ; $7573: $52
	ld   l, a                                        ; $7574: $6f
	sub  c                                           ; $7575: $91
	ld   e, b                                        ; $7576: $58
	ld   d, h                                        ; $7577: $54
	ld   [hl], c                                     ; $7578: $71
	halt                                             ; $7579: $76
	sbc  a                                           ; $757a: $9f
	dec  c                                           ; $757b: $0d
	nop                                              ; $757c: $00
	ld   a, [bc]                                     ; $757d: $0a
	ld   b, $f2                                      ; $757e: $06 $f2
	ld   [bc], a                                     ; $7580: $02
	rrca                                             ; $7581: $0f
	nop                                              ; $7582: $00
	ld   bc, $0401                                   ; $7583: $01 $01 $04
	add  d                                           ; $7586: $82
	inc  bc                                          ; $7587: $03
	nop                                              ; $7588: $00
	ld   [hl], c                                     ; $7589: $71
	ld   [hl], h                                     ; $758a: $74
	inc  bc                                          ; $758b: $03
	ld   d, l                                        ; $758c: $55
	ld   e, l                                        ; $758d: $5d
	and  c                                           ; $758e: $a1
	ld   l, [hl]                                     ; $758f: $6e
	sub  [hl]                                        ; $7590: $96
	sbc  a                                           ; $7591: $9f
	dec  c                                           ; $7592: $0d
	nop                                              ; $7593: $00
	ld   a, [bc]                                     ; $7594: $0a
	inc  e                                           ; $7595: $1c
	inc  b                                           ; $7596: $04
	ld   b, $06                                      ; $7597: $06 $06
	ld   bc, $9a6b                                   ; $7599: $01 $6b $9a
	ld   a, l                                        ; $759c: $7d
	sbc  [hl]                                        ; $759d: $9e
	adc  l                                           ; $759e: $8d
	adc  l                                           ; $759f: $8d
	sbc  [hl]                                        ; $75a0: $9e
	ld   a, l                                        ; $75a1: $7d
	ld   a, b                                        ; $75a2: $78
	ld   a, h                                        ; $75a3: $7c
	ld   a, l                                        ; $75a4: $7d
	ld   a, b                                        ; $75a5: $78
	dec  c                                           ; $75a6: $0d
	nop                                              ; $75a7: $00
	inc  e                                           ; $75a8: $1c
	inc  b                                           ; $75a9: $04
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	ld   bc, $9166                                   ; $75ac: $01 $66 $91
	ld   a, b                                        ; $75af: $78
	ld   e, c                                        ; $75b0: $59
	ld   [hl], c                                     ; $75b1: $71
	ld   l, l                                        ; $75b2: $6d
	ld   [hl], c                                     ; $75b3: $71
	ld   e, a                                        ; $75b4: $5f
	ld   sp, hl                                      ; $75b5: $f9
	dec  c                                           ; $75b6: $0d
	adc  h                                           ; $75b7: $8c
	ld   d, b                                        ; $75b8: $50
	sbc  [hl]                                        ; $75b9: $9e
	ld   d, d                                        ; $75ba: $52
	ld   d, d                                        ; $75bb: $52
	sub  d                                           ; $75bc: $92
	sbc  a                                           ; $75bd: $9f
	ld   e, c                                        ; $75be: $59
	ld   d, d                                        ; $75bf: $52
	ld   l, a                                        ; $75c0: $6f
	sub  c                                           ; $75c1: $91
	ld   e, b                                        ; $75c2: $58
	sbc  a                                           ; $75c3: $9f
	dec  c                                           ; $75c4: $0d
	nop                                              ; $75c5: $00
	ld   a, [bc]                                     ; $75c6: $0a
	ld   b, $f2                                      ; $75c7: $06 $f2
	ld   [bc], a                                     ; $75c9: $02
	inc  e                                           ; $75ca: $1c
	inc  b                                           ; $75cb: $04
	inc  bc                                          ; $75cc: $03
	inc  bc                                          ; $75cd: $03
	ld   bc, $ffff                                   ; $75ce: $01 $ff $ff
	sbc  l                                           ; $75d1: $9d
	ld   e, c                                        ; $75d2: $59
	sub  a                                           ; $75d3: $97
	ld   a, b                                        ; $75d4: $78
	ld   d, d                                        ; $75d5: $52
	and  c                                           ; $75d6: $a1
	ld   l, [hl]                                     ; $75d7: $6e
	ld   sp, hl                                      ; $75d8: $f9
	dec  c                                           ; $75d9: $0d
	nop                                              ; $75da: $00
	ld   a, [bc]                                     ; $75db: $0a
	dec  e                                           ; $75dc: $1d
	ld   b, b                                        ; $75dd: $40
	inc  d                                           ; $75de: $14
	inc  bc                                          ; $75df: $03
	inc  d                                           ; $75e0: $14
	ld   bc, $2902                                   ; $75e1: $01 $02 $29
	nop                                              ; $75e4: $00
	ld   bc, $9166                                   ; $75e5: $01 $66 $91
	sbc  [hl]                                        ; $75e8: $9e
	ld   d, d                                        ; $75e9: $52
	ld   d, d                                        ; $75ea: $52
	sbc  a                                           ; $75eb: $9f
	dec  c                                           ; $75ec: $0d
	and  e                                           ; $75ed: $a3
	and  l                                           ; $75ee: $a5
	db   $ec                                         ; $75ef: $ec
	cp   d                                           ; $75f0: $ba
	sbc  [hl]                                        ; $75f1: $9e
	add  b                                           ; $75f2: $80
	halt                                             ; $75f3: $76
	sbc  b                                           ; $75f4: $98
	ld   [hl], l                                     ; $75f5: $75
	sub  d                                           ; $75f6: $92
	sbc  c                                           ; $75f7: $99
	ld   e, c                                        ; $75f8: $59
	sub  a                                           ; $75f9: $97
	sbc  a                                           ; $75fa: $9f
	dec  c                                           ; $75fb: $0d
	nop                                              ; $75fc: $00
	ld   a, [bc]                                     ; $75fd: $0a
	nop                                              ; $75fe: $00
	ld   bc, $9850                                   ; $75ff: $01 $50 $98
	ld   e, d                                        ; $7602: $5a
	halt                                             ; $7603: $76
	ld   d, h                                        ; $7604: $54
	sbc  [hl]                                        ; $7605: $9e
	ld   l, a                                        ; $7606: $6f
	ld   d, d                                        ; $7607: $52
	ld   [bc], a                                     ; $7608: $02
	inc  de                                          ; $7609: $13
	ld   l, a                                        ; $760a: $6f
	sub  c                                           ; $760b: $91
	and  c                                           ; $760c: $a1
	sbc  a                                           ; $760d: $9f
	dec  c                                           ; $760e: $0d
	nop                                              ; $760f: $00
	ld   a, [bc]                                     ; $7610: $0a
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	ld   c, $64                                      ; $7613: $0e $64
	rrca                                             ; $7615: $0f
	nop                                              ; $7616: $00
	ld   bc, $050d                                   ; $7617: $01 $0d $05
	nop                                              ; $761a: $00
	ld   [bc], a                                     ; $761b: $02
	rlca                                             ; $761c: $07
	call nc, $0404                                   ; $761d: $d4 $04 $04
	add  b                                           ; $7620: $80
	ld   sp, $ff01                                   ; $7621: $31 $01 $ff
	jr   nz, jr_051_7628                             ; $7624: $20 $02

	nop                                              ; $7626: $00
	inc  bc                                          ; $7627: $03

jr_051_7628:
	ld   b, c                                        ; $7628: $41
	jr   nz, jr_051_7647                             ; $7629: $20 $1c

	nop                                              ; $762b: $00
	ld   bc, $cf02                                   ; $762c: $01 $02 $cf
	dec  b                                           ; $762f: $05
	ld   a, [de]                                     ; $7630: $1a
	ld   h, e                                        ; $7631: $63
	and  c                                           ; $7632: $a1
	sbc  [hl]                                        ; $7633: $9e
	inc  b                                           ; $7634: $04
	rst  $28                                         ; $7635: $ef
	ld   e, b                                        ; $7636: $58
	ld   l, e                                        ; $7637: $6b
	ld   e, l                                        ; $7638: $5d
	adc  h                                           ; $7639: $8c
	ld   [hl], l                                     ; $763a: $75
	dec  c                                           ; $763b: $0d
	ld   h, d                                        ; $763c: $62
	ld   e, l                                        ; $763d: $5d
	sbc  e                                           ; $763e: $9b
	ld   d, h                                        ; $763f: $54
	ld   h, e                                        ; $7640: $63
	adc  h                                           ; $7641: $8c
	ld   [hl], l                                     ; $7642: $75
	ld   h, a                                        ; $7643: $67
	sbc  a                                           ; $7644: $9f
	dec  c                                           ; $7645: $0d
	nop                                              ; $7646: $00

jr_051_7647:
	ld   a, [bc]                                     ; $7647: $0a
	inc  e                                           ; $7648: $1c
	dec  b                                           ; $7649: $05
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	ld   bc, $f9a1                                   ; $764c: $01 $a1 $f9
	db   $10                                         ; $764f: $10
	ld   [$7d00], sp                                 ; $7650: $08 $00 $7d
	and  c                                           ; $7653: $a1
	sbc  a                                           ; $7654: $9f
	dec  c                                           ; $7655: $0d
	ld   [bc], a                                     ; $7656: $02
	sub  l                                           ; $7657: $95
	ld   [bc], a                                     ; $7658: $02
	sub  e                                           ; $7659: $93
	sbc  b                                           ; $765a: $98
	ld   h, d                                        ; $765b: $62
	ld   e, l                                        ; $765c: $5d
	sbc  e                                           ; $765d: $9b
	ld   d, h                                        ; $765e: $54
	ld   h, e                                        ; $765f: $63
	and  c                                           ; $7660: $a1
	sbc  a                                           ; $7661: $9f
	dec  c                                           ; $7662: $0d
	nop                                              ; $7663: $00
	ld   a, [bc]                                     ; $7664: $0a
	ld   bc, $546b                                   ; $7665: $01 $6b $54
	sub  d                                           ; $7668: $92
	sbc  [hl]                                        ; $7669: $9e
	ld   [$7d00], sp                                 ; $766a: $08 $00 $7d
	and  c                                           ; $766d: $a1
	dec  c                                           ; $766e: $0d
	ld   l, a                                        ; $766f: $6f
	sub  l                                           ; $7670: $95
	ld   h, c                                        ; $7671: $61
	ld   [hl], c                                     ; $7672: $71
	halt                                             ; $7673: $76
	inc  bc                                          ; $7674: $03
	ret  c                                           ; $7675: $d8

	ld   a, h                                        ; $7676: $7c
	ld   l, l                                        ; $7677: $6d
	ld   d, d                                        ; $7678: $52
	ld   l, e                                        ; $7679: $6b
	ld   d, h                                        ; $767a: $54
	dec  c                                           ; $767b: $0d
	ld   h, l                                        ; $767c: $65
	ld   [hl], h                                     ; $767d: $74
	ld   d, d                                        ; $767e: $52
	ld   e, c                                        ; $767f: $59
	add  [hl]                                        ; $7680: $86
	and  c                                           ; $7681: $a1
	ld   sp, hl                                      ; $7682: $f9
	dec  c                                           ; $7683: $0d
	nop                                              ; $7684: $00
	ld   a, [bc]                                     ; $7685: $0a
	add  hl, de                                      ; $7686: $19
	dec  b                                           ; $7687: $05
	ld   [bc], a                                     ; $7688: $02
	ld   h, a                                        ; $7689: $67
	sbc  c                                           ; $768a: $99
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	ld   h, l                                        ; $768d: $65
	ld   a, b                                        ; $768e: $78
	ld   d, d                                        ; $768f: $52
	nop                                              ; $7690: $00
	ld   bc, $9407                                   ; $7691: $01 $07 $94
	nop                                              ; $7694: $00
	ld   [bc], a                                     ; $7695: $02
	inc  bc                                          ; $7696: $03
	ld   bc, $2000                                   ; $7697: $01 $00 $20
	nop                                              ; $769a: $00
	rlca                                             ; $769b: $07
	and  e                                           ; $769c: $a3
	nop                                              ; $769d: $00
	ld   [bc], a                                     ; $769e: $02
	inc  bc                                          ; $769f: $03
	ld   bc, $2001                                   ; $76a0: $01 $01 $20
	nop                                              ; $76a3: $00
	ld   b, $94                                      ; $76a4: $06 $94
	nop                                              ; $76a6: $00
	rrca                                             ; $76a7: $0f
	nop                                              ; $76a8: $00
	ld   bc, $9201                                   ; $76a9: $01 $01 $92
	sbc  b                                           ; $76ac: $98
	adc  h                                           ; $76ad: $8c
	ld   h, a                                        ; $76ae: $67
	sbc  a                                           ; $76af: $9f
	dec  c                                           ; $76b0: $0d
	nop                                              ; $76b1: $00
	ld   a, [bc]                                     ; $76b2: $0a
	ld   b, $ef                                      ; $76b3: $06 $ef
	nop                                              ; $76b5: $00
	rrca                                             ; $76b6: $0f
	nop                                              ; $76b7: $00
	ld   bc, $6701                                   ; $76b8: $01 $01 $67
	adc  l                                           ; $76bb: $8d
	adc  h                                           ; $76bc: $8c
	ld   l, c                                        ; $76bd: $69
	and  c                                           ; $76be: $a1
	sbc  [hl]                                        ; $76bf: $9e
	ld   [bc], a                                     ; $76c0: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76c1: $cf
	dec  b                                           ; $76c2: $05
	ld   a, [de]                                     ; $76c3: $1a
	ld   h, e                                        ; $76c4: $63
	and  c                                           ; $76c5: $a1
	sbc  a                                           ; $76c6: $9f
	dec  c                                           ; $76c7: $0d
	ld   [bc], a                                     ; $76c8: $02
	sub  l                                           ; $76c9: $95
	ld   [bc], a                                     ; $76ca: $02
	sub  e                                           ; $76cb: $93
	sbc  b                                           ; $76cc: $98
	ld   a, h                                        ; $76cd: $7c
	halt                                             ; $76ce: $76
	ld   l, a                                        ; $76cf: $6f
	sub  e                                           ; $76d0: $93
	ld   d, h                                        ; $76d1: $54

Jump_051_76d2:
	ld   [hl], l                                     ; $76d2: $75
	ld   h, a                                        ; $76d3: $67
	ld   a, h                                        ; $76d4: $7c
	ld   [hl], l                                     ; $76d5: $75
	sbc  a                                           ; $76d6: $9f
	dec  c                                           ; $76d7: $0d
	nop                                              ; $76d8: $00
	ld   a, [bc]                                     ; $76d9: $0a
	inc  e                                           ; $76da: $1c
	dec  b                                           ; $76db: $05
	ld   [bc], a                                     ; $76dc: $02
	ld   [bc], a                                     ; $76dd: $02
	ld   bc, $546b                                   ; $76de: $01 $6b $54
	ld   e, c                                        ; $76e1: $59
	sbc  [hl]                                        ; $76e2: $9e
	ld   a, b                                        ; $76e3: $78
	sub  a                                           ; $76e4: $97
	ld   h, l                                        ; $76e5: $65
	sub  c                                           ; $76e6: $91
	ei                                               ; $76e7: $fb
	ld   a, b                                        ; $76e8: $78
	ld   d, d                                        ; $76e9: $52
	ld   a, b                                        ; $76ea: $78
	sbc  a                                           ; $76eb: $9f
	dec  c                                           ; $76ec: $0d
	nop                                              ; $76ed: $00
	ld   a, [bc]                                     ; $76ee: $0a
	rrca                                             ; $76ef: $0f
	nop                                              ; $76f0: $00
	ld   bc, $7501                                   ; $76f1: $01 $01 $75
	ld   a, l                                        ; $76f4: $7d
	sbc  [hl]                                        ; $76f5: $9e
	inc  bc                                          ; $76f6: $03
	add  e                                           ; $76f7: $83
	dec  b                                           ; $76f8: $05
	dec  c                                           ; $76f9: $0d
	ld   h, l                                        ; $76fa: $65
	adc  h                                           ; $76fb: $8c
	ld   h, a                                        ; $76fc: $67
	sbc  a                                           ; $76fd: $9f
	dec  c                                           ; $76fe: $0d
	nop                                              ; $76ff: $00
	ld   a, [bc]                                     ; $7700: $0a
	nop                                              ; $7701: $00
	inc  e                                           ; $7702: $1c
	dec  b                                           ; $7703: $05
	ld   bc, $0101                                   ; $7704: $01 $01 $01
	sub  [hl]                                        ; $7707: $96
	ei                                               ; $7708: $fb
	ld   h, l                                        ; $7709: $65
	ld   a, [$890d]                                  ; $770a: $fa $0d $89
	ld   a, b                                        ; $770d: $78
	sbc  [hl]                                        ; $770e: $9e
	inc  b                                           ; $770f: $04
	cp   a                                           ; $7710: $bf
	inc  b                                           ; $7711: $04
	dec  d                                           ; $7712: $15
	ld   d, d                                        ; $7713: $52
	ld   [hl], c                                     ; $7714: $71
	ld   [hl], h                                     ; $7715: $74
	adc  l                                           ; $7716: $8d
	sub  [hl]                                        ; $7717: $96
	ld   d, h                                        ; $7718: $54
	ld   a, [$000d]                                  ; $7719: $fa $0d $00
	ld   a, [bc]                                     ; $771c: $0a
	ld   bc, $d103                                   ; $771d: $01 $03 $d1
	ld   [de], a                                     ; $7720: $12
	inc  b                                           ; $7721: $04
	cp   a                                           ; $7722: $bf
	dec  c                                           ; $7723: $0d
	ld   a, [de]                                     ; $7724: $1a
	inc  d                                           ; $7725: $14
	jr   jr_051_7741                                 ; $7726: $18 $19

	inc  de                                          ; $7728: $13
	ld   bc, $1209                                   ; $7729: $01 $09 $12
	ld   a, l                                        ; $772c: $7d
	ld   sp, hl                                      ; $772d: $f9
	dec  c                                           ; $772e: $0d
	nop                                              ; $772f: $00
	ld   a, [bc]                                     ; $7730: $0a
	add  hl, de                                      ; $7731: $19
	dec  b                                           ; $7732: $05
	inc  bc                                          ; $7733: $03
	ld   a, [de]                                     ; $7734: $1a
	inc  d                                           ; $7735: $14
	jr   jr_051_7751                                 ; $7736: $18 $19

	inc  d                                           ; $7738: $14
	ld   [hl], l                                     ; $7739: $75
	ld   h, a                                        ; $773a: $67
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	ld   a, [de]                                     ; $773d: $1a
	inc  d                                           ; $773e: $14
	jr   jr_051_775a                                 ; $773f: $18 $19

jr_051_7741:
	ld   [de], a                                     ; $7741: $12
	ld   [hl], l                                     ; $7742: $75
	ld   h, a                                        ; $7743: $67
	nop                                              ; $7744: $00
	ld   bc, $1a18                                   ; $7745: $01 $18 $1a
	add  hl, de                                      ; $7748: $19
	inc  de                                          ; $7749: $13
	inc  d                                           ; $774a: $14
	ld   [hl], l                                     ; $774b: $75
	ld   h, a                                        ; $774c: $67
	nop                                              ; $774d: $00
	ld   [bc], a                                     ; $774e: $02
	rlca                                             ; $774f: $07
	ld   e, d                                        ; $7750: $5a

jr_051_7751:
	ld   bc, $0302                                   ; $7751: $01 $02 $03
	ld   bc, $2000                                   ; $7754: $01 $00 $20
	nop                                              ; $7757: $00
	rlca                                             ; $7758: $07
	adc  l                                           ; $7759: $8d

jr_051_775a:
	ld   bc, $0302                                   ; $775a: $01 $02 $03
	ld   bc, $2001                                   ; $775d: $01 $01 $20
	nop                                              ; $7760: $00
	rlca                                             ; $7761: $07
	call nz, $0201                                   ; $7762: $c4 $01 $02
	inc  bc                                          ; $7765: $03
	ld   bc, $2002                                   ; $7766: $01 $02 $20
	nop                                              ; $7769: $00
	ld   b, $ea                                      ; $776a: $06 $ea
	inc  bc                                          ; $776c: $03
	rrca                                             ; $776d: $0f
	nop                                              ; $776e: $00
	ld   bc, $1a01                                   ; $776f: $01 $01 $1a
	inc  d                                           ; $7772: $14
	jr   jr_051_778e                                 ; $7773: $18 $19

	inc  d                                           ; $7775: $14
	ld   [hl], l                                     ; $7776: $75
	ld   h, a                                        ; $7777: $67
	sbc  a                                           ; $7778: $9f
	dec  c                                           ; $7779: $0d
	nop                                              ; $777a: $00
	ld   a, [bc]                                     ; $777b: $0a
	inc  e                                           ; $777c: $1c
	dec  b                                           ; $777d: $05
	ld   bc, $1401                                   ; $777e: $01 $01 $14
	dec  de                                          ; $7781: $1b
	ld   bc, $5801                                   ; $7782: $01 $01 $58
	ld   [bc], a                                     ; $7785: $02
	sub  l                                           ; $7786: $95
	ld   h, d                                        ; $7787: $62
	halt                                             ; $7788: $76
	ld   a, [$690d]                                  ; $7789: $fa $0d $69
	ld   d, d                                        ; $778c: $52
	ld   e, c                                        ; $778d: $59

jr_051_778e:
	ld   d, d                                        ; $778e: $52
	sub  d                                           ; $778f: $92
	ld   a, [$000d]                                  ; $7790: $fa $0d $00
	ld   a, [bc]                                     ; $7793: $0a
	dec  b                                           ; $7794: $05
	ld   b, b                                        ; $7795: $40
	rst  $38                                         ; $7796: $ff
	inc  bc                                          ; $7797: $03
	rst  $38                                         ; $7798: $ff
	ld   bc, $2801                                   ; $7799: $01 $01 $28
	nop                                              ; $779c: $00
	ld   b, $fb                                      ; $779d: $06 $fb
	ld   bc, $000f                                   ; $779f: $01 $0f $00
	ld   bc, $1a01                                   ; $77a2: $01 $01 $1a
	inc  d                                           ; $77a5: $14
	jr   jr_051_77c1                                 ; $77a6: $18 $19

	ld   [de], a                                     ; $77a8: $12
	ld   [hl], l                                     ; $77a9: $75
	ld   h, a                                        ; $77aa: $67
	sbc  a                                           ; $77ab: $9f
	dec  c                                           ; $77ac: $0d
	nop                                              ; $77ad: $00
	ld   a, [bc]                                     ; $77ae: $0a
	inc  e                                           ; $77af: $1c
	dec  b                                           ; $77b0: $05
	ld   [bc], a                                     ; $77b1: $02
	ld   [bc], a                                     ; $77b2: $02
	inc  d                                           ; $77b3: $14
	inc  e                                           ; $77b4: $1c
	ld   bc, $6f01                                   ; $77b5: $01 $01 $6f
	sub  c                                           ; $77b8: $91
	ld   d, h                                        ; $77b9: $54
	sbc  [hl]                                        ; $77ba: $9e
	ld   l, a                                        ; $77bb: $6f
	sub  c                                           ; $77bc: $91
	ld   d, h                                        ; $77bd: $54
	sbc  a                                           ; $77be: $9f
	dec  c                                           ; $77bf: $0d
	ld   a, [de]                                     ; $77c0: $1a

jr_051_77c1:
	inc  d                                           ; $77c1: $14
	jr   jr_051_77dd                                 ; $77c2: $18 $19

	inc  de                                          ; $77c4: $13
	ld   bc, $1209                                   ; $77c5: $01 $09 $12
	ld   a, l                                        ; $77c8: $7d
	dec  c                                           ; $77c9: $0d
	ld   a, [de]                                     ; $77ca: $1a
	inc  d                                           ; $77cb: $14
	jr   jr_051_77e7                                 ; $77cc: $18 $19

	inc  d                                           ; $77ce: $14
	sub  d                                           ; $77cf: $92
	sbc  a                                           ; $77d0: $9f
	dec  c                                           ; $77d1: $0d
	nop                                              ; $77d2: $00
	ld   a, [bc]                                     ; $77d3: $0a
	ld   b, $fb                                      ; $77d4: $06 $fb
	ld   bc, $000f                                   ; $77d6: $01 $0f $00
	ld   bc, $1801                                   ; $77d9: $01 $01 $18
	ld   a, [de]                                     ; $77dc: $1a

jr_051_77dd:
	add  hl, de                                      ; $77dd: $19
	inc  de                                          ; $77de: $13
	inc  d                                           ; $77df: $14
	ld   [hl], l                                     ; $77e0: $75
	ld   h, a                                        ; $77e1: $67
	sbc  a                                           ; $77e2: $9f
	dec  c                                           ; $77e3: $0d
	nop                                              ; $77e4: $00
	ld   a, [bc]                                     ; $77e5: $0a
	inc  e                                           ; $77e6: $1c

jr_051_77e7:
	dec  b                                           ; $77e7: $05
	ld   [bc], a                                     ; $77e8: $02
	ld   [bc], a                                     ; $77e9: $02
	inc  d                                           ; $77ea: $14
	inc  e                                           ; $77eb: $1c
	ld   bc, $6f01                                   ; $77ec: $01 $01 $6f
	sub  c                                           ; $77ef: $91
	ld   d, h                                        ; $77f0: $54
	sbc  [hl]                                        ; $77f1: $9e
	ld   l, a                                        ; $77f2: $6f
	sub  c                                           ; $77f3: $91
	ld   d, h                                        ; $77f4: $54
	sbc  a                                           ; $77f5: $9f
	dec  c                                           ; $77f6: $0d
	ld   a, [de]                                     ; $77f7: $1a
	inc  d                                           ; $77f8: $14
	jr   @+$1b                                       ; $77f9: $18 $19

	inc  de                                          ; $77fb: $13
	ld   bc, $1209                                   ; $77fc: $01 $09 $12
	ld   a, l                                        ; $77ff: $7d
	dec  c                                           ; $7800: $0d
	ld   a, [de]                                     ; $7801: $1a
	inc  d                                           ; $7802: $14
	jr   @+$1b                                       ; $7803: $18 $19

	inc  d                                           ; $7805: $14
	sub  d                                           ; $7806: $92
	sbc  a                                           ; $7807: $9f
	dec  c                                           ; $7808: $0d
	nop                                              ; $7809: $00
	ld   a, [bc]                                     ; $780a: $0a
	ld   b, $fb                                      ; $780b: $06 $fb
	ld   bc, $051c                                   ; $780d: $01 $1c $05
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	ld   bc, $d103                                   ; $7812: $01 $03 $d1
	inc  de                                          ; $7815: $13
	inc  b                                           ; $7816: $04
	cp   a                                           ; $7817: $bf
	dec  c                                           ; $7818: $0d
	ld   [de], a                                     ; $7819: $12
	ld   de, $1111                                   ; $781a: $11 $11 $11
	ld   de, $0a01                                   ; $781d: $11 $01 $0a
	ld   a, [de]                                     ; $7820: $1a
	ld   a, [de]                                     ; $7821: $1a
	ld   a, [de]                                     ; $7822: $1a
	add  hl, de                                      ; $7823: $19
	ld   a, l                                        ; $7824: $7d
	ld   sp, hl                                      ; $7825: $f9
	dec  c                                           ; $7826: $0d
	nop                                              ; $7827: $00
	ld   a, [bc]                                     ; $7828: $0a
	add  hl, de                                      ; $7829: $19
	dec  b                                           ; $782a: $05
	inc  bc                                          ; $782b: $03
	inc  de                                          ; $782c: $13
	ld   [hl], l                                     ; $782d: $75
	ld   h, a                                        ; $782e: $67
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	add  hl, de                                      ; $7831: $19
	ld   [hl], l                                     ; $7832: $75
	ld   h, a                                        ; $7833: $67
	nop                                              ; $7834: $00
	ld   bc, $1113                                   ; $7835: $01 $13 $11
	ld   [hl], l                                     ; $7838: $75
	ld   h, a                                        ; $7839: $67
	nop                                              ; $783a: $00
	ld   [bc], a                                     ; $783b: $02
	rlca                                             ; $783c: $07
	ld   b, a                                        ; $783d: $47
	ld   [bc], a                                     ; $783e: $02
	ld   [bc], a                                     ; $783f: $02
	inc  bc                                          ; $7840: $03
	ld   bc, $2000                                   ; $7841: $01 $00 $20
	nop                                              ; $7844: $00
	rlca                                             ; $7845: $07
	halt                                             ; $7846: $76
	ld   [bc], a                                     ; $7847: $02
	ld   [bc], a                                     ; $7848: $02
	inc  bc                                          ; $7849: $03
	ld   bc, $2001                                   ; $784a: $01 $01 $20
	nop                                              ; $784d: $00
	rlca                                             ; $784e: $07
	xor  b                                           ; $784f: $a8
	ld   [bc], a                                     ; $7850: $02
	ld   [bc], a                                     ; $7851: $02
	inc  bc                                          ; $7852: $03
	ld   bc, $2002                                   ; $7853: $01 $02 $20
	nop                                              ; $7856: $00
	ld   b, $ea                                      ; $7857: $06 $ea

Jump_051_7859:
	inc  bc                                          ; $7859: $03
	rrca                                             ; $785a: $0f
	nop                                              ; $785b: $00
	ld   bc, $1301                                   ; $785c: $01 $01 $13
	ld   [hl], l                                     ; $785f: $75
	ld   h, a                                        ; $7860: $67
	sbc  a                                           ; $7861: $9f
	dec  c                                           ; $7862: $0d
	nop                                              ; $7863: $00
	ld   a, [bc]                                     ; $7864: $0a
	inc  e                                           ; $7865: $1c
	dec  b                                           ; $7866: $05
	ld   bc, $1401                                   ; $7867: $01 $01 $14
	dec  de                                          ; $786a: $1b
	ld   bc, $5801                                   ; $786b: $01 $01 $58
	ld   [bc], a                                     ; $786e: $02
	sub  l                                           ; $786f: $95
	ld   h, d                                        ; $7870: $62
	halt                                             ; $7871: $76
	ld   a, [$690d]                                  ; $7872: $fa $0d $69
	ld   d, d                                        ; $7875: $52
	ld   e, c                                        ; $7876: $59
	ld   d, d                                        ; $7877: $52
	sub  d                                           ; $7878: $92

Call_051_7879:
	ld   a, [$000d]                                  ; $7879: $fa $0d $00
	ld   a, [bc]                                     ; $787c: $0a

Jump_051_787d:
	dec  b                                           ; $787d: $05
	ld   b, b                                        ; $787e: $40
	rst  $38                                         ; $787f: $ff
	inc  bc                                          ; $7880: $03
	rst  $38                                         ; $7881: $ff
	ld   bc, $2801                                   ; $7882: $01 $01 $28
	nop                                              ; $7885: $00
	ld   b, $db                                      ; $7886: $06 $db
	ld   [bc], a                                     ; $7888: $02
	rrca                                             ; $7889: $0f
	nop                                              ; $788a: $00
	ld   bc, $1901                                   ; $788b: $01 $01 $19
	ld   [hl], l                                     ; $788e: $75
	ld   h, a                                        ; $788f: $67
	sbc  a                                           ; $7890: $9f
	dec  c                                           ; $7891: $0d
	nop                                              ; $7892: $00
	ld   a, [bc]                                     ; $7893: $0a
	inc  e                                           ; $7894: $1c
	dec  b                                           ; $7895: $05
	ld   [bc], a                                     ; $7896: $02
	ld   [bc], a                                     ; $7897: $02
	inc  d                                           ; $7898: $14
	inc  e                                           ; $7899: $1c
	ld   bc, $a301                                   ; $789a: $01 $01 $a3
	xor  h                                           ; $789d: $ac
	push af                                          ; $789e: $f5
	sbc  [hl]                                        ; $789f: $9e
	and  e                                           ; $78a0: $a3
	xor  h                                           ; $78a1: $ac
	push af                                          ; $78a2: $f5
	sbc  a                                           ; $78a3: $9f
	dec  c                                           ; $78a4: $0d
	ld   [de], a                                     ; $78a5: $12
	ld   de, $1111                                   ; $78a6: $11 $11 $11
	ld   de, $0a01                                   ; $78a9: $11 $01 $0a
	ld   a, [de]                                     ; $78ac: $1a
	ld   a, [de]                                     ; $78ad: $1a
	ld   a, [de]                                     ; $78ae: $1a
	add  hl, de                                      ; $78af: $19
	ld   a, l                                        ; $78b0: $7d
	dec  c                                           ; $78b1: $0d
	inc  de                                          ; $78b2: $13
	sub  d                                           ; $78b3: $92
	sbc  a                                           ; $78b4: $9f
	dec  c                                           ; $78b5: $0d
	nop                                              ; $78b6: $00
	ld   a, [bc]                                     ; $78b7: $0a
	ld   b, $db                                      ; $78b8: $06 $db
	ld   [bc], a                                     ; $78ba: $02
	rrca                                             ; $78bb: $0f
	nop                                              ; $78bc: $00
	ld   bc, $1301                                   ; $78bd: $01 $01 $13
	ld   de, $6775                                   ; $78c0: $11 $75 $67
	sbc  a                                           ; $78c3: $9f
	dec  c                                           ; $78c4: $0d
	nop                                              ; $78c5: $00
	ld   a, [bc]                                     ; $78c6: $0a
	inc  e                                           ; $78c7: $1c
	dec  b                                           ; $78c8: $05
	ld   [bc], a                                     ; $78c9: $02
	ld   [bc], a                                     ; $78ca: $02
	inc  d                                           ; $78cb: $14
	inc  e                                           ; $78cc: $1c
	ld   bc, $a301                                   ; $78cd: $01 $01 $a3
	xor  h                                           ; $78d0: $ac
	push af                                          ; $78d1: $f5
	sbc  [hl]                                        ; $78d2: $9e
	and  e                                           ; $78d3: $a3
	xor  h                                           ; $78d4: $ac
	push af                                          ; $78d5: $f5
	sbc  a                                           ; $78d6: $9f
	dec  c                                           ; $78d7: $0d
	ld   [de], a                                     ; $78d8: $12
	ld   de, $1111                                   ; $78d9: $11 $11 $11
	ld   de, $0a01                                   ; $78dc: $11 $01 $0a
	ld   a, [de]                                     ; $78df: $1a
	ld   a, [de]                                     ; $78e0: $1a
	ld   a, [de]                                     ; $78e1: $1a
	add  hl, de                                      ; $78e2: $19
	ld   a, l                                        ; $78e3: $7d
	dec  c                                           ; $78e4: $0d
	inc  de                                          ; $78e5: $13
	sub  d                                           ; $78e6: $92
	sbc  a                                           ; $78e7: $9f
	dec  c                                           ; $78e8: $0d
	nop                                              ; $78e9: $00
	ld   a, [bc]                                     ; $78ea: $0a
	ld   b, $db                                      ; $78eb: $06 $db
	ld   [bc], a                                     ; $78ed: $02
	inc  e                                           ; $78ee: $1c
	dec  b                                           ; $78ef: $05
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	ld   bc, $d103                                   ; $78f2: $01 $03 $d1
	inc  d                                           ; $78f5: $14
	inc  b                                           ; $78f6: $04
	cp   a                                           ; $78f7: $bf
	dec  c                                           ; $78f8: $0d
	inc  de                                          ; $78f9: $13
	rla                                              ; $78fa: $17
	ld   a, [de]                                     ; $78fb: $1a
	add  hl, de                                      ; $78fc: $19
	inc  d                                           ; $78fd: $14
	ld   bc, $130a                                   ; $78fe: $01 $0a $13
	ld   de, $191a                                   ; $7901: $11 $1a $19
	inc  d                                           ; $7904: $14
	ld   a, l                                        ; $7905: $7d
	ld   sp, hl                                      ; $7906: $f9
	dec  c                                           ; $7907: $0d
	nop                                              ; $7908: $00
	ld   a, [bc]                                     ; $7909: $0a
	add  hl, de                                      ; $790a: $19
	dec  b                                           ; $790b: $05
	inc  bc                                          ; $790c: $03
	rla                                              ; $790d: $17
	ld   de, $1111                                   ; $790e: $11 $11 $11
	ld   [hl], l                                     ; $7911: $75
	ld   h, a                                        ; $7912: $67
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	ld   d, $1a                                      ; $7915: $16 $1a
	add  hl, de                                      ; $7917: $19
	inc  d                                           ; $7918: $14
	ld   [hl], l                                     ; $7919: $75
	ld   h, a                                        ; $791a: $67
	nop                                              ; $791b: $00
	ld   bc, $1117                                   ; $791c: $01 $17 $11
	ld   de, $1111                                   ; $791f: $11 $11 $11
	ld   [hl], l                                     ; $7922: $75
	ld   h, a                                        ; $7923: $67
	nop                                              ; $7924: $00
	ld   [bc], a                                     ; $7925: $02
	rlca                                             ; $7926: $07
	ld   sp, $0203                                   ; $7927: $31 $03 $02
	inc  bc                                          ; $792a: $03
	ld   bc, $2000                                   ; $792b: $01 $00 $20
	nop                                              ; $792e: $00
	rlca                                             ; $792f: $07
	ld   l, e                                        ; $7930: $6b
	inc  bc                                          ; $7931: $03
	ld   [bc], a                                     ; $7932: $02
	inc  bc                                          ; $7933: $03
	ld   bc, $2001                                   ; $7934: $01 $01 $20
	nop                                              ; $7937: $00
	rlca                                             ; $7938: $07
	xor  d                                           ; $7939: $aa
	inc  bc                                          ; $793a: $03
	ld   [bc], a                                     ; $793b: $02
	inc  bc                                          ; $793c: $03
	ld   bc, $2002                                   ; $793d: $01 $02 $20
	nop                                              ; $7940: $00
	ld   b, $ea                                      ; $7941: $06 $ea
	inc  bc                                          ; $7943: $03
	rrca                                             ; $7944: $0f
	nop                                              ; $7945: $00
	ld   bc, $1701                                   ; $7946: $01 $01 $17
	ld   de, $1111                                   ; $7949: $11 $11 $11
	ld   [hl], l                                     ; $794c: $75
	ld   h, a                                        ; $794d: $67
	sbc  a                                           ; $794e: $9f
	dec  c                                           ; $794f: $0d
	nop                                              ; $7950: $00
	ld   a, [bc]                                     ; $7951: $0a
	inc  e                                           ; $7952: $1c
	dec  b                                           ; $7953: $05
	ld   bc, $1401                                   ; $7954: $01 $01 $14
	dec  de                                          ; $7957: $1b
	ld   bc, $5801                                   ; $7958: $01 $01 $58
	ld   [bc], a                                     ; $795b: $02
	sub  l                                           ; $795c: $95
	ld   h, d                                        ; $795d: $62
	halt                                             ; $795e: $76
	ld   a, [$690d]                                  ; $795f: $fa $0d $69
	ld   d, d                                        ; $7962: $52
	ld   e, c                                        ; $7963: $59
	ld   d, d                                        ; $7964: $52
	sub  d                                           ; $7965: $92
	ld   a, [$000d]                                  ; $7966: $fa $0d $00
	ld   a, [bc]                                     ; $7969: $0a
	dec  b                                           ; $796a: $05
	ld   b, b                                        ; $796b: $40
	rst  $38                                         ; $796c: $ff
	inc  bc                                          ; $796d: $03
	rst  $38                                         ; $796e: $ff
	ld   bc, $2801                                   ; $796f: $01 $01 $28
	nop                                              ; $7972: $00
	dec  c                                           ; $7973: $0d
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	rrca                                             ; $7976: $0f
	nop                                              ; $7977: $00
	ld   bc, $0b0c                                   ; $7978: $01 $0c $0b
	ld   b, $15                                      ; $797b: $06 $15
	inc  b                                           ; $797d: $04
	rrca                                             ; $797e: $0f
	nop                                              ; $797f: $00
	ld   bc, $1601                                   ; $7980: $01 $01 $16
	ld   a, [de]                                     ; $7983: $1a
	add  hl, de                                      ; $7984: $19
	inc  d                                           ; $7985: $14
	ld   [hl], l                                     ; $7986: $75
	ld   h, a                                        ; $7987: $67
	sbc  a                                           ; $7988: $9f
	dec  c                                           ; $7989: $0d
	nop                                              ; $798a: $00
	ld   a, [bc]                                     ; $798b: $0a
	inc  e                                           ; $798c: $1c
	dec  b                                           ; $798d: $05
	ld   [bc], a                                     ; $798e: $02
	ld   [bc], a                                     ; $798f: $02
	inc  d                                           ; $7990: $14
	inc  e                                           ; $7991: $1c
	ld   bc, $c101                                   ; $7992: $01 $01 $c1
	db   $e3                                         ; $7995: $e3
	sbc  [hl]                                        ; $7996: $9e
	pop  bc                                          ; $7997: $c1
	db   $e3                                         ; $7998: $e3
	sbc  a                                           ; $7999: $9f
	dec  c                                           ; $799a: $0d
	inc  de                                          ; $799b: $13
	rla                                              ; $799c: $17
	ld   a, [de]                                     ; $799d: $1a
	add  hl, de                                      ; $799e: $19
	inc  d                                           ; $799f: $14
	ld   bc, $130a                                   ; $79a0: $01 $0a $13
	ld   de, $191a                                   ; $79a3: $11 $1a $19
	inc  d                                           ; $79a6: $14
	ld   a, l                                        ; $79a7: $7d
	dec  c                                           ; $79a8: $0d
	rla                                              ; $79a9: $17
	ld   de, $1111                                   ; $79aa: $11 $11 $11
	sub  d                                           ; $79ad: $92
	sbc  a                                           ; $79ae: $9f
	dec  c                                           ; $79af: $0d
	nop                                              ; $79b0: $00
	ld   a, [bc]                                     ; $79b1: $0a
	dec  c                                           ; $79b2: $0d
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	rrca                                             ; $79b5: $0f
	nop                                              ; $79b6: $00
	ld   bc, $0b0c                                   ; $79b7: $01 $0c $0b
	ld   b, $15                                      ; $79ba: $06 $15
	inc  b                                           ; $79bc: $04
	rrca                                             ; $79bd: $0f
	nop                                              ; $79be: $00
	ld   bc, $1701                                   ; $79bf: $01 $01 $17
	ld   de, $1111                                   ; $79c2: $11 $11 $11
	ld   de, $6775                                   ; $79c5: $11 $75 $67
	sbc  a                                           ; $79c8: $9f
	dec  c                                           ; $79c9: $0d
	nop                                              ; $79ca: $00
	ld   a, [bc]                                     ; $79cb: $0a
	inc  e                                           ; $79cc: $1c
	dec  b                                           ; $79cd: $05
	ld   [bc], a                                     ; $79ce: $02
	ld   [bc], a                                     ; $79cf: $02
	inc  d                                           ; $79d0: $14
	inc  e                                           ; $79d1: $1c
	ld   bc, $c101                                   ; $79d2: $01 $01 $c1
	db   $e3                                         ; $79d5: $e3
	sbc  [hl]                                        ; $79d6: $9e
	pop  bc                                          ; $79d7: $c1

Call_051_79d8:
	db   $e3                                         ; $79d8: $e3
	sbc  a                                           ; $79d9: $9f
	dec  c                                           ; $79da: $0d
	inc  de                                          ; $79db: $13
	rla                                              ; $79dc: $17
	ld   a, [de]                                     ; $79dd: $1a
	add  hl, de                                      ; $79de: $19
	inc  d                                           ; $79df: $14
	ld   bc, $130a                                   ; $79e0: $01 $0a $13
	ld   de, $191a                                   ; $79e3: $11 $1a $19
	inc  d                                           ; $79e6: $14
	ld   a, l                                        ; $79e7: $7d
	dec  c                                           ; $79e8: $0d
	rla                                              ; $79e9: $17
	ld   de, $1111                                   ; $79ea: $11 $11 $11
	sub  d                                           ; $79ed: $92
	sbc  a                                           ; $79ee: $9f
	dec  c                                           ; $79ef: $0d
	nop                                              ; $79f0: $00
	ld   a, [bc]                                     ; $79f1: $0a
	dec  c                                           ; $79f2: $0d
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	rrca                                             ; $79f5: $0f
	nop                                              ; $79f6: $00
	ld   bc, $0b0c                                   ; $79f7: $01 $0c $0b
	ld   b, $15                                      ; $79fa: $06 $15
	inc  b                                           ; $79fc: $04
	inc  e                                           ; $79fd: $1c
	dec  b                                           ; $79fe: $05
	ld   [bc], a                                     ; $79ff: $02
	ld   [bc], a                                     ; $7a00: $02
	ld   bc, $fc54                                   ; $7a01: $01 $54 $fc
	and  c                                           ; $7a04: $a1
	sbc  a                                           ; $7a05: $9f
	dec  c                                           ; $7a06: $0d
	ld   h, c                                        ; $7a07: $61
	ld   a, h                                        ; $7a08: $7c
	ld   [hl], h                                     ; $7a09: $74
	ld   d, d                                        ; $7a0a: $52
	ld   [hl], a                                     ; $7a0b: $77
	ld   a, h                                        ; $7a0c: $7c
	ld   [bc], a                                     ; $7a0d: $02
	ccf                                              ; $7a0e: $3f
	inc  bc                                          ; $7a0f: $03
	rla                                              ; $7a10: $17
	dec  c                                           ; $7a11: $0d
	ld   [hl], l                                     ; $7a12: $75
	ld   e, e                                        ; $7a13: $5b
	add  [hl]                                        ; $7a14: $86
	and  c                                           ; $7a15: $a1
	ld   a, h                                        ; $7a16: $7c
	ld   e, c                                        ; $7a17: $59
	rst  $38                                         ; $7a18: $ff
	rst  $38                                         ; $7a19: $ff
	dec  c                                           ; $7a1a: $0d
	nop                                              ; $7a1b: $00
	ld   a, [bc]                                     ; $7a1c: $0a
	dec  c                                           ; $7a1d: $0d
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	rrca                                             ; $7a20: $0f
	nop                                              ; $7a21: $00
	ld   bc, $0b0c                                   ; $7a22: $01 $0c $0b
	ld   b, $15                                      ; $7a25: $06 $15
	inc  b                                           ; $7a27: $04
	rlca                                             ; $7a28: $07
	ld   a, [hl+]                                    ; $7a29: $2a
	inc  b                                           ; $7a2a: $04
	inc  bc                                          ; $7a2b: $03
	rst  $38                                         ; $7a2c: $ff
	ld   bc, $2003                                   ; $7a2d: $01 $03 $20
	nop                                              ; $7a30: $00
	rlca                                             ; $7a31: $07
	ld   d, b                                        ; $7a32: $50
	inc  b                                           ; $7a33: $04
	inc  bc                                          ; $7a34: $03
	rst  $38                                         ; $7a35: $ff
	ld   bc, $2002                                   ; $7a36: $01 $02 $20
	nop                                              ; $7a39: $00
	ld   b, $79                                      ; $7a3a: $06 $79
	inc  b                                           ; $7a3c: $04
	inc  e                                           ; $7a3d: $1c
	dec  b                                           ; $7a3e: $05
	ld   bc, $1d01                                   ; $7a3f: $01 $01 $1d
	ld   b, b                                        ; $7a42: $40
	dec  d                                           ; $7a43: $15
	inc  bc                                          ; $7a44: $03
	dec  d                                           ; $7a45: $15
	ld   bc, $2803                                   ; $7a46: $01 $03 $28
	nop                                              ; $7a49: $00
	ld   bc, $6267                                   ; $7a4a: $01 $67 $62
	ld   d, d                                        ; $7a4d: $52
	ld   a, b                                        ; $7a4e: $78
	sbc  [hl]                                        ; $7a4f: $9e
	ld   [$7d00], sp                                 ; $7a50: $08 $00 $7d
	and  c                                           ; $7a53: $a1
	sbc  a                                           ; $7a54: $9f
	dec  c                                           ; $7a55: $0d
	inc  b                                           ; $7a56: $04
	inc  de                                          ; $7a57: $13
	inc  bc                                          ; $7a58: $03
	ld   b, $92                                      ; $7a59: $06 $92
	ld   a, b                                        ; $7a5b: $78
	ld   a, [$000d]                                  ; $7a5c: $fa $0d $00
	ld   a, [bc]                                     ; $7a5f: $0a
	ld   b, $ae                                      ; $7a60: $06 $ae
	inc  b                                           ; $7a62: $04
	inc  e                                           ; $7a63: $1c
	dec  b                                           ; $7a64: $05
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	dec  e                                           ; $7a67: $1d
	ld   b, b                                        ; $7a68: $40
	dec  d                                           ; $7a69: $15
	inc  bc                                          ; $7a6a: $03
	dec  d                                           ; $7a6b: $15
	ld   bc, $2802                                   ; $7a6c: $01 $02 $28
	nop                                              ; $7a6f: $00
	ld   bc, $508c                                   ; $7a70: $01 $8c $50
	sbc  [hl]                                        ; $7a73: $9e
	ld   h, c                                        ; $7a74: $61
	and  c                                           ; $7a75: $a1
	ld   a, b                                        ; $7a76: $78
	sub  b                                           ; $7a77: $90
	and  c                                           ; $7a78: $a1
	sub  d                                           ; $7a79: $92
	sbc  e                                           ; $7a7a: $9b
	sbc  a                                           ; $7a7b: $9f
	dec  c                                           ; $7a7c: $0d
	ld   a, b                                        ; $7a7d: $78
	ld   e, c                                        ; $7a7e: $59
	ld   a, b                                        ; $7a7f: $78
	ld   e, c                                        ; $7a80: $59
	sub  d                                           ; $7a81: $92
	sbc  c                                           ; $7a82: $99
	sub  d                                           ; $7a83: $92
	and  c                                           ; $7a84: $a1
	sbc  a                                           ; $7a85: $9f
	dec  c                                           ; $7a86: $0d
	nop                                              ; $7a87: $00
	ld   a, [bc]                                     ; $7a88: $0a
	ld   b, $ae                                      ; $7a89: $06 $ae
	inc  b                                           ; $7a8b: $04
	inc  e                                           ; $7a8c: $1c
	dec  b                                           ; $7a8d: $05
	ld   [bc], a                                     ; $7a8e: $02
	ld   [bc], a                                     ; $7a8f: $02
	dec  e                                           ; $7a90: $1d
	ld   b, b                                        ; $7a91: $40
	dec  d                                           ; $7a92: $15
	inc  bc                                          ; $7a93: $03
	dec  d                                           ; $7a94: $15
	ld   bc, $2902                                   ; $7a95: $01 $02 $29
	nop                                              ; $7a98: $00
	ld   bc, $5950                                   ; $7a99: $01 $50 $59
	and  c                                           ; $7a9c: $a1
	ld   a, b                                        ; $7a9d: $78
	db   $fc                                         ; $7a9e: $fc
	sbc  a                                           ; $7a9f: $9f
	dec  c                                           ; $7aa0: $0d
	sub  b                                           ; $7aa1: $90
	ld   d, h                                        ; $7aa2: $54
	ld   l, a                                        ; $7aa3: $6f
	sub  l                                           ; $7aa4: $95
	ld   [hl], c                                     ; $7aa5: $71
	halt                                             ; $7aa6: $76
	sbc  [hl]                                        ; $7aa7: $9e
	inc  bc                                          ; $7aa8: $03
	ret  c                                           ; $7aa9: $d8

	ld   e, e                                        ; $7aaa: $5b
	ld   l, l                                        ; $7aab: $6d
	ld   d, [hl]                                     ; $7aac: $56
	ld   l, l                                        ; $7aad: $6d
	inc  b                                           ; $7aae: $04
	ld   a, b                                        ; $7aaf: $78
	ld   e, d                                        ; $7ab0: $5a
	dec  c                                           ; $7ab1: $0d
	xor  c                                           ; $7ab2: $a9
	xor  c                                           ; $7ab3: $a9
	and  c                                           ; $7ab4: $a1
	halt                                             ; $7ab5: $76
	ld   l, a                                        ; $7ab6: $6f
	sub  c                                           ; $7ab7: $91
	ld   d, h                                        ; $7ab8: $54
	ld   e, c                                        ; $7ab9: $59
	sbc  a                                           ; $7aba: $9f
	dec  c                                           ; $7abb: $0d
	nop                                              ; $7abc: $00
	ld   a, [bc]                                     ; $7abd: $0a
	ld   b, $ae                                      ; $7abe: $06 $ae
	inc  b                                           ; $7ac0: $04
	ld   bc, $7889                                   ; $7ac1: $01 $89 $78
	sbc  [hl]                                        ; $7ac4: $9e
	and  a                                           ; $7ac5: $a7
	jp   nz, Jump_051_5490                           ; $7ac6: $c2 $90 $54

	ld   l, a                                        ; $7ac9: $6f
	sub  l                                           ; $7aca: $95
	ld   [hl], c                                     ; $7acb: $71
	halt                                             ; $7acc: $76
	dec  c                                           ; $7acd: $0d
	sub  d                                           ; $7ace: $92
	sbc  c                                           ; $7acf: $99
	ld   h, c                                        ; $7ad0: $61
	halt                                             ; $7ad1: $76
	ld   e, d                                        ; $7ad2: $5a
	ld   d, b                                        ; $7ad3: $50
	sbc  c                                           ; $7ad4: $99
	ld   e, c                                        ; $7ad5: $59
	sub  a                                           ; $7ad6: $97
	sbc  a                                           ; $7ad7: $9f
	dec  c                                           ; $7ad8: $0d
	ld   e, b                                        ; $7ad9: $58
	sub  d                                           ; $7ada: $92
	ld   h, a                                        ; $7adb: $67
	adc  l                                           ; $7adc: $8d
	sbc  [hl]                                        ; $7add: $9e
	ld   [$7d00], sp                                 ; $7ade: $08 $00 $7d
	and  c                                           ; $7ae1: $a1
	sbc  a                                           ; $7ae2: $9f
	dec  c                                           ; $7ae3: $0d
	nop                                              ; $7ae4: $00
	ld   a, [bc]                                     ; $7ae5: $0a
	nop                                              ; $7ae6: $00
	inc  e                                           ; $7ae7: $1c
	dec  b                                           ; $7ae8: $05
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	ld   bc, $0008                                   ; $7aeb: $01 $08 $00
	ld   a, l                                        ; $7aee: $7d
	and  c                                           ; $7aef: $a1
	sbc  a                                           ; $7af0: $9f
	dec  c                                           ; $7af1: $0d
	nop                                              ; $7af2: $00
	ld   a, [bc]                                     ; $7af3: $0a
	rrca                                             ; $7af4: $0f
	nop                                              ; $7af5: $00
	ld   bc, $5001                                   ; $7af6: $01 $01 $50
	ld   [hl], c                                     ; $7af9: $71
	ld   a, [$0210]                                  ; $7afa: $fa $10 $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7afd: $cf
	dec  b                                           ; $7afe: $05
	ld   a, [de]                                     ; $7aff: $1a
	ld   h, e                                        ; $7b00: $63
	and  c                                           ; $7b01: $a1
	sbc  a                                           ; $7b02: $9f
	dec  c                                           ; $7b03: $0d
	nop                                              ; $7b04: $00
	ld   a, [bc]                                     ; $7b05: $0a
	rrca                                             ; $7b06: $0f
	dec  b                                           ; $7b07: $05
	nop                                              ; $7b08: $00
	ld   bc, $f9a1                                   ; $7b09: $01 $a1 $f9
	db   $10                                         ; $7b0c: $10
	ld   [$7d00], sp                                 ; $7b0d: $08 $00 $7d
	and  c                                           ; $7b10: $a1
	sbc  [hl]                                        ; $7b11: $9e
	dec  c                                           ; $7b12: $0d
	ld   a, b                                        ; $7b13: $78
	ld   a, c                                        ; $7b14: $79
	ld   e, b                                        ; $7b15: $58
	add  c                                           ; $7b16: $81
	ld   d, [hl]                                     ; $7b17: $56
	ld   [hl], h                                     ; $7b18: $74
	sbc  c                                           ; $7b19: $99
	and  c                                           ; $7b1a: $a1
	sub  d                                           ; $7b1b: $92
	ld   sp, hl                                      ; $7b1c: $f9
	dec  c                                           ; $7b1d: $0d
	ld   d, b                                        ; $7b1e: $50
	ld   [hl], c                                     ; $7b1f: $71
	sbc  [hl]                                        ; $7b20: $9e
	inc  b                                           ; $7b21: $04
	xor  l                                           ; $7b22: $ad
	ld   [bc], a                                     ; $7b23: $02
	xor  c                                           ; $7b24: $a9
	ld   a, h                                        ; $7b25: $7c
	ld   b, $0d                                      ; $7b26: $06 $0d
	inc  b                                           ; $7b28: $04
	ld   e, [hl]                                     ; $7b29: $5e
	ld   e, c                                        ; $7b2a: $59
	db   $fc                                         ; $7b2b: $fc
	sbc  a                                           ; $7b2c: $9f
	dec  c                                           ; $7b2d: $0d
	nop                                              ; $7b2e: $00
	ld   a, [bc]                                     ; $7b2f: $0a
	inc  e                                           ; $7b30: $1c
	dec  b                                           ; $7b31: $05
	ld   bc, $0101                                   ; $7b32: $01 $01 $01
	adc  h                                           ; $7b35: $8c
	ld   d, b                                        ; $7b36: $50
	sbc  [hl]                                        ; $7b37: $9e
	inc  bc                                          ; $7b38: $03
	add  e                                           ; $7b39: $83
	inc  b                                           ; $7b3a: $04
	sbc  b                                           ; $7b3b: $98
	ld   a, l                                        ; $7b3c: $7d
	inc  bc                                          ; $7b3d: $03
	ld   [de], a                                     ; $7b3e: $12
	ld   [bc], a                                     ; $7b3f: $02
	ld   c, h                                        ; $7b40: $4c
	ld   a, h                                        ; $7b41: $7c
	sub  b                                           ; $7b42: $90
	halt                                             ; $7b43: $76
	dec  c                                           ; $7b44: $0d
	ld   l, a                                        ; $7b45: $6f
	sub  e                                           ; $7b46: $93
	ei                                               ; $7b47: $fb
	ld   h, c                                        ; $7b48: $61
	halt                                             ; $7b49: $76
	ld   [hl], l                                     ; $7b4a: $75
	sbc  a                                           ; $7b4b: $9f
	dec  c                                           ; $7b4c: $0d
	ld   a, b                                        ; $7b4d: $78
	ld   [hl], c                                     ; $7b4e: $71
	ld   a, [$000d]                                  ; $7b4f: $fa $0d $00
	ld   a, [bc]                                     ; $7b52: $0a
	inc  e                                           ; $7b53: $1c
	dec  b                                           ; $7b54: $05
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	ld   bc, $6176                                   ; $7b57: $01 $76 $61
	sbc  e                                           ; $7b5a: $9b
	ld   [hl], l                                     ; $7b5b: $75
	sbc  [hl]                                        ; $7b5c: $9e
	ld   [$7d00], sp                                 ; $7b5d: $08 $00 $7d
	and  c                                           ; $7b60: $a1
	dec  c                                           ; $7b61: $0d
	ld   l, a                                        ; $7b62: $6f
	sub  l                                           ; $7b63: $95
	ld   h, c                                        ; $7b64: $61
	ld   [hl], c                                     ; $7b65: $71
	halt                                             ; $7b66: $76
	inc  bc                                          ; $7b67: $03
	ret  c                                           ; $7b68: $d8

	ld   a, h                                        ; $7b69: $7c
	ld   l, l                                        ; $7b6a: $6d
	ld   d, d                                        ; $7b6b: $52
	ld   l, e                                        ; $7b6c: $6b
	ld   d, h                                        ; $7b6d: $54
	dec  c                                           ; $7b6e: $0d
	ld   h, l                                        ; $7b6f: $65
	ld   [hl], h                                     ; $7b70: $74
	ld   d, d                                        ; $7b71: $52
	ld   e, a                                        ; $7b72: $5f
	add  [hl]                                        ; $7b73: $86
	and  c                                           ; $7b74: $a1
	ld   sp, hl                                      ; $7b75: $f9
	dec  c                                           ; $7b76: $0d
	nop                                              ; $7b77: $00
	ld   a, [bc]                                     ; $7b78: $0a
	add  hl, de                                      ; $7b79: $19
	dec  b                                           ; $7b7a: $05
	ld   [bc], a                                     ; $7b7b: $02
	ld   h, a                                        ; $7b7c: $67
	sbc  c                                           ; $7b7d: $99
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	ld   h, l                                        ; $7b80: $65
	ld   a, b                                        ; $7b81: $78
	ld   d, d                                        ; $7b82: $52
	nop                                              ; $7b83: $00
	ld   bc, $8707                                   ; $7b84: $01 $07 $87
	dec  b                                           ; $7b87: $05
	ld   [bc], a                                     ; $7b88: $02
	inc  bc                                          ; $7b89: $03
	ld   bc, $2000                                   ; $7b8a: $01 $00 $20
	nop                                              ; $7b8d: $00
	rlca                                             ; $7b8e: $07
	sub  [hl]                                        ; $7b8f: $96
	dec  b                                           ; $7b90: $05
	ld   [bc], a                                     ; $7b91: $02
	inc  bc                                          ; $7b92: $03
	ld   bc, $2001                                   ; $7b93: $01 $01 $20
	nop                                              ; $7b96: $00
	ld   b, $87                                      ; $7b97: $06 $87
	dec  b                                           ; $7b99: $05
	rrca                                             ; $7b9a: $0f
	nop                                              ; $7b9b: $00
	ld   bc, $9201                                   ; $7b9c: $01 $01 $92
	sbc  b                                           ; $7b9f: $98
	adc  h                                           ; $7ba0: $8c
	ld   h, a                                        ; $7ba1: $67
	sbc  a                                           ; $7ba2: $9f
	dec  c                                           ; $7ba3: $0d
	nop                                              ; $7ba4: $00
	ld   a, [bc]                                     ; $7ba5: $0a
	ld   b, $ef                                      ; $7ba6: $06 $ef
	nop                                              ; $7ba8: $00
	rrca                                             ; $7ba9: $0f
	nop                                              ; $7baa: $00
	ld   bc, $6701                                   ; $7bab: $01 $01 $67
	sbc  [hl]                                        ; $7bae: $9e
	ld   h, a                                        ; $7baf: $67
	adc  l                                           ; $7bb0: $8d
	adc  h                                           ; $7bb1: $8c
	ld   l, c                                        ; $7bb2: $69
	and  c                                           ; $7bb3: $a1
	sbc  [hl]                                        ; $7bb4: $9e
	ld   [bc], a                                     ; $7bb5: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bb6: $cf
	dec  b                                           ; $7bb7: $05
	ld   a, [de]                                     ; $7bb8: $1a
	ld   h, e                                        ; $7bb9: $63
	and  c                                           ; $7bba: $a1
	sbc  a                                           ; $7bbb: $9f
	dec  c                                           ; $7bbc: $0d
	ld   [bc], a                                     ; $7bbd: $02
	sub  l                                           ; $7bbe: $95
	ld   [bc], a                                     ; $7bbf: $02
	sub  e                                           ; $7bc0: $93
	sbc  b                                           ; $7bc1: $98
	ld   a, h                                        ; $7bc2: $7c
	halt                                             ; $7bc3: $76
	ld   l, a                                        ; $7bc4: $6f
	sub  e                                           ; $7bc5: $93
	ld   d, h                                        ; $7bc6: $54
	ld   [hl], l                                     ; $7bc7: $75
	ld   h, a                                        ; $7bc8: $67
	ld   a, h                                        ; $7bc9: $7c
	ld   [hl], l                                     ; $7bca: $75
	dec  c                                           ; $7bcb: $0d
	inc  bc                                          ; $7bcc: $03
	add  e                                           ; $7bcd: $83
	dec  b                                           ; $7bce: $05
	dec  c                                           ; $7bcf: $0d
	ld   h, l                                        ; $7bd0: $65
	adc  h                                           ; $7bd1: $8c
	ld   h, a                                        ; $7bd2: $67
	sbc  a                                           ; $7bd3: $9f
	dec  c                                           ; $7bd4: $0d
	nop                                              ; $7bd5: $00
	ld   a, [bc]                                     ; $7bd6: $0a
	inc  e                                           ; $7bd7: $1c
	dec  b                                           ; $7bd8: $05
	ld   [bc], a                                     ; $7bd9: $02
	ld   [bc], a                                     ; $7bda: $02
	ld   bc, $546b                                   ; $7bdb: $01 $6b $54
	ld   e, c                                        ; $7bde: $59
	sbc  [hl]                                        ; $7bdf: $9e
	ld   a, b                                        ; $7be0: $78
	sub  a                                           ; $7be1: $97
	ld   h, l                                        ; $7be2: $65
	sub  c                                           ; $7be3: $91
	ei                                               ; $7be4: $fb
	ld   a, b                                        ; $7be5: $78
	ld   d, d                                        ; $7be6: $52
	ld   a, b                                        ; $7be7: $78
	sbc  a                                           ; $7be8: $9f
	dec  c                                           ; $7be9: $0d
	nop                                              ; $7bea: $00
	ld   a, [bc]                                     ; $7beb: $0a
	rrca                                             ; $7bec: $0f
	nop                                              ; $7bed: $00
	ld   bc, $7501                                   ; $7bee: $01 $01 $75
	ld   a, l                                        ; $7bf1: $7d
	sbc  [hl]                                        ; $7bf2: $9e
	inc  bc                                          ; $7bf3: $03
	add  e                                           ; $7bf4: $83
	dec  b                                           ; $7bf5: $05
	dec  c                                           ; $7bf6: $0d
	ld   h, l                                        ; $7bf7: $65
	adc  h                                           ; $7bf8: $8c
	ld   h, a                                        ; $7bf9: $67
	sbc  a                                           ; $7bfa: $9f
	dec  c                                           ; $7bfb: $0d
	nop                                              ; $7bfc: $00
	ld   a, [bc]                                     ; $7bfd: $0a
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	rrca                                             ; $7c00: $0f
	nop                                              ; $7c01: $00
	ld   bc, $020d                                   ; $7c02: $01 $0d $02
	nop                                              ; $7c05: $00
	ld   [bc], a                                     ; $7c06: $02
	rlca                                             ; $7c07: $07
	adc  e                                           ; $7c08: $8b
	inc  b                                           ; $7c09: $04
	inc  b                                           ; $7c0a: $04
	add  b                                           ; $7c0b: $80
	ld   sp, $ff01                                   ; $7c0c: $31 $01 $ff
	jr   nz, jr_051_7c13                             ; $7c0f: $20 $02

	nop                                              ; $7c11: $00
	inc  bc                                          ; $7c12: $03

jr_051_7c13:
	ld   b, c                                        ; $7c13: $41
	jr   nz, jr_051_7c32                             ; $7c14: $20 $1c

	nop                                              ; $7c16: $00
	rlca                                             ; $7c17: $07
	ld   d, h                                        ; $7c18: $54
	nop                                              ; $7c19: $00
	inc  bc                                          ; $7c1a: $03
	ld   [de], a                                     ; $7c1b: $12
	ld   bc, $2278                                   ; $7c1c: $01 $78 $22
	nop                                              ; $7c1f: $00
	ld   bc, $8d67                                   ; $7c20: $01 $67 $8d
	sbc  d                                           ; $7c23: $9a
	ld   h, e                                        ; $7c24: $63
	and  c                                           ; $7c25: $a1
	sbc  a                                           ; $7c26: $9f
	dec  c                                           ; $7c27: $0d
	ld   e, b                                        ; $7c28: $58
	inc  b                                           ; $7c29: $04
	ld   a, e                                        ; $7c2a: $7b
	sbc  d                                           ; $7c2b: $9a
	ld   h, e                                        ; $7c2c: $63
	adc  h                                           ; $7c2d: $8c
	ld   [hl], l                                     ; $7c2e: $75
	ld   h, a                                        ; $7c2f: $67
	sbc  a                                           ; $7c30: $9f
	dec  c                                           ; $7c31: $0d

jr_051_7c32:
	nop                                              ; $7c32: $00
	ld   a, [bc]                                     ; $7c33: $0a
	inc  e                                           ; $7c34: $1c
	ld   [bc], a                                     ; $7c35: $02
	ld   bc, $0101                                   ; $7c36: $01 $01 $01
	ld   d, b                                        ; $7c39: $50
	sub  a                                           ; $7c3a: $97
	sbc  [hl]                                        ; $7c3b: $9e
	ld   [$6300], sp                                 ; $7c3c: $08 $00 $63
	and  c                                           ; $7c3f: $a1
	sbc  a                                           ; $7c40: $9f
	dec  c                                           ; $7c41: $0d
	ld   [bc], a                                     ; $7c42: $02
	sub  l                                           ; $7c43: $95
	ld   [bc], a                                     ; $7c44: $02
	sub  e                                           ; $7c45: $93
	sbc  b                                           ; $7c46: $98
	ld   h, d                                        ; $7c47: $62
	ld   [bc], a                                     ; $7c48: $02
	sub  h                                           ; $7c49: $94
	dec  b                                           ; $7c4a: $05
	rrca                                             ; $7c4b: $0f
	ld   h, e                                        ; $7c4c: $63
	adc  h                                           ; $7c4d: $8c
	dec  c                                           ; $7c4e: $0d
	nop                                              ; $7c4f: $00
	ld   a, [bc]                                     ; $7c50: $0a
	ld   b, $64                                      ; $7c51: $06 $64
	nop                                              ; $7c53: $00
	inc  e                                           ; $7c54: $1c
	ld   [bc], a                                     ; $7c55: $02
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	ld   bc, $9750                                   ; $7c58: $01 $50 $97
	sbc  [hl]                                        ; $7c5b: $9e
	ld   [$6300], sp                                 ; $7c5c: $08 $00 $63
	and  c                                           ; $7c5f: $a1
	sbc  a                                           ; $7c60: $9f
	dec  c                                           ; $7c61: $0d
	nop                                              ; $7c62: $00
	ld   a, [bc]                                     ; $7c63: $0a
	inc  e                                           ; $7c64: $1c
	ld   [bc], a                                     ; $7c65: $02
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	ld   bc, $546b                                   ; $7c68: $01 $6b $54
	ld   l, e                                        ; $7c6b: $6b
	ld   d, h                                        ; $7c6c: $54
	sbc  [hl]                                        ; $7c6d: $9e
	ld   [$6300], sp                                 ; $7c6e: $08 $00 $63
	and  c                                           ; $7c71: $a1
	ld   a, l                                        ; $7c72: $7d
	dec  c                                           ; $7c73: $0d
	sbc  l                                           ; $7c74: $9d
	ld   l, l                                        ; $7c75: $6d
	ld   e, l                                        ; $7c76: $5d
	ld   h, l                                        ; $7c77: $65
	ld   a, h                                        ; $7c78: $7c
	inc  bc                                          ; $7c79: $03
	ld   b, h                                        ; $7c7a: $44
	ld   [bc], a                                     ; $7c7b: $02
	rra                                              ; $7c7c: $1f
	inc  bc                                          ; $7c7d: $03
	xor  h                                           ; $7c7e: $ac
	dec  c                                           ; $7c7f: $0d
	ld   h, d                                        ; $7c80: $62
	inc  bc                                          ; $7c81: $03
	push bc                                          ; $7c82: $c5
	ld   h, [hl]                                     ; $7c83: $66
	ld   [hl], l                                     ; $7c84: $75
	ld   h, a                                        ; $7c85: $67
	sbc  l                                           ; $7c86: $9d
	sub  [hl]                                        ; $7c87: $96
	ld   a, e                                        ; $7c88: $7b
	ld   sp, hl                                      ; $7c89: $f9
	dec  c                                           ; $7c8a: $0d
	nop                                              ; $7c8b: $00
	ld   a, [bc]                                     ; $7c8c: $0a
	add  hl, de                                      ; $7c8d: $19
	dec  b                                           ; $7c8e: $05
	inc  bc                                          ; $7c8f: $03
	cp   b                                           ; $7c90: $b8
	push af                                          ; $7c91: $f5
	ret  z                                           ; $7c92: $c8

	xor  $eb                                         ; $7c93: $ee $eb
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	ld   [bc], a                                     ; $7c97: $02
	dec  hl                                          ; $7c98: $2b
	ld   a, l                                        ; $7c99: $7d
	pop  bc                                          ; $7c9a: $c1
	and  l                                           ; $7c9b: $a5
	and  $00                                         ; $7c9c: $e6 $00
	ld   bc, $2b02                                   ; $7c9e: $01 $02 $2b
	sub  h                                           ; $7ca1: $94
	ld   d, [hl]                                     ; $7ca2: $56
	ld   a, c                                        ; $7ca3: $79
	nop                                              ; $7ca4: $00
	ld   [bc], a                                     ; $7ca5: $02
	rlca                                             ; $7ca6: $07
	sbc  b                                           ; $7ca7: $98
	ld   [bc], a                                     ; $7ca8: $02
	ld   [bc], a                                     ; $7ca9: $02
	inc  bc                                          ; $7caa: $03
	ld   bc, $2000                                   ; $7cab: $01 $00 $20
	nop                                              ; $7cae: $00
	rlca                                             ; $7caf: $07
	call nz, $0200                                   ; $7cb0: $c4 $00 $02
	inc  bc                                          ; $7cb3: $03
	ld   bc, $2001                                   ; $7cb4: $01 $01 $20
	nop                                              ; $7cb7: $00
	rlca                                             ; $7cb8: $07
	ld   l, e                                        ; $7cb9: $6b
	ld   bc, $0302                                   ; $7cba: $01 $02 $03
	ld   bc, $2002                                   ; $7cbd: $01 $02 $20
	nop                                              ; $7cc0: $00
	ld   b, $f3                                      ; $7cc1: $06 $f3
	ld   bc, $000f                                   ; $7cc3: $01 $0f $00
	ld   bc, $0101                                   ; $7cc6: $01 $01 $01
	rlca                                             ; $7cc9: $07
	ld   [bc], a                                     ; $7cca: $02
	dec  hl                                          ; $7ccb: $2b
	ld   a, l                                        ; $7ccc: $7d
	pop  bc                                          ; $7ccd: $c1
	and  l                                           ; $7cce: $a5
	and  $01                                         ; $7ccf: $e6 $01
	ld   [$6775], sp                                 ; $7cd1: $08 $75 $67
	sub  [hl]                                        ; $7cd4: $96
	ld   a, e                                        ; $7cd5: $7b
	sbc  a                                           ; $7cd6: $9f
	dec  c                                           ; $7cd7: $0d
	nop                                              ; $7cd8: $00
	ld   a, [bc]                                     ; $7cd9: $0a
	inc  e                                           ; $7cda: $1c
	ld   [bc], a                                     ; $7cdb: $02
	ld   bc, $0101                                   ; $7cdc: $01 $01 $01
	ld   d, [hl]                                     ; $7cdf: $56
	ld   d, [hl]                                     ; $7ce0: $56
	sbc  [hl]                                        ; $7ce1: $9e
	ld   l, e                                        ; $7ce2: $6b
	ld   d, h                                        ; $7ce3: $54
	ld   [hl], l                                     ; $7ce4: $75
	ld   h, a                                        ; $7ce5: $67
	sbc  l                                           ; $7ce6: $9d
	sbc  a                                           ; $7ce7: $9f
	dec  c                                           ; $7ce8: $0d
	sbc  l                                           ; $7ce9: $9d
	ld   l, l                                        ; $7cea: $6d
	ld   e, l                                        ; $7ceb: $5d
	ld   h, l                                        ; $7cec: $65
	ld   e, d                                        ; $7ced: $5a
	ld   [bc], a                                     ; $7cee: $02
	rra                                              ; $7cef: $1f
	ld   h, [hl]                                     ; $7cf0: $66
	ld   l, l                                        ; $7cf1: $6d
	ld   bc, $5807                                   ; $7cf2: $01 $07 $58
	inc  b                                           ; $7cf5: $04
	ret                                              ; $7cf6: $c9


	ld   bc, $7908                                   ; $7cf7: $01 $08 $79
	dec  c                                           ; $7cfa: $0d
	ld   e, b                                        ; $7cfb: $58
	ld   [bc], a                                     ; $7cfc: $02
	add  c                                           ; $7cfd: $81
	inc  bc                                          ; $7cfe: $03
	sbc  b                                           ; $7cff: $98
	ld   a, l                                        ; $7d00: $7d
	dec  b                                           ; $7d01: $05
	ld   h, e                                        ; $7d02: $63
	ld   h, l                                        ; $7d03: $65
	ld   [hl], h                                     ; $7d04: $74
	rst  $38                                         ; $7d05: $ff
	rst  $38                                         ; $7d06: $ff
	dec  c                                           ; $7d07: $0d
	nop                                              ; $7d08: $00
	ld   a, [bc]                                     ; $7d09: $0a
	ld   bc, $9a6b                                   ; $7d0a: $01 $6b $9a
	ld   a, l                                        ; $7d0d: $7d
	ld   l, e                                        ; $7d0e: $6b
	sbc  d                                           ; $7d0f: $9a
	ld   a, l                                        ; $7d10: $7d
	dec  c                                           ; $7d11: $0d
	ld   l, l                                        ; $7d12: $6d
	ld   d, d                                        ; $7d13: $52
	add  [hl]                                        ; $7d14: $86
	and  c                                           ; $7d15: $a1
	ld   [bc], a                                     ; $7d16: $02
	scf                                              ; $7d17: $37
	inc  b                                           ; $7d18: $04
	dec  de                                          ; $7d19: $1b
	inc  b                                           ; $7d1a: $04
	jr   nz, jr_051_7d95                             ; $7d1b: $20 $78

	inc  b                                           ; $7d1d: $04
	adc  [hl]                                        ; $7d1e: $8e
	inc  b                                           ; $7d1f: $04
	inc  c                                           ; $7d20: $0c
	ld   a, c                                        ; $7d21: $79
	dec  c                                           ; $7d22: $0d
	ld   a, b                                        ; $7d23: $78
	ld   [hl], c                                     ; $7d24: $71
	ld   l, l                                        ; $7d25: $6d
	sub  b                                           ; $7d26: $90
	ld   a, h                                        ; $7d27: $7c
	ld   [hl], l                                     ; $7d28: $75
	ld   h, l                                        ; $7d29: $65
	ld   l, l                                        ; $7d2a: $6d
	sbc  l                                           ; $7d2b: $9d
	sbc  a                                           ; $7d2c: $9f
	dec  c                                           ; $7d2d: $0d
	nop                                              ; $7d2e: $00
	ld   a, [bc]                                     ; $7d2f: $0a
	dec  e                                           ; $7d30: $1d
	ld   b, b                                        ; $7d31: $40
	ld   [de], a                                     ; $7d32: $12
	inc  bc                                          ; $7d33: $03
	ld   [de], a                                     ; $7d34: $12
	ld   bc, $2802                                   ; $7d35: $01 $02 $28
	nop                                              ; $7d38: $00
	ld   bc, $5d96                                   ; $7d39: $01 $96 $5d
	ld   h, d                                        ; $7d3c: $62
	inc  bc                                          ; $7d3d: $03
	push bc                                          ; $7d3e: $c5
	ld   h, [hl]                                     ; $7d3f: $66
	ld   [hl], l                                     ; $7d40: $75
	ld   h, l                                        ; $7d41: $65
	ld   l, l                                        ; $7d42: $6d
	sbc  l                                           ; $7d43: $9d
	ld   a, e                                        ; $7d44: $7b
	sbc  a                                           ; $7d45: $9f
	dec  c                                           ; $7d46: $0d
	ld   [hl], l                                     ; $7d47: $75
	ld   a, l                                        ; $7d48: $7d
	sbc  [hl]                                        ; $7d49: $9e
	sbc  l                                           ; $7d4a: $9d
	ld   l, l                                        ; $7d4b: $6d
	ld   e, l                                        ; $7d4c: $5d
	ld   h, l                                        ; $7d4d: $65
	dec  c                                           ; $7d4e: $0d
	ld   l, e                                        ; $7d4f: $6b
	sbc  e                                           ; $7d50: $9b
	ld   l, e                                        ; $7d51: $6b
	sbc  e                                           ; $7d52: $9b
	inc  bc                                          ; $7d53: $03
	and  a                                           ; $7d54: $a7
	adc  l                                           ; $7d55: $8d
	adc  h                                           ; $7d56: $8c
	ld   h, a                                        ; $7d57: $67
	sbc  l                                           ; $7d58: $9d
	sbc  a                                           ; $7d59: $9f
	inc  bc                                          ; $7d5a: $03
	add  e                                           ; $7d5b: $83
	dec  b                                           ; $7d5c: $05
	dec  c                                           ; $7d5d: $0d
	sbc  a                                           ; $7d5e: $9f
	dec  c                                           ; $7d5f: $0d
	nop                                              ; $7d60: $00
	ld   a, [bc]                                     ; $7d61: $0a
	dec  c                                           ; $7d62: $0d
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	rrca                                             ; $7d65: $0f
	nop                                              ; $7d66: $00
	ld   bc, $1e09                                   ; $7d67: $01 $09 $1e
	nop                                              ; $7d6a: $00
	rrca                                             ; $7d6b: $0f
	nop                                              ; $7d6c: $00
	ld   bc, $0101                                   ; $7d6d: $01 $01 $01
	rlca                                             ; $7d70: $07
	ld   [bc], a                                     ; $7d71: $02
	dec  hl                                          ; $7d72: $2b
	sub  h                                           ; $7d73: $94
	ld   d, [hl]                                     ; $7d74: $56
	ld   a, c                                        ; $7d75: $79
	ld   bc, $7508                                   ; $7d76: $01 $08 $75
	ld   h, a                                        ; $7d79: $67
	sub  [hl]                                        ; $7d7a: $96
	ld   a, e                                        ; $7d7b: $7b
	sbc  a                                           ; $7d7c: $9f
	dec  c                                           ; $7d7d: $0d
	nop                                              ; $7d7e: $00
	ld   a, [bc]                                     ; $7d7f: $0a
	inc  e                                           ; $7d80: $1c
	ld   [bc], a                                     ; $7d81: $02
	ld   [bc], a                                     ; $7d82: $02
	ld   [bc], a                                     ; $7d83: $02
	ld   bc, $2b02                                   ; $7d84: $01 $02 $2b
	sub  h                                           ; $7d87: $94
	ld   d, [hl]                                     ; $7d88: $56
	ld   a, c                                        ; $7d89: $79
	ld   a, h                                        ; $7d8a: $7c
	inc  bc                                          ; $7d8b: $03
	ld   b, h                                        ; $7d8c: $44
	ld   [bc], a                                     ; $7d8d: $02
	rra                                              ; $7d8e: $1f
	ld   a, l                                        ; $7d8f: $7d
	dec  c                                           ; $7d90: $0d
	ld   h, e                                        ; $7d91: $63
	ld   e, l                                        ; $7d92: $5d
	sub  a                                           ; $7d93: $97
	ld   h, e                                        ; $7d94: $63

jr_051_7d95:
	and  c                                           ; $7d95: $a1
	ld   [hl], l                                     ; $7d96: $75
	ld   h, a                                        ; $7d97: $67
	sbc  l                                           ; $7d98: $9d
	ld   a, [$8c0d]                                  ; $7d99: $fa $0d $8c
	ld   [hl], c                                     ; $7d9c: $71
	ld   l, l                                        ; $7d9d: $6d
	ld   e, l                                        ; $7d9e: $5d
	sub  b                                           ; $7d9f: $90
	ei                                               ; $7da0: $fb
	ld   a, [$0dfa]                                  ; $7da1: $fa $fa $0d
	nop                                              ; $7da4: $00
	ld   a, [bc]                                     ; $7da5: $0a
	inc  e                                           ; $7da6: $1c
	ld   [bc], a                                     ; $7da7: $02
	rlca                                             ; $7da8: $07
	rlca                                             ; $7da9: $07
	dec  e                                           ; $7daa: $1d
	ld   b, b                                        ; $7dab: $40
	ld   [de], a                                     ; $7dac: $12
	inc  bc                                          ; $7dad: $03
	ld   [de], a                                     ; $7dae: $12
	ld   bc, $2903                                   ; $7daf: $01 $03 $29
	nop                                              ; $7db2: $00
	ld   bc, $a178                                   ; $7db3: $01 $78 $a1
	ld   l, [hl]                                     ; $7db6: $6e
	ld   e, c                                        ; $7db7: $59
	sbc  l                                           ; $7db8: $9d
	ld   l, l                                        ; $7db9: $6d
	ld   e, l                                        ; $7dba: $5d
	ld   h, l                                        ; $7dbb: $65
	dec  c                                           ; $7dbc: $0d
	nop                                              ; $7dbd: $00
	dec  b                                           ; $7dbe: $05
	ld   b, b                                        ; $7dbf: $40
	ld   c, c                                        ; $7dc0: $49
	ld   [bc], a                                     ; $7dc1: $02
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	ld   bc, $a102                                   ; $7dc4: $01 $02 $a1
	inc  b                                           ; $7dc7: $04
	sbc  [hl]                                        ; $7dc8: $9e
	ld   e, d                                        ; $7dc9: $5a
	ld   h, a                                        ; $7dca: $67
	ld   e, [hl]                                     ; $7dcb: $5e
	sbc  d                                           ; $7dcc: $9a
	adc  h                                           ; $7dcd: $8c
	ld   l, c                                        ; $7dce: $69
	and  c                                           ; $7dcf: $a1
	ld   a, h                                        ; $7dd0: $7c
	ld   [hl], l                                     ; $7dd1: $75
	dec  c                                           ; $7dd2: $0d
	nop                                              ; $7dd3: $00
	dec  b                                           ; $7dd4: $05
	ld   b, b                                        ; $7dd5: $40
	ld   c, a                                        ; $7dd6: $4f
	ld   bc, $0002                                   ; $7dd7: $01 $02 $00
	ld   bc, $9504                                   ; $7dda: $01 $04 $95
	ld   [bc], a                                     ; $7ddd: $02
	ld   hl, $9086                                   ; $7dde: $21 $86 $90
	ld   [hl], a                                     ; $7de1: $77
	sbc  b                                           ; $7de2: $98
	adc  h                                           ; $7de3: $8c
	ld   h, a                                        ; $7de4: $67
	sbc  l                                           ; $7de5: $9d
	sbc  a                                           ; $7de6: $9f
	dec  c                                           ; $7de7: $0d
	nop                                              ; $7de8: $00
	ld   a, [bc]                                     ; $7de9: $0a
	dec  c                                           ; $7dea: $0d
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	rrca                                             ; $7ded: $0f
	nop                                              ; $7dee: $00
	ld   bc, $1e09                                   ; $7def: $01 $09 $1e
	nop                                              ; $7df2: $00
	inc  e                                           ; $7df3: $1c
	ld   [bc], a                                     ; $7df4: $02
	inc  bc                                          ; $7df5: $03
	inc  bc                                          ; $7df6: $03
	ld   bc, $0362                                   ; $7df7: $01 $62 $03
	push bc                                          ; $7dfa: $c5
	ld   h, [hl]                                     ; $7dfb: $66
	ld   a, b                                        ; $7dfc: $78
	ld   d, d                                        ; $7dfd: $52
	ld   a, h                                        ; $7dfe: $7c
	ld   [hl], l                                     ; $7dff: $75
	ld   h, a                                        ; $7e00: $67
	ld   e, c                                        ; $7e01: $59
	ld   sp, hl                                      ; $7e02: $f9
	dec  c                                           ; $7e03: $0d
	ld   h, c                                        ; $7e04: $61
	ld   a, h                                        ; $7e05: $7c
	ld   [bc], a                                     ; $7e06: $02
	sbc  b                                           ; $7e07: $98
	inc  bc                                          ; $7e08: $03
	nop                                              ; $7e09: $00
	ld   a, h                                        ; $7e0a: $7c
	ret                                              ; $7e0b: $c9


	call nz, $bad8                                   ; $7e0c: $c4 $d8 $ba
	ret  nz                                          ; $7e0f: $c0

	and  e                                           ; $7e10: $a3
	ld   a, h                                        ; $7e11: $7c
	dec  c                                           ; $7e12: $0d
	inc  bc                                          ; $7e13: $03
	ld   b, h                                        ; $7e14: $44
	ld   [bc], a                                     ; $7e15: $02
	rra                                              ; $7e16: $1f
	inc  bc                                          ; $7e17: $03
	xor  h                                           ; $7e18: $ac
	and  b                                           ; $7e19: $a0
	ld   h, l                                        ; $7e1a: $65
	sub  a                                           ; $7e1b: $97
	ld   a, b                                        ; $7e1c: $78
	ld   d, d                                        ; $7e1d: $52
	halt                                             ; $7e1e: $76
	ld   sp, hl                                      ; $7e1f: $f9
	dec  c                                           ; $7e20: $0d
	nop                                              ; $7e21: $00
	ld   a, [bc]                                     ; $7e22: $0a
	inc  e                                           ; $7e23: $1c
	ld   [bc], a                                     ; $7e24: $02
	ld   [bc], a                                     ; $7e25: $02
	ld   [bc], a                                     ; $7e26: $02
	dec  e                                           ; $7e27: $1d
	ld   b, b                                        ; $7e28: $40
	ld   [de], a                                     ; $7e29: $12
	inc  bc                                          ; $7e2a: $03
	ld   [de], a                                     ; $7e2b: $12
	ld   bc, $2902                                   ; $7e2c: $01 $02 $29
	nop                                              ; $7e2f: $00
	ld   bc, $7850                                   ; $7e30: $01 $50 $78
	ld   l, l                                        ; $7e33: $6d
	sub  b                                           ; $7e34: $90
	sbc  [hl]                                        ; $7e35: $9e
	ld   [bc], a                                     ; $7e36: $02
	sbc  b                                           ; $7e37: $98
	inc  bc                                          ; $7e38: $03
	nop                                              ; $7e39: $00
	ld   a, c                                        ; $7e3a: $79
	ld   d, d                                        ; $7e3b: $52
	sbc  c                                           ; $7e3c: $99
	ld   a, h                                        ; $7e3d: $7c
	dec  c                                           ; $7e3e: $0d
	nop                                              ; $7e3f: $00
	dec  b                                           ; $7e40: $05
	ld   b, b                                        ; $7e41: $40
	ld   c, c                                        ; $7e42: $49
	ld   [bc], a                                     ; $7e43: $02
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	ld   bc, $6575                                   ; $7e46: $01 $75 $65
	ld   l, l                                        ; $7e49: $6d
	sub  a                                           ; $7e4a: $97
	sbc  [hl]                                        ; $7e4b: $9e
	inc  bc                                          ; $7e4c: $03
	ld   l, h                                        ; $7e4d: $6c
	ld   h, l                                        ; $7e4e: $65
	ld   e, l                                        ; $7e4f: $5d
	sub  a                                           ; $7e50: $97
	ld   d, d                                        ; $7e51: $52
	dec  c                                           ; $7e52: $0d
	nop                                              ; $7e53: $00
	dec  b                                           ; $7e54: $05
	ld   b, b                                        ; $7e55: $40
	ld   c, a                                        ; $7e56: $4f
	ld   bc, $0002                                   ; $7e57: $01 $02 $00
	ld   bc, $ae04                                   ; $7e5a: $01 $04 $ae
	ld   [bc], a                                     ; $7e5d: $02
	call nc, Call_051_6378                           ; $7e5e: $d4 $78 $63
	ld   d, d                                        ; $7e61: $52
	ld   a, [$000d]                                  ; $7e62: $fa $0d $00
	ld   a, [bc]                                     ; $7e65: $0a
	ld   bc, $6d9d                                   ; $7e66: $01 $9d $6d
	ld   e, l                                        ; $7e69: $5d
	ld   h, l                                        ; $7e6a: $65
	sbc  [hl]                                        ; $7e6b: $9e
	sub  b                                           ; $7e6c: $90
	ld   d, h                                        ; $7e6d: $54
	inc  b                                           ; $7e6e: $04
	ld   b, d                                        ; $7e6f: $42
	adc  h                                           ; $7e70: $8c
	ld   h, a                                        ; $7e71: $67
	sbc  l                                           ; $7e72: $9d
	sbc  a                                           ; $7e73: $9f
	dec  c                                           ; $7e74: $0d
	ld   [$6300], sp                                 ; $7e75: $08 $00 $63
	and  c                                           ; $7e78: $a1
	sub  b                                           ; $7e79: $90
	sbc  [hl]                                        ; $7e7a: $9e
	ld   h, e                                        ; $7e7b: $63
	ld   [hl], c                                     ; $7e7c: $71
	ld   h, e                                        ; $7e7d: $63
	halt                                             ; $7e7e: $76
	dec  c                                           ; $7e7f: $0d
	ld   [bc], a                                     ; $7e80: $02
	sub  l                                           ; $7e81: $95
	ld   [bc], a                                     ; $7e82: $02
	sub  e                                           ; $7e83: $93
	sbc  b                                           ; $7e84: $98
	ld   h, a                                        ; $7e85: $67
	adc  h                                           ; $7e86: $8c
	ld   l, c                                        ; $7e87: $69
	ld   a, b                                        ; $7e88: $78
	ld   h, e                                        ; $7e89: $63
	ld   d, d                                        ; $7e8a: $52
	ld   a, [$000d]                                  ; $7e8b: $fa $0d $00
	ld   a, [bc]                                     ; $7e8e: $0a
	dec  c                                           ; $7e8f: $0d
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	rrca                                             ; $7e92: $0f
	nop                                              ; $7e93: $00
	ld   bc, $1e09                                   ; $7e94: $01 $09 $1e
	nop                                              ; $7e97: $00
	rrca                                             ; $7e98: $0f
	nop                                              ; $7e99: $00
	ld   bc, $0101                                   ; $7e9a: $01 $01 $01
	rlca                                             ; $7e9d: $07
	cp   b                                           ; $7e9e: $b8
	push af                                          ; $7e9f: $f5
	ret  z                                           ; $7ea0: $c8

	xor  $eb                                         ; $7ea1: $ee $eb
	ld   bc, $7508                                   ; $7ea3: $01 $08 $75
	ld   h, a                                        ; $7ea6: $67
	sub  [hl]                                        ; $7ea7: $96
	ld   a, e                                        ; $7ea8: $7b
	sbc  a                                           ; $7ea9: $9f
	dec  c                                           ; $7eaa: $0d
	nop                                              ; $7eab: $00
	ld   a, [bc]                                     ; $7eac: $0a
	inc  e                                           ; $7ead: $1c
	ld   [bc], a                                     ; $7eae: $02
	rlca                                             ; $7eaf: $07
	rlca                                             ; $7eb0: $07
	ld   bc, $f5b8                                   ; $7eb1: $01 $b8 $f5
	ret  z                                           ; $7eb4: $c8

	xor  $eb                                         ; $7eb5: $ee $eb
	ld   sp, hl                                      ; $7eb7: $f9
	dec  c                                           ; $7eb8: $0d
	ld   l, e                                        ; $7eb9: $6b
	ld   a, h                                        ; $7eba: $7c
	inc  bc                                          ; $7ebb: $03
	ld   l, a                                        ; $7ebc: $6f
	sbc  [hl]                                        ; $7ebd: $9e
	sbc  l                                           ; $7ebe: $9d
	ld   l, l                                        ; $7ebf: $6d
	ld   e, l                                        ; $7ec0: $5d
	ld   h, l                                        ; $7ec1: $65
	ld   a, l                                        ; $7ec2: $7d
	dec  c                                           ; $7ec3: $0d
	ld   d, d                                        ; $7ec4: $52
	ld   h, [hl]                                     ; $7ec5: $66
	sbc  l                                           ; $7ec6: $9d
	sbc  c                                           ; $7ec7: $99
	dec  b                                           ; $7ec8: $05
	ld   b, d                                        ; $7ec9: $42
	ld   h, e                                        ; $7eca: $63
	and  c                                           ; $7ecb: $a1
	inc  b                                           ; $7ecc: $04
	db   $ec                                         ; $7ecd: $ec
	sbc  a                                           ; $7ece: $9f
	dec  c                                           ; $7ecf: $0d
	nop                                              ; $7ed0: $00
	ld   a, [bc]                                     ; $7ed1: $0a
	ld   bc, $7c50                                   ; $7ed2: $01 $50 $7c
	ld   h, e                                        ; $7ed5: $63
	ld   e, l                                        ; $7ed6: $5d
	sub  a                                           ; $7ed7: $97
	ld   h, e                                        ; $7ed8: $63
	and  c                                           ; $7ed9: $a1
	ld   e, d                                        ; $7eda: $5a
	cp   b                                           ; $7edb: $b8
	push af                                          ; $7edc: $f5
	ret  z                                           ; $7edd: $c8

	xor  $eb                                         ; $7ede: $ee $eb
	dec  c                                           ; $7ee0: $0d
	ld   l, [hl]                                     ; $7ee1: $6e
	ld   [hl], c                                     ; $7ee2: $71
	ld   l, l                                        ; $7ee3: $6d
	and  c                                           ; $7ee4: $a1
	ld   [hl], l                                     ; $7ee5: $75
	ld   h, a                                        ; $7ee6: $67
	ld   a, h                                        ; $7ee7: $7c
	sub  [hl]                                        ; $7ee8: $96
	sbc  a                                           ; $7ee9: $9f
	dec  c                                           ; $7eea: $0d
	ld   h, c                                        ; $7eeb: $61
	ld   a, h                                        ; $7eec: $7c
	inc  b                                           ; $7eed: $04
	xor  e                                           ; $7eee: $ab
	inc  b                                           ; $7eef: $04
	db   $ec                                         ; $7ef0: $ec
	sbc  [hl]                                        ; $7ef1: $9e
	ld   [hl], a                                     ; $7ef2: $77
	ld   d, h                                        ; $7ef3: $54
	dec  b                                           ; $7ef4: $05
	pop  de                                          ; $7ef5: $d1
	sbc  l                                           ; $7ef6: $9d
	sbc  d                                           ; $7ef7: $9a
	ld   [hl], h                                     ; $7ef8: $74
	ld   sp, hl                                      ; $7ef9: $f9
	dec  c                                           ; $7efa: $0d
	nop                                              ; $7efb: $00
	ld   a, [bc]                                     ; $7efc: $0a
	add  hl, de                                      ; $7efd: $19
	dec  b                                           ; $7efe: $05
	ld   [bc], a                                     ; $7eff: $02
	push de                                          ; $7f00: $d5
	call nz, $ecc0                                   ; $7f01: $c4 $c0 $ec
	ld   [hl], l                                     ; $7f04: $75
	ld   h, a                                        ; $7f05: $67
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	cp   b                                           ; $7f08: $b8
	push af                                          ; $7f09: $f5
	ret  z                                           ; $7f0a: $c8

	xor  $eb                                         ; $7f0b: $ee $eb
	ld   a, l                                        ; $7f0d: $7d
	ld   h, a                                        ; $7f0e: $67
	adc  l                                           ; $7f0f: $8d
	sbc  d                                           ; $7f10: $9a
	ld   h, e                                        ; $7f11: $63
	and  c                                           ; $7f12: $a1
	nop                                              ; $7f13: $00
	ld   bc, $2a07                                   ; $7f14: $01 $07 $2a
	inc  bc                                          ; $7f17: $03
	ld   [bc], a                                     ; $7f18: $02
	inc  bc                                          ; $7f19: $03
	ld   bc, $2000                                   ; $7f1a: $01 $00 $20
	nop                                              ; $7f1d: $00
	rlca                                             ; $7f1e: $07
	or   b                                           ; $7f1f: $b0
	inc  bc                                          ; $7f20: $03
	ld   [bc], a                                     ; $7f21: $02
	inc  bc                                          ; $7f22: $03
	ld   bc, $2001                                   ; $7f23: $01 $01 $20
	nop                                              ; $7f26: $00
	ld   b, $37                                      ; $7f27: $06 $37
	inc  b                                           ; $7f29: $04
	rrca                                             ; $7f2a: $0f
	nop                                              ; $7f2b: $00
	ld   bc, $5201                                   ; $7f2c: $01 $01 $52
	ld   h, [hl]                                     ; $7f2f: $66
	sbc  l                                           ; $7f30: $9d
	sbc  c                                           ; $7f31: $99
	dec  b                                           ; $7f32: $05
	ld   b, d                                        ; $7f33: $42
	ld   h, e                                        ; $7f34: $63
	and  c                                           ; $7f35: $a1
	ld   sp, hl                                      ; $7f36: $f9
	dec  c                                           ; $7f37: $0d
	ld   h, a                                        ; $7f38: $67
	adc  l                                           ; $7f39: $8d
	sbc  d                                           ; $7f3a: $9a
	ld   h, e                                        ; $7f3b: $63
	and  c                                           ; $7f3c: $a1
	ld   a, c                                        ; $7f3d: $79
	push de                                          ; $7f3e: $d5
	call nz, $ecc0                                   ; $7f3f: $c4 $c0 $ec
	ld   h, [hl]                                     ; $7f42: $66
	sub  c                                           ; $7f43: $91
	dec  c                                           ; $7f44: $0d
	ld   a, b                                        ; $7f45: $78
	ld   d, d                                        ; $7f46: $52
	ld   [hl], l                                     ; $7f47: $75
	ld   h, a                                        ; $7f48: $67
	ld   e, c                                        ; $7f49: $59
	sbc  a                                           ; $7f4a: $9f
	dec  c                                           ; $7f4b: $0d
	nop                                              ; $7f4c: $00
	ld   a, [bc]                                     ; $7f4d: $0a
	inc  e                                           ; $7f4e: $1c
	ld   [bc], a                                     ; $7f4f: $02
	ld   [bc], a                                     ; $7f50: $02
	ld   [bc], a                                     ; $7f51: $02
	dec  e                                           ; $7f52: $1d
	ld   b, b                                        ; $7f53: $40
	ld   [de], a                                     ; $7f54: $12
	inc  bc                                          ; $7f55: $03
	ld   [de], a                                     ; $7f56: $12
	ld   bc, $2903                                   ; $7f57: $01 $03 $29
	nop                                              ; $7f5a: $00
	ld   bc, $c4d5                                   ; $7f5b: $01 $d5 $c4
	ret  nz                                          ; $7f5e: $c0

	db   $ec                                         ; $7f5f: $ec
	ld   a, [$000d]                                  ; $7f60: $fa $0d $00
	dec  b                                           ; $7f63: $05
	ld   b, b                                        ; $7f64: $40
	ld   c, c                                        ; $7f65: $49
	ld   [bc], a                                     ; $7f66: $02
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	ld   bc, $9a6b                                   ; $7f69: $01 $6b $9a
	ld   a, l                                        ; $7f6c: $7d
	ld   [hl], a                                     ; $7f6d: $77
	ei                                               ; $7f6e: $fb
	ld   d, d                                        ; $7f6f: $52
	ld   d, h                                        ; $7f70: $54
	ld   h, c                                        ; $7f71: $61
	halt                                             ; $7f72: $76
	ld   [hl], l                                     ; $7f73: $75
	ld   h, a                                        ; $7f74: $67
	ld   a, h                                        ; $7f75: $7c
	ld   a, [$000d]                                  ; $7f76: $fa $0d $00
	dec  b                                           ; $7f79: $05
	ld   b, b                                        ; $7f7a: $40
	ld   c, a                                        ; $7f7b: $4f
	ld   bc, $0002                                   ; $7f7c: $01 $02 $00
	ld   bc, $fb90                                   ; $7f7f: $01 $90 $fb
	ld   e, a                                        ; $7f82: $5f
	ld   [hl], c                                     ; $7f83: $71
	ld   h, c                                        ; $7f84: $61
	ld   d, h                                        ; $7f85: $54
	ld   [hl], l                                     ; $7f86: $75
	ld   h, a                                        ; $7f87: $67
	ld   a, [$000d]                                  ; $7f88: $fa $0d $00
	ld   a, [bc]                                     ; $7f8b: $0a
	ld   bc, $6d9d                                   ; $7f8c: $01 $9d $6d
	ld   e, l                                        ; $7f8f: $5d
	ld   h, l                                        ; $7f90: $65
	ld   h, c                                        ; $7f91: $61
	sbc  d                                           ; $7f92: $9a
	ld   [hl], l                                     ; $7f93: $75
	sbc  [hl]                                        ; $7f94: $9e
	dec  c                                           ; $7f95: $0d
	inc  bc                                          ; $7f96: $03
	add  e                                           ; $7f97: $83
	dec  b                                           ; $7f98: $05
	dec  c                                           ; $7f99: $0d
	ld   h, e                                        ; $7f9a: $63
	ld   l, c                                        ; $7f9b: $69
	ld   [hl], h                                     ; $7f9c: $74
	ld   d, d                                        ; $7f9d: $52
	ld   l, l                                        ; $7f9e: $6d
	ld   l, [hl]                                     ; $7f9f: $6e
	ld   e, e                                        ; $7fa0: $5b
	adc  h                                           ; $7fa1: $8c
	ld   h, a                                        ; $7fa2: $67
	ld   a, [$000d]                                  ; $7fa3: $fa $0d $00
	ld   a, [bc]                                     ; $7fa6: $0a
	dec  c                                           ; $7fa7: $0d
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	rrca                                             ; $7faa: $0f
	nop                                              ; $7fab: $00
	ld   bc, $1e09                                   ; $7fac: $01 $09 $1e
	nop                                              ; $7faf: $00
	rrca                                             ; $7fb0: $0f
	nop                                              ; $7fb1: $00
	ld   bc, $9201                                   ; $7fb2: $01 $01 $92
	ld   [hl], c                                     ; $7fb5: $71
	ld   a, a                                        ; $7fb6: $7f
	sbc  b                                           ; $7fb7: $98
	sbc  [hl]                                        ; $7fb8: $9e
	cp   b                                           ; $7fb9: $b8
	push af                                          ; $7fba: $f5
	ret  z                                           ; $7fbb: $c8

	xor  $eb                                         ; $7fbc: $ee $eb
	ld   a, l                                        ; $7fbe: $7d
	dec  c                                           ; $7fbf: $0d
	ld   h, a                                        ; $7fc0: $67
	adc  l                                           ; $7fc1: $8d
	sbc  d                                           ; $7fc2: $9a
	ld   h, e                                        ; $7fc3: $63
	and  c                                           ; $7fc4: $a1
	ld   l, [hl]                                     ; $7fc5: $6e
	halt                                             ; $7fc6: $76
	dec  b                                           ; $7fc7: $05
	pop  de                                          ; $7fc8: $d1
	ld   d, d                                        ; $7fc9: $52
	adc  h                                           ; $7fca: $8c
	ld   h, a                                        ; $7fcb: $67
	sub  [hl]                                        ; $7fcc: $96
	sbc  a                                           ; $7fcd: $9f
	dec  c                                           ; $7fce: $0d
	nop                                              ; $7fcf: $00
	ld   a, [bc]                                     ; $7fd0: $0a
	inc  e                                           ; $7fd1: $1c
	ld   [bc], a                                     ; $7fd2: $02
	ld   bc, $1d01                                   ; $7fd3: $01 $01 $1d
	ld   b, b                                        ; $7fd6: $40
	ld   [de], a                                     ; $7fd7: $12
	inc  bc                                          ; $7fd8: $03
	ld   [de], a                                     ; $7fd9: $12
	ld   bc, $2802                                   ; $7fda: $01 $02 $28
	nop                                              ; $7fdd: $00
	ld   bc, $7192                                   ; $7fde: $01 $92 $71
	ld   a, a                                        ; $7fe1: $7f
	sbc  b                                           ; $7fe2: $98
	ld   l, e                                        ; $7fe3: $6b
	ld   d, h                                        ; $7fe4: $54
	dec  b                                           ; $7fe5: $05
	pop  de                                          ; $7fe6: $d1
	ld   d, d                                        ; $7fe7: $52
	adc  h                                           ; $7fe8: $8c
	ld   h, a                                        ; $7fe9: $67
	ld   [hl], l                                     ; $7fea: $75
	ld   h, l                                        ; $7feb: $65
	sub  l                                           ; $7fec: $95
	sbc  a                                           ; $7fed: $9f
	dec  c                                           ; $7fee: $0d
	ld   d, b                                        ; $7fef: $50
	and  c                                           ; $7ff0: $a1
	ld   a, b                                        ; $7ff1: $78
	sbc  [hl]                                        ; $7ff2: $9e
	inc  b                                           ; $7ff3: $04
	ld   hl, $bc03                                   ; $7ff4: $21 $03 $bc
	ld   [bc], a                                     ; $7ff7: $02
	cp   b                                           ; $7ff8: $b8
	ld   a, b                                        ; $7ff9: $78
	and  c                                           ; $7ffa: $a1
	ld   e, c                                        ; $7ffb: $59
	ld   h, [hl]                                     ; $7ffc: $66
	sub  c                                           ; $7ffd: $91
	dec  c                                           ; $7ffe: $0d
	pop  bc                                          ; $7fff: $c1
